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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !383
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !348
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !373
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !375
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !377
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !379
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !381
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !385
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !387
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !392
@opterr = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !397
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.43, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.44, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !400
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !496
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !510
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !548
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !555
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !512
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !557
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !500
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !517
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !519
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !521
@.str.13.67 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !523
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !525
@.str.80 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1, !dbg !563
@.str.1.81 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1, !dbg !566
@.str.2.82 = private unnamed_addr constant [2 x i8] c"~\00", align 1, !dbg !571
@.str.3.86 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1, !dbg !573
@.str.4.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !575
@.str.5.83 = private unnamed_addr constant [29 x i8] c"/var/lib/systemd/random-seed\00", align 1, !dbg !577
@.str.6.84 = private unnamed_addr constant [29 x i8] c"/var/lib/urandom/random-seed\00", align 1, !dbg !583
@.str.7.85 = private unnamed_addr constant [21 x i8] c"/var/lib/random-seed\00", align 1, !dbg !585
@.str.8.88 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1, !dbg !587
@.str.9.89 = private unnamed_addr constant [3 x i8] c"re\00", align 1, !dbg !589
@.str.90 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !591
@.str.1.91 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !594
@.str.2.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !596
@.str.3.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !598
@.str.4.94 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !600
@.str.5.95 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !602
@.str.6.96 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !607
@.str.7.97 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !612
@.str.8.98 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !614
@.str.9.99 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !619
@.str.10.100 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !624
@.str.11.101 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !629
@.str.12.102 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !634
@.str.13.103 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !636
@.str.14.104 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !641
@.str.15.105 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !646
@.str.16.106 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !651
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.111 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !656
@.str.18.112 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !658
@.str.19.113 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !660
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !662
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !664
@.str.22.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !666
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !668
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !670
@exit_failure = dso_local global i32 1, align 4, !dbg !678
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !684
@.str.1.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !687
@.str.2.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !689
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !691
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !694
@.str.149 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !709
@.str.1.150 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !712

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !823 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !827, metadata !DIExpression()), !dbg !828
  %2 = icmp eq i32 %0, 0, !dbg !829
  br i1 %2, label %8, label %3, !dbg !831

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !832, !tbaa !834
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !832
  %6 = load ptr, ptr @program_name, align 8, !dbg !832, !tbaa !834
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !832
  br label %30, !dbg !832

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !838
  %10 = load ptr, ptr @program_name, align 8, !dbg !838, !tbaa !834
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !838
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !840
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #38, !dbg !840
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !841
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !841
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !842
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !842
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !843, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !855, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr poison, metadata !855, metadata !DIExpression()), !dbg !860
  tail call void @emit_bug_reporting_address() #38, !dbg !862
  %16 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !863
  call void @llvm.dbg.value(metadata ptr %16, metadata !858, metadata !DIExpression()), !dbg !860
  %17 = icmp eq ptr %16, null, !dbg !864
  br i1 %17, label %25, label %18, !dbg !866

18:                                               ; preds = %8
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #39, !dbg !867
  %20 = icmp eq i32 %19, 0, !dbg !867
  br i1 %20, label %25, label %21, !dbg !868

21:                                               ; preds = %18
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #38, !dbg !869
  %23 = load ptr, ptr @stdout, align 8, !dbg !869, !tbaa !834
  %24 = tail call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !869
  br label %25, !dbg !871

25:                                               ; preds = %8, %18, %21
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !855, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !859, metadata !DIExpression()), !dbg !860
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #38, !dbg !872
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5) #38, !dbg !872
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #38, !dbg !873
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.49) #38, !dbg !873
  br label %30

30:                                               ; preds = %25, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !874
  unreachable, !dbg !874
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !875 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !880 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !886 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !70 {
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !241, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %0, metadata !242, metadata !DIExpression()), !dbg !889
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !890, !tbaa !891
  %3 = icmp eq i32 %2, -1, !dbg !893
  br i1 %3, label %4, label %16, !dbg !894

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #38, !dbg !895
  call void @llvm.dbg.value(metadata ptr %5, metadata !243, metadata !DIExpression()), !dbg !896
  %6 = icmp eq ptr %5, null, !dbg !897
  br i1 %6, label %14, label %7, !dbg !898

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !899, !tbaa !900
  %9 = icmp eq i8 %8, 0, !dbg !899
  br i1 %9, label %14, label %10, !dbg !901

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !902, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !908, metadata !DIExpression()), !dbg !909
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #39, !dbg !911
  %12 = icmp eq i32 %11, 0, !dbg !912
  %13 = zext i1 %12 to i32, !dbg !901
  br label %14, !dbg !901

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !913, !tbaa !891
  br label %16, !dbg !914

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !915
  %18 = icmp eq i32 %17, 0, !dbg !915
  br i1 %18, label %22, label %19, !dbg !917

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !834
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !918
  br label %122, !dbg !920

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !246, metadata !DIExpression()), !dbg !889
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #39, !dbg !921
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !922
  call void @llvm.dbg.value(metadata ptr %24, metadata !248, metadata !DIExpression()), !dbg !889
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !923
  call void @llvm.dbg.value(metadata ptr %25, metadata !249, metadata !DIExpression()), !dbg !889
  %26 = icmp eq ptr %25, null, !dbg !924
  br i1 %26, label %54, label %27, !dbg !925

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !926
  br i1 %28, label %54, label %29, !dbg !927

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !250, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !928
  %30 = icmp ult ptr %24, %25, !dbg !929
  br i1 %30, label %31, label %52, !dbg !930

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !889
  %33 = load ptr, ptr %32, align 8, !tbaa !834
  br label %34, !dbg !930

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !250, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 %36, metadata !254, metadata !DIExpression()), !dbg !928
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !931
  call void @llvm.dbg.value(metadata ptr %37, metadata !250, metadata !DIExpression()), !dbg !928
  %38 = load i8, ptr %35, align 1, !dbg !931, !tbaa !900
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !931
  %41 = load i16, ptr %40, align 2, !dbg !931, !tbaa !932
  %42 = freeze i16 %41, !dbg !934
  %43 = lshr i16 %42, 13, !dbg !934
  %44 = and i16 %43, 1, !dbg !934
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !935
  call void @llvm.dbg.value(metadata i64 %46, metadata !254, metadata !DIExpression()), !dbg !928
  %47 = icmp ult ptr %37, %25, !dbg !929
  %48 = icmp ult i64 %46, 2, !dbg !936
  %49 = select i1 %47, i1 %48, i1 false, !dbg !936
  br i1 %49, label %34, label %50, !dbg !930, !llvm.loop !937

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !939
  br i1 %51, label %52, label %54, !dbg !941

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !941

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !889
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !246, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %55, metadata !249, metadata !DIExpression()), !dbg !889
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.18) #39, !dbg !942
  call void @llvm.dbg.value(metadata i64 %57, metadata !255, metadata !DIExpression()), !dbg !889
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !943
  call void @llvm.dbg.value(metadata ptr %58, metadata !256, metadata !DIExpression()), !dbg !889
  br label %59, !dbg !944

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !889
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !246, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %60, metadata !256, metadata !DIExpression()), !dbg !889
  %62 = load i8, ptr %60, align 1, !dbg !945, !tbaa !900
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !946

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !947
  %65 = load i8, ptr %64, align 1, !dbg !950, !tbaa !900
  %66 = icmp ne i8 %65, 45, !dbg !951
  %67 = select i1 %66, i1 %61, i1 false, !dbg !952
  br label %68, !dbg !952

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !246, metadata !DIExpression()), !dbg !889
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !953
  %71 = load ptr, ptr %70, align 8, !dbg !953, !tbaa !834
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !953
  %74 = load i16, ptr %73, align 2, !dbg !953, !tbaa !932
  %75 = and i16 %74, 8192, !dbg !953
  %76 = icmp eq i16 %75, 0, !dbg !953
  br i1 %76, label %90, label %77, !dbg !955

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !956
  br i1 %78, label %92, label %79, !dbg !959

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !960
  %81 = load i8, ptr %80, align 1, !dbg !960, !tbaa !900
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !960
  %84 = load i16, ptr %83, align 2, !dbg !960, !tbaa !932
  %85 = and i16 %84, 8192, !dbg !960
  %86 = icmp eq i16 %85, 0, !dbg !960
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !961
  br i1 %89, label %90, label %92, !dbg !961

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !962
  call void @llvm.dbg.value(metadata ptr %91, metadata !256, metadata !DIExpression()), !dbg !889
  br label %59, !dbg !944, !llvm.loop !963

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !965
  %94 = load ptr, ptr @stdout, align 8, !dbg !965, !tbaa !834
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !965
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !313, metadata !DIExpression()), !dbg !889
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #39, !dbg !986
  %97 = icmp eq i32 %96, 0, !dbg !986
  br i1 %97, label %101, label %98, !dbg !988

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #39, !dbg !989
  %100 = icmp eq i32 %99, 0, !dbg !989
  br i1 %100, label %101, label %104, !dbg !990

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !991
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %102, ptr noundef %55) #38, !dbg !991
  br label %107, !dbg !993

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !994
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.5, i32 noundef %105, ptr noundef %55) #38, !dbg !994
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !996, !tbaa !834
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %108), !dbg !996
  %110 = load ptr, ptr @stdout, align 8, !dbg !997, !tbaa !834
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %110), !dbg !997
  %112 = ptrtoint ptr %60 to i64, !dbg !998
  %113 = sub i64 %112, %93, !dbg !998
  %114 = load ptr, ptr @stdout, align 8, !dbg !998, !tbaa !834
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !998
  %116 = load ptr, ptr @stdout, align 8, !dbg !999, !tbaa !834
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %116), !dbg !999
  %118 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !834
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %118), !dbg !1000
  %120 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !834
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1001
  br label %122, !dbg !1002

122:                                              ; preds = %107, %19
  ret void, !dbg !1002
}

; Function Attrs: nounwind
declare !dbg !1003 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1007 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1011 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1014 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1016 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1019 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1022 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1025 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1028 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1034 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1035 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1041 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1045, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr %1, metadata !1046, metadata !DIExpression()), !dbg !1047
  %3 = load ptr, ptr %1, align 8, !dbg !1048, !tbaa !834
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1049
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #38, !dbg !1050
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #38, !dbg !1051
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #38, !dbg !1052
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1053
  %8 = load ptr, ptr @Version, align 8, !dbg !1054, !tbaa !834
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #38, !dbg !1055
  %10 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #38, !dbg !1055
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef %10, ptr noundef null) #38, !dbg !1056
  %11 = load i32, ptr @optind, align 4, !dbg !1057, !tbaa !891
  %12 = sub nsw i32 %0, %11, !dbg !1058
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %14
  ], !dbg !1059

13:                                               ; preds = %2
  tail call fastcc void @users(ptr noundef nonnull @.str.3, i32 noundef 1), !dbg !1060
  br label %26, !dbg !1062

14:                                               ; preds = %2
  %15 = sext i32 %11 to i64, !dbg !1063
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1063
  %17 = load ptr, ptr %16, align 8, !dbg !1063, !tbaa !834
  tail call fastcc void @users(ptr noundef %17, i32 noundef 0), !dbg !1064
  br label %26, !dbg !1065

18:                                               ; preds = %2
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #38, !dbg !1066
  %20 = load i32, ptr @optind, align 4, !dbg !1066, !tbaa !891
  %21 = add nsw i32 %20, 1, !dbg !1066
  %22 = sext i32 %21 to i64, !dbg !1066
  %23 = getelementptr inbounds ptr, ptr %1, i64 %22, !dbg !1066
  %24 = load ptr, ptr %23, align 8, !dbg !1066, !tbaa !834
  %25 = tail call ptr @quote(ptr noundef %24) #38, !dbg !1066
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %19, ptr noundef %25) #38, !dbg !1066
  tail call void @usage(i32 noundef 1) #42, !dbg !1067
  unreachable, !dbg !1067

26:                                               ; preds = %14, %13
  ret i32 0, !dbg !1068
}

; Function Attrs: nounwind
declare !dbg !1069 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1072 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1073 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @users(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !1076 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1080, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i32 %1, metadata !1081, metadata !DIExpression()), !dbg !1109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1111
  %5 = or i32 %1, 2, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %5, metadata !1081, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %3, metadata !1082, metadata !DIExpression(DW_OP_deref)), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %4, metadata !1083, metadata !DIExpression(DW_OP_deref)), !dbg !1109
  %6 = call i32 @read_utmp(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #38, !dbg !1113
  %7 = icmp eq i32 %6, 0, !dbg !1115
  br i1 %7, label %12, label %8, !dbg !1116

8:                                                ; preds = %2
  %9 = tail call ptr @__errno_location() #41, !dbg !1117
  %10 = load i32, ptr %9, align 4, !dbg !1117, !tbaa !891
  %11 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #38, !dbg !1117
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %10, ptr noundef nonnull @.str.50, ptr noundef %11) #38, !dbg !1117
  unreachable, !dbg !1117

12:                                               ; preds = %2
  %13 = load i64, ptr %3, align 8, !dbg !1118, !tbaa !1119
  call void @llvm.dbg.value(metadata i64 %13, metadata !1082, metadata !DIExpression()), !dbg !1109
  %14 = load ptr, ptr %4, align 8, !dbg !1121, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %14, metadata !1083, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %13, metadata !1122, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %14, metadata !1129, metadata !DIExpression()), !dbg !1143
  %15 = call noalias nonnull ptr @xinmalloc(i64 noundef %13, i64 noundef 8) #43, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %15, metadata !1130, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 0, metadata !1131, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 %13, metadata !1122, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %14, metadata !1129, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 %13, metadata !1122, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1143
  %16 = icmp eq i64 %13, 0, !dbg !1146
  br i1 %16, label %17, label %18, !dbg !1146

17:                                               ; preds = %12
  call void @qsort(ptr noundef nonnull %15, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @userid_compare) #38, !dbg !1147
  call void @llvm.dbg.value(metadata i64 0, metadata !1136, metadata !DIExpression()), !dbg !1148
  br label %70, !dbg !1149

18:                                               ; preds = %12, %34
  %19 = phi i64 [ %22, %34 ], [ %13, %12 ]
  %20 = phi ptr [ %36, %34 ], [ %14, %12 ]
  %21 = phi i64 [ %35, %34 ], [ 0, %12 ]
  %22 = add nsw i64 %19, -1, !dbg !1150
  call void @llvm.dbg.value(metadata ptr %20, metadata !1129, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 %21, metadata !1131, metadata !DIExpression()), !dbg !1143
  %23 = load ptr, ptr %20, align 8, !dbg !1151, !tbaa !1152
  %24 = load i8, ptr %23, align 1, !dbg !1151, !tbaa !900
  %25 = icmp eq i8 %24, 0, !dbg !1151
  br i1 %25, label %34, label %26, !dbg !1151

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.gl_utmp, ptr %20, i64 0, i32 7, !dbg !1151
  %28 = load i16, ptr %27, align 8, !dbg !1151, !tbaa !1156
  %29 = icmp eq i16 %28, 7, !dbg !1151
  br i1 %29, label %30, label %34, !dbg !1157

30:                                               ; preds = %26
  %31 = call noalias nonnull ptr @extract_trimmed_name(ptr noundef nonnull %20) #38, !dbg !1158
  call void @llvm.dbg.value(metadata ptr %31, metadata !1132, metadata !DIExpression()), !dbg !1159
  %32 = getelementptr inbounds ptr, ptr %15, i64 %21, !dbg !1160
  store ptr %31, ptr %32, align 8, !dbg !1161, !tbaa !834
  %33 = add nsw i64 %21, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %33, metadata !1131, metadata !DIExpression()), !dbg !1143
  br label %34, !dbg !1163

34:                                               ; preds = %30, %26, %18
  %35 = phi i64 [ %33, %30 ], [ %21, %26 ], [ %21, %18 ], !dbg !1143
  call void @llvm.dbg.value(metadata i64 %35, metadata !1131, metadata !DIExpression()), !dbg !1143
  %36 = getelementptr inbounds %struct.gl_utmp, ptr %20, i64 1, !dbg !1164
  call void @llvm.dbg.value(metadata i64 %22, metadata !1122, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %36, metadata !1129, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 %22, metadata !1122, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1143
  %37 = icmp eq i64 %22, 0, !dbg !1146
  br i1 %37, label %38, label %18, !dbg !1146, !llvm.loop !1165

38:                                               ; preds = %34
  call void @qsort(ptr noundef nonnull %15, i64 noundef %35, i64 noundef 8, ptr noundef nonnull @userid_compare) #38, !dbg !1147
  call void @llvm.dbg.value(metadata i64 0, metadata !1136, metadata !DIExpression()), !dbg !1148
  %39 = icmp sgt i64 %35, 0, !dbg !1167
  br i1 %39, label %40, label %70, !dbg !1149

40:                                               ; preds = %38
  %41 = add nsw i64 %35, -1
  br label %42, !dbg !1149

42:                                               ; preds = %61, %40
  %43 = phi i64 [ 0, %40 ], [ %62, %61 ]
  call void @llvm.dbg.value(metadata i64 %43, metadata !1136, metadata !DIExpression()), !dbg !1148
  %44 = icmp slt i64 %43, %41, !dbg !1168
  call void @llvm.dbg.value(metadata i8 poison, metadata !1138, metadata !DIExpression()), !dbg !1169
  %45 = getelementptr inbounds ptr, ptr %15, i64 %43, !dbg !1170
  %46 = load ptr, ptr %45, align 8, !dbg !1170, !tbaa !834
  %47 = load ptr, ptr @stdout, align 8, !dbg !1170, !tbaa !834
  %48 = call i32 @fputs_unlocked(ptr noundef %46, ptr noundef %47), !dbg !1170
  %49 = select i1 %44, i32 32, i32 10, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %49, metadata !1172, metadata !DIExpression()), !dbg !1178
  %50 = load ptr, ptr @stdout, align 8, !dbg !1180, !tbaa !834
  %51 = getelementptr inbounds %struct._IO_FILE, ptr %50, i64 0, i32 5, !dbg !1180
  %52 = load ptr, ptr %51, align 8, !dbg !1180, !tbaa !1181
  %53 = getelementptr inbounds %struct._IO_FILE, ptr %50, i64 0, i32 6, !dbg !1180
  %54 = load ptr, ptr %53, align 8, !dbg !1180, !tbaa !1183
  %55 = icmp ult ptr %52, %54, !dbg !1180
  br i1 %55, label %58, label %56, !dbg !1180, !prof !1184

56:                                               ; preds = %42
  %57 = call i32 @__overflow(ptr noundef nonnull %50, i32 noundef %49) #38, !dbg !1180
  br label %61, !dbg !1180

58:                                               ; preds = %42
  %59 = trunc i32 %49 to i8, !dbg !1180
  %60 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1180
  store ptr %60, ptr %51, align 8, !dbg !1180, !tbaa !1181
  store i8 %59, ptr %52, align 1, !dbg !1180, !tbaa !900
  br label %61, !dbg !1180

61:                                               ; preds = %58, %56
  %62 = add nuw nsw i64 %43, 1, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %62, metadata !1136, metadata !DIExpression()), !dbg !1148
  %63 = icmp eq i64 %62, %35, !dbg !1167
  br i1 %63, label %64, label %42, !dbg !1149, !llvm.loop !1186

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %68, %64 ], [ 0, %61 ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !1141, metadata !DIExpression()), !dbg !1188
  %66 = getelementptr inbounds ptr, ptr %15, i64 %65, !dbg !1189
  %67 = load ptr, ptr %66, align 8, !dbg !1189, !tbaa !834
  call void @free(ptr noundef %67) #38, !dbg !1191
  %68 = add nuw nsw i64 %65, 1, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %68, metadata !1141, metadata !DIExpression()), !dbg !1188
  %69 = icmp eq i64 %68, %35, !dbg !1193
  br i1 %69, label %70, label %64, !dbg !1194, !llvm.loop !1195

70:                                               ; preds = %64, %17, %38
  call void @free(ptr noundef nonnull %15) #38, !dbg !1197
  %71 = load ptr, ptr %4, align 8, !dbg !1198, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %71, metadata !1083, metadata !DIExpression()), !dbg !1109
  call void @free(ptr noundef %71) #38, !dbg !1199
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1200
  ret void, !dbg !1200
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1201 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @userid_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !dbg !1205 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1209, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %1, metadata !1210, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %0, metadata !1211, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %1, metadata !1212, metadata !DIExpression()), !dbg !1213
  %3 = load ptr, ptr %0, align 8, !dbg !1214, !tbaa !834
  %4 = load ptr, ptr %1, align 8, !dbg !1215, !tbaa !834
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !1216
  ret i32 %5, !dbg !1217
}

; Function Attrs: nofree
declare !dbg !1218 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

declare !dbg !1223 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1226 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1229 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1231, metadata !DIExpression()), !dbg !1232
  store ptr %0, ptr @file_name, align 8, !dbg !1233, !tbaa !834
  ret void, !dbg !1234
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1235 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1239, metadata !DIExpression()), !dbg !1240
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1241, !tbaa !1242
  ret void, !dbg !1244
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1245 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1250, !tbaa !834
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1251
  %3 = icmp eq i32 %2, 0, !dbg !1252
  br i1 %3, label %22, label %4, !dbg !1253

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1254, !tbaa !1242, !range !1255, !noundef !879
  %6 = icmp eq i8 %5, 0, !dbg !1254
  br i1 %6, label %11, label %7, !dbg !1256

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1257
  %9 = load i32, ptr %8, align 4, !dbg !1257, !tbaa !891
  %10 = icmp eq i32 %9, 32, !dbg !1258
  br i1 %10, label %22, label %11, !dbg !1259

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #38, !dbg !1260
  call void @llvm.dbg.value(metadata ptr %12, metadata !1247, metadata !DIExpression()), !dbg !1261
  %13 = load ptr, ptr @file_name, align 8, !dbg !1262, !tbaa !834
  %14 = icmp eq ptr %13, null, !dbg !1262
  %15 = tail call ptr @__errno_location() #41, !dbg !1264
  %16 = load i32, ptr %15, align 4, !dbg !1264, !tbaa !891
  br i1 %14, label %19, label %17, !dbg !1265

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1266
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #38, !dbg !1266
  br label %20, !dbg !1266

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #38, !dbg !1267
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1268, !tbaa !891
  tail call void @_exit(i32 noundef %21) #40, !dbg !1269
  unreachable, !dbg !1269

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1270, !tbaa !834
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1272
  %25 = icmp eq i32 %24, 0, !dbg !1273
  br i1 %25, label %28, label %26, !dbg !1274

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1275, !tbaa !891
  tail call void @_exit(i32 noundef %27) #40, !dbg !1276
  unreachable, !dbg !1276

28:                                               ; preds = %22
  ret void, !dbg !1277
}

; Function Attrs: noreturn
declare !dbg !1278 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1280 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1284, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i32 %1, metadata !1285, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata ptr %2, metadata !1286, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1287, metadata !DIExpression()), !dbg !1289
  tail call fastcc void @flush_stdout(), !dbg !1290
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1291, !tbaa !834
  %7 = icmp eq ptr %6, null, !dbg !1291
  br i1 %7, label %9, label %8, !dbg !1293

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1294
  br label %13, !dbg !1294

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1295, !tbaa !834
  %11 = tail call ptr @getprogname() #39, !dbg !1295
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %11) #38, !dbg !1295
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1297, !tbaa.struct !1298
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1297
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1297
  ret void, !dbg !1299
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1300 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1302, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 1, metadata !1304, metadata !DIExpression()), !dbg !1307
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1310
  %2 = icmp slt i32 %1, 0, !dbg !1311
  br i1 %2, label %6, label %3, !dbg !1312

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1313, !tbaa !834
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1313
  br label %6, !dbg !1313

6:                                                ; preds = %3, %0
  ret void, !dbg !1314
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1315 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1317, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 %1, metadata !1318, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr %2, metadata !1319, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1320, metadata !DIExpression()), !dbg !1322
  %7 = load ptr, ptr @stderr, align 8, !dbg !1323, !tbaa !834
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1324, !noalias !1368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1372
  call void @llvm.dbg.value(metadata ptr %7, metadata !1364, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr %2, metadata !1365, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1366, metadata !DIExpression()), !dbg !1374
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1324, !noalias !1368
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1375, !tbaa !891
  %10 = add i32 %9, 1, !dbg !1375
  store i32 %10, ptr @error_message_count, align 4, !dbg !1375, !tbaa !891
  %11 = icmp eq i32 %1, 0, !dbg !1376
  br i1 %11, label %21, label %12, !dbg !1378

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1379, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1389
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1383, metadata !DIExpression()), !dbg !1390
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1391
  call void @llvm.dbg.value(metadata ptr %13, metadata !1382, metadata !DIExpression()), !dbg !1387
  %14 = icmp eq ptr %13, null, !dbg !1392
  br i1 %14, label %15, label %17, !dbg !1394

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #38, !dbg !1395
  call void @llvm.dbg.value(metadata ptr %16, metadata !1382, metadata !DIExpression()), !dbg !1387
  br label %17, !dbg !1396

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1387
  call void @llvm.dbg.value(metadata ptr %18, metadata !1382, metadata !DIExpression()), !dbg !1387
  %19 = load ptr, ptr @stderr, align 8, !dbg !1397, !tbaa !834
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %18) #38, !dbg !1397
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1398
  br label %21, !dbg !1399

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1400, !tbaa !834
  call void @llvm.dbg.value(metadata i32 10, metadata !1401, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata ptr %22, metadata !1406, metadata !DIExpression()), !dbg !1407
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1409
  %24 = load ptr, ptr %23, align 8, !dbg !1409, !tbaa !1181
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1409
  %26 = load ptr, ptr %25, align 8, !dbg !1409, !tbaa !1183
  %27 = icmp ult ptr %24, %26, !dbg !1409
  br i1 %27, label %30, label %28, !dbg !1409, !prof !1184

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1409
  br label %32, !dbg !1409

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1409
  store ptr %31, ptr %23, align 8, !dbg !1409, !tbaa !1181
  store i8 10, ptr %24, align 1, !dbg !1409, !tbaa !900
  br label %32, !dbg !1409

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1410, !tbaa !834
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1410
  %35 = icmp eq i32 %0, 0, !dbg !1411
  br i1 %35, label %37, label %36, !dbg !1413

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !1414
  unreachable, !dbg !1414

37:                                               ; preds = %32
  ret void, !dbg !1415
}

declare !dbg !1416 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1419 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1422 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1425 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1429 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1433, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %1, metadata !1434, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %2, metadata !1435, metadata !DIExpression()), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1436, metadata !DIExpression()), !dbg !1439
  call void @llvm.va_start(ptr nonnull %4), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1441, !tbaa.struct !1298
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1441
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1441
  call void @llvm.va_end(ptr nonnull %4), !dbg !1442
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1443
  ret void, !dbg !1443
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !350 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !367, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %1, metadata !368, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %2, metadata !369, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %3, metadata !370, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %4, metadata !371, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %5, metadata !372, metadata !DIExpression()), !dbg !1445
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1446, !tbaa !891
  %9 = icmp eq i32 %8, 0, !dbg !1446
  br i1 %9, label %24, label %10, !dbg !1448

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1449, !tbaa !891
  %12 = icmp eq i32 %11, %3, !dbg !1452
  br i1 %12, label %13, label %23, !dbg !1453

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1454, !tbaa !834
  %15 = icmp eq ptr %14, %2, !dbg !1455
  br i1 %15, label %37, label %16, !dbg !1456

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1457
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1458
  br i1 %19, label %20, label %23, !dbg !1458

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1459
  %22 = icmp eq i32 %21, 0, !dbg !1460
  br i1 %22, label %37, label %23, !dbg !1461

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1462, !tbaa !834
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1463, !tbaa !891
  br label %24, !dbg !1464

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1465
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1466, !tbaa !834
  %26 = icmp eq ptr %25, null, !dbg !1466
  br i1 %26, label %28, label %27, !dbg !1468

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1469
  br label %32, !dbg !1469

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1470, !tbaa !834
  %30 = tail call ptr @getprogname() #39, !dbg !1470
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %30) #38, !dbg !1470
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1472, !tbaa !834
  %34 = icmp eq ptr %2, null, !dbg !1472
  %35 = select i1 %34, ptr @.str.3.33, ptr @.str.2.34, !dbg !1472
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1472
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1473, !tbaa.struct !1298
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1473
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1473
  br label %37, !dbg !1474

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1474
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1475 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1479, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i32 %1, metadata !1480, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata ptr %2, metadata !1481, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i32 %3, metadata !1482, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata ptr %4, metadata !1483, metadata !DIExpression()), !dbg !1485
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1486
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1484, metadata !DIExpression()), !dbg !1487
  call void @llvm.va_start(ptr nonnull %6), !dbg !1488
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1489, !tbaa.struct !1298
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !1489
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1489
  call void @llvm.va_end(ptr nonnull %6), !dbg !1490
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1491
  ret void, !dbg !1491
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1492 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1495, !tbaa !834
  ret ptr %1, !dbg !1496
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1497 {
  %7 = alloca %struct.__va_list, align 8
  %8 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1502, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %1, metadata !1503, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %2, metadata !1504, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %3, metadata !1505, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %4, metadata !1506, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %5, metadata !1507, metadata !DIExpression()), !dbg !1528
  %9 = load i32, ptr @opterr, align 4, !dbg !1529, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %9, metadata !1508, metadata !DIExpression()), !dbg !1528
  store i32 0, ptr @opterr, align 4, !dbg !1530, !tbaa !891
  %10 = icmp eq i32 %0, 2, !dbg !1531
  br i1 %10, label %11, label %16, !dbg !1532

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1533
  call void @llvm.dbg.value(metadata i32 %12, metadata !1509, metadata !DIExpression()), !dbg !1534
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1535

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #38, !dbg !1536
  br label %16, !dbg !1537

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1538
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1512, metadata !DIExpression()), !dbg !1539
  call void @llvm.va_start(ptr nonnull %7), !dbg !1540
  %15 = load ptr, ptr @stdout, align 8, !dbg !1541, !tbaa !834
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #38, !dbg !1542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1542, !tbaa.struct !1298
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #38, !dbg !1542
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #38, !dbg !1542
  call void @exit(i32 noundef 0) #40, !dbg !1543
  unreachable, !dbg !1543

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1544, !tbaa !891
  store i32 0, ptr @optind, align 4, !dbg !1545, !tbaa !891
  ret void, !dbg !1546
}

; Function Attrs: nounwind
declare !dbg !1547 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1553 {
  %8 = alloca %struct.__va_list, align 8
  %9 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1557, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr %1, metadata !1558, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr %2, metadata !1559, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr %3, metadata !1560, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr %4, metadata !1561, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i1 %5, metadata !1562, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1572
  call void @llvm.dbg.value(metadata ptr %6, metadata !1563, metadata !DIExpression()), !dbg !1572
  %10 = load i32, ptr @opterr, align 4, !dbg !1573, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %10, metadata !1564, metadata !DIExpression()), !dbg !1572
  store i32 1, ptr @opterr, align 4, !dbg !1574, !tbaa !891
  %11 = select i1 %5, ptr @.str.1.47, ptr @.str.42, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %11, metadata !1565, metadata !DIExpression()), !dbg !1572
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %12, metadata !1566, metadata !DIExpression()), !dbg !1572
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1577

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #38, !dbg !1578
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1567, metadata !DIExpression()), !dbg !1579
  call void @llvm.va_start(ptr nonnull %8), !dbg !1580
  %14 = load ptr, ptr @stdout, align 8, !dbg !1581, !tbaa !834
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #38, !dbg !1582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1582, !tbaa.struct !1298
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #38, !dbg !1582
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #38, !dbg !1582
  call void @exit(i32 noundef 0) #40, !dbg !1583
  unreachable, !dbg !1583

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1584, !tbaa !891
  br label %17, !dbg !1585

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #38, !dbg !1586
  br label %19, !dbg !1587

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1587, !tbaa !891
  ret void, !dbg !1588
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !1589 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1591, metadata !DIExpression()), !dbg !1594
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1595
  call void @llvm.dbg.value(metadata ptr %2, metadata !1592, metadata !DIExpression()), !dbg !1594
  %3 = icmp eq ptr %2, null, !dbg !1596
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1596
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1596
  call void @llvm.dbg.value(metadata ptr %5, metadata !1593, metadata !DIExpression()), !dbg !1594
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
  call void @llvm.dbg.value(metadata ptr %5, metadata !1591, metadata !DIExpression()), !dbg !1594
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #39, !dbg !1614
  %16 = icmp eq i32 %15, 0, !dbg !1617
  %17 = select i1 %16, i64 3, i64 0, !dbg !1618
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1618
  br label %19, !dbg !1618

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1594
  call void @llvm.dbg.value(metadata ptr %21, metadata !1593, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata ptr %20, metadata !1591, metadata !DIExpression()), !dbg !1594
  store ptr %20, ptr @program_name, align 8, !dbg !1619, !tbaa !834
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1620, !tbaa !834
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1621, !tbaa !834
  ret void, !dbg !1622
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1623 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !432 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !439, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata ptr %1, metadata !440, metadata !DIExpression()), !dbg !1624
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %5, metadata !441, metadata !DIExpression()), !dbg !1624
  %6 = icmp eq ptr %5, %0, !dbg !1626
  br i1 %6, label %7, label %14, !dbg !1628

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1629
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1630
  call void @llvm.dbg.declare(metadata ptr %4, metadata !447, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata ptr %4, metadata !1632, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %4, metadata !1641, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 0, metadata !1647, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 8, metadata !1648, metadata !DIExpression()), !dbg !1649
  store i64 0, ptr %4, align 8, !dbg !1651
  call void @llvm.dbg.value(metadata ptr %3, metadata !442, metadata !DIExpression(DW_OP_deref)), !dbg !1624
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1652
  %9 = icmp eq i64 %8, 2, !dbg !1654
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !442, metadata !DIExpression()), !dbg !1624
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1655
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1624
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1656
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1624
  ret ptr %15, !dbg !1656
}

; Function Attrs: nounwind
declare !dbg !1657 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1663 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1668, metadata !DIExpression()), !dbg !1671
  %2 = tail call ptr @__errno_location() #41, !dbg !1672
  %3 = load i32, ptr %2, align 4, !dbg !1672, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %3, metadata !1669, metadata !DIExpression()), !dbg !1671
  %4 = icmp eq ptr %0, null, !dbg !1673
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1673
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !1674
  call void @llvm.dbg.value(metadata ptr %6, metadata !1670, metadata !DIExpression()), !dbg !1671
  store i32 %3, ptr %2, align 4, !dbg !1675, !tbaa !891
  ret ptr %6, !dbg !1676
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !1677 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1683, metadata !DIExpression()), !dbg !1684
  %2 = icmp eq ptr %0, null, !dbg !1685
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1685
  %4 = load i32, ptr %3, align 8, !dbg !1686, !tbaa !1687
  ret i32 %4, !dbg !1689
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1690 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1694, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %1, metadata !1695, metadata !DIExpression()), !dbg !1696
  %3 = icmp eq ptr %0, null, !dbg !1697
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1697
  store i32 %1, ptr %4, align 8, !dbg !1698, !tbaa !1687
  ret void, !dbg !1699
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !1700 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1704, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %1, metadata !1705, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i32 %2, metadata !1706, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %1, metadata !1707, metadata !DIExpression()), !dbg !1712
  %4 = icmp eq ptr %0, null, !dbg !1713
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1713
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1714
  %7 = lshr i8 %1, 5, !dbg !1715
  %8 = zext i8 %7 to i64, !dbg !1715
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1716
  call void @llvm.dbg.value(metadata ptr %9, metadata !1708, metadata !DIExpression()), !dbg !1712
  %10 = and i8 %1, 31, !dbg !1717
  %11 = zext i8 %10 to i32, !dbg !1717
  call void @llvm.dbg.value(metadata i32 %11, metadata !1710, metadata !DIExpression()), !dbg !1712
  %12 = load i32, ptr %9, align 4, !dbg !1718, !tbaa !891
  %13 = lshr i32 %12, %11, !dbg !1719
  %14 = and i32 %13, 1, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %14, metadata !1711, metadata !DIExpression()), !dbg !1712
  %15 = xor i32 %13, %2, !dbg !1721
  %16 = and i32 %15, 1, !dbg !1721
  %17 = shl nuw i32 %16, %11, !dbg !1722
  %18 = xor i32 %17, %12, !dbg !1723
  store i32 %18, ptr %9, align 4, !dbg !1723, !tbaa !891
  ret i32 %14, !dbg !1724
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1725 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1729, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i32 %1, metadata !1730, metadata !DIExpression()), !dbg !1732
  %3 = icmp eq ptr %0, null, !dbg !1733
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1735
  call void @llvm.dbg.value(metadata ptr %4, metadata !1729, metadata !DIExpression()), !dbg !1732
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1736
  %6 = load i32, ptr %5, align 4, !dbg !1736, !tbaa !1737
  call void @llvm.dbg.value(metadata i32 %6, metadata !1731, metadata !DIExpression()), !dbg !1732
  store i32 %1, ptr %5, align 4, !dbg !1738, !tbaa !1737
  ret i32 %6, !dbg !1739
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1740 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1744, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %1, metadata !1745, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %2, metadata !1746, metadata !DIExpression()), !dbg !1747
  %4 = icmp eq ptr %0, null, !dbg !1748
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1750
  call void @llvm.dbg.value(metadata ptr %5, metadata !1744, metadata !DIExpression()), !dbg !1747
  store i32 10, ptr %5, align 8, !dbg !1751, !tbaa !1687
  %6 = icmp ne ptr %1, null, !dbg !1752
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1754
  br i1 %8, label %10, label %9, !dbg !1754

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1755
  unreachable, !dbg !1755

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1756
  store ptr %1, ptr %11, align 8, !dbg !1757, !tbaa !1758
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1759
  store ptr %2, ptr %12, align 8, !dbg !1760, !tbaa !1761
  ret void, !dbg !1762
}

; Function Attrs: noreturn nounwind
declare !dbg !1763 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1764 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1768, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %1, metadata !1769, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata ptr %2, metadata !1770, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %3, metadata !1771, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata ptr %4, metadata !1772, metadata !DIExpression()), !dbg !1776
  %6 = icmp eq ptr %4, null, !dbg !1777
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1777
  call void @llvm.dbg.value(metadata ptr %7, metadata !1773, metadata !DIExpression()), !dbg !1776
  %8 = tail call ptr @__errno_location() #41, !dbg !1778
  %9 = load i32, ptr %8, align 4, !dbg !1778, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %9, metadata !1774, metadata !DIExpression()), !dbg !1776
  %10 = load i32, ptr %7, align 8, !dbg !1779, !tbaa !1687
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1780
  %12 = load i32, ptr %11, align 4, !dbg !1780, !tbaa !1737
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1781
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1782
  %15 = load ptr, ptr %14, align 8, !dbg !1782, !tbaa !1758
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1783
  %17 = load ptr, ptr %16, align 8, !dbg !1783, !tbaa !1761
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %18, metadata !1775, metadata !DIExpression()), !dbg !1776
  store i32 %9, ptr %8, align 4, !dbg !1785, !tbaa !891
  ret i64 %18, !dbg !1786
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1787 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1793, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %1, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %2, metadata !1795, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %3, metadata !1796, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %4, metadata !1797, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %5, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %6, metadata !1799, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %7, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %8, metadata !1801, metadata !DIExpression()), !dbg !1855
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1856
  %17 = icmp eq i64 %16, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i1 %17, metadata !1802, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr null, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1806, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %5, metadata !1808, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1810, metadata !DIExpression()), !dbg !1855
  %18 = and i32 %5, 2, !dbg !1858
  %19 = icmp ne i32 %18, 0, !dbg !1858
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1858

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1859
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1860
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1861
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1810, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %34, metadata !1806, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %33, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %32, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %31, metadata !1796, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %30, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %29, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %28, metadata !1797, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1848), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1855
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
  ], !dbg !1863

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 5, metadata !1797, metadata !DIExpression()), !dbg !1855
  br label %102, !dbg !1864

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 5, metadata !1797, metadata !DIExpression()), !dbg !1855
  br i1 %36, label %102, label %42, !dbg !1864

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1865
  br i1 %43, label %102, label %44, !dbg !1869

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1865, !tbaa !900
  br label %102, !dbg !1865

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.66, metadata !531, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %28, metadata !532, metadata !DIExpression()), !dbg !1870
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.11.66, i32 noundef 5) #38, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %46, metadata !533, metadata !DIExpression()), !dbg !1870
  %47 = icmp eq ptr %46, @.str.11.66, !dbg !1875
  br i1 %47, label %48, label %57, !dbg !1877

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1878
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1879
  call void @llvm.dbg.declare(metadata ptr %13, metadata !535, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata ptr %13, metadata !1881, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata ptr %13, metadata !1889, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 0, metadata !1892, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 8, metadata !1893, metadata !DIExpression()), !dbg !1894
  store i64 0, ptr %13, align 8, !dbg !1896
  call void @llvm.dbg.value(metadata ptr %12, metadata !534, metadata !DIExpression(DW_OP_deref)), !dbg !1870
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1897
  %50 = icmp eq i64 %49, 3, !dbg !1899
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !534, metadata !DIExpression()), !dbg !1870
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1900
  %54 = icmp eq i32 %28, 9, !dbg !1900
  %55 = select i1 %54, ptr @.str.10.68, ptr @.str.12.69, !dbg !1900
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1901
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1901
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1870
  call void @llvm.dbg.value(metadata ptr %58, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr @.str.12.69, metadata !531, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %28, metadata !532, metadata !DIExpression()), !dbg !1902
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.12.69, i32 noundef 5) #38, !dbg !1904
  call void @llvm.dbg.value(metadata ptr %59, metadata !533, metadata !DIExpression()), !dbg !1902
  %60 = icmp eq ptr %59, @.str.12.69, !dbg !1905
  br i1 %60, label %61, label %70, !dbg !1906

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1907
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1908
  call void @llvm.dbg.declare(metadata ptr %11, metadata !535, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata ptr %11, metadata !1881, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata ptr %11, metadata !1889, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i32 0, metadata !1892, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 8, metadata !1893, metadata !DIExpression()), !dbg !1912
  store i64 0, ptr %11, align 8, !dbg !1914
  call void @llvm.dbg.value(metadata ptr %10, metadata !534, metadata !DIExpression(DW_OP_deref)), !dbg !1902
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1915
  %63 = icmp eq i64 %62, 3, !dbg !1916
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !534, metadata !DIExpression()), !dbg !1902
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1917
  %67 = icmp eq i32 %28, 9, !dbg !1917
  %68 = select i1 %67, ptr @.str.10.68, ptr @.str.12.69, !dbg !1917
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1917
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1918
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1918
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %71, metadata !1800, metadata !DIExpression()), !dbg !1855
  br i1 %36, label %88, label %73, !dbg !1919

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1812, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 0, metadata !1803, metadata !DIExpression()), !dbg !1855
  %74 = load i8, ptr %71, align 1, !dbg !1921, !tbaa !900
  %75 = icmp eq i8 %74, 0, !dbg !1923
  br i1 %75, label %88, label %76, !dbg !1923

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1812, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %79, metadata !1803, metadata !DIExpression()), !dbg !1855
  %80 = icmp ult i64 %79, %39, !dbg !1924
  br i1 %80, label %81, label %83, !dbg !1927

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1924
  store i8 %77, ptr %82, align 1, !dbg !1924, !tbaa !900
  br label %83, !dbg !1924

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %84, metadata !1803, metadata !DIExpression()), !dbg !1855
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1928
  call void @llvm.dbg.value(metadata ptr %85, metadata !1812, metadata !DIExpression()), !dbg !1920
  %86 = load i8, ptr %85, align 1, !dbg !1921, !tbaa !900
  %87 = icmp eq i8 %86, 0, !dbg !1923
  br i1 %87, label %88, label %76, !dbg !1923, !llvm.loop !1929

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1931
  call void @llvm.dbg.value(metadata i64 %89, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %72, metadata !1805, metadata !DIExpression()), !dbg !1855
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %90, metadata !1806, metadata !DIExpression()), !dbg !1855
  br label %102, !dbg !1933

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1807, metadata !DIExpression()), !dbg !1855
  br label %93, !dbg !1934

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1807, metadata !DIExpression()), !dbg !1855
  br i1 %36, label %102, label %96, !dbg !1935

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1797, metadata !DIExpression()), !dbg !1855
  br label %102, !dbg !1936

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1797, metadata !DIExpression()), !dbg !1855
  br i1 %36, label %102, label %96, !dbg !1936

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1937
  br i1 %98, label %102, label %99, !dbg !1941

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1937, !tbaa !900
  br label %102, !dbg !1937

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1855
  br label %102, !dbg !1942

101:                                              ; preds = %27
  call void @abort() #40, !dbg !1943
  unreachable, !dbg !1943

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1931
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.68, %42 ], [ @.str.10.68, %44 ], [ @.str.10.68, %41 ], [ %33, %27 ], [ @.str.12.69, %96 ], [ @.str.12.69, %99 ], [ @.str.12.69, %95 ], [ @.str.10.68, %40 ], [ @.str.12.69, %93 ], [ @.str.12.69, %92 ], !dbg !1855
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1855
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %108, metadata !1806, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %107, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %106, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %105, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %104, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %103, metadata !1797, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1817, metadata !DIExpression()), !dbg !1944
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
  br label %122, !dbg !1945

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1931
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1859
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1946
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %129, metadata !1817, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1810, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %123, metadata !1796, metadata !DIExpression()), !dbg !1855
  %131 = icmp eq i64 %123, -1, !dbg !1947
  br i1 %131, label %132, label %136, !dbg !1948

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1949
  %134 = load i8, ptr %133, align 1, !dbg !1949, !tbaa !900
  %135 = icmp eq i8 %134, 0, !dbg !1950
  br i1 %135, label %579, label %138, !dbg !1951

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1952
  br i1 %137, label %579, label %138, !dbg !1951

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, metadata !1823, metadata !DIExpression()), !dbg !1953
  br i1 %114, label %139, label %152, !dbg !1954

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1956
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1957
  br i1 %141, label %142, label %144, !dbg !1957

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %143, metadata !1796, metadata !DIExpression()), !dbg !1855
  br label %144, !dbg !1959

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1959
  call void @llvm.dbg.value(metadata i64 %145, metadata !1796, metadata !DIExpression()), !dbg !1855
  %146 = icmp ugt i64 %140, %145, !dbg !1960
  br i1 %146, label %152, label %147, !dbg !1961

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1962
  call void @llvm.dbg.value(metadata ptr %148, metadata !1963, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %107, metadata !1966, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %108, metadata !1967, metadata !DIExpression()), !dbg !1968
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1970
  %150 = icmp eq i32 %149, 0, !dbg !1971
  %151 = and i1 %150, %110, !dbg !1972
  br i1 %151, label %630, label %152, !dbg !1972

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1819, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %153, metadata !1796, metadata !DIExpression()), !dbg !1855
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1973
  %156 = load i8, ptr %155, align 1, !dbg !1973, !tbaa !900
  call void @llvm.dbg.value(metadata i8 %156, metadata !1824, metadata !DIExpression()), !dbg !1953
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
  ], !dbg !1974

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1975

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1976

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1822, metadata !DIExpression()), !dbg !1953
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1980
  br i1 %160, label %177, label %161, !dbg !1980

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1982
  br i1 %162, label %163, label %165, !dbg !1986

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1982
  store i8 39, ptr %164, align 1, !dbg !1982, !tbaa !900
  br label %165, !dbg !1982

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %166, metadata !1803, metadata !DIExpression()), !dbg !1855
  %167 = icmp ult i64 %166, %130, !dbg !1987
  br i1 %167, label %168, label %170, !dbg !1990

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1987
  store i8 36, ptr %169, align 1, !dbg !1987, !tbaa !900
  br label %170, !dbg !1987

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %171, metadata !1803, metadata !DIExpression()), !dbg !1855
  %172 = icmp ult i64 %171, %130, !dbg !1991
  br i1 %172, label %173, label %175, !dbg !1994

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1991
  store i8 39, ptr %174, align 1, !dbg !1991, !tbaa !900
  br label %175, !dbg !1991

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %176, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1855
  br label %177, !dbg !1995

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1855
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %178, metadata !1803, metadata !DIExpression()), !dbg !1855
  %180 = icmp ult i64 %178, %130, !dbg !1996
  br i1 %180, label %181, label %183, !dbg !1999

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1996
  store i8 92, ptr %182, align 1, !dbg !1996, !tbaa !900
  br label %183, !dbg !1996

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %184, metadata !1803, metadata !DIExpression()), !dbg !1855
  br i1 %111, label %185, label %482, !dbg !2000

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2002
  %187 = icmp ult i64 %186, %153, !dbg !2003
  br i1 %187, label %188, label %439, !dbg !2004

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2005
  %190 = load i8, ptr %189, align 1, !dbg !2005, !tbaa !900
  %191 = add i8 %190, -48, !dbg !2006
  %192 = icmp ult i8 %191, 10, !dbg !2006
  br i1 %192, label %193, label %439, !dbg !2006

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2007
  br i1 %194, label %195, label %197, !dbg !2011

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2007
  store i8 48, ptr %196, align 1, !dbg !2007, !tbaa !900
  br label %197, !dbg !2007

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %198, metadata !1803, metadata !DIExpression()), !dbg !1855
  %199 = icmp ult i64 %198, %130, !dbg !2012
  br i1 %199, label %200, label %202, !dbg !2015

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2012
  store i8 48, ptr %201, align 1, !dbg !2012, !tbaa !900
  br label %202, !dbg !2012

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %203, metadata !1803, metadata !DIExpression()), !dbg !1855
  br label %439, !dbg !2016

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2017

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2018

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2019

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2021

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2023
  %210 = icmp ult i64 %209, %153, !dbg !2024
  br i1 %210, label %211, label %439, !dbg !2025

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2026
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2027
  %214 = load i8, ptr %213, align 1, !dbg !2027, !tbaa !900
  %215 = icmp eq i8 %214, 63, !dbg !2028
  br i1 %215, label %216, label %439, !dbg !2029

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2030
  %218 = load i8, ptr %217, align 1, !dbg !2030, !tbaa !900
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
  ], !dbg !2031

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2032

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1824, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %209, metadata !1817, metadata !DIExpression()), !dbg !1944
  %221 = icmp ult i64 %124, %130, !dbg !2034
  br i1 %221, label %222, label %224, !dbg !2037

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2034
  store i8 63, ptr %223, align 1, !dbg !2034, !tbaa !900
  br label %224, !dbg !2034

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %225, metadata !1803, metadata !DIExpression()), !dbg !1855
  %226 = icmp ult i64 %225, %130, !dbg !2038
  br i1 %226, label %227, label %229, !dbg !2041

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2038
  store i8 34, ptr %228, align 1, !dbg !2038, !tbaa !900
  br label %229, !dbg !2038

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %230, metadata !1803, metadata !DIExpression()), !dbg !1855
  %231 = icmp ult i64 %230, %130, !dbg !2042
  br i1 %231, label %232, label %234, !dbg !2045

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2042
  store i8 34, ptr %233, align 1, !dbg !2042, !tbaa !900
  br label %234, !dbg !2042

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %235, metadata !1803, metadata !DIExpression()), !dbg !1855
  %236 = icmp ult i64 %235, %130, !dbg !2046
  br i1 %236, label %237, label %239, !dbg !2049

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2046
  store i8 63, ptr %238, align 1, !dbg !2046, !tbaa !900
  br label %239, !dbg !2046

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %240, metadata !1803, metadata !DIExpression()), !dbg !1855
  br label %439, !dbg !2050

241:                                              ; preds = %152
  br label %251, !dbg !2051

242:                                              ; preds = %152
  br label %251, !dbg !2052

243:                                              ; preds = %152
  br label %249, !dbg !2053

244:                                              ; preds = %152
  br label %249, !dbg !2054

245:                                              ; preds = %152
  br label %251, !dbg !2055

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2056

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2057

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2060

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2062
  call void @llvm.dbg.label(metadata !1849), !dbg !2063
  br i1 %119, label %621, label %251, !dbg !2064

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2062
  call void @llvm.dbg.label(metadata !1851), !dbg !2066
  br i1 %109, label %493, label %450, !dbg !2067

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2068

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2069, !tbaa !900
  %256 = icmp eq i8 %255, 0, !dbg !2071
  br i1 %256, label %257, label %439, !dbg !2072

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2073
  br i1 %258, label %259, label %439, !dbg !2075

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1823, metadata !DIExpression()), !dbg !1953
  br label %260, !dbg !2076

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1823, metadata !DIExpression()), !dbg !1953
  br i1 %116, label %262, label %439, !dbg !2077

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2079

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1823, metadata !DIExpression()), !dbg !1953
  br i1 %116, label %264, label %439, !dbg !2080

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2081

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2084
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2086
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2086
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %270, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %269, metadata !1804, metadata !DIExpression()), !dbg !1855
  %271 = icmp ult i64 %124, %270, !dbg !2087
  br i1 %271, label %272, label %274, !dbg !2090

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2087
  store i8 39, ptr %273, align 1, !dbg !2087, !tbaa !900
  br label %274, !dbg !2087

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %275, metadata !1803, metadata !DIExpression()), !dbg !1855
  %276 = icmp ult i64 %275, %270, !dbg !2091
  br i1 %276, label %277, label %279, !dbg !2094

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2091
  store i8 92, ptr %278, align 1, !dbg !2091, !tbaa !900
  br label %279, !dbg !2091

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %280, metadata !1803, metadata !DIExpression()), !dbg !1855
  %281 = icmp ult i64 %280, %270, !dbg !2095
  br i1 %281, label %282, label %284, !dbg !2098

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2095
  store i8 39, ptr %283, align 1, !dbg !2095, !tbaa !900
  br label %284, !dbg !2095

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %285, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1855
  br label %439, !dbg !2099

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2100

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1825, metadata !DIExpression()), !dbg !2101
  %288 = tail call ptr @__ctype_b_loc() #41, !dbg !2102
  %289 = load ptr, ptr %288, align 8, !dbg !2102, !tbaa !834
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2102
  %292 = load i16, ptr %291, align 2, !dbg !2102, !tbaa !932
  %293 = and i16 %292, 16384, !dbg !2102
  %294 = icmp ne i16 %293, 0, !dbg !2104
  call void @llvm.dbg.value(metadata i1 %294, metadata !1828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2101
  br label %337, !dbg !2105

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2106
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1829, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata ptr %14, metadata !1881, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata ptr %14, metadata !1889, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i32 0, metadata !1892, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i64 8, metadata !1893, metadata !DIExpression()), !dbg !2110
  store i64 0, ptr %14, align 8, !dbg !2112
  call void @llvm.dbg.value(metadata i64 0, metadata !1825, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !1828, metadata !DIExpression()), !dbg !2101
  %296 = icmp eq i64 %153, -1, !dbg !2113
  br i1 %296, label %297, label %299, !dbg !2115

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %298, metadata !1796, metadata !DIExpression()), !dbg !1855
  br label %299, !dbg !2117

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1953
  call void @llvm.dbg.value(metadata i64 %300, metadata !1796, metadata !DIExpression()), !dbg !1855
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2118
  %301 = sub i64 %300, %129, !dbg !2119
  call void @llvm.dbg.value(metadata ptr %15, metadata !1832, metadata !DIExpression(DW_OP_deref)), !dbg !2120
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #38, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %302, metadata !1836, metadata !DIExpression()), !dbg !2120
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2122

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1825, metadata !DIExpression()), !dbg !2101
  %304 = icmp ugt i64 %300, %129, !dbg !2123
  br i1 %304, label %306, label %332, !dbg !2125

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1828, metadata !DIExpression()), !dbg !2101
  br label %332, !dbg !2126

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1825, metadata !DIExpression()), !dbg !2101
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2128
  %310 = load i8, ptr %309, align 1, !dbg !2128, !tbaa !900
  %311 = icmp eq i8 %310, 0, !dbg !2125
  br i1 %311, label %332, label %312, !dbg !2129

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %313, metadata !1825, metadata !DIExpression()), !dbg !2101
  %314 = add i64 %313, %129, !dbg !2131
  %315 = icmp eq i64 %313, %301, !dbg !2123
  br i1 %315, label %332, label %306, !dbg !2125, !llvm.loop !2132

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2133
  %319 = and i1 %318, %110, !dbg !2133
  call void @llvm.dbg.value(metadata i64 1, metadata !1837, metadata !DIExpression()), !dbg !2134
  br i1 %319, label %320, label %328, !dbg !2133

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1837, metadata !DIExpression()), !dbg !2134
  %322 = add i64 %321, %129, !dbg !2135
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2137
  %324 = load i8, ptr %323, align 1, !dbg !2137, !tbaa !900
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2138

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %326, metadata !1837, metadata !DIExpression()), !dbg !2134
  %327 = icmp eq i64 %326, %302, !dbg !2140
  br i1 %327, label %328, label %320, !dbg !2141, !llvm.loop !2142

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2144, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %329, metadata !1832, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 %329, metadata !2146, metadata !DIExpression()), !dbg !2154
  %330 = call i32 @iswprint(i32 noundef %329) #38, !dbg !2156
  %331 = icmp ne i32 %330, 0, !dbg !2157
  call void @llvm.dbg.value(metadata i8 poison, metadata !1828, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %302, metadata !1825, metadata !DIExpression()), !dbg !2101
  br label %332, !dbg !2158

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1828, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %333, metadata !1825, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2159
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2160
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1828, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 0, metadata !1825, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2159
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2160
  call void @llvm.dbg.label(metadata !1854), !dbg !2161
  %336 = select i1 %109, i32 4, i32 2, !dbg !2162
  br label %626, !dbg !2162

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1953
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2164
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1828, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %339, metadata !1825, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %338, metadata !1796, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i1 %340, metadata !1823, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1953
  %341 = icmp ult i64 %339, 2, !dbg !2165
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2166
  br i1 %343, label %439, label %344, !dbg !2166

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %345, metadata !1845, metadata !DIExpression()), !dbg !2168
  br label %346, !dbg !2169

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1855
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1944
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2170
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1953
  call void @llvm.dbg.value(metadata i8 %352, metadata !1824, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 %351, metadata !1822, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1819, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %349, metadata !1817, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %347, metadata !1803, metadata !DIExpression()), !dbg !1855
  br i1 %342, label %397, label %353, !dbg !2171

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2176

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1822, metadata !DIExpression()), !dbg !1953
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2179
  br i1 %355, label %372, label %356, !dbg !2179

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2181
  br i1 %357, label %358, label %360, !dbg !2185

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2181
  store i8 39, ptr %359, align 1, !dbg !2181, !tbaa !900
  br label %360, !dbg !2181

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %361, metadata !1803, metadata !DIExpression()), !dbg !1855
  %362 = icmp ult i64 %361, %130, !dbg !2186
  br i1 %362, label %363, label %365, !dbg !2189

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2186
  store i8 36, ptr %364, align 1, !dbg !2186, !tbaa !900
  br label %365, !dbg !2186

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %366, metadata !1803, metadata !DIExpression()), !dbg !1855
  %367 = icmp ult i64 %366, %130, !dbg !2190
  br i1 %367, label %368, label %370, !dbg !2193

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2190
  store i8 39, ptr %369, align 1, !dbg !2190, !tbaa !900
  br label %370, !dbg !2190

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %371, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1855
  br label %372, !dbg !2194

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1855
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %373, metadata !1803, metadata !DIExpression()), !dbg !1855
  %375 = icmp ult i64 %373, %130, !dbg !2195
  br i1 %375, label %376, label %378, !dbg !2198

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2195
  store i8 92, ptr %377, align 1, !dbg !2195, !tbaa !900
  br label %378, !dbg !2195

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %379, metadata !1803, metadata !DIExpression()), !dbg !1855
  %380 = icmp ult i64 %379, %130, !dbg !2199
  br i1 %380, label %381, label %385, !dbg !2202

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2199
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2199
  store i8 %383, ptr %384, align 1, !dbg !2199, !tbaa !900
  br label %385, !dbg !2199

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %386, metadata !1803, metadata !DIExpression()), !dbg !1855
  %387 = icmp ult i64 %386, %130, !dbg !2203
  br i1 %387, label %388, label %393, !dbg !2206

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2203
  %391 = or i8 %390, 48, !dbg !2203
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2203
  store i8 %391, ptr %392, align 1, !dbg !2203, !tbaa !900
  br label %393, !dbg !2203

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %394, metadata !1803, metadata !DIExpression()), !dbg !1855
  %395 = and i8 %352, 7, !dbg !2207
  %396 = or i8 %395, 48, !dbg !2208
  call void @llvm.dbg.value(metadata i8 %396, metadata !1824, metadata !DIExpression()), !dbg !1953
  br label %404, !dbg !2209

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2210

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2211
  br i1 %399, label %400, label %402, !dbg !2216

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2211
  store i8 92, ptr %401, align 1, !dbg !2211, !tbaa !900
  br label %402, !dbg !2211

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %403, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1953
  br label %404, !dbg !2217

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1855
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1953
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1953
  call void @llvm.dbg.value(metadata i8 %409, metadata !1824, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 %408, metadata !1822, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1819, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %405, metadata !1803, metadata !DIExpression()), !dbg !1855
  %410 = add i64 %349, 1, !dbg !2218
  %411 = icmp ugt i64 %345, %410, !dbg !2220
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2221

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2222
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2222
  br i1 %415, label %416, label %427, !dbg !2222

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2225
  br i1 %417, label %418, label %420, !dbg !2229

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2225
  store i8 39, ptr %419, align 1, !dbg !2225, !tbaa !900
  br label %420, !dbg !2225

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %421, metadata !1803, metadata !DIExpression()), !dbg !1855
  %422 = icmp ult i64 %421, %130, !dbg !2230
  br i1 %422, label %423, label %425, !dbg !2233

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2230
  store i8 39, ptr %424, align 1, !dbg !2230, !tbaa !900
  br label %425, !dbg !2230

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %426, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1855
  br label %427, !dbg !2234

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2235
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %428, metadata !1803, metadata !DIExpression()), !dbg !1855
  %430 = icmp ult i64 %428, %130, !dbg !2236
  br i1 %430, label %431, label %433, !dbg !2239

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2236
  store i8 %409, ptr %432, align 1, !dbg !2236, !tbaa !900
  br label %433, !dbg !2236

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %434, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %410, metadata !1817, metadata !DIExpression()), !dbg !1944
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2240
  %436 = load i8, ptr %435, align 1, !dbg !2240, !tbaa !900
  call void @llvm.dbg.value(metadata i8 %436, metadata !1824, metadata !DIExpression()), !dbg !1953
  br label %346, !dbg !2241, !llvm.loop !2242

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1824, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i1 %340, metadata !1823, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1953
  call void @llvm.dbg.value(metadata i8 %408, metadata !1822, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1819, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %349, metadata !1817, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %405, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %338, metadata !1796, metadata !DIExpression()), !dbg !1855
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2245
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1855
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1859
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1944
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1953
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %448, metadata !1824, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1823, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1822, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1819, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %445, metadata !1817, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %442, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %441, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %440, metadata !1796, metadata !DIExpression()), !dbg !1855
  br i1 %112, label %461, label %450, !dbg !2246

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
  br i1 %121, label %462, label %482, !dbg !2248

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2249

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
  %473 = lshr i8 %464, 5, !dbg !2250
  %474 = zext i8 %473 to i64, !dbg !2250
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2251
  %476 = load i32, ptr %475, align 4, !dbg !2251, !tbaa !891
  %477 = and i8 %464, 31, !dbg !2252
  %478 = zext i8 %477 to i32, !dbg !2252
  %479 = shl nuw i32 1, %478, !dbg !2253
  %480 = and i32 %476, %479, !dbg !2253
  %481 = icmp eq i32 %480, 0, !dbg !2253
  br i1 %481, label %482, label %493, !dbg !2254

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
  br i1 %154, label %493, label %529, !dbg !2255

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2245
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1855
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1859
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2256
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1953
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %501, metadata !1824, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1823, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %499, metadata !1817, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %496, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %495, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %494, metadata !1796, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1852), !dbg !2257
  br i1 %110, label %621, label %503, !dbg !2258

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1822, metadata !DIExpression()), !dbg !1953
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2260
  br i1 %504, label %521, label %505, !dbg !2260

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2262
  br i1 %506, label %507, label %509, !dbg !2266

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2262
  store i8 39, ptr %508, align 1, !dbg !2262, !tbaa !900
  br label %509, !dbg !2262

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %510, metadata !1803, metadata !DIExpression()), !dbg !1855
  %511 = icmp ult i64 %510, %502, !dbg !2267
  br i1 %511, label %512, label %514, !dbg !2270

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2267
  store i8 36, ptr %513, align 1, !dbg !2267, !tbaa !900
  br label %514, !dbg !2267

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %515, metadata !1803, metadata !DIExpression()), !dbg !1855
  %516 = icmp ult i64 %515, %502, !dbg !2271
  br i1 %516, label %517, label %519, !dbg !2274

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2271
  store i8 39, ptr %518, align 1, !dbg !2271, !tbaa !900
  br label %519, !dbg !2271

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %520, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1855
  br label %521, !dbg !2275

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1953
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %522, metadata !1803, metadata !DIExpression()), !dbg !1855
  %524 = icmp ult i64 %522, %502, !dbg !2276
  br i1 %524, label %525, label %527, !dbg !2279

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2276
  store i8 92, ptr %526, align 1, !dbg !2276, !tbaa !900
  br label %527, !dbg !2276

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %502, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %501, metadata !1824, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1823, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1822, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %499, metadata !1817, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %496, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %528, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %494, metadata !1796, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1853), !dbg !2280
  br label %553, !dbg !2281

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2245
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1855
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1859
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2256
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2284
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %538, metadata !1824, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1823, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 poison, metadata !1822, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %535, metadata !1817, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %532, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %531, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %530, metadata !1796, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1853), !dbg !2280
  %540 = xor i1 %534, true, !dbg !2281
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2281
  br i1 %541, label %553, label %542, !dbg !2281

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2285
  br i1 %543, label %544, label %546, !dbg !2289

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2285
  store i8 39, ptr %545, align 1, !dbg !2285, !tbaa !900
  br label %546, !dbg !2285

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %547, metadata !1803, metadata !DIExpression()), !dbg !1855
  %548 = icmp ult i64 %547, %539, !dbg !2290
  br i1 %548, label %549, label %551, !dbg !2293

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2290
  store i8 39, ptr %550, align 1, !dbg !2290, !tbaa !900
  br label %551, !dbg !2290

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %552, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1855
  br label %553, !dbg !2294

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1953
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %561, metadata !1803, metadata !DIExpression()), !dbg !1855
  %563 = icmp ult i64 %561, %554, !dbg !2295
  br i1 %563, label %564, label %566, !dbg !2298

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2295
  store i8 %555, ptr %565, align 1, !dbg !2295, !tbaa !900
  br label %566, !dbg !2295

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %567, metadata !1803, metadata !DIExpression()), !dbg !1855
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1810, metadata !DIExpression()), !dbg !1855
  br label %569, !dbg !2300

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2245
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1855
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1859
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2256
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %576, metadata !1817, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1810, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %572, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %571, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %570, metadata !1796, metadata !DIExpression()), !dbg !1855
  %578 = add i64 %576, 1, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %578, metadata !1817, metadata !DIExpression()), !dbg !1944
  br label %122, !dbg !2302, !llvm.loop !2303

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1794, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1810, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 poison, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %123, metadata !1796, metadata !DIExpression()), !dbg !1855
  %580 = icmp ne i64 %124, 0, !dbg !2305
  %581 = xor i1 %110, true, !dbg !2307
  %582 = or i1 %580, %581, !dbg !2307
  %583 = or i1 %582, %111, !dbg !2307
  br i1 %583, label %584, label %621, !dbg !2307

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2308
  %586 = xor i1 %126, true, !dbg !2308
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2308
  br i1 %587, label %595, label %588, !dbg !2308

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2310

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2312
  br label %636, !dbg !2314

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2315
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2317
  br i1 %594, label %27, label %595, !dbg !2317

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2318
  %598 = or i1 %597, %596, !dbg !2320
  br i1 %598, label %614, label %599, !dbg !2320

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1855
  %600 = load i8, ptr %107, align 1, !dbg !2321, !tbaa !900
  %601 = icmp eq i8 %600, 0, !dbg !2324
  br i1 %601, label %614, label %602, !dbg !2324

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %605, metadata !1803, metadata !DIExpression()), !dbg !1855
  %606 = icmp ult i64 %605, %130, !dbg !2325
  br i1 %606, label %607, label %609, !dbg !2328

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2325
  store i8 %603, ptr %608, align 1, !dbg !2325, !tbaa !900
  br label %609, !dbg !2325

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %610, metadata !1803, metadata !DIExpression()), !dbg !1855
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2329
  call void @llvm.dbg.value(metadata ptr %611, metadata !1805, metadata !DIExpression()), !dbg !1855
  %612 = load i8, ptr %611, align 1, !dbg !2321, !tbaa !900
  %613 = icmp eq i8 %612, 0, !dbg !2324
  br i1 %613, label %614, label %602, !dbg !2324, !llvm.loop !2330

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1931
  call void @llvm.dbg.value(metadata i64 %615, metadata !1803, metadata !DIExpression()), !dbg !1855
  %616 = icmp ult i64 %615, %130, !dbg !2332
  br i1 %616, label %617, label %636, !dbg !2334

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2335
  store i8 0, ptr %618, align 1, !dbg !2336, !tbaa !900
  br label %636, !dbg !2335

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1854), !dbg !2161
  %620 = icmp eq i32 %103, 2, !dbg !2337
  br i1 %620, label %626, label %630, !dbg !2162

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1854), !dbg !2161
  %624 = icmp eq i32 %103, 2, !dbg !2337
  %625 = select i1 %109, i32 4, i32 2, !dbg !2162
  br i1 %624, label %626, label %630, !dbg !2162

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2162

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1797, metadata !DIExpression()), !dbg !1855
  %634 = and i32 %5, -3, !dbg !2338
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2339
  br label %636, !dbg !2340

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2341
}

; Function Attrs: nounwind
declare !dbg !2342 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2345 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2348 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2350 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2354, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %1, metadata !2355, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr %2, metadata !2356, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr %0, metadata !2358, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %1, metadata !2363, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr null, metadata !2364, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %2, metadata !2365, metadata !DIExpression()), !dbg !2371
  %4 = icmp eq ptr %2, null, !dbg !2373
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2373
  call void @llvm.dbg.value(metadata ptr %5, metadata !2366, metadata !DIExpression()), !dbg !2371
  %6 = tail call ptr @__errno_location() #41, !dbg !2374
  %7 = load i32, ptr %6, align 4, !dbg !2374, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %7, metadata !2367, metadata !DIExpression()), !dbg !2371
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2375
  %9 = load i32, ptr %8, align 4, !dbg !2375, !tbaa !1737
  %10 = or i32 %9, 1, !dbg !2376
  call void @llvm.dbg.value(metadata i32 %10, metadata !2368, metadata !DIExpression()), !dbg !2371
  %11 = load i32, ptr %5, align 8, !dbg !2377, !tbaa !1687
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2378
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2379
  %14 = load ptr, ptr %13, align 8, !dbg !2379, !tbaa !1758
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2380
  %16 = load ptr, ptr %15, align 8, !dbg !2380, !tbaa !1761
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2381
  %18 = add i64 %17, 1, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %18, metadata !2369, metadata !DIExpression()), !dbg !2371
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2383
  call void @llvm.dbg.value(metadata ptr %19, metadata !2370, metadata !DIExpression()), !dbg !2371
  %20 = load i32, ptr %5, align 8, !dbg !2384, !tbaa !1687
  %21 = load ptr, ptr %13, align 8, !dbg !2385, !tbaa !1758
  %22 = load ptr, ptr %15, align 8, !dbg !2386, !tbaa !1761
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2387
  store i32 %7, ptr %6, align 4, !dbg !2388, !tbaa !891
  ret ptr %19, !dbg !2389
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2359 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2358, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %1, metadata !2363, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata ptr %2, metadata !2364, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata ptr %3, metadata !2365, metadata !DIExpression()), !dbg !2390
  %5 = icmp eq ptr %3, null, !dbg !2391
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2391
  call void @llvm.dbg.value(metadata ptr %6, metadata !2366, metadata !DIExpression()), !dbg !2390
  %7 = tail call ptr @__errno_location() #41, !dbg !2392
  %8 = load i32, ptr %7, align 4, !dbg !2392, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %8, metadata !2367, metadata !DIExpression()), !dbg !2390
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2393
  %10 = load i32, ptr %9, align 4, !dbg !2393, !tbaa !1737
  %11 = icmp eq ptr %2, null, !dbg !2394
  %12 = zext i1 %11 to i32, !dbg !2394
  %13 = or i32 %10, %12, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %13, metadata !2368, metadata !DIExpression()), !dbg !2390
  %14 = load i32, ptr %6, align 8, !dbg !2396, !tbaa !1687
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2397
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2398
  %17 = load ptr, ptr %16, align 8, !dbg !2398, !tbaa !1758
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2399
  %19 = load ptr, ptr %18, align 8, !dbg !2399, !tbaa !1761
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2400
  %21 = add i64 %20, 1, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %21, metadata !2369, metadata !DIExpression()), !dbg !2390
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2402
  call void @llvm.dbg.value(metadata ptr %22, metadata !2370, metadata !DIExpression()), !dbg !2390
  %23 = load i32, ptr %6, align 8, !dbg !2403, !tbaa !1687
  %24 = load ptr, ptr %16, align 8, !dbg !2404, !tbaa !1758
  %25 = load ptr, ptr %18, align 8, !dbg !2405, !tbaa !1761
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2406
  store i32 %8, ptr %7, align 4, !dbg !2407, !tbaa !891
  br i1 %11, label %28, label %27, !dbg !2408

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2409, !tbaa !1119
  br label %28, !dbg !2411

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2412
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2413 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2418, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %1, metadata !2415, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 1, metadata !2416, metadata !DIExpression()), !dbg !2420
  %2 = load i32, ptr @nslots, align 4, !tbaa !891
  call void @llvm.dbg.value(metadata i32 1, metadata !2416, metadata !DIExpression()), !dbg !2420
  %3 = icmp sgt i32 %2, 1, !dbg !2421
  br i1 %3, label %4, label %6, !dbg !2423

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2421
  br label %10, !dbg !2423

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2424
  %8 = load ptr, ptr %7, align 8, !dbg !2424, !tbaa !2426
  %9 = icmp eq ptr %8, @slot0, !dbg !2428
  br i1 %9, label %17, label %16, !dbg !2429

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2416, metadata !DIExpression()), !dbg !2420
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2430
  %13 = load ptr, ptr %12, align 8, !dbg !2430, !tbaa !2426
  tail call void @free(ptr noundef %13) #38, !dbg !2431
  %14 = add nuw nsw i64 %11, 1, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %14, metadata !2416, metadata !DIExpression()), !dbg !2420
  %15 = icmp eq i64 %14, %5, !dbg !2421
  br i1 %15, label %6, label %10, !dbg !2423, !llvm.loop !2433

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2435
  store i64 256, ptr @slotvec0, align 8, !dbg !2437, !tbaa !2438
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2439, !tbaa !2426
  br label %17, !dbg !2440

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2441
  br i1 %18, label %20, label %19, !dbg !2443

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2444
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2446, !tbaa !834
  br label %20, !dbg !2447

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2448, !tbaa !891
  ret void, !dbg !2449
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata ptr %1, metadata !2453, metadata !DIExpression()), !dbg !2454
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2455
  ret ptr %3, !dbg !2456
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2457 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2461, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata ptr %1, metadata !2462, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %2, metadata !2463, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata ptr %3, metadata !2464, metadata !DIExpression()), !dbg !2477
  %6 = tail call ptr @__errno_location() #41, !dbg !2478
  %7 = load i32, ptr %6, align 4, !dbg !2478, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %7, metadata !2465, metadata !DIExpression()), !dbg !2477
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2479, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %8, metadata !2466, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2467, metadata !DIExpression()), !dbg !2477
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2480
  br i1 %9, label %10, label %11, !dbg !2480

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2482
  unreachable, !dbg !2482

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2483, !tbaa !891
  %13 = icmp sgt i32 %12, %0, !dbg !2484
  br i1 %13, label %32, label %14, !dbg !2485

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2486
  call void @llvm.dbg.value(metadata i1 %15, metadata !2468, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2487
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2488
  %16 = sext i32 %12 to i64, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %16, metadata !2471, metadata !DIExpression()), !dbg !2487
  store i64 %16, ptr %5, align 8, !dbg !2490, !tbaa !1119
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2491
  %18 = add nuw nsw i32 %0, 1, !dbg !2492
  %19 = sub i32 %18, %12, !dbg !2493
  %20 = sext i32 %19 to i64, !dbg !2494
  call void @llvm.dbg.value(metadata ptr %5, metadata !2471, metadata !DIExpression(DW_OP_deref)), !dbg !2487
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2495
  call void @llvm.dbg.value(metadata ptr %21, metadata !2466, metadata !DIExpression()), !dbg !2477
  store ptr %21, ptr @slotvec, align 8, !dbg !2496, !tbaa !834
  br i1 %15, label %22, label %23, !dbg !2497

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2498, !tbaa.struct !2500
  br label %23, !dbg !2501

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2502, !tbaa !891
  %25 = sext i32 %24 to i64, !dbg !2503
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2503
  %27 = load i64, ptr %5, align 8, !dbg !2504, !tbaa !1119
  call void @llvm.dbg.value(metadata i64 %27, metadata !2471, metadata !DIExpression()), !dbg !2487
  %28 = sub nsw i64 %27, %25, !dbg !2505
  %29 = shl i64 %28, 4, !dbg !2506
  call void @llvm.dbg.value(metadata ptr %26, metadata !1889, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 0, metadata !1892, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %29, metadata !1893, metadata !DIExpression()), !dbg !2507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2509
  %30 = load i64, ptr %5, align 8, !dbg !2510, !tbaa !1119
  call void @llvm.dbg.value(metadata i64 %30, metadata !2471, metadata !DIExpression()), !dbg !2487
  %31 = trunc i64 %30 to i32, !dbg !2510
  store i32 %31, ptr @nslots, align 4, !dbg !2511, !tbaa !891
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2512
  br label %32, !dbg !2513

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2477
  call void @llvm.dbg.value(metadata ptr %33, metadata !2466, metadata !DIExpression()), !dbg !2477
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2514
  %36 = load i64, ptr %35, align 8, !dbg !2515, !tbaa !2438
  call void @llvm.dbg.value(metadata i64 %36, metadata !2472, metadata !DIExpression()), !dbg !2516
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2517
  %38 = load ptr, ptr %37, align 8, !dbg !2517, !tbaa !2426
  call void @llvm.dbg.value(metadata ptr %38, metadata !2474, metadata !DIExpression()), !dbg !2516
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2518
  %40 = load i32, ptr %39, align 4, !dbg !2518, !tbaa !1737
  %41 = or i32 %40, 1, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %41, metadata !2475, metadata !DIExpression()), !dbg !2516
  %42 = load i32, ptr %3, align 8, !dbg !2520, !tbaa !1687
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2521
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2522
  %45 = load ptr, ptr %44, align 8, !dbg !2522, !tbaa !1758
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2523
  %47 = load ptr, ptr %46, align 8, !dbg !2523, !tbaa !1761
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2524
  call void @llvm.dbg.value(metadata i64 %48, metadata !2476, metadata !DIExpression()), !dbg !2516
  %49 = icmp ugt i64 %36, %48, !dbg !2525
  br i1 %49, label %60, label %50, !dbg !2527

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2528
  call void @llvm.dbg.value(metadata i64 %51, metadata !2472, metadata !DIExpression()), !dbg !2516
  store i64 %51, ptr %35, align 8, !dbg !2530, !tbaa !2438
  %52 = icmp eq ptr %38, @slot0, !dbg !2531
  br i1 %52, label %54, label %53, !dbg !2533

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2534
  br label %54, !dbg !2534

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2535
  call void @llvm.dbg.value(metadata ptr %55, metadata !2474, metadata !DIExpression()), !dbg !2516
  store ptr %55, ptr %37, align 8, !dbg !2536, !tbaa !2426
  %56 = load i32, ptr %3, align 8, !dbg !2537, !tbaa !1687
  %57 = load ptr, ptr %44, align 8, !dbg !2538, !tbaa !1758
  %58 = load ptr, ptr %46, align 8, !dbg !2539, !tbaa !1761
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2540
  br label %60, !dbg !2541

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2516
  call void @llvm.dbg.value(metadata ptr %61, metadata !2474, metadata !DIExpression()), !dbg !2516
  store i32 %7, ptr %6, align 4, !dbg !2542, !tbaa !891
  ret ptr %61, !dbg !2543
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %1, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %2, metadata !2550, metadata !DIExpression()), !dbg !2551
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2552
  ret ptr %4, !dbg !2553
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2554 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2556, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i32 0, metadata !2452, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %0, metadata !2453, metadata !DIExpression()), !dbg !2558
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2560
  ret ptr %2, !dbg !2561
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2562 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2566, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 0, metadata !2548, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata ptr %0, metadata !2549, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %1, metadata !2550, metadata !DIExpression()), !dbg !2569
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2571
  ret ptr %3, !dbg !2572
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2573 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2577, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 %1, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %2, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2582
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2580, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %1, metadata !2588, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2596, !alias.scope !2584
  %5 = icmp eq i32 %1, 10, !dbg !2597
  br i1 %5, label %6, label %7, !dbg !2599

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2600, !noalias !2584
  unreachable, !dbg !2600

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2601, !tbaa !1687, !alias.scope !2584
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2602
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2603
  ret ptr %8, !dbg !2604
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2605 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2609, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %1, metadata !2610, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata ptr %2, metadata !2611, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %3, metadata !2612, metadata !DIExpression()), !dbg !2614
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2615
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2613, metadata !DIExpression()), !dbg !2616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2617), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1, metadata !2588, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2593, metadata !DIExpression()), !dbg !2623
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2623, !alias.scope !2617
  %6 = icmp eq i32 %1, 10, !dbg !2624
  br i1 %6, label %7, label %8, !dbg !2625

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2626, !noalias !2617
  unreachable, !dbg !2626

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2627, !tbaa !1687, !alias.scope !2617
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2628
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2629
  ret ptr %9, !dbg !2630
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2631 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 0, metadata !2577, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %1, metadata !2579, metadata !DIExpression()), !dbg !2638
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2640
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2580, metadata !DIExpression()), !dbg !2641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %0, metadata !2588, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2593, metadata !DIExpression()), !dbg !2648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2648, !alias.scope !2642
  %4 = icmp eq i32 %0, 10, !dbg !2649
  br i1 %4, label %5, label %6, !dbg !2650

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2651, !noalias !2642
  unreachable, !dbg !2651

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2652, !tbaa !1687, !alias.scope !2642
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2653
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2654
  ret ptr %7, !dbg !2655
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2656 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %1, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %2, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2609, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 %0, metadata !2610, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %1, metadata !2611, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %2, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2666
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2613, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668), !dbg !2671
  call void @llvm.dbg.value(metadata i32 %0, metadata !2588, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2593, metadata !DIExpression()), !dbg !2674
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2674, !alias.scope !2668
  %5 = icmp eq i32 %0, 10, !dbg !2675
  br i1 %5, label %6, label %7, !dbg !2676

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2677, !noalias !2668
  unreachable, !dbg !2677

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2678, !tbaa !1687, !alias.scope !2668
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2679
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2680
  ret ptr %8, !dbg !2681
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2682 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %1, metadata !2687, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8 %2, metadata !2688, metadata !DIExpression()), !dbg !2690
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2691
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2689, metadata !DIExpression()), !dbg !2692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2693, !tbaa.struct !2694
  call void @llvm.dbg.value(metadata ptr %4, metadata !1704, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %2, metadata !1705, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 1, metadata !1706, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %2, metadata !1707, metadata !DIExpression()), !dbg !2695
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2697
  %6 = lshr i8 %2, 5, !dbg !2698
  %7 = zext i8 %6 to i64, !dbg !2698
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2699
  call void @llvm.dbg.value(metadata ptr %8, metadata !1708, metadata !DIExpression()), !dbg !2695
  %9 = and i8 %2, 31, !dbg !2700
  %10 = zext i8 %9 to i32, !dbg !2700
  call void @llvm.dbg.value(metadata i32 %10, metadata !1710, metadata !DIExpression()), !dbg !2695
  %11 = load i32, ptr %8, align 4, !dbg !2701, !tbaa !891
  %12 = lshr i32 %11, %10, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %12, metadata !1711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2695
  %13 = and i32 %12, 1, !dbg !2703
  %14 = xor i32 %13, 1, !dbg !2703
  %15 = shl nuw i32 %14, %10, !dbg !2704
  %16 = xor i32 %15, %11, !dbg !2705
  store i32 %16, ptr %8, align 4, !dbg !2705, !tbaa !891
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2706
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2707
  ret ptr %17, !dbg !2708
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2709 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %1, metadata !2714, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 -1, metadata !2687, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %1, metadata !2688, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2718
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2689, metadata !DIExpression()), !dbg !2719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2720, !tbaa.struct !2694
  call void @llvm.dbg.value(metadata ptr %3, metadata !1704, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8 %1, metadata !1705, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 1, metadata !1706, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8 %1, metadata !1707, metadata !DIExpression()), !dbg !2721
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2723
  %5 = lshr i8 %1, 5, !dbg !2724
  %6 = zext i8 %5 to i64, !dbg !2724
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2725
  call void @llvm.dbg.value(metadata ptr %7, metadata !1708, metadata !DIExpression()), !dbg !2721
  %8 = and i8 %1, 31, !dbg !2726
  %9 = zext i8 %8 to i32, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %9, metadata !1710, metadata !DIExpression()), !dbg !2721
  %10 = load i32, ptr %7, align 4, !dbg !2727, !tbaa !891
  %11 = lshr i32 %10, %9, !dbg !2728
  call void @llvm.dbg.value(metadata i32 %11, metadata !1711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2721
  %12 = and i32 %11, 1, !dbg !2729
  %13 = xor i32 %12, 1, !dbg !2729
  %14 = shl nuw i32 %13, %9, !dbg !2730
  %15 = xor i32 %14, %10, !dbg !2731
  store i32 %15, ptr %7, align 4, !dbg !2731, !tbaa !891
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2732
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2733
  ret ptr %16, !dbg !2734
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2735 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %0, metadata !2713, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 58, metadata !2714, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i64 -1, metadata !2687, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 58, metadata !2688, metadata !DIExpression()), !dbg !2741
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2743
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2689, metadata !DIExpression()), !dbg !2744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2745, !tbaa.struct !2694
  call void @llvm.dbg.value(metadata ptr %2, metadata !1704, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 58, metadata !1705, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 1, metadata !1706, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 58, metadata !1707, metadata !DIExpression()), !dbg !2746
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %3, metadata !1708, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 26, metadata !1710, metadata !DIExpression()), !dbg !2746
  %4 = load i32, ptr %3, align 4, !dbg !2749, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %4, metadata !1711, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2746
  %5 = or i32 %4, 67108864, !dbg !2750
  store i32 %5, ptr %3, align 4, !dbg !2750, !tbaa !891
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2751
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2752
  ret ptr %6, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2754 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %1, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %1, metadata !2687, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 58, metadata !2688, metadata !DIExpression()), !dbg !2759
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2761
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2689, metadata !DIExpression()), !dbg !2762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2763, !tbaa.struct !2694
  call void @llvm.dbg.value(metadata ptr %3, metadata !1704, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 58, metadata !1705, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 1, metadata !1706, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 58, metadata !1707, metadata !DIExpression()), !dbg !2764
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2766
  call void @llvm.dbg.value(metadata ptr %4, metadata !1708, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 26, metadata !1710, metadata !DIExpression()), !dbg !2764
  %5 = load i32, ptr %4, align 4, !dbg !2767, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %5, metadata !1711, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2764
  %6 = or i32 %5, 67108864, !dbg !2768
  store i32 %6, ptr %4, align 4, !dbg !2768, !tbaa !891
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2769
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2770
  ret ptr %7, !dbg !2771
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2772 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2593, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2778
  call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 %1, metadata !2775, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %2, metadata !2776, metadata !DIExpression()), !dbg !2780
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2781
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2777, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %1, metadata !2588, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2593, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2783
  %5 = icmp eq i32 %1, 10, !dbg !2784
  br i1 %5, label %6, label %7, !dbg !2785

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2786, !noalias !2787
  unreachable, !dbg !2786

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2593, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2783
  store i32 %1, ptr %4, align 8, !dbg !2790, !tbaa.struct !2694
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2790
  call void @llvm.dbg.value(metadata ptr %4, metadata !1704, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 58, metadata !1705, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 1, metadata !1706, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 58, metadata !1707, metadata !DIExpression()), !dbg !2791
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2793
  call void @llvm.dbg.value(metadata ptr %9, metadata !1708, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 26, metadata !1710, metadata !DIExpression()), !dbg !2791
  %10 = load i32, ptr %9, align 4, !dbg !2794, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %10, metadata !1711, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2791
  %11 = or i32 %10, 67108864, !dbg !2795
  store i32 %11, ptr %9, align 4, !dbg !2795, !tbaa !891
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2796
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2797
  ret ptr %12, !dbg !2798
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2799 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2803, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %1, metadata !2804, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %2, metadata !2805, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %3, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %1, metadata !2813, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %3, metadata !2815, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i64 -1, metadata !2816, metadata !DIExpression()), !dbg !2818
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2820
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2822, !tbaa.struct !2694
  call void @llvm.dbg.value(metadata ptr %5, metadata !1744, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %1, metadata !1745, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %2, metadata !1746, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %5, metadata !1744, metadata !DIExpression()), !dbg !2823
  store i32 10, ptr %5, align 8, !dbg !2825, !tbaa !1687
  %6 = icmp ne ptr %1, null, !dbg !2826
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2827
  br i1 %8, label %10, label %9, !dbg !2827

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2828
  unreachable, !dbg !2828

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2829
  store ptr %1, ptr %11, align 8, !dbg !2830, !tbaa !1758
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2831
  store ptr %2, ptr %12, align 8, !dbg !2832, !tbaa !1761
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2833
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2834
  ret ptr %13, !dbg !2835
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2809 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %1, metadata !2813, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %3, metadata !2815, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %4, metadata !2816, metadata !DIExpression()), !dbg !2836
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2837
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2817, metadata !DIExpression()), !dbg !2838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2839, !tbaa.struct !2694
  call void @llvm.dbg.value(metadata ptr %6, metadata !1744, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %1, metadata !1745, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %2, metadata !1746, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %6, metadata !1744, metadata !DIExpression()), !dbg !2840
  store i32 10, ptr %6, align 8, !dbg !2842, !tbaa !1687
  %7 = icmp ne ptr %1, null, !dbg !2843
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2844
  br i1 %9, label %11, label %10, !dbg !2844

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2845
  unreachable, !dbg !2845

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2846
  store ptr %1, ptr %12, align 8, !dbg !2847, !tbaa !1758
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2848
  store ptr %2, ptr %13, align 8, !dbg !2849, !tbaa !1761
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2850
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2851
  ret ptr %14, !dbg !2852
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2853 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %1, metadata !2858, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %2, metadata !2859, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i32 0, metadata !2803, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %0, metadata !2804, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %1, metadata !2805, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %2, metadata !2806, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2808, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata ptr %0, metadata !2813, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata ptr %1, metadata !2814, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata ptr %2, metadata !2815, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 -1, metadata !2816, metadata !DIExpression()), !dbg !2863
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2865
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2817, metadata !DIExpression()), !dbg !2866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2867, !tbaa.struct !2694
  call void @llvm.dbg.value(metadata ptr %4, metadata !1744, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %0, metadata !1745, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %1, metadata !1746, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %4, metadata !1744, metadata !DIExpression()), !dbg !2868
  store i32 10, ptr %4, align 8, !dbg !2870, !tbaa !1687
  %5 = icmp ne ptr %0, null, !dbg !2871
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2872
  br i1 %7, label %9, label %8, !dbg !2872

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2873
  unreachable, !dbg !2873

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2874
  store ptr %0, ptr %10, align 8, !dbg !2875, !tbaa !1758
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2876
  store ptr %1, ptr %11, align 8, !dbg !2877, !tbaa !1761
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2878
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2879
  ret ptr %12, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2881 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2885, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata ptr %1, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata ptr %2, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %3, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 0, metadata !2808, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %0, metadata !2813, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %1, metadata !2814, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %2, metadata !2815, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %3, metadata !2816, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2892
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2817, metadata !DIExpression()), !dbg !2893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2894, !tbaa.struct !2694
  call void @llvm.dbg.value(metadata ptr %5, metadata !1744, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %0, metadata !1745, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %1, metadata !1746, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %5, metadata !1744, metadata !DIExpression()), !dbg !2895
  store i32 10, ptr %5, align 8, !dbg !2897, !tbaa !1687
  %6 = icmp ne ptr %0, null, !dbg !2898
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2899
  br i1 %8, label %10, label %9, !dbg !2899

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2900
  unreachable, !dbg !2900

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2901
  store ptr %0, ptr %11, align 8, !dbg !2902, !tbaa !1758
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2903
  store ptr %1, ptr %12, align 8, !dbg !2904, !tbaa !1761
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2905
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2906
  ret ptr %13, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2908 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2912, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %1, metadata !2913, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %2, metadata !2914, metadata !DIExpression()), !dbg !2915
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2916
  ret ptr %4, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2918 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64 %1, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i32 0, metadata !2912, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %0, metadata !2913, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2914, metadata !DIExpression()), !dbg !2925
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2927
  ret ptr %3, !dbg !2928
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata ptr %1, metadata !2934, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 %0, metadata !2912, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %1, metadata !2913, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 -1, metadata !2914, metadata !DIExpression()), !dbg !2936
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2938
  ret ptr %3, !dbg !2939
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2940 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2944, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 0, metadata !2933, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata ptr %0, metadata !2934, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 0, metadata !2912, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %0, metadata !2913, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 -1, metadata !2914, metadata !DIExpression()), !dbg !2948
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2950
  ret ptr %2, !dbg !2951
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @extract_trimmed_name(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !2952 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !2982
  %2 = load ptr, ptr %0, align 8, !dbg !2983, !tbaa !1152
  call void @llvm.dbg.value(metadata ptr %2, metadata !2979, metadata !DIExpression()), !dbg !2982
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %3, metadata !2980, metadata !DIExpression()), !dbg !2982
  %4 = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !2985
  call void @llvm.dbg.value(metadata ptr %4, metadata !2981, metadata !DIExpression()), !dbg !2982
  br label %5, !dbg !2987

5:                                                ; preds = %8, %1
  %6 = phi ptr [ %4, %1 ], [ %9, %8 ], !dbg !2988
  call void @llvm.dbg.value(metadata ptr %6, metadata !2981, metadata !DIExpression()), !dbg !2982
  %7 = icmp ult ptr %2, %6, !dbg !2989
  br i1 %7, label %8, label %12, !dbg !2991

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2992
  %10 = load i8, ptr %9, align 1, !dbg !2992, !tbaa !900
  %11 = icmp eq i8 %10, 32, !dbg !2993
  br i1 %11, label %5, label %12, !dbg !2994, !llvm.loop !2995

12:                                               ; preds = %5, %8
  %13 = ptrtoint ptr %6 to i64, !dbg !2997
  %14 = ptrtoint ptr %2 to i64, !dbg !2997
  %15 = sub i64 %13, %14, !dbg !2997
  %16 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %2, i64 noundef %15) #38, !dbg !2998
  ret ptr %16, !dbg !2999
}

; Function Attrs: nounwind uwtable
define dso_local i32 @read_utmp(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #10 !dbg !3000 {
  %5 = alloca [33 x i8], align 4
  %6 = alloca %struct.sysinfo, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.utmp_alloc, align 8
  %11 = alloca %struct.utmp_alloc, align 8
  %12 = alloca %struct.utmp_alloc, align 8
  %13 = alloca %struct.utmp_alloc, align 8
  %14 = alloca %struct.utmp_alloc, align 8
  %15 = alloca %struct.utmp_alloc, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3006, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %1, metadata !3007, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %2, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %3, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %0, metadata !3011, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %1, metadata !3014, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %2, metadata !3015, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %3, metadata !3016, metadata !DIExpression()), !dbg !3044
  %16 = and i32 %3, 4, !dbg !3046
  %17 = icmp eq i32 %16, 0, !dbg !3048
  %18 = and i32 %3, 10
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19, !dbg !3049
  br i1 %20, label %21, label %391, !dbg !3049

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr null, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  %22 = tail call i32 @utmpxname(ptr noundef %0) #38, !dbg !3050
  tail call void @setutxent() #38, !dbg !3051
  call void @llvm.dbg.value(metadata ptr %0, metadata !3052, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3055, metadata !DIExpression()), !dbg !3056
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.80) #39, !dbg !3058
  %24 = icmp eq i32 %23, 0, !dbg !3059
  call void @llvm.dbg.value(metadata i1 %24, metadata !3025, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !3026, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !3026, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata ptr null, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  %25 = tail call ptr @getutxent() #38, !dbg !3060
  call void @llvm.dbg.value(metadata ptr %25, metadata !3027, metadata !DIExpression()), !dbg !3044
  %26 = icmp eq ptr %25, null, !dbg !3061
  br i1 %26, label %87, label %27, !dbg !3062

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, ptr %11, i64 8
  %29 = getelementptr inbounds i8, ptr %11, i64 16
  %30 = getelementptr inbounds i8, ptr %11, i64 24
  %31 = getelementptr inbounds i8, ptr %10, i64 8
  %32 = getelementptr inbounds i8, ptr %10, i64 16
  %33 = getelementptr inbounds i8, ptr %10, i64 24
  br label %34, !dbg !3062

34:                                               ; preds = %80, %27
  %35 = phi ptr [ %25, %27 ], [ %83, %80 ]
  %36 = phi ptr [ null, %27 ], [ %68, %80 ]
  %37 = phi i64 [ 0, %27 ], [ %69, %80 ]
  %38 = phi i64 [ 0, %27 ], [ %82, %80 ]
  %39 = phi i64 [ 0, %27 ], [ %81, %80 ]
  %40 = phi i64 [ 0, %27 ], [ %70, %80 ]
  %41 = phi i64 [ 0, %27 ], [ %71, %80 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %37, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %38, metadata !3026, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %39, metadata !3026, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %40, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %41, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %35, metadata !3028, metadata !DIExpression()), !dbg !3063
  %42 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 8, !dbg !3064
  %43 = load i64, ptr %42, align 8, !dbg !3065, !tbaa !3066
  call void @llvm.dbg.value(metadata i64 %43, metadata !3030, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3063
  %44 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 8, i32 1, !dbg !3070
  %45 = load i64, ptr %44, align 8, !dbg !3070, !tbaa !3071
  %46 = mul nsw i64 %45, 1000, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %46, metadata !3030, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3063
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #38, !dbg !3073
  %47 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 4, !dbg !3074
  %48 = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %47, i64 noundef 32) #39, !dbg !3075
  %49 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 3, !dbg !3076
  %50 = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %49, i64 noundef 4) #39, !dbg !3077
  %51 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 2, !dbg !3078
  %52 = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %51, i64 noundef 32) #39, !dbg !3079
  %53 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 5, !dbg !3080
  %54 = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %53, i64 noundef 256) #39, !dbg !3081
  %55 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 1, !dbg !3082
  %56 = load i32, ptr %55, align 4, !dbg !3082, !tbaa !3083
  %57 = load i16, ptr %35, align 8, !dbg !3084, !tbaa !3085
  %58 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 7, !dbg !3086
  %59 = load i64, ptr %58, align 8, !dbg !3086, !tbaa !3087
  %60 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 6, !dbg !3088
  %61 = load i16, ptr %60, align 4, !dbg !3088, !tbaa !3089
  %62 = sext i16 %61 to i32, !dbg !3088
  %63 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 6, i32 1, !dbg !3090
  %64 = load i16, ptr %63, align 2, !dbg !3090, !tbaa !3091
  %65 = sext i16 %64 to i32, !dbg !3090
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #38, !dbg !3073
  store ptr %36, ptr %11, align 8, !dbg !3073, !tbaa.struct !3092
  store i64 %37, ptr %28, align 8, !dbg !3073, !tbaa.struct !3093
  store i64 %40, ptr %29, align 8, !dbg !3073, !tbaa.struct !3094
  store i64 %41, ptr %30, align 8, !dbg !3073, !tbaa.struct !3095
  %66 = insertvalue [2 x i64] poison, i64 %43, 0, !dbg !3073
  %67 = insertvalue [2 x i64] %66, i64 %46, 1, !dbg !3073
  call fastcc void @add_utmp(ptr nonnull sret(%struct.utmp_alloc) align 8 %10, ptr noundef nonnull %11, i32 noundef %3, ptr noundef nonnull %47, i64 noundef %48, ptr noundef nonnull %49, i64 noundef %50, ptr noundef nonnull %51, i64 noundef %52, ptr noundef nonnull %53, i64 noundef %54, i32 noundef %56, i16 noundef %57, [2 x i64] %67, i64 noundef %59, i32 noundef %62, i32 noundef %65), !dbg !3073
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #38, !dbg !3073
  %68 = load ptr, ptr %10, align 8, !dbg !3073, !tbaa.struct !3092
  call void @llvm.dbg.value(metadata ptr %68, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  %69 = load i64, ptr %31, align 8, !dbg !3073, !tbaa.struct !3093
  call void @llvm.dbg.value(metadata i64 %69, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  %70 = load i64, ptr %32, align 8, !dbg !3073, !tbaa.struct !3094
  call void @llvm.dbg.value(metadata i64 %70, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  %71 = load i64, ptr %33, align 8, !dbg !3073, !tbaa.struct !3095
  call void @llvm.dbg.value(metadata i64 %71, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #38, !dbg !3073
  br i1 %24, label %72, label %80, !dbg !3096

72:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %47, metadata !3098, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr @.str.1.81, metadata !3101, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 9, metadata !3102, metadata !DIExpression()), !dbg !3103
  %73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %47, ptr noundef nonnull dereferenceable(9) @.str.1.81, i64 9), !dbg !3105
  %74 = icmp eq i32 %73, 0, !dbg !3106
  br i1 %74, label %75, label %80, !dbg !3107

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr %51, metadata !3098, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr @.str.2.82, metadata !3101, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 2, metadata !3102, metadata !DIExpression()), !dbg !3108
  %76 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %51, ptr noundef nonnull dereferenceable(2) @.str.2.82, i64 2), !dbg !3110
  %77 = icmp eq i32 %76, 0, !dbg !3111
  %78 = select i1 %77, i64 %46, i64 %39, !dbg !3112
  %79 = select i1 %77, i64 %43, i64 %38, !dbg !3112
  br label %80, !dbg !3112

80:                                               ; preds = %75, %72, %34
  %81 = phi i64 [ %39, %72 ], [ %39, %34 ], [ %78, %75 ], !dbg !3044
  %82 = phi i64 [ %38, %72 ], [ %38, %34 ], [ %79, %75 ], !dbg !3044
  call void @llvm.dbg.value(metadata i64 %70, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %71, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %68, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %69, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %82, metadata !3026, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %81, metadata !3026, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  %83 = call ptr @getutxent() #38, !dbg !3060
  call void @llvm.dbg.value(metadata ptr %83, metadata !3027, metadata !DIExpression()), !dbg !3044
  %84 = icmp eq ptr %83, null, !dbg !3061
  br i1 %84, label %85, label %34, !dbg !3062, !llvm.loop !3113

85:                                               ; preds = %80
  call void @endutxent() #38, !dbg !3115
  %86 = select i1 %19, i1 %24, i1 false, !dbg !3116
  br i1 %86, label %89, label %167, !dbg !3116

87:                                               ; preds = %21
  tail call void @endutxent() #38, !dbg !3115
  %88 = select i1 %19, i1 %24, i1 false, !dbg !3116
  br i1 %88, label %121, label %167, !dbg !3116

89:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 0, metadata !3031, metadata !DIExpression()), !dbg !3117
  %90 = icmp sgt i64 %69, 0, !dbg !3118
  br i1 %90, label %91, label %121, !dbg !3119

91:                                               ; preds = %89, %104
  %92 = phi i64 [ %105, %104 ], [ 0, %89 ]
  call void @llvm.dbg.value(metadata i64 %92, metadata !3031, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata !DIArgList(ptr %68, i64 %92), metadata !3035, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3120
  %93 = getelementptr inbounds %struct.gl_utmp, ptr %68, i64 %92, i32 7, !dbg !3121
  %94 = load i16, ptr %93, align 8, !dbg !3121, !tbaa !1156
  %95 = icmp eq i16 %94, 2, !dbg !3121
  br i1 %95, label %96, label %104, !dbg !3123

96:                                               ; preds = %91
  call void @llvm.dbg.value(metadata !DIArgList(ptr %68, i64 %92), metadata !3035, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3120
  %97 = getelementptr inbounds %struct.gl_utmp, ptr %68, i64 %92, i32 4, !dbg !3124
  %98 = load i64, ptr %97, align 8, !dbg !3127, !tbaa !3128
  %99 = icmp slt i64 %98, 61, !dbg !3129
  %100 = icmp ne i64 %82, 0
  %101 = select i1 %99, i1 %100, i1 false, !dbg !3130
  br i1 %101, label %102, label %107, !dbg !3130

102:                                              ; preds = %96
  store i64 %82, ptr %97, align 8, !dbg !3131, !tbaa.struct !3094
  %103 = getelementptr inbounds i8, ptr %97, i64 8, !dbg !3131
  store i64 %81, ptr %103, align 8, !dbg !3131, !tbaa.struct !3095
  call void @llvm.dbg.value(metadata ptr %68, metadata !3132, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %69, metadata !3132, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %70, metadata !3132, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %71, metadata !3132, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3142
  call void @llvm.dbg.value(metadata i64 0, metadata !3137, metadata !DIExpression()), !dbg !3144
  br label %107

104:                                              ; preds = %91
  %105 = add nuw nsw i64 %92, 1, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %105, metadata !3031, metadata !DIExpression()), !dbg !3117
  %106 = icmp eq i64 %105, %69, !dbg !3118
  br i1 %106, label %107, label %91, !dbg !3119, !llvm.loop !3146

107:                                              ; preds = %104, %96, %102
  call void @llvm.dbg.value(metadata i64 0, metadata !3137, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata !DIArgList(ptr %68, i64 0), metadata !3139, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3148
  %108 = getelementptr inbounds %struct.gl_utmp, ptr %68, i64 0, i32 7, !dbg !3149
  %109 = load i16, ptr %108, align 8, !dbg !3149, !tbaa !1156
  %110 = icmp eq i16 %109, 2, !dbg !3149
  call void @llvm.dbg.value(metadata i64 0, metadata !3137, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3144
  br i1 %110, label %167, label %111

111:                                              ; preds = %107, %115
  %112 = phi i64 [ %113, %115 ], [ 0, %107 ]
  call void @llvm.dbg.value(metadata i64 %112, metadata !3137, metadata !DIExpression()), !dbg !3144
  %113 = add nuw nsw i64 %112, 1, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %112, metadata !3137, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3144
  %114 = icmp eq i64 %113, %69, !dbg !3152
  br i1 %114, label %121, label %115, !dbg !3153, !llvm.loop !3154

115:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i64 %113, metadata !3137, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata !DIArgList(ptr %68, i64 %113), metadata !3139, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3148
  %116 = getelementptr inbounds %struct.gl_utmp, ptr %68, i64 %113, i32 7, !dbg !3149
  %117 = load i16, ptr %116, align 8, !dbg !3149, !tbaa !1156
  %118 = icmp eq i16 %117, 2, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %113, metadata !3137, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3144
  br i1 %118, label %119, label %111, !llvm.loop !3156

119:                                              ; preds = %115
  %120 = icmp slt i64 %113, %69, !dbg !3152
  br i1 %120, label %167, label %121, !dbg !3157

121:                                              ; preds = %111, %119, %89, %87
  %122 = phi i64 [ %70, %119 ], [ %70, %89 ], [ 0, %87 ], [ %70, %111 ]
  %123 = phi i64 [ %71, %119 ], [ %71, %89 ], [ 0, %87 ], [ %71, %111 ]
  %124 = phi ptr [ %68, %119 ], [ %68, %89 ], [ null, %87 ], [ %68, %111 ]
  %125 = phi i64 [ %69, %119 ], [ %69, %89 ], [ 0, %87 ], [ %69, %111 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !3158, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 0, metadata !3166, metadata !DIExpression()), !dbg !3206
  %126 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 13
  call void @llvm.dbg.value(metadata ptr @.str.5.83, metadata !3168, metadata !DIExpression()), !dbg !3207
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #38, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3171, metadata !DIExpression()), !dbg !3209
  %127 = call i32 @stat(ptr noundef nonnull @.str.5.83, ptr noundef nonnull %9) #38, !dbg !3210
  %128 = icmp slt i32 %127, 0, !dbg !3211
  %129 = load i64, ptr %126, align 8
  %130 = icmp slt i64 %129, 1122334455
  %131 = select i1 %128, i1 true, i1 %130, !dbg !3212
  call void @llvm.dbg.value(metadata ptr %9, metadata !3213, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %129, metadata !3200, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3223
  call void @llvm.dbg.value(metadata i64 poison, metadata !3200, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3223
  br i1 %131, label %132, label %151, !dbg !3212

132:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #38, !dbg !3224
  call void @llvm.dbg.value(metadata i64 1, metadata !3166, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata ptr @.str.6.84, metadata !3168, metadata !DIExpression()), !dbg !3207
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #38, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3171, metadata !DIExpression()), !dbg !3209
  %133 = call i32 @stat(ptr noundef nonnull @.str.6.84, ptr noundef nonnull %9) #38, !dbg !3210
  %134 = icmp slt i32 %133, 0, !dbg !3211
  %135 = load i64, ptr %126, align 8
  %136 = icmp slt i64 %135, 1122334455
  %137 = select i1 %134, i1 true, i1 %136, !dbg !3212
  call void @llvm.dbg.value(metadata ptr %9, metadata !3213, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %135, metadata !3200, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3223
  call void @llvm.dbg.value(metadata i64 poison, metadata !3200, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3223
  br i1 %137, label %138, label %151, !dbg !3212

138:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #38, !dbg !3224
  call void @llvm.dbg.value(metadata i64 2, metadata !3166, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata ptr @.str.7.85, metadata !3168, metadata !DIExpression()), !dbg !3207
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #38, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3171, metadata !DIExpression()), !dbg !3209
  %139 = call i32 @stat(ptr noundef nonnull @.str.7.85, ptr noundef nonnull %9) #38, !dbg !3210
  %140 = icmp slt i32 %139, 0, !dbg !3211
  %141 = load i64, ptr %126, align 8
  %142 = icmp slt i64 %141, 1122334455
  %143 = select i1 %140, i1 true, i1 %142, !dbg !3212
  call void @llvm.dbg.value(metadata ptr %9, metadata !3213, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %141, metadata !3200, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3223
  call void @llvm.dbg.value(metadata i64 poison, metadata !3200, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3223
  br i1 %143, label %144, label %151, !dbg !3212

144:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #38, !dbg !3224
  call void @llvm.dbg.value(metadata i64 3, metadata !3166, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3168, metadata !DIExpression()), !dbg !3207
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #38, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3171, metadata !DIExpression()), !dbg !3209
  %145 = call i32 @stat(ptr noundef nonnull @.str.80, ptr noundef nonnull %9) #38, !dbg !3210
  %146 = icmp slt i32 %145, 0, !dbg !3211
  %147 = load i64, ptr %126, align 8
  %148 = icmp slt i64 %147, 1122334455
  %149 = select i1 %146, i1 true, i1 %148, !dbg !3212
  call void @llvm.dbg.value(metadata ptr %9, metadata !3213, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %147, metadata !3200, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3223
  call void @llvm.dbg.value(metadata i64 poison, metadata !3200, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3223
  br i1 %149, label %150, label %151, !dbg !3212

150:                                              ; preds = %144
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #38, !dbg !3224
  call void @llvm.dbg.value(metadata i64 4, metadata !3166, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 undef, metadata !3038, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3225
  call void @llvm.dbg.value(metadata i64 undef, metadata !3038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3225
  br label %167, !dbg !3226

151:                                              ; preds = %144, %138, %132, %121
  %152 = phi i64 [ %129, %121 ], [ %135, %132 ], [ %141, %138 ], [ %147, %144 ]
  %153 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 13, i32 1, !dbg !3227
  %154 = load i64, ptr %153, align 8, !dbg !3227, !tbaa.struct !3095
  call void @llvm.dbg.value(metadata i64 %154, metadata !3200, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %152, metadata !3038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %154, metadata !3038, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3225
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #38, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %152, metadata !3038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3225
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #38, !dbg !3228
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #38, !dbg !3228
  store ptr %124, ptr %13, align 8, !dbg !3228, !tbaa.struct !3092
  %155 = getelementptr inbounds i8, ptr %13, i64 8, !dbg !3228
  store i64 %125, ptr %155, align 8, !dbg !3228, !tbaa.struct !3093
  %156 = getelementptr inbounds i8, ptr %13, i64 16, !dbg !3228
  store i64 %122, ptr %156, align 8, !dbg !3228, !tbaa.struct !3094
  %157 = getelementptr inbounds i8, ptr %13, i64 24, !dbg !3228
  store i64 %123, ptr %157, align 8, !dbg !3228, !tbaa.struct !3095
  %158 = insertvalue [2 x i64] poison, i64 %152, 0, !dbg !3228
  %159 = insertvalue [2 x i64] %158, i64 %154, 1, !dbg !3228
  call fastcc void @add_utmp(ptr nonnull sret(%struct.utmp_alloc) align 8 %12, ptr noundef nonnull %13, i32 noundef %3, ptr noundef nonnull @.str.3.86, i64 noundef 6, ptr noundef nonnull @.str.4.87, i64 noundef 0, ptr noundef nonnull @.str.2.82, i64 noundef 1, ptr noundef nonnull @.str.4.87, i64 noundef 0, i32 noundef 0, i16 noundef 2, [2 x i64] %159, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3228
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #38, !dbg !3228
  %160 = load ptr, ptr %12, align 8, !dbg !3228, !tbaa.struct !3092
  call void @llvm.dbg.value(metadata ptr %160, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  %161 = getelementptr inbounds i8, ptr %12, i64 8, !dbg !3228
  %162 = load i64, ptr %161, align 8, !dbg !3228, !tbaa.struct !3093
  call void @llvm.dbg.value(metadata i64 %162, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  %163 = getelementptr inbounds i8, ptr %12, i64 16, !dbg !3228
  %164 = load i64, ptr %163, align 8, !dbg !3228, !tbaa.struct !3094
  call void @llvm.dbg.value(metadata i64 %164, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  %165 = getelementptr inbounds i8, ptr %12, i64 24, !dbg !3228
  %166 = load i64, ptr %165, align 8, !dbg !3228, !tbaa.struct !3095
  call void @llvm.dbg.value(metadata i64 %166, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #38, !dbg !3228
  br label %167, !dbg !3229

167:                                              ; preds = %151, %150, %119, %107, %87, %85
  %168 = phi i64 [ %71, %85 ], [ %71, %119 ], [ %166, %151 ], [ %123, %150 ], [ %71, %107 ], [ 0, %87 ], !dbg !3044
  %169 = phi i64 [ %70, %85 ], [ %70, %119 ], [ %164, %151 ], [ %122, %150 ], [ %70, %107 ], [ 0, %87 ], !dbg !3044
  %170 = phi i64 [ %69, %85 ], [ %69, %119 ], [ %162, %151 ], [ %125, %150 ], [ %69, %107 ], [ 0, %87 ], !dbg !3044
  %171 = phi ptr [ %68, %85 ], [ %68, %119 ], [ %160, %151 ], [ %124, %150 ], [ %68, %107 ], [ null, %87 ], !dbg !3044
  call void @llvm.dbg.value(metadata i64 %169, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %168, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %171, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %170, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  br i1 %19, label %172, label %361, !dbg !3230

172:                                              ; preds = %167
  call void @llvm.dbg.value(metadata ptr %0, metadata !3052, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3055, metadata !DIExpression()), !dbg !3231
  %173 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.80) #39, !dbg !3233
  %174 = icmp eq i32 %173, 0, !dbg !3234
  br i1 %174, label %175, label %361, !dbg !3235

175:                                              ; preds = %172
  call void @llvm.dbg.value(metadata ptr %171, metadata !3132, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %170, metadata !3132, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %169, metadata !3132, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %168, metadata !3132, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3236
  call void @llvm.dbg.value(metadata i64 0, metadata !3137, metadata !DIExpression()), !dbg !3238
  %176 = icmp sgt i64 %170, 0, !dbg !3239
  br i1 %176, label %177, label %193, !dbg !3240

177:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i64 0, metadata !3137, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata !DIArgList(ptr %171, i64 0), metadata !3139, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3241
  %178 = getelementptr inbounds %struct.gl_utmp, ptr %171, i64 0, i32 7, !dbg !3242
  %179 = load i16, ptr %178, align 8, !dbg !3242, !tbaa !1156
  %180 = icmp eq i16 %179, 2, !dbg !3242
  call void @llvm.dbg.value(metadata i64 0, metadata !3137, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3238
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i64 poison, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %168, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %171, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %170, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %171, metadata !3243, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %170, metadata !3243, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3251
  call void @llvm.dbg.value(metadata i64 poison, metadata !3243, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %168, metadata !3243, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3251
  %182 = getelementptr inbounds i8, ptr %171, i64 %168, !dbg !3253
  call void @llvm.dbg.value(metadata ptr %182, metadata !3248, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 0, metadata !3249, metadata !DIExpression()), !dbg !3254
  br label %367, !dbg !3255

183:                                              ; preds = %177, %187
  %184 = phi i64 [ %185, %187 ], [ 0, %177 ]
  call void @llvm.dbg.value(metadata i64 %184, metadata !3137, metadata !DIExpression()), !dbg !3238
  %185 = add nuw nsw i64 %184, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %184, metadata !3137, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3238
  %186 = icmp eq i64 %185, %170, !dbg !3239
  br i1 %186, label %193, label %187, !dbg !3240, !llvm.loop !3257

187:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i64 %185, metadata !3137, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata !DIArgList(ptr %171, i64 %185), metadata !3139, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3241
  %188 = getelementptr inbounds %struct.gl_utmp, ptr %171, i64 %185, i32 7, !dbg !3242
  %189 = load i16, ptr %188, align 8, !dbg !3242, !tbaa !1156
  %190 = icmp eq i16 %189, 2, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %185, metadata !3137, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3238
  br i1 %190, label %191, label %183, !llvm.loop !3259

191:                                              ; preds = %187
  %192 = icmp slt i64 %185, %170, !dbg !3239
  br i1 %192, label %361, label %193, !dbg !3260

193:                                              ; preds = %183, %191, %175
  call void @llvm.dbg.value(metadata ptr undef, metadata !3261, metadata !DIExpression()), !dbg !3268
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #38, !dbg !3271
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3264, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %7, metadata !3273, metadata !DIExpression()), !dbg !3358
  %194 = call i32 @clock_gettime(i32 noundef 7, ptr noundef nonnull %7) #38, !dbg !3360
  %195 = icmp sgt i32 %194, -1, !dbg !3362
  br i1 %195, label %333, label %196, !dbg !3363

196:                                              ; preds = %193
  %197 = call noalias ptr @rpl_fopen(ptr noundef nonnull @.str.8.88, ptr noundef nonnull @.str.9.89) #38, !dbg !3364
  call void @llvm.dbg.value(metadata ptr %197, metadata !3276, metadata !DIExpression()), !dbg !3358
  %198 = icmp eq ptr %197, null, !dbg !3365
  br i1 %198, label %323, label %199, !dbg !3366

199:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %5) #38, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3311, metadata !DIExpression()), !dbg !3368
  %200 = call i64 @fread_unlocked(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 32, ptr noundef nonnull %197), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %200, metadata !3317, metadata !DIExpression()), !dbg !3370
  %201 = call i32 @rpl_fclose(ptr noundef nonnull %197) #38, !dbg !3371
  %202 = icmp eq i64 %200, 0, !dbg !3372
  br i1 %202, label %322, label %203, !dbg !3373

203:                                              ; preds = %199
  %204 = getelementptr inbounds [33 x i8], ptr %5, i64 0, i64 %200, !dbg !3374
  store i8 0, ptr %204, align 1, !dbg !3375, !tbaa !900
  call void @llvm.dbg.value(metadata i64 0, metadata !3318, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %5, metadata !3323, metadata !DIExpression()), !dbg !3376
  %205 = load i8, ptr %5, align 4, !dbg !3377, !tbaa !900
  %206 = add i8 %205, -48, !dbg !3380
  %207 = icmp ult i8 %206, 10, !dbg !3380
  br i1 %207, label %208, label %322, !dbg !3380

208:                                              ; preds = %203, %208
  %209 = phi i8 [ %218, %208 ], [ %205, %203 ]
  %210 = phi ptr [ %217, %208 ], [ %5, %203 ]
  %211 = phi i64 [ %216, %208 ], [ 0, %203 ]
  call void @llvm.dbg.value(metadata ptr %210, metadata !3323, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %211, metadata !3318, metadata !DIExpression()), !dbg !3376
  %212 = zext i8 %209 to i64, !dbg !3377
  %213 = mul nsw i64 %211, 10, !dbg !3381
  %214 = add nuw nsw i64 %212, 4294967248, !dbg !3382
  %215 = and i64 %214, 4294967295
  %216 = add nsw i64 %215, %213, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %216, metadata !3318, metadata !DIExpression()), !dbg !3376
  %217 = getelementptr inbounds i8, ptr %210, i64 1, !dbg !3384
  call void @llvm.dbg.value(metadata ptr %217, metadata !3323, metadata !DIExpression()), !dbg !3376
  %218 = load i8, ptr %217, align 1, !dbg !3377, !tbaa !900
  %219 = add i8 %218, -48, !dbg !3380
  %220 = icmp ult i8 %219, 10, !dbg !3380
  br i1 %220, label %208, label %221, !dbg !3380, !llvm.loop !3385

221:                                              ; preds = %208
  %222 = icmp ult ptr %5, %217, !dbg !3388
  br i1 %222, label %223, label %322, !dbg !3389

223:                                              ; preds = %221
  call void @llvm.dbg.value(metadata i64 0, metadata !3324, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %217, metadata !3323, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3376
  %224 = icmp eq i8 %218, 46, !dbg !3391
  br i1 %224, label %225, label %329, !dbg !3392

225:                                              ; preds = %223
  %226 = getelementptr inbounds i8, ptr %210, i64 2, !dbg !3393
  call void @llvm.dbg.value(metadata i32 0, metadata !3327, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 0, metadata !3324, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %226, metadata !3323, metadata !DIExpression()), !dbg !3376
  %227 = load i8, ptr %226, align 1, !dbg !3395, !tbaa !900
  %228 = zext i8 %227 to i64, !dbg !3395
  %229 = add i8 %227, -48, !dbg !3397
  %230 = icmp ult i8 %229, 10, !dbg !3397
  %231 = add nuw nsw i64 %228, 4294967248, !dbg !3397
  %232 = zext i1 %230 to i64, !dbg !3397
  %233 = getelementptr i8, ptr %226, i64 %232, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %233, metadata !3323, metadata !DIExpression()), !dbg !3376
  %234 = and i64 %231, 4294967295
  call void @llvm.dbg.value(metadata i32 1, metadata !3327, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 poison, metadata !3324, metadata !DIExpression()), !dbg !3390
  %235 = mul nuw nsw i64 %234, 10, !dbg !3398
  %236 = select i1 %230, i64 %235, i64 0, !dbg !3398
  %237 = load i8, ptr %233, align 1, !dbg !3395, !tbaa !900
  %238 = zext i8 %237 to i64, !dbg !3395
  %239 = add i8 %237, -48, !dbg !3397
  %240 = icmp ult i8 %239, 10, !dbg !3397
  %241 = add nuw nsw i64 %238, 4294967248, !dbg !3397
  %242 = zext i1 %240 to i64, !dbg !3397
  %243 = getelementptr i8, ptr %233, i64 %242, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %243, metadata !3323, metadata !DIExpression()), !dbg !3376
  %244 = and i64 %241, 4294967295
  %245 = select i1 %240, i64 %244, i64 0, !dbg !3397
  %246 = add nuw nsw i64 %245, %236, !dbg !3399
  call void @llvm.dbg.value(metadata i32 2, metadata !3327, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %246, metadata !3324, metadata !DIExpression()), !dbg !3390
  %247 = mul nuw nsw i64 %246, 10, !dbg !3398
  %248 = load i8, ptr %243, align 1, !dbg !3395, !tbaa !900
  %249 = zext i8 %248 to i64, !dbg !3395
  %250 = add i8 %248, -48, !dbg !3397
  %251 = icmp ult i8 %250, 10, !dbg !3397
  %252 = add nuw nsw i64 %249, 4294967248, !dbg !3397
  %253 = zext i1 %251 to i64, !dbg !3397
  %254 = getelementptr i8, ptr %243, i64 %253, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %254, metadata !3323, metadata !DIExpression()), !dbg !3376
  %255 = and i64 %252, 4294967295
  %256 = select i1 %251, i64 %255, i64 0, !dbg !3397
  %257 = add nuw nsw i64 %247, %256, !dbg !3399
  call void @llvm.dbg.value(metadata i32 3, metadata !3327, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %257, metadata !3324, metadata !DIExpression()), !dbg !3390
  %258 = mul nuw nsw i64 %257, 10, !dbg !3398
  %259 = load i8, ptr %254, align 1, !dbg !3395, !tbaa !900
  %260 = zext i8 %259 to i64, !dbg !3395
  %261 = add i8 %259, -48, !dbg !3397
  %262 = icmp ult i8 %261, 10, !dbg !3397
  %263 = add nuw nsw i64 %260, 4294967248, !dbg !3397
  %264 = zext i1 %262 to i64, !dbg !3397
  %265 = getelementptr i8, ptr %254, i64 %264, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %265, metadata !3323, metadata !DIExpression()), !dbg !3376
  %266 = and i64 %263, 4294967295
  %267 = select i1 %262, i64 %266, i64 0, !dbg !3397
  %268 = add nuw nsw i64 %258, %267, !dbg !3399
  call void @llvm.dbg.value(metadata i32 4, metadata !3327, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %268, metadata !3324, metadata !DIExpression()), !dbg !3390
  %269 = mul nuw nsw i64 %268, 10, !dbg !3398
  %270 = load i8, ptr %265, align 1, !dbg !3395, !tbaa !900
  %271 = zext i8 %270 to i64, !dbg !3395
  %272 = add i8 %270, -48, !dbg !3397
  %273 = icmp ult i8 %272, 10, !dbg !3397
  %274 = add nuw nsw i64 %271, 4294967248, !dbg !3397
  %275 = zext i1 %273 to i64, !dbg !3397
  %276 = getelementptr i8, ptr %265, i64 %275, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %276, metadata !3323, metadata !DIExpression()), !dbg !3376
  %277 = and i64 %274, 4294967295
  %278 = select i1 %273, i64 %277, i64 0, !dbg !3397
  %279 = add nuw nsw i64 %269, %278, !dbg !3399
  call void @llvm.dbg.value(metadata i32 5, metadata !3327, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %279, metadata !3324, metadata !DIExpression()), !dbg !3390
  %280 = mul nuw nsw i64 %279, 10, !dbg !3398
  %281 = load i8, ptr %276, align 1, !dbg !3395, !tbaa !900
  %282 = zext i8 %281 to i64, !dbg !3395
  %283 = add i8 %281, -48, !dbg !3397
  %284 = icmp ult i8 %283, 10, !dbg !3397
  %285 = add nuw nsw i64 %282, 4294967248, !dbg !3397
  %286 = zext i1 %284 to i64, !dbg !3397
  %287 = getelementptr i8, ptr %276, i64 %286, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %287, metadata !3323, metadata !DIExpression()), !dbg !3376
  %288 = and i64 %285, 4294967295
  %289 = select i1 %284, i64 %288, i64 0, !dbg !3397
  %290 = add nuw nsw i64 %280, %289, !dbg !3399
  call void @llvm.dbg.value(metadata i32 6, metadata !3327, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %290, metadata !3324, metadata !DIExpression()), !dbg !3390
  %291 = mul nuw nsw i64 %290, 10, !dbg !3398
  %292 = load i8, ptr %287, align 1, !dbg !3395, !tbaa !900
  %293 = zext i8 %292 to i64, !dbg !3395
  %294 = add i8 %292, -48, !dbg !3397
  %295 = icmp ult i8 %294, 10, !dbg !3397
  %296 = add nuw nsw i64 %293, 4294967248, !dbg !3397
  %297 = zext i1 %295 to i64, !dbg !3397
  %298 = getelementptr i8, ptr %287, i64 %297, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %298, metadata !3323, metadata !DIExpression()), !dbg !3376
  %299 = and i64 %296, 4294967295
  %300 = select i1 %295, i64 %299, i64 0, !dbg !3397
  %301 = add nuw nsw i64 %291, %300, !dbg !3399
  call void @llvm.dbg.value(metadata i32 7, metadata !3327, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %301, metadata !3324, metadata !DIExpression()), !dbg !3390
  %302 = mul nuw nsw i64 %301, 10, !dbg !3398
  %303 = load i8, ptr %298, align 1, !dbg !3395, !tbaa !900
  %304 = zext i8 %303 to i64, !dbg !3395
  %305 = add i8 %303, -48, !dbg !3397
  %306 = icmp ult i8 %305, 10, !dbg !3397
  %307 = add nuw nsw i64 %304, 4294967248, !dbg !3397
  %308 = zext i1 %306 to i64, !dbg !3397
  %309 = getelementptr i8, ptr %298, i64 %308, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %309, metadata !3323, metadata !DIExpression()), !dbg !3376
  %310 = and i64 %307, 4294967295
  %311 = select i1 %306, i64 %310, i64 0, !dbg !3397
  %312 = add nuw nsw i64 %302, %311, !dbg !3399
  call void @llvm.dbg.value(metadata i32 8, metadata !3327, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %312, metadata !3324, metadata !DIExpression()), !dbg !3390
  %313 = mul nuw nsw i64 %312, 10, !dbg !3398
  %314 = load i8, ptr %309, align 1, !dbg !3395, !tbaa !900
  %315 = zext i8 %314 to i64, !dbg !3395
  %316 = add i8 %314, -48, !dbg !3397
  %317 = icmp ult i8 %316, 10, !dbg !3397
  %318 = add nuw nsw i64 %315, 4294967248, !dbg !3397
  call void @llvm.dbg.value(metadata !DIArgList(ptr %309, i1 %317), metadata !3323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3376
  %319 = and i64 %318, 4294967295
  %320 = select i1 %317, i64 %319, i64 0, !dbg !3397
  %321 = add nuw nsw i64 %313, %320, !dbg !3399
  call void @llvm.dbg.value(metadata i64 %321, metadata !3324, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 9, metadata !3327, metadata !DIExpression()), !dbg !3394
  br label %329, !dbg !3400

322:                                              ; preds = %221, %203, %199
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %5) #38, !dbg !3401
  br label %323

323:                                              ; preds = %322, %196
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #38, !dbg !3402
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3330, metadata !DIExpression()), !dbg !3403
  %324 = call i32 @sysinfo(ptr noundef nonnull %6) #38, !dbg !3404
  %325 = icmp sgt i32 %324, -1, !dbg !3406
  br i1 %325, label %326, label %332, !dbg !3407

326:                                              ; preds = %323
  %327 = load i64, ptr %6, align 8, !dbg !3408, !tbaa !3410
  store i64 %327, ptr %7, align 8, !dbg !3412, !tbaa !3413
  %328 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3414
  store i64 0, ptr %328, align 8, !dbg !3415, !tbaa !3416
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #38, !dbg !3417
  br label %333, !dbg !3418

329:                                              ; preds = %225, %223
  %330 = phi i64 [ 0, %223 ], [ %321, %225 ], !dbg !3419
  call void @llvm.dbg.value(metadata i64 %330, metadata !3324, metadata !DIExpression()), !dbg !3390
  store i64 %216, ptr %7, align 8, !dbg !3400, !tbaa !3413
  %331 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3420
  store i64 %330, ptr %331, align 8, !dbg !3421, !tbaa !3416
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %5) #38, !dbg !3401
  br label %333

332:                                              ; preds = %323
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #38, !dbg !3417
  call void @llvm.dbg.value(metadata i64 poison, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3422
  call void @llvm.dbg.value(metadata i64 poison, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3422
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #38, !dbg !3423
  br label %361, !dbg !3424

333:                                              ; preds = %329, %326, %193
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #38, !dbg !3425
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3265, metadata !DIExpression()), !dbg !3426
  %334 = call i32 @timespec_get(ptr noundef nonnull %8, i32 noundef 1) #38, !dbg !3427
  %335 = icmp eq i32 %334, 0, !dbg !3427
  br i1 %335, label %336, label %337, !dbg !3429

336:                                              ; preds = %333
  call void @llvm.dbg.value(metadata i64 undef, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3422
  call void @llvm.dbg.value(metadata i64 undef, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3422
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #38, !dbg !3430
  call void @llvm.dbg.value(metadata i64 undef, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3422
  call void @llvm.dbg.value(metadata i64 undef, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3422
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #38, !dbg !3423
  br label %361, !dbg !3424

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.timespec, ptr %8, i64 0, i32 1, !dbg !3431
  %339 = load i64, ptr %338, align 8, !dbg !3431, !tbaa !3416
  %340 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3433
  %341 = load i64, ptr %340, align 8, !dbg !3433, !tbaa !3416
  %342 = icmp slt i64 %339, %341, !dbg !3434
  %343 = load i64, ptr %8, align 8, !dbg !3435
  %344 = add nsw i64 %339, 1000000000, !dbg !3435
  %345 = select i1 %342, i64 %344, i64 %339, !dbg !3435
  %346 = sext i1 %342 to i64, !dbg !3435
  %347 = add nsw i64 %343, %346, !dbg !3435
  %348 = load i64, ptr %7, align 8, !dbg !3436, !tbaa !3413
  %349 = sub i64 %347, %348, !dbg !3437
  %350 = sub nsw i64 %345, %341, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %350, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %349, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3422
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #38, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %350, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %349, metadata !3041, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3422
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #38, !dbg !3423
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #38, !dbg !3439
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #38, !dbg !3439
  store ptr %171, ptr %15, align 8, !dbg !3439, !tbaa.struct !3092
  %351 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !3439
  store i64 %170, ptr %351, align 8, !dbg !3439, !tbaa.struct !3093
  %352 = getelementptr inbounds i8, ptr %15, i64 16, !dbg !3439
  store i64 %169, ptr %352, align 8, !dbg !3439, !tbaa.struct !3094
  %353 = getelementptr inbounds i8, ptr %15, i64 24, !dbg !3439
  store i64 %168, ptr %353, align 8, !dbg !3439, !tbaa.struct !3095
  %354 = insertvalue [2 x i64] poison, i64 %349, 0, !dbg !3439
  %355 = insertvalue [2 x i64] %354, i64 %350, 1, !dbg !3439
  call fastcc void @add_utmp(ptr nonnull sret(%struct.utmp_alloc) align 8 %14, ptr noundef nonnull %15, i32 noundef %3, ptr noundef nonnull @.str.3.86, i64 noundef 6, ptr noundef nonnull @.str.4.87, i64 noundef 0, ptr noundef nonnull @.str.2.82, i64 noundef 1, ptr noundef nonnull @.str.4.87, i64 noundef 0, i32 noundef 0, i16 noundef 2, [2 x i64] %355, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3439
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #38, !dbg !3439
  %356 = load ptr, ptr %14, align 8, !dbg !3439, !tbaa.struct !3092
  call void @llvm.dbg.value(metadata ptr %356, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  %357 = getelementptr inbounds i8, ptr %14, i64 8, !dbg !3439
  %358 = load i64, ptr %357, align 8, !dbg !3439, !tbaa.struct !3093
  call void @llvm.dbg.value(metadata i64 %358, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 poison, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  %359 = getelementptr inbounds i8, ptr %14, i64 24, !dbg !3439
  %360 = load i64, ptr %359, align 8, !dbg !3439, !tbaa.struct !3095
  call void @llvm.dbg.value(metadata i64 %360, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #38, !dbg !3439
  br label %361, !dbg !3440

361:                                              ; preds = %337, %336, %332, %191, %172, %167
  %362 = phi i64 [ %168, %191 ], [ %168, %172 ], [ %168, %167 ], [ %360, %337 ], [ %168, %336 ], [ %168, %332 ], !dbg !3044
  %363 = phi i64 [ %170, %191 ], [ %170, %172 ], [ %170, %167 ], [ %358, %337 ], [ %170, %336 ], [ %170, %332 ], !dbg !3044
  %364 = phi ptr [ %171, %191 ], [ %171, %172 ], [ %171, %167 ], [ %356, %337 ], [ %171, %336 ], [ %171, %332 ], !dbg !3044
  call void @llvm.dbg.value(metadata i64 poison, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %362, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %364, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %363, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %364, metadata !3243, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %363, metadata !3243, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3251
  call void @llvm.dbg.value(metadata i64 poison, metadata !3243, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %362, metadata !3243, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3251
  %365 = getelementptr inbounds i8, ptr %364, i64 %362, !dbg !3253
  call void @llvm.dbg.value(metadata ptr %365, metadata !3248, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 0, metadata !3249, metadata !DIExpression()), !dbg !3254
  %366 = icmp sgt i64 %363, 0, !dbg !3441
  br i1 %366, label %367, label %391, !dbg !3255

367:                                              ; preds = %361, %181
  %368 = phi ptr [ %182, %181 ], [ %365, %361 ]
  %369 = phi ptr [ %171, %181 ], [ %364, %361 ]
  %370 = phi i64 [ %170, %181 ], [ %363, %361 ]
  br label %371, !dbg !3255

371:                                              ; preds = %371, %367
  %372 = phi i64 [ %389, %371 ], [ 0, %367 ]
  call void @llvm.dbg.value(metadata i64 %372, metadata !3249, metadata !DIExpression()), !dbg !3254
  %373 = getelementptr inbounds %struct.gl_utmp, ptr %369, i64 %372, !dbg !3443
  %374 = load ptr, ptr %373, align 8, !dbg !3445, !tbaa !1152, !noalias !3446
  %375 = ptrtoint ptr %374 to i64, !dbg !3449
  %376 = getelementptr inbounds i8, ptr %368, i64 %375, !dbg !3450
  store ptr %376, ptr %373, align 8, !dbg !3451, !tbaa !1152, !noalias !3446
  %377 = getelementptr inbounds %struct.gl_utmp, ptr %369, i64 %372, i32 1, !dbg !3452
  %378 = load ptr, ptr %377, align 8, !dbg !3452, !tbaa !3453, !noalias !3446
  %379 = ptrtoint ptr %378 to i64, !dbg !3454
  %380 = getelementptr inbounds i8, ptr %368, i64 %379, !dbg !3455
  store ptr %380, ptr %377, align 8, !dbg !3456, !tbaa !3453, !noalias !3446
  %381 = getelementptr inbounds %struct.gl_utmp, ptr %369, i64 %372, i32 2, !dbg !3457
  %382 = load ptr, ptr %381, align 8, !dbg !3457, !tbaa !3458, !noalias !3446
  %383 = ptrtoint ptr %382 to i64, !dbg !3459
  %384 = getelementptr inbounds i8, ptr %368, i64 %383, !dbg !3460
  store ptr %384, ptr %381, align 8, !dbg !3461, !tbaa !3458, !noalias !3446
  %385 = getelementptr inbounds %struct.gl_utmp, ptr %369, i64 %372, i32 3, !dbg !3462
  %386 = load ptr, ptr %385, align 8, !dbg !3462, !tbaa !3463, !noalias !3446
  %387 = ptrtoint ptr %386 to i64, !dbg !3464
  %388 = getelementptr inbounds i8, ptr %368, i64 %387, !dbg !3465
  store ptr %388, ptr %385, align 8, !dbg !3466, !tbaa !3463, !noalias !3446
  %389 = add nuw nsw i64 %372, 1, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %389, metadata !3249, metadata !DIExpression()), !dbg !3254
  %390 = icmp eq i64 %389, %370, !dbg !3441
  br i1 %390, label %391, label %371, !dbg !3255, !llvm.loop !3468

391:                                              ; preds = %371, %4, %361
  %392 = phi i64 [ 0, %4 ], [ %363, %361 ], [ %370, %371 ], !dbg !3044
  %393 = phi ptr [ null, %4 ], [ %364, %361 ], [ %369, %371 ], !dbg !3044
  store i64 %392, ptr %1, align 8, !dbg !3044, !tbaa !1119
  store ptr %393, ptr %2, align 8, !dbg !3044, !tbaa !834
  ret i32 0, !dbg !3470
}

declare !dbg !3471 i32 @utmpxname(ptr noundef) local_unnamed_addr #3

declare !dbg !3475 void @setutxent() local_unnamed_addr #3

declare !dbg !3476 ptr @getutxent() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3480 i64 @strnlen(ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @add_utmp(ptr noalias nocapture writeonly sret(%struct.utmp_alloc) align 8 %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5, i64 noundef %6, ptr nocapture noundef readonly %7, i64 noundef %8, ptr nocapture noundef readonly %9, i64 noundef %10, i32 noundef %11, i16 noundef %12, [2 x i64] %13, i64 noundef %14, i32 noundef %15, i32 noundef %16) unnamed_addr #10 !dbg !3483 {
  %18 = extractvalue [2 x i64] %13, 0
  call void @llvm.dbg.value(metadata i64 %18, metadata !3499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3516
  %19 = extractvalue [2 x i64] %13, 1
  call void @llvm.dbg.value(metadata i64 %19, metadata !3499, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3487, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i32 %2, metadata !3488, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr %3, metadata !3489, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %4, metadata !3490, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr %5, metadata !3491, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %6, metadata !3492, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr %7, metadata !3493, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %8, metadata !3494, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr %9, metadata !3495, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %10, metadata !3496, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %11, metadata !3497, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i16 %12, metadata !3498, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %14, metadata !3500, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %15, metadata !3501, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %16, metadata !3502, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 72, metadata !3503, metadata !DIExpression()), !dbg !3516
  %20 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 3, !dbg !3518
  %21 = load i64, ptr %20, align 8, !dbg !3518, !tbaa !3519
  %22 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 1, !dbg !3521
  %23 = load i64, ptr %22, align 8, !dbg !3521, !tbaa !3522
  %24 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 2, !dbg !3523
  %25 = load i64, ptr %24, align 8, !dbg !3523, !tbaa !3524
  %26 = mul i64 %23, -72
  %27 = sub i64 %21, %25, !dbg !3525
  %28 = add i64 %27, %26, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %28, metadata !3504, metadata !DIExpression()), !dbg !3516
  %29 = add i64 %6, %4, !dbg !3527
  %30 = add i64 %29, %8, !dbg !3528
  %31 = add i64 %30, %10, !dbg !3529
  %32 = add i64 %31, 4, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %32, metadata !3505, metadata !DIExpression()), !dbg !3516
  %33 = add i64 %31, 76, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %33, metadata !3506, metadata !DIExpression()), !dbg !3516
  %34 = icmp sgt i64 %33, %28, !dbg !3531
  br i1 %34, label %35, label %47, !dbg !3532

35:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 %27, metadata !3507, metadata !DIExpression()), !dbg !3533
  %36 = load ptr, ptr %1, align 8, !dbg !3534, !tbaa !3535
  %37 = sub nsw i64 %33, %28, !dbg !3536
  %38 = tail call nonnull ptr @xpalloc(ptr noundef %36, ptr noundef nonnull %20, i64 noundef %37, i64 noundef -1, i64 noundef 1) #38, !dbg !3537
  call void @llvm.dbg.value(metadata ptr %38, metadata !3510, metadata !DIExpression()), !dbg !3533
  %39 = load i64, ptr %20, align 8, !dbg !3538, !tbaa !3519
  %40 = load i64, ptr %24, align 8, !dbg !3539, !tbaa !3524
  %41 = sub nsw i64 %39, %40, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %41, metadata !3511, metadata !DIExpression()), !dbg !3533
  store ptr %38, ptr %1, align 8, !dbg !3541, !tbaa !3535
  call void @llvm.dbg.value(metadata ptr %38, metadata !3512, metadata !DIExpression()), !dbg !3533
  %42 = getelementptr inbounds i8, ptr %38, i64 %41, !dbg !3542
  %43 = getelementptr inbounds i8, ptr %38, i64 %27, !dbg !3543
  call void @llvm.dbg.value(metadata ptr %42, metadata !3544, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata ptr %43, metadata !3549, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %40, metadata !3550, metadata !DIExpression()), !dbg !3551
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %42, ptr noundef nonnull align 1 %43, i64 noundef %40, i1 noundef false) #38, !dbg !3553
  %44 = load i64, ptr %22, align 8, !dbg !3554, !tbaa !3522
  %45 = load i64, ptr %20, align 8, !dbg !3555, !tbaa !3519
  %46 = load i64, ptr %24, align 8, !dbg !3556, !tbaa !3524
  br label %47, !dbg !3557

47:                                               ; preds = %35, %17
  %48 = phi i64 [ %46, %35 ], [ %25, %17 ], !dbg !3556
  %49 = phi i64 [ %45, %35 ], [ %21, %17 ], !dbg !3555
  %50 = phi i64 [ %44, %35 ], [ %23, %17 ], !dbg !3554
  %51 = load ptr, ptr %1, align 8, !dbg !3558, !tbaa !3535
  %52 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, !dbg !3559
  call void @llvm.dbg.value(metadata ptr %52, metadata !3513, metadata !DIExpression()), !dbg !3516
  %53 = getelementptr inbounds i8, ptr %51, i64 %49, !dbg !3560
  call void @llvm.dbg.value(metadata ptr %53, metadata !3514, metadata !DIExpression()), !dbg !3516
  %54 = sub i64 0, %48, !dbg !3561
  %55 = getelementptr inbounds i8, ptr %53, i64 %54, !dbg !3561
  call void @llvm.dbg.value(metadata ptr %55, metadata !3515, metadata !DIExpression()), !dbg !3516
  %56 = getelementptr inbounds i8, ptr %55, i64 -1, !dbg !3562
  call void @llvm.dbg.value(metadata ptr %56, metadata !3515, metadata !DIExpression()), !dbg !3516
  store i8 0, ptr %56, align 1, !dbg !3563, !tbaa !900
  %57 = sub i64 0, %4, !dbg !3564
  %58 = getelementptr inbounds i8, ptr %56, i64 %57, !dbg !3564
  call void @llvm.dbg.value(metadata ptr %58, metadata !3565, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata ptr %3, metadata !3571, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %4, metadata !3572, metadata !DIExpression()), !dbg !3573
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %58, ptr noundef nonnull align 1 %3, i64 noundef %4, i1 noundef false) #38, !dbg !3575
  call void @llvm.dbg.value(metadata ptr %58, metadata !3515, metadata !DIExpression()), !dbg !3516
  store ptr %58, ptr %52, align 8, !dbg !3576, !tbaa !1152
  %59 = getelementptr inbounds i8, ptr %58, i64 -1, !dbg !3577
  call void @llvm.dbg.value(metadata ptr %59, metadata !3515, metadata !DIExpression()), !dbg !3516
  store i8 0, ptr %59, align 1, !dbg !3578, !tbaa !900
  %60 = sub i64 0, %6, !dbg !3579
  %61 = getelementptr inbounds i8, ptr %59, i64 %60, !dbg !3579
  call void @llvm.dbg.value(metadata ptr %61, metadata !3565, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata ptr %5, metadata !3571, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %6, metadata !3572, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %61, ptr noundef nonnull align 1 %5, i64 noundef %6, i1 noundef false) #38, !dbg !3582
  call void @llvm.dbg.value(metadata ptr %61, metadata !3515, metadata !DIExpression()), !dbg !3516
  %62 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 1, !dbg !3583
  store ptr %61, ptr %62, align 8, !dbg !3584, !tbaa !3453
  %63 = getelementptr inbounds i8, ptr %61, i64 -1, !dbg !3585
  call void @llvm.dbg.value(metadata ptr %63, metadata !3515, metadata !DIExpression()), !dbg !3516
  store i8 0, ptr %63, align 1, !dbg !3586, !tbaa !900
  %64 = sub i64 0, %8, !dbg !3587
  %65 = getelementptr inbounds i8, ptr %63, i64 %64, !dbg !3587
  call void @llvm.dbg.value(metadata ptr %65, metadata !3565, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata ptr %7, metadata !3571, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %8, metadata !3572, metadata !DIExpression()), !dbg !3588
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %65, ptr noundef nonnull align 1 %7, i64 noundef %8, i1 noundef false) #38, !dbg !3590
  call void @llvm.dbg.value(metadata ptr %65, metadata !3515, metadata !DIExpression()), !dbg !3516
  %66 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 2, !dbg !3591
  store ptr %65, ptr %66, align 8, !dbg !3592, !tbaa !3458
  %67 = getelementptr inbounds i8, ptr %65, i64 -1, !dbg !3593
  call void @llvm.dbg.value(metadata ptr %67, metadata !3515, metadata !DIExpression()), !dbg !3516
  store i8 0, ptr %67, align 1, !dbg !3594, !tbaa !900
  %68 = sub i64 0, %10, !dbg !3595
  %69 = getelementptr inbounds i8, ptr %67, i64 %68, !dbg !3595
  call void @llvm.dbg.value(metadata ptr %69, metadata !3565, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %9, metadata !3571, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %10, metadata !3572, metadata !DIExpression()), !dbg !3596
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %69, ptr noundef nonnull align 1 %9, i64 noundef %10, i1 noundef false) #38, !dbg !3598
  %70 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 3, !dbg !3599
  store ptr %69, ptr %70, align 8, !dbg !3600, !tbaa !3463
  %71 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 4, !dbg !3601
  store i64 %18, ptr %71, align 8, !dbg !3602, !tbaa.struct !3094
  %72 = getelementptr inbounds i8, ptr %71, i64 8, !dbg !3602
  store i64 %19, ptr %72, align 8, !dbg !3602, !tbaa.struct !3095
  %73 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 5, !dbg !3603
  store i32 %11, ptr %73, align 8, !dbg !3604, !tbaa !3605
  %74 = trunc i64 %14 to i32, !dbg !3606
  %75 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 6, !dbg !3607
  store i32 %74, ptr %75, align 4, !dbg !3608, !tbaa !3609
  %76 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 7, !dbg !3610
  store i16 %12, ptr %76, align 8, !dbg !3611, !tbaa !1156
  %77 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 8, !dbg !3612
  store i32 %15, ptr %77, align 4, !dbg !3613, !tbaa !3614
  %78 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 8, i32 1, !dbg !3615
  store i32 %16, ptr %78, align 4, !dbg !3616, !tbaa !3617
  call void @llvm.dbg.value(metadata ptr %52, metadata !3618, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 %2, metadata !3623, metadata !DIExpression()), !dbg !3626
  %79 = icmp eq i16 %12, 2, !dbg !3629
  call void @llvm.dbg.value(metadata i1 %79, metadata !3624, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3626
  %80 = and i32 %2, 4, !dbg !3630
  %81 = icmp eq i32 %80, 0, !dbg !3630
  %82 = or i1 %81, %79, !dbg !3632
  br i1 %82, label %83, label %125, !dbg !3632

83:                                               ; preds = %47
  %84 = and i32 %2, 8, !dbg !3633
  %85 = icmp ne i32 %84, 0, !dbg !3633
  %86 = and i1 %85, %79, !dbg !3635
  br i1 %86, label %125, label %87, !dbg !3635

87:                                               ; preds = %83
  %88 = load ptr, ptr %52, align 8, !dbg !3636, !tbaa !1152
  %89 = load i8, ptr %88, align 1, !dbg !3636, !tbaa !900
  %90 = icmp ne i8 %89, 0, !dbg !3636
  %91 = icmp eq i16 %12, 7
  %92 = and i1 %91, %90, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %92, metadata !3625, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3626
  %93 = and i32 %2, 2, !dbg !3637
  %94 = icmp eq i32 %93, 0, !dbg !3637
  %95 = select i1 %94, i1 true, i1 %92, !dbg !3639
  br i1 %95, label %96, label %125, !dbg !3639

96:                                               ; preds = %87
  %97 = and i32 %2, 1, !dbg !3640
  %98 = icmp ne i32 %97, 0, !dbg !3640
  %99 = select i1 %98, i1 %92, i1 false, !dbg !3642
  %100 = icmp sgt i32 %11, 0
  %101 = and i1 %99, %100, !dbg !3642
  br i1 %101, label %102, label %109, !dbg !3642

102:                                              ; preds = %96
  %103 = tail call i32 @kill(i32 noundef %11, i32 noundef 0) #38, !dbg !3643
  %104 = icmp slt i32 %103, 0, !dbg !3644
  br i1 %104, label %105, label %109, !dbg !3645

105:                                              ; preds = %102
  %106 = tail call ptr @__errno_location() #41, !dbg !3646
  %107 = load i32, ptr %106, align 4, !dbg !3646, !tbaa !891
  %108 = icmp eq i32 %107, 3, !dbg !3647
  br i1 %108, label %125, label %109, !dbg !3648

109:                                              ; preds = %105, %102, %96
  %110 = ptrtoint ptr %53 to i64, !dbg !3649
  %111 = load <2 x ptr>, ptr %52, align 8, !dbg !3651, !tbaa !834
  %112 = ptrtoint <2 x ptr> %111 to <2 x i64>, !dbg !3649
  %113 = insertelement <2 x i64> poison, i64 %110, i64 0, !dbg !3652
  %114 = shufflevector <2 x i64> %113, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !3652
  %115 = sub <2 x i64> %112, %114, !dbg !3649
  %116 = inttoptr <2 x i64> %115 to <2 x ptr>, !dbg !3653
  store <2 x ptr> %116, ptr %52, align 8, !dbg !3654, !tbaa !834
  %117 = load <2 x ptr>, ptr %66, align 8, !dbg !3655, !tbaa !834
  %118 = ptrtoint <2 x ptr> %117 to <2 x i64>, !dbg !3656
  %119 = sub <2 x i64> %118, %114, !dbg !3656
  %120 = inttoptr <2 x i64> %119 to <2 x ptr>, !dbg !3657
  store <2 x ptr> %120, ptr %66, align 8, !dbg !3658, !tbaa !834
  %121 = load i64, ptr %22, align 8, !dbg !3659, !tbaa !3522
  %122 = add nsw i64 %121, 1, !dbg !3659
  store i64 %122, ptr %22, align 8, !dbg !3659, !tbaa !3522
  %123 = load i64, ptr %24, align 8, !dbg !3660, !tbaa !3524
  %124 = add nsw i64 %32, %123, !dbg !3660
  store i64 %124, ptr %24, align 8, !dbg !3660, !tbaa !3524
  br label %125, !dbg !3661

125:                                              ; preds = %105, %87, %83, %47, %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !3662, !tbaa.struct !3092
  ret void, !dbg !3663
}

declare !dbg !3664 void @endutxent() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3665 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3671 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3678 i32 @sysinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3683 i32 @timespec_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nounwind
declare !dbg !3686 i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3690 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3729, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %1, metadata !3730, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %2, metadata !3731, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %3, metadata !3732, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %4, metadata !3733, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i64 %5, metadata !3734, metadata !DIExpression()), !dbg !3735
  %7 = icmp eq ptr %1, null, !dbg !3736
  br i1 %7, label %10, label %8, !dbg !3738

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3739
  br label %12, !dbg !3739

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.91, ptr noundef %2, ptr noundef %3) #38, !dbg !3740
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.3.93, i32 noundef 5) #38, !dbg !3741
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3741
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %0), !dbg !3742
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.5.95, i32 noundef 5) #38, !dbg !3743
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.96) #38, !dbg !3743
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %0), !dbg !3744
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
  ], !dbg !3745

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.7.97, i32 noundef 5) #38, !dbg !3746
  %21 = load ptr, ptr %4, align 8, !dbg !3746, !tbaa !834
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3746
  br label %147, !dbg !3748

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.8.98, i32 noundef 5) #38, !dbg !3749
  %25 = load ptr, ptr %4, align 8, !dbg !3749, !tbaa !834
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3749
  %27 = load ptr, ptr %26, align 8, !dbg !3749, !tbaa !834
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3749
  br label %147, !dbg !3750

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.9.99, i32 noundef 5) #38, !dbg !3751
  %31 = load ptr, ptr %4, align 8, !dbg !3751, !tbaa !834
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3751
  %33 = load ptr, ptr %32, align 8, !dbg !3751, !tbaa !834
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3751
  %35 = load ptr, ptr %34, align 8, !dbg !3751, !tbaa !834
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3751
  br label %147, !dbg !3752

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.10.100, i32 noundef 5) #38, !dbg !3753
  %39 = load ptr, ptr %4, align 8, !dbg !3753, !tbaa !834
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3753
  %41 = load ptr, ptr %40, align 8, !dbg !3753, !tbaa !834
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3753
  %43 = load ptr, ptr %42, align 8, !dbg !3753, !tbaa !834
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3753
  %45 = load ptr, ptr %44, align 8, !dbg !3753, !tbaa !834
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3753
  br label %147, !dbg !3754

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.11.101, i32 noundef 5) #38, !dbg !3755
  %49 = load ptr, ptr %4, align 8, !dbg !3755, !tbaa !834
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3755
  %51 = load ptr, ptr %50, align 8, !dbg !3755, !tbaa !834
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3755
  %53 = load ptr, ptr %52, align 8, !dbg !3755, !tbaa !834
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3755
  %55 = load ptr, ptr %54, align 8, !dbg !3755, !tbaa !834
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3755
  %57 = load ptr, ptr %56, align 8, !dbg !3755, !tbaa !834
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3755
  br label %147, !dbg !3756

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.12.102, i32 noundef 5) #38, !dbg !3757
  %61 = load ptr, ptr %4, align 8, !dbg !3757, !tbaa !834
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3757
  %63 = load ptr, ptr %62, align 8, !dbg !3757, !tbaa !834
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3757
  %65 = load ptr, ptr %64, align 8, !dbg !3757, !tbaa !834
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3757
  %67 = load ptr, ptr %66, align 8, !dbg !3757, !tbaa !834
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3757
  %69 = load ptr, ptr %68, align 8, !dbg !3757, !tbaa !834
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3757
  %71 = load ptr, ptr %70, align 8, !dbg !3757, !tbaa !834
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3757
  br label %147, !dbg !3758

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.13.103, i32 noundef 5) #38, !dbg !3759
  %75 = load ptr, ptr %4, align 8, !dbg !3759, !tbaa !834
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3759
  %77 = load ptr, ptr %76, align 8, !dbg !3759, !tbaa !834
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3759
  %79 = load ptr, ptr %78, align 8, !dbg !3759, !tbaa !834
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3759
  %81 = load ptr, ptr %80, align 8, !dbg !3759, !tbaa !834
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3759
  %83 = load ptr, ptr %82, align 8, !dbg !3759, !tbaa !834
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3759
  %85 = load ptr, ptr %84, align 8, !dbg !3759, !tbaa !834
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3759
  %87 = load ptr, ptr %86, align 8, !dbg !3759, !tbaa !834
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3759
  br label %147, !dbg !3760

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.14.104, i32 noundef 5) #38, !dbg !3761
  %91 = load ptr, ptr %4, align 8, !dbg !3761, !tbaa !834
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3761
  %93 = load ptr, ptr %92, align 8, !dbg !3761, !tbaa !834
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3761
  %95 = load ptr, ptr %94, align 8, !dbg !3761, !tbaa !834
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3761
  %97 = load ptr, ptr %96, align 8, !dbg !3761, !tbaa !834
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3761
  %99 = load ptr, ptr %98, align 8, !dbg !3761, !tbaa !834
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3761
  %101 = load ptr, ptr %100, align 8, !dbg !3761, !tbaa !834
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3761
  %103 = load ptr, ptr %102, align 8, !dbg !3761, !tbaa !834
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3761
  %105 = load ptr, ptr %104, align 8, !dbg !3761, !tbaa !834
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3761
  br label %147, !dbg !3762

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.15.105, i32 noundef 5) #38, !dbg !3763
  %109 = load ptr, ptr %4, align 8, !dbg !3763, !tbaa !834
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3763
  %111 = load ptr, ptr %110, align 8, !dbg !3763, !tbaa !834
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3763
  %113 = load ptr, ptr %112, align 8, !dbg !3763, !tbaa !834
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3763
  %115 = load ptr, ptr %114, align 8, !dbg !3763, !tbaa !834
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3763
  %117 = load ptr, ptr %116, align 8, !dbg !3763, !tbaa !834
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3763
  %119 = load ptr, ptr %118, align 8, !dbg !3763, !tbaa !834
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3763
  %121 = load ptr, ptr %120, align 8, !dbg !3763, !tbaa !834
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3763
  %123 = load ptr, ptr %122, align 8, !dbg !3763, !tbaa !834
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3763
  %125 = load ptr, ptr %124, align 8, !dbg !3763, !tbaa !834
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3763
  br label %147, !dbg !3764

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.16.106, i32 noundef 5) #38, !dbg !3765
  %129 = load ptr, ptr %4, align 8, !dbg !3765, !tbaa !834
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3765
  %131 = load ptr, ptr %130, align 8, !dbg !3765, !tbaa !834
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3765
  %133 = load ptr, ptr %132, align 8, !dbg !3765, !tbaa !834
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3765
  %135 = load ptr, ptr %134, align 8, !dbg !3765, !tbaa !834
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3765
  %137 = load ptr, ptr %136, align 8, !dbg !3765, !tbaa !834
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3765
  %139 = load ptr, ptr %138, align 8, !dbg !3765, !tbaa !834
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3765
  %141 = load ptr, ptr %140, align 8, !dbg !3765, !tbaa !834
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3765
  %143 = load ptr, ptr %142, align 8, !dbg !3765, !tbaa !834
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3765
  %145 = load ptr, ptr %144, align 8, !dbg !3765, !tbaa !834
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3765
  br label %147, !dbg !3766

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3767
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3768 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3772, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr %1, metadata !3773, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr %2, metadata !3774, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr %3, metadata !3775, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr %4, metadata !3776, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 0, metadata !3777, metadata !DIExpression()), !dbg !3778
  br label %6, !dbg !3779

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3781
  call void @llvm.dbg.value(metadata i64 %7, metadata !3777, metadata !DIExpression()), !dbg !3778
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3782
  %9 = load ptr, ptr %8, align 8, !dbg !3782, !tbaa !834
  %10 = icmp eq ptr %9, null, !dbg !3784
  %11 = add i64 %7, 1, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %11, metadata !3777, metadata !DIExpression()), !dbg !3778
  br i1 %10, label %12, label %6, !dbg !3784, !llvm.loop !3786

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3788
  ret void, !dbg !3789
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3790 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3805, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %1, metadata !3806, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %2, metadata !3807, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %3, metadata !3808, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3809, metadata !DIExpression()), !dbg !3814
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3815
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3811, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i64 0, metadata !3810, metadata !DIExpression()), !dbg !3813
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3810, metadata !DIExpression()), !dbg !3813
  %10 = icmp sgt i32 %9, -1, !dbg !3817
  br i1 %10, label %18, label %11, !dbg !3817

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3817
  store i32 %12, ptr %7, align 8, !dbg !3817
  %13 = icmp ult i32 %9, -7, !dbg !3817
  br i1 %13, label %14, label %18, !dbg !3817

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3817
  %16 = sext i32 %9 to i64, !dbg !3817
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3817
  br label %22, !dbg !3817

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3817
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3817
  store ptr %21, ptr %4, align 8, !dbg !3817
  br label %22, !dbg !3817

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3817
  %25 = load ptr, ptr %24, align 8, !dbg !3817
  store ptr %25, ptr %6, align 8, !dbg !3820, !tbaa !834
  %26 = icmp eq ptr %25, null, !dbg !3821
  br i1 %26, label %197, label %27, !dbg !3822

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 1, metadata !3810, metadata !DIExpression()), !dbg !3813
  %28 = icmp sgt i32 %23, -1, !dbg !3817
  br i1 %28, label %36, label %29, !dbg !3817

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3817
  store i32 %30, ptr %7, align 8, !dbg !3817
  %31 = icmp ult i32 %23, -7, !dbg !3817
  br i1 %31, label %32, label %36, !dbg !3817

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3817
  %34 = sext i32 %23 to i64, !dbg !3817
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3817
  br label %40, !dbg !3817

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3817
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3817
  store ptr %39, ptr %4, align 8, !dbg !3817
  br label %40, !dbg !3817

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3817
  %43 = load ptr, ptr %42, align 8, !dbg !3817
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3823
  store ptr %43, ptr %44, align 8, !dbg !3820, !tbaa !834
  %45 = icmp eq ptr %43, null, !dbg !3821
  br i1 %45, label %197, label %46, !dbg !3822

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 2, metadata !3810, metadata !DIExpression()), !dbg !3813
  %47 = icmp sgt i32 %41, -1, !dbg !3817
  br i1 %47, label %55, label %48, !dbg !3817

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3817
  store i32 %49, ptr %7, align 8, !dbg !3817
  %50 = icmp ult i32 %41, -7, !dbg !3817
  br i1 %50, label %51, label %55, !dbg !3817

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3817
  %53 = sext i32 %41 to i64, !dbg !3817
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3817
  br label %59, !dbg !3817

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3817
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3817
  store ptr %58, ptr %4, align 8, !dbg !3817
  br label %59, !dbg !3817

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3817
  %62 = load ptr, ptr %61, align 8, !dbg !3817
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3823
  store ptr %62, ptr %63, align 8, !dbg !3820, !tbaa !834
  %64 = icmp eq ptr %62, null, !dbg !3821
  br i1 %64, label %197, label %65, !dbg !3822

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 3, metadata !3810, metadata !DIExpression()), !dbg !3813
  %66 = icmp sgt i32 %60, -1, !dbg !3817
  br i1 %66, label %74, label %67, !dbg !3817

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3817
  store i32 %68, ptr %7, align 8, !dbg !3817
  %69 = icmp ult i32 %60, -7, !dbg !3817
  br i1 %69, label %70, label %74, !dbg !3817

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3817
  %72 = sext i32 %60 to i64, !dbg !3817
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3817
  br label %78, !dbg !3817

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3817
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3817
  store ptr %77, ptr %4, align 8, !dbg !3817
  br label %78, !dbg !3817

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3817
  %81 = load ptr, ptr %80, align 8, !dbg !3817
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3823
  store ptr %81, ptr %82, align 8, !dbg !3820, !tbaa !834
  %83 = icmp eq ptr %81, null, !dbg !3821
  br i1 %83, label %197, label %84, !dbg !3822

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 4, metadata !3810, metadata !DIExpression()), !dbg !3813
  %85 = icmp sgt i32 %79, -1, !dbg !3817
  br i1 %85, label %93, label %86, !dbg !3817

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3817
  store i32 %87, ptr %7, align 8, !dbg !3817
  %88 = icmp ult i32 %79, -7, !dbg !3817
  br i1 %88, label %89, label %93, !dbg !3817

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3817
  %91 = sext i32 %79 to i64, !dbg !3817
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3817
  br label %97, !dbg !3817

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3817
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3817
  store ptr %96, ptr %4, align 8, !dbg !3817
  br label %97, !dbg !3817

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3817
  %100 = load ptr, ptr %99, align 8, !dbg !3817
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3823
  store ptr %100, ptr %101, align 8, !dbg !3820, !tbaa !834
  %102 = icmp eq ptr %100, null, !dbg !3821
  br i1 %102, label %197, label %103, !dbg !3822

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 5, metadata !3810, metadata !DIExpression()), !dbg !3813
  %104 = icmp sgt i32 %98, -1, !dbg !3817
  br i1 %104, label %112, label %105, !dbg !3817

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3817
  store i32 %106, ptr %7, align 8, !dbg !3817
  %107 = icmp ult i32 %98, -7, !dbg !3817
  br i1 %107, label %108, label %112, !dbg !3817

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3817
  %110 = sext i32 %98 to i64, !dbg !3817
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3817
  br label %116, !dbg !3817

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3817
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3817
  store ptr %115, ptr %4, align 8, !dbg !3817
  br label %116, !dbg !3817

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3817
  %119 = load ptr, ptr %118, align 8, !dbg !3817
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3823
  store ptr %119, ptr %120, align 8, !dbg !3820, !tbaa !834
  %121 = icmp eq ptr %119, null, !dbg !3821
  br i1 %121, label %197, label %122, !dbg !3822

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 6, metadata !3810, metadata !DIExpression()), !dbg !3813
  %123 = icmp sgt i32 %117, -1, !dbg !3817
  br i1 %123, label %131, label %124, !dbg !3817

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3817
  store i32 %125, ptr %7, align 8, !dbg !3817
  %126 = icmp ult i32 %117, -7, !dbg !3817
  br i1 %126, label %127, label %131, !dbg !3817

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3817
  %129 = sext i32 %117 to i64, !dbg !3817
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3817
  br label %135, !dbg !3817

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3817
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3817
  store ptr %134, ptr %4, align 8, !dbg !3817
  br label %135, !dbg !3817

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3817
  %138 = load ptr, ptr %137, align 8, !dbg !3817
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3823
  store ptr %138, ptr %139, align 8, !dbg !3820, !tbaa !834
  %140 = icmp eq ptr %138, null, !dbg !3821
  br i1 %140, label %197, label %141, !dbg !3822

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 7, metadata !3810, metadata !DIExpression()), !dbg !3813
  %142 = icmp sgt i32 %136, -1, !dbg !3817
  br i1 %142, label %150, label %143, !dbg !3817

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3817
  store i32 %144, ptr %7, align 8, !dbg !3817
  %145 = icmp ult i32 %136, -7, !dbg !3817
  br i1 %145, label %146, label %150, !dbg !3817

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3817
  %148 = sext i32 %136 to i64, !dbg !3817
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3817
  br label %154, !dbg !3817

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3817
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3817
  store ptr %153, ptr %4, align 8, !dbg !3817
  br label %154, !dbg !3817

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3817
  %157 = load ptr, ptr %156, align 8, !dbg !3817
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3823
  store ptr %157, ptr %158, align 8, !dbg !3820, !tbaa !834
  %159 = icmp eq ptr %157, null, !dbg !3821
  br i1 %159, label %197, label %160, !dbg !3822

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 8, metadata !3810, metadata !DIExpression()), !dbg !3813
  %161 = icmp sgt i32 %155, -1, !dbg !3817
  br i1 %161, label %169, label %162, !dbg !3817

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3817
  store i32 %163, ptr %7, align 8, !dbg !3817
  %164 = icmp ult i32 %155, -7, !dbg !3817
  br i1 %164, label %165, label %169, !dbg !3817

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3817
  %167 = sext i32 %155 to i64, !dbg !3817
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3817
  br label %173, !dbg !3817

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3817
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3817
  store ptr %172, ptr %4, align 8, !dbg !3817
  br label %173, !dbg !3817

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3817
  %176 = load ptr, ptr %175, align 8, !dbg !3817
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3823
  store ptr %176, ptr %177, align 8, !dbg !3820, !tbaa !834
  %178 = icmp eq ptr %176, null, !dbg !3821
  br i1 %178, label %197, label %179, !dbg !3822

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 9, metadata !3810, metadata !DIExpression()), !dbg !3813
  %180 = icmp sgt i32 %174, -1, !dbg !3817
  br i1 %180, label %188, label %181, !dbg !3817

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3817
  store i32 %182, ptr %7, align 8, !dbg !3817
  %183 = icmp ult i32 %174, -7, !dbg !3817
  br i1 %183, label %184, label %188, !dbg !3817

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3817
  %186 = sext i32 %174 to i64, !dbg !3817
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3817
  br label %191, !dbg !3817

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3817
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3817
  store ptr %190, ptr %4, align 8, !dbg !3817
  br label %191, !dbg !3817

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3817
  %193 = load ptr, ptr %192, align 8, !dbg !3817
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3823
  store ptr %193, ptr %194, align 8, !dbg !3820, !tbaa !834
  %195 = icmp eq ptr %193, null, !dbg !3821
  %196 = select i1 %195, i64 9, i64 10, !dbg !3822
  br label %197, !dbg !3822

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3824
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3825
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3826
  ret void, !dbg !3826
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3827 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3831, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata ptr %1, metadata !3832, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata ptr %2, metadata !3833, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata ptr %3, metadata !3834, metadata !DIExpression()), !dbg !3836
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3837
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3835, metadata !DIExpression()), !dbg !3838
  call void @llvm.va_start(ptr nonnull %5), !dbg !3839
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3840, !tbaa.struct !1298
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3840
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3840
  call void @llvm.va_end(ptr nonnull %5), !dbg !3841
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3842
  ret void, !dbg !3842
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3843 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3844, !tbaa !834
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %1), !dbg !3844
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.17.111, i32 noundef 5) #38, !dbg !3845
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.112) #38, !dbg !3845
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.19.113, i32 noundef 5) #38, !dbg !3846
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #38, !dbg !3846
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.22.114, i32 noundef 5) #38, !dbg !3847
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #38, !dbg !3847
  ret void, !dbg !3848
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3849 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %1, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %2, metadata !3856, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %0, metadata !3858, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %1, metadata !3861, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %2, metadata !3862, metadata !DIExpression()), !dbg !3863
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3865
  call void @llvm.dbg.value(metadata ptr %4, metadata !3866, metadata !DIExpression()), !dbg !3871
  %5 = icmp eq ptr %4, null, !dbg !3873
  br i1 %5, label %6, label %7, !dbg !3875

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3876
  unreachable, !dbg !3876

7:                                                ; preds = %3
  ret ptr %4, !dbg !3877
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3859 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3858, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %1, metadata !3861, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %2, metadata !3862, metadata !DIExpression()), !dbg !3878
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3879
  call void @llvm.dbg.value(metadata ptr %4, metadata !3866, metadata !DIExpression()), !dbg !3880
  %5 = icmp eq ptr %4, null, !dbg !3882
  br i1 %5, label %6, label %7, !dbg !3883

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3884
  unreachable, !dbg !3884

7:                                                ; preds = %3
  ret ptr %4, !dbg !3885
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3886 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3890, metadata !DIExpression()), !dbg !3891
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3892
  call void @llvm.dbg.value(metadata ptr %2, metadata !3866, metadata !DIExpression()), !dbg !3893
  %3 = icmp eq ptr %2, null, !dbg !3895
  br i1 %3, label %4, label %5, !dbg !3896

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3897
  unreachable, !dbg !3897

5:                                                ; preds = %1
  ret ptr %2, !dbg !3898
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3899 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3900 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3904, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 %0, metadata !3906, metadata !DIExpression()), !dbg !3910
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3912
  call void @llvm.dbg.value(metadata ptr %2, metadata !3866, metadata !DIExpression()), !dbg !3913
  %3 = icmp eq ptr %2, null, !dbg !3915
  br i1 %3, label %4, label %5, !dbg !3916

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3917
  unreachable, !dbg !3917

5:                                                ; preds = %1
  ret ptr %2, !dbg !3918
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3919 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3923, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %0, metadata !3890, metadata !DIExpression()), !dbg !3925
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3927
  call void @llvm.dbg.value(metadata ptr %2, metadata !3866, metadata !DIExpression()), !dbg !3928
  %3 = icmp eq ptr %2, null, !dbg !3930
  br i1 %3, label %4, label %5, !dbg !3931

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3932
  unreachable, !dbg !3932

5:                                                ; preds = %1
  ret ptr %2, !dbg !3933
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3934 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i64 %1, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64 %1, metadata !3945, metadata !DIExpression()), !dbg !3946
  %3 = icmp eq i64 %1, 0, !dbg !3948
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3948
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3949
  call void @llvm.dbg.value(metadata ptr %5, metadata !3866, metadata !DIExpression()), !dbg !3950
  %6 = icmp eq ptr %5, null, !dbg !3952
  br i1 %6, label %7, label %8, !dbg !3953

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3954
  unreachable, !dbg !3954

8:                                                ; preds = %2
  ret ptr %5, !dbg !3955
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3956 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3957 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3961, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %1, metadata !3962, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %0, metadata !3964, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %1, metadata !3967, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %1, metadata !3945, metadata !DIExpression()), !dbg !3970
  %3 = icmp eq i64 %1, 0, !dbg !3972
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3972
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3973
  call void @llvm.dbg.value(metadata ptr %5, metadata !3866, metadata !DIExpression()), !dbg !3974
  %6 = icmp eq ptr %5, null, !dbg !3976
  br i1 %6, label %7, label %8, !dbg !3977

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3978
  unreachable, !dbg !3978

8:                                                ; preds = %2
  ret ptr %5, !dbg !3979
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3980 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3984, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %1, metadata !3985, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %2, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata ptr %0, metadata !3988, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %2, metadata !3992, metadata !DIExpression()), !dbg !3993
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3995
  call void @llvm.dbg.value(metadata ptr %4, metadata !3866, metadata !DIExpression()), !dbg !3996
  %5 = icmp eq ptr %4, null, !dbg !3998
  br i1 %5, label %6, label %7, !dbg !3999

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4000
  unreachable, !dbg !4000

7:                                                ; preds = %3
  ret ptr %4, !dbg !4001
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4002 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4006, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %1, metadata !4007, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr null, metadata !3858, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %0, metadata !3861, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %1, metadata !3862, metadata !DIExpression()), !dbg !4009
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4011
  call void @llvm.dbg.value(metadata ptr %3, metadata !3866, metadata !DIExpression()), !dbg !4012
  %4 = icmp eq ptr %3, null, !dbg !4014
  br i1 %4, label %5, label %6, !dbg !4015

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4016
  unreachable, !dbg !4016

6:                                                ; preds = %2
  ret ptr %3, !dbg !4017
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4018 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4022, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i64 %1, metadata !4023, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr null, metadata !3984, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %0, metadata !3985, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3986, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr null, metadata !3988, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3992, metadata !DIExpression()), !dbg !4027
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4029
  call void @llvm.dbg.value(metadata ptr %3, metadata !3866, metadata !DIExpression()), !dbg !4030
  %4 = icmp eq ptr %3, null, !dbg !4032
  br i1 %4, label %5, label %6, !dbg !4033

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4034
  unreachable, !dbg !4034

6:                                                ; preds = %2
  ret ptr %3, !dbg !4035
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4036 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4040, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata ptr %1, metadata !4041, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata ptr %0, metadata !769, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %1, metadata !770, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 1, metadata !771, metadata !DIExpression()), !dbg !4043
  %3 = load i64, ptr %1, align 8, !dbg !4045, !tbaa !1119
  call void @llvm.dbg.value(metadata i64 %3, metadata !772, metadata !DIExpression()), !dbg !4043
  %4 = icmp eq ptr %0, null, !dbg !4046
  br i1 %4, label %5, label %8, !dbg !4048

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4049
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4052
  br label %15, !dbg !4052

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4053
  %10 = add nuw i64 %9, 1, !dbg !4053
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4053
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4053
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4053
  call void @llvm.dbg.value(metadata i64 %13, metadata !772, metadata !DIExpression()), !dbg !4043
  br i1 %12, label %14, label %15, !dbg !4056

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4057
  unreachable, !dbg !4057

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4043
  call void @llvm.dbg.value(metadata i64 %16, metadata !772, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %0, metadata !3858, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i64 %16, metadata !3861, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i64 1, metadata !3862, metadata !DIExpression()), !dbg !4058
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4060
  call void @llvm.dbg.value(metadata ptr %17, metadata !3866, metadata !DIExpression()), !dbg !4061
  %18 = icmp eq ptr %17, null, !dbg !4063
  br i1 %18, label %19, label %20, !dbg !4064

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4065
  unreachable, !dbg !4065

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !769, metadata !DIExpression()), !dbg !4043
  store i64 %16, ptr %1, align 8, !dbg !4066, !tbaa !1119
  ret ptr %17, !dbg !4067
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !764 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !769, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %1, metadata !770, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %2, metadata !771, metadata !DIExpression()), !dbg !4068
  %4 = load i64, ptr %1, align 8, !dbg !4069, !tbaa !1119
  call void @llvm.dbg.value(metadata i64 %4, metadata !772, metadata !DIExpression()), !dbg !4068
  %5 = icmp eq ptr %0, null, !dbg !4070
  br i1 %5, label %6, label %13, !dbg !4071

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4072
  br i1 %7, label %8, label %20, !dbg !4073

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %9, metadata !772, metadata !DIExpression()), !dbg !4068
  %10 = icmp ugt i64 %2, 128, !dbg !4076
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4077
  call void @llvm.dbg.value(metadata i64 %12, metadata !772, metadata !DIExpression()), !dbg !4068
  br label %20, !dbg !4078

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4079
  %15 = add nuw i64 %14, 1, !dbg !4079
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4079
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4079
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4079
  call void @llvm.dbg.value(metadata i64 %18, metadata !772, metadata !DIExpression()), !dbg !4068
  br i1 %17, label %19, label %20, !dbg !4080

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4081
  unreachable, !dbg !4081

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4068
  call void @llvm.dbg.value(metadata i64 %21, metadata !772, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %0, metadata !3858, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %21, metadata !3861, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %2, metadata !3862, metadata !DIExpression()), !dbg !4082
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4084
  call void @llvm.dbg.value(metadata ptr %22, metadata !3866, metadata !DIExpression()), !dbg !4085
  %23 = icmp eq ptr %22, null, !dbg !4087
  br i1 %23, label %24, label %25, !dbg !4088

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4089
  unreachable, !dbg !4089

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !769, metadata !DIExpression()), !dbg !4068
  store i64 %21, ptr %1, align 8, !dbg !4090, !tbaa !1119
  ret ptr %22, !dbg !4091
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !776 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !784, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %1, metadata !785, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %2, metadata !786, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %3, metadata !787, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %4, metadata !788, metadata !DIExpression()), !dbg !4092
  %6 = load i64, ptr %1, align 8, !dbg !4093, !tbaa !1119
  call void @llvm.dbg.value(metadata i64 %6, metadata !789, metadata !DIExpression()), !dbg !4092
  %7 = ashr i64 %6, 1, !dbg !4094
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4094
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4094
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4094
  call void @llvm.dbg.value(metadata i64 %10, metadata !790, metadata !DIExpression()), !dbg !4092
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4096
  call void @llvm.dbg.value(metadata i64 %11, metadata !790, metadata !DIExpression()), !dbg !4092
  %12 = icmp sgt i64 %3, -1, !dbg !4097
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4099
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %15, metadata !790, metadata !DIExpression()), !dbg !4092
  %16 = icmp slt i64 %4, 0, !dbg !4100
  br i1 %16, label %17, label %30, !dbg !4100

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4100
  br i1 %18, label %19, label %24, !dbg !4100

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4100
  %21 = udiv i64 9223372036854775807, %20, !dbg !4100
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4100
  br i1 %23, label %46, label %43, !dbg !4100

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4100
  br i1 %25, label %43, label %26, !dbg !4100

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4100
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4100
  %29 = icmp ult i64 %28, %15, !dbg !4100
  br i1 %29, label %46, label %43, !dbg !4100

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4100
  br i1 %31, label %43, label %32, !dbg !4100

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4100
  br i1 %33, label %34, label %40, !dbg !4100

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4100
  br i1 %35, label %43, label %36, !dbg !4100

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4100
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4100
  %39 = icmp ult i64 %38, %4, !dbg !4100
  br i1 %39, label %46, label %43, !dbg !4100

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4100
  br i1 %42, label %46, label %43, !dbg !4100

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !791, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4092
  %44 = mul i64 %15, %4, !dbg !4100
  call void @llvm.dbg.value(metadata i64 %44, metadata !791, metadata !DIExpression()), !dbg !4092
  %45 = icmp slt i64 %44, 128, !dbg !4100
  br i1 %45, label %46, label %52, !dbg !4100

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !792, metadata !DIExpression()), !dbg !4092
  %48 = sdiv i64 %47, %4, !dbg !4101
  call void @llvm.dbg.value(metadata i64 %48, metadata !790, metadata !DIExpression()), !dbg !4092
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4104
  call void @llvm.dbg.value(metadata i64 %51, metadata !791, metadata !DIExpression()), !dbg !4092
  br label %52, !dbg !4105

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4092
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4092
  call void @llvm.dbg.value(metadata i64 %54, metadata !791, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %53, metadata !790, metadata !DIExpression()), !dbg !4092
  %55 = icmp eq ptr %0, null, !dbg !4106
  br i1 %55, label %56, label %57, !dbg !4108

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4109, !tbaa !1119
  br label %57, !dbg !4110

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4111
  %59 = icmp slt i64 %58, %2, !dbg !4113
  br i1 %59, label %60, label %97, !dbg !4114

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4115
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4115
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %63, metadata !790, metadata !DIExpression()), !dbg !4092
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4116
  br i1 %66, label %96, label %67, !dbg !4116

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4117

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4117
  br i1 %69, label %70, label %75, !dbg !4117

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4117
  %72 = udiv i64 9223372036854775807, %71, !dbg !4117
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4117
  br i1 %74, label %96, label %94, !dbg !4117

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4117
  br i1 %76, label %94, label %77, !dbg !4117

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4117
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4117
  %80 = icmp ult i64 %79, %63, !dbg !4117
  br i1 %80, label %96, label %94, !dbg !4117

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4117
  br i1 %82, label %94, label %83, !dbg !4117

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4117
  br i1 %84, label %85, label %91, !dbg !4117

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4117
  br i1 %86, label %94, label %87, !dbg !4117

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4117
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4117
  %90 = icmp ult i64 %89, %4, !dbg !4117
  br i1 %90, label %96, label %94, !dbg !4117

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4117
  br i1 %93, label %96, label %94, !dbg !4117

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !791, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4092
  %95 = mul i64 %63, %4, !dbg !4117
  call void @llvm.dbg.value(metadata i64 %95, metadata !791, metadata !DIExpression()), !dbg !4092
  br label %97, !dbg !4118

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #40, !dbg !4119
  unreachable, !dbg !4119

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4092
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4092
  call void @llvm.dbg.value(metadata i64 %99, metadata !791, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %98, metadata !790, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %0, metadata !3938, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i64 %99, metadata !3939, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i64 %99, metadata !3945, metadata !DIExpression()), !dbg !4122
  %100 = icmp eq i64 %99, 0, !dbg !4124
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4124
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #45, !dbg !4125
  call void @llvm.dbg.value(metadata ptr %102, metadata !3866, metadata !DIExpression()), !dbg !4126
  %103 = icmp eq ptr %102, null, !dbg !4128
  br i1 %103, label %104, label %105, !dbg !4129

104:                                              ; preds = %97
  tail call void @xalloc_die() #40, !dbg !4130
  unreachable, !dbg !4130

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !784, metadata !DIExpression()), !dbg !4092
  store i64 %98, ptr %1, align 8, !dbg !4131, !tbaa !1119
  ret ptr %102, !dbg !4132
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4133 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4135, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i64 %0, metadata !4137, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i64 1, metadata !4140, metadata !DIExpression()), !dbg !4141
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !4143
  call void @llvm.dbg.value(metadata ptr %2, metadata !3866, metadata !DIExpression()), !dbg !4144
  %3 = icmp eq ptr %2, null, !dbg !4146
  br i1 %3, label %4, label %5, !dbg !4147

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4148
  unreachable, !dbg !4148

5:                                                ; preds = %1
  ret ptr %2, !dbg !4149
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4150 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4138 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4137, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i64 %1, metadata !4140, metadata !DIExpression()), !dbg !4151
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !4152
  call void @llvm.dbg.value(metadata ptr %3, metadata !3866, metadata !DIExpression()), !dbg !4153
  %4 = icmp eq ptr %3, null, !dbg !4155
  br i1 %4, label %5, label %6, !dbg !4156

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4157
  unreachable, !dbg !4157

6:                                                ; preds = %2
  ret ptr %3, !dbg !4158
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4159 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4161, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 %0, metadata !4163, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 1, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %0, metadata !4169, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 1, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %0, metadata !4169, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 1, metadata !4172, metadata !DIExpression()), !dbg !4173
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !4175
  call void @llvm.dbg.value(metadata ptr %2, metadata !3866, metadata !DIExpression()), !dbg !4176
  %3 = icmp eq ptr %2, null, !dbg !4178
  br i1 %3, label %4, label %5, !dbg !4179

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4180
  unreachable, !dbg !4180

5:                                                ; preds = %1
  ret ptr %2, !dbg !4181
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4164 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4163, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %1, metadata !4166, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %0, metadata !4169, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 %0, metadata !4169, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4183
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !4185
  call void @llvm.dbg.value(metadata ptr %3, metadata !3866, metadata !DIExpression()), !dbg !4186
  %4 = icmp eq ptr %3, null, !dbg !4188
  br i1 %4, label %5, label %6, !dbg !4189

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4190
  unreachable, !dbg !4190

6:                                                ; preds = %2
  ret ptr %3, !dbg !4191
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4192 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4196, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata i64 %1, metadata !4197, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3890, metadata !DIExpression()), !dbg !4199
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4201
  call void @llvm.dbg.value(metadata ptr %3, metadata !3866, metadata !DIExpression()), !dbg !4202
  %4 = icmp eq ptr %3, null, !dbg !4204
  br i1 %4, label %5, label %6, !dbg !4205

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4206
  unreachable, !dbg !4206

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4207, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %0, metadata !4210, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %1, metadata !4211, metadata !DIExpression()), !dbg !4212
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4214
  ret ptr %3, !dbg !4215
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4216 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4220, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %1, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %1, metadata !3904, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %1, metadata !3906, metadata !DIExpression()), !dbg !4225
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4227
  call void @llvm.dbg.value(metadata ptr %3, metadata !3866, metadata !DIExpression()), !dbg !4228
  %4 = icmp eq ptr %3, null, !dbg !4230
  br i1 %4, label %5, label %6, !dbg !4231

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4232
  unreachable, !dbg !4232

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4207, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata ptr %0, metadata !4210, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i64 %1, metadata !4211, metadata !DIExpression()), !dbg !4233
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4235
  ret ptr %3, !dbg !4236
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4237 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4241, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4244
  %3 = add nsw i64 %1, 1, !dbg !4245
  call void @llvm.dbg.value(metadata i64 %3, metadata !3904, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %3, metadata !3906, metadata !DIExpression()), !dbg !4248
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4250
  call void @llvm.dbg.value(metadata ptr %4, metadata !3866, metadata !DIExpression()), !dbg !4251
  %5 = icmp eq ptr %4, null, !dbg !4253
  br i1 %5, label %6, label %7, !dbg !4254

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4255
  unreachable, !dbg !4255

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4243, metadata !DIExpression()), !dbg !4244
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4256
  store i8 0, ptr %8, align 1, !dbg !4257, !tbaa !900
  call void @llvm.dbg.value(metadata ptr %4, metadata !4207, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata ptr %0, metadata !4210, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4211, metadata !DIExpression()), !dbg !4258
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4260
  ret ptr %4, !dbg !4261
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4262 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4264, metadata !DIExpression()), !dbg !4265
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4266
  %3 = add i64 %2, 1, !dbg !4267
  call void @llvm.dbg.value(metadata ptr %0, metadata !4196, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %3, metadata !4197, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %3, metadata !3890, metadata !DIExpression()), !dbg !4270
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4272
  call void @llvm.dbg.value(metadata ptr %4, metadata !3866, metadata !DIExpression()), !dbg !4273
  %5 = icmp eq ptr %4, null, !dbg !4275
  br i1 %5, label %6, label %7, !dbg !4276

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4277
  unreachable, !dbg !4277

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4207, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata ptr %0, metadata !4210, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %3, metadata !4211, metadata !DIExpression()), !dbg !4278
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4280
  ret ptr %4, !dbg !4281
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4282 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4287, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %1, metadata !4284, metadata !DIExpression()), !dbg !4288
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.129, ptr noundef nonnull @.str.2.130, i32 noundef 5) #38, !dbg !4287
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.131, ptr noundef %2) #38, !dbg !4287
  %3 = icmp eq i32 %1, 0, !dbg !4287
  tail call void @llvm.assume(i1 %3), !dbg !4287
  tail call void @abort() #40, !dbg !4289
  unreachable, !dbg !4289
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4290 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !4328, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr %1, metadata !4329, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 0, metadata !4330, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 0, metadata !4331, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i8 0, metadata !4332, metadata !DIExpression()), !dbg !4352
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !4353
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4333, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata ptr %1, metadata !4337, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata ptr %3, metadata !4339, metadata !DIExpression()), !dbg !4355
  br label %4, !dbg !4356

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4355
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4352
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4357
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4352
  call void @llvm.dbg.value(metadata i32 %9, metadata !4330, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 %8, metadata !4331, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr %10, metadata !4339, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata ptr %6, metadata !4337, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i8 poison, metadata !4332, metadata !DIExpression()), !dbg !4352
  %11 = load i8, ptr %6, align 1, !dbg !4358, !tbaa !900
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4359

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !4330, metadata !DIExpression()), !dbg !4352
  %13 = icmp slt i64 %7, 80, !dbg !4360
  br i1 %13, label %14, label %43, !dbg !4363

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4364
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4355
  store i8 114, ptr %10, align 1, !dbg !4365, !tbaa !900
  br label %43, !dbg !4366

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4330, metadata !DIExpression()), !dbg !4352
  %17 = or i32 %8, 576, !dbg !4367
  call void @llvm.dbg.value(metadata i32 %17, metadata !4331, metadata !DIExpression()), !dbg !4352
  %18 = icmp slt i64 %7, 80, !dbg !4368
  br i1 %18, label %19, label %43, !dbg !4370

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4371
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4355
  store i8 119, ptr %10, align 1, !dbg !4372, !tbaa !900
  br label %43, !dbg !4373

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4330, metadata !DIExpression()), !dbg !4352
  %22 = or i32 %8, 1088, !dbg !4374
  call void @llvm.dbg.value(metadata i32 %22, metadata !4331, metadata !DIExpression()), !dbg !4352
  %23 = icmp slt i64 %7, 80, !dbg !4375
  br i1 %23, label %24, label %43, !dbg !4377

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4378
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4355
  store i8 97, ptr %10, align 1, !dbg !4379, !tbaa !900
  br label %43, !dbg !4380

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !4331, metadata !DIExpression()), !dbg !4352
  %27 = icmp slt i64 %7, 80, !dbg !4381
  br i1 %27, label %28, label %43, !dbg !4383

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4384
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4355
  store i8 98, ptr %10, align 1, !dbg !4385, !tbaa !900
  br label %43, !dbg !4386

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !4330, metadata !DIExpression()), !dbg !4352
  %31 = icmp slt i64 %7, 80, !dbg !4387
  br i1 %31, label %32, label %43, !dbg !4389

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4390
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4355
  store i8 43, ptr %10, align 1, !dbg !4391, !tbaa !900
  br label %43, !dbg !4392

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4393
  call void @llvm.dbg.value(metadata i32 %35, metadata !4331, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i8 1, metadata !4332, metadata !DIExpression()), !dbg !4352
  br label %43, !dbg !4394

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4395
  call void @llvm.dbg.value(metadata i32 %37, metadata !4331, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i8 1, metadata !4332, metadata !DIExpression()), !dbg !4352
  br label %43, !dbg !4396

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #39, !dbg !4397
  call void @llvm.dbg.value(metadata i64 %39, metadata !4340, metadata !DIExpression()), !dbg !4398
  %40 = sub nsw i64 80, %7, !dbg !4399
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4401
  call void @llvm.dbg.value(metadata i64 %41, metadata !4340, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata ptr %10, metadata !4402, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata ptr %6, metadata !4405, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i64 %41, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #38, !dbg !4409
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4410
  call void @llvm.dbg.value(metadata ptr %42, metadata !4339, metadata !DIExpression()), !dbg !4355
  br label %49, !dbg !4411

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4352
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4352
  call void @llvm.dbg.value(metadata i32 %47, metadata !4330, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 %46, metadata !4331, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4355
  call void @llvm.dbg.value(metadata i8 poison, metadata !4332, metadata !DIExpression()), !dbg !4352
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4412
  call void @llvm.dbg.value(metadata ptr %48, metadata !4337, metadata !DIExpression()), !dbg !4355
  br label %4, !dbg !4413, !llvm.loop !4414

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4355
  call void @llvm.dbg.value(metadata ptr %50, metadata !4339, metadata !DIExpression()), !dbg !4355
  store i8 0, ptr %50, align 1, !dbg !4416, !tbaa !900
  br i1 %5, label %51, label %62, !dbg !4417

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !4418
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #38, !dbg !4419
  call void @llvm.dbg.value(metadata i32 %53, metadata !4345, metadata !DIExpression()), !dbg !4420
  %54 = icmp slt i32 %53, 0, !dbg !4421
  br i1 %54, label %64, label %55, !dbg !4423

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #38, !dbg !4424
  call void @llvm.dbg.value(metadata ptr %56, metadata !4348, metadata !DIExpression()), !dbg !4420
  %57 = icmp eq ptr %56, null, !dbg !4425
  br i1 %57, label %58, label %64, !dbg !4426

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #41, !dbg !4427
  %60 = load i32, ptr %59, align 4, !dbg !4427, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %60, metadata !4349, metadata !DIExpression()), !dbg !4428
  %61 = tail call i32 @close(i32 noundef %53) #38, !dbg !4429
  store i32 %60, ptr %59, align 4, !dbg !4430, !tbaa !891
  br label %64, !dbg !4431

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4432, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata ptr %1, metadata !4435, metadata !DIExpression()), !dbg !4436
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4438
  br label %64, !dbg !4439

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !4352
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !4440
  ret ptr %65, !dbg !4440
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4441 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !4444 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #6

declare !dbg !4447 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4448 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4451 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4489, metadata !DIExpression()), !dbg !4494
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4495
  call void @llvm.dbg.value(metadata i1 poison, metadata !4490, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata ptr %0, metadata !4496, metadata !DIExpression()), !dbg !4499
  %3 = load i32, ptr %0, align 8, !dbg !4501, !tbaa !4502
  %4 = and i32 %3, 32, !dbg !4503
  %5 = icmp eq i32 %4, 0, !dbg !4503
  call void @llvm.dbg.value(metadata i1 %5, metadata !4492, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4504
  %7 = icmp eq i32 %6, 0, !dbg !4505
  call void @llvm.dbg.value(metadata i1 %7, metadata !4493, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  br i1 %5, label %8, label %18, !dbg !4506

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4508
  call void @llvm.dbg.value(metadata i1 %9, metadata !4490, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4509
  %11 = xor i1 %7, true, !dbg !4509
  %12 = sext i1 %11 to i32, !dbg !4509
  br i1 %10, label %21, label %13, !dbg !4509

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4510
  %15 = load i32, ptr %14, align 4, !dbg !4510, !tbaa !891
  %16 = icmp ne i32 %15, 9, !dbg !4511
  %17 = sext i1 %16 to i32, !dbg !4512
  br label %21, !dbg !4512

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4513

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4515
  store i32 0, ptr %20, align 4, !dbg !4517, !tbaa !891
  br label %21, !dbg !4515

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4494
  ret i32 %22, !dbg !4518
}

; Function Attrs: nounwind
declare !dbg !4519 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4523 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4561, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i32 0, metadata !4562, metadata !DIExpression()), !dbg !4565
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4566
  call void @llvm.dbg.value(metadata i32 %2, metadata !4563, metadata !DIExpression()), !dbg !4565
  %3 = icmp slt i32 %2, 0, !dbg !4567
  br i1 %3, label %4, label %6, !dbg !4569

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4570
  br label %24, !dbg !4571

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4572
  %8 = icmp eq i32 %7, 0, !dbg !4572
  br i1 %8, label %13, label %9, !dbg !4574

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4575
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !4576
  %12 = icmp eq i64 %11, -1, !dbg !4577
  br i1 %12, label %16, label %13, !dbg !4578

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !4579
  %15 = icmp eq i32 %14, 0, !dbg !4579
  br i1 %15, label %16, label %18, !dbg !4580

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4562, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i32 0, metadata !4564, metadata !DIExpression()), !dbg !4565
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4581
  call void @llvm.dbg.value(metadata i32 %17, metadata !4564, metadata !DIExpression()), !dbg !4565
  br label %24, !dbg !4582

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !4583
  %20 = load i32, ptr %19, align 4, !dbg !4583, !tbaa !891
  call void @llvm.dbg.value(metadata i32 %20, metadata !4562, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i32 0, metadata !4564, metadata !DIExpression()), !dbg !4565
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4581
  call void @llvm.dbg.value(metadata i32 %21, metadata !4564, metadata !DIExpression()), !dbg !4565
  %22 = icmp eq i32 %20, 0, !dbg !4584
  br i1 %22, label %24, label %23, !dbg !4582

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4586, !tbaa !891
  call void @llvm.dbg.value(metadata i32 -1, metadata !4564, metadata !DIExpression()), !dbg !4565
  br label %24, !dbg !4588

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4565
  ret i32 %25, !dbg !4589
}

; Function Attrs: nofree nounwind
declare !dbg !4590 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !4591 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !4592 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4593 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4596 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4634, metadata !DIExpression()), !dbg !4635
  %2 = icmp eq ptr %0, null, !dbg !4636
  br i1 %2, label %6, label %3, !dbg !4638

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4639
  %5 = icmp eq i32 %4, 0, !dbg !4639
  br i1 %5, label %6, label %8, !dbg !4640

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4641
  br label %16, !dbg !4642

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4643, metadata !DIExpression()), !dbg !4648
  %9 = load i32, ptr %0, align 8, !dbg !4650, !tbaa !4502
  %10 = and i32 %9, 256, !dbg !4652
  %11 = icmp eq i32 %10, 0, !dbg !4652
  br i1 %11, label %14, label %12, !dbg !4653

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !4654
  br label %14, !dbg !4654

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4655
  br label %16, !dbg !4656

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4635
  ret i32 %17, !dbg !4657
}

; Function Attrs: nofree nounwind
declare !dbg !4658 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4659 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4698, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i64 %1, metadata !4699, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i32 %2, metadata !4700, metadata !DIExpression()), !dbg !4704
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4705
  %5 = load ptr, ptr %4, align 8, !dbg !4705, !tbaa !4706
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4707
  %7 = load ptr, ptr %6, align 8, !dbg !4707, !tbaa !4708
  %8 = icmp eq ptr %5, %7, !dbg !4709
  br i1 %8, label %9, label %27, !dbg !4710

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4711
  %11 = load ptr, ptr %10, align 8, !dbg !4711, !tbaa !1181
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4712
  %13 = load ptr, ptr %12, align 8, !dbg !4712, !tbaa !4713
  %14 = icmp eq ptr %11, %13, !dbg !4714
  br i1 %14, label %15, label %27, !dbg !4715

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4716
  %17 = load ptr, ptr %16, align 8, !dbg !4716, !tbaa !4717
  %18 = icmp eq ptr %17, null, !dbg !4718
  br i1 %18, label %19, label %27, !dbg !4719

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4720
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !4721
  call void @llvm.dbg.value(metadata i64 %21, metadata !4701, metadata !DIExpression()), !dbg !4722
  %22 = icmp eq i64 %21, -1, !dbg !4723
  br i1 %22, label %29, label %23, !dbg !4725

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4726, !tbaa !4502
  %25 = and i32 %24, -17, !dbg !4726
  store i32 %25, ptr %0, align 8, !dbg !4726, !tbaa !4502
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4727
  store i64 %21, ptr %26, align 8, !dbg !4728, !tbaa !4729
  br label %29, !dbg !4730

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4731
  br label %29, !dbg !4732

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4704
  ret i32 %30, !dbg !4733
}

; Function Attrs: nofree nounwind
declare !dbg !4734 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4742, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata ptr %1, metadata !4743, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 %2, metadata !4744, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata ptr %3, metadata !4745, metadata !DIExpression()), !dbg !4747
  %5 = icmp eq ptr %1, null, !dbg !4748
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4750
  %7 = select i1 %5, ptr @.str.144, ptr %1, !dbg !4750
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %8, metadata !4744, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata ptr %7, metadata !4743, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata ptr %6, metadata !4742, metadata !DIExpression()), !dbg !4747
  %9 = icmp eq ptr %3, null, !dbg !4751
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4753
  call void @llvm.dbg.value(metadata ptr %10, metadata !4745, metadata !DIExpression()), !dbg !4747
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !4754
  call void @llvm.dbg.value(metadata i64 %11, metadata !4746, metadata !DIExpression()), !dbg !4747
  %12 = icmp ult i64 %11, -3, !dbg !4755
  br i1 %12, label %13, label %17, !dbg !4757

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !4758
  %15 = icmp eq i32 %14, 0, !dbg !4758
  br i1 %15, label %16, label %29, !dbg !4759

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4760, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata ptr %10, metadata !4767, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i64 8, metadata !4771, metadata !DIExpression()), !dbg !4772
  store i64 0, ptr %10, align 1, !dbg !4774
  br label %29, !dbg !4775

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4776
  br i1 %18, label %19, label %20, !dbg !4778

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4779
  unreachable, !dbg !4779

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4780

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !4782
  br i1 %23, label %29, label %24, !dbg !4783

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4784
  br i1 %25, label %29, label %26, !dbg !4787

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4788, !tbaa !900
  %28 = zext i8 %27 to i32, !dbg !4789
  store i32 %28, ptr %6, align 4, !dbg !4790, !tbaa !891
  br label %29, !dbg !4791

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4747
  ret i64 %30, !dbg !4792
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4793 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4799 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4801, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %1, metadata !4802, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %2, metadata !4803, metadata !DIExpression()), !dbg !4805
  %4 = icmp eq i64 %2, 0, !dbg !4806
  br i1 %4, label %8, label %5, !dbg !4806

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4806
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4806
  br i1 %7, label %13, label %8, !dbg !4806

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4804, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4805
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4804, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4805
  %9 = mul i64 %2, %1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 %9, metadata !4804, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata ptr %0, metadata !4808, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %9, metadata !4811, metadata !DIExpression()), !dbg !4812
  %10 = icmp eq i64 %9, 0, !dbg !4814
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4814
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4815
  br label %15, !dbg !4816

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4804, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4805
  %14 = tail call ptr @__errno_location() #41, !dbg !4817
  store i32 12, ptr %14, align 4, !dbg !4819, !tbaa !891
  br label %15, !dbg !4820

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4805
  ret ptr %16, !dbg !4821
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4822 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4826, metadata !DIExpression()), !dbg !4831
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4832
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4827, metadata !DIExpression()), !dbg !4833
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4834
  %4 = icmp eq i32 %3, 0, !dbg !4834
  br i1 %4, label %5, label %12, !dbg !4836

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4837, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr @.str.149, metadata !4840, metadata !DIExpression()), !dbg !4841
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.149, i64 2), !dbg !4844
  %7 = icmp eq i32 %6, 0, !dbg !4845
  br i1 %7, label %11, label %8, !dbg !4846

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4837, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata ptr @.str.1.150, metadata !4840, metadata !DIExpression()), !dbg !4847
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.150, i64 6), !dbg !4849
  %10 = icmp eq i32 %9, 0, !dbg !4850
  br i1 %10, label %11, label %12, !dbg !4851

11:                                               ; preds = %8, %5
  br label %12, !dbg !4852

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4831
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4853
  ret i1 %13, !dbg !4853
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4854 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4858, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata ptr %1, metadata !4859, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i64 %2, metadata !4860, metadata !DIExpression()), !dbg !4861
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4862
  ret i32 %4, !dbg !4863
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4864 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4868, metadata !DIExpression()), !dbg !4869
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4870
  ret ptr %2, !dbg !4871
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4872 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4874, metadata !DIExpression()), !dbg !4876
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4877
  call void @llvm.dbg.value(metadata ptr %2, metadata !4875, metadata !DIExpression()), !dbg !4876
  ret ptr %2, !dbg !4878
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4879 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4881, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr %1, metadata !4882, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i64 %2, metadata !4883, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 %0, metadata !4874, metadata !DIExpression()), !dbg !4889
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4891
  call void @llvm.dbg.value(metadata ptr %4, metadata !4875, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr %4, metadata !4884, metadata !DIExpression()), !dbg !4888
  %5 = icmp eq ptr %4, null, !dbg !4892
  br i1 %5, label %6, label %9, !dbg !4893

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4894
  br i1 %7, label %19, label %8, !dbg !4897

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4898, !tbaa !900
  br label %19, !dbg !4899

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4900
  call void @llvm.dbg.value(metadata i64 %10, metadata !4885, metadata !DIExpression()), !dbg !4901
  %11 = icmp ult i64 %10, %2, !dbg !4902
  br i1 %11, label %12, label %14, !dbg !4904

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4905
  call void @llvm.dbg.value(metadata ptr %1, metadata !4907, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.value(metadata ptr %4, metadata !4910, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.value(metadata i64 %13, metadata !4911, metadata !DIExpression()), !dbg !4912
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4914
  br label %19, !dbg !4915

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4916
  br i1 %15, label %19, label %16, !dbg !4919

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4920
  call void @llvm.dbg.value(metadata ptr %1, metadata !4907, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata ptr %4, metadata !4910, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i64 %17, metadata !4911, metadata !DIExpression()), !dbg !4922
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4924
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4925
  store i8 0, ptr %18, align 1, !dbg !4926, !tbaa !900
  br label %19, !dbg !4927

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4928
  ret i32 %20, !dbg !4929
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
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!76, !323, !327, !342, !680, !714, !402, !422, !436, !487, !716, !753, !672, !760, !794, !796, !798, !800, !802, !804, !696, !806, !809, !811, !813}
!llvm.ident = !{!815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815}
!llvm.module.flags = !{!816, !817, !818, !819, !820, !821, !822}

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
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !115, globals: !125, splitDebugInlining: false, nameTableKind: None)
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
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!323 = distinct !DICompileUnit(language: DW_LANG_C11, file: !320, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !324, splitDebugInlining: false, nameTableKind: None)
!324 = !{!318, !321}
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "file_name", scope: !327, file: !328, line: 45, type: !74, isLocal: true, isDefinition: true)
!327 = distinct !DICompileUnit(language: DW_LANG_C11, file: !328, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !329, splitDebugInlining: false, nameTableKind: None)
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
!341 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !342, file: !343, line: 66, type: !394, isLocal: false, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C11, file: !343, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !344, globals: !345, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!344 = !{!116, !122}
!345 = !{!346, !348, !373, !375, !377, !379, !340, !381, !383, !385, !387, !392}
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !343, line: 272, type: !128, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "old_file_name", scope: !350, file: !343, line: 304, type: !74, isLocal: true, isDefinition: true)
!350 = distinct !DISubprogram(name: "verror_at_line", scope: !343, file: !343, line: 298, type: !351, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !366)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !117, !117, !74, !80, !74, !353}
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !354, line: 52, baseType: !355)
!354 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !356, line: 14, baseType: !357)
!356 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !358, baseType: !359)
!358 = !DIFile(filename: "lib/error.c", directory: "/src")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !359, file: !358, baseType: !116, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !359, file: !358, baseType: !116, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !359, file: !358, baseType: !116, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !359, file: !358, baseType: !117, size: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !359, file: !358, baseType: !117, size: 32, offset: 224)
!366 = !{!367, !368, !369, !370, !371, !372}
!367 = !DILocalVariable(name: "status", arg: 1, scope: !350, file: !343, line: 298, type: !117)
!368 = !DILocalVariable(name: "errnum", arg: 2, scope: !350, file: !343, line: 298, type: !117)
!369 = !DILocalVariable(name: "file_name", arg: 3, scope: !350, file: !343, line: 298, type: !74)
!370 = !DILocalVariable(name: "line_number", arg: 4, scope: !350, file: !343, line: 298, type: !80)
!371 = !DILocalVariable(name: "message", arg: 5, scope: !350, file: !343, line: 298, type: !74)
!372 = !DILocalVariable(name: "args", arg: 6, scope: !350, file: !343, line: 298, type: !353)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "old_line_number", scope: !350, file: !343, line: 305, type: !80, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !343, line: 338, type: !135, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !343, line: 346, type: !167, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !343, line: 346, type: !142, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "error_message_count", scope: !342, file: !343, line: 69, type: !80, isLocal: false, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !342, file: !343, line: 295, type: !117, isLocal: false, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !343, line: 208, type: !162, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !343, line: 208, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 21)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !343, line: 214, type: !128, isLocal: true, isDefinition: true)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null}
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !399, line: 60, type: !142, isLocal: true, isDefinition: true)
!399 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "long_options", scope: !402, file: !399, line: 34, type: !410, isLocal: true, isDefinition: true)
!402 = distinct !DICompileUnit(language: DW_LANG_C11, file: !399, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !403, splitDebugInlining: false, nameTableKind: None)
!403 = !{!397, !404, !406, !408, !400}
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !399, line: 112, type: !41, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !399, line: 36, type: !128, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !399, line: 37, type: !167, isLocal: true, isDefinition: true)
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
!422 = distinct !DICompileUnit(language: DW_LANG_C11, file: !423, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !424, globals: !425, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!424 = !{!124}
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
!436 = distinct !DICompileUnit(language: DW_LANG_C11, file: !433, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !437, splitDebugInlining: false, nameTableKind: None)
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
!486 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !487, file: !463, line: 76, type: !559, isLocal: false, isDefinition: true)
!487 = distinct !DICompileUnit(language: DW_LANG_C11, file: !463, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !488, retainedTypes: !494, globals: !495, splitDebugInlining: false, nameTableKind: None)
!488 = !{!101, !489, !86}
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !102, line: 254, baseType: !80, size: 32, elements: !490)
!490 = !{!491, !492, !493}
!491 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!492 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!493 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!494 = !{!117, !118, !119}
!495 = !{!461, !464, !466, !471, !473, !475, !477, !479, !481, !483, !485, !496, !500, !510, !512, !517, !519, !521, !523, !525, !548, !555, !557}
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !487, file: !463, line: 92, type: !498, isLocal: false, isDefinition: true)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 320, elements: !47)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !487, file: !463, line: 1040, type: !502, isLocal: false, isDefinition: true)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !463, line: 56, size: 448, elements: !503)
!503 = !{!504, !505, !506, !508, !509}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !502, file: !463, line: 59, baseType: !101, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !463, line: 62, baseType: !117, size: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !502, file: !463, line: 66, baseType: !507, size: 256, offset: 64)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !168)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !502, file: !463, line: 69, baseType: !74, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !502, file: !463, line: 72, baseType: !74, size: 64, offset: 384)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !487, file: !463, line: 107, type: !502, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "slot0", scope: !487, file: !463, line: 831, type: !514, isLocal: true, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 256)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !463, line: 321, type: !142, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !463, line: 357, type: !142, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !463, line: 358, type: !142, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !463, line: 199, type: !162, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "quote", scope: !527, file: !463, line: 228, type: !546, isLocal: true, isDefinition: true)
!527 = distinct !DISubprogram(name: "gettext_quote", scope: !463, file: !463, line: 197, type: !528, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!74, !74, !101}
!530 = !{!531, !532, !533, !534, !535}
!531 = !DILocalVariable(name: "msgid", arg: 1, scope: !527, file: !463, line: 197, type: !74)
!532 = !DILocalVariable(name: "s", arg: 2, scope: !527, file: !463, line: 197, type: !101)
!533 = !DILocalVariable(name: "translation", scope: !527, file: !463, line: 199, type: !74)
!534 = !DILocalVariable(name: "w", scope: !527, file: !463, line: 229, type: !443)
!535 = !DILocalVariable(name: "mbs", scope: !527, file: !463, line: 230, type: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !449, line: 6, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !451, line: 21, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 13, size: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !538, file: !451, line: 15, baseType: !117, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !538, file: !451, line: 20, baseType: !542, size: 32, offset: 32)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !451, line: 16, size: 32, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !542, file: !451, line: 18, baseType: !80, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !542, file: !451, line: 19, baseType: !135, size: 32)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !547)
!547 = !{!144, !137}
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "slotvec", scope: !487, file: !463, line: 834, type: !550, isLocal: true, isDefinition: true)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !463, line: 823, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !551, file: !463, line: 825, baseType: !119, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !551, file: !463, line: 826, baseType: !124, size: 64, offset: 64)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "nslots", scope: !487, file: !463, line: 832, type: !117, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "slotvec0", scope: !487, file: !463, line: 833, type: !551, isLocal: true, isDefinition: true)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 704, elements: !561)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!561 = !{!562}
!562 = !DISubrange(count: 11)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !565, line: 347, type: !19, isLocal: true, isDefinition: true)
!565 = !DIFile(filename: "lib/readutmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "da68be8ee1104a39b5ac94d0be1eef81")
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !565, line: 398, type: !568, isLocal: true, isDefinition: true)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 9)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !565, line: 399, type: !142, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !565, line: 446, type: !162, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !565, line: 447, type: !41, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !579, line: 98, type: !580, isLocal: true, isDefinition: true)
!579 = !DIFile(filename: "./lib/boot-time-aux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "56a7f792a9c98183f316974c092e6a70")
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 29)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !579, line: 99, type: !580, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !579, line: 100, type: !389, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !579, line: 40, type: !468, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !579, line: 40, type: !151, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !593, line: 67, type: !235, isLocal: true, isDefinition: true)
!593 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !593, line: 69, type: !162, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !593, line: 83, type: !162, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !593, line: 83, type: !135, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !593, line: 85, type: !142, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !593, line: 88, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 171)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !593, line: 88, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 34)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !593, line: 105, type: !63, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !593, line: 109, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 23)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !593, line: 113, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 28)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !593, line: 120, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 32)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !593, line: 127, type: !631, isLocal: true, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 36)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !593, line: 134, type: !186, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !593, line: 142, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 44)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !593, line: 150, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 48)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !593, line: 159, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 52)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !593, line: 170, type: !653, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 60)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !593, line: 248, type: !309, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !593, line: 248, type: !211, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !593, line: 254, type: !309, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !593, line: 254, type: !19, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !593, line: 254, type: !186, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !593, line: 259, type: !3, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !593, line: 259, type: !580, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !672, file: !673, line: 26, type: !675, isLocal: false, isDefinition: true)
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !674, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!674 = !{!670}
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 47)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(name: "exit_failure", scope: !680, file: !681, line: 24, type: !683, isLocal: false, isDefinition: true)
!680 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !682, splitDebugInlining: false, nameTableKind: None)
!681 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!682 = !{!678}
!683 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !686, line: 34, type: !151, isLocal: true, isDefinition: true)
!686 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !686, line: 34, type: !162, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !686, line: 34, type: !58, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !693, line: 108, type: !41, isLocal: true, isDefinition: true)
!693 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "internal_state", scope: !696, file: !693, line: 97, type: !699, isLocal: true, isDefinition: true)
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !697, globals: !698, splitDebugInlining: false, nameTableKind: None)
!697 = !{!116, !119, !122}
!698 = !{!691, !694}
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !449, line: 6, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !451, line: 21, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 13, size: 64, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !701, file: !451, line: 15, baseType: !117, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !701, file: !451, line: 20, baseType: !705, size: 32, offset: 32)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !451, line: 16, size: 32, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !705, file: !451, line: 18, baseType: !80, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !705, file: !451, line: 19, baseType: !135, size: 32)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !711, line: 35, type: !142, isLocal: true, isDefinition: true)
!711 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !711, line: 35, type: !26, isLocal: true, isDefinition: true)
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !715, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !565, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !717, retainedTypes: !718, globals: !752, splitDebugInlining: false, nameTableKind: None)
!717 = !{!78}
!718 = !{!124, !116, !719, !750, !119}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !722, line: 55, size: 3200, elements: !723)
!722 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "d076be7f45ef793a8c3c4dd5282b1b1a")
!723 = !{!724, !726, !728, !729, !730, !731, !732, !737, !738, !746, !749}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !721, file: !722, line: 57, baseType: !725, size: 16)
!725 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !721, file: !722, line: 58, baseType: !727, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !287, line: 154, baseType: !117)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !721, file: !722, line: 59, baseType: !626, size: 256, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !721, file: !722, line: 61, baseType: !135, size: 32, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !721, file: !722, line: 63, baseType: !626, size: 256, offset: 352)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !721, file: !722, line: 65, baseType: !514, size: 2048, offset: 608)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !721, file: !722, line: 67, baseType: !733, size: 32, offset: 2656)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !722, line: 42, size: 32, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !733, file: !722, line: 45, baseType: !725, size: 16)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !733, file: !722, line: 46, baseType: !725, size: 16, offset: 16)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !721, file: !722, line: 81, baseType: !288, size: 64, offset: 2688)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !721, file: !722, line: 82, baseType: !739, size: 128, offset: 2752)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !740, line: 8, size: 128, elements: !741)
!740 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!741 = !{!742, !744}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !739, file: !740, line: 14, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !287, line: 160, baseType: !288)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !739, file: !740, line: 15, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !287, line: 162, baseType: !288)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !721, file: !722, line: 84, baseType: !747, size: 128, offset: 2880)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 128, elements: !136)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !287, line: 41, baseType: !117)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !721, file: !722, line: 85, baseType: !309, size: 160, offset: 3008)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !751, line: 87, baseType: !288)
!751 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!752 = !{!563, !566, !571, !573, !575, !577, !583, !585, !587, !589}
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !593, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !754, retainedTypes: !758, globals: !759, splitDebugInlining: false, nameTableKind: None)
!754 = !{!755}
!755 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !593, line: 40, baseType: !80, size: 32, elements: !756)
!756 = !{!757}
!757 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!758 = !{!116}
!759 = !{!591, !594, !596, !598, !600, !602, !607, !612, !614, !619, !624, !629, !634, !636, !641, !646, !651, !656, !658, !660, !662, !664, !666, !668}
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !762, retainedTypes: !793, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!762 = !{!763, !775}
!763 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !764, file: !761, line: 188, baseType: !80, size: 32, elements: !773)
!764 = distinct !DISubprogram(name: "x2nrealloc", scope: !761, file: !761, line: 176, type: !765, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !768)
!765 = !DISubroutineType(types: !766)
!766 = !{!116, !116, !767, !119}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!768 = !{!769, !770, !771, !772}
!769 = !DILocalVariable(name: "p", arg: 1, scope: !764, file: !761, line: 176, type: !116)
!770 = !DILocalVariable(name: "pn", arg: 2, scope: !764, file: !761, line: 176, type: !767)
!771 = !DILocalVariable(name: "s", arg: 3, scope: !764, file: !761, line: 176, type: !119)
!772 = !DILocalVariable(name: "n", scope: !764, file: !761, line: 178, type: !119)
!773 = !{!774}
!774 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!775 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !776, file: !761, line: 228, baseType: !80, size: 32, elements: !773)
!776 = distinct !DISubprogram(name: "xpalloc", scope: !761, file: !761, line: 223, type: !777, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !783)
!777 = !DISubroutineType(types: !778)
!778 = !{!116, !116, !779, !780, !782, !780}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !781, line: 130, baseType: !782)
!781 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !120, line: 35, baseType: !288)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792}
!784 = !DILocalVariable(name: "pa", arg: 1, scope: !776, file: !761, line: 223, type: !116)
!785 = !DILocalVariable(name: "pn", arg: 2, scope: !776, file: !761, line: 223, type: !779)
!786 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !776, file: !761, line: 223, type: !780)
!787 = !DILocalVariable(name: "n_max", arg: 4, scope: !776, file: !761, line: 223, type: !782)
!788 = !DILocalVariable(name: "s", arg: 5, scope: !776, file: !761, line: 223, type: !780)
!789 = !DILocalVariable(name: "n0", scope: !776, file: !761, line: 230, type: !780)
!790 = !DILocalVariable(name: "n", scope: !776, file: !761, line: 237, type: !780)
!791 = !DILocalVariable(name: "nbytes", scope: !776, file: !761, line: 248, type: !780)
!792 = !DILocalVariable(name: "adjusted_nbytes", scope: !776, file: !761, line: 252, type: !780)
!793 = !{!124, !116, !247, !288, !121}
!794 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !795, splitDebugInlining: false, nameTableKind: None)
!795 = !{!684, !687, !689}
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!798 = distinct !DICompileUnit(language: DW_LANG_C11, file: !799, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!799 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !803, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!803 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!804 = distinct !DICompileUnit(language: DW_LANG_C11, file: !805, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!805 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !808, splitDebugInlining: false, nameTableKind: None)
!807 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!808 = !{!247, !121, !116}
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !810, splitDebugInlining: false, nameTableKind: None)
!810 = !{!709, !712}
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !814, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!815 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!816 = !{i32 7, !"Dwarf Version", i32 5}
!817 = !{i32 2, !"Debug Info Version", i32 3}
!818 = !{i32 1, !"wchar_size", i32 4}
!819 = !{i32 8, !"PIC Level", i32 2}
!820 = !{i32 7, !"PIE Level", i32 2}
!821 = !{i32 7, !"uwtable", i32 2}
!822 = !{i32 7, !"frame-pointer", i32 1}
!823 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 96, type: !824, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !117}
!826 = !{!827}
!827 = !DILocalVariable(name: "status", arg: 1, scope: !823, file: !2, line: 96, type: !117)
!828 = !DILocation(line: 0, scope: !823)
!829 = !DILocation(line: 98, column: 14, scope: !830)
!830 = distinct !DILexicalBlock(scope: !823, file: !2, line: 98, column: 7)
!831 = !DILocation(line: 98, column: 7, scope: !823)
!832 = !DILocation(line: 99, column: 5, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !2, line: 99, column: 5)
!834 = !{!835, !835, i64 0}
!835 = !{!"any pointer", !836, i64 0}
!836 = !{!"omnipotent char", !837, i64 0}
!837 = !{!"Simple C/C++ TBAA"}
!838 = !DILocation(line: 102, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !830, file: !2, line: 101, column: 5)
!840 = !DILocation(line: 103, column: 7, scope: !839)
!841 = !DILocation(line: 109, column: 7, scope: !839)
!842 = !DILocation(line: 110, column: 7, scope: !839)
!843 = !DILocalVariable(name: "program", arg: 1, scope: !844, file: !71, line: 836, type: !74)
!844 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !71, file: !71, line: 836, type: !845, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !74}
!847 = !{!843, !848, !855, !856, !858, !859}
!848 = !DILocalVariable(name: "infomap", scope: !844, file: !71, line: 838, type: !849)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 896, elements: !163)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !844, file: !71, line: 838, size: 128, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !851, file: !71, line: 838, baseType: !74, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !851, file: !71, line: 838, baseType: !74, size: 64, offset: 64)
!855 = !DILocalVariable(name: "node", scope: !844, file: !71, line: 848, type: !74)
!856 = !DILocalVariable(name: "map_prog", scope: !844, file: !71, line: 849, type: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!858 = !DILocalVariable(name: "lc_messages", scope: !844, file: !71, line: 861, type: !74)
!859 = !DILocalVariable(name: "url_program", scope: !844, file: !71, line: 874, type: !74)
!860 = !DILocation(line: 0, scope: !844, inlinedAt: !861)
!861 = distinct !DILocation(line: 111, column: 7, scope: !839)
!862 = !DILocation(line: 857, column: 3, scope: !844, inlinedAt: !861)
!863 = !DILocation(line: 861, column: 29, scope: !844, inlinedAt: !861)
!864 = !DILocation(line: 862, column: 7, scope: !865, inlinedAt: !861)
!865 = distinct !DILexicalBlock(scope: !844, file: !71, line: 862, column: 7)
!866 = !DILocation(line: 862, column: 19, scope: !865, inlinedAt: !861)
!867 = !DILocation(line: 862, column: 22, scope: !865, inlinedAt: !861)
!868 = !DILocation(line: 862, column: 7, scope: !844, inlinedAt: !861)
!869 = !DILocation(line: 868, column: 7, scope: !870, inlinedAt: !861)
!870 = distinct !DILexicalBlock(scope: !865, file: !71, line: 863, column: 5)
!871 = !DILocation(line: 870, column: 5, scope: !870, inlinedAt: !861)
!872 = !DILocation(line: 875, column: 3, scope: !844, inlinedAt: !861)
!873 = !DILocation(line: 877, column: 3, scope: !844, inlinedAt: !861)
!874 = !DILocation(line: 113, column: 3, scope: !823)
!875 = !DISubprogram(name: "dcgettext", scope: !876, file: !876, line: 51, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!876 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!877 = !DISubroutineType(types: !878)
!878 = !{!124, !74, !74, !117}
!879 = !{}
!880 = !DISubprogram(name: "__fprintf_chk", scope: !881, file: !881, line: 93, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!881 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!882 = !DISubroutineType(types: !883)
!883 = !{!117, !884, !117, !885, null}
!884 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !260)
!885 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!886 = !DISubprogram(name: "__printf_chk", scope: !881, file: !881, line: 95, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!887 = !DISubroutineType(types: !888)
!888 = !{!117, !117, !885, null}
!889 = !DILocation(line: 0, scope: !70)
!890 = !DILocation(line: 581, column: 7, scope: !245)
!891 = !{!892, !892, i64 0}
!892 = !{!"int", !836, i64 0}
!893 = !DILocation(line: 581, column: 19, scope: !245)
!894 = !DILocation(line: 581, column: 7, scope: !70)
!895 = !DILocation(line: 585, column: 26, scope: !244)
!896 = !DILocation(line: 0, scope: !244)
!897 = !DILocation(line: 586, column: 23, scope: !244)
!898 = !DILocation(line: 586, column: 28, scope: !244)
!899 = !DILocation(line: 586, column: 32, scope: !244)
!900 = !{!836, !836, i64 0}
!901 = !DILocation(line: 586, column: 38, scope: !244)
!902 = !DILocalVariable(name: "__s1", arg: 1, scope: !903, file: !904, line: 1359, type: !74)
!903 = distinct !DISubprogram(name: "streq", scope: !904, file: !904, line: 1359, type: !905, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !907)
!904 = !DIFile(filename: "./lib/string.h", directory: "/src")
!905 = !DISubroutineType(types: !906)
!906 = !{!247, !74, !74}
!907 = !{!902, !908}
!908 = !DILocalVariable(name: "__s2", arg: 2, scope: !903, file: !904, line: 1359, type: !74)
!909 = !DILocation(line: 0, scope: !903, inlinedAt: !910)
!910 = distinct !DILocation(line: 586, column: 41, scope: !244)
!911 = !DILocation(line: 1361, column: 11, scope: !903, inlinedAt: !910)
!912 = !DILocation(line: 1361, column: 10, scope: !903, inlinedAt: !910)
!913 = !DILocation(line: 586, column: 19, scope: !244)
!914 = !DILocation(line: 587, column: 5, scope: !244)
!915 = !DILocation(line: 588, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !70, file: !71, line: 588, column: 7)
!917 = !DILocation(line: 588, column: 7, scope: !70)
!918 = !DILocation(line: 590, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !71, line: 589, column: 5)
!920 = !DILocation(line: 591, column: 7, scope: !919)
!921 = !DILocation(line: 595, column: 37, scope: !70)
!922 = !DILocation(line: 595, column: 35, scope: !70)
!923 = !DILocation(line: 596, column: 29, scope: !70)
!924 = !DILocation(line: 597, column: 8, scope: !253)
!925 = !DILocation(line: 597, column: 7, scope: !70)
!926 = !DILocation(line: 604, column: 24, scope: !252)
!927 = !DILocation(line: 604, column: 12, scope: !253)
!928 = !DILocation(line: 0, scope: !251)
!929 = !DILocation(line: 610, column: 16, scope: !251)
!930 = !DILocation(line: 610, column: 7, scope: !251)
!931 = !DILocation(line: 611, column: 21, scope: !251)
!932 = !{!933, !933, i64 0}
!933 = !{!"short", !836, i64 0}
!934 = !DILocation(line: 611, column: 19, scope: !251)
!935 = !DILocation(line: 611, column: 16, scope: !251)
!936 = !DILocation(line: 610, column: 30, scope: !251)
!937 = distinct !{!937, !930, !931, !938}
!938 = !{!"llvm.loop.mustprogress"}
!939 = !DILocation(line: 612, column: 18, scope: !940)
!940 = distinct !DILexicalBlock(scope: !251, file: !71, line: 612, column: 11)
!941 = !DILocation(line: 612, column: 11, scope: !251)
!942 = !DILocation(line: 620, column: 23, scope: !70)
!943 = !DILocation(line: 625, column: 39, scope: !70)
!944 = !DILocation(line: 626, column: 3, scope: !70)
!945 = !DILocation(line: 626, column: 10, scope: !70)
!946 = !DILocation(line: 626, column: 21, scope: !70)
!947 = !DILocation(line: 628, column: 44, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !71, line: 628, column: 11)
!949 = distinct !DILexicalBlock(scope: !70, file: !71, line: 627, column: 5)
!950 = !DILocation(line: 628, column: 32, scope: !948)
!951 = !DILocation(line: 628, column: 49, scope: !948)
!952 = !DILocation(line: 628, column: 11, scope: !949)
!953 = !DILocation(line: 630, column: 11, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !71, line: 630, column: 11)
!955 = !DILocation(line: 630, column: 11, scope: !949)
!956 = !DILocation(line: 632, column: 26, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !71, line: 632, column: 15)
!958 = distinct !DILexicalBlock(scope: !954, file: !71, line: 631, column: 9)
!959 = !DILocation(line: 632, column: 34, scope: !957)
!960 = !DILocation(line: 632, column: 37, scope: !957)
!961 = !DILocation(line: 632, column: 15, scope: !958)
!962 = !DILocation(line: 640, column: 16, scope: !949)
!963 = distinct !{!963, !944, !964, !938}
!964 = !DILocation(line: 641, column: 5, scope: !70)
!965 = !DILocation(line: 644, column: 3, scope: !70)
!966 = !DILocation(line: 0, scope: !903, inlinedAt: !967)
!967 = distinct !DILocation(line: 648, column: 31, scope: !70)
!968 = !DILocation(line: 0, scope: !903, inlinedAt: !969)
!969 = distinct !DILocation(line: 649, column: 31, scope: !70)
!970 = !DILocation(line: 0, scope: !903, inlinedAt: !971)
!971 = distinct !DILocation(line: 650, column: 31, scope: !70)
!972 = !DILocation(line: 0, scope: !903, inlinedAt: !973)
!973 = distinct !DILocation(line: 651, column: 31, scope: !70)
!974 = !DILocation(line: 0, scope: !903, inlinedAt: !975)
!975 = distinct !DILocation(line: 652, column: 31, scope: !70)
!976 = !DILocation(line: 0, scope: !903, inlinedAt: !977)
!977 = distinct !DILocation(line: 653, column: 31, scope: !70)
!978 = !DILocation(line: 0, scope: !903, inlinedAt: !979)
!979 = distinct !DILocation(line: 654, column: 31, scope: !70)
!980 = !DILocation(line: 0, scope: !903, inlinedAt: !981)
!981 = distinct !DILocation(line: 655, column: 31, scope: !70)
!982 = !DILocation(line: 0, scope: !903, inlinedAt: !983)
!983 = distinct !DILocation(line: 656, column: 31, scope: !70)
!984 = !DILocation(line: 0, scope: !903, inlinedAt: !985)
!985 = distinct !DILocation(line: 657, column: 31, scope: !70)
!986 = !DILocation(line: 663, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !70, file: !71, line: 663, column: 7)
!988 = !DILocation(line: 664, column: 7, scope: !987)
!989 = !DILocation(line: 664, column: 10, scope: !987)
!990 = !DILocation(line: 663, column: 7, scope: !70)
!991 = !DILocation(line: 669, column: 7, scope: !992)
!992 = distinct !DILexicalBlock(scope: !987, file: !71, line: 665, column: 5)
!993 = !DILocation(line: 671, column: 5, scope: !992)
!994 = !DILocation(line: 676, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !987, file: !71, line: 673, column: 5)
!996 = !DILocation(line: 679, column: 3, scope: !70)
!997 = !DILocation(line: 683, column: 3, scope: !70)
!998 = !DILocation(line: 686, column: 3, scope: !70)
!999 = !DILocation(line: 688, column: 3, scope: !70)
!1000 = !DILocation(line: 691, column: 3, scope: !70)
!1001 = !DILocation(line: 695, column: 3, scope: !70)
!1002 = !DILocation(line: 696, column: 1, scope: !70)
!1003 = !DISubprogram(name: "setlocale", scope: !1004, file: !1004, line: 122, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1004 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!124, !117, !74}
!1007 = !DISubprogram(name: "strncmp", scope: !1008, file: !1008, line: 159, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1008 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!117, !74, !74, !119}
!1011 = !DISubprogram(name: "fputs_unlocked", scope: !354, file: !354, line: 691, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!117, !885, !884}
!1014 = !DISubprogram(name: "exit", scope: !1015, file: !1015, line: 624, type: !824, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1015 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1016 = !DISubprogram(name: "getenv", scope: !1015, file: !1015, line: 641, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!124, !74}
!1019 = !DISubprogram(name: "strcmp", scope: !1008, file: !1008, line: 156, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!117, !74, !74}
!1022 = !DISubprogram(name: "strspn", scope: !1008, file: !1008, line: 297, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!121, !74, !74}
!1025 = !DISubprogram(name: "strchr", scope: !1008, file: !1008, line: 246, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!124, !74, !117}
!1028 = !DISubprogram(name: "__ctype_b_loc", scope: !87, file: !87, line: 79, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1034 = !DISubprogram(name: "strcspn", scope: !1008, file: !1008, line: 293, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1035 = !DISubprogram(name: "fwrite_unlocked", scope: !354, file: !354, line: 704, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!119, !1038, !119, !119, !884}
!1038 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1041 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 117, type: !1042, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!117, !117, !123}
!1044 = !{!1045, !1046}
!1045 = !DILocalVariable(name: "argc", arg: 1, scope: !1041, file: !2, line: 117, type: !117)
!1046 = !DILocalVariable(name: "argv", arg: 2, scope: !1041, file: !2, line: 117, type: !123)
!1047 = !DILocation(line: 0, scope: !1041)
!1048 = !DILocation(line: 120, column: 21, scope: !1041)
!1049 = !DILocation(line: 120, column: 3, scope: !1041)
!1050 = !DILocation(line: 121, column: 3, scope: !1041)
!1051 = !DILocation(line: 122, column: 3, scope: !1041)
!1052 = !DILocation(line: 123, column: 3, scope: !1041)
!1053 = !DILocation(line: 125, column: 3, scope: !1041)
!1054 = !DILocation(line: 128, column: 36, scope: !1041)
!1055 = !DILocation(line: 128, column: 58, scope: !1041)
!1056 = !DILocation(line: 127, column: 3, scope: !1041)
!1057 = !DILocation(line: 131, column: 18, scope: !1041)
!1058 = !DILocation(line: 131, column: 16, scope: !1041)
!1059 = !DILocation(line: 131, column: 3, scope: !1041)
!1060 = !DILocation(line: 134, column: 7, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 132, column: 5)
!1062 = !DILocation(line: 135, column: 7, scope: !1061)
!1063 = !DILocation(line: 138, column: 14, scope: !1061)
!1064 = !DILocation(line: 138, column: 7, scope: !1061)
!1065 = !DILocation(line: 139, column: 7, scope: !1061)
!1066 = !DILocation(line: 142, column: 7, scope: !1061)
!1067 = !DILocation(line: 143, column: 7, scope: !1061)
!1068 = !DILocation(line: 146, column: 3, scope: !1041)
!1069 = !DISubprogram(name: "bindtextdomain", scope: !876, file: !876, line: 86, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!124, !74, !74}
!1072 = !DISubprogram(name: "textdomain", scope: !876, file: !876, line: 82, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1073 = !DISubprogram(name: "atexit", scope: !1015, file: !1015, line: 602, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!117, !394}
!1076 = distinct !DISubprogram(name: "users", scope: !2, file: !2, line: 82, type: !1077, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1079)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !74, !117}
!1079 = !{!1080, !1081, !1082, !1083}
!1080 = !DILocalVariable(name: "filename", arg: 1, scope: !1076, file: !2, line: 82, type: !74)
!1081 = !DILocalVariable(name: "options", arg: 2, scope: !1076, file: !2, line: 82, type: !117)
!1082 = !DILocalVariable(name: "n_users", scope: !1076, file: !2, line: 84, type: !780)
!1083 = !DILocalVariable(name: "utmp_buf", scope: !1076, file: !2, line: 85, type: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !79, line: 92, baseType: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !79, line: 65, size: 576, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1099, !1102, !1103, !1104}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !1086, file: !79, line: 69, baseType: !124, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !1086, file: !79, line: 70, baseType: !124, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !1086, file: !79, line: 71, baseType: !124, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !1086, file: !79, line: 72, baseType: !124, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !1086, file: !79, line: 74, baseType: !1093, size: 128, offset: 256)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1094, line: 11, size: 128, elements: !1095)
!1094 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1093, file: !1094, line: 16, baseType: !743, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1093, file: !1094, line: 21, baseType: !1098, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !287, line: 197, baseType: !288)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !1086, file: !79, line: 75, baseType: !1100, size: 32, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1101, line: 97, baseType: !727)
!1101 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !1086, file: !79, line: 76, baseType: !1100, size: 32, offset: 416)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !1086, file: !79, line: 77, baseType: !725, size: 16, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !1086, file: !79, line: 79, baseType: !1105, size: 64, offset: 480)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1086, file: !79, line: 79, size: 64, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !1105, file: !79, line: 79, baseType: !117, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !1105, file: !79, line: 79, baseType: !117, size: 32, offset: 32)
!1109 = !DILocation(line: 0, scope: !1076)
!1110 = !DILocation(line: 84, column: 3, scope: !1076)
!1111 = !DILocation(line: 85, column: 3, scope: !1076)
!1112 = !DILocation(line: 86, column: 11, scope: !1076)
!1113 = !DILocation(line: 87, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 87, column: 7)
!1115 = !DILocation(line: 87, column: 58, scope: !1114)
!1116 = !DILocation(line: 87, column: 7, scope: !1076)
!1117 = !DILocation(line: 88, column: 5, scope: !1114)
!1118 = !DILocation(line: 90, column: 23, scope: !1076)
!1119 = !{!1120, !1120, i64 0}
!1120 = !{!"long", !836, i64 0}
!1121 = !DILocation(line: 90, column: 32, scope: !1076)
!1122 = !DILocalVariable(name: "n", arg: 1, scope: !1123, file: !2, line: 45, type: !780)
!1123 = distinct !DISubprogram(name: "list_entries_users", scope: !2, file: !2, line: 45, type: !1124, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1128)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !780, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1128 = !{!1122, !1129, !1130, !1131, !1132, !1136, !1138, !1141}
!1129 = !DILocalVariable(name: "this", arg: 2, scope: !1123, file: !2, line: 45, type: !1126)
!1130 = !DILocalVariable(name: "u", scope: !1123, file: !2, line: 47, type: !123)
!1131 = !DILocalVariable(name: "n_entries", scope: !1123, file: !2, line: 48, type: !780)
!1132 = !DILocalVariable(name: "trimmed_name", scope: !1133, file: !2, line: 54, type: !124)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 53, column: 9)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 52, column: 11)
!1135 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 51, column: 5)
!1136 = !DILocalVariable(name: "i", scope: !1137, file: !2, line: 66, type: !780)
!1137 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 66, column: 3)
!1138 = !DILocalVariable(name: "c", scope: !1139, file: !2, line: 68, type: !4)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 67, column: 5)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 66, column: 3)
!1141 = !DILocalVariable(name: "i", scope: !1142, file: !2, line: 73, type: !780)
!1142 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 73, column: 3)
!1143 = !DILocation(line: 0, scope: !1123, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 90, column: 3, scope: !1076)
!1145 = !DILocation(line: 47, column: 14, scope: !1123, inlinedAt: !1144)
!1146 = !DILocation(line: 50, column: 3, scope: !1123, inlinedAt: !1144)
!1147 = !DILocation(line: 64, column: 3, scope: !1123, inlinedAt: !1144)
!1148 = !DILocation(line: 0, scope: !1137, inlinedAt: !1144)
!1149 = !DILocation(line: 66, column: 3, scope: !1137, inlinedAt: !1144)
!1150 = !DILocation(line: 50, column: 11, scope: !1123, inlinedAt: !1144)
!1151 = !DILocation(line: 52, column: 11, scope: !1134, inlinedAt: !1144)
!1152 = !{!1153, !835, i64 0}
!1153 = !{!"gl_utmp", !835, i64 0, !835, i64 8, !835, i64 16, !835, i64 24, !1154, i64 32, !892, i64 48, !892, i64 52, !933, i64 56, !1155, i64 60}
!1154 = !{!"timespec", !1120, i64 0, !1120, i64 8}
!1155 = !{!"", !892, i64 0, !892, i64 4}
!1156 = !{!1153, !933, i64 56}
!1157 = !DILocation(line: 52, column: 11, scope: !1135, inlinedAt: !1144)
!1158 = !DILocation(line: 56, column: 26, scope: !1133, inlinedAt: !1144)
!1159 = !DILocation(line: 0, scope: !1133, inlinedAt: !1144)
!1160 = !DILocation(line: 58, column: 11, scope: !1133, inlinedAt: !1144)
!1161 = !DILocation(line: 58, column: 24, scope: !1133, inlinedAt: !1144)
!1162 = !DILocation(line: 59, column: 11, scope: !1133, inlinedAt: !1144)
!1163 = !DILocation(line: 60, column: 9, scope: !1133, inlinedAt: !1144)
!1164 = !DILocation(line: 61, column: 11, scope: !1135, inlinedAt: !1144)
!1165 = distinct !{!1165, !1146, !1166, !938}
!1166 = !DILocation(line: 62, column: 5, scope: !1123, inlinedAt: !1144)
!1167 = !DILocation(line: 66, column: 23, scope: !1140, inlinedAt: !1144)
!1168 = !DILocation(line: 68, column: 19, scope: !1139, inlinedAt: !1144)
!1169 = !DILocation(line: 0, scope: !1139, inlinedAt: !1144)
!1170 = !DILocation(line: 69, column: 7, scope: !1139, inlinedAt: !1144)
!1171 = !DILocation(line: 70, column: 7, scope: !1139, inlinedAt: !1144)
!1172 = !DILocalVariable(name: "__c", arg: 1, scope: !1173, file: !1174, line: 108, type: !117)
!1173 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1174, file: !1174, line: 108, type: !1175, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1177)
!1174 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!117, !117}
!1177 = !{!1172}
!1178 = !DILocation(line: 0, scope: !1173, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 70, column: 7, scope: !1139, inlinedAt: !1144)
!1180 = !DILocation(line: 110, column: 10, scope: !1173, inlinedAt: !1179)
!1181 = !{!1182, !835, i64 40}
!1182 = !{!"_IO_FILE", !892, i64 0, !835, i64 8, !835, i64 16, !835, i64 24, !835, i64 32, !835, i64 40, !835, i64 48, !835, i64 56, !835, i64 64, !835, i64 72, !835, i64 80, !835, i64 88, !835, i64 96, !835, i64 104, !892, i64 112, !892, i64 116, !1120, i64 120, !933, i64 128, !836, i64 130, !836, i64 131, !835, i64 136, !1120, i64 144, !835, i64 152, !835, i64 160, !835, i64 168, !835, i64 176, !1120, i64 184, !892, i64 192, !836, i64 196}
!1183 = !{!1182, !835, i64 48}
!1184 = !{!"branch_weights", i32 2000, i32 1}
!1185 = !DILocation(line: 66, column: 37, scope: !1140, inlinedAt: !1144)
!1186 = distinct !{!1186, !1149, !1187, !938}
!1187 = !DILocation(line: 71, column: 5, scope: !1137, inlinedAt: !1144)
!1188 = !DILocation(line: 0, scope: !1142, inlinedAt: !1144)
!1189 = !DILocation(line: 74, column: 11, scope: !1190, inlinedAt: !1144)
!1190 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 73, column: 3)
!1191 = !DILocation(line: 74, column: 5, scope: !1190, inlinedAt: !1144)
!1192 = !DILocation(line: 73, column: 37, scope: !1190, inlinedAt: !1144)
!1193 = !DILocation(line: 73, column: 23, scope: !1190, inlinedAt: !1144)
!1194 = !DILocation(line: 73, column: 3, scope: !1142, inlinedAt: !1144)
!1195 = distinct !{!1195, !1194, !1196, !938}
!1196 = !DILocation(line: 74, column: 15, scope: !1142, inlinedAt: !1144)
!1197 = !DILocation(line: 75, column: 3, scope: !1123, inlinedAt: !1144)
!1198 = !DILocation(line: 92, column: 9, scope: !1076)
!1199 = !DILocation(line: 92, column: 3, scope: !1076)
!1200 = !DILocation(line: 93, column: 1, scope: !1076)
!1201 = !DISubprogram(name: "__errno_location", scope: !1202, file: !1202, line: 37, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1202 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!418}
!1205 = distinct !DISubprogram(name: "userid_compare", scope: !2, file: !2, line: 37, type: !1206, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!117, !1039, !1039}
!1208 = !{!1209, !1210, !1211, !1212}
!1209 = !DILocalVariable(name: "v_a", arg: 1, scope: !1205, file: !2, line: 37, type: !1039)
!1210 = !DILocalVariable(name: "v_b", arg: 2, scope: !1205, file: !2, line: 37, type: !1039)
!1211 = !DILocalVariable(name: "a", scope: !1205, file: !2, line: 39, type: !123)
!1212 = !DILocalVariable(name: "b", scope: !1205, file: !2, line: 40, type: !123)
!1213 = !DILocation(line: 0, scope: !1205)
!1214 = !DILocation(line: 41, column: 18, scope: !1205)
!1215 = !DILocation(line: 41, column: 22, scope: !1205)
!1216 = !DILocation(line: 41, column: 10, scope: !1205)
!1217 = !DILocation(line: 41, column: 3, scope: !1205)
!1218 = !DISubprogram(name: "qsort", scope: !1015, file: !1015, line: 838, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !116, !119, !119, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1015, line: 816, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1223 = !DISubprogram(name: "__overflow", scope: !354, file: !354, line: 886, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!117, !260, !117}
!1226 = !DISubprogram(name: "free", scope: !1015, file: !1015, line: 555, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !116}
!1229 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !328, file: !328, line: 50, type: !845, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1230)
!1230 = !{!1231}
!1231 = !DILocalVariable(name: "file", arg: 1, scope: !1229, file: !328, line: 50, type: !74)
!1232 = !DILocation(line: 0, scope: !1229)
!1233 = !DILocation(line: 52, column: 13, scope: !1229)
!1234 = !DILocation(line: 53, column: 1, scope: !1229)
!1235 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !328, file: !328, line: 87, type: !1236, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !247}
!1238 = !{!1239}
!1239 = !DILocalVariable(name: "ignore", arg: 1, scope: !1235, file: !328, line: 87, type: !247)
!1240 = !DILocation(line: 0, scope: !1235)
!1241 = !DILocation(line: 89, column: 16, scope: !1235)
!1242 = !{!1243, !1243, i64 0}
!1243 = !{!"_Bool", !836, i64 0}
!1244 = !DILocation(line: 90, column: 1, scope: !1235)
!1245 = distinct !DISubprogram(name: "close_stdout", scope: !328, file: !328, line: 116, type: !395, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1246)
!1246 = !{!1247}
!1247 = !DILocalVariable(name: "write_error", scope: !1248, file: !328, line: 121, type: !74)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !328, line: 120, column: 5)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !328, line: 118, column: 7)
!1250 = !DILocation(line: 118, column: 21, scope: !1249)
!1251 = !DILocation(line: 118, column: 7, scope: !1249)
!1252 = !DILocation(line: 118, column: 29, scope: !1249)
!1253 = !DILocation(line: 119, column: 7, scope: !1249)
!1254 = !DILocation(line: 119, column: 12, scope: !1249)
!1255 = !{i8 0, i8 2}
!1256 = !DILocation(line: 119, column: 25, scope: !1249)
!1257 = !DILocation(line: 119, column: 28, scope: !1249)
!1258 = !DILocation(line: 119, column: 34, scope: !1249)
!1259 = !DILocation(line: 118, column: 7, scope: !1245)
!1260 = !DILocation(line: 121, column: 33, scope: !1248)
!1261 = !DILocation(line: 0, scope: !1248)
!1262 = !DILocation(line: 122, column: 11, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1248, file: !328, line: 122, column: 11)
!1264 = !DILocation(line: 0, scope: !1263)
!1265 = !DILocation(line: 122, column: 11, scope: !1248)
!1266 = !DILocation(line: 123, column: 9, scope: !1263)
!1267 = !DILocation(line: 126, column: 9, scope: !1263)
!1268 = !DILocation(line: 128, column: 14, scope: !1248)
!1269 = !DILocation(line: 128, column: 7, scope: !1248)
!1270 = !DILocation(line: 133, column: 42, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1245, file: !328, line: 133, column: 7)
!1272 = !DILocation(line: 133, column: 28, scope: !1271)
!1273 = !DILocation(line: 133, column: 50, scope: !1271)
!1274 = !DILocation(line: 133, column: 7, scope: !1245)
!1275 = !DILocation(line: 134, column: 12, scope: !1271)
!1276 = !DILocation(line: 134, column: 5, scope: !1271)
!1277 = !DILocation(line: 135, column: 1, scope: !1245)
!1278 = !DISubprogram(name: "_exit", scope: !1279, file: !1279, line: 624, type: !824, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1279 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1280 = distinct !DISubprogram(name: "verror", scope: !343, file: !343, line: 251, type: !1281, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !117, !117, !74, !353}
!1283 = !{!1284, !1285, !1286, !1287}
!1284 = !DILocalVariable(name: "status", arg: 1, scope: !1280, file: !343, line: 251, type: !117)
!1285 = !DILocalVariable(name: "errnum", arg: 2, scope: !1280, file: !343, line: 251, type: !117)
!1286 = !DILocalVariable(name: "message", arg: 3, scope: !1280, file: !343, line: 251, type: !74)
!1287 = !DILocalVariable(name: "args", arg: 4, scope: !1280, file: !343, line: 251, type: !353)
!1288 = !DILocation(line: 0, scope: !1280)
!1289 = !DILocation(line: 251, column: 1, scope: !1280)
!1290 = !DILocation(line: 261, column: 3, scope: !1280)
!1291 = !DILocation(line: 265, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1280, file: !343, line: 265, column: 7)
!1293 = !DILocation(line: 265, column: 7, scope: !1280)
!1294 = !DILocation(line: 266, column: 5, scope: !1292)
!1295 = !DILocation(line: 272, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !343, line: 268, column: 5)
!1297 = !DILocation(line: 276, column: 3, scope: !1280)
!1298 = !{i64 0, i64 8, !834, i64 8, i64 8, !834, i64 16, i64 8, !834, i64 24, i64 4, !891, i64 28, i64 4, !891}
!1299 = !DILocation(line: 282, column: 1, scope: !1280)
!1300 = distinct !DISubprogram(name: "flush_stdout", scope: !343, file: !343, line: 163, type: !395, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1301)
!1301 = !{!1302}
!1302 = !DILocalVariable(name: "stdout_fd", scope: !1300, file: !343, line: 166, type: !117)
!1303 = !DILocation(line: 0, scope: !1300)
!1304 = !DILocalVariable(name: "fd", arg: 1, scope: !1305, file: !343, line: 145, type: !117)
!1305 = distinct !DISubprogram(name: "is_open", scope: !343, file: !343, line: 145, type: !1175, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1306)
!1306 = !{!1304}
!1307 = !DILocation(line: 0, scope: !1305, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 182, column: 25, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1300, file: !343, line: 182, column: 7)
!1310 = !DILocation(line: 157, column: 15, scope: !1305, inlinedAt: !1308)
!1311 = !DILocation(line: 157, column: 12, scope: !1305, inlinedAt: !1308)
!1312 = !DILocation(line: 182, column: 7, scope: !1300)
!1313 = !DILocation(line: 184, column: 5, scope: !1309)
!1314 = !DILocation(line: 185, column: 1, scope: !1300)
!1315 = distinct !DISubprogram(name: "error_tail", scope: !343, file: !343, line: 219, type: !1281, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1316)
!1316 = !{!1317, !1318, !1319, !1320}
!1317 = !DILocalVariable(name: "status", arg: 1, scope: !1315, file: !343, line: 219, type: !117)
!1318 = !DILocalVariable(name: "errnum", arg: 2, scope: !1315, file: !343, line: 219, type: !117)
!1319 = !DILocalVariable(name: "message", arg: 3, scope: !1315, file: !343, line: 219, type: !74)
!1320 = !DILocalVariable(name: "args", arg: 4, scope: !1315, file: !343, line: 219, type: !353)
!1321 = !DILocation(line: 0, scope: !1315)
!1322 = !DILocation(line: 219, column: 1, scope: !1315)
!1323 = !DILocation(line: 229, column: 13, scope: !1315)
!1324 = !DILocation(line: 135, column: 10, scope: !1325, inlinedAt: !1367)
!1325 = distinct !DISubprogram(name: "vfprintf", scope: !881, file: !881, line: 132, type: !1326, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1363)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!117, !1328, !885, !355}
!1328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1331, file: !264, line: 51, baseType: !117, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1331, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1331, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1331, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1331, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1331, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1331, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1331, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1331, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1331, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1331, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1331, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1331, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1331, file: !264, line: 70, baseType: !1347, size: 64, offset: 832)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1331, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1331, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1331, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1331, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1331, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1331, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1331, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1331, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1331, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1331, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1331, file: !264, line: 93, baseType: !1347, size: 64, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1331, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1331, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1331, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1331, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!1363 = !{!1364, !1365, !1366}
!1364 = !DILocalVariable(name: "__stream", arg: 1, scope: !1325, file: !881, line: 132, type: !1328)
!1365 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1325, file: !881, line: 133, type: !885)
!1366 = !DILocalVariable(name: "__ap", arg: 3, scope: !1325, file: !881, line: 133, type: !355)
!1367 = distinct !DILocation(line: 229, column: 3, scope: !1315)
!1368 = !{!1369, !1371}
!1369 = distinct !{!1369, !1370, !"vfprintf.inline: argument 0"}
!1370 = distinct !{!1370, !"vfprintf.inline"}
!1371 = distinct !{!1371, !1370, !"vfprintf.inline: argument 1"}
!1372 = !DILocation(line: 229, column: 3, scope: !1315)
!1373 = !DILocation(line: 0, scope: !1325, inlinedAt: !1367)
!1374 = !DILocation(line: 133, column: 49, scope: !1325, inlinedAt: !1367)
!1375 = !DILocation(line: 232, column: 3, scope: !1315)
!1376 = !DILocation(line: 233, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1315, file: !343, line: 233, column: 7)
!1378 = !DILocation(line: 233, column: 7, scope: !1315)
!1379 = !DILocalVariable(name: "errnum", arg: 1, scope: !1380, file: !343, line: 188, type: !117)
!1380 = distinct !DISubprogram(name: "print_errno_message", scope: !343, file: !343, line: 188, type: !824, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1381)
!1381 = !{!1379, !1382, !1383}
!1382 = !DILocalVariable(name: "s", scope: !1380, file: !343, line: 190, type: !74)
!1383 = !DILocalVariable(name: "errbuf", scope: !1380, file: !343, line: 193, type: !1384)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 1024)
!1387 = !DILocation(line: 0, scope: !1380, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 234, column: 5, scope: !1377)
!1389 = !DILocation(line: 193, column: 3, scope: !1380, inlinedAt: !1388)
!1390 = !DILocation(line: 193, column: 8, scope: !1380, inlinedAt: !1388)
!1391 = !DILocation(line: 195, column: 7, scope: !1380, inlinedAt: !1388)
!1392 = !DILocation(line: 207, column: 9, scope: !1393, inlinedAt: !1388)
!1393 = distinct !DILexicalBlock(scope: !1380, file: !343, line: 207, column: 7)
!1394 = !DILocation(line: 207, column: 7, scope: !1380, inlinedAt: !1388)
!1395 = !DILocation(line: 208, column: 9, scope: !1393, inlinedAt: !1388)
!1396 = !DILocation(line: 208, column: 5, scope: !1393, inlinedAt: !1388)
!1397 = !DILocation(line: 214, column: 3, scope: !1380, inlinedAt: !1388)
!1398 = !DILocation(line: 216, column: 1, scope: !1380, inlinedAt: !1388)
!1399 = !DILocation(line: 234, column: 5, scope: !1377)
!1400 = !DILocation(line: 238, column: 3, scope: !1315)
!1401 = !DILocalVariable(name: "__c", arg: 1, scope: !1402, file: !1174, line: 101, type: !117)
!1402 = distinct !DISubprogram(name: "putc_unlocked", scope: !1174, file: !1174, line: 101, type: !1403, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!117, !117, !1329}
!1405 = !{!1401, !1406}
!1406 = !DILocalVariable(name: "__stream", arg: 2, scope: !1402, file: !1174, line: 101, type: !1329)
!1407 = !DILocation(line: 0, scope: !1402, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 238, column: 3, scope: !1315)
!1409 = !DILocation(line: 103, column: 10, scope: !1402, inlinedAt: !1408)
!1410 = !DILocation(line: 240, column: 3, scope: !1315)
!1411 = !DILocation(line: 241, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1315, file: !343, line: 241, column: 7)
!1413 = !DILocation(line: 241, column: 7, scope: !1315)
!1414 = !DILocation(line: 242, column: 5, scope: !1412)
!1415 = !DILocation(line: 243, column: 1, scope: !1315)
!1416 = !DISubprogram(name: "__vfprintf_chk", scope: !881, file: !881, line: 96, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!117, !1328, !117, !885, !355}
!1419 = !DISubprogram(name: "strerror_r", scope: !1008, file: !1008, line: 444, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!124, !117, !124, !119}
!1422 = !DISubprogram(name: "fflush_unlocked", scope: !354, file: !354, line: 239, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!117, !1329}
!1425 = !DISubprogram(name: "fcntl", scope: !1426, file: !1426, line: 149, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1426 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!117, !117, !117, null}
!1429 = distinct !DISubprogram(name: "error", scope: !343, file: !343, line: 285, type: !1430, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !117, !117, !74, null}
!1432 = !{!1433, !1434, !1435, !1436}
!1433 = !DILocalVariable(name: "status", arg: 1, scope: !1429, file: !343, line: 285, type: !117)
!1434 = !DILocalVariable(name: "errnum", arg: 2, scope: !1429, file: !343, line: 285, type: !117)
!1435 = !DILocalVariable(name: "message", arg: 3, scope: !1429, file: !343, line: 285, type: !74)
!1436 = !DILocalVariable(name: "ap", scope: !1429, file: !343, line: 287, type: !353)
!1437 = !DILocation(line: 0, scope: !1429)
!1438 = !DILocation(line: 287, column: 3, scope: !1429)
!1439 = !DILocation(line: 287, column: 11, scope: !1429)
!1440 = !DILocation(line: 288, column: 3, scope: !1429)
!1441 = !DILocation(line: 289, column: 3, scope: !1429)
!1442 = !DILocation(line: 290, column: 3, scope: !1429)
!1443 = !DILocation(line: 291, column: 1, scope: !1429)
!1444 = !DILocation(line: 0, scope: !350)
!1445 = !DILocation(line: 298, column: 1, scope: !350)
!1446 = !DILocation(line: 302, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !350, file: !343, line: 302, column: 7)
!1448 = !DILocation(line: 302, column: 7, scope: !350)
!1449 = !DILocation(line: 307, column: 11, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !343, line: 307, column: 11)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !343, line: 303, column: 5)
!1452 = !DILocation(line: 307, column: 27, scope: !1450)
!1453 = !DILocation(line: 308, column: 11, scope: !1450)
!1454 = !DILocation(line: 308, column: 28, scope: !1450)
!1455 = !DILocation(line: 308, column: 25, scope: !1450)
!1456 = !DILocation(line: 309, column: 15, scope: !1450)
!1457 = !DILocation(line: 309, column: 33, scope: !1450)
!1458 = !DILocation(line: 310, column: 19, scope: !1450)
!1459 = !DILocation(line: 311, column: 22, scope: !1450)
!1460 = !DILocation(line: 311, column: 56, scope: !1450)
!1461 = !DILocation(line: 307, column: 11, scope: !1451)
!1462 = !DILocation(line: 316, column: 21, scope: !1451)
!1463 = !DILocation(line: 317, column: 23, scope: !1451)
!1464 = !DILocation(line: 318, column: 5, scope: !1451)
!1465 = !DILocation(line: 327, column: 3, scope: !350)
!1466 = !DILocation(line: 331, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !350, file: !343, line: 331, column: 7)
!1468 = !DILocation(line: 331, column: 7, scope: !350)
!1469 = !DILocation(line: 332, column: 5, scope: !1467)
!1470 = !DILocation(line: 338, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !343, line: 334, column: 5)
!1472 = !DILocation(line: 346, column: 3, scope: !350)
!1473 = !DILocation(line: 350, column: 3, scope: !350)
!1474 = !DILocation(line: 356, column: 1, scope: !350)
!1475 = distinct !DISubprogram(name: "error_at_line", scope: !343, file: !343, line: 359, type: !1476, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !117, !117, !74, !80, !74, null}
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484}
!1479 = !DILocalVariable(name: "status", arg: 1, scope: !1475, file: !343, line: 359, type: !117)
!1480 = !DILocalVariable(name: "errnum", arg: 2, scope: !1475, file: !343, line: 359, type: !117)
!1481 = !DILocalVariable(name: "file_name", arg: 3, scope: !1475, file: !343, line: 359, type: !74)
!1482 = !DILocalVariable(name: "line_number", arg: 4, scope: !1475, file: !343, line: 360, type: !80)
!1483 = !DILocalVariable(name: "message", arg: 5, scope: !1475, file: !343, line: 360, type: !74)
!1484 = !DILocalVariable(name: "ap", scope: !1475, file: !343, line: 362, type: !353)
!1485 = !DILocation(line: 0, scope: !1475)
!1486 = !DILocation(line: 362, column: 3, scope: !1475)
!1487 = !DILocation(line: 362, column: 11, scope: !1475)
!1488 = !DILocation(line: 363, column: 3, scope: !1475)
!1489 = !DILocation(line: 364, column: 3, scope: !1475)
!1490 = !DILocation(line: 366, column: 3, scope: !1475)
!1491 = !DILocation(line: 367, column: 1, scope: !1475)
!1492 = distinct !DISubprogram(name: "getprogname", scope: !715, file: !715, line: 54, type: !1493, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !879)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!74}
!1495 = !DILocation(line: 58, column: 10, scope: !1492)
!1496 = !DILocation(line: 58, column: 3, scope: !1492)
!1497 = distinct !DISubprogram(name: "parse_long_options", scope: !399, file: !399, line: 45, type: !1498, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !1501)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !117, !123, !74, !74, !74, !1500, null}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1512}
!1502 = !DILocalVariable(name: "argc", arg: 1, scope: !1497, file: !399, line: 45, type: !117)
!1503 = !DILocalVariable(name: "argv", arg: 2, scope: !1497, file: !399, line: 46, type: !123)
!1504 = !DILocalVariable(name: "command_name", arg: 3, scope: !1497, file: !399, line: 47, type: !74)
!1505 = !DILocalVariable(name: "package", arg: 4, scope: !1497, file: !399, line: 48, type: !74)
!1506 = !DILocalVariable(name: "version", arg: 5, scope: !1497, file: !399, line: 49, type: !74)
!1507 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1497, file: !399, line: 50, type: !1500)
!1508 = !DILocalVariable(name: "saved_opterr", scope: !1497, file: !399, line: 53, type: !117)
!1509 = !DILocalVariable(name: "c", scope: !1510, file: !399, line: 60, type: !117)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !399, line: 59, column: 5)
!1511 = distinct !DILexicalBlock(scope: !1497, file: !399, line: 58, column: 7)
!1512 = !DILocalVariable(name: "authors", scope: !1513, file: !399, line: 71, type: !1517)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !399, line: 70, column: 15)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !399, line: 64, column: 13)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !399, line: 62, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !399, line: 61, column: 11)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !354, line: 52, baseType: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !356, line: 14, baseType: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1520, baseType: !1521)
!1520 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1521, file: !1520, line: 71, baseType: !116, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1521, file: !1520, line: 71, baseType: !116, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1521, file: !1520, line: 71, baseType: !116, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1521, file: !1520, line: 71, baseType: !117, size: 32, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1521, file: !1520, line: 71, baseType: !117, size: 32, offset: 224)
!1528 = !DILocation(line: 0, scope: !1497)
!1529 = !DILocation(line: 53, column: 22, scope: !1497)
!1530 = !DILocation(line: 56, column: 10, scope: !1497)
!1531 = !DILocation(line: 58, column: 12, scope: !1511)
!1532 = !DILocation(line: 58, column: 7, scope: !1497)
!1533 = !DILocation(line: 60, column: 15, scope: !1510)
!1534 = !DILocation(line: 0, scope: !1510)
!1535 = !DILocation(line: 61, column: 11, scope: !1510)
!1536 = !DILocation(line: 66, column: 15, scope: !1514)
!1537 = !DILocation(line: 67, column: 15, scope: !1514)
!1538 = !DILocation(line: 71, column: 17, scope: !1513)
!1539 = !DILocation(line: 71, column: 25, scope: !1513)
!1540 = !DILocation(line: 72, column: 17, scope: !1513)
!1541 = !DILocation(line: 73, column: 33, scope: !1513)
!1542 = !DILocation(line: 73, column: 17, scope: !1513)
!1543 = !DILocation(line: 74, column: 17, scope: !1513)
!1544 = !DILocation(line: 85, column: 10, scope: !1497)
!1545 = !DILocation(line: 89, column: 10, scope: !1497)
!1546 = !DILocation(line: 90, column: 1, scope: !1497)
!1547 = !DISubprogram(name: "getopt_long", scope: !413, file: !413, line: 66, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!117, !117, !1550, !74, !1552, !418}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!1553 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !399, file: !399, line: 98, type: !1554, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !1556)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !117, !123, !74, !74, !74, !247, !1500, null}
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1557 = !DILocalVariable(name: "argc", arg: 1, scope: !1553, file: !399, line: 98, type: !117)
!1558 = !DILocalVariable(name: "argv", arg: 2, scope: !1553, file: !399, line: 99, type: !123)
!1559 = !DILocalVariable(name: "command_name", arg: 3, scope: !1553, file: !399, line: 100, type: !74)
!1560 = !DILocalVariable(name: "package", arg: 4, scope: !1553, file: !399, line: 101, type: !74)
!1561 = !DILocalVariable(name: "version", arg: 5, scope: !1553, file: !399, line: 102, type: !74)
!1562 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1553, file: !399, line: 103, type: !247)
!1563 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1553, file: !399, line: 104, type: !1500)
!1564 = !DILocalVariable(name: "saved_opterr", scope: !1553, file: !399, line: 107, type: !117)
!1565 = !DILocalVariable(name: "optstring", scope: !1553, file: !399, line: 112, type: !74)
!1566 = !DILocalVariable(name: "c", scope: !1553, file: !399, line: 114, type: !117)
!1567 = !DILocalVariable(name: "authors", scope: !1568, file: !399, line: 125, type: !1517)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !399, line: 124, column: 11)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !399, line: 118, column: 9)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !399, line: 116, column: 5)
!1571 = distinct !DILexicalBlock(scope: !1553, file: !399, line: 115, column: 7)
!1572 = !DILocation(line: 0, scope: !1553)
!1573 = !DILocation(line: 107, column: 22, scope: !1553)
!1574 = !DILocation(line: 110, column: 10, scope: !1553)
!1575 = !DILocation(line: 112, column: 27, scope: !1553)
!1576 = !DILocation(line: 114, column: 11, scope: !1553)
!1577 = !DILocation(line: 115, column: 7, scope: !1553)
!1578 = !DILocation(line: 125, column: 13, scope: !1568)
!1579 = !DILocation(line: 125, column: 21, scope: !1568)
!1580 = !DILocation(line: 126, column: 13, scope: !1568)
!1581 = !DILocation(line: 127, column: 29, scope: !1568)
!1582 = !DILocation(line: 127, column: 13, scope: !1568)
!1583 = !DILocation(line: 128, column: 13, scope: !1568)
!1584 = !DILocation(line: 132, column: 26, scope: !1569)
!1585 = !DILocation(line: 133, column: 11, scope: !1569)
!1586 = !DILocation(line: 0, scope: !1569)
!1587 = !DILocation(line: 138, column: 10, scope: !1553)
!1588 = !DILocation(line: 139, column: 1, scope: !1553)
!1589 = distinct !DISubprogram(name: "set_program_name", scope: !423, file: !423, line: 37, type: !845, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DILocalVariable(name: "argv0", arg: 1, scope: !1589, file: !423, line: 37, type: !74)
!1592 = !DILocalVariable(name: "slash", scope: !1589, file: !423, line: 44, type: !74)
!1593 = !DILocalVariable(name: "base", scope: !1589, file: !423, line: 45, type: !74)
!1594 = !DILocation(line: 0, scope: !1589)
!1595 = !DILocation(line: 44, column: 23, scope: !1589)
!1596 = !DILocation(line: 45, column: 22, scope: !1589)
!1597 = !DILocation(line: 46, column: 17, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1589, file: !423, line: 46, column: 7)
!1599 = !DILocation(line: 46, column: 9, scope: !1598)
!1600 = !DILocation(line: 46, column: 25, scope: !1598)
!1601 = !DILocation(line: 46, column: 40, scope: !1598)
!1602 = !DILocalVariable(name: "__s1", arg: 1, scope: !1603, file: !904, line: 974, type: !1039)
!1603 = distinct !DISubprogram(name: "memeq", scope: !904, file: !904, line: 974, type: !1604, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!247, !1039, !1039, !119}
!1606 = !{!1602, !1607, !1608}
!1607 = !DILocalVariable(name: "__s2", arg: 2, scope: !1603, file: !904, line: 974, type: !1039)
!1608 = !DILocalVariable(name: "__n", arg: 3, scope: !1603, file: !904, line: 974, type: !119)
!1609 = !DILocation(line: 0, scope: !1603, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 46, column: 28, scope: !1598)
!1611 = !DILocation(line: 976, column: 11, scope: !1603, inlinedAt: !1610)
!1612 = !DILocation(line: 976, column: 10, scope: !1603, inlinedAt: !1610)
!1613 = !DILocation(line: 46, column: 7, scope: !1589)
!1614 = !DILocation(line: 49, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !423, line: 49, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1598, file: !423, line: 47, column: 5)
!1617 = !DILocation(line: 49, column: 36, scope: !1615)
!1618 = !DILocation(line: 49, column: 11, scope: !1616)
!1619 = !DILocation(line: 65, column: 16, scope: !1589)
!1620 = !DILocation(line: 71, column: 27, scope: !1589)
!1621 = !DILocation(line: 74, column: 33, scope: !1589)
!1622 = !DILocation(line: 76, column: 1, scope: !1589)
!1623 = !DISubprogram(name: "strrchr", scope: !1008, file: !1008, line: 273, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1624 = !DILocation(line: 0, scope: !432)
!1625 = !DILocation(line: 40, column: 29, scope: !432)
!1626 = !DILocation(line: 41, column: 19, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !432, file: !433, line: 41, column: 7)
!1628 = !DILocation(line: 41, column: 7, scope: !432)
!1629 = !DILocation(line: 47, column: 3, scope: !432)
!1630 = !DILocation(line: 48, column: 3, scope: !432)
!1631 = !DILocation(line: 48, column: 13, scope: !432)
!1632 = !DILocalVariable(name: "ps", arg: 1, scope: !1633, file: !1634, line: 1135, type: !1637)
!1633 = distinct !DISubprogram(name: "mbszero", scope: !1634, file: !1634, line: 1135, type: !1635, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !1638)
!1634 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1638 = !{!1632}
!1639 = !DILocation(line: 0, scope: !1633, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 48, column: 18, scope: !432)
!1641 = !DILocalVariable(name: "__dest", arg: 1, scope: !1642, file: !1643, line: 57, type: !116)
!1642 = distinct !DISubprogram(name: "memset", scope: !1643, file: !1643, line: 57, type: !1644, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !1646)
!1643 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!116, !116, !117, !119}
!1646 = !{!1641, !1647, !1648}
!1647 = !DILocalVariable(name: "__ch", arg: 2, scope: !1642, file: !1643, line: 57, type: !117)
!1648 = !DILocalVariable(name: "__len", arg: 3, scope: !1642, file: !1643, line: 57, type: !119)
!1649 = !DILocation(line: 0, scope: !1642, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 1137, column: 3, scope: !1633, inlinedAt: !1640)
!1651 = !DILocation(line: 59, column: 10, scope: !1642, inlinedAt: !1650)
!1652 = !DILocation(line: 49, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !432, file: !433, line: 49, column: 7)
!1654 = !DILocation(line: 49, column: 39, scope: !1653)
!1655 = !DILocation(line: 49, column: 44, scope: !1653)
!1656 = !DILocation(line: 54, column: 1, scope: !432)
!1657 = !DISubprogram(name: "mbrtoc32", scope: !444, file: !444, line: 57, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!119, !1660, !885, !119, !1662}
!1660 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1661)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1637)
!1663 = distinct !DISubprogram(name: "clone_quoting_options", scope: !463, file: !463, line: 113, type: !1664, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1667)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1666, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!1667 = !{!1668, !1669, !1670}
!1668 = !DILocalVariable(name: "o", arg: 1, scope: !1663, file: !463, line: 113, type: !1666)
!1669 = !DILocalVariable(name: "saved_errno", scope: !1663, file: !463, line: 115, type: !117)
!1670 = !DILocalVariable(name: "p", scope: !1663, file: !463, line: 116, type: !1666)
!1671 = !DILocation(line: 0, scope: !1663)
!1672 = !DILocation(line: 115, column: 21, scope: !1663)
!1673 = !DILocation(line: 116, column: 40, scope: !1663)
!1674 = !DILocation(line: 116, column: 31, scope: !1663)
!1675 = !DILocation(line: 118, column: 9, scope: !1663)
!1676 = !DILocation(line: 119, column: 3, scope: !1663)
!1677 = distinct !DISubprogram(name: "get_quoting_style", scope: !463, file: !463, line: 124, type: !1678, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1682)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!101, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!1682 = !{!1683}
!1683 = !DILocalVariable(name: "o", arg: 1, scope: !1677, file: !463, line: 124, type: !1680)
!1684 = !DILocation(line: 0, scope: !1677)
!1685 = !DILocation(line: 126, column: 11, scope: !1677)
!1686 = !DILocation(line: 126, column: 46, scope: !1677)
!1687 = !{!1688, !836, i64 0}
!1688 = !{!"quoting_options", !836, i64 0, !892, i64 4, !836, i64 8, !835, i64 40, !835, i64 48}
!1689 = !DILocation(line: 126, column: 3, scope: !1677)
!1690 = distinct !DISubprogram(name: "set_quoting_style", scope: !463, file: !463, line: 132, type: !1691, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1666, !101}
!1693 = !{!1694, !1695}
!1694 = !DILocalVariable(name: "o", arg: 1, scope: !1690, file: !463, line: 132, type: !1666)
!1695 = !DILocalVariable(name: "s", arg: 2, scope: !1690, file: !463, line: 132, type: !101)
!1696 = !DILocation(line: 0, scope: !1690)
!1697 = !DILocation(line: 134, column: 4, scope: !1690)
!1698 = !DILocation(line: 134, column: 45, scope: !1690)
!1699 = !DILocation(line: 135, column: 1, scope: !1690)
!1700 = distinct !DISubprogram(name: "set_char_quoting", scope: !463, file: !463, line: 143, type: !1701, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!117, !1666, !4, !117}
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1710, !1711}
!1704 = !DILocalVariable(name: "o", arg: 1, scope: !1700, file: !463, line: 143, type: !1666)
!1705 = !DILocalVariable(name: "c", arg: 2, scope: !1700, file: !463, line: 143, type: !4)
!1706 = !DILocalVariable(name: "i", arg: 3, scope: !1700, file: !463, line: 143, type: !117)
!1707 = !DILocalVariable(name: "uc", scope: !1700, file: !463, line: 145, type: !122)
!1708 = !DILocalVariable(name: "p", scope: !1700, file: !463, line: 146, type: !1709)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1710 = !DILocalVariable(name: "shift", scope: !1700, file: !463, line: 148, type: !117)
!1711 = !DILocalVariable(name: "r", scope: !1700, file: !463, line: 149, type: !80)
!1712 = !DILocation(line: 0, scope: !1700)
!1713 = !DILocation(line: 147, column: 6, scope: !1700)
!1714 = !DILocation(line: 147, column: 41, scope: !1700)
!1715 = !DILocation(line: 147, column: 62, scope: !1700)
!1716 = !DILocation(line: 147, column: 57, scope: !1700)
!1717 = !DILocation(line: 148, column: 15, scope: !1700)
!1718 = !DILocation(line: 149, column: 21, scope: !1700)
!1719 = !DILocation(line: 149, column: 24, scope: !1700)
!1720 = !DILocation(line: 149, column: 34, scope: !1700)
!1721 = !DILocation(line: 150, column: 19, scope: !1700)
!1722 = !DILocation(line: 150, column: 24, scope: !1700)
!1723 = !DILocation(line: 150, column: 6, scope: !1700)
!1724 = !DILocation(line: 151, column: 3, scope: !1700)
!1725 = distinct !DISubprogram(name: "set_quoting_flags", scope: !463, file: !463, line: 159, type: !1726, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!117, !1666, !117}
!1728 = !{!1729, !1730, !1731}
!1729 = !DILocalVariable(name: "o", arg: 1, scope: !1725, file: !463, line: 159, type: !1666)
!1730 = !DILocalVariable(name: "i", arg: 2, scope: !1725, file: !463, line: 159, type: !117)
!1731 = !DILocalVariable(name: "r", scope: !1725, file: !463, line: 163, type: !117)
!1732 = !DILocation(line: 0, scope: !1725)
!1733 = !DILocation(line: 161, column: 8, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1725, file: !463, line: 161, column: 7)
!1735 = !DILocation(line: 161, column: 7, scope: !1725)
!1736 = !DILocation(line: 163, column: 14, scope: !1725)
!1737 = !{!1688, !892, i64 4}
!1738 = !DILocation(line: 164, column: 12, scope: !1725)
!1739 = !DILocation(line: 165, column: 3, scope: !1725)
!1740 = distinct !DISubprogram(name: "set_custom_quoting", scope: !463, file: !463, line: 169, type: !1741, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1743)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !1666, !74, !74}
!1743 = !{!1744, !1745, !1746}
!1744 = !DILocalVariable(name: "o", arg: 1, scope: !1740, file: !463, line: 169, type: !1666)
!1745 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1740, file: !463, line: 170, type: !74)
!1746 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1740, file: !463, line: 170, type: !74)
!1747 = !DILocation(line: 0, scope: !1740)
!1748 = !DILocation(line: 172, column: 8, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1740, file: !463, line: 172, column: 7)
!1750 = !DILocation(line: 172, column: 7, scope: !1740)
!1751 = !DILocation(line: 174, column: 12, scope: !1740)
!1752 = !DILocation(line: 175, column: 8, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1740, file: !463, line: 175, column: 7)
!1754 = !DILocation(line: 175, column: 19, scope: !1753)
!1755 = !DILocation(line: 176, column: 5, scope: !1753)
!1756 = !DILocation(line: 177, column: 6, scope: !1740)
!1757 = !DILocation(line: 177, column: 17, scope: !1740)
!1758 = !{!1688, !835, i64 40}
!1759 = !DILocation(line: 178, column: 6, scope: !1740)
!1760 = !DILocation(line: 178, column: 18, scope: !1740)
!1761 = !{!1688, !835, i64 48}
!1762 = !DILocation(line: 179, column: 1, scope: !1740)
!1763 = !DISubprogram(name: "abort", scope: !1015, file: !1015, line: 598, type: !395, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1764 = distinct !DISubprogram(name: "quotearg_buffer", scope: !463, file: !463, line: 774, type: !1765, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!119, !124, !119, !74, !119, !1680}
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775}
!1768 = !DILocalVariable(name: "buffer", arg: 1, scope: !1764, file: !463, line: 774, type: !124)
!1769 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1764, file: !463, line: 774, type: !119)
!1770 = !DILocalVariable(name: "arg", arg: 3, scope: !1764, file: !463, line: 775, type: !74)
!1771 = !DILocalVariable(name: "argsize", arg: 4, scope: !1764, file: !463, line: 775, type: !119)
!1772 = !DILocalVariable(name: "o", arg: 5, scope: !1764, file: !463, line: 776, type: !1680)
!1773 = !DILocalVariable(name: "p", scope: !1764, file: !463, line: 778, type: !1680)
!1774 = !DILocalVariable(name: "saved_errno", scope: !1764, file: !463, line: 779, type: !117)
!1775 = !DILocalVariable(name: "r", scope: !1764, file: !463, line: 780, type: !119)
!1776 = !DILocation(line: 0, scope: !1764)
!1777 = !DILocation(line: 778, column: 37, scope: !1764)
!1778 = !DILocation(line: 779, column: 21, scope: !1764)
!1779 = !DILocation(line: 781, column: 43, scope: !1764)
!1780 = !DILocation(line: 781, column: 53, scope: !1764)
!1781 = !DILocation(line: 781, column: 63, scope: !1764)
!1782 = !DILocation(line: 782, column: 43, scope: !1764)
!1783 = !DILocation(line: 782, column: 58, scope: !1764)
!1784 = !DILocation(line: 780, column: 14, scope: !1764)
!1785 = !DILocation(line: 783, column: 9, scope: !1764)
!1786 = !DILocation(line: 784, column: 3, scope: !1764)
!1787 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !463, file: !463, line: 251, type: !1788, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1792)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!119, !124, !119, !74, !119, !101, !117, !1790, !74, !74}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1817, !1819, !1822, !1823, !1824, !1825, !1828, !1829, !1832, !1836, !1837, !1845, !1848, !1849, !1851, !1852, !1853, !1854}
!1793 = !DILocalVariable(name: "buffer", arg: 1, scope: !1787, file: !463, line: 251, type: !124)
!1794 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1787, file: !463, line: 251, type: !119)
!1795 = !DILocalVariable(name: "arg", arg: 3, scope: !1787, file: !463, line: 252, type: !74)
!1796 = !DILocalVariable(name: "argsize", arg: 4, scope: !1787, file: !463, line: 252, type: !119)
!1797 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1787, file: !463, line: 253, type: !101)
!1798 = !DILocalVariable(name: "flags", arg: 6, scope: !1787, file: !463, line: 253, type: !117)
!1799 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1787, file: !463, line: 254, type: !1790)
!1800 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1787, file: !463, line: 255, type: !74)
!1801 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1787, file: !463, line: 256, type: !74)
!1802 = !DILocalVariable(name: "unibyte_locale", scope: !1787, file: !463, line: 258, type: !247)
!1803 = !DILocalVariable(name: "len", scope: !1787, file: !463, line: 260, type: !119)
!1804 = !DILocalVariable(name: "orig_buffersize", scope: !1787, file: !463, line: 261, type: !119)
!1805 = !DILocalVariable(name: "quote_string", scope: !1787, file: !463, line: 262, type: !74)
!1806 = !DILocalVariable(name: "quote_string_len", scope: !1787, file: !463, line: 263, type: !119)
!1807 = !DILocalVariable(name: "backslash_escapes", scope: !1787, file: !463, line: 264, type: !247)
!1808 = !DILocalVariable(name: "elide_outer_quotes", scope: !1787, file: !463, line: 265, type: !247)
!1809 = !DILocalVariable(name: "encountered_single_quote", scope: !1787, file: !463, line: 266, type: !247)
!1810 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1787, file: !463, line: 267, type: !247)
!1811 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1787, file: !463, line: 309, type: !247)
!1812 = !DILocalVariable(name: "lq", scope: !1813, file: !463, line: 361, type: !74)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !463, line: 361, column: 11)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !463, line: 360, column: 13)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !463, line: 333, column: 7)
!1816 = distinct !DILexicalBlock(scope: !1787, file: !463, line: 312, column: 5)
!1817 = !DILocalVariable(name: "i", scope: !1818, file: !463, line: 395, type: !119)
!1818 = distinct !DILexicalBlock(scope: !1787, file: !463, line: 395, column: 3)
!1819 = !DILocalVariable(name: "is_right_quote", scope: !1820, file: !463, line: 397, type: !247)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !463, line: 396, column: 5)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !463, line: 395, column: 3)
!1822 = !DILocalVariable(name: "escaping", scope: !1820, file: !463, line: 398, type: !247)
!1823 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1820, file: !463, line: 399, type: !247)
!1824 = !DILocalVariable(name: "c", scope: !1820, file: !463, line: 417, type: !122)
!1825 = !DILocalVariable(name: "m", scope: !1826, file: !463, line: 598, type: !119)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 596, column: 11)
!1827 = distinct !DILexicalBlock(scope: !1820, file: !463, line: 419, column: 9)
!1828 = !DILocalVariable(name: "printable", scope: !1826, file: !463, line: 600, type: !247)
!1829 = !DILocalVariable(name: "mbs", scope: !1830, file: !463, line: 609, type: !536)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !463, line: 608, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1826, file: !463, line: 602, column: 17)
!1832 = !DILocalVariable(name: "w", scope: !1833, file: !463, line: 618, type: !443)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !463, line: 617, column: 19)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !463, line: 616, column: 17)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !463, line: 616, column: 17)
!1836 = !DILocalVariable(name: "bytes", scope: !1833, file: !463, line: 619, type: !119)
!1837 = !DILocalVariable(name: "j", scope: !1838, file: !463, line: 648, type: !119)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !463, line: 648, column: 29)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !463, line: 647, column: 27)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !463, line: 645, column: 29)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !463, line: 636, column: 23)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !463, line: 628, column: 30)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !463, line: 623, column: 30)
!1844 = distinct !DILexicalBlock(scope: !1833, file: !463, line: 621, column: 25)
!1845 = !DILocalVariable(name: "ilim", scope: !1846, file: !463, line: 674, type: !119)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !463, line: 671, column: 15)
!1847 = distinct !DILexicalBlock(scope: !1826, file: !463, line: 670, column: 17)
!1848 = !DILabel(scope: !1787, name: "process_input", file: !463, line: 308)
!1849 = !DILabel(scope: !1850, name: "c_and_shell_escape", file: !463, line: 502)
!1850 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 478, column: 9)
!1851 = !DILabel(scope: !1850, name: "c_escape", file: !463, line: 507)
!1852 = !DILabel(scope: !1820, name: "store_escape", file: !463, line: 709)
!1853 = !DILabel(scope: !1820, name: "store_c", file: !463, line: 712)
!1854 = !DILabel(scope: !1787, name: "force_outer_quoting_style", file: !463, line: 753)
!1855 = !DILocation(line: 0, scope: !1787)
!1856 = !DILocation(line: 258, column: 25, scope: !1787)
!1857 = !DILocation(line: 258, column: 36, scope: !1787)
!1858 = !DILocation(line: 267, column: 3, scope: !1787)
!1859 = !DILocation(line: 261, column: 10, scope: !1787)
!1860 = !DILocation(line: 262, column: 15, scope: !1787)
!1861 = !DILocation(line: 263, column: 10, scope: !1787)
!1862 = !DILocation(line: 308, column: 2, scope: !1787)
!1863 = !DILocation(line: 311, column: 3, scope: !1787)
!1864 = !DILocation(line: 318, column: 11, scope: !1816)
!1865 = !DILocation(line: 319, column: 9, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !463, line: 319, column: 9)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !463, line: 319, column: 9)
!1868 = distinct !DILexicalBlock(scope: !1816, file: !463, line: 318, column: 11)
!1869 = !DILocation(line: 319, column: 9, scope: !1867)
!1870 = !DILocation(line: 0, scope: !527, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 357, column: 26, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !463, line: 335, column: 11)
!1873 = distinct !DILexicalBlock(scope: !1815, file: !463, line: 334, column: 13)
!1874 = !DILocation(line: 199, column: 29, scope: !527, inlinedAt: !1871)
!1875 = !DILocation(line: 201, column: 19, scope: !1876, inlinedAt: !1871)
!1876 = distinct !DILexicalBlock(scope: !527, file: !463, line: 201, column: 7)
!1877 = !DILocation(line: 201, column: 7, scope: !527, inlinedAt: !1871)
!1878 = !DILocation(line: 229, column: 3, scope: !527, inlinedAt: !1871)
!1879 = !DILocation(line: 230, column: 3, scope: !527, inlinedAt: !1871)
!1880 = !DILocation(line: 230, column: 13, scope: !527, inlinedAt: !1871)
!1881 = !DILocalVariable(name: "ps", arg: 1, scope: !1882, file: !1634, line: 1135, type: !1885)
!1882 = distinct !DISubprogram(name: "mbszero", scope: !1634, file: !1634, line: 1135, type: !1883, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1886)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!1886 = !{!1881}
!1887 = !DILocation(line: 0, scope: !1882, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 230, column: 18, scope: !527, inlinedAt: !1871)
!1889 = !DILocalVariable(name: "__dest", arg: 1, scope: !1890, file: !1643, line: 57, type: !116)
!1890 = distinct !DISubprogram(name: "memset", scope: !1643, file: !1643, line: 57, type: !1644, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1891)
!1891 = !{!1889, !1892, !1893}
!1892 = !DILocalVariable(name: "__ch", arg: 2, scope: !1890, file: !1643, line: 57, type: !117)
!1893 = !DILocalVariable(name: "__len", arg: 3, scope: !1890, file: !1643, line: 57, type: !119)
!1894 = !DILocation(line: 0, scope: !1890, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 1137, column: 3, scope: !1882, inlinedAt: !1888)
!1896 = !DILocation(line: 59, column: 10, scope: !1890, inlinedAt: !1895)
!1897 = !DILocation(line: 231, column: 7, scope: !1898, inlinedAt: !1871)
!1898 = distinct !DILexicalBlock(scope: !527, file: !463, line: 231, column: 7)
!1899 = !DILocation(line: 231, column: 40, scope: !1898, inlinedAt: !1871)
!1900 = !DILocation(line: 231, column: 45, scope: !1898, inlinedAt: !1871)
!1901 = !DILocation(line: 235, column: 1, scope: !527, inlinedAt: !1871)
!1902 = !DILocation(line: 0, scope: !527, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 358, column: 27, scope: !1872)
!1904 = !DILocation(line: 199, column: 29, scope: !527, inlinedAt: !1903)
!1905 = !DILocation(line: 201, column: 19, scope: !1876, inlinedAt: !1903)
!1906 = !DILocation(line: 201, column: 7, scope: !527, inlinedAt: !1903)
!1907 = !DILocation(line: 229, column: 3, scope: !527, inlinedAt: !1903)
!1908 = !DILocation(line: 230, column: 3, scope: !527, inlinedAt: !1903)
!1909 = !DILocation(line: 230, column: 13, scope: !527, inlinedAt: !1903)
!1910 = !DILocation(line: 0, scope: !1882, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 230, column: 18, scope: !527, inlinedAt: !1903)
!1912 = !DILocation(line: 0, scope: !1890, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 1137, column: 3, scope: !1882, inlinedAt: !1911)
!1914 = !DILocation(line: 59, column: 10, scope: !1890, inlinedAt: !1913)
!1915 = !DILocation(line: 231, column: 7, scope: !1898, inlinedAt: !1903)
!1916 = !DILocation(line: 231, column: 40, scope: !1898, inlinedAt: !1903)
!1917 = !DILocation(line: 231, column: 45, scope: !1898, inlinedAt: !1903)
!1918 = !DILocation(line: 235, column: 1, scope: !527, inlinedAt: !1903)
!1919 = !DILocation(line: 360, column: 13, scope: !1815)
!1920 = !DILocation(line: 0, scope: !1813)
!1921 = !DILocation(line: 361, column: 45, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1813, file: !463, line: 361, column: 11)
!1923 = !DILocation(line: 361, column: 11, scope: !1813)
!1924 = !DILocation(line: 362, column: 13, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !463, line: 362, column: 13)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !463, line: 362, column: 13)
!1927 = !DILocation(line: 362, column: 13, scope: !1926)
!1928 = !DILocation(line: 361, column: 52, scope: !1922)
!1929 = distinct !{!1929, !1923, !1930, !938}
!1930 = !DILocation(line: 362, column: 13, scope: !1813)
!1931 = !DILocation(line: 260, column: 10, scope: !1787)
!1932 = !DILocation(line: 365, column: 28, scope: !1815)
!1933 = !DILocation(line: 367, column: 7, scope: !1816)
!1934 = !DILocation(line: 370, column: 7, scope: !1816)
!1935 = !DILocation(line: 376, column: 11, scope: !1816)
!1936 = !DILocation(line: 381, column: 11, scope: !1816)
!1937 = !DILocation(line: 382, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !463, line: 382, column: 9)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !463, line: 382, column: 9)
!1940 = distinct !DILexicalBlock(scope: !1816, file: !463, line: 381, column: 11)
!1941 = !DILocation(line: 382, column: 9, scope: !1939)
!1942 = !DILocation(line: 389, column: 7, scope: !1816)
!1943 = !DILocation(line: 392, column: 7, scope: !1816)
!1944 = !DILocation(line: 0, scope: !1818)
!1945 = !DILocation(line: 395, column: 8, scope: !1818)
!1946 = !DILocation(line: 395, scope: !1818)
!1947 = !DILocation(line: 395, column: 34, scope: !1821)
!1948 = !DILocation(line: 395, column: 26, scope: !1821)
!1949 = !DILocation(line: 395, column: 48, scope: !1821)
!1950 = !DILocation(line: 395, column: 55, scope: !1821)
!1951 = !DILocation(line: 395, column: 3, scope: !1818)
!1952 = !DILocation(line: 395, column: 67, scope: !1821)
!1953 = !DILocation(line: 0, scope: !1820)
!1954 = !DILocation(line: 402, column: 11, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1820, file: !463, line: 401, column: 11)
!1956 = !DILocation(line: 404, column: 17, scope: !1955)
!1957 = !DILocation(line: 405, column: 39, scope: !1955)
!1958 = !DILocation(line: 409, column: 32, scope: !1955)
!1959 = !DILocation(line: 405, column: 19, scope: !1955)
!1960 = !DILocation(line: 405, column: 15, scope: !1955)
!1961 = !DILocation(line: 410, column: 11, scope: !1955)
!1962 = !DILocation(line: 410, column: 25, scope: !1955)
!1963 = !DILocalVariable(name: "__s1", arg: 1, scope: !1964, file: !904, line: 974, type: !1039)
!1964 = distinct !DISubprogram(name: "memeq", scope: !904, file: !904, line: 974, type: !1604, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1965)
!1965 = !{!1963, !1966, !1967}
!1966 = !DILocalVariable(name: "__s2", arg: 2, scope: !1964, file: !904, line: 974, type: !1039)
!1967 = !DILocalVariable(name: "__n", arg: 3, scope: !1964, file: !904, line: 974, type: !119)
!1968 = !DILocation(line: 0, scope: !1964, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 410, column: 14, scope: !1955)
!1970 = !DILocation(line: 976, column: 11, scope: !1964, inlinedAt: !1969)
!1971 = !DILocation(line: 976, column: 10, scope: !1964, inlinedAt: !1969)
!1972 = !DILocation(line: 401, column: 11, scope: !1820)
!1973 = !DILocation(line: 417, column: 25, scope: !1820)
!1974 = !DILocation(line: 418, column: 7, scope: !1820)
!1975 = !DILocation(line: 421, column: 15, scope: !1827)
!1976 = !DILocation(line: 423, column: 15, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !463, line: 423, column: 15)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !463, line: 422, column: 13)
!1979 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 421, column: 15)
!1980 = !DILocation(line: 423, column: 15, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !463, line: 423, column: 15)
!1982 = !DILocation(line: 423, column: 15, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !463, line: 423, column: 15)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !463, line: 423, column: 15)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !463, line: 423, column: 15)
!1986 = !DILocation(line: 423, column: 15, scope: !1984)
!1987 = !DILocation(line: 423, column: 15, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !463, line: 423, column: 15)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !463, line: 423, column: 15)
!1990 = !DILocation(line: 423, column: 15, scope: !1989)
!1991 = !DILocation(line: 423, column: 15, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !463, line: 423, column: 15)
!1993 = distinct !DILexicalBlock(scope: !1985, file: !463, line: 423, column: 15)
!1994 = !DILocation(line: 423, column: 15, scope: !1993)
!1995 = !DILocation(line: 423, column: 15, scope: !1985)
!1996 = !DILocation(line: 423, column: 15, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !463, line: 423, column: 15)
!1998 = distinct !DILexicalBlock(scope: !1977, file: !463, line: 423, column: 15)
!1999 = !DILocation(line: 423, column: 15, scope: !1998)
!2000 = !DILocation(line: 431, column: 19, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1978, file: !463, line: 430, column: 19)
!2002 = !DILocation(line: 431, column: 24, scope: !2001)
!2003 = !DILocation(line: 431, column: 28, scope: !2001)
!2004 = !DILocation(line: 431, column: 38, scope: !2001)
!2005 = !DILocation(line: 431, column: 48, scope: !2001)
!2006 = !DILocation(line: 431, column: 59, scope: !2001)
!2007 = !DILocation(line: 433, column: 19, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !463, line: 433, column: 19)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !463, line: 433, column: 19)
!2010 = distinct !DILexicalBlock(scope: !2001, file: !463, line: 432, column: 17)
!2011 = !DILocation(line: 433, column: 19, scope: !2009)
!2012 = !DILocation(line: 434, column: 19, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !463, line: 434, column: 19)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !463, line: 434, column: 19)
!2015 = !DILocation(line: 434, column: 19, scope: !2014)
!2016 = !DILocation(line: 435, column: 17, scope: !2010)
!2017 = !DILocation(line: 442, column: 20, scope: !1979)
!2018 = !DILocation(line: 447, column: 11, scope: !1827)
!2019 = !DILocation(line: 450, column: 19, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 448, column: 13)
!2021 = !DILocation(line: 456, column: 19, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2020, file: !463, line: 455, column: 19)
!2023 = !DILocation(line: 456, column: 24, scope: !2022)
!2024 = !DILocation(line: 456, column: 28, scope: !2022)
!2025 = !DILocation(line: 456, column: 38, scope: !2022)
!2026 = !DILocation(line: 456, column: 47, scope: !2022)
!2027 = !DILocation(line: 456, column: 41, scope: !2022)
!2028 = !DILocation(line: 456, column: 52, scope: !2022)
!2029 = !DILocation(line: 455, column: 19, scope: !2020)
!2030 = !DILocation(line: 457, column: 25, scope: !2022)
!2031 = !DILocation(line: 457, column: 17, scope: !2022)
!2032 = !DILocation(line: 464, column: 25, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2022, file: !463, line: 458, column: 19)
!2034 = !DILocation(line: 468, column: 21, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !463, line: 468, column: 21)
!2036 = distinct !DILexicalBlock(scope: !2033, file: !463, line: 468, column: 21)
!2037 = !DILocation(line: 468, column: 21, scope: !2036)
!2038 = !DILocation(line: 469, column: 21, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !463, line: 469, column: 21)
!2040 = distinct !DILexicalBlock(scope: !2033, file: !463, line: 469, column: 21)
!2041 = !DILocation(line: 469, column: 21, scope: !2040)
!2042 = !DILocation(line: 470, column: 21, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !463, line: 470, column: 21)
!2044 = distinct !DILexicalBlock(scope: !2033, file: !463, line: 470, column: 21)
!2045 = !DILocation(line: 470, column: 21, scope: !2044)
!2046 = !DILocation(line: 471, column: 21, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !463, line: 471, column: 21)
!2048 = distinct !DILexicalBlock(scope: !2033, file: !463, line: 471, column: 21)
!2049 = !DILocation(line: 471, column: 21, scope: !2048)
!2050 = !DILocation(line: 472, column: 21, scope: !2033)
!2051 = !DILocation(line: 482, column: 33, scope: !1850)
!2052 = !DILocation(line: 483, column: 33, scope: !1850)
!2053 = !DILocation(line: 485, column: 33, scope: !1850)
!2054 = !DILocation(line: 486, column: 33, scope: !1850)
!2055 = !DILocation(line: 487, column: 33, scope: !1850)
!2056 = !DILocation(line: 490, column: 17, scope: !1850)
!2057 = !DILocation(line: 492, column: 21, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !463, line: 491, column: 15)
!2059 = distinct !DILexicalBlock(scope: !1850, file: !463, line: 490, column: 17)
!2060 = !DILocation(line: 499, column: 35, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1850, file: !463, line: 499, column: 17)
!2062 = !DILocation(line: 0, scope: !1850)
!2063 = !DILocation(line: 502, column: 11, scope: !1850)
!2064 = !DILocation(line: 504, column: 17, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1850, file: !463, line: 503, column: 17)
!2066 = !DILocation(line: 507, column: 11, scope: !1850)
!2067 = !DILocation(line: 508, column: 17, scope: !1850)
!2068 = !DILocation(line: 517, column: 15, scope: !1827)
!2069 = !DILocation(line: 517, column: 40, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 517, column: 15)
!2071 = !DILocation(line: 517, column: 47, scope: !2070)
!2072 = !DILocation(line: 517, column: 18, scope: !2070)
!2073 = !DILocation(line: 521, column: 17, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 521, column: 15)
!2075 = !DILocation(line: 521, column: 15, scope: !1827)
!2076 = !DILocation(line: 525, column: 11, scope: !1827)
!2077 = !DILocation(line: 537, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 536, column: 15)
!2079 = !DILocation(line: 536, column: 15, scope: !1827)
!2080 = !DILocation(line: 544, column: 15, scope: !1827)
!2081 = !DILocation(line: 546, column: 19, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !463, line: 545, column: 13)
!2083 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 544, column: 15)
!2084 = !DILocation(line: 549, column: 19, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !463, line: 549, column: 19)
!2086 = !DILocation(line: 549, column: 30, scope: !2085)
!2087 = !DILocation(line: 558, column: 15, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !463, line: 558, column: 15)
!2089 = distinct !DILexicalBlock(scope: !2082, file: !463, line: 558, column: 15)
!2090 = !DILocation(line: 558, column: 15, scope: !2089)
!2091 = !DILocation(line: 559, column: 15, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !463, line: 559, column: 15)
!2093 = distinct !DILexicalBlock(scope: !2082, file: !463, line: 559, column: 15)
!2094 = !DILocation(line: 559, column: 15, scope: !2093)
!2095 = !DILocation(line: 560, column: 15, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !463, line: 560, column: 15)
!2097 = distinct !DILexicalBlock(scope: !2082, file: !463, line: 560, column: 15)
!2098 = !DILocation(line: 560, column: 15, scope: !2097)
!2099 = !DILocation(line: 562, column: 13, scope: !2082)
!2100 = !DILocation(line: 602, column: 17, scope: !1826)
!2101 = !DILocation(line: 0, scope: !1826)
!2102 = !DILocation(line: 605, column: 29, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1831, file: !463, line: 603, column: 15)
!2104 = !DILocation(line: 605, column: 41, scope: !2103)
!2105 = !DILocation(line: 606, column: 15, scope: !2103)
!2106 = !DILocation(line: 609, column: 17, scope: !1830)
!2107 = !DILocation(line: 609, column: 27, scope: !1830)
!2108 = !DILocation(line: 0, scope: !1882, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 609, column: 32, scope: !1830)
!2110 = !DILocation(line: 0, scope: !1890, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 1137, column: 3, scope: !1882, inlinedAt: !2109)
!2112 = !DILocation(line: 59, column: 10, scope: !1890, inlinedAt: !2111)
!2113 = !DILocation(line: 613, column: 29, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1830, file: !463, line: 613, column: 21)
!2115 = !DILocation(line: 613, column: 21, scope: !1830)
!2116 = !DILocation(line: 614, column: 29, scope: !2114)
!2117 = !DILocation(line: 614, column: 19, scope: !2114)
!2118 = !DILocation(line: 618, column: 21, scope: !1833)
!2119 = !DILocation(line: 620, column: 54, scope: !1833)
!2120 = !DILocation(line: 0, scope: !1833)
!2121 = !DILocation(line: 619, column: 36, scope: !1833)
!2122 = !DILocation(line: 621, column: 25, scope: !1833)
!2123 = !DILocation(line: 631, column: 38, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1842, file: !463, line: 629, column: 23)
!2125 = !DILocation(line: 631, column: 48, scope: !2124)
!2126 = !DILocation(line: 626, column: 25, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1843, file: !463, line: 624, column: 23)
!2128 = !DILocation(line: 631, column: 51, scope: !2124)
!2129 = !DILocation(line: 631, column: 25, scope: !2124)
!2130 = !DILocation(line: 632, column: 28, scope: !2124)
!2131 = !DILocation(line: 631, column: 34, scope: !2124)
!2132 = distinct !{!2132, !2129, !2130, !938}
!2133 = !DILocation(line: 646, column: 29, scope: !1840)
!2134 = !DILocation(line: 0, scope: !1838)
!2135 = !DILocation(line: 649, column: 49, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1838, file: !463, line: 648, column: 29)
!2137 = !DILocation(line: 649, column: 39, scope: !2136)
!2138 = !DILocation(line: 649, column: 31, scope: !2136)
!2139 = !DILocation(line: 648, column: 60, scope: !2136)
!2140 = !DILocation(line: 648, column: 50, scope: !2136)
!2141 = !DILocation(line: 648, column: 29, scope: !1838)
!2142 = distinct !{!2142, !2141, !2143, !938}
!2143 = !DILocation(line: 654, column: 33, scope: !1838)
!2144 = !DILocation(line: 657, column: 43, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !1841, file: !463, line: 657, column: 29)
!2146 = !DILocalVariable(name: "wc", arg: 1, scope: !2147, file: !2148, line: 865, type: !2151)
!2147 = distinct !DISubprogram(name: "c32isprint", scope: !2148, file: !2148, line: 865, type: !2149, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2153)
!2148 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!117, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2152, line: 20, baseType: !80)
!2152 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2153 = !{!2146}
!2154 = !DILocation(line: 0, scope: !2147, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 657, column: 31, scope: !2145)
!2156 = !DILocation(line: 871, column: 10, scope: !2147, inlinedAt: !2155)
!2157 = !DILocation(line: 657, column: 31, scope: !2145)
!2158 = !DILocation(line: 664, column: 23, scope: !1833)
!2159 = !DILocation(line: 665, column: 19, scope: !1834)
!2160 = !DILocation(line: 666, column: 15, scope: !1831)
!2161 = !DILocation(line: 753, column: 2, scope: !1787)
!2162 = !DILocation(line: 756, column: 51, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !1787, file: !463, line: 756, column: 7)
!2164 = !DILocation(line: 0, scope: !1831)
!2165 = !DILocation(line: 670, column: 19, scope: !1847)
!2166 = !DILocation(line: 670, column: 23, scope: !1847)
!2167 = !DILocation(line: 674, column: 33, scope: !1846)
!2168 = !DILocation(line: 0, scope: !1846)
!2169 = !DILocation(line: 676, column: 17, scope: !1846)
!2170 = !DILocation(line: 398, column: 12, scope: !1820)
!2171 = !DILocation(line: 678, column: 43, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !463, line: 678, column: 25)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !463, line: 677, column: 19)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !463, line: 676, column: 17)
!2175 = distinct !DILexicalBlock(scope: !1846, file: !463, line: 676, column: 17)
!2176 = !DILocation(line: 680, column: 25, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !463, line: 680, column: 25)
!2178 = distinct !DILexicalBlock(scope: !2172, file: !463, line: 679, column: 23)
!2179 = !DILocation(line: 680, column: 25, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2177, file: !463, line: 680, column: 25)
!2181 = !DILocation(line: 680, column: 25, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !463, line: 680, column: 25)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !463, line: 680, column: 25)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !463, line: 680, column: 25)
!2185 = !DILocation(line: 680, column: 25, scope: !2183)
!2186 = !DILocation(line: 680, column: 25, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !463, line: 680, column: 25)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !463, line: 680, column: 25)
!2189 = !DILocation(line: 680, column: 25, scope: !2188)
!2190 = !DILocation(line: 680, column: 25, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !463, line: 680, column: 25)
!2192 = distinct !DILexicalBlock(scope: !2184, file: !463, line: 680, column: 25)
!2193 = !DILocation(line: 680, column: 25, scope: !2192)
!2194 = !DILocation(line: 680, column: 25, scope: !2184)
!2195 = !DILocation(line: 680, column: 25, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !463, line: 680, column: 25)
!2197 = distinct !DILexicalBlock(scope: !2177, file: !463, line: 680, column: 25)
!2198 = !DILocation(line: 680, column: 25, scope: !2197)
!2199 = !DILocation(line: 681, column: 25, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !463, line: 681, column: 25)
!2201 = distinct !DILexicalBlock(scope: !2178, file: !463, line: 681, column: 25)
!2202 = !DILocation(line: 681, column: 25, scope: !2201)
!2203 = !DILocation(line: 682, column: 25, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !463, line: 682, column: 25)
!2205 = distinct !DILexicalBlock(scope: !2178, file: !463, line: 682, column: 25)
!2206 = !DILocation(line: 682, column: 25, scope: !2205)
!2207 = !DILocation(line: 683, column: 38, scope: !2178)
!2208 = !DILocation(line: 683, column: 33, scope: !2178)
!2209 = !DILocation(line: 684, column: 23, scope: !2178)
!2210 = !DILocation(line: 685, column: 30, scope: !2172)
!2211 = !DILocation(line: 687, column: 25, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !463, line: 687, column: 25)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !463, line: 687, column: 25)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !463, line: 686, column: 23)
!2215 = distinct !DILexicalBlock(scope: !2172, file: !463, line: 685, column: 30)
!2216 = !DILocation(line: 687, column: 25, scope: !2213)
!2217 = !DILocation(line: 689, column: 23, scope: !2214)
!2218 = !DILocation(line: 690, column: 35, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2173, file: !463, line: 690, column: 25)
!2220 = !DILocation(line: 690, column: 30, scope: !2219)
!2221 = !DILocation(line: 690, column: 25, scope: !2173)
!2222 = !DILocation(line: 692, column: 21, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !463, line: 692, column: 21)
!2224 = distinct !DILexicalBlock(scope: !2173, file: !463, line: 692, column: 21)
!2225 = !DILocation(line: 692, column: 21, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !463, line: 692, column: 21)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !463, line: 692, column: 21)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !463, line: 692, column: 21)
!2229 = !DILocation(line: 692, column: 21, scope: !2227)
!2230 = !DILocation(line: 692, column: 21, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !463, line: 692, column: 21)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !463, line: 692, column: 21)
!2233 = !DILocation(line: 692, column: 21, scope: !2232)
!2234 = !DILocation(line: 692, column: 21, scope: !2228)
!2235 = !DILocation(line: 0, scope: !2173)
!2236 = !DILocation(line: 693, column: 21, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !463, line: 693, column: 21)
!2238 = distinct !DILexicalBlock(scope: !2173, file: !463, line: 693, column: 21)
!2239 = !DILocation(line: 693, column: 21, scope: !2238)
!2240 = !DILocation(line: 694, column: 25, scope: !2173)
!2241 = !DILocation(line: 676, column: 17, scope: !2174)
!2242 = distinct !{!2242, !2243, !2244}
!2243 = !DILocation(line: 676, column: 17, scope: !2175)
!2244 = !DILocation(line: 695, column: 19, scope: !2175)
!2245 = !DILocation(line: 409, column: 30, scope: !1955)
!2246 = !DILocation(line: 702, column: 34, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1820, file: !463, line: 702, column: 11)
!2248 = !DILocation(line: 704, column: 14, scope: !2247)
!2249 = !DILocation(line: 705, column: 14, scope: !2247)
!2250 = !DILocation(line: 705, column: 35, scope: !2247)
!2251 = !DILocation(line: 705, column: 17, scope: !2247)
!2252 = !DILocation(line: 705, column: 47, scope: !2247)
!2253 = !DILocation(line: 705, column: 65, scope: !2247)
!2254 = !DILocation(line: 706, column: 11, scope: !2247)
!2255 = !DILocation(line: 702, column: 11, scope: !1820)
!2256 = !DILocation(line: 395, column: 15, scope: !1818)
!2257 = !DILocation(line: 709, column: 5, scope: !1820)
!2258 = !DILocation(line: 710, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1820, file: !463, line: 710, column: 7)
!2260 = !DILocation(line: 710, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2259, file: !463, line: 710, column: 7)
!2262 = !DILocation(line: 710, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !463, line: 710, column: 7)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !463, line: 710, column: 7)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !463, line: 710, column: 7)
!2266 = !DILocation(line: 710, column: 7, scope: !2264)
!2267 = !DILocation(line: 710, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !463, line: 710, column: 7)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !463, line: 710, column: 7)
!2270 = !DILocation(line: 710, column: 7, scope: !2269)
!2271 = !DILocation(line: 710, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !463, line: 710, column: 7)
!2273 = distinct !DILexicalBlock(scope: !2265, file: !463, line: 710, column: 7)
!2274 = !DILocation(line: 710, column: 7, scope: !2273)
!2275 = !DILocation(line: 710, column: 7, scope: !2265)
!2276 = !DILocation(line: 710, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !463, line: 710, column: 7)
!2278 = distinct !DILexicalBlock(scope: !2259, file: !463, line: 710, column: 7)
!2279 = !DILocation(line: 710, column: 7, scope: !2278)
!2280 = !DILocation(line: 712, column: 5, scope: !1820)
!2281 = !DILocation(line: 713, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !463, line: 713, column: 7)
!2283 = distinct !DILexicalBlock(scope: !1820, file: !463, line: 713, column: 7)
!2284 = !DILocation(line: 417, column: 21, scope: !1820)
!2285 = !DILocation(line: 713, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !463, line: 713, column: 7)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !463, line: 713, column: 7)
!2288 = distinct !DILexicalBlock(scope: !2282, file: !463, line: 713, column: 7)
!2289 = !DILocation(line: 713, column: 7, scope: !2287)
!2290 = !DILocation(line: 713, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !463, line: 713, column: 7)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !463, line: 713, column: 7)
!2293 = !DILocation(line: 713, column: 7, scope: !2292)
!2294 = !DILocation(line: 713, column: 7, scope: !2288)
!2295 = !DILocation(line: 714, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !463, line: 714, column: 7)
!2297 = distinct !DILexicalBlock(scope: !1820, file: !463, line: 714, column: 7)
!2298 = !DILocation(line: 714, column: 7, scope: !2297)
!2299 = !DILocation(line: 716, column: 11, scope: !1820)
!2300 = !DILocation(line: 718, column: 5, scope: !1821)
!2301 = !DILocation(line: 395, column: 82, scope: !1821)
!2302 = !DILocation(line: 395, column: 3, scope: !1821)
!2303 = distinct !{!2303, !1951, !2304, !938}
!2304 = !DILocation(line: 718, column: 5, scope: !1818)
!2305 = !DILocation(line: 720, column: 11, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !1787, file: !463, line: 720, column: 7)
!2307 = !DILocation(line: 720, column: 16, scope: !2306)
!2308 = !DILocation(line: 728, column: 51, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !1787, file: !463, line: 728, column: 7)
!2310 = !DILocation(line: 731, column: 11, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2309, file: !463, line: 730, column: 5)
!2312 = !DILocation(line: 732, column: 16, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2311, file: !463, line: 731, column: 11)
!2314 = !DILocation(line: 732, column: 9, scope: !2313)
!2315 = !DILocation(line: 736, column: 18, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !463, line: 736, column: 16)
!2317 = !DILocation(line: 736, column: 29, scope: !2316)
!2318 = !DILocation(line: 745, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !1787, file: !463, line: 745, column: 7)
!2320 = !DILocation(line: 745, column: 20, scope: !2319)
!2321 = !DILocation(line: 746, column: 12, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !463, line: 746, column: 5)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !463, line: 746, column: 5)
!2324 = !DILocation(line: 746, column: 5, scope: !2323)
!2325 = !DILocation(line: 747, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !463, line: 747, column: 7)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !463, line: 747, column: 7)
!2328 = !DILocation(line: 747, column: 7, scope: !2327)
!2329 = !DILocation(line: 746, column: 39, scope: !2322)
!2330 = distinct !{!2330, !2324, !2331, !938}
!2331 = !DILocation(line: 747, column: 7, scope: !2323)
!2332 = !DILocation(line: 749, column: 11, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1787, file: !463, line: 749, column: 7)
!2334 = !DILocation(line: 749, column: 7, scope: !1787)
!2335 = !DILocation(line: 750, column: 5, scope: !2333)
!2336 = !DILocation(line: 750, column: 17, scope: !2333)
!2337 = !DILocation(line: 756, column: 21, scope: !2163)
!2338 = !DILocation(line: 760, column: 42, scope: !1787)
!2339 = !DILocation(line: 758, column: 10, scope: !1787)
!2340 = !DILocation(line: 758, column: 3, scope: !1787)
!2341 = !DILocation(line: 762, column: 1, scope: !1787)
!2342 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1015, file: !1015, line: 98, type: !2343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!119}
!2345 = !DISubprogram(name: "strlen", scope: !1008, file: !1008, line: 407, type: !2346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!121, !74}
!2348 = !DISubprogram(name: "iswprint", scope: !2349, file: !2349, line: 120, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!2349 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2350 = distinct !DISubprogram(name: "quotearg_alloc", scope: !463, file: !463, line: 788, type: !2351, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!124, !74, !119, !1680}
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "arg", arg: 1, scope: !2350, file: !463, line: 788, type: !74)
!2355 = !DILocalVariable(name: "argsize", arg: 2, scope: !2350, file: !463, line: 788, type: !119)
!2356 = !DILocalVariable(name: "o", arg: 3, scope: !2350, file: !463, line: 789, type: !1680)
!2357 = !DILocation(line: 0, scope: !2350)
!2358 = !DILocalVariable(name: "arg", arg: 1, scope: !2359, file: !463, line: 801, type: !74)
!2359 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !463, file: !463, line: 801, type: !2360, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!124, !74, !119, !767, !1680}
!2362 = !{!2358, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370}
!2363 = !DILocalVariable(name: "argsize", arg: 2, scope: !2359, file: !463, line: 801, type: !119)
!2364 = !DILocalVariable(name: "size", arg: 3, scope: !2359, file: !463, line: 801, type: !767)
!2365 = !DILocalVariable(name: "o", arg: 4, scope: !2359, file: !463, line: 802, type: !1680)
!2366 = !DILocalVariable(name: "p", scope: !2359, file: !463, line: 804, type: !1680)
!2367 = !DILocalVariable(name: "saved_errno", scope: !2359, file: !463, line: 805, type: !117)
!2368 = !DILocalVariable(name: "flags", scope: !2359, file: !463, line: 807, type: !117)
!2369 = !DILocalVariable(name: "bufsize", scope: !2359, file: !463, line: 808, type: !119)
!2370 = !DILocalVariable(name: "buf", scope: !2359, file: !463, line: 812, type: !124)
!2371 = !DILocation(line: 0, scope: !2359, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 791, column: 10, scope: !2350)
!2373 = !DILocation(line: 804, column: 37, scope: !2359, inlinedAt: !2372)
!2374 = !DILocation(line: 805, column: 21, scope: !2359, inlinedAt: !2372)
!2375 = !DILocation(line: 807, column: 18, scope: !2359, inlinedAt: !2372)
!2376 = !DILocation(line: 807, column: 24, scope: !2359, inlinedAt: !2372)
!2377 = !DILocation(line: 808, column: 72, scope: !2359, inlinedAt: !2372)
!2378 = !DILocation(line: 809, column: 56, scope: !2359, inlinedAt: !2372)
!2379 = !DILocation(line: 810, column: 49, scope: !2359, inlinedAt: !2372)
!2380 = !DILocation(line: 811, column: 49, scope: !2359, inlinedAt: !2372)
!2381 = !DILocation(line: 808, column: 20, scope: !2359, inlinedAt: !2372)
!2382 = !DILocation(line: 811, column: 62, scope: !2359, inlinedAt: !2372)
!2383 = !DILocation(line: 812, column: 15, scope: !2359, inlinedAt: !2372)
!2384 = !DILocation(line: 813, column: 60, scope: !2359, inlinedAt: !2372)
!2385 = !DILocation(line: 815, column: 32, scope: !2359, inlinedAt: !2372)
!2386 = !DILocation(line: 815, column: 47, scope: !2359, inlinedAt: !2372)
!2387 = !DILocation(line: 813, column: 3, scope: !2359, inlinedAt: !2372)
!2388 = !DILocation(line: 816, column: 9, scope: !2359, inlinedAt: !2372)
!2389 = !DILocation(line: 791, column: 3, scope: !2350)
!2390 = !DILocation(line: 0, scope: !2359)
!2391 = !DILocation(line: 804, column: 37, scope: !2359)
!2392 = !DILocation(line: 805, column: 21, scope: !2359)
!2393 = !DILocation(line: 807, column: 18, scope: !2359)
!2394 = !DILocation(line: 807, column: 27, scope: !2359)
!2395 = !DILocation(line: 807, column: 24, scope: !2359)
!2396 = !DILocation(line: 808, column: 72, scope: !2359)
!2397 = !DILocation(line: 809, column: 56, scope: !2359)
!2398 = !DILocation(line: 810, column: 49, scope: !2359)
!2399 = !DILocation(line: 811, column: 49, scope: !2359)
!2400 = !DILocation(line: 808, column: 20, scope: !2359)
!2401 = !DILocation(line: 811, column: 62, scope: !2359)
!2402 = !DILocation(line: 812, column: 15, scope: !2359)
!2403 = !DILocation(line: 813, column: 60, scope: !2359)
!2404 = !DILocation(line: 815, column: 32, scope: !2359)
!2405 = !DILocation(line: 815, column: 47, scope: !2359)
!2406 = !DILocation(line: 813, column: 3, scope: !2359)
!2407 = !DILocation(line: 816, column: 9, scope: !2359)
!2408 = !DILocation(line: 817, column: 7, scope: !2359)
!2409 = !DILocation(line: 818, column: 11, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2359, file: !463, line: 817, column: 7)
!2411 = !DILocation(line: 818, column: 5, scope: !2410)
!2412 = !DILocation(line: 819, column: 3, scope: !2359)
!2413 = distinct !DISubprogram(name: "quotearg_free", scope: !463, file: !463, line: 837, type: !395, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2414)
!2414 = !{!2415, !2416}
!2415 = !DILocalVariable(name: "sv", scope: !2413, file: !463, line: 839, type: !550)
!2416 = !DILocalVariable(name: "i", scope: !2417, file: !463, line: 840, type: !117)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !463, line: 840, column: 3)
!2418 = !DILocation(line: 839, column: 24, scope: !2413)
!2419 = !DILocation(line: 0, scope: !2413)
!2420 = !DILocation(line: 0, scope: !2417)
!2421 = !DILocation(line: 840, column: 21, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2417, file: !463, line: 840, column: 3)
!2423 = !DILocation(line: 840, column: 3, scope: !2417)
!2424 = !DILocation(line: 842, column: 13, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2413, file: !463, line: 842, column: 7)
!2426 = !{!2427, !835, i64 8}
!2427 = !{!"slotvec", !1120, i64 0, !835, i64 8}
!2428 = !DILocation(line: 842, column: 17, scope: !2425)
!2429 = !DILocation(line: 842, column: 7, scope: !2413)
!2430 = !DILocation(line: 841, column: 17, scope: !2422)
!2431 = !DILocation(line: 841, column: 5, scope: !2422)
!2432 = !DILocation(line: 840, column: 32, scope: !2422)
!2433 = distinct !{!2433, !2423, !2434, !938}
!2434 = !DILocation(line: 841, column: 20, scope: !2417)
!2435 = !DILocation(line: 844, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2425, file: !463, line: 843, column: 5)
!2437 = !DILocation(line: 845, column: 21, scope: !2436)
!2438 = !{!2427, !1120, i64 0}
!2439 = !DILocation(line: 846, column: 20, scope: !2436)
!2440 = !DILocation(line: 847, column: 5, scope: !2436)
!2441 = !DILocation(line: 848, column: 10, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2413, file: !463, line: 848, column: 7)
!2443 = !DILocation(line: 848, column: 7, scope: !2413)
!2444 = !DILocation(line: 850, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2442, file: !463, line: 849, column: 5)
!2446 = !DILocation(line: 851, column: 15, scope: !2445)
!2447 = !DILocation(line: 852, column: 5, scope: !2445)
!2448 = !DILocation(line: 853, column: 10, scope: !2413)
!2449 = !DILocation(line: 854, column: 1, scope: !2413)
!2450 = distinct !DISubprogram(name: "quotearg_n", scope: !463, file: !463, line: 919, type: !1005, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2451)
!2451 = !{!2452, !2453}
!2452 = !DILocalVariable(name: "n", arg: 1, scope: !2450, file: !463, line: 919, type: !117)
!2453 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !463, line: 919, type: !74)
!2454 = !DILocation(line: 0, scope: !2450)
!2455 = !DILocation(line: 921, column: 10, scope: !2450)
!2456 = !DILocation(line: 921, column: 3, scope: !2450)
!2457 = distinct !DISubprogram(name: "quotearg_n_options", scope: !463, file: !463, line: 866, type: !2458, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!124, !117, !74, !119, !1680}
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2471, !2472, !2474, !2475, !2476}
!2461 = !DILocalVariable(name: "n", arg: 1, scope: !2457, file: !463, line: 866, type: !117)
!2462 = !DILocalVariable(name: "arg", arg: 2, scope: !2457, file: !463, line: 866, type: !74)
!2463 = !DILocalVariable(name: "argsize", arg: 3, scope: !2457, file: !463, line: 866, type: !119)
!2464 = !DILocalVariable(name: "options", arg: 4, scope: !2457, file: !463, line: 867, type: !1680)
!2465 = !DILocalVariable(name: "saved_errno", scope: !2457, file: !463, line: 869, type: !117)
!2466 = !DILocalVariable(name: "sv", scope: !2457, file: !463, line: 871, type: !550)
!2467 = !DILocalVariable(name: "nslots_max", scope: !2457, file: !463, line: 873, type: !117)
!2468 = !DILocalVariable(name: "preallocated", scope: !2469, file: !463, line: 879, type: !247)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !463, line: 878, column: 5)
!2470 = distinct !DILexicalBlock(scope: !2457, file: !463, line: 877, column: 7)
!2471 = !DILocalVariable(name: "new_nslots", scope: !2469, file: !463, line: 880, type: !780)
!2472 = !DILocalVariable(name: "size", scope: !2473, file: !463, line: 891, type: !119)
!2473 = distinct !DILexicalBlock(scope: !2457, file: !463, line: 890, column: 3)
!2474 = !DILocalVariable(name: "val", scope: !2473, file: !463, line: 892, type: !124)
!2475 = !DILocalVariable(name: "flags", scope: !2473, file: !463, line: 894, type: !117)
!2476 = !DILocalVariable(name: "qsize", scope: !2473, file: !463, line: 895, type: !119)
!2477 = !DILocation(line: 0, scope: !2457)
!2478 = !DILocation(line: 869, column: 21, scope: !2457)
!2479 = !DILocation(line: 871, column: 24, scope: !2457)
!2480 = !DILocation(line: 874, column: 17, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2457, file: !463, line: 874, column: 7)
!2482 = !DILocation(line: 875, column: 5, scope: !2481)
!2483 = !DILocation(line: 877, column: 7, scope: !2470)
!2484 = !DILocation(line: 877, column: 14, scope: !2470)
!2485 = !DILocation(line: 877, column: 7, scope: !2457)
!2486 = !DILocation(line: 879, column: 31, scope: !2469)
!2487 = !DILocation(line: 0, scope: !2469)
!2488 = !DILocation(line: 880, column: 7, scope: !2469)
!2489 = !DILocation(line: 880, column: 26, scope: !2469)
!2490 = !DILocation(line: 880, column: 13, scope: !2469)
!2491 = !DILocation(line: 882, column: 31, scope: !2469)
!2492 = !DILocation(line: 883, column: 33, scope: !2469)
!2493 = !DILocation(line: 883, column: 42, scope: !2469)
!2494 = !DILocation(line: 883, column: 31, scope: !2469)
!2495 = !DILocation(line: 882, column: 22, scope: !2469)
!2496 = !DILocation(line: 882, column: 15, scope: !2469)
!2497 = !DILocation(line: 884, column: 11, scope: !2469)
!2498 = !DILocation(line: 885, column: 15, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2469, file: !463, line: 884, column: 11)
!2500 = !{i64 0, i64 8, !1119, i64 8, i64 8, !834}
!2501 = !DILocation(line: 885, column: 9, scope: !2499)
!2502 = !DILocation(line: 886, column: 20, scope: !2469)
!2503 = !DILocation(line: 886, column: 18, scope: !2469)
!2504 = !DILocation(line: 886, column: 32, scope: !2469)
!2505 = !DILocation(line: 886, column: 43, scope: !2469)
!2506 = !DILocation(line: 886, column: 53, scope: !2469)
!2507 = !DILocation(line: 0, scope: !1890, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 886, column: 7, scope: !2469)
!2509 = !DILocation(line: 59, column: 10, scope: !1890, inlinedAt: !2508)
!2510 = !DILocation(line: 887, column: 16, scope: !2469)
!2511 = !DILocation(line: 887, column: 14, scope: !2469)
!2512 = !DILocation(line: 888, column: 5, scope: !2470)
!2513 = !DILocation(line: 888, column: 5, scope: !2469)
!2514 = !DILocation(line: 891, column: 19, scope: !2473)
!2515 = !DILocation(line: 891, column: 25, scope: !2473)
!2516 = !DILocation(line: 0, scope: !2473)
!2517 = !DILocation(line: 892, column: 23, scope: !2473)
!2518 = !DILocation(line: 894, column: 26, scope: !2473)
!2519 = !DILocation(line: 894, column: 32, scope: !2473)
!2520 = !DILocation(line: 896, column: 55, scope: !2473)
!2521 = !DILocation(line: 897, column: 55, scope: !2473)
!2522 = !DILocation(line: 898, column: 55, scope: !2473)
!2523 = !DILocation(line: 899, column: 55, scope: !2473)
!2524 = !DILocation(line: 895, column: 20, scope: !2473)
!2525 = !DILocation(line: 901, column: 14, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2473, file: !463, line: 901, column: 9)
!2527 = !DILocation(line: 901, column: 9, scope: !2473)
!2528 = !DILocation(line: 903, column: 35, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2526, file: !463, line: 902, column: 7)
!2530 = !DILocation(line: 903, column: 20, scope: !2529)
!2531 = !DILocation(line: 904, column: 17, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !463, line: 904, column: 13)
!2533 = !DILocation(line: 904, column: 13, scope: !2529)
!2534 = !DILocation(line: 905, column: 11, scope: !2532)
!2535 = !DILocation(line: 906, column: 27, scope: !2529)
!2536 = !DILocation(line: 906, column: 19, scope: !2529)
!2537 = !DILocation(line: 907, column: 69, scope: !2529)
!2538 = !DILocation(line: 909, column: 44, scope: !2529)
!2539 = !DILocation(line: 910, column: 44, scope: !2529)
!2540 = !DILocation(line: 907, column: 9, scope: !2529)
!2541 = !DILocation(line: 911, column: 7, scope: !2529)
!2542 = !DILocation(line: 913, column: 11, scope: !2473)
!2543 = !DILocation(line: 914, column: 5, scope: !2473)
!2544 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !463, file: !463, line: 925, type: !2545, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!124, !117, !74, !119}
!2547 = !{!2548, !2549, !2550}
!2548 = !DILocalVariable(name: "n", arg: 1, scope: !2544, file: !463, line: 925, type: !117)
!2549 = !DILocalVariable(name: "arg", arg: 2, scope: !2544, file: !463, line: 925, type: !74)
!2550 = !DILocalVariable(name: "argsize", arg: 3, scope: !2544, file: !463, line: 925, type: !119)
!2551 = !DILocation(line: 0, scope: !2544)
!2552 = !DILocation(line: 927, column: 10, scope: !2544)
!2553 = !DILocation(line: 927, column: 3, scope: !2544)
!2554 = distinct !DISubprogram(name: "quotearg", scope: !463, file: !463, line: 931, type: !1017, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2555)
!2555 = !{!2556}
!2556 = !DILocalVariable(name: "arg", arg: 1, scope: !2554, file: !463, line: 931, type: !74)
!2557 = !DILocation(line: 0, scope: !2554)
!2558 = !DILocation(line: 0, scope: !2450, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 933, column: 10, scope: !2554)
!2560 = !DILocation(line: 921, column: 10, scope: !2450, inlinedAt: !2559)
!2561 = !DILocation(line: 933, column: 3, scope: !2554)
!2562 = distinct !DISubprogram(name: "quotearg_mem", scope: !463, file: !463, line: 937, type: !2563, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!124, !74, !119}
!2565 = !{!2566, !2567}
!2566 = !DILocalVariable(name: "arg", arg: 1, scope: !2562, file: !463, line: 937, type: !74)
!2567 = !DILocalVariable(name: "argsize", arg: 2, scope: !2562, file: !463, line: 937, type: !119)
!2568 = !DILocation(line: 0, scope: !2562)
!2569 = !DILocation(line: 0, scope: !2544, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 939, column: 10, scope: !2562)
!2571 = !DILocation(line: 927, column: 10, scope: !2544, inlinedAt: !2570)
!2572 = !DILocation(line: 939, column: 3, scope: !2562)
!2573 = distinct !DISubprogram(name: "quotearg_n_style", scope: !463, file: !463, line: 943, type: !2574, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!124, !117, !101, !74}
!2576 = !{!2577, !2578, !2579, !2580}
!2577 = !DILocalVariable(name: "n", arg: 1, scope: !2573, file: !463, line: 943, type: !117)
!2578 = !DILocalVariable(name: "s", arg: 2, scope: !2573, file: !463, line: 943, type: !101)
!2579 = !DILocalVariable(name: "arg", arg: 3, scope: !2573, file: !463, line: 943, type: !74)
!2580 = !DILocalVariable(name: "o", scope: !2573, file: !463, line: 945, type: !1681)
!2581 = !DILocation(line: 0, scope: !2573)
!2582 = !DILocation(line: 945, column: 3, scope: !2573)
!2583 = !DILocation(line: 945, column: 32, scope: !2573)
!2584 = !{!2585}
!2585 = distinct !{!2585, !2586, !"quoting_options_from_style: argument 0"}
!2586 = distinct !{!2586, !"quoting_options_from_style"}
!2587 = !DILocation(line: 945, column: 36, scope: !2573)
!2588 = !DILocalVariable(name: "style", arg: 1, scope: !2589, file: !463, line: 183, type: !101)
!2589 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !463, file: !463, line: 183, type: !2590, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!502, !101}
!2592 = !{!2588, !2593}
!2593 = !DILocalVariable(name: "o", scope: !2589, file: !463, line: 185, type: !502)
!2594 = !DILocation(line: 0, scope: !2589, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 945, column: 36, scope: !2573)
!2596 = !DILocation(line: 185, column: 26, scope: !2589, inlinedAt: !2595)
!2597 = !DILocation(line: 186, column: 13, scope: !2598, inlinedAt: !2595)
!2598 = distinct !DILexicalBlock(scope: !2589, file: !463, line: 186, column: 7)
!2599 = !DILocation(line: 186, column: 7, scope: !2589, inlinedAt: !2595)
!2600 = !DILocation(line: 187, column: 5, scope: !2598, inlinedAt: !2595)
!2601 = !DILocation(line: 188, column: 11, scope: !2589, inlinedAt: !2595)
!2602 = !DILocation(line: 946, column: 10, scope: !2573)
!2603 = !DILocation(line: 947, column: 1, scope: !2573)
!2604 = !DILocation(line: 946, column: 3, scope: !2573)
!2605 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !463, file: !463, line: 950, type: !2606, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!124, !117, !101, !74, !119}
!2608 = !{!2609, !2610, !2611, !2612, !2613}
!2609 = !DILocalVariable(name: "n", arg: 1, scope: !2605, file: !463, line: 950, type: !117)
!2610 = !DILocalVariable(name: "s", arg: 2, scope: !2605, file: !463, line: 950, type: !101)
!2611 = !DILocalVariable(name: "arg", arg: 3, scope: !2605, file: !463, line: 951, type: !74)
!2612 = !DILocalVariable(name: "argsize", arg: 4, scope: !2605, file: !463, line: 951, type: !119)
!2613 = !DILocalVariable(name: "o", scope: !2605, file: !463, line: 953, type: !1681)
!2614 = !DILocation(line: 0, scope: !2605)
!2615 = !DILocation(line: 953, column: 3, scope: !2605)
!2616 = !DILocation(line: 953, column: 32, scope: !2605)
!2617 = !{!2618}
!2618 = distinct !{!2618, !2619, !"quoting_options_from_style: argument 0"}
!2619 = distinct !{!2619, !"quoting_options_from_style"}
!2620 = !DILocation(line: 953, column: 36, scope: !2605)
!2621 = !DILocation(line: 0, scope: !2589, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 953, column: 36, scope: !2605)
!2623 = !DILocation(line: 185, column: 26, scope: !2589, inlinedAt: !2622)
!2624 = !DILocation(line: 186, column: 13, scope: !2598, inlinedAt: !2622)
!2625 = !DILocation(line: 186, column: 7, scope: !2589, inlinedAt: !2622)
!2626 = !DILocation(line: 187, column: 5, scope: !2598, inlinedAt: !2622)
!2627 = !DILocation(line: 188, column: 11, scope: !2589, inlinedAt: !2622)
!2628 = !DILocation(line: 954, column: 10, scope: !2605)
!2629 = !DILocation(line: 955, column: 1, scope: !2605)
!2630 = !DILocation(line: 954, column: 3, scope: !2605)
!2631 = distinct !DISubprogram(name: "quotearg_style", scope: !463, file: !463, line: 958, type: !2632, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!124, !101, !74}
!2634 = !{!2635, !2636}
!2635 = !DILocalVariable(name: "s", arg: 1, scope: !2631, file: !463, line: 958, type: !101)
!2636 = !DILocalVariable(name: "arg", arg: 2, scope: !2631, file: !463, line: 958, type: !74)
!2637 = !DILocation(line: 0, scope: !2631)
!2638 = !DILocation(line: 0, scope: !2573, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 960, column: 10, scope: !2631)
!2640 = !DILocation(line: 945, column: 3, scope: !2573, inlinedAt: !2639)
!2641 = !DILocation(line: 945, column: 32, scope: !2573, inlinedAt: !2639)
!2642 = !{!2643}
!2643 = distinct !{!2643, !2644, !"quoting_options_from_style: argument 0"}
!2644 = distinct !{!2644, !"quoting_options_from_style"}
!2645 = !DILocation(line: 945, column: 36, scope: !2573, inlinedAt: !2639)
!2646 = !DILocation(line: 0, scope: !2589, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 945, column: 36, scope: !2573, inlinedAt: !2639)
!2648 = !DILocation(line: 185, column: 26, scope: !2589, inlinedAt: !2647)
!2649 = !DILocation(line: 186, column: 13, scope: !2598, inlinedAt: !2647)
!2650 = !DILocation(line: 186, column: 7, scope: !2589, inlinedAt: !2647)
!2651 = !DILocation(line: 187, column: 5, scope: !2598, inlinedAt: !2647)
!2652 = !DILocation(line: 188, column: 11, scope: !2589, inlinedAt: !2647)
!2653 = !DILocation(line: 946, column: 10, scope: !2573, inlinedAt: !2639)
!2654 = !DILocation(line: 947, column: 1, scope: !2573, inlinedAt: !2639)
!2655 = !DILocation(line: 960, column: 3, scope: !2631)
!2656 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !463, file: !463, line: 964, type: !2657, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!124, !101, !74, !119}
!2659 = !{!2660, !2661, !2662}
!2660 = !DILocalVariable(name: "s", arg: 1, scope: !2656, file: !463, line: 964, type: !101)
!2661 = !DILocalVariable(name: "arg", arg: 2, scope: !2656, file: !463, line: 964, type: !74)
!2662 = !DILocalVariable(name: "argsize", arg: 3, scope: !2656, file: !463, line: 964, type: !119)
!2663 = !DILocation(line: 0, scope: !2656)
!2664 = !DILocation(line: 0, scope: !2605, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 966, column: 10, scope: !2656)
!2666 = !DILocation(line: 953, column: 3, scope: !2605, inlinedAt: !2665)
!2667 = !DILocation(line: 953, column: 32, scope: !2605, inlinedAt: !2665)
!2668 = !{!2669}
!2669 = distinct !{!2669, !2670, !"quoting_options_from_style: argument 0"}
!2670 = distinct !{!2670, !"quoting_options_from_style"}
!2671 = !DILocation(line: 953, column: 36, scope: !2605, inlinedAt: !2665)
!2672 = !DILocation(line: 0, scope: !2589, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 953, column: 36, scope: !2605, inlinedAt: !2665)
!2674 = !DILocation(line: 185, column: 26, scope: !2589, inlinedAt: !2673)
!2675 = !DILocation(line: 186, column: 13, scope: !2598, inlinedAt: !2673)
!2676 = !DILocation(line: 186, column: 7, scope: !2589, inlinedAt: !2673)
!2677 = !DILocation(line: 187, column: 5, scope: !2598, inlinedAt: !2673)
!2678 = !DILocation(line: 188, column: 11, scope: !2589, inlinedAt: !2673)
!2679 = !DILocation(line: 954, column: 10, scope: !2605, inlinedAt: !2665)
!2680 = !DILocation(line: 955, column: 1, scope: !2605, inlinedAt: !2665)
!2681 = !DILocation(line: 966, column: 3, scope: !2656)
!2682 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !463, file: !463, line: 970, type: !2683, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!124, !74, !119, !4}
!2685 = !{!2686, !2687, !2688, !2689}
!2686 = !DILocalVariable(name: "arg", arg: 1, scope: !2682, file: !463, line: 970, type: !74)
!2687 = !DILocalVariable(name: "argsize", arg: 2, scope: !2682, file: !463, line: 970, type: !119)
!2688 = !DILocalVariable(name: "ch", arg: 3, scope: !2682, file: !463, line: 970, type: !4)
!2689 = !DILocalVariable(name: "options", scope: !2682, file: !463, line: 972, type: !502)
!2690 = !DILocation(line: 0, scope: !2682)
!2691 = !DILocation(line: 972, column: 3, scope: !2682)
!2692 = !DILocation(line: 972, column: 26, scope: !2682)
!2693 = !DILocation(line: 973, column: 13, scope: !2682)
!2694 = !{i64 0, i64 4, !900, i64 4, i64 4, !891, i64 8, i64 32, !900, i64 40, i64 8, !834, i64 48, i64 8, !834}
!2695 = !DILocation(line: 0, scope: !1700, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 974, column: 3, scope: !2682)
!2697 = !DILocation(line: 147, column: 41, scope: !1700, inlinedAt: !2696)
!2698 = !DILocation(line: 147, column: 62, scope: !1700, inlinedAt: !2696)
!2699 = !DILocation(line: 147, column: 57, scope: !1700, inlinedAt: !2696)
!2700 = !DILocation(line: 148, column: 15, scope: !1700, inlinedAt: !2696)
!2701 = !DILocation(line: 149, column: 21, scope: !1700, inlinedAt: !2696)
!2702 = !DILocation(line: 149, column: 24, scope: !1700, inlinedAt: !2696)
!2703 = !DILocation(line: 150, column: 19, scope: !1700, inlinedAt: !2696)
!2704 = !DILocation(line: 150, column: 24, scope: !1700, inlinedAt: !2696)
!2705 = !DILocation(line: 150, column: 6, scope: !1700, inlinedAt: !2696)
!2706 = !DILocation(line: 975, column: 10, scope: !2682)
!2707 = !DILocation(line: 976, column: 1, scope: !2682)
!2708 = !DILocation(line: 975, column: 3, scope: !2682)
!2709 = distinct !DISubprogram(name: "quotearg_char", scope: !463, file: !463, line: 979, type: !2710, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!124, !74, !4}
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "arg", arg: 1, scope: !2709, file: !463, line: 979, type: !74)
!2714 = !DILocalVariable(name: "ch", arg: 2, scope: !2709, file: !463, line: 979, type: !4)
!2715 = !DILocation(line: 0, scope: !2709)
!2716 = !DILocation(line: 0, scope: !2682, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 981, column: 10, scope: !2709)
!2718 = !DILocation(line: 972, column: 3, scope: !2682, inlinedAt: !2717)
!2719 = !DILocation(line: 972, column: 26, scope: !2682, inlinedAt: !2717)
!2720 = !DILocation(line: 973, column: 13, scope: !2682, inlinedAt: !2717)
!2721 = !DILocation(line: 0, scope: !1700, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 974, column: 3, scope: !2682, inlinedAt: !2717)
!2723 = !DILocation(line: 147, column: 41, scope: !1700, inlinedAt: !2722)
!2724 = !DILocation(line: 147, column: 62, scope: !1700, inlinedAt: !2722)
!2725 = !DILocation(line: 147, column: 57, scope: !1700, inlinedAt: !2722)
!2726 = !DILocation(line: 148, column: 15, scope: !1700, inlinedAt: !2722)
!2727 = !DILocation(line: 149, column: 21, scope: !1700, inlinedAt: !2722)
!2728 = !DILocation(line: 149, column: 24, scope: !1700, inlinedAt: !2722)
!2729 = !DILocation(line: 150, column: 19, scope: !1700, inlinedAt: !2722)
!2730 = !DILocation(line: 150, column: 24, scope: !1700, inlinedAt: !2722)
!2731 = !DILocation(line: 150, column: 6, scope: !1700, inlinedAt: !2722)
!2732 = !DILocation(line: 975, column: 10, scope: !2682, inlinedAt: !2717)
!2733 = !DILocation(line: 976, column: 1, scope: !2682, inlinedAt: !2717)
!2734 = !DILocation(line: 981, column: 3, scope: !2709)
!2735 = distinct !DISubprogram(name: "quotearg_colon", scope: !463, file: !463, line: 985, type: !1017, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2736)
!2736 = !{!2737}
!2737 = !DILocalVariable(name: "arg", arg: 1, scope: !2735, file: !463, line: 985, type: !74)
!2738 = !DILocation(line: 0, scope: !2735)
!2739 = !DILocation(line: 0, scope: !2709, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 987, column: 10, scope: !2735)
!2741 = !DILocation(line: 0, scope: !2682, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 981, column: 10, scope: !2709, inlinedAt: !2740)
!2743 = !DILocation(line: 972, column: 3, scope: !2682, inlinedAt: !2742)
!2744 = !DILocation(line: 972, column: 26, scope: !2682, inlinedAt: !2742)
!2745 = !DILocation(line: 973, column: 13, scope: !2682, inlinedAt: !2742)
!2746 = !DILocation(line: 0, scope: !1700, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 974, column: 3, scope: !2682, inlinedAt: !2742)
!2748 = !DILocation(line: 147, column: 57, scope: !1700, inlinedAt: !2747)
!2749 = !DILocation(line: 149, column: 21, scope: !1700, inlinedAt: !2747)
!2750 = !DILocation(line: 150, column: 6, scope: !1700, inlinedAt: !2747)
!2751 = !DILocation(line: 975, column: 10, scope: !2682, inlinedAt: !2742)
!2752 = !DILocation(line: 976, column: 1, scope: !2682, inlinedAt: !2742)
!2753 = !DILocation(line: 987, column: 3, scope: !2735)
!2754 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !463, file: !463, line: 991, type: !2563, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2755)
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "arg", arg: 1, scope: !2754, file: !463, line: 991, type: !74)
!2757 = !DILocalVariable(name: "argsize", arg: 2, scope: !2754, file: !463, line: 991, type: !119)
!2758 = !DILocation(line: 0, scope: !2754)
!2759 = !DILocation(line: 0, scope: !2682, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 993, column: 10, scope: !2754)
!2761 = !DILocation(line: 972, column: 3, scope: !2682, inlinedAt: !2760)
!2762 = !DILocation(line: 972, column: 26, scope: !2682, inlinedAt: !2760)
!2763 = !DILocation(line: 973, column: 13, scope: !2682, inlinedAt: !2760)
!2764 = !DILocation(line: 0, scope: !1700, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 974, column: 3, scope: !2682, inlinedAt: !2760)
!2766 = !DILocation(line: 147, column: 57, scope: !1700, inlinedAt: !2765)
!2767 = !DILocation(line: 149, column: 21, scope: !1700, inlinedAt: !2765)
!2768 = !DILocation(line: 150, column: 6, scope: !1700, inlinedAt: !2765)
!2769 = !DILocation(line: 975, column: 10, scope: !2682, inlinedAt: !2760)
!2770 = !DILocation(line: 976, column: 1, scope: !2682, inlinedAt: !2760)
!2771 = !DILocation(line: 993, column: 3, scope: !2754)
!2772 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !463, file: !463, line: 997, type: !2574, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2773)
!2773 = !{!2774, !2775, !2776, !2777}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2772, file: !463, line: 997, type: !117)
!2775 = !DILocalVariable(name: "s", arg: 2, scope: !2772, file: !463, line: 997, type: !101)
!2776 = !DILocalVariable(name: "arg", arg: 3, scope: !2772, file: !463, line: 997, type: !74)
!2777 = !DILocalVariable(name: "options", scope: !2772, file: !463, line: 999, type: !502)
!2778 = !DILocation(line: 185, column: 26, scope: !2589, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 1000, column: 13, scope: !2772)
!2780 = !DILocation(line: 0, scope: !2772)
!2781 = !DILocation(line: 999, column: 3, scope: !2772)
!2782 = !DILocation(line: 999, column: 26, scope: !2772)
!2783 = !DILocation(line: 0, scope: !2589, inlinedAt: !2779)
!2784 = !DILocation(line: 186, column: 13, scope: !2598, inlinedAt: !2779)
!2785 = !DILocation(line: 186, column: 7, scope: !2589, inlinedAt: !2779)
!2786 = !DILocation(line: 187, column: 5, scope: !2598, inlinedAt: !2779)
!2787 = !{!2788}
!2788 = distinct !{!2788, !2789, !"quoting_options_from_style: argument 0"}
!2789 = distinct !{!2789, !"quoting_options_from_style"}
!2790 = !DILocation(line: 1000, column: 13, scope: !2772)
!2791 = !DILocation(line: 0, scope: !1700, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 1001, column: 3, scope: !2772)
!2793 = !DILocation(line: 147, column: 57, scope: !1700, inlinedAt: !2792)
!2794 = !DILocation(line: 149, column: 21, scope: !1700, inlinedAt: !2792)
!2795 = !DILocation(line: 150, column: 6, scope: !1700, inlinedAt: !2792)
!2796 = !DILocation(line: 1002, column: 10, scope: !2772)
!2797 = !DILocation(line: 1003, column: 1, scope: !2772)
!2798 = !DILocation(line: 1002, column: 3, scope: !2772)
!2799 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !463, file: !463, line: 1006, type: !2800, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!124, !117, !74, !74, !74}
!2802 = !{!2803, !2804, !2805, !2806}
!2803 = !DILocalVariable(name: "n", arg: 1, scope: !2799, file: !463, line: 1006, type: !117)
!2804 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2799, file: !463, line: 1006, type: !74)
!2805 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2799, file: !463, line: 1007, type: !74)
!2806 = !DILocalVariable(name: "arg", arg: 4, scope: !2799, file: !463, line: 1007, type: !74)
!2807 = !DILocation(line: 0, scope: !2799)
!2808 = !DILocalVariable(name: "n", arg: 1, scope: !2809, file: !463, line: 1014, type: !117)
!2809 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !463, file: !463, line: 1014, type: !2810, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!124, !117, !74, !74, !74, !119}
!2812 = !{!2808, !2813, !2814, !2815, !2816, !2817}
!2813 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2809, file: !463, line: 1014, type: !74)
!2814 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2809, file: !463, line: 1015, type: !74)
!2815 = !DILocalVariable(name: "arg", arg: 4, scope: !2809, file: !463, line: 1016, type: !74)
!2816 = !DILocalVariable(name: "argsize", arg: 5, scope: !2809, file: !463, line: 1016, type: !119)
!2817 = !DILocalVariable(name: "o", scope: !2809, file: !463, line: 1018, type: !502)
!2818 = !DILocation(line: 0, scope: !2809, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1009, column: 10, scope: !2799)
!2820 = !DILocation(line: 1018, column: 3, scope: !2809, inlinedAt: !2819)
!2821 = !DILocation(line: 1018, column: 26, scope: !2809, inlinedAt: !2819)
!2822 = !DILocation(line: 1018, column: 30, scope: !2809, inlinedAt: !2819)
!2823 = !DILocation(line: 0, scope: !1740, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 1019, column: 3, scope: !2809, inlinedAt: !2819)
!2825 = !DILocation(line: 174, column: 12, scope: !1740, inlinedAt: !2824)
!2826 = !DILocation(line: 175, column: 8, scope: !1753, inlinedAt: !2824)
!2827 = !DILocation(line: 175, column: 19, scope: !1753, inlinedAt: !2824)
!2828 = !DILocation(line: 176, column: 5, scope: !1753, inlinedAt: !2824)
!2829 = !DILocation(line: 177, column: 6, scope: !1740, inlinedAt: !2824)
!2830 = !DILocation(line: 177, column: 17, scope: !1740, inlinedAt: !2824)
!2831 = !DILocation(line: 178, column: 6, scope: !1740, inlinedAt: !2824)
!2832 = !DILocation(line: 178, column: 18, scope: !1740, inlinedAt: !2824)
!2833 = !DILocation(line: 1020, column: 10, scope: !2809, inlinedAt: !2819)
!2834 = !DILocation(line: 1021, column: 1, scope: !2809, inlinedAt: !2819)
!2835 = !DILocation(line: 1009, column: 3, scope: !2799)
!2836 = !DILocation(line: 0, scope: !2809)
!2837 = !DILocation(line: 1018, column: 3, scope: !2809)
!2838 = !DILocation(line: 1018, column: 26, scope: !2809)
!2839 = !DILocation(line: 1018, column: 30, scope: !2809)
!2840 = !DILocation(line: 0, scope: !1740, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1019, column: 3, scope: !2809)
!2842 = !DILocation(line: 174, column: 12, scope: !1740, inlinedAt: !2841)
!2843 = !DILocation(line: 175, column: 8, scope: !1753, inlinedAt: !2841)
!2844 = !DILocation(line: 175, column: 19, scope: !1753, inlinedAt: !2841)
!2845 = !DILocation(line: 176, column: 5, scope: !1753, inlinedAt: !2841)
!2846 = !DILocation(line: 177, column: 6, scope: !1740, inlinedAt: !2841)
!2847 = !DILocation(line: 177, column: 17, scope: !1740, inlinedAt: !2841)
!2848 = !DILocation(line: 178, column: 6, scope: !1740, inlinedAt: !2841)
!2849 = !DILocation(line: 178, column: 18, scope: !1740, inlinedAt: !2841)
!2850 = !DILocation(line: 1020, column: 10, scope: !2809)
!2851 = !DILocation(line: 1021, column: 1, scope: !2809)
!2852 = !DILocation(line: 1020, column: 3, scope: !2809)
!2853 = distinct !DISubprogram(name: "quotearg_custom", scope: !463, file: !463, line: 1024, type: !2854, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!124, !74, !74, !74}
!2856 = !{!2857, !2858, !2859}
!2857 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2853, file: !463, line: 1024, type: !74)
!2858 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2853, file: !463, line: 1024, type: !74)
!2859 = !DILocalVariable(name: "arg", arg: 3, scope: !2853, file: !463, line: 1025, type: !74)
!2860 = !DILocation(line: 0, scope: !2853)
!2861 = !DILocation(line: 0, scope: !2799, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 1027, column: 10, scope: !2853)
!2863 = !DILocation(line: 0, scope: !2809, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 1009, column: 10, scope: !2799, inlinedAt: !2862)
!2865 = !DILocation(line: 1018, column: 3, scope: !2809, inlinedAt: !2864)
!2866 = !DILocation(line: 1018, column: 26, scope: !2809, inlinedAt: !2864)
!2867 = !DILocation(line: 1018, column: 30, scope: !2809, inlinedAt: !2864)
!2868 = !DILocation(line: 0, scope: !1740, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 1019, column: 3, scope: !2809, inlinedAt: !2864)
!2870 = !DILocation(line: 174, column: 12, scope: !1740, inlinedAt: !2869)
!2871 = !DILocation(line: 175, column: 8, scope: !1753, inlinedAt: !2869)
!2872 = !DILocation(line: 175, column: 19, scope: !1753, inlinedAt: !2869)
!2873 = !DILocation(line: 176, column: 5, scope: !1753, inlinedAt: !2869)
!2874 = !DILocation(line: 177, column: 6, scope: !1740, inlinedAt: !2869)
!2875 = !DILocation(line: 177, column: 17, scope: !1740, inlinedAt: !2869)
!2876 = !DILocation(line: 178, column: 6, scope: !1740, inlinedAt: !2869)
!2877 = !DILocation(line: 178, column: 18, scope: !1740, inlinedAt: !2869)
!2878 = !DILocation(line: 1020, column: 10, scope: !2809, inlinedAt: !2864)
!2879 = !DILocation(line: 1021, column: 1, scope: !2809, inlinedAt: !2864)
!2880 = !DILocation(line: 1027, column: 3, scope: !2853)
!2881 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !463, file: !463, line: 1031, type: !2882, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!124, !74, !74, !74, !119}
!2884 = !{!2885, !2886, !2887, !2888}
!2885 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2881, file: !463, line: 1031, type: !74)
!2886 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2881, file: !463, line: 1031, type: !74)
!2887 = !DILocalVariable(name: "arg", arg: 3, scope: !2881, file: !463, line: 1032, type: !74)
!2888 = !DILocalVariable(name: "argsize", arg: 4, scope: !2881, file: !463, line: 1032, type: !119)
!2889 = !DILocation(line: 0, scope: !2881)
!2890 = !DILocation(line: 0, scope: !2809, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 1034, column: 10, scope: !2881)
!2892 = !DILocation(line: 1018, column: 3, scope: !2809, inlinedAt: !2891)
!2893 = !DILocation(line: 1018, column: 26, scope: !2809, inlinedAt: !2891)
!2894 = !DILocation(line: 1018, column: 30, scope: !2809, inlinedAt: !2891)
!2895 = !DILocation(line: 0, scope: !1740, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 1019, column: 3, scope: !2809, inlinedAt: !2891)
!2897 = !DILocation(line: 174, column: 12, scope: !1740, inlinedAt: !2896)
!2898 = !DILocation(line: 175, column: 8, scope: !1753, inlinedAt: !2896)
!2899 = !DILocation(line: 175, column: 19, scope: !1753, inlinedAt: !2896)
!2900 = !DILocation(line: 176, column: 5, scope: !1753, inlinedAt: !2896)
!2901 = !DILocation(line: 177, column: 6, scope: !1740, inlinedAt: !2896)
!2902 = !DILocation(line: 177, column: 17, scope: !1740, inlinedAt: !2896)
!2903 = !DILocation(line: 178, column: 6, scope: !1740, inlinedAt: !2896)
!2904 = !DILocation(line: 178, column: 18, scope: !1740, inlinedAt: !2896)
!2905 = !DILocation(line: 1020, column: 10, scope: !2809, inlinedAt: !2891)
!2906 = !DILocation(line: 1021, column: 1, scope: !2809, inlinedAt: !2891)
!2907 = !DILocation(line: 1034, column: 3, scope: !2881)
!2908 = distinct !DISubprogram(name: "quote_n_mem", scope: !463, file: !463, line: 1049, type: !2909, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!74, !117, !74, !119}
!2911 = !{!2912, !2913, !2914}
!2912 = !DILocalVariable(name: "n", arg: 1, scope: !2908, file: !463, line: 1049, type: !117)
!2913 = !DILocalVariable(name: "arg", arg: 2, scope: !2908, file: !463, line: 1049, type: !74)
!2914 = !DILocalVariable(name: "argsize", arg: 3, scope: !2908, file: !463, line: 1049, type: !119)
!2915 = !DILocation(line: 0, scope: !2908)
!2916 = !DILocation(line: 1051, column: 10, scope: !2908)
!2917 = !DILocation(line: 1051, column: 3, scope: !2908)
!2918 = distinct !DISubprogram(name: "quote_mem", scope: !463, file: !463, line: 1055, type: !2919, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!74, !74, !119}
!2921 = !{!2922, !2923}
!2922 = !DILocalVariable(name: "arg", arg: 1, scope: !2918, file: !463, line: 1055, type: !74)
!2923 = !DILocalVariable(name: "argsize", arg: 2, scope: !2918, file: !463, line: 1055, type: !119)
!2924 = !DILocation(line: 0, scope: !2918)
!2925 = !DILocation(line: 0, scope: !2908, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 1057, column: 10, scope: !2918)
!2927 = !DILocation(line: 1051, column: 10, scope: !2908, inlinedAt: !2926)
!2928 = !DILocation(line: 1057, column: 3, scope: !2918)
!2929 = distinct !DISubprogram(name: "quote_n", scope: !463, file: !463, line: 1061, type: !2930, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!74, !117, !74}
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "n", arg: 1, scope: !2929, file: !463, line: 1061, type: !117)
!2934 = !DILocalVariable(name: "arg", arg: 2, scope: !2929, file: !463, line: 1061, type: !74)
!2935 = !DILocation(line: 0, scope: !2929)
!2936 = !DILocation(line: 0, scope: !2908, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1063, column: 10, scope: !2929)
!2938 = !DILocation(line: 1051, column: 10, scope: !2908, inlinedAt: !2937)
!2939 = !DILocation(line: 1063, column: 3, scope: !2929)
!2940 = distinct !DISubprogram(name: "quote", scope: !463, file: !463, line: 1067, type: !2941, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!74, !74}
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "arg", arg: 1, scope: !2940, file: !463, line: 1067, type: !74)
!2945 = !DILocation(line: 0, scope: !2940)
!2946 = !DILocation(line: 0, scope: !2929, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 1069, column: 10, scope: !2940)
!2948 = !DILocation(line: 0, scope: !2908, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 1063, column: 10, scope: !2929, inlinedAt: !2947)
!2950 = !DILocation(line: 1051, column: 10, scope: !2908, inlinedAt: !2949)
!2951 = !DILocation(line: 1069, column: 3, scope: !2940)
!2952 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !565, file: !565, line: 156, type: !2953, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2977)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!124, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2957)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !79, line: 92, baseType: !2958)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !79, line: 65, size: 576, elements: !2959)
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2969, !2970, !2971, !2972}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !2958, file: !79, line: 69, baseType: !124, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !2958, file: !79, line: 70, baseType: !124, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !2958, file: !79, line: 71, baseType: !124, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !2958, file: !79, line: 72, baseType: !124, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !2958, file: !79, line: 74, baseType: !2965, size: 128, offset: 256)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1094, line: 11, size: 128, elements: !2966)
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2965, file: !1094, line: 16, baseType: !743, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2965, file: !1094, line: 21, baseType: !1098, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !2958, file: !79, line: 75, baseType: !1100, size: 32, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !2958, file: !79, line: 76, baseType: !1100, size: 32, offset: 416)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !2958, file: !79, line: 77, baseType: !725, size: 16, offset: 448)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !2958, file: !79, line: 79, baseType: !2973, size: 64, offset: 480)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !79, line: 79, size: 64, elements: !2974)
!2974 = !{!2975, !2976}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !2973, file: !79, line: 79, baseType: !117, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !2973, file: !79, line: 79, baseType: !117, size: 32, offset: 32)
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DILocalVariable(name: "ut", arg: 1, scope: !2952, file: !565, line: 156, type: !2955)
!2979 = !DILocalVariable(name: "name", scope: !2952, file: !565, line: 158, type: !74)
!2980 = !DILocalVariable(name: "len", scope: !2952, file: !565, line: 159, type: !780)
!2981 = !DILocalVariable(name: "p", scope: !2952, file: !565, line: 160, type: !74)
!2982 = !DILocation(line: 0, scope: !2952)
!2983 = !DILocation(line: 158, column: 26, scope: !2952)
!2984 = !DILocation(line: 159, column: 15, scope: !2952)
!2985 = !DILocation(line: 161, column: 17, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2952, file: !565, line: 161, column: 3)
!2987 = !DILocation(line: 161, column: 8, scope: !2986)
!2988 = !DILocation(line: 161, scope: !2986)
!2989 = !DILocation(line: 161, column: 29, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !565, line: 161, column: 3)
!2991 = !DILocation(line: 161, column: 33, scope: !2990)
!2992 = !DILocation(line: 161, column: 36, scope: !2990)
!2993 = !DILocation(line: 161, column: 42, scope: !2990)
!2994 = !DILocation(line: 161, column: 3, scope: !2986)
!2995 = distinct !{!2995, !2994, !2996, !938}
!2996 = !DILocation(line: 162, column: 5, scope: !2986)
!2997 = !DILocation(line: 163, column: 29, scope: !2952)
!2998 = !DILocation(line: 163, column: 10, scope: !2952)
!2999 = !DILocation(line: 163, column: 3, scope: !2952)
!3000 = distinct !DISubprogram(name: "read_utmp", scope: !565, file: !565, line: 977, type: !3001, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3005)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!117, !74, !779, !3003, !117}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!3005 = !{!3006, !3007, !3008, !3009}
!3006 = !DILocalVariable(name: "file", arg: 1, scope: !3000, file: !565, line: 977, type: !74)
!3007 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3000, file: !565, line: 977, type: !779)
!3008 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3000, file: !565, line: 977, type: !3003)
!3009 = !DILocalVariable(name: "options", arg: 4, scope: !3000, file: !565, line: 978, type: !117)
!3010 = !DILocation(line: 0, scope: !3000)
!3011 = !DILocalVariable(name: "file", arg: 1, scope: !3012, file: !565, line: 320, type: !74)
!3012 = distinct !DISubprogram(name: "read_utmp_from_file", scope: !565, file: !565, line: 320, type: !3001, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3013)
!3013 = !{!3011, !3014, !3015, !3016, !3017, !3025, !3026, !3027, !3028, !3030, !3031, !3035, !3038, !3041}
!3014 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3012, file: !565, line: 320, type: !779)
!3015 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3012, file: !565, line: 320, type: !3003)
!3016 = !DILocalVariable(name: "options", arg: 4, scope: !3012, file: !565, line: 321, type: !117)
!3017 = !DILocalVariable(name: "a", scope: !3012, file: !565, line: 332, type: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmp_alloc", file: !565, line: 202, size: 256, elements: !3019)
!3019 = !{!3020, !3022, !3023, !3024}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "utmp", scope: !3018, file: !565, line: 208, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "filled", scope: !3018, file: !565, line: 211, baseType: !780, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "string_bytes", scope: !3018, file: !565, line: 214, baseType: !780, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_bytes", scope: !3018, file: !565, line: 218, baseType: !780, size: 64, offset: 192)
!3025 = !DILocalVariable(name: "file_is_utmp", scope: !3012, file: !565, line: 347, type: !247)
!3026 = !DILocalVariable(name: "runlevel_ts", scope: !3012, file: !565, line: 349, type: !2965)
!3027 = !DILocalVariable(name: "entry", scope: !3012, file: !565, line: 352, type: !1039)
!3028 = !DILocalVariable(name: "ut", scope: !3029, file: !565, line: 356, type: !719)
!3029 = distinct !DILexicalBlock(scope: !3012, file: !565, line: 355, column: 5)
!3030 = !DILocalVariable(name: "ts", scope: !3029, file: !565, line: 358, type: !2965)
!3031 = !DILocalVariable(name: "i", scope: !3032, file: !565, line: 429, type: !780)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !565, line: 429, column: 7)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !565, line: 428, column: 5)
!3034 = distinct !DILexicalBlock(scope: !3012, file: !565, line: 426, column: 7)
!3035 = !DILocalVariable(name: "ut", scope: !3036, file: !565, line: 431, type: !3021)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !565, line: 430, column: 9)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !565, line: 429, column: 7)
!3038 = !DILocalVariable(name: "boot_time", scope: !3039, file: !565, line: 443, type: !2965)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !565, line: 441, column: 9)
!3040 = distinct !DILexicalBlock(scope: !3033, file: !565, line: 440, column: 11)
!3041 = !DILocalVariable(name: "boot_time", scope: !3042, file: !565, line: 592, type: !2965)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !565, line: 591, column: 5)
!3043 = distinct !DILexicalBlock(scope: !3012, file: !565, line: 588, column: 7)
!3044 = !DILocation(line: 0, scope: !3012, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 986, column: 10, scope: !3000)
!3046 = !DILocation(line: 323, column: 16, scope: !3047, inlinedAt: !3045)
!3047 = distinct !DILexicalBlock(scope: !3012, file: !565, line: 323, column: 7)
!3048 = !DILocation(line: 323, column: 39, scope: !3047, inlinedAt: !3045)
!3049 = !DILocation(line: 324, column: 7, scope: !3047, inlinedAt: !3045)
!3050 = !DILocation(line: 342, column: 3, scope: !3012, inlinedAt: !3045)
!3051 = !DILocation(line: 344, column: 3, scope: !3012, inlinedAt: !3045)
!3052 = !DILocalVariable(name: "__s1", arg: 1, scope: !3053, file: !904, line: 1359, type: !74)
!3053 = distinct !DISubprogram(name: "streq", scope: !904, file: !904, line: 1359, type: !905, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3054)
!3054 = !{!3052, !3055}
!3055 = !DILocalVariable(name: "__s2", arg: 2, scope: !3053, file: !904, line: 1359, type: !74)
!3056 = !DILocation(line: 0, scope: !3053, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 347, column: 23, scope: !3012, inlinedAt: !3045)
!3058 = !DILocation(line: 1361, column: 11, scope: !3053, inlinedAt: !3057)
!3059 = !DILocation(line: 1361, column: 10, scope: !3053, inlinedAt: !3057)
!3060 = !DILocation(line: 354, column: 19, scope: !3012, inlinedAt: !3045)
!3061 = !DILocation(line: 354, column: 36, scope: !3012, inlinedAt: !3045)
!3062 = !DILocation(line: 354, column: 3, scope: !3012, inlinedAt: !3045)
!3063 = !DILocation(line: 0, scope: !3029, inlinedAt: !3045)
!3064 = !DILocation(line: 360, column: 25, scope: !3029, inlinedAt: !3045)
!3065 = !DILocation(line: 360, column: 31, scope: !3029, inlinedAt: !3045)
!3066 = !{!3067, !1120, i64 344}
!3067 = !{!"utmpx", !933, i64 0, !892, i64 4, !836, i64 8, !836, i64 40, !836, i64 44, !836, i64 76, !3068, i64 332, !1120, i64 336, !3069, i64 344, !836, i64 360, !836, i64 376}
!3068 = !{!"__exit_status", !933, i64 0, !933, i64 2}
!3069 = !{!"timeval", !1120, i64 0, !1120, i64 8}
!3070 = !DILocation(line: 360, column: 60, scope: !3029, inlinedAt: !3045)
!3071 = !{!3067, !1120, i64 352}
!3072 = !DILocation(line: 360, column: 68, scope: !3029, inlinedAt: !3045)
!3073 = !DILocation(line: 365, column: 11, scope: !3029, inlinedAt: !3045)
!3074 = !DILocation(line: 366, column: 21, scope: !3029, inlinedAt: !3045)
!3075 = !DILocation(line: 366, column: 35, scope: !3029, inlinedAt: !3045)
!3076 = !DILocation(line: 368, column: 25, scope: !3029, inlinedAt: !3045)
!3077 = !DILocation(line: 368, column: 32, scope: !3029, inlinedAt: !3045)
!3078 = !DILocation(line: 372, column: 25, scope: !3029, inlinedAt: !3045)
!3079 = !DILocation(line: 372, column: 34, scope: !3029, inlinedAt: !3045)
!3080 = !DILocation(line: 374, column: 25, scope: !3029, inlinedAt: !3045)
!3081 = !DILocation(line: 374, column: 34, scope: !3029, inlinedAt: !3045)
!3082 = !DILocation(line: 379, column: 25, scope: !3029, inlinedAt: !3045)
!3083 = !{!3067, !892, i64 4}
!3084 = !DILocation(line: 384, column: 25, scope: !3029, inlinedAt: !3045)
!3085 = !{!3067, !933, i64 0}
!3086 = !DILocation(line: 390, column: 25, scope: !3029, inlinedAt: !3045)
!3087 = !{!3067, !1120, i64 336}
!3088 = !DILocation(line: 394, column: 21, scope: !3029, inlinedAt: !3045)
!3089 = !{!3067, !933, i64 332}
!3090 = !DILocation(line: 394, column: 49, scope: !3029, inlinedAt: !3045)
!3091 = !{!3067, !933, i64 334}
!3092 = !{i64 0, i64 8, !834, i64 8, i64 8, !1119, i64 16, i64 8, !1119, i64 24, i64 8, !1119}
!3093 = !{i64 0, i64 8, !1119, i64 8, i64 8, !1119, i64 16, i64 8, !1119}
!3094 = !{i64 0, i64 8, !1119, i64 8, i64 8, !1119}
!3095 = !{i64 0, i64 8, !1119}
!3096 = !DILocation(line: 398, column: 11, scope: !3097, inlinedAt: !3045)
!3097 = distinct !DILexicalBlock(scope: !3029, file: !565, line: 397, column: 11)
!3098 = !DILocalVariable(name: "__s1", arg: 1, scope: !3099, file: !904, line: 974, type: !1039)
!3099 = distinct !DISubprogram(name: "memeq", scope: !904, file: !904, line: 974, type: !1604, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3100)
!3100 = !{!3098, !3101, !3102}
!3101 = !DILocalVariable(name: "__s2", arg: 2, scope: !3099, file: !904, line: 974, type: !1039)
!3102 = !DILocalVariable(name: "__n", arg: 3, scope: !3099, file: !904, line: 974, type: !119)
!3103 = !DILocation(line: 0, scope: !3099, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 398, column: 14, scope: !3097, inlinedAt: !3045)
!3105 = !DILocation(line: 976, column: 11, scope: !3099, inlinedAt: !3104)
!3106 = !DILocation(line: 976, column: 10, scope: !3099, inlinedAt: !3104)
!3107 = !DILocation(line: 399, column: 11, scope: !3097, inlinedAt: !3045)
!3108 = !DILocation(line: 0, scope: !3099, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 399, column: 14, scope: !3097, inlinedAt: !3045)
!3110 = !DILocation(line: 976, column: 11, scope: !3099, inlinedAt: !3109)
!3111 = !DILocation(line: 976, column: 10, scope: !3099, inlinedAt: !3109)
!3112 = !DILocation(line: 397, column: 11, scope: !3029, inlinedAt: !3045)
!3113 = distinct !{!3113, !3062, !3114, !938}
!3114 = !DILocation(line: 408, column: 5, scope: !3012, inlinedAt: !3045)
!3115 = !DILocation(line: 410, column: 3, scope: !3012, inlinedAt: !3045)
!3116 = !DILocation(line: 427, column: 7, scope: !3034, inlinedAt: !3045)
!3117 = !DILocation(line: 0, scope: !3032, inlinedAt: !3045)
!3118 = !DILocation(line: 429, column: 27, scope: !3037, inlinedAt: !3045)
!3119 = !DILocation(line: 429, column: 7, scope: !3032, inlinedAt: !3045)
!3120 = !DILocation(line: 0, scope: !3036, inlinedAt: !3045)
!3121 = !DILocation(line: 432, column: 15, scope: !3122, inlinedAt: !3045)
!3122 = distinct !DILexicalBlock(scope: !3036, file: !565, line: 432, column: 15)
!3123 = !DILocation(line: 432, column: 15, scope: !3036, inlinedAt: !3045)
!3124 = !DILocation(line: 435, column: 23, scope: !3125, inlinedAt: !3045)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !565, line: 435, column: 19)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !565, line: 433, column: 13)
!3127 = !DILocation(line: 435, column: 29, scope: !3125, inlinedAt: !3045)
!3128 = !{!1153, !1120, i64 32}
!3129 = !DILocation(line: 435, column: 36, scope: !3125, inlinedAt: !3045)
!3130 = !DILocation(line: 435, column: 42, scope: !3125, inlinedAt: !3045)
!3131 = !DILocation(line: 436, column: 29, scope: !3125, inlinedAt: !3045)
!3132 = !DILocalVariable(name: "a", arg: 1, scope: !3133, file: !565, line: 302, type: !3018)
!3133 = distinct !DISubprogram(name: "have_boot_time", scope: !565, file: !565, line: 302, type: !3134, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!247, !3018}
!3136 = !{!3132, !3137, !3139}
!3137 = !DILocalVariable(name: "i", scope: !3138, file: !565, line: 304, type: !780)
!3138 = distinct !DILexicalBlock(scope: !3133, file: !565, line: 304, column: 3)
!3139 = !DILocalVariable(name: "ut", scope: !3140, file: !565, line: 306, type: !3021)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !565, line: 305, column: 5)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !565, line: 304, column: 3)
!3142 = !DILocation(line: 0, scope: !3133, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 440, column: 12, scope: !3040, inlinedAt: !3045)
!3144 = !DILocation(line: 0, scope: !3138, inlinedAt: !3143)
!3145 = !DILocation(line: 429, column: 40, scope: !3037, inlinedAt: !3045)
!3146 = distinct !{!3146, !3119, !3147, !938}
!3147 = !DILocation(line: 439, column: 9, scope: !3032, inlinedAt: !3045)
!3148 = !DILocation(line: 0, scope: !3140, inlinedAt: !3143)
!3149 = !DILocation(line: 307, column: 11, scope: !3150, inlinedAt: !3143)
!3150 = distinct !DILexicalBlock(scope: !3140, file: !565, line: 307, column: 11)
!3151 = !DILocation(line: 304, column: 36, scope: !3141, inlinedAt: !3143)
!3152 = !DILocation(line: 304, column: 23, scope: !3141, inlinedAt: !3143)
!3153 = !DILocation(line: 304, column: 3, scope: !3138, inlinedAt: !3143)
!3154 = distinct !{!3154, !3153, !3155, !938}
!3155 = !DILocation(line: 309, column: 5, scope: !3138, inlinedAt: !3143)
!3156 = distinct !{!3156, !3153, !3155, !938}
!3157 = !DILocation(line: 440, column: 11, scope: !3033, inlinedAt: !3045)
!3158 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3159, file: !579, line: 87, type: !3162)
!3159 = distinct !DISubprogram(name: "get_linux_boot_time_fallback", scope: !579, file: !579, line: 87, type: !3160, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3163)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!117, !3162}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!3163 = !{!3158, !3164, !3166, !3168, !3171, !3200}
!3164 = !DILocalVariable(name: "boot_touched_files", scope: !3159, file: !579, line: 96, type: !3165)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 256, elements: !136)
!3166 = !DILocalVariable(name: "i", scope: !3167, file: !579, line: 105, type: !780)
!3167 = distinct !DILexicalBlock(scope: !3159, file: !579, line: 105, column: 3)
!3168 = !DILocalVariable(name: "filename", scope: !3169, file: !579, line: 107, type: !74)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !579, line: 106, column: 5)
!3170 = distinct !DILexicalBlock(scope: !3167, file: !579, line: 105, column: 3)
!3171 = !DILocalVariable(name: "statbuf", scope: !3169, file: !579, line: 108, type: !3172)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3173, line: 44, size: 1024, elements: !3174)
!3173 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3174 = !{!3175, !3177, !3179, !3181, !3183, !3185, !3187, !3188, !3189, !3190, !3192, !3193, !3195, !3196, !3197, !3198}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3172, file: !3173, line: 46, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !287, line: 145, baseType: !121)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3172, file: !3173, line: 47, baseType: !3178, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !287, line: 148, baseType: !121)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3172, file: !3173, line: 48, baseType: !3180, size: 32, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !287, line: 150, baseType: !80)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3172, file: !3173, line: 49, baseType: !3182, size: 32, offset: 160)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !287, line: 151, baseType: !80)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3172, file: !3173, line: 50, baseType: !3184, size: 32, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !287, line: 146, baseType: !80)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3172, file: !3173, line: 51, baseType: !3186, size: 32, offset: 224)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !287, line: 147, baseType: !80)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3172, file: !3173, line: 52, baseType: !3176, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3172, file: !3173, line: 53, baseType: !3176, size: 64, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3172, file: !3173, line: 54, baseType: !286, size: 64, offset: 384)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3172, file: !3173, line: 55, baseType: !3191, size: 32, offset: 448)
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !287, line: 175, baseType: !117)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3172, file: !3173, line: 56, baseType: !117, size: 32, offset: 480)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3172, file: !3173, line: 57, baseType: !3194, size: 64, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !287, line: 180, baseType: !288)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3172, file: !3173, line: 65, baseType: !2965, size: 128, offset: 576)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3172, file: !3173, line: 66, baseType: !2965, size: 128, offset: 704)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3172, file: !3173, line: 67, baseType: !2965, size: 128, offset: 832)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3172, file: !3173, line: 79, baseType: !3199, size: 64, offset: 960)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !143)
!3200 = !DILocalVariable(name: "boot_time", scope: !3201, file: !579, line: 111, type: !2965)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !579, line: 110, column: 9)
!3202 = distinct !DILexicalBlock(scope: !3169, file: !579, line: 109, column: 11)
!3203 = !DILocation(line: 0, scope: !3159, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 444, column: 15, scope: !3205, inlinedAt: !3045)
!3205 = distinct !DILexicalBlock(scope: !3039, file: !565, line: 444, column: 15)
!3206 = !DILocation(line: 0, scope: !3167, inlinedAt: !3204)
!3207 = !DILocation(line: 0, scope: !3169, inlinedAt: !3204)
!3208 = !DILocation(line: 108, column: 7, scope: !3169, inlinedAt: !3204)
!3209 = !DILocation(line: 108, column: 19, scope: !3169, inlinedAt: !3204)
!3210 = !DILocation(line: 109, column: 11, scope: !3202, inlinedAt: !3204)
!3211 = !DILocation(line: 109, column: 37, scope: !3202, inlinedAt: !3204)
!3212 = !DILocation(line: 109, column: 11, scope: !3169, inlinedAt: !3204)
!3213 = !DILocalVariable(name: "st", arg: 1, scope: !3214, file: !3215, line: 169, type: !3218)
!3214 = distinct !DISubprogram(name: "get_stat_mtime", scope: !3215, file: !3215, line: 169, type: !3216, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3220)
!3215 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!2965, !3218}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3172)
!3220 = !{!3213}
!3221 = !DILocation(line: 0, scope: !3214, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 111, column: 39, scope: !3201, inlinedAt: !3204)
!3223 = !DILocation(line: 0, scope: !3201, inlinedAt: !3204)
!3224 = !DILocation(line: 122, column: 5, scope: !3170, inlinedAt: !3204)
!3225 = !DILocation(line: 0, scope: !3039, inlinedAt: !3045)
!3226 = !DILocation(line: 444, column: 15, scope: !3039, inlinedAt: !3045)
!3227 = !DILocation(line: 172, column: 10, scope: !3214, inlinedAt: !3222)
!3228 = !DILocation(line: 445, column: 17, scope: !3205, inlinedAt: !3045)
!3229 = !DILocation(line: 445, column: 13, scope: !3205, inlinedAt: !3045)
!3230 = !DILocation(line: 589, column: 7, scope: !3043, inlinedAt: !3045)
!3231 = !DILocation(line: 0, scope: !3053, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 589, column: 10, scope: !3043, inlinedAt: !3045)
!3233 = !DILocation(line: 1361, column: 11, scope: !3053, inlinedAt: !3232)
!3234 = !DILocation(line: 1361, column: 10, scope: !3053, inlinedAt: !3232)
!3235 = !DILocation(line: 590, column: 7, scope: !3043, inlinedAt: !3045)
!3236 = !DILocation(line: 0, scope: !3133, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 590, column: 11, scope: !3043, inlinedAt: !3045)
!3238 = !DILocation(line: 0, scope: !3138, inlinedAt: !3237)
!3239 = !DILocation(line: 304, column: 23, scope: !3141, inlinedAt: !3237)
!3240 = !DILocation(line: 304, column: 3, scope: !3138, inlinedAt: !3237)
!3241 = !DILocation(line: 0, scope: !3140, inlinedAt: !3237)
!3242 = !DILocation(line: 307, column: 11, scope: !3150, inlinedAt: !3237)
!3243 = !DILocalVariable(name: "a", arg: 1, scope: !3244, file: !565, line: 284, type: !3018)
!3244 = distinct !DISubprogram(name: "finish_utmp", scope: !565, file: !565, line: 284, type: !3245, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!3018, !3018}
!3247 = !{!3243, !3248, !3249}
!3248 = !DILocalVariable(name: "stringlim", scope: !3244, file: !565, line: 286, type: !124)
!3249 = !DILocalVariable(name: "i", scope: !3250, file: !565, line: 288, type: !780)
!3250 = distinct !DILexicalBlock(scope: !3244, file: !565, line: 288, column: 3)
!3251 = !DILocation(line: 0, scope: !3244, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 688, column: 7, scope: !3012, inlinedAt: !3045)
!3253 = !DILocation(line: 286, column: 37, scope: !3244, inlinedAt: !3252)
!3254 = !DILocation(line: 0, scope: !3250, inlinedAt: !3252)
!3255 = !DILocation(line: 288, column: 3, scope: !3250, inlinedAt: !3252)
!3256 = !DILocation(line: 304, column: 36, scope: !3141, inlinedAt: !3237)
!3257 = distinct !{!3257, !3240, !3258, !938}
!3258 = !DILocation(line: 309, column: 5, scope: !3138, inlinedAt: !3237)
!3259 = distinct !{!3259, !3240, !3258, !938}
!3260 = !DILocation(line: 588, column: 7, scope: !3012, inlinedAt: !3045)
!3261 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3262, file: !579, line: 134, type: !3162)
!3262 = distinct !DISubprogram(name: "get_linux_boot_time_final_fallback", scope: !579, file: !579, line: 134, type: !3160, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3263)
!3263 = !{!3261, !3264, !3265}
!3264 = !DILocalVariable(name: "uptime", scope: !3262, file: !579, line: 136, type: !2965)
!3265 = !DILocalVariable(name: "result", scope: !3266, file: !579, line: 139, type: !2965)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !579, line: 138, column: 5)
!3267 = distinct !DILexicalBlock(scope: !3262, file: !579, line: 137, column: 7)
!3268 = !DILocation(line: 0, scope: !3262, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 593, column: 11, scope: !3270, inlinedAt: !3045)
!3270 = distinct !DILexicalBlock(scope: !3042, file: !565, line: 593, column: 11)
!3271 = !DILocation(line: 136, column: 3, scope: !3262, inlinedAt: !3269)
!3272 = !DILocation(line: 136, column: 19, scope: !3262, inlinedAt: !3269)
!3273 = !DILocalVariable(name: "p_uptime", arg: 1, scope: !3274, file: !579, line: 27, type: !3162)
!3274 = distinct !DISubprogram(name: "get_linux_uptime", scope: !579, file: !579, line: 27, type: !3160, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3275)
!3275 = !{!3273, !3276, !3311, !3317, !3318, !3323, !3324, !3327, !3330}
!3276 = !DILocalVariable(name: "fp", scope: !3274, file: !579, line: 40, type: !3277)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !3279)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3279, file: !264, line: 51, baseType: !117, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3279, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3279, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3279, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3279, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3279, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3279, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3279, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3279, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3279, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3279, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3279, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3279, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3279, file: !264, line: 70, baseType: !3295, size: 64, offset: 832)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3279, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3279, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3279, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3279, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3279, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3279, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3279, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3279, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3279, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3279, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3279, file: !264, line: 93, baseType: !3295, size: 64, offset: 1344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3279, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3279, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3279, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3279, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!3311 = !DILocalVariable(name: "buf", scope: !3312, file: !579, line: 43, type: !3314)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !579, line: 42, column: 5)
!3313 = distinct !DILexicalBlock(scope: !3274, file: !579, line: 41, column: 7)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !3315)
!3315 = !{!3316}
!3316 = !DISubrange(count: 33)
!3317 = !DILocalVariable(name: "n", scope: !3312, file: !579, line: 44, type: !119)
!3318 = !DILocalVariable(name: "s", scope: !3319, file: !579, line: 50, type: !3321)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !579, line: 47, column: 9)
!3320 = distinct !DILexicalBlock(scope: !3312, file: !579, line: 46, column: 11)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !3322, line: 10, baseType: !743)
!3322 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!3323 = !DILocalVariable(name: "p", scope: !3319, file: !579, line: 51, type: !124)
!3324 = !DILocalVariable(name: "ns", scope: !3325, file: !579, line: 56, type: !288)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !579, line: 55, column: 13)
!3326 = distinct !DILexicalBlock(scope: !3319, file: !579, line: 54, column: 15)
!3327 = !DILocalVariable(name: "i", scope: !3328, file: !579, line: 58, type: !117)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !579, line: 58, column: 17)
!3329 = distinct !DILexicalBlock(scope: !3325, file: !579, line: 57, column: 19)
!3330 = !DILocalVariable(name: "info", scope: !3274, file: !579, line: 70, type: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !3332, line: 8, size: 896, elements: !3333)
!3332 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "6f8882c542ddb6603b06a4eafcc17015")
!3333 = !{!3334, !3337, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3349, !3350, !3351, !3352, !3354}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !3331, file: !3332, line: 9, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !3336, line: 15, baseType: !288)
!3336 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "", checksumkind: CSK_MD5, checksum: "dfd772b670921419860c9b47bcd28ff0")
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !3331, file: !3332, line: 10, baseType: !3338, size: 192, offset: 64)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3339, size: 192, elements: !152)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !3336, line: 16, baseType: !121)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !3331, file: !3332, line: 11, baseType: !3339, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !3331, file: !3332, line: 12, baseType: !3339, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !3331, file: !3332, line: 13, baseType: !3339, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !3331, file: !3332, line: 14, baseType: !3339, size: 64, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !3331, file: !3332, line: 15, baseType: !3339, size: 64, offset: 512)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !3331, file: !3332, line: 16, baseType: !3339, size: 64, offset: 576)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !3331, file: !3332, line: 17, baseType: !3347, size: 16, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !3348, line: 24, baseType: !118)
!3348 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3331, file: !3332, line: 18, baseType: !3347, size: 16, offset: 656)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !3331, file: !3332, line: 19, baseType: !3339, size: 64, offset: 704)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !3331, file: !3332, line: 20, baseType: !3339, size: 64, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !3331, file: !3332, line: 21, baseType: !3353, size: 32, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !3348, line: 27, baseType: !80)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !3331, file: !3332, line: 22, baseType: !3355, offset: 864)
!3355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !3356)
!3356 = !{!3357}
!3357 = !DISubrange(count: 0)
!3358 = !DILocation(line: 0, scope: !3274, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 137, column: 7, scope: !3267, inlinedAt: !3269)
!3360 = !DILocation(line: 33, column: 7, scope: !3361, inlinedAt: !3359)
!3361 = distinct !DILexicalBlock(scope: !3274, file: !579, line: 33, column: 7)
!3362 = !DILocation(line: 33, column: 48, scope: !3361, inlinedAt: !3359)
!3363 = !DILocation(line: 33, column: 7, scope: !3274, inlinedAt: !3359)
!3364 = !DILocation(line: 40, column: 14, scope: !3274, inlinedAt: !3359)
!3365 = !DILocation(line: 41, column: 10, scope: !3313, inlinedAt: !3359)
!3366 = !DILocation(line: 41, column: 7, scope: !3274, inlinedAt: !3359)
!3367 = !DILocation(line: 43, column: 7, scope: !3312, inlinedAt: !3359)
!3368 = !DILocation(line: 43, column: 12, scope: !3312, inlinedAt: !3359)
!3369 = !DILocation(line: 44, column: 18, scope: !3312, inlinedAt: !3359)
!3370 = !DILocation(line: 0, scope: !3312, inlinedAt: !3359)
!3371 = !DILocation(line: 45, column: 7, scope: !3312, inlinedAt: !3359)
!3372 = !DILocation(line: 46, column: 13, scope: !3320, inlinedAt: !3359)
!3373 = !DILocation(line: 46, column: 11, scope: !3312, inlinedAt: !3359)
!3374 = !DILocation(line: 48, column: 11, scope: !3319, inlinedAt: !3359)
!3375 = !DILocation(line: 48, column: 18, scope: !3319, inlinedAt: !3359)
!3376 = !DILocation(line: 0, scope: !3319, inlinedAt: !3359)
!3377 = !DILocation(line: 52, column: 32, scope: !3378, inlinedAt: !3359)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !579, line: 52, column: 11)
!3379 = distinct !DILexicalBlock(scope: !3319, file: !579, line: 52, column: 11)
!3380 = !DILocation(line: 52, column: 35, scope: !3378, inlinedAt: !3359)
!3381 = !DILocation(line: 53, column: 20, scope: !3378, inlinedAt: !3359)
!3382 = !DILocation(line: 53, column: 30, scope: !3378, inlinedAt: !3359)
!3383 = !DILocation(line: 53, column: 24, scope: !3378, inlinedAt: !3359)
!3384 = !DILocation(line: 52, column: 50, scope: !3378, inlinedAt: !3359)
!3385 = distinct !{!3385, !3386, !3387, !938}
!3386 = !DILocation(line: 52, column: 11, scope: !3379, inlinedAt: !3359)
!3387 = !DILocation(line: 53, column: 35, scope: !3379, inlinedAt: !3359)
!3388 = !DILocation(line: 54, column: 19, scope: !3326, inlinedAt: !3359)
!3389 = !DILocation(line: 54, column: 15, scope: !3319, inlinedAt: !3359)
!3390 = !DILocation(line: 0, scope: !3325, inlinedAt: !3359)
!3391 = !DILocation(line: 57, column: 24, scope: !3329, inlinedAt: !3359)
!3392 = !DILocation(line: 57, column: 19, scope: !3325, inlinedAt: !3359)
!3393 = !DILocation(line: 57, column: 21, scope: !3329, inlinedAt: !3359)
!3394 = !DILocation(line: 0, scope: !3328, inlinedAt: !3359)
!3395 = !DILocation(line: 59, column: 42, scope: !3396, inlinedAt: !3359)
!3396 = distinct !DILexicalBlock(scope: !3328, file: !579, line: 58, column: 17)
!3397 = !DILocation(line: 59, column: 45, scope: !3396, inlinedAt: !3359)
!3398 = !DILocation(line: 59, column: 27, scope: !3396, inlinedAt: !3359)
!3399 = !DILocation(line: 59, column: 32, scope: !3396, inlinedAt: !3359)
!3400 = !DILocation(line: 60, column: 32, scope: !3325, inlinedAt: !3359)
!3401 = !DILocation(line: 65, column: 5, scope: !3313, inlinedAt: !3359)
!3402 = !DILocation(line: 70, column: 3, scope: !3274, inlinedAt: !3359)
!3403 = !DILocation(line: 70, column: 18, scope: !3274, inlinedAt: !3359)
!3404 = !DILocation(line: 71, column: 7, scope: !3405, inlinedAt: !3359)
!3405 = distinct !DILexicalBlock(scope: !3274, file: !579, line: 71, column: 7)
!3406 = !DILocation(line: 71, column: 23, scope: !3405, inlinedAt: !3359)
!3407 = !DILocation(line: 71, column: 7, scope: !3274, inlinedAt: !3359)
!3408 = !DILocation(line: 73, column: 31, scope: !3409, inlinedAt: !3359)
!3409 = distinct !DILexicalBlock(scope: !3405, file: !579, line: 72, column: 5)
!3410 = !{!3411, !1120, i64 0}
!3411 = !{!"sysinfo", !1120, i64 0, !836, i64 8, !1120, i64 32, !1120, i64 40, !1120, i64 48, !1120, i64 56, !1120, i64 64, !1120, i64 72, !933, i64 80, !933, i64 82, !1120, i64 88, !1120, i64 96, !892, i64 104, !836, i64 108}
!3412 = !DILocation(line: 73, column: 24, scope: !3409, inlinedAt: !3359)
!3413 = !{!1154, !1120, i64 0}
!3414 = !DILocation(line: 74, column: 17, scope: !3409, inlinedAt: !3359)
!3415 = !DILocation(line: 74, column: 25, scope: !3409, inlinedAt: !3359)
!3416 = !{!1154, !1120, i64 8}
!3417 = !DILocation(line: 80, column: 1, scope: !3274, inlinedAt: !3359)
!3418 = !DILocation(line: 137, column: 7, scope: !3262, inlinedAt: !3269)
!3419 = !DILocation(line: 56, column: 20, scope: !3325, inlinedAt: !3359)
!3420 = !DILocation(line: 61, column: 25, scope: !3325, inlinedAt: !3359)
!3421 = !DILocation(line: 61, column: 33, scope: !3325, inlinedAt: !3359)
!3422 = !DILocation(line: 0, scope: !3042, inlinedAt: !3045)
!3423 = !DILocation(line: 169, column: 1, scope: !3262, inlinedAt: !3269)
!3424 = !DILocation(line: 593, column: 11, scope: !3042, inlinedAt: !3045)
!3425 = !DILocation(line: 139, column: 7, scope: !3266, inlinedAt: !3269)
!3426 = !DILocation(line: 139, column: 23, scope: !3266, inlinedAt: !3269)
!3427 = !DILocation(line: 145, column: 13, scope: !3428, inlinedAt: !3269)
!3428 = distinct !DILexicalBlock(scope: !3266, file: !579, line: 145, column: 11)
!3429 = !DILocation(line: 145, column: 11, scope: !3266, inlinedAt: !3269)
!3430 = !DILocation(line: 167, column: 5, scope: !3267, inlinedAt: !3269)
!3431 = !DILocation(line: 158, column: 18, scope: !3432, inlinedAt: !3269)
!3432 = distinct !DILexicalBlock(scope: !3266, file: !579, line: 158, column: 11)
!3433 = !DILocation(line: 158, column: 35, scope: !3432, inlinedAt: !3269)
!3434 = !DILocation(line: 158, column: 26, scope: !3432, inlinedAt: !3269)
!3435 = !DILocation(line: 158, column: 11, scope: !3266, inlinedAt: !3269)
!3436 = !DILocation(line: 163, column: 31, scope: !3266, inlinedAt: !3269)
!3437 = !DILocation(line: 163, column: 21, scope: !3266, inlinedAt: !3269)
!3438 = !DILocation(line: 164, column: 22, scope: !3266, inlinedAt: !3269)
!3439 = !DILocation(line: 594, column: 13, scope: !3270, inlinedAt: !3045)
!3440 = !DILocation(line: 594, column: 9, scope: !3270, inlinedAt: !3045)
!3441 = !DILocation(line: 288, column: 23, scope: !3442, inlinedAt: !3252)
!3442 = distinct !DILexicalBlock(scope: !3250, file: !565, line: 288, column: 3)
!3443 = !DILocation(line: 290, column: 38, scope: !3444, inlinedAt: !3252)
!3444 = distinct !DILexicalBlock(scope: !3442, file: !565, line: 289, column: 5)
!3445 = !DILocation(line: 290, column: 48, scope: !3444, inlinedAt: !3252)
!3446 = !{!3447}
!3447 = distinct !{!3447, !3448, !"finish_utmp: argument 0"}
!3448 = distinct !{!3448, !"finish_utmp"}
!3449 = !DILocation(line: 290, column: 27, scope: !3444, inlinedAt: !3252)
!3450 = !DILocation(line: 290, column: 56, scope: !3444, inlinedAt: !3252)
!3451 = !DILocation(line: 290, column: 25, scope: !3444, inlinedAt: !3252)
!3452 = !DILocation(line: 291, column: 48, scope: !3444, inlinedAt: !3252)
!3453 = !{!1153, !835, i64 8}
!3454 = !DILocation(line: 291, column: 27, scope: !3444, inlinedAt: !3252)
!3455 = !DILocation(line: 291, column: 56, scope: !3444, inlinedAt: !3252)
!3456 = !DILocation(line: 291, column: 25, scope: !3444, inlinedAt: !3252)
!3457 = !DILocation(line: 292, column: 48, scope: !3444, inlinedAt: !3252)
!3458 = !{!1153, !835, i64 16}
!3459 = !DILocation(line: 292, column: 27, scope: !3444, inlinedAt: !3252)
!3460 = !DILocation(line: 292, column: 56, scope: !3444, inlinedAt: !3252)
!3461 = !DILocation(line: 292, column: 25, scope: !3444, inlinedAt: !3252)
!3462 = !DILocation(line: 293, column: 48, scope: !3444, inlinedAt: !3252)
!3463 = !{!1153, !835, i64 24}
!3464 = !DILocation(line: 293, column: 27, scope: !3444, inlinedAt: !3252)
!3465 = !DILocation(line: 293, column: 56, scope: !3444, inlinedAt: !3252)
!3466 = !DILocation(line: 293, column: 25, scope: !3444, inlinedAt: !3252)
!3467 = !DILocation(line: 288, column: 36, scope: !3442, inlinedAt: !3252)
!3468 = distinct !{!3468, !3255, !3469, !938}
!3469 = !DILocation(line: 294, column: 5, scope: !3250, inlinedAt: !3252)
!3470 = !DILocation(line: 986, column: 3, scope: !3000)
!3471 = !DISubprogram(name: "utmpxname", scope: !3472, file: !3472, line: 93, type: !3473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3472 = !DIFile(filename: "/usr/include/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "59d83f2bbda77647297a040029d18d89")
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!117, !74}
!3475 = !DISubprogram(name: "setutxent", scope: !3472, file: !3472, line: 53, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3476 = !DISubprogram(name: "getutxent", scope: !3472, file: !3472, line: 65, type: !3477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!3479}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!3480 = !DISubprogram(name: "strnlen", scope: !1008, file: !1008, line: 413, type: !3481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!119, !74, !119}
!3483 = distinct !DISubprogram(name: "add_utmp", scope: !565, file: !565, line: 227, type: !3484, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!3018, !3018, !117, !74, !780, !74, !780, !74, !780, !74, !780, !1100, !725, !2965, !288, !117, !117}
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3510, !3511, !3512, !3513, !3514, !3515}
!3487 = !DILocalVariable(name: "a", arg: 1, scope: !3483, file: !565, line: 227, type: !3018)
!3488 = !DILocalVariable(name: "options", arg: 2, scope: !3483, file: !565, line: 227, type: !117)
!3489 = !DILocalVariable(name: "user", arg: 3, scope: !3483, file: !565, line: 228, type: !74)
!3490 = !DILocalVariable(name: "user_len", arg: 4, scope: !3483, file: !565, line: 228, type: !780)
!3491 = !DILocalVariable(name: "id", arg: 5, scope: !3483, file: !565, line: 229, type: !74)
!3492 = !DILocalVariable(name: "id_len", arg: 6, scope: !3483, file: !565, line: 229, type: !780)
!3493 = !DILocalVariable(name: "line", arg: 7, scope: !3483, file: !565, line: 230, type: !74)
!3494 = !DILocalVariable(name: "line_len", arg: 8, scope: !3483, file: !565, line: 230, type: !780)
!3495 = !DILocalVariable(name: "host", arg: 9, scope: !3483, file: !565, line: 231, type: !74)
!3496 = !DILocalVariable(name: "host_len", arg: 10, scope: !3483, file: !565, line: 231, type: !780)
!3497 = !DILocalVariable(name: "pid", arg: 11, scope: !3483, file: !565, line: 232, type: !1100)
!3498 = !DILocalVariable(name: "type", arg: 12, scope: !3483, file: !565, line: 232, type: !725)
!3499 = !DILocalVariable(name: "ts", arg: 13, scope: !3483, file: !565, line: 232, type: !2965)
!3500 = !DILocalVariable(name: "session", arg: 14, scope: !3483, file: !565, line: 232, type: !288)
!3501 = !DILocalVariable(name: "termination", arg: 15, scope: !3483, file: !565, line: 233, type: !117)
!3502 = !DILocalVariable(name: "exit", arg: 16, scope: !3483, file: !565, line: 233, type: !117)
!3503 = !DILocalVariable(name: "entry_bytes", scope: !3483, file: !565, line: 235, type: !117)
!3504 = !DILocalVariable(name: "avail", scope: !3483, file: !565, line: 236, type: !780)
!3505 = !DILocalVariable(name: "needed_string_bytes", scope: !3483, file: !565, line: 237, type: !780)
!3506 = !DILocalVariable(name: "needed", scope: !3483, file: !565, line: 239, type: !780)
!3507 = !DILocalVariable(name: "old_string_offset", scope: !3508, file: !565, line: 242, type: !780)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !565, line: 241, column: 5)
!3509 = distinct !DILexicalBlock(scope: !3483, file: !565, line: 240, column: 7)
!3510 = !DILocalVariable(name: "new", scope: !3508, file: !565, line: 243, type: !116)
!3511 = !DILocalVariable(name: "new_string_offset", scope: !3508, file: !565, line: 244, type: !780)
!3512 = !DILocalVariable(name: "q", scope: !3508, file: !565, line: 246, type: !124)
!3513 = !DILocalVariable(name: "ut", scope: !3483, file: !565, line: 249, type: !3021)
!3514 = !DILocalVariable(name: "stringlim", scope: !3483, file: !565, line: 250, type: !124)
!3515 = !DILocalVariable(name: "p", scope: !3483, file: !565, line: 251, type: !124)
!3516 = !DILocation(line: 0, scope: !3483)
!3517 = !DILocation(line: 227, column: 29, scope: !3483)
!3518 = !DILocation(line: 236, column: 19, scope: !3483)
!3519 = !{!3520, !1120, i64 24}
!3520 = !{!"utmp_alloc", !835, i64 0, !1120, i64 8, !1120, i64 16, !1120, i64 24}
!3521 = !DILocation(line: 236, column: 50, scope: !3483)
!3522 = !{!3520, !1120, i64 8}
!3523 = !DILocation(line: 236, column: 61, scope: !3483)
!3524 = !{!3520, !1120, i64 16}
!3525 = !DILocation(line: 236, column: 57, scope: !3483)
!3526 = !DILocation(line: 236, column: 31, scope: !3483)
!3527 = !DILocation(line: 238, column: 20, scope: !3483)
!3528 = !DILocation(line: 238, column: 35, scope: !3483)
!3529 = !DILocation(line: 238, column: 52, scope: !3483)
!3530 = !DILocation(line: 239, column: 30, scope: !3483)
!3531 = !DILocation(line: 240, column: 13, scope: !3509)
!3532 = !DILocation(line: 240, column: 7, scope: !3483)
!3533 = !DILocation(line: 0, scope: !3508)
!3534 = !DILocation(line: 243, column: 30, scope: !3508)
!3535 = !{!3520, !835, i64 0}
!3536 = !DILocation(line: 243, column: 59, scope: !3508)
!3537 = !DILocation(line: 243, column: 19, scope: !3508)
!3538 = !DILocation(line: 244, column: 35, scope: !3508)
!3539 = !DILocation(line: 244, column: 51, scope: !3508)
!3540 = !DILocation(line: 244, column: 47, scope: !3508)
!3541 = !DILocation(line: 245, column: 14, scope: !3508)
!3542 = !DILocation(line: 247, column: 18, scope: !3508)
!3543 = !DILocation(line: 247, column: 41, scope: !3508)
!3544 = !DILocalVariable(name: "__dest", arg: 1, scope: !3545, file: !1643, line: 34, type: !116)
!3545 = distinct !DISubprogram(name: "memmove", scope: !1643, file: !1643, line: 34, type: !3546, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!116, !116, !1039, !119}
!3548 = !{!3544, !3549, !3550}
!3549 = !DILocalVariable(name: "__src", arg: 2, scope: !3545, file: !1643, line: 34, type: !1039)
!3550 = !DILocalVariable(name: "__len", arg: 3, scope: !3545, file: !1643, line: 34, type: !119)
!3551 = !DILocation(line: 0, scope: !3545, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 247, column: 7, scope: !3508)
!3553 = !DILocation(line: 36, column: 10, scope: !3545, inlinedAt: !3552)
!3554 = !DILocation(line: 249, column: 34, scope: !3483)
!3555 = !DILocation(line: 250, column: 41, scope: !3483)
!3556 = !DILocation(line: 251, column: 27, scope: !3483)
!3557 = !DILocation(line: 248, column: 5, scope: !3508)
!3558 = !DILocation(line: 249, column: 27, scope: !3483)
!3559 = !DILocation(line: 249, column: 25, scope: !3483)
!3560 = !DILocation(line: 250, column: 37, scope: !3483)
!3561 = !DILocation(line: 251, column: 23, scope: !3483)
!3562 = !DILocation(line: 252, column: 4, scope: !3483)
!3563 = !DILocation(line: 252, column: 8, scope: !3483)
!3564 = !DILocation(line: 253, column: 31, scope: !3483)
!3565 = !DILocalVariable(name: "__dest", arg: 1, scope: !3566, file: !1643, line: 26, type: !3569)
!3566 = distinct !DISubprogram(name: "memcpy", scope: !1643, file: !1643, line: 26, type: !3567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3570)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!116, !3569, !1038, !119}
!3569 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!3570 = !{!3565, !3571, !3572}
!3571 = !DILocalVariable(name: "__src", arg: 2, scope: !3566, file: !1643, line: 26, type: !1038)
!3572 = !DILocalVariable(name: "__len", arg: 3, scope: !3566, file: !1643, line: 26, type: !119)
!3573 = !DILocation(line: 0, scope: !3566, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 253, column: 21, scope: !3483)
!3575 = !DILocation(line: 29, column: 10, scope: !3566, inlinedAt: !3574)
!3576 = !DILocation(line: 253, column: 15, scope: !3483)
!3577 = !DILocation(line: 254, column: 4, scope: !3483)
!3578 = !DILocation(line: 254, column: 8, scope: !3483)
!3579 = !DILocation(line: 255, column: 31, scope: !3483)
!3580 = !DILocation(line: 0, scope: !3566, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 255, column: 21, scope: !3483)
!3582 = !DILocation(line: 29, column: 10, scope: !3566, inlinedAt: !3581)
!3583 = !DILocation(line: 255, column: 7, scope: !3483)
!3584 = !DILocation(line: 255, column: 15, scope: !3483)
!3585 = !DILocation(line: 256, column: 4, scope: !3483)
!3586 = !DILocation(line: 256, column: 8, scope: !3483)
!3587 = !DILocation(line: 257, column: 31, scope: !3483)
!3588 = !DILocation(line: 0, scope: !3566, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 257, column: 21, scope: !3483)
!3590 = !DILocation(line: 29, column: 10, scope: !3566, inlinedAt: !3589)
!3591 = !DILocation(line: 257, column: 7, scope: !3483)
!3592 = !DILocation(line: 257, column: 15, scope: !3483)
!3593 = !DILocation(line: 258, column: 4, scope: !3483)
!3594 = !DILocation(line: 258, column: 8, scope: !3483)
!3595 = !DILocation(line: 259, column: 31, scope: !3483)
!3596 = !DILocation(line: 0, scope: !3566, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 259, column: 21, scope: !3483)
!3598 = !DILocation(line: 29, column: 10, scope: !3566, inlinedAt: !3597)
!3599 = !DILocation(line: 259, column: 7, scope: !3483)
!3600 = !DILocation(line: 259, column: 15, scope: !3483)
!3601 = !DILocation(line: 260, column: 7, scope: !3483)
!3602 = !DILocation(line: 260, column: 15, scope: !3483)
!3603 = !DILocation(line: 261, column: 7, scope: !3483)
!3604 = !DILocation(line: 261, column: 14, scope: !3483)
!3605 = !{!1153, !892, i64 48}
!3606 = !DILocation(line: 262, column: 20, scope: !3483)
!3607 = !DILocation(line: 262, column: 7, scope: !3483)
!3608 = !DILocation(line: 262, column: 18, scope: !3483)
!3609 = !{!1153, !892, i64 52}
!3610 = !DILocation(line: 263, column: 7, scope: !3483)
!3611 = !DILocation(line: 263, column: 15, scope: !3483)
!3612 = !DILocation(line: 264, column: 7, scope: !3483)
!3613 = !DILocation(line: 264, column: 29, scope: !3483)
!3614 = !{!1153, !892, i64 60}
!3615 = !DILocation(line: 265, column: 15, scope: !3483)
!3616 = !DILocation(line: 265, column: 22, scope: !3483)
!3617 = !{!1153, !892, i64 64}
!3618 = !DILocalVariable(name: "ut", arg: 1, scope: !3619, file: !565, line: 171, type: !2955)
!3619 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !565, file: !565, line: 171, type: !3620, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3622)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!247, !2955, !117}
!3622 = !{!3618, !3623, !3624, !3625}
!3623 = !DILocalVariable(name: "options", arg: 2, scope: !3619, file: !565, line: 171, type: !117)
!3624 = !DILocalVariable(name: "boot_time", scope: !3619, file: !565, line: 180, type: !247)
!3625 = !DILocalVariable(name: "user_proc", scope: !3619, file: !565, line: 186, type: !247)
!3626 = !DILocation(line: 0, scope: !3619, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 266, column: 7, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3483, file: !565, line: 266, column: 7)
!3629 = !DILocation(line: 180, column: 20, scope: !3619, inlinedAt: !3627)
!3630 = !DILocation(line: 181, column: 16, scope: !3631, inlinedAt: !3627)
!3631 = distinct !DILexicalBlock(scope: !3619, file: !565, line: 181, column: 7)
!3632 = !DILocation(line: 181, column: 39, scope: !3631, inlinedAt: !3627)
!3633 = !DILocation(line: 183, column: 16, scope: !3634, inlinedAt: !3627)
!3634 = distinct !DILexicalBlock(scope: !3619, file: !565, line: 183, column: 7)
!3635 = !DILocation(line: 183, column: 42, scope: !3634, inlinedAt: !3627)
!3636 = !DILocation(line: 186, column: 20, scope: !3619, inlinedAt: !3627)
!3637 = !DILocation(line: 187, column: 16, scope: !3638, inlinedAt: !3627)
!3638 = distinct !DILexicalBlock(scope: !3619, file: !565, line: 187, column: 7)
!3639 = !DILocation(line: 187, column: 42, scope: !3638, inlinedAt: !3627)
!3640 = !DILocation(line: 190, column: 16, scope: !3641, inlinedAt: !3627)
!3641 = distinct !DILexicalBlock(scope: !3619, file: !565, line: 190, column: 7)
!3642 = !DILocation(line: 191, column: 7, scope: !3641, inlinedAt: !3627)
!3643 = !DILocation(line: 193, column: 11, scope: !3641, inlinedAt: !3627)
!3644 = !DILocation(line: 193, column: 33, scope: !3641, inlinedAt: !3627)
!3645 = !DILocation(line: 193, column: 37, scope: !3641, inlinedAt: !3627)
!3646 = !DILocation(line: 193, column: 40, scope: !3641, inlinedAt: !3627)
!3647 = !DILocation(line: 193, column: 46, scope: !3641, inlinedAt: !3627)
!3648 = !DILocation(line: 190, column: 7, scope: !3619, inlinedAt: !3627)
!3649 = !DILocation(line: 272, column: 54, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3628, file: !565, line: 267, column: 5)
!3651 = !DILocation(line: 272, column: 46, scope: !3650)
!3652 = !DILocation(line: 273, column: 54, scope: !3650)
!3653 = !DILocation(line: 272, column: 21, scope: !3650)
!3654 = !DILocation(line: 272, column: 19, scope: !3650)
!3655 = !DILocation(line: 274, column: 46, scope: !3650)
!3656 = !DILocation(line: 274, column: 54, scope: !3650)
!3657 = !DILocation(line: 274, column: 21, scope: !3650)
!3658 = !DILocation(line: 274, column: 19, scope: !3650)
!3659 = !DILocation(line: 276, column: 15, scope: !3650)
!3660 = !DILocation(line: 277, column: 22, scope: !3650)
!3661 = !DILocation(line: 278, column: 5, scope: !3650)
!3662 = !DILocation(line: 279, column: 10, scope: !3483)
!3663 = !DILocation(line: 280, column: 1, scope: !3483)
!3664 = !DISubprogram(name: "endutxent", scope: !3472, file: !3472, line: 59, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3665 = !DISubprogram(name: "stat", scope: !3666, file: !3666, line: 205, type: !3667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3666 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!117, !885, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3670)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3671 = !DISubprogram(name: "clock_gettime", scope: !3672, file: !3672, line: 279, type: !3673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3672 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!117, !3675, !3162}
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3676, line: 7, baseType: !3677)
!3676 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !287, line: 169, baseType: !117)
!3678 = !DISubprogram(name: "sysinfo", scope: !3679, file: !3679, line: 29, type: !3680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3679 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "833dbd3acd3e0392e300e781deccc082")
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!117, !3682}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3683 = !DISubprogram(name: "timespec_get", scope: !3672, file: !3672, line: 371, type: !3684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!117, !3162, !117}
!3686 = !DISubprogram(name: "kill", scope: !3687, file: !3687, line: 112, type: !3688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3687 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!117, !727, !117}
!3690 = distinct !DISubprogram(name: "version_etc_arn", scope: !593, file: !593, line: 61, type: !3691, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3728)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !3693, !74, !74, !74, !3727, !119}
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !3695)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3695, file: !264, line: 51, baseType: !117, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3695, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3695, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3695, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3695, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3695, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3695, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3695, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3695, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3695, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3695, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3695, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3695, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3695, file: !264, line: 70, baseType: !3711, size: 64, offset: 832)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3695, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3695, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3695, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3695, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3695, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3695, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3695, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3695, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3695, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3695, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3695, file: !264, line: 93, baseType: !3711, size: 64, offset: 1344)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3695, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3695, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3695, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3695, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734}
!3729 = !DILocalVariable(name: "stream", arg: 1, scope: !3690, file: !593, line: 61, type: !3693)
!3730 = !DILocalVariable(name: "command_name", arg: 2, scope: !3690, file: !593, line: 62, type: !74)
!3731 = !DILocalVariable(name: "package", arg: 3, scope: !3690, file: !593, line: 62, type: !74)
!3732 = !DILocalVariable(name: "version", arg: 4, scope: !3690, file: !593, line: 63, type: !74)
!3733 = !DILocalVariable(name: "authors", arg: 5, scope: !3690, file: !593, line: 64, type: !3727)
!3734 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3690, file: !593, line: 64, type: !119)
!3735 = !DILocation(line: 0, scope: !3690)
!3736 = !DILocation(line: 66, column: 7, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3690, file: !593, line: 66, column: 7)
!3738 = !DILocation(line: 66, column: 7, scope: !3690)
!3739 = !DILocation(line: 67, column: 5, scope: !3737)
!3740 = !DILocation(line: 69, column: 5, scope: !3737)
!3741 = !DILocation(line: 83, column: 3, scope: !3690)
!3742 = !DILocation(line: 85, column: 3, scope: !3690)
!3743 = !DILocation(line: 88, column: 3, scope: !3690)
!3744 = !DILocation(line: 95, column: 3, scope: !3690)
!3745 = !DILocation(line: 97, column: 3, scope: !3690)
!3746 = !DILocation(line: 105, column: 7, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3690, file: !593, line: 98, column: 5)
!3748 = !DILocation(line: 106, column: 7, scope: !3747)
!3749 = !DILocation(line: 109, column: 7, scope: !3747)
!3750 = !DILocation(line: 110, column: 7, scope: !3747)
!3751 = !DILocation(line: 113, column: 7, scope: !3747)
!3752 = !DILocation(line: 115, column: 7, scope: !3747)
!3753 = !DILocation(line: 120, column: 7, scope: !3747)
!3754 = !DILocation(line: 122, column: 7, scope: !3747)
!3755 = !DILocation(line: 127, column: 7, scope: !3747)
!3756 = !DILocation(line: 129, column: 7, scope: !3747)
!3757 = !DILocation(line: 134, column: 7, scope: !3747)
!3758 = !DILocation(line: 137, column: 7, scope: !3747)
!3759 = !DILocation(line: 142, column: 7, scope: !3747)
!3760 = !DILocation(line: 145, column: 7, scope: !3747)
!3761 = !DILocation(line: 150, column: 7, scope: !3747)
!3762 = !DILocation(line: 154, column: 7, scope: !3747)
!3763 = !DILocation(line: 159, column: 7, scope: !3747)
!3764 = !DILocation(line: 163, column: 7, scope: !3747)
!3765 = !DILocation(line: 170, column: 7, scope: !3747)
!3766 = !DILocation(line: 174, column: 7, scope: !3747)
!3767 = !DILocation(line: 176, column: 1, scope: !3690)
!3768 = distinct !DISubprogram(name: "version_etc_ar", scope: !593, file: !593, line: 183, type: !3769, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !3693, !74, !74, !74, !3727}
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3777}
!3772 = !DILocalVariable(name: "stream", arg: 1, scope: !3768, file: !593, line: 183, type: !3693)
!3773 = !DILocalVariable(name: "command_name", arg: 2, scope: !3768, file: !593, line: 184, type: !74)
!3774 = !DILocalVariable(name: "package", arg: 3, scope: !3768, file: !593, line: 184, type: !74)
!3775 = !DILocalVariable(name: "version", arg: 4, scope: !3768, file: !593, line: 185, type: !74)
!3776 = !DILocalVariable(name: "authors", arg: 5, scope: !3768, file: !593, line: 185, type: !3727)
!3777 = !DILocalVariable(name: "n_authors", scope: !3768, file: !593, line: 187, type: !119)
!3778 = !DILocation(line: 0, scope: !3768)
!3779 = !DILocation(line: 189, column: 8, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3768, file: !593, line: 189, column: 3)
!3781 = !DILocation(line: 189, scope: !3780)
!3782 = !DILocation(line: 189, column: 23, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !593, line: 189, column: 3)
!3784 = !DILocation(line: 189, column: 3, scope: !3780)
!3785 = !DILocation(line: 189, column: 52, scope: !3783)
!3786 = distinct !{!3786, !3784, !3787, !938}
!3787 = !DILocation(line: 190, column: 5, scope: !3780)
!3788 = !DILocation(line: 191, column: 3, scope: !3768)
!3789 = !DILocation(line: 192, column: 1, scope: !3768)
!3790 = distinct !DISubprogram(name: "version_etc_va", scope: !593, file: !593, line: 199, type: !3791, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3804)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !3693, !74, !74, !74, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !354, line: 52, baseType: !3794)
!3794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !356, line: 14, baseType: !3795)
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3796, baseType: !3797)
!3796 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3797, file: !3796, line: 192, baseType: !116, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3797, file: !3796, line: 192, baseType: !116, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3797, file: !3796, line: 192, baseType: !116, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3797, file: !3796, line: 192, baseType: !117, size: 32, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3797, file: !3796, line: 192, baseType: !117, size: 32, offset: 224)
!3804 = !{!3805, !3806, !3807, !3808, !3809, !3810, !3811}
!3805 = !DILocalVariable(name: "stream", arg: 1, scope: !3790, file: !593, line: 199, type: !3693)
!3806 = !DILocalVariable(name: "command_name", arg: 2, scope: !3790, file: !593, line: 200, type: !74)
!3807 = !DILocalVariable(name: "package", arg: 3, scope: !3790, file: !593, line: 200, type: !74)
!3808 = !DILocalVariable(name: "version", arg: 4, scope: !3790, file: !593, line: 201, type: !74)
!3809 = !DILocalVariable(name: "authors", arg: 5, scope: !3790, file: !593, line: 201, type: !3793)
!3810 = !DILocalVariable(name: "n_authors", scope: !3790, file: !593, line: 203, type: !119)
!3811 = !DILocalVariable(name: "authtab", scope: !3790, file: !593, line: 204, type: !3812)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !47)
!3813 = !DILocation(line: 0, scope: !3790)
!3814 = !DILocation(line: 201, column: 46, scope: !3790)
!3815 = !DILocation(line: 204, column: 3, scope: !3790)
!3816 = !DILocation(line: 204, column: 15, scope: !3790)
!3817 = !DILocation(line: 208, column: 35, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !593, line: 206, column: 3)
!3819 = distinct !DILexicalBlock(scope: !3790, file: !593, line: 206, column: 3)
!3820 = !DILocation(line: 208, column: 33, scope: !3818)
!3821 = !DILocation(line: 208, column: 67, scope: !3818)
!3822 = !DILocation(line: 206, column: 3, scope: !3819)
!3823 = !DILocation(line: 208, column: 14, scope: !3818)
!3824 = !DILocation(line: 0, scope: !3819)
!3825 = !DILocation(line: 211, column: 3, scope: !3790)
!3826 = !DILocation(line: 213, column: 1, scope: !3790)
!3827 = distinct !DISubprogram(name: "version_etc", scope: !593, file: !593, line: 230, type: !3828, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3830)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !3693, !74, !74, !74, null}
!3830 = !{!3831, !3832, !3833, !3834, !3835}
!3831 = !DILocalVariable(name: "stream", arg: 1, scope: !3827, file: !593, line: 230, type: !3693)
!3832 = !DILocalVariable(name: "command_name", arg: 2, scope: !3827, file: !593, line: 231, type: !74)
!3833 = !DILocalVariable(name: "package", arg: 3, scope: !3827, file: !593, line: 231, type: !74)
!3834 = !DILocalVariable(name: "version", arg: 4, scope: !3827, file: !593, line: 232, type: !74)
!3835 = !DILocalVariable(name: "authors", scope: !3827, file: !593, line: 234, type: !3793)
!3836 = !DILocation(line: 0, scope: !3827)
!3837 = !DILocation(line: 234, column: 3, scope: !3827)
!3838 = !DILocation(line: 234, column: 11, scope: !3827)
!3839 = !DILocation(line: 235, column: 3, scope: !3827)
!3840 = !DILocation(line: 236, column: 3, scope: !3827)
!3841 = !DILocation(line: 237, column: 3, scope: !3827)
!3842 = !DILocation(line: 238, column: 1, scope: !3827)
!3843 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !593, file: !593, line: 241, type: !395, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !879)
!3844 = !DILocation(line: 243, column: 3, scope: !3843)
!3845 = !DILocation(line: 248, column: 3, scope: !3843)
!3846 = !DILocation(line: 254, column: 3, scope: !3843)
!3847 = !DILocation(line: 259, column: 3, scope: !3843)
!3848 = !DILocation(line: 261, column: 1, scope: !3843)
!3849 = distinct !DISubprogram(name: "xnrealloc", scope: !3850, file: !3850, line: 147, type: !3851, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3853)
!3850 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!116, !116, !119, !119}
!3853 = !{!3854, !3855, !3856}
!3854 = !DILocalVariable(name: "p", arg: 1, scope: !3849, file: !3850, line: 147, type: !116)
!3855 = !DILocalVariable(name: "n", arg: 2, scope: !3849, file: !3850, line: 147, type: !119)
!3856 = !DILocalVariable(name: "s", arg: 3, scope: !3849, file: !3850, line: 147, type: !119)
!3857 = !DILocation(line: 0, scope: !3849)
!3858 = !DILocalVariable(name: "p", arg: 1, scope: !3859, file: !761, line: 83, type: !116)
!3859 = distinct !DISubprogram(name: "xreallocarray", scope: !761, file: !761, line: 83, type: !3851, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3860)
!3860 = !{!3858, !3861, !3862}
!3861 = !DILocalVariable(name: "n", arg: 2, scope: !3859, file: !761, line: 83, type: !119)
!3862 = !DILocalVariable(name: "s", arg: 3, scope: !3859, file: !761, line: 83, type: !119)
!3863 = !DILocation(line: 0, scope: !3859, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 149, column: 10, scope: !3849)
!3865 = !DILocation(line: 85, column: 25, scope: !3859, inlinedAt: !3864)
!3866 = !DILocalVariable(name: "p", arg: 1, scope: !3867, file: !761, line: 37, type: !116)
!3867 = distinct !DISubprogram(name: "check_nonnull", scope: !761, file: !761, line: 37, type: !3868, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!116, !116}
!3870 = !{!3866}
!3871 = !DILocation(line: 0, scope: !3867, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 85, column: 10, scope: !3859, inlinedAt: !3864)
!3873 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !3872)
!3874 = distinct !DILexicalBlock(scope: !3867, file: !761, line: 39, column: 7)
!3875 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !3872)
!3876 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !3872)
!3877 = !DILocation(line: 149, column: 3, scope: !3849)
!3878 = !DILocation(line: 0, scope: !3859)
!3879 = !DILocation(line: 85, column: 25, scope: !3859)
!3880 = !DILocation(line: 0, scope: !3867, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 85, column: 10, scope: !3859)
!3882 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !3881)
!3883 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !3881)
!3884 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !3881)
!3885 = !DILocation(line: 85, column: 3, scope: !3859)
!3886 = distinct !DISubprogram(name: "xmalloc", scope: !761, file: !761, line: 47, type: !3887, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!116, !119}
!3889 = !{!3890}
!3890 = !DILocalVariable(name: "s", arg: 1, scope: !3886, file: !761, line: 47, type: !119)
!3891 = !DILocation(line: 0, scope: !3886)
!3892 = !DILocation(line: 49, column: 25, scope: !3886)
!3893 = !DILocation(line: 0, scope: !3867, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 49, column: 10, scope: !3886)
!3895 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !3894)
!3896 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !3894)
!3897 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !3894)
!3898 = !DILocation(line: 49, column: 3, scope: !3886)
!3899 = !DISubprogram(name: "malloc", scope: !1015, file: !1015, line: 540, type: !3887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3900 = distinct !DISubprogram(name: "ximalloc", scope: !761, file: !761, line: 53, type: !3901, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3903)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!116, !780}
!3903 = !{!3904}
!3904 = !DILocalVariable(name: "s", arg: 1, scope: !3900, file: !761, line: 53, type: !780)
!3905 = !DILocation(line: 0, scope: !3900)
!3906 = !DILocalVariable(name: "s", arg: 1, scope: !3907, file: !3908, line: 55, type: !780)
!3907 = distinct !DISubprogram(name: "imalloc", scope: !3908, file: !3908, line: 55, type: !3901, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3909)
!3908 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3909 = !{!3906}
!3910 = !DILocation(line: 0, scope: !3907, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 55, column: 25, scope: !3900)
!3912 = !DILocation(line: 57, column: 26, scope: !3907, inlinedAt: !3911)
!3913 = !DILocation(line: 0, scope: !3867, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 55, column: 10, scope: !3900)
!3915 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !3914)
!3916 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !3914)
!3917 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !3914)
!3918 = !DILocation(line: 55, column: 3, scope: !3900)
!3919 = distinct !DISubprogram(name: "xcharalloc", scope: !761, file: !761, line: 59, type: !3920, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!124, !119}
!3922 = !{!3923}
!3923 = !DILocalVariable(name: "n", arg: 1, scope: !3919, file: !761, line: 59, type: !119)
!3924 = !DILocation(line: 0, scope: !3919)
!3925 = !DILocation(line: 0, scope: !3886, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 61, column: 10, scope: !3919)
!3927 = !DILocation(line: 49, column: 25, scope: !3886, inlinedAt: !3926)
!3928 = !DILocation(line: 0, scope: !3867, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 49, column: 10, scope: !3886, inlinedAt: !3926)
!3930 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !3929)
!3931 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !3929)
!3932 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !3929)
!3933 = !DILocation(line: 61, column: 3, scope: !3919)
!3934 = distinct !DISubprogram(name: "xrealloc", scope: !761, file: !761, line: 68, type: !3935, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!116, !116, !119}
!3937 = !{!3938, !3939}
!3938 = !DILocalVariable(name: "p", arg: 1, scope: !3934, file: !761, line: 68, type: !116)
!3939 = !DILocalVariable(name: "s", arg: 2, scope: !3934, file: !761, line: 68, type: !119)
!3940 = !DILocation(line: 0, scope: !3934)
!3941 = !DILocalVariable(name: "ptr", arg: 1, scope: !3942, file: !3943, line: 2057, type: !116)
!3942 = distinct !DISubprogram(name: "rpl_realloc", scope: !3943, file: !3943, line: 2057, type: !3935, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3944)
!3943 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3944 = !{!3941, !3945}
!3945 = !DILocalVariable(name: "size", arg: 2, scope: !3942, file: !3943, line: 2057, type: !119)
!3946 = !DILocation(line: 0, scope: !3942, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 70, column: 25, scope: !3934)
!3948 = !DILocation(line: 2059, column: 24, scope: !3942, inlinedAt: !3947)
!3949 = !DILocation(line: 2059, column: 10, scope: !3942, inlinedAt: !3947)
!3950 = !DILocation(line: 0, scope: !3867, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 70, column: 10, scope: !3934)
!3952 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !3951)
!3953 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !3951)
!3954 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !3951)
!3955 = !DILocation(line: 70, column: 3, scope: !3934)
!3956 = !DISubprogram(name: "realloc", scope: !1015, file: !1015, line: 551, type: !3935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3957 = distinct !DISubprogram(name: "xirealloc", scope: !761, file: !761, line: 74, type: !3958, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3960)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!116, !116, !780}
!3960 = !{!3961, !3962}
!3961 = !DILocalVariable(name: "p", arg: 1, scope: !3957, file: !761, line: 74, type: !116)
!3962 = !DILocalVariable(name: "s", arg: 2, scope: !3957, file: !761, line: 74, type: !780)
!3963 = !DILocation(line: 0, scope: !3957)
!3964 = !DILocalVariable(name: "p", arg: 1, scope: !3965, file: !3908, line: 66, type: !116)
!3965 = distinct !DISubprogram(name: "irealloc", scope: !3908, file: !3908, line: 66, type: !3958, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3966)
!3966 = !{!3964, !3967}
!3967 = !DILocalVariable(name: "s", arg: 2, scope: !3965, file: !3908, line: 66, type: !780)
!3968 = !DILocation(line: 0, scope: !3965, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 76, column: 25, scope: !3957)
!3970 = !DILocation(line: 0, scope: !3942, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 68, column: 26, scope: !3965, inlinedAt: !3969)
!3972 = !DILocation(line: 2059, column: 24, scope: !3942, inlinedAt: !3971)
!3973 = !DILocation(line: 2059, column: 10, scope: !3942, inlinedAt: !3971)
!3974 = !DILocation(line: 0, scope: !3867, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 76, column: 10, scope: !3957)
!3976 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !3975)
!3977 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !3975)
!3978 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !3975)
!3979 = !DILocation(line: 76, column: 3, scope: !3957)
!3980 = distinct !DISubprogram(name: "xireallocarray", scope: !761, file: !761, line: 89, type: !3981, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!116, !116, !780, !780}
!3983 = !{!3984, !3985, !3986}
!3984 = !DILocalVariable(name: "p", arg: 1, scope: !3980, file: !761, line: 89, type: !116)
!3985 = !DILocalVariable(name: "n", arg: 2, scope: !3980, file: !761, line: 89, type: !780)
!3986 = !DILocalVariable(name: "s", arg: 3, scope: !3980, file: !761, line: 89, type: !780)
!3987 = !DILocation(line: 0, scope: !3980)
!3988 = !DILocalVariable(name: "p", arg: 1, scope: !3989, file: !3908, line: 98, type: !116)
!3989 = distinct !DISubprogram(name: "ireallocarray", scope: !3908, file: !3908, line: 98, type: !3981, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3990)
!3990 = !{!3988, !3991, !3992}
!3991 = !DILocalVariable(name: "n", arg: 2, scope: !3989, file: !3908, line: 98, type: !780)
!3992 = !DILocalVariable(name: "s", arg: 3, scope: !3989, file: !3908, line: 98, type: !780)
!3993 = !DILocation(line: 0, scope: !3989, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 91, column: 25, scope: !3980)
!3995 = !DILocation(line: 101, column: 13, scope: !3989, inlinedAt: !3994)
!3996 = !DILocation(line: 0, scope: !3867, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 91, column: 10, scope: !3980)
!3998 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !3997)
!3999 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !3997)
!4000 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !3997)
!4001 = !DILocation(line: 91, column: 3, scope: !3980)
!4002 = distinct !DISubprogram(name: "xnmalloc", scope: !761, file: !761, line: 98, type: !4003, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4005)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!116, !119, !119}
!4005 = !{!4006, !4007}
!4006 = !DILocalVariable(name: "n", arg: 1, scope: !4002, file: !761, line: 98, type: !119)
!4007 = !DILocalVariable(name: "s", arg: 2, scope: !4002, file: !761, line: 98, type: !119)
!4008 = !DILocation(line: 0, scope: !4002)
!4009 = !DILocation(line: 0, scope: !3859, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 100, column: 10, scope: !4002)
!4011 = !DILocation(line: 85, column: 25, scope: !3859, inlinedAt: !4010)
!4012 = !DILocation(line: 0, scope: !3867, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 85, column: 10, scope: !3859, inlinedAt: !4010)
!4014 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4013)
!4015 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4013)
!4016 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4013)
!4017 = !DILocation(line: 100, column: 3, scope: !4002)
!4018 = distinct !DISubprogram(name: "xinmalloc", scope: !761, file: !761, line: 104, type: !4019, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!116, !780, !780}
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "n", arg: 1, scope: !4018, file: !761, line: 104, type: !780)
!4023 = !DILocalVariable(name: "s", arg: 2, scope: !4018, file: !761, line: 104, type: !780)
!4024 = !DILocation(line: 0, scope: !4018)
!4025 = !DILocation(line: 0, scope: !3980, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 106, column: 10, scope: !4018)
!4027 = !DILocation(line: 0, scope: !3989, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 91, column: 25, scope: !3980, inlinedAt: !4026)
!4029 = !DILocation(line: 101, column: 13, scope: !3989, inlinedAt: !4028)
!4030 = !DILocation(line: 0, scope: !3867, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 91, column: 10, scope: !3980, inlinedAt: !4026)
!4032 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4031)
!4033 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4031)
!4034 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4031)
!4035 = !DILocation(line: 106, column: 3, scope: !4018)
!4036 = distinct !DISubprogram(name: "x2realloc", scope: !761, file: !761, line: 116, type: !4037, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!116, !116, !767}
!4039 = !{!4040, !4041}
!4040 = !DILocalVariable(name: "p", arg: 1, scope: !4036, file: !761, line: 116, type: !116)
!4041 = !DILocalVariable(name: "ps", arg: 2, scope: !4036, file: !761, line: 116, type: !767)
!4042 = !DILocation(line: 0, scope: !4036)
!4043 = !DILocation(line: 0, scope: !764, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 118, column: 10, scope: !4036)
!4045 = !DILocation(line: 178, column: 14, scope: !764, inlinedAt: !4044)
!4046 = !DILocation(line: 180, column: 9, scope: !4047, inlinedAt: !4044)
!4047 = distinct !DILexicalBlock(scope: !764, file: !761, line: 180, column: 7)
!4048 = !DILocation(line: 180, column: 7, scope: !764, inlinedAt: !4044)
!4049 = !DILocation(line: 182, column: 13, scope: !4050, inlinedAt: !4044)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !761, line: 182, column: 11)
!4051 = distinct !DILexicalBlock(scope: !4047, file: !761, line: 181, column: 5)
!4052 = !DILocation(line: 182, column: 11, scope: !4051, inlinedAt: !4044)
!4053 = !DILocation(line: 197, column: 11, scope: !4054, inlinedAt: !4044)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !761, line: 197, column: 11)
!4055 = distinct !DILexicalBlock(scope: !4047, file: !761, line: 195, column: 5)
!4056 = !DILocation(line: 197, column: 11, scope: !4055, inlinedAt: !4044)
!4057 = !DILocation(line: 198, column: 9, scope: !4054, inlinedAt: !4044)
!4058 = !DILocation(line: 0, scope: !3859, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 201, column: 7, scope: !764, inlinedAt: !4044)
!4060 = !DILocation(line: 85, column: 25, scope: !3859, inlinedAt: !4059)
!4061 = !DILocation(line: 0, scope: !3867, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 85, column: 10, scope: !3859, inlinedAt: !4059)
!4063 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4062)
!4064 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4062)
!4065 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4062)
!4066 = !DILocation(line: 202, column: 7, scope: !764, inlinedAt: !4044)
!4067 = !DILocation(line: 118, column: 3, scope: !4036)
!4068 = !DILocation(line: 0, scope: !764)
!4069 = !DILocation(line: 178, column: 14, scope: !764)
!4070 = !DILocation(line: 180, column: 9, scope: !4047)
!4071 = !DILocation(line: 180, column: 7, scope: !764)
!4072 = !DILocation(line: 182, column: 13, scope: !4050)
!4073 = !DILocation(line: 182, column: 11, scope: !4051)
!4074 = !DILocation(line: 190, column: 30, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4050, file: !761, line: 183, column: 9)
!4076 = !DILocation(line: 191, column: 16, scope: !4075)
!4077 = !DILocation(line: 191, column: 13, scope: !4075)
!4078 = !DILocation(line: 192, column: 9, scope: !4075)
!4079 = !DILocation(line: 197, column: 11, scope: !4054)
!4080 = !DILocation(line: 197, column: 11, scope: !4055)
!4081 = !DILocation(line: 198, column: 9, scope: !4054)
!4082 = !DILocation(line: 0, scope: !3859, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 201, column: 7, scope: !764)
!4084 = !DILocation(line: 85, column: 25, scope: !3859, inlinedAt: !4083)
!4085 = !DILocation(line: 0, scope: !3867, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 85, column: 10, scope: !3859, inlinedAt: !4083)
!4087 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4086)
!4088 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4086)
!4089 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4086)
!4090 = !DILocation(line: 202, column: 7, scope: !764)
!4091 = !DILocation(line: 203, column: 3, scope: !764)
!4092 = !DILocation(line: 0, scope: !776)
!4093 = !DILocation(line: 230, column: 14, scope: !776)
!4094 = !DILocation(line: 238, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !776, file: !761, line: 238, column: 7)
!4096 = !DILocation(line: 238, column: 7, scope: !776)
!4097 = !DILocation(line: 240, column: 9, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !776, file: !761, line: 240, column: 7)
!4099 = !DILocation(line: 240, column: 18, scope: !4098)
!4100 = !DILocation(line: 253, column: 8, scope: !776)
!4101 = !DILocation(line: 258, column: 27, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !761, line: 257, column: 5)
!4103 = distinct !DILexicalBlock(scope: !776, file: !761, line: 256, column: 7)
!4104 = !DILocation(line: 259, column: 32, scope: !4102)
!4105 = !DILocation(line: 260, column: 5, scope: !4102)
!4106 = !DILocation(line: 262, column: 9, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !776, file: !761, line: 262, column: 7)
!4108 = !DILocation(line: 262, column: 7, scope: !776)
!4109 = !DILocation(line: 263, column: 9, scope: !4107)
!4110 = !DILocation(line: 263, column: 5, scope: !4107)
!4111 = !DILocation(line: 264, column: 9, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !776, file: !761, line: 264, column: 7)
!4113 = !DILocation(line: 264, column: 14, scope: !4112)
!4114 = !DILocation(line: 265, column: 7, scope: !4112)
!4115 = !DILocation(line: 265, column: 11, scope: !4112)
!4116 = !DILocation(line: 266, column: 11, scope: !4112)
!4117 = !DILocation(line: 267, column: 14, scope: !4112)
!4118 = !DILocation(line: 264, column: 7, scope: !776)
!4119 = !DILocation(line: 268, column: 5, scope: !4112)
!4120 = !DILocation(line: 0, scope: !3934, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 269, column: 8, scope: !776)
!4122 = !DILocation(line: 0, scope: !3942, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 70, column: 25, scope: !3934, inlinedAt: !4121)
!4124 = !DILocation(line: 2059, column: 24, scope: !3942, inlinedAt: !4123)
!4125 = !DILocation(line: 2059, column: 10, scope: !3942, inlinedAt: !4123)
!4126 = !DILocation(line: 0, scope: !3867, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 70, column: 10, scope: !3934, inlinedAt: !4121)
!4128 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4127)
!4129 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4127)
!4130 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4127)
!4131 = !DILocation(line: 270, column: 7, scope: !776)
!4132 = !DILocation(line: 271, column: 3, scope: !776)
!4133 = distinct !DISubprogram(name: "xzalloc", scope: !761, file: !761, line: 279, type: !3887, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4134)
!4134 = !{!4135}
!4135 = !DILocalVariable(name: "s", arg: 1, scope: !4133, file: !761, line: 279, type: !119)
!4136 = !DILocation(line: 0, scope: !4133)
!4137 = !DILocalVariable(name: "n", arg: 1, scope: !4138, file: !761, line: 294, type: !119)
!4138 = distinct !DISubprogram(name: "xcalloc", scope: !761, file: !761, line: 294, type: !4003, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4139)
!4139 = !{!4137, !4140}
!4140 = !DILocalVariable(name: "s", arg: 2, scope: !4138, file: !761, line: 294, type: !119)
!4141 = !DILocation(line: 0, scope: !4138, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 281, column: 10, scope: !4133)
!4143 = !DILocation(line: 296, column: 25, scope: !4138, inlinedAt: !4142)
!4144 = !DILocation(line: 0, scope: !3867, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 296, column: 10, scope: !4138, inlinedAt: !4142)
!4146 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4145)
!4147 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4145)
!4148 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4145)
!4149 = !DILocation(line: 281, column: 3, scope: !4133)
!4150 = !DISubprogram(name: "calloc", scope: !1015, file: !1015, line: 543, type: !4003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4151 = !DILocation(line: 0, scope: !4138)
!4152 = !DILocation(line: 296, column: 25, scope: !4138)
!4153 = !DILocation(line: 0, scope: !3867, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 296, column: 10, scope: !4138)
!4155 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4154)
!4156 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4154)
!4157 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4154)
!4158 = !DILocation(line: 296, column: 3, scope: !4138)
!4159 = distinct !DISubprogram(name: "xizalloc", scope: !761, file: !761, line: 285, type: !3901, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4160)
!4160 = !{!4161}
!4161 = !DILocalVariable(name: "s", arg: 1, scope: !4159, file: !761, line: 285, type: !780)
!4162 = !DILocation(line: 0, scope: !4159)
!4163 = !DILocalVariable(name: "n", arg: 1, scope: !4164, file: !761, line: 300, type: !780)
!4164 = distinct !DISubprogram(name: "xicalloc", scope: !761, file: !761, line: 300, type: !4019, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4165)
!4165 = !{!4163, !4166}
!4166 = !DILocalVariable(name: "s", arg: 2, scope: !4164, file: !761, line: 300, type: !780)
!4167 = !DILocation(line: 0, scope: !4164, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 287, column: 10, scope: !4159)
!4169 = !DILocalVariable(name: "n", arg: 1, scope: !4170, file: !3908, line: 77, type: !780)
!4170 = distinct !DISubprogram(name: "icalloc", scope: !3908, file: !3908, line: 77, type: !4019, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4171)
!4171 = !{!4169, !4172}
!4172 = !DILocalVariable(name: "s", arg: 2, scope: !4170, file: !3908, line: 77, type: !780)
!4173 = !DILocation(line: 0, scope: !4170, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 302, column: 25, scope: !4164, inlinedAt: !4168)
!4175 = !DILocation(line: 91, column: 10, scope: !4170, inlinedAt: !4174)
!4176 = !DILocation(line: 0, scope: !3867, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 302, column: 10, scope: !4164, inlinedAt: !4168)
!4178 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4177)
!4179 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4177)
!4180 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4177)
!4181 = !DILocation(line: 287, column: 3, scope: !4159)
!4182 = !DILocation(line: 0, scope: !4164)
!4183 = !DILocation(line: 0, scope: !4170, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 302, column: 25, scope: !4164)
!4185 = !DILocation(line: 91, column: 10, scope: !4170, inlinedAt: !4184)
!4186 = !DILocation(line: 0, scope: !3867, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 302, column: 10, scope: !4164)
!4188 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4187)
!4189 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4187)
!4190 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4187)
!4191 = !DILocation(line: 302, column: 3, scope: !4164)
!4192 = distinct !DISubprogram(name: "xmemdup", scope: !761, file: !761, line: 310, type: !4193, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4195)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!116, !1039, !119}
!4195 = !{!4196, !4197}
!4196 = !DILocalVariable(name: "p", arg: 1, scope: !4192, file: !761, line: 310, type: !1039)
!4197 = !DILocalVariable(name: "s", arg: 2, scope: !4192, file: !761, line: 310, type: !119)
!4198 = !DILocation(line: 0, scope: !4192)
!4199 = !DILocation(line: 0, scope: !3886, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 312, column: 18, scope: !4192)
!4201 = !DILocation(line: 49, column: 25, scope: !3886, inlinedAt: !4200)
!4202 = !DILocation(line: 0, scope: !3867, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 49, column: 10, scope: !3886, inlinedAt: !4200)
!4204 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4203)
!4205 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4203)
!4206 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4203)
!4207 = !DILocalVariable(name: "__dest", arg: 1, scope: !4208, file: !1643, line: 26, type: !3569)
!4208 = distinct !DISubprogram(name: "memcpy", scope: !1643, file: !1643, line: 26, type: !3567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4209)
!4209 = !{!4207, !4210, !4211}
!4210 = !DILocalVariable(name: "__src", arg: 2, scope: !4208, file: !1643, line: 26, type: !1038)
!4211 = !DILocalVariable(name: "__len", arg: 3, scope: !4208, file: !1643, line: 26, type: !119)
!4212 = !DILocation(line: 0, scope: !4208, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 312, column: 10, scope: !4192)
!4214 = !DILocation(line: 29, column: 10, scope: !4208, inlinedAt: !4213)
!4215 = !DILocation(line: 312, column: 3, scope: !4192)
!4216 = distinct !DISubprogram(name: "ximemdup", scope: !761, file: !761, line: 316, type: !4217, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4219)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!116, !1039, !780}
!4219 = !{!4220, !4221}
!4220 = !DILocalVariable(name: "p", arg: 1, scope: !4216, file: !761, line: 316, type: !1039)
!4221 = !DILocalVariable(name: "s", arg: 2, scope: !4216, file: !761, line: 316, type: !780)
!4222 = !DILocation(line: 0, scope: !4216)
!4223 = !DILocation(line: 0, scope: !3900, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 318, column: 18, scope: !4216)
!4225 = !DILocation(line: 0, scope: !3907, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 55, column: 25, scope: !3900, inlinedAt: !4224)
!4227 = !DILocation(line: 57, column: 26, scope: !3907, inlinedAt: !4226)
!4228 = !DILocation(line: 0, scope: !3867, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 55, column: 10, scope: !3900, inlinedAt: !4224)
!4230 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4229)
!4231 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4229)
!4232 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4229)
!4233 = !DILocation(line: 0, scope: !4208, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 318, column: 10, scope: !4216)
!4235 = !DILocation(line: 29, column: 10, scope: !4208, inlinedAt: !4234)
!4236 = !DILocation(line: 318, column: 3, scope: !4216)
!4237 = distinct !DISubprogram(name: "ximemdup0", scope: !761, file: !761, line: 325, type: !4238, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!124, !1039, !780}
!4240 = !{!4241, !4242, !4243}
!4241 = !DILocalVariable(name: "p", arg: 1, scope: !4237, file: !761, line: 325, type: !1039)
!4242 = !DILocalVariable(name: "s", arg: 2, scope: !4237, file: !761, line: 325, type: !780)
!4243 = !DILocalVariable(name: "result", scope: !4237, file: !761, line: 327, type: !124)
!4244 = !DILocation(line: 0, scope: !4237)
!4245 = !DILocation(line: 327, column: 30, scope: !4237)
!4246 = !DILocation(line: 0, scope: !3900, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 327, column: 18, scope: !4237)
!4248 = !DILocation(line: 0, scope: !3907, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 55, column: 25, scope: !3900, inlinedAt: !4247)
!4250 = !DILocation(line: 57, column: 26, scope: !3907, inlinedAt: !4249)
!4251 = !DILocation(line: 0, scope: !3867, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 55, column: 10, scope: !3900, inlinedAt: !4247)
!4253 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4252)
!4254 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4252)
!4255 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4252)
!4256 = !DILocation(line: 328, column: 3, scope: !4237)
!4257 = !DILocation(line: 328, column: 13, scope: !4237)
!4258 = !DILocation(line: 0, scope: !4208, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 329, column: 10, scope: !4237)
!4260 = !DILocation(line: 29, column: 10, scope: !4208, inlinedAt: !4259)
!4261 = !DILocation(line: 329, column: 3, scope: !4237)
!4262 = distinct !DISubprogram(name: "xstrdup", scope: !761, file: !761, line: 335, type: !1017, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !4263)
!4263 = !{!4264}
!4264 = !DILocalVariable(name: "string", arg: 1, scope: !4262, file: !761, line: 335, type: !74)
!4265 = !DILocation(line: 0, scope: !4262)
!4266 = !DILocation(line: 337, column: 27, scope: !4262)
!4267 = !DILocation(line: 337, column: 43, scope: !4262)
!4268 = !DILocation(line: 0, scope: !4192, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 337, column: 10, scope: !4262)
!4270 = !DILocation(line: 0, scope: !3886, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 312, column: 18, scope: !4192, inlinedAt: !4269)
!4272 = !DILocation(line: 49, column: 25, scope: !3886, inlinedAt: !4271)
!4273 = !DILocation(line: 0, scope: !3867, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 49, column: 10, scope: !3886, inlinedAt: !4271)
!4275 = !DILocation(line: 39, column: 8, scope: !3874, inlinedAt: !4274)
!4276 = !DILocation(line: 39, column: 7, scope: !3867, inlinedAt: !4274)
!4277 = !DILocation(line: 40, column: 5, scope: !3874, inlinedAt: !4274)
!4278 = !DILocation(line: 0, scope: !4208, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 312, column: 10, scope: !4192, inlinedAt: !4269)
!4280 = !DILocation(line: 29, column: 10, scope: !4208, inlinedAt: !4279)
!4281 = !DILocation(line: 337, column: 3, scope: !4262)
!4282 = distinct !DISubprogram(name: "xalloc_die", scope: !686, file: !686, line: 32, type: !395, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4283)
!4283 = !{!4284}
!4284 = !DILocalVariable(name: "__errstatus", scope: !4285, file: !686, line: 34, type: !4286)
!4285 = distinct !DILexicalBlock(scope: !4282, file: !686, line: 34, column: 3)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!4287 = !DILocation(line: 34, column: 3, scope: !4285)
!4288 = !DILocation(line: 0, scope: !4285)
!4289 = !DILocation(line: 40, column: 3, scope: !4282)
!4290 = distinct !DISubprogram(name: "rpl_fopen", scope: !797, file: !797, line: 46, type: !4291, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4327)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!4293, !74, !74}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4295)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4295, file: !264, line: 51, baseType: !117, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4295, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4295, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4295, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4295, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4295, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4295, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4295, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4295, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4295, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4295, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4295, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4295, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4295, file: !264, line: 70, baseType: !4311, size: 64, offset: 832)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4295, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4295, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4295, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4295, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4295, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4295, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4295, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4295, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4295, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4295, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4295, file: !264, line: 93, baseType: !4311, size: 64, offset: 1344)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4295, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4295, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4295, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4295, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4327 = !{!4328, !4329, !4330, !4331, !4332, !4333, !4337, !4339, !4340, !4345, !4348, !4349}
!4328 = !DILocalVariable(name: "filename", arg: 1, scope: !4290, file: !797, line: 46, type: !74)
!4329 = !DILocalVariable(name: "mode", arg: 2, scope: !4290, file: !797, line: 46, type: !74)
!4330 = !DILocalVariable(name: "open_direction", scope: !4290, file: !797, line: 54, type: !117)
!4331 = !DILocalVariable(name: "open_flags", scope: !4290, file: !797, line: 55, type: !117)
!4332 = !DILocalVariable(name: "open_flags_gnu", scope: !4290, file: !797, line: 57, type: !247)
!4333 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4290, file: !797, line: 59, type: !4334)
!4334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4335)
!4335 = !{!4336}
!4336 = !DISubrange(count: 81)
!4337 = !DILocalVariable(name: "p", scope: !4338, file: !797, line: 62, type: !74)
!4338 = distinct !DILexicalBlock(scope: !4290, file: !797, line: 61, column: 3)
!4339 = !DILocalVariable(name: "q", scope: !4338, file: !797, line: 64, type: !124)
!4340 = !DILocalVariable(name: "len", scope: !4341, file: !797, line: 128, type: !119)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !797, line: 127, column: 9)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !797, line: 68, column: 7)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !797, line: 67, column: 5)
!4344 = distinct !DILexicalBlock(scope: !4338, file: !797, line: 67, column: 5)
!4345 = !DILocalVariable(name: "fd", scope: !4346, file: !797, line: 199, type: !117)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !797, line: 198, column: 5)
!4347 = distinct !DILexicalBlock(scope: !4290, file: !797, line: 197, column: 7)
!4348 = !DILocalVariable(name: "fp", scope: !4346, file: !797, line: 204, type: !4293)
!4349 = !DILocalVariable(name: "saved_errno", scope: !4350, file: !797, line: 207, type: !117)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !797, line: 206, column: 9)
!4351 = distinct !DILexicalBlock(scope: !4346, file: !797, line: 205, column: 11)
!4352 = !DILocation(line: 0, scope: !4290)
!4353 = !DILocation(line: 59, column: 3, scope: !4290)
!4354 = !DILocation(line: 59, column: 8, scope: !4290)
!4355 = !DILocation(line: 0, scope: !4338)
!4356 = !DILocation(line: 67, column: 5, scope: !4338)
!4357 = !DILocation(line: 54, column: 7, scope: !4290)
!4358 = !DILocation(line: 67, column: 12, scope: !4343)
!4359 = !DILocation(line: 67, column: 5, scope: !4344)
!4360 = !DILocation(line: 74, column: 19, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4362, file: !797, line: 74, column: 17)
!4362 = distinct !DILexicalBlock(scope: !4342, file: !797, line: 70, column: 11)
!4363 = !DILocation(line: 74, column: 17, scope: !4362)
!4364 = !DILocation(line: 75, column: 17, scope: !4361)
!4365 = !DILocation(line: 75, column: 20, scope: !4361)
!4366 = !DILocation(line: 75, column: 15, scope: !4361)
!4367 = !DILocation(line: 80, column: 24, scope: !4362)
!4368 = !DILocation(line: 82, column: 19, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4362, file: !797, line: 82, column: 17)
!4370 = !DILocation(line: 82, column: 17, scope: !4362)
!4371 = !DILocation(line: 83, column: 17, scope: !4369)
!4372 = !DILocation(line: 83, column: 20, scope: !4369)
!4373 = !DILocation(line: 83, column: 15, scope: !4369)
!4374 = !DILocation(line: 88, column: 24, scope: !4362)
!4375 = !DILocation(line: 90, column: 19, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4362, file: !797, line: 90, column: 17)
!4377 = !DILocation(line: 90, column: 17, scope: !4362)
!4378 = !DILocation(line: 91, column: 17, scope: !4376)
!4379 = !DILocation(line: 91, column: 20, scope: !4376)
!4380 = !DILocation(line: 91, column: 15, scope: !4376)
!4381 = !DILocation(line: 100, column: 19, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4362, file: !797, line: 100, column: 17)
!4383 = !DILocation(line: 100, column: 17, scope: !4362)
!4384 = !DILocation(line: 101, column: 17, scope: !4382)
!4385 = !DILocation(line: 101, column: 20, scope: !4382)
!4386 = !DILocation(line: 101, column: 15, scope: !4382)
!4387 = !DILocation(line: 107, column: 19, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4362, file: !797, line: 107, column: 17)
!4389 = !DILocation(line: 107, column: 17, scope: !4362)
!4390 = !DILocation(line: 108, column: 17, scope: !4388)
!4391 = !DILocation(line: 108, column: 20, scope: !4388)
!4392 = !DILocation(line: 108, column: 15, scope: !4388)
!4393 = !DILocation(line: 113, column: 24, scope: !4362)
!4394 = !DILocation(line: 115, column: 13, scope: !4362)
!4395 = !DILocation(line: 117, column: 24, scope: !4362)
!4396 = !DILocation(line: 119, column: 13, scope: !4362)
!4397 = !DILocation(line: 128, column: 24, scope: !4341)
!4398 = !DILocation(line: 0, scope: !4341)
!4399 = !DILocation(line: 129, column: 48, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4341, file: !797, line: 129, column: 15)
!4401 = !DILocation(line: 129, column: 15, scope: !4341)
!4402 = !DILocalVariable(name: "__dest", arg: 1, scope: !4403, file: !1643, line: 26, type: !3569)
!4403 = distinct !DISubprogram(name: "memcpy", scope: !1643, file: !1643, line: 26, type: !3567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4404)
!4404 = !{!4402, !4405, !4406}
!4405 = !DILocalVariable(name: "__src", arg: 2, scope: !4403, file: !1643, line: 26, type: !1038)
!4406 = !DILocalVariable(name: "__len", arg: 3, scope: !4403, file: !1643, line: 26, type: !119)
!4407 = !DILocation(line: 0, scope: !4403, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 131, column: 11, scope: !4341)
!4409 = !DILocation(line: 29, column: 10, scope: !4403, inlinedAt: !4408)
!4410 = !DILocation(line: 132, column: 13, scope: !4341)
!4411 = !DILocation(line: 135, column: 9, scope: !4342)
!4412 = !DILocation(line: 67, column: 25, scope: !4343)
!4413 = !DILocation(line: 67, column: 5, scope: !4343)
!4414 = distinct !{!4414, !4359, !4415, !938}
!4415 = !DILocation(line: 136, column: 7, scope: !4344)
!4416 = !DILocation(line: 138, column: 8, scope: !4338)
!4417 = !DILocation(line: 197, column: 7, scope: !4290)
!4418 = !DILocation(line: 199, column: 47, scope: !4346)
!4419 = !DILocation(line: 199, column: 16, scope: !4346)
!4420 = !DILocation(line: 0, scope: !4346)
!4421 = !DILocation(line: 201, column: 14, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4346, file: !797, line: 201, column: 11)
!4423 = !DILocation(line: 201, column: 11, scope: !4346)
!4424 = !DILocation(line: 204, column: 18, scope: !4346)
!4425 = !DILocation(line: 205, column: 14, scope: !4351)
!4426 = !DILocation(line: 205, column: 11, scope: !4346)
!4427 = !DILocation(line: 207, column: 29, scope: !4350)
!4428 = !DILocation(line: 0, scope: !4350)
!4429 = !DILocation(line: 208, column: 11, scope: !4350)
!4430 = !DILocation(line: 209, column: 17, scope: !4350)
!4431 = !DILocation(line: 210, column: 9, scope: !4350)
!4432 = !DILocalVariable(name: "filename", arg: 1, scope: !4433, file: !797, line: 30, type: !74)
!4433 = distinct !DISubprogram(name: "orig_fopen", scope: !797, file: !797, line: 30, type: !4291, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4434)
!4434 = !{!4432, !4435}
!4435 = !DILocalVariable(name: "mode", arg: 2, scope: !4433, file: !797, line: 30, type: !74)
!4436 = !DILocation(line: 0, scope: !4433, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 219, column: 10, scope: !4290)
!4438 = !DILocation(line: 32, column: 10, scope: !4433, inlinedAt: !4437)
!4439 = !DILocation(line: 219, column: 3, scope: !4290)
!4440 = !DILocation(line: 220, column: 1, scope: !4290)
!4441 = !DISubprogram(name: "open", scope: !1426, file: !1426, line: 181, type: !4442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!117, !74, !117, null}
!4444 = !DISubprogram(name: "fdopen", scope: !354, file: !354, line: 293, type: !4445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!4293, !117, !74}
!4447 = !DISubprogram(name: "close", scope: !1279, file: !1279, line: 358, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4448 = !DISubprogram(name: "fopen", scope: !354, file: !354, line: 258, type: !4449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!4293, !885, !885}
!4451 = distinct !DISubprogram(name: "close_stream", scope: !799, file: !799, line: 55, type: !4452, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4488)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!117, !4454}
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4456)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4456, file: !264, line: 51, baseType: !117, size: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4456, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4456, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4456, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4456, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4456, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4456, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4456, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4456, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4456, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4456, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4456, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4456, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4456, file: !264, line: 70, baseType: !4472, size: 64, offset: 832)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4456, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4456, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4456, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4456, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4456, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4456, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4456, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4456, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4456, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4456, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4456, file: !264, line: 93, baseType: !4472, size: 64, offset: 1344)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4456, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4456, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4456, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4456, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4488 = !{!4489, !4490, !4492, !4493}
!4489 = !DILocalVariable(name: "stream", arg: 1, scope: !4451, file: !799, line: 55, type: !4454)
!4490 = !DILocalVariable(name: "some_pending", scope: !4451, file: !799, line: 57, type: !4491)
!4491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!4492 = !DILocalVariable(name: "prev_fail", scope: !4451, file: !799, line: 58, type: !4491)
!4493 = !DILocalVariable(name: "fclose_fail", scope: !4451, file: !799, line: 59, type: !4491)
!4494 = !DILocation(line: 0, scope: !4451)
!4495 = !DILocation(line: 57, column: 30, scope: !4451)
!4496 = !DILocalVariable(name: "__stream", arg: 1, scope: !4497, file: !1174, line: 135, type: !4454)
!4497 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1174, file: !1174, line: 135, type: !4452, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4498)
!4498 = !{!4496}
!4499 = !DILocation(line: 0, scope: !4497, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 58, column: 27, scope: !4451)
!4501 = !DILocation(line: 137, column: 10, scope: !4497, inlinedAt: !4500)
!4502 = !{!1182, !892, i64 0}
!4503 = !DILocation(line: 58, column: 43, scope: !4451)
!4504 = !DILocation(line: 59, column: 29, scope: !4451)
!4505 = !DILocation(line: 59, column: 45, scope: !4451)
!4506 = !DILocation(line: 69, column: 17, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4451, file: !799, line: 69, column: 7)
!4508 = !DILocation(line: 57, column: 50, scope: !4451)
!4509 = !DILocation(line: 69, column: 33, scope: !4507)
!4510 = !DILocation(line: 69, column: 53, scope: !4507)
!4511 = !DILocation(line: 69, column: 59, scope: !4507)
!4512 = !DILocation(line: 69, column: 7, scope: !4451)
!4513 = !DILocation(line: 71, column: 11, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4507, file: !799, line: 70, column: 5)
!4515 = !DILocation(line: 72, column: 9, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4514, file: !799, line: 71, column: 11)
!4517 = !DILocation(line: 72, column: 15, scope: !4516)
!4518 = !DILocation(line: 77, column: 1, scope: !4451)
!4519 = !DISubprogram(name: "__fpending", scope: !4520, file: !4520, line: 75, type: !4521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4520 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!119, !4454}
!4523 = distinct !DISubprogram(name: "rpl_fclose", scope: !801, file: !801, line: 58, type: !4524, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4560)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!117, !4526}
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4528)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4529)
!4529 = !{!4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4528, file: !264, line: 51, baseType: !117, size: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4528, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4528, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4528, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4528, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4528, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4528, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4528, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4528, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4528, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4528, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4528, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4528, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4528, file: !264, line: 70, baseType: !4544, size: 64, offset: 832)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4528, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4528, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4528, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4528, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4528, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4528, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4528, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4528, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4528, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4528, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4528, file: !264, line: 93, baseType: !4544, size: 64, offset: 1344)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4528, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4528, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4528, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4528, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4560 = !{!4561, !4562, !4563, !4564}
!4561 = !DILocalVariable(name: "fp", arg: 1, scope: !4523, file: !801, line: 58, type: !4526)
!4562 = !DILocalVariable(name: "saved_errno", scope: !4523, file: !801, line: 60, type: !117)
!4563 = !DILocalVariable(name: "fd", scope: !4523, file: !801, line: 63, type: !117)
!4564 = !DILocalVariable(name: "result", scope: !4523, file: !801, line: 74, type: !117)
!4565 = !DILocation(line: 0, scope: !4523)
!4566 = !DILocation(line: 63, column: 12, scope: !4523)
!4567 = !DILocation(line: 64, column: 10, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4523, file: !801, line: 64, column: 7)
!4569 = !DILocation(line: 64, column: 7, scope: !4523)
!4570 = !DILocation(line: 65, column: 12, scope: !4568)
!4571 = !DILocation(line: 65, column: 5, scope: !4568)
!4572 = !DILocation(line: 70, column: 9, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4523, file: !801, line: 70, column: 7)
!4574 = !DILocation(line: 70, column: 23, scope: !4573)
!4575 = !DILocation(line: 70, column: 33, scope: !4573)
!4576 = !DILocation(line: 70, column: 26, scope: !4573)
!4577 = !DILocation(line: 70, column: 59, scope: !4573)
!4578 = !DILocation(line: 71, column: 7, scope: !4573)
!4579 = !DILocation(line: 71, column: 10, scope: !4573)
!4580 = !DILocation(line: 70, column: 7, scope: !4523)
!4581 = !DILocation(line: 100, column: 12, scope: !4523)
!4582 = !DILocation(line: 105, column: 7, scope: !4523)
!4583 = !DILocation(line: 72, column: 19, scope: !4573)
!4584 = !DILocation(line: 105, column: 19, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4523, file: !801, line: 105, column: 7)
!4586 = !DILocation(line: 107, column: 13, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4585, file: !801, line: 106, column: 5)
!4588 = !DILocation(line: 109, column: 5, scope: !4587)
!4589 = !DILocation(line: 112, column: 1, scope: !4523)
!4590 = !DISubprogram(name: "fileno", scope: !354, file: !354, line: 809, type: !4524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4591 = !DISubprogram(name: "fclose", scope: !354, file: !354, line: 178, type: !4524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4592 = !DISubprogram(name: "__freading", scope: !4520, file: !4520, line: 51, type: !4524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4593 = !DISubprogram(name: "lseek", scope: !1279, file: !1279, line: 339, type: !4594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!286, !117, !286, !117}
!4596 = distinct !DISubprogram(name: "rpl_fflush", scope: !803, file: !803, line: 130, type: !4597, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !4633)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!117, !4599}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4601)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4602)
!4602 = !{!4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4601, file: !264, line: 51, baseType: !117, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4601, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4601, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4601, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4601, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4601, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4601, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4601, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4601, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4601, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4601, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4601, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4601, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4601, file: !264, line: 70, baseType: !4617, size: 64, offset: 832)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4601, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4601, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4601, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4601, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4601, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4601, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4601, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4601, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4601, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4601, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4601, file: !264, line: 93, baseType: !4617, size: 64, offset: 1344)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4601, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4601, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4601, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4601, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4633 = !{!4634}
!4634 = !DILocalVariable(name: "stream", arg: 1, scope: !4596, file: !803, line: 130, type: !4599)
!4635 = !DILocation(line: 0, scope: !4596)
!4636 = !DILocation(line: 151, column: 14, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4596, file: !803, line: 151, column: 7)
!4638 = !DILocation(line: 151, column: 22, scope: !4637)
!4639 = !DILocation(line: 151, column: 27, scope: !4637)
!4640 = !DILocation(line: 151, column: 7, scope: !4596)
!4641 = !DILocation(line: 152, column: 12, scope: !4637)
!4642 = !DILocation(line: 152, column: 5, scope: !4637)
!4643 = !DILocalVariable(name: "fp", arg: 1, scope: !4644, file: !803, line: 42, type: !4599)
!4644 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !803, file: !803, line: 42, type: !4645, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !4647)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{null, !4599}
!4647 = !{!4643}
!4648 = !DILocation(line: 0, scope: !4644, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 157, column: 3, scope: !4596)
!4650 = !DILocation(line: 44, column: 12, scope: !4651, inlinedAt: !4649)
!4651 = distinct !DILexicalBlock(scope: !4644, file: !803, line: 44, column: 7)
!4652 = !DILocation(line: 44, column: 19, scope: !4651, inlinedAt: !4649)
!4653 = !DILocation(line: 44, column: 7, scope: !4644, inlinedAt: !4649)
!4654 = !DILocation(line: 46, column: 5, scope: !4651, inlinedAt: !4649)
!4655 = !DILocation(line: 159, column: 10, scope: !4596)
!4656 = !DILocation(line: 159, column: 3, scope: !4596)
!4657 = !DILocation(line: 236, column: 1, scope: !4596)
!4658 = !DISubprogram(name: "fflush", scope: !354, file: !354, line: 230, type: !4597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4659 = distinct !DISubprogram(name: "rpl_fseeko", scope: !805, file: !805, line: 28, type: !4660, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !4697)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!117, !4662, !4696, !117}
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4664)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4665)
!4665 = !{!4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4664, file: !264, line: 51, baseType: !117, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4664, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4664, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4664, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4664, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4664, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4664, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4664, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4664, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4664, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4664, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4664, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4664, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4664, file: !264, line: 70, baseType: !4680, size: 64, offset: 832)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4664, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4664, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4664, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4664, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4664, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4664, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4664, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4664, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4664, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4664, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4664, file: !264, line: 93, baseType: !4680, size: 64, offset: 1344)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4664, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4664, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4664, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4664, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4696 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !354, line: 63, baseType: !286)
!4697 = !{!4698, !4699, !4700, !4701}
!4698 = !DILocalVariable(name: "fp", arg: 1, scope: !4659, file: !805, line: 28, type: !4662)
!4699 = !DILocalVariable(name: "offset", arg: 2, scope: !4659, file: !805, line: 28, type: !4696)
!4700 = !DILocalVariable(name: "whence", arg: 3, scope: !4659, file: !805, line: 28, type: !117)
!4701 = !DILocalVariable(name: "pos", scope: !4702, file: !805, line: 123, type: !4696)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !805, line: 119, column: 5)
!4703 = distinct !DILexicalBlock(scope: !4659, file: !805, line: 55, column: 7)
!4704 = !DILocation(line: 0, scope: !4659)
!4705 = !DILocation(line: 55, column: 12, scope: !4703)
!4706 = !{!1182, !835, i64 16}
!4707 = !DILocation(line: 55, column: 33, scope: !4703)
!4708 = !{!1182, !835, i64 8}
!4709 = !DILocation(line: 55, column: 25, scope: !4703)
!4710 = !DILocation(line: 56, column: 7, scope: !4703)
!4711 = !DILocation(line: 56, column: 15, scope: !4703)
!4712 = !DILocation(line: 56, column: 37, scope: !4703)
!4713 = !{!1182, !835, i64 32}
!4714 = !DILocation(line: 56, column: 29, scope: !4703)
!4715 = !DILocation(line: 57, column: 7, scope: !4703)
!4716 = !DILocation(line: 57, column: 15, scope: !4703)
!4717 = !{!1182, !835, i64 72}
!4718 = !DILocation(line: 57, column: 29, scope: !4703)
!4719 = !DILocation(line: 55, column: 7, scope: !4659)
!4720 = !DILocation(line: 123, column: 26, scope: !4702)
!4721 = !DILocation(line: 123, column: 19, scope: !4702)
!4722 = !DILocation(line: 0, scope: !4702)
!4723 = !DILocation(line: 124, column: 15, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4702, file: !805, line: 124, column: 11)
!4725 = !DILocation(line: 124, column: 11, scope: !4702)
!4726 = !DILocation(line: 135, column: 19, scope: !4702)
!4727 = !DILocation(line: 136, column: 12, scope: !4702)
!4728 = !DILocation(line: 136, column: 20, scope: !4702)
!4729 = !{!1182, !1120, i64 144}
!4730 = !DILocation(line: 167, column: 7, scope: !4702)
!4731 = !DILocation(line: 169, column: 10, scope: !4659)
!4732 = !DILocation(line: 169, column: 3, scope: !4659)
!4733 = !DILocation(line: 170, column: 1, scope: !4659)
!4734 = !DISubprogram(name: "fseeko", scope: !354, file: !354, line: 736, type: !4735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!117, !4662, !286, !117}
!4737 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !693, file: !693, line: 100, type: !4738, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4741)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!119, !1661, !74, !119, !4740}
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!4741 = !{!4742, !4743, !4744, !4745, !4746}
!4742 = !DILocalVariable(name: "pwc", arg: 1, scope: !4737, file: !693, line: 100, type: !1661)
!4743 = !DILocalVariable(name: "s", arg: 2, scope: !4737, file: !693, line: 100, type: !74)
!4744 = !DILocalVariable(name: "n", arg: 3, scope: !4737, file: !693, line: 100, type: !119)
!4745 = !DILocalVariable(name: "ps", arg: 4, scope: !4737, file: !693, line: 100, type: !4740)
!4746 = !DILocalVariable(name: "ret", scope: !4737, file: !693, line: 130, type: !119)
!4747 = !DILocation(line: 0, scope: !4737)
!4748 = !DILocation(line: 105, column: 9, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4737, file: !693, line: 105, column: 7)
!4750 = !DILocation(line: 105, column: 7, scope: !4737)
!4751 = !DILocation(line: 117, column: 10, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4737, file: !693, line: 117, column: 7)
!4753 = !DILocation(line: 117, column: 7, scope: !4737)
!4754 = !DILocation(line: 130, column: 16, scope: !4737)
!4755 = !DILocation(line: 135, column: 11, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4737, file: !693, line: 135, column: 7)
!4757 = !DILocation(line: 135, column: 25, scope: !4756)
!4758 = !DILocation(line: 135, column: 30, scope: !4756)
!4759 = !DILocation(line: 135, column: 7, scope: !4737)
!4760 = !DILocalVariable(name: "ps", arg: 1, scope: !4761, file: !1634, line: 1135, type: !4740)
!4761 = distinct !DISubprogram(name: "mbszero", scope: !1634, file: !1634, line: 1135, type: !4762, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4764)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{null, !4740}
!4764 = !{!4760}
!4765 = !DILocation(line: 0, scope: !4761, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 137, column: 5, scope: !4756)
!4767 = !DILocalVariable(name: "__dest", arg: 1, scope: !4768, file: !1643, line: 57, type: !116)
!4768 = distinct !DISubprogram(name: "memset", scope: !1643, file: !1643, line: 57, type: !1644, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4769)
!4769 = !{!4767, !4770, !4771}
!4770 = !DILocalVariable(name: "__ch", arg: 2, scope: !4768, file: !1643, line: 57, type: !117)
!4771 = !DILocalVariable(name: "__len", arg: 3, scope: !4768, file: !1643, line: 57, type: !119)
!4772 = !DILocation(line: 0, scope: !4768, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 1137, column: 3, scope: !4761, inlinedAt: !4766)
!4774 = !DILocation(line: 59, column: 10, scope: !4768, inlinedAt: !4773)
!4775 = !DILocation(line: 137, column: 5, scope: !4756)
!4776 = !DILocation(line: 138, column: 11, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4737, file: !693, line: 138, column: 7)
!4778 = !DILocation(line: 138, column: 7, scope: !4737)
!4779 = !DILocation(line: 139, column: 5, scope: !4777)
!4780 = !DILocation(line: 143, column: 26, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4737, file: !693, line: 143, column: 7)
!4782 = !DILocation(line: 143, column: 41, scope: !4781)
!4783 = !DILocation(line: 143, column: 7, scope: !4737)
!4784 = !DILocation(line: 145, column: 15, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !693, line: 145, column: 11)
!4786 = distinct !DILexicalBlock(scope: !4781, file: !693, line: 144, column: 5)
!4787 = !DILocation(line: 145, column: 11, scope: !4786)
!4788 = !DILocation(line: 146, column: 32, scope: !4785)
!4789 = !DILocation(line: 146, column: 16, scope: !4785)
!4790 = !DILocation(line: 146, column: 14, scope: !4785)
!4791 = !DILocation(line: 146, column: 9, scope: !4785)
!4792 = !DILocation(line: 286, column: 1, scope: !4737)
!4793 = !DISubprogram(name: "mbsinit", scope: !4794, file: !4794, line: 293, type: !4795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4794 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!117, !4797}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!4799 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !807, file: !807, line: 27, type: !3851, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4800)
!4800 = !{!4801, !4802, !4803, !4804}
!4801 = !DILocalVariable(name: "ptr", arg: 1, scope: !4799, file: !807, line: 27, type: !116)
!4802 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4799, file: !807, line: 27, type: !119)
!4803 = !DILocalVariable(name: "size", arg: 3, scope: !4799, file: !807, line: 27, type: !119)
!4804 = !DILocalVariable(name: "nbytes", scope: !4799, file: !807, line: 29, type: !119)
!4805 = !DILocation(line: 0, scope: !4799)
!4806 = !DILocation(line: 30, column: 7, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4799, file: !807, line: 30, column: 7)
!4808 = !DILocalVariable(name: "ptr", arg: 1, scope: !4809, file: !3943, line: 2057, type: !116)
!4809 = distinct !DISubprogram(name: "rpl_realloc", scope: !3943, file: !3943, line: 2057, type: !3935, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4810)
!4810 = !{!4808, !4811}
!4811 = !DILocalVariable(name: "size", arg: 2, scope: !4809, file: !3943, line: 2057, type: !119)
!4812 = !DILocation(line: 0, scope: !4809, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 37, column: 10, scope: !4799)
!4814 = !DILocation(line: 2059, column: 24, scope: !4809, inlinedAt: !4813)
!4815 = !DILocation(line: 2059, column: 10, scope: !4809, inlinedAt: !4813)
!4816 = !DILocation(line: 37, column: 3, scope: !4799)
!4817 = !DILocation(line: 32, column: 7, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4807, file: !807, line: 31, column: 5)
!4819 = !DILocation(line: 32, column: 13, scope: !4818)
!4820 = !DILocation(line: 33, column: 7, scope: !4818)
!4821 = !DILocation(line: 38, column: 1, scope: !4799)
!4822 = distinct !DISubprogram(name: "hard_locale", scope: !711, file: !711, line: 28, type: !4823, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !4825)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!247, !117}
!4825 = !{!4826, !4827}
!4826 = !DILocalVariable(name: "category", arg: 1, scope: !4822, file: !711, line: 28, type: !117)
!4827 = !DILocalVariable(name: "locale", scope: !4822, file: !711, line: 30, type: !4828)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4829)
!4829 = !{!4830}
!4830 = !DISubrange(count: 257)
!4831 = !DILocation(line: 0, scope: !4822)
!4832 = !DILocation(line: 30, column: 3, scope: !4822)
!4833 = !DILocation(line: 30, column: 8, scope: !4822)
!4834 = !DILocation(line: 32, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4822, file: !711, line: 32, column: 7)
!4836 = !DILocation(line: 32, column: 7, scope: !4822)
!4837 = !DILocalVariable(name: "__s1", arg: 1, scope: !4838, file: !904, line: 1359, type: !74)
!4838 = distinct !DISubprogram(name: "streq", scope: !904, file: !904, line: 1359, type: !905, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !4839)
!4839 = !{!4837, !4840}
!4840 = !DILocalVariable(name: "__s2", arg: 2, scope: !4838, file: !904, line: 1359, type: !74)
!4841 = !DILocation(line: 0, scope: !4838, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 35, column: 9, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4822, file: !711, line: 35, column: 7)
!4844 = !DILocation(line: 1361, column: 11, scope: !4838, inlinedAt: !4842)
!4845 = !DILocation(line: 1361, column: 10, scope: !4838, inlinedAt: !4842)
!4846 = !DILocation(line: 35, column: 29, scope: !4843)
!4847 = !DILocation(line: 0, scope: !4838, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 35, column: 32, scope: !4843)
!4849 = !DILocation(line: 1361, column: 11, scope: !4838, inlinedAt: !4848)
!4850 = !DILocation(line: 1361, column: 10, scope: !4838, inlinedAt: !4848)
!4851 = !DILocation(line: 35, column: 7, scope: !4822)
!4852 = !DILocation(line: 46, column: 3, scope: !4822)
!4853 = !DILocation(line: 47, column: 1, scope: !4822)
!4854 = distinct !DISubprogram(name: "setlocale_null_r", scope: !812, file: !812, line: 154, type: !4855, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4857)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!117, !117, !124, !119}
!4857 = !{!4858, !4859, !4860}
!4858 = !DILocalVariable(name: "category", arg: 1, scope: !4854, file: !812, line: 154, type: !117)
!4859 = !DILocalVariable(name: "buf", arg: 2, scope: !4854, file: !812, line: 154, type: !124)
!4860 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4854, file: !812, line: 154, type: !119)
!4861 = !DILocation(line: 0, scope: !4854)
!4862 = !DILocation(line: 159, column: 10, scope: !4854)
!4863 = !DILocation(line: 159, column: 3, scope: !4854)
!4864 = distinct !DISubprogram(name: "setlocale_null", scope: !812, file: !812, line: 186, type: !4865, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4867)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!74, !117}
!4867 = !{!4868}
!4868 = !DILocalVariable(name: "category", arg: 1, scope: !4864, file: !812, line: 186, type: !117)
!4869 = !DILocation(line: 0, scope: !4864)
!4870 = !DILocation(line: 189, column: 10, scope: !4864)
!4871 = !DILocation(line: 189, column: 3, scope: !4864)
!4872 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !814, file: !814, line: 35, type: !4865, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4873)
!4873 = !{!4874, !4875}
!4874 = !DILocalVariable(name: "category", arg: 1, scope: !4872, file: !814, line: 35, type: !117)
!4875 = !DILocalVariable(name: "result", scope: !4872, file: !814, line: 37, type: !74)
!4876 = !DILocation(line: 0, scope: !4872)
!4877 = !DILocation(line: 37, column: 24, scope: !4872)
!4878 = !DILocation(line: 62, column: 3, scope: !4872)
!4879 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !814, file: !814, line: 66, type: !4855, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4880)
!4880 = !{!4881, !4882, !4883, !4884, !4885}
!4881 = !DILocalVariable(name: "category", arg: 1, scope: !4879, file: !814, line: 66, type: !117)
!4882 = !DILocalVariable(name: "buf", arg: 2, scope: !4879, file: !814, line: 66, type: !124)
!4883 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4879, file: !814, line: 66, type: !119)
!4884 = !DILocalVariable(name: "result", scope: !4879, file: !814, line: 111, type: !74)
!4885 = !DILocalVariable(name: "length", scope: !4886, file: !814, line: 125, type: !119)
!4886 = distinct !DILexicalBlock(scope: !4887, file: !814, line: 124, column: 5)
!4887 = distinct !DILexicalBlock(scope: !4879, file: !814, line: 113, column: 7)
!4888 = !DILocation(line: 0, scope: !4879)
!4889 = !DILocation(line: 0, scope: !4872, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 111, column: 24, scope: !4879)
!4891 = !DILocation(line: 37, column: 24, scope: !4872, inlinedAt: !4890)
!4892 = !DILocation(line: 113, column: 14, scope: !4887)
!4893 = !DILocation(line: 113, column: 7, scope: !4879)
!4894 = !DILocation(line: 116, column: 19, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4896, file: !814, line: 116, column: 11)
!4896 = distinct !DILexicalBlock(scope: !4887, file: !814, line: 114, column: 5)
!4897 = !DILocation(line: 116, column: 11, scope: !4896)
!4898 = !DILocation(line: 120, column: 16, scope: !4895)
!4899 = !DILocation(line: 120, column: 9, scope: !4895)
!4900 = !DILocation(line: 125, column: 23, scope: !4886)
!4901 = !DILocation(line: 0, scope: !4886)
!4902 = !DILocation(line: 126, column: 18, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4886, file: !814, line: 126, column: 11)
!4904 = !DILocation(line: 126, column: 11, scope: !4886)
!4905 = !DILocation(line: 128, column: 39, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4903, file: !814, line: 127, column: 9)
!4907 = !DILocalVariable(name: "__dest", arg: 1, scope: !4908, file: !1643, line: 26, type: !3569)
!4908 = distinct !DISubprogram(name: "memcpy", scope: !1643, file: !1643, line: 26, type: !3567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4909)
!4909 = !{!4907, !4910, !4911}
!4910 = !DILocalVariable(name: "__src", arg: 2, scope: !4908, file: !1643, line: 26, type: !1038)
!4911 = !DILocalVariable(name: "__len", arg: 3, scope: !4908, file: !1643, line: 26, type: !119)
!4912 = !DILocation(line: 0, scope: !4908, inlinedAt: !4913)
!4913 = distinct !DILocation(line: 128, column: 11, scope: !4906)
!4914 = !DILocation(line: 29, column: 10, scope: !4908, inlinedAt: !4913)
!4915 = !DILocation(line: 129, column: 11, scope: !4906)
!4916 = !DILocation(line: 133, column: 23, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !814, line: 133, column: 15)
!4918 = distinct !DILexicalBlock(scope: !4903, file: !814, line: 132, column: 9)
!4919 = !DILocation(line: 133, column: 15, scope: !4918)
!4920 = !DILocation(line: 138, column: 44, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4917, file: !814, line: 134, column: 13)
!4922 = !DILocation(line: 0, scope: !4908, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 138, column: 15, scope: !4921)
!4924 = !DILocation(line: 29, column: 10, scope: !4908, inlinedAt: !4923)
!4925 = !DILocation(line: 139, column: 15, scope: !4921)
!4926 = !DILocation(line: 139, column: 32, scope: !4921)
!4927 = !DILocation(line: 140, column: 13, scope: !4921)
!4928 = !DILocation(line: 0, scope: !4887)
!4929 = !DILocation(line: 145, column: 1, scope: !4879)
