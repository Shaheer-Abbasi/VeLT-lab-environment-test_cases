; ModuleID = 'src/users.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !378
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !348
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !368
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !370
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !372
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !374
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !376
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !380
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !382
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !387
@opterr = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !392
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.43, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.44, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !395
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !491
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !505
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !543
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !550
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !507
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !552
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !495
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !512
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !514
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !516
@.str.13.67 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !518
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !520
@.str.80 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1, !dbg !558
@.str.1.81 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1, !dbg !561
@.str.2.82 = private unnamed_addr constant [2 x i8] c"~\00", align 1, !dbg !566
@.str.3.86 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1, !dbg !568
@.str.4.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !570
@.str.5.83 = private unnamed_addr constant [29 x i8] c"/var/lib/systemd/random-seed\00", align 1, !dbg !572
@.str.6.84 = private unnamed_addr constant [29 x i8] c"/var/lib/urandom/random-seed\00", align 1, !dbg !578
@.str.7.85 = private unnamed_addr constant [21 x i8] c"/var/lib/random-seed\00", align 1, !dbg !580
@.str.8.88 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1, !dbg !582
@.str.9.89 = private unnamed_addr constant [3 x i8] c"re\00", align 1, !dbg !584
@.str.90 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !586
@.str.1.91 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !589
@.str.2.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !591
@.str.3.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !593
@.str.4.94 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !595
@.str.5.95 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !597
@.str.6.96 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !602
@.str.7.97 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !607
@.str.8.98 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !609
@.str.9.99 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !614
@.str.10.100 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !619
@.str.11.101 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !624
@.str.12.102 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !629
@.str.13.103 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !631
@.str.14.104 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !636
@.str.15.105 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !641
@.str.16.106 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !646
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.111 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !651
@.str.18.112 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !653
@.str.19.113 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !655
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !657
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !659
@.str.22.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !661
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !663
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !665
@exit_failure = dso_local global i32 1, align 4, !dbg !673
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !679
@.str.1.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !682
@.str.2.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !684
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !686
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !689
@.str.1.149 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !704

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !814 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !818, metadata !DIExpression()), !dbg !819
  %2 = icmp eq i32 %0, 0, !dbg !820
  br i1 %2, label %8, label %3, !dbg !822

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !823, !tbaa !825
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !823
  %6 = load ptr, ptr @program_name, align 8, !dbg !823, !tbaa !825
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !823
  br label %30, !dbg !823

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !829
  %10 = load ptr, ptr @program_name, align 8, !dbg !829, !tbaa !825
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !829
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !831
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #38, !dbg !831
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !832
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !832
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !833
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !834, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !846, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata ptr poison, metadata !846, metadata !DIExpression()), !dbg !851
  tail call void @emit_bug_reporting_address() #38, !dbg !853
  %16 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !854
  call void @llvm.dbg.value(metadata ptr %16, metadata !849, metadata !DIExpression()), !dbg !851
  %17 = icmp eq ptr %16, null, !dbg !855
  br i1 %17, label %25, label %18, !dbg !857

18:                                               ; preds = %8
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #39, !dbg !858
  %20 = icmp eq i32 %19, 0, !dbg !858
  br i1 %20, label %25, label %21, !dbg !859

21:                                               ; preds = %18
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #38, !dbg !860
  %23 = load ptr, ptr @stdout, align 8, !dbg !860, !tbaa !825
  %24 = tail call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !860
  br label %25, !dbg !862

25:                                               ; preds = %8, %18, %21
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !846, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !850, metadata !DIExpression()), !dbg !851
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #38, !dbg !863
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5) #38, !dbg !863
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #38, !dbg !864
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.49) #38, !dbg !864
  br label %30

30:                                               ; preds = %25, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !865
  unreachable, !dbg !865
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !866 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !871 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !877 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !70 {
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !241, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata ptr %0, metadata !242, metadata !DIExpression()), !dbg !880
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !881, !tbaa !882
  %3 = icmp eq i32 %2, -1, !dbg !884
  br i1 %3, label %4, label %16, !dbg !885

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #38, !dbg !886
  call void @llvm.dbg.value(metadata ptr %5, metadata !243, metadata !DIExpression()), !dbg !887
  %6 = icmp eq ptr %5, null, !dbg !888
  br i1 %6, label %14, label %7, !dbg !889

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !890, !tbaa !891
  %9 = icmp eq i8 %8, 0, !dbg !890
  br i1 %9, label %14, label %10, !dbg !892

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !893, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !899, metadata !DIExpression()), !dbg !900
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #39, !dbg !902
  %12 = icmp eq i32 %11, 0, !dbg !903
  %13 = zext i1 %12 to i32, !dbg !892
  br label %14, !dbg !892

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !904, !tbaa !882
  br label %16, !dbg !905

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !906
  %18 = icmp eq i32 %17, 0, !dbg !906
  br i1 %18, label %22, label %19, !dbg !908

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !909, !tbaa !825
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !909
  br label %128, !dbg !911

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !246, metadata !DIExpression()), !dbg !880
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #39, !dbg !912
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !913
  call void @llvm.dbg.value(metadata ptr %24, metadata !248, metadata !DIExpression()), !dbg !880
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !914
  call void @llvm.dbg.value(metadata ptr %25, metadata !249, metadata !DIExpression()), !dbg !880
  %26 = icmp eq ptr %25, null, !dbg !915
  br i1 %26, label %58, label %27, !dbg !916

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !917
  br i1 %28, label %58, label %29, !dbg !918

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !250, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !919
  %30 = icmp ult ptr %24, %25, !dbg !920
  br i1 %30, label %31, label %52, !dbg !921

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !880
  %33 = load ptr, ptr %32, align 8, !tbaa !825
  br label %34, !dbg !921

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !250, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i64 %36, metadata !254, metadata !DIExpression()), !dbg !919
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !922
  call void @llvm.dbg.value(metadata ptr %37, metadata !250, metadata !DIExpression()), !dbg !919
  %38 = load i8, ptr %35, align 1, !dbg !922, !tbaa !891
  %39 = sext i8 %38 to i64, !dbg !922
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !922
  %41 = load i16, ptr %40, align 2, !dbg !922, !tbaa !923
  %42 = freeze i16 %41, !dbg !925
  %43 = lshr i16 %42, 13, !dbg !925
  %44 = and i16 %43, 1, !dbg !925
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !926
  call void @llvm.dbg.value(metadata i64 %46, metadata !254, metadata !DIExpression()), !dbg !919
  %47 = icmp ult ptr %37, %25, !dbg !920
  %48 = icmp ult i64 %46, 2, !dbg !927
  %49 = select i1 %47, i1 %48, i1 false, !dbg !927
  br i1 %49, label %34, label %50, !dbg !921, !llvm.loop !928

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !930
  br i1 %51, label %52, label %54, !dbg !932

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !932

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !932
  call void @llvm.dbg.value(metadata i8 %57, metadata !246, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata ptr %56, metadata !249, metadata !DIExpression()), !dbg !880
  br label %58, !dbg !933

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !880
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !880
  call void @llvm.dbg.value(metadata i8 %60, metadata !246, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata ptr %59, metadata !249, metadata !DIExpression()), !dbg !880
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.18) #39, !dbg !934
  call void @llvm.dbg.value(metadata i64 %61, metadata !255, metadata !DIExpression()), !dbg !880
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !935
  call void @llvm.dbg.value(metadata ptr %62, metadata !256, metadata !DIExpression()), !dbg !880
  br label %63, !dbg !936

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !880
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !880
  call void @llvm.dbg.value(metadata i8 %65, metadata !246, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata ptr %64, metadata !256, metadata !DIExpression()), !dbg !880
  %66 = load i8, ptr %64, align 1, !dbg !937, !tbaa !891
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !938

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !939
  %69 = load i8, ptr %68, align 1, !dbg !942, !tbaa !891
  %70 = icmp eq i8 %69, 45, !dbg !943
  %71 = select i1 %70, i8 0, i8 %65, !dbg !944
  br label %72, !dbg !944

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !880
  call void @llvm.dbg.value(metadata i8 %73, metadata !246, metadata !DIExpression()), !dbg !880
  %74 = tail call ptr @__ctype_b_loc() #41, !dbg !945
  %75 = load ptr, ptr %74, align 8, !dbg !945, !tbaa !825
  %76 = sext i8 %66 to i64, !dbg !945
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !945
  %78 = load i16, ptr %77, align 2, !dbg !945, !tbaa !923
  %79 = and i16 %78, 8192, !dbg !945
  %80 = icmp eq i16 %79, 0, !dbg !945
  br i1 %80, label %96, label %81, !dbg !947

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !948
  br i1 %82, label %98, label %83, !dbg !951

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !952
  %85 = load i8, ptr %84, align 1, !dbg !952, !tbaa !891
  %86 = sext i8 %85 to i64, !dbg !952
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !952
  %88 = load i16, ptr %87, align 2, !dbg !952, !tbaa !923
  %89 = and i16 %88, 8192, !dbg !952
  %90 = icmp eq i16 %89, 0, !dbg !952
  br i1 %90, label %91, label %98, !dbg !953

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !954
  %93 = icmp ne i8 %92, 0, !dbg !954
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !956
  br i1 %95, label %96, label %98, !dbg !956

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !957
  call void @llvm.dbg.value(metadata ptr %97, metadata !256, metadata !DIExpression()), !dbg !880
  br label %63, !dbg !936, !llvm.loop !958

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !960
  %100 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !825
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !893, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !313, metadata !DIExpression()), !dbg !880
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #39, !dbg !981
  %103 = icmp eq i32 %102, 0, !dbg !981
  br i1 %103, label %107, label %104, !dbg !983

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #39, !dbg !984
  %106 = icmp eq i32 %105, 0, !dbg !984
  br i1 %106, label %107, label %110, !dbg !985

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !986
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %108, ptr noundef %59) #38, !dbg !986
  br label %113, !dbg !988

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !989
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.5, i32 noundef %111, ptr noundef %59) #38, !dbg !989
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !991, !tbaa !825
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %114), !dbg !991
  %116 = load ptr, ptr @stdout, align 8, !dbg !992, !tbaa !825
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %116), !dbg !992
  %118 = ptrtoint ptr %64 to i64, !dbg !993
  %119 = sub i64 %118, %99, !dbg !993
  %120 = load ptr, ptr @stdout, align 8, !dbg !993, !tbaa !825
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !993
  %122 = load ptr, ptr @stdout, align 8, !dbg !994, !tbaa !825
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %122), !dbg !994
  %124 = load ptr, ptr @stdout, align 8, !dbg !995, !tbaa !825
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %124), !dbg !995
  %126 = load ptr, ptr @stdout, align 8, !dbg !996, !tbaa !825
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !996
  br label %128, !dbg !997

128:                                              ; preds = %113, %19
  ret void, !dbg !997
}

; Function Attrs: nounwind
declare !dbg !998 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1002 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1006 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1010 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1012 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1015 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1018 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1021 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1024 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1030 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1031 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1037 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1041, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata ptr %1, metadata !1042, metadata !DIExpression()), !dbg !1043
  %3 = load ptr, ptr %1, align 8, !dbg !1044, !tbaa !825
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1045
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #38, !dbg !1046
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #38, !dbg !1047
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #38, !dbg !1048
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1049
  %8 = load ptr, ptr @Version, align 8, !dbg !1050, !tbaa !825
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #38, !dbg !1051
  %10 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #38, !dbg !1051
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef %10, ptr noundef null) #38, !dbg !1052
  %11 = load i32, ptr @optind, align 4, !dbg !1053, !tbaa !882
  %12 = sub nsw i32 %0, %11, !dbg !1054
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %14
  ], !dbg !1055

13:                                               ; preds = %2
  tail call fastcc void @users(ptr noundef nonnull @.str.3, i32 noundef 1), !dbg !1056
  br label %26, !dbg !1058

14:                                               ; preds = %2
  %15 = sext i32 %11 to i64, !dbg !1059
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1059
  %17 = load ptr, ptr %16, align 8, !dbg !1059, !tbaa !825
  tail call fastcc void @users(ptr noundef %17, i32 noundef 0), !dbg !1060
  br label %26, !dbg !1061

18:                                               ; preds = %2
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #38, !dbg !1062
  %20 = load i32, ptr @optind, align 4, !dbg !1062, !tbaa !882
  %21 = add nsw i32 %20, 1, !dbg !1062
  %22 = sext i32 %21 to i64, !dbg !1062
  %23 = getelementptr inbounds ptr, ptr %1, i64 %22, !dbg !1062
  %24 = load ptr, ptr %23, align 8, !dbg !1062, !tbaa !825
  %25 = tail call ptr @quote(ptr noundef %24) #38, !dbg !1062
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %19, ptr noundef %25) #38, !dbg !1062
  tail call void @usage(i32 noundef 1) #42, !dbg !1063
  unreachable, !dbg !1063

26:                                               ; preds = %14, %13
  ret i32 0, !dbg !1064
}

; Function Attrs: nounwind
declare !dbg !1065 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1068 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1069 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @users(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !1072 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1076, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 %1, metadata !1077, metadata !DIExpression()), !dbg !1106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1108
  %5 = or i32 %1, 2, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %5, metadata !1077, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr %3, metadata !1078, metadata !DIExpression(DW_OP_deref)), !dbg !1106
  call void @llvm.dbg.value(metadata ptr %4, metadata !1079, metadata !DIExpression(DW_OP_deref)), !dbg !1106
  %6 = call i32 @read_utmp(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #38, !dbg !1110
  %7 = icmp eq i32 %6, 0, !dbg !1112
  br i1 %7, label %12, label %8, !dbg !1113

8:                                                ; preds = %2
  %9 = tail call ptr @__errno_location() #41, !dbg !1114
  %10 = load i32, ptr %9, align 4, !dbg !1114, !tbaa !882
  %11 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #38, !dbg !1114
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %10, ptr noundef nonnull @.str.50, ptr noundef %11) #38, !dbg !1114
  unreachable, !dbg !1114

12:                                               ; preds = %2
  %13 = load i64, ptr %3, align 8, !dbg !1115, !tbaa !1116
  call void @llvm.dbg.value(metadata i64 %13, metadata !1078, metadata !DIExpression()), !dbg !1106
  %14 = load ptr, ptr %4, align 8, !dbg !1118, !tbaa !825
  call void @llvm.dbg.value(metadata ptr %14, metadata !1079, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %13, metadata !1119, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr %14, metadata !1126, metadata !DIExpression()), !dbg !1140
  %15 = call noalias nonnull ptr @xinmalloc(i64 noundef %13, i64 noundef 8) #43, !dbg !1142
  call void @llvm.dbg.value(metadata ptr %15, metadata !1127, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 0, metadata !1128, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %13, metadata !1119, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr %14, metadata !1126, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %13, metadata !1119, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1140
  %16 = icmp eq i64 %13, 0, !dbg !1143
  br i1 %16, label %17, label %18, !dbg !1143

17:                                               ; preds = %12
  call void @qsort(ptr noundef nonnull %15, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @userid_compare) #38, !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, metadata !1133, metadata !DIExpression()), !dbg !1145
  br label %70, !dbg !1146

18:                                               ; preds = %12, %34
  %19 = phi i64 [ %22, %34 ], [ %13, %12 ]
  %20 = phi ptr [ %36, %34 ], [ %14, %12 ]
  %21 = phi i64 [ %35, %34 ], [ 0, %12 ]
  %22 = add nsw i64 %19, -1, !dbg !1147
  call void @llvm.dbg.value(metadata ptr %20, metadata !1126, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %21, metadata !1128, metadata !DIExpression()), !dbg !1140
  %23 = load ptr, ptr %20, align 8, !dbg !1148, !tbaa !1149
  %24 = load i8, ptr %23, align 1, !dbg !1148, !tbaa !891
  %25 = icmp eq i8 %24, 0, !dbg !1148
  br i1 %25, label %34, label %26, !dbg !1148

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.gl_utmp, ptr %20, i64 0, i32 7, !dbg !1148
  %28 = load i16, ptr %27, align 8, !dbg !1148, !tbaa !1153
  %29 = icmp eq i16 %28, 7, !dbg !1148
  br i1 %29, label %30, label %34, !dbg !1154

30:                                               ; preds = %26
  %31 = call noalias nonnull ptr @extract_trimmed_name(ptr noundef nonnull %20) #38, !dbg !1155
  call void @llvm.dbg.value(metadata ptr %31, metadata !1129, metadata !DIExpression()), !dbg !1156
  %32 = getelementptr inbounds ptr, ptr %15, i64 %21, !dbg !1157
  store ptr %31, ptr %32, align 8, !dbg !1158, !tbaa !825
  %33 = add nsw i64 %21, 1, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %33, metadata !1128, metadata !DIExpression()), !dbg !1140
  br label %34, !dbg !1160

34:                                               ; preds = %30, %26, %18
  %35 = phi i64 [ %33, %30 ], [ %21, %26 ], [ %21, %18 ], !dbg !1140
  call void @llvm.dbg.value(metadata i64 %35, metadata !1128, metadata !DIExpression()), !dbg !1140
  %36 = getelementptr inbounds %struct.gl_utmp, ptr %20, i64 1, !dbg !1161
  call void @llvm.dbg.value(metadata i64 %22, metadata !1119, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr %36, metadata !1126, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %22, metadata !1119, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1140
  %37 = icmp eq i64 %22, 0, !dbg !1143
  br i1 %37, label %38, label %18, !dbg !1143, !llvm.loop !1162

38:                                               ; preds = %34
  call void @qsort(ptr noundef nonnull %15, i64 noundef %35, i64 noundef 8, ptr noundef nonnull @userid_compare) #38, !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, metadata !1133, metadata !DIExpression()), !dbg !1145
  %39 = icmp sgt i64 %35, 0, !dbg !1164
  br i1 %39, label %40, label %70, !dbg !1146

40:                                               ; preds = %38
  %41 = add nsw i64 %35, -1
  br label %42, !dbg !1146

42:                                               ; preds = %61, %40
  %43 = phi i64 [ 0, %40 ], [ %62, %61 ]
  call void @llvm.dbg.value(metadata i64 %43, metadata !1133, metadata !DIExpression()), !dbg !1145
  %44 = icmp slt i64 %43, %41, !dbg !1165
  call void @llvm.dbg.value(metadata i8 poison, metadata !1135, metadata !DIExpression()), !dbg !1166
  %45 = getelementptr inbounds ptr, ptr %15, i64 %43, !dbg !1167
  %46 = load ptr, ptr %45, align 8, !dbg !1167, !tbaa !825
  %47 = load ptr, ptr @stdout, align 8, !dbg !1167, !tbaa !825
  %48 = call i32 @fputs_unlocked(ptr noundef %46, ptr noundef %47), !dbg !1167
  %49 = select i1 %44, i32 32, i32 10, !dbg !1168
  call void @llvm.dbg.value(metadata i32 %49, metadata !1169, metadata !DIExpression()), !dbg !1175
  %50 = load ptr, ptr @stdout, align 8, !dbg !1177, !tbaa !825
  %51 = getelementptr inbounds %struct._IO_FILE, ptr %50, i64 0, i32 5, !dbg !1177
  %52 = load ptr, ptr %51, align 8, !dbg !1177, !tbaa !1178
  %53 = getelementptr inbounds %struct._IO_FILE, ptr %50, i64 0, i32 6, !dbg !1177
  %54 = load ptr, ptr %53, align 8, !dbg !1177, !tbaa !1180
  %55 = icmp ult ptr %52, %54, !dbg !1177
  br i1 %55, label %58, label %56, !dbg !1177, !prof !1181

56:                                               ; preds = %42
  %57 = call i32 @__overflow(ptr noundef nonnull %50, i32 noundef %49) #38, !dbg !1177
  br label %61, !dbg !1177

58:                                               ; preds = %42
  %59 = trunc i32 %49 to i8, !dbg !1177
  %60 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1177
  store ptr %60, ptr %51, align 8, !dbg !1177, !tbaa !1178
  store i8 %59, ptr %52, align 1, !dbg !1177, !tbaa !891
  br label %61, !dbg !1177

61:                                               ; preds = %58, %56
  %62 = add nuw nsw i64 %43, 1, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %62, metadata !1133, metadata !DIExpression()), !dbg !1145
  %63 = icmp eq i64 %62, %35, !dbg !1164
  br i1 %63, label %64, label %42, !dbg !1146, !llvm.loop !1183

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %68, %64 ], [ 0, %61 ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !1138, metadata !DIExpression()), !dbg !1185
  %66 = getelementptr inbounds ptr, ptr %15, i64 %65, !dbg !1186
  %67 = load ptr, ptr %66, align 8, !dbg !1186, !tbaa !825
  call void @free(ptr noundef %67) #38, !dbg !1188
  %68 = add nuw nsw i64 %65, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %68, metadata !1138, metadata !DIExpression()), !dbg !1185
  %69 = icmp eq i64 %68, %35, !dbg !1190
  br i1 %69, label %70, label %64, !dbg !1191, !llvm.loop !1192

70:                                               ; preds = %64, %17, %38
  call void @free(ptr noundef nonnull %15) #38, !dbg !1194
  %71 = load ptr, ptr %4, align 8, !dbg !1195, !tbaa !825
  call void @llvm.dbg.value(metadata ptr %71, metadata !1079, metadata !DIExpression()), !dbg !1106
  call void @free(ptr noundef %71) #38, !dbg !1196
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1197
  ret void, !dbg !1197
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1198 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @userid_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !dbg !1202 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1206, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %1, metadata !1207, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %0, metadata !1208, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %1, metadata !1209, metadata !DIExpression()), !dbg !1210
  %3 = load ptr, ptr %0, align 8, !dbg !1211, !tbaa !825
  %4 = load ptr, ptr %1, align 8, !dbg !1212, !tbaa !825
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !1213
  ret i32 %5, !dbg !1214
}

; Function Attrs: nofree
declare !dbg !1215 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

declare !dbg !1220 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1223 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1226 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !1229
  store ptr %0, ptr @file_name, align 8, !dbg !1230, !tbaa !825
  ret void, !dbg !1231
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !1232 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1236, metadata !DIExpression()), !dbg !1237
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1238, !tbaa !1239
  ret void, !dbg !1241
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1242 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1247, !tbaa !825
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1248
  %3 = icmp eq i32 %2, 0, !dbg !1249
  br i1 %3, label %22, label %4, !dbg !1250

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1251, !tbaa !1239, !range !1252, !noundef !870
  %6 = icmp eq i8 %5, 0, !dbg !1251
  br i1 %6, label %11, label %7, !dbg !1253

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1254
  %9 = load i32, ptr %8, align 4, !dbg !1254, !tbaa !882
  %10 = icmp eq i32 %9, 32, !dbg !1255
  br i1 %10, label %22, label %11, !dbg !1256

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #38, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %12, metadata !1244, metadata !DIExpression()), !dbg !1258
  %13 = load ptr, ptr @file_name, align 8, !dbg !1259, !tbaa !825
  %14 = icmp eq ptr %13, null, !dbg !1259
  %15 = tail call ptr @__errno_location() #41, !dbg !1261
  %16 = load i32, ptr %15, align 4, !dbg !1261, !tbaa !882
  br i1 %14, label %19, label %17, !dbg !1262

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1263
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #38, !dbg !1263
  br label %20, !dbg !1263

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #38, !dbg !1264
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1265, !tbaa !882
  tail call void @_exit(i32 noundef %21) #40, !dbg !1266
  unreachable, !dbg !1266

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1267, !tbaa !825
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1269
  %25 = icmp eq i32 %24, 0, !dbg !1270
  br i1 %25, label %28, label %26, !dbg !1271

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1272, !tbaa !882
  tail call void @_exit(i32 noundef %27) #40, !dbg !1273
  unreachable, !dbg !1273

28:                                               ; preds = %22
  ret void, !dbg !1274
}

; Function Attrs: noreturn
declare !dbg !1275 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %1, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata ptr %2, metadata !1283, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata ptr %3, metadata !1284, metadata !DIExpression()), !dbg !1285
  tail call fastcc void @flush_stdout(), !dbg !1286
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1287, !tbaa !825
  %6 = icmp eq ptr %5, null, !dbg !1287
  br i1 %6, label %8, label %7, !dbg !1289

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1290
  br label %12, !dbg !1290

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1291, !tbaa !825
  %10 = tail call ptr @getprogname() #39, !dbg !1291
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %10) #38, !dbg !1291
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1293
  ret void, !dbg !1294
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1295 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1297, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 1, metadata !1299, metadata !DIExpression()), !dbg !1302
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1305
  %2 = icmp slt i32 %1, 0, !dbg !1306
  br i1 %2, label %6, label %3, !dbg !1307

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1308, !tbaa !825
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1308
  br label %6, !dbg !1308

6:                                                ; preds = %3, %0
  ret void, !dbg !1309
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1310 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1312, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %1, metadata !1313, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata ptr %2, metadata !1314, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata ptr %3, metadata !1315, metadata !DIExpression()), !dbg !1316
  %6 = load ptr, ptr @stderr, align 8, !dbg !1317, !tbaa !825
  call void @llvm.dbg.value(metadata ptr %6, metadata !1318, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata ptr %2, metadata !1358, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata ptr %3, metadata !1359, metadata !DIExpression()), !dbg !1360
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1362
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1363, !tbaa !882
  %9 = add i32 %8, 1, !dbg !1363
  store i32 %9, ptr @error_message_count, align 4, !dbg !1363, !tbaa !882
  %10 = icmp eq i32 %1, 0, !dbg !1364
  br i1 %10, label %20, label %11, !dbg !1366

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1367, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1371, metadata !DIExpression()), !dbg !1378
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1379
  call void @llvm.dbg.value(metadata ptr %12, metadata !1370, metadata !DIExpression()), !dbg !1375
  %13 = icmp eq ptr %12, null, !dbg !1380
  br i1 %13, label %14, label %16, !dbg !1382

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #38, !dbg !1383
  call void @llvm.dbg.value(metadata ptr %15, metadata !1370, metadata !DIExpression()), !dbg !1375
  br label %16, !dbg !1384

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1375
  call void @llvm.dbg.value(metadata ptr %17, metadata !1370, metadata !DIExpression()), !dbg !1375
  %18 = load ptr, ptr @stderr, align 8, !dbg !1385, !tbaa !825
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %17) #38, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1386
  br label %20, !dbg !1387

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1388, !tbaa !825
  call void @llvm.dbg.value(metadata i32 10, metadata !1389, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata ptr %21, metadata !1394, metadata !DIExpression()), !dbg !1395
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1397
  %23 = load ptr, ptr %22, align 8, !dbg !1397, !tbaa !1178
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1397
  %25 = load ptr, ptr %24, align 8, !dbg !1397, !tbaa !1180
  %26 = icmp ult ptr %23, %25, !dbg !1397
  br i1 %26, label %29, label %27, !dbg !1397, !prof !1181

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1397
  br label %31, !dbg !1397

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1397
  store ptr %30, ptr %22, align 8, !dbg !1397, !tbaa !1178
  store i8 10, ptr %23, align 1, !dbg !1397, !tbaa !891
  br label %31, !dbg !1397

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1398, !tbaa !825
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1398
  %34 = icmp eq i32 %0, 0, !dbg !1399
  br i1 %34, label %36, label %35, !dbg !1401

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !1402
  unreachable, !dbg !1402

36:                                               ; preds = %31
  ret void, !dbg !1403
}

declare !dbg !1404 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1407 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1410 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1413 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1417 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1421, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %1, metadata !1422, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata ptr %2, metadata !1423, metadata !DIExpression()), !dbg !1430
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1431
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1424, metadata !DIExpression()), !dbg !1432
  call void @llvm.va_start(ptr nonnull %4), !dbg !1433
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1434
  call void @llvm.va_end(ptr nonnull %4), !dbg !1435
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1436
  ret void, !dbg !1436
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !350 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !362, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %1, metadata !363, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %2, metadata !364, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %3, metadata !365, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %4, metadata !366, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %5, metadata !367, metadata !DIExpression()), !dbg !1437
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1438, !tbaa !882
  %8 = icmp eq i32 %7, 0, !dbg !1438
  br i1 %8, label %23, label %9, !dbg !1440

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1441, !tbaa !882
  %11 = icmp eq i32 %10, %3, !dbg !1444
  br i1 %11, label %12, label %22, !dbg !1445

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1446, !tbaa !825
  %14 = icmp eq ptr %13, %2, !dbg !1447
  br i1 %14, label %36, label %15, !dbg !1448

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1449
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1450
  br i1 %18, label %19, label %22, !dbg !1450

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1451
  %21 = icmp eq i32 %20, 0, !dbg !1452
  br i1 %21, label %36, label %22, !dbg !1453

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1454, !tbaa !825
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1455, !tbaa !882
  br label %23, !dbg !1456

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1457
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1458, !tbaa !825
  %25 = icmp eq ptr %24, null, !dbg !1458
  br i1 %25, label %27, label %26, !dbg !1460

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1461
  br label %31, !dbg !1461

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1462, !tbaa !825
  %29 = tail call ptr @getprogname() #39, !dbg !1462
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %29) #38, !dbg !1462
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1464, !tbaa !825
  %33 = icmp eq ptr %2, null, !dbg !1464
  %34 = select i1 %33, ptr @.str.3.33, ptr @.str.2.34, !dbg !1464
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1464
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1465
  br label %36, !dbg !1466

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1466
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1467 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1471, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %1, metadata !1472, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %2, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %3, metadata !1474, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %4, metadata !1475, metadata !DIExpression()), !dbg !1477
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1478
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1476, metadata !DIExpression()), !dbg !1479
  call void @llvm.va_start(ptr nonnull %6), !dbg !1480
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !1481
  call void @llvm.va_end(ptr nonnull %6), !dbg !1482
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1483
  ret void, !dbg !1483
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1484 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1487, !tbaa !825
  ret ptr %1, !dbg !1488
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1489 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1494, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %1, metadata !1495, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %2, metadata !1496, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %3, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %4, metadata !1498, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %5, metadata !1499, metadata !DIExpression()), !dbg !1520
  %8 = load i32, ptr @opterr, align 4, !dbg !1521, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %8, metadata !1500, metadata !DIExpression()), !dbg !1520
  store i32 0, ptr @opterr, align 4, !dbg !1522, !tbaa !882
  %9 = icmp eq i32 %0, 2, !dbg !1523
  br i1 %9, label %10, label %15, !dbg !1524

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %11, metadata !1501, metadata !DIExpression()), !dbg !1526
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1527

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #38, !dbg !1528
  br label %15, !dbg !1529

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #38, !dbg !1530
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1504, metadata !DIExpression()), !dbg !1531
  call void @llvm.va_start(ptr nonnull %7), !dbg !1532
  %14 = load ptr, ptr @stdout, align 8, !dbg !1533, !tbaa !825
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #38, !dbg !1534
  call void @exit(i32 noundef 0) #40, !dbg !1535
  unreachable, !dbg !1535

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1536, !tbaa !882
  store i32 0, ptr @optind, align 4, !dbg !1537, !tbaa !882
  ret void, !dbg !1538
}

; Function Attrs: nounwind
declare !dbg !1539 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1545 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1549, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata ptr %1, metadata !1550, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata ptr %3, metadata !1552, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata ptr %4, metadata !1553, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i1 %5, metadata !1554, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1564
  call void @llvm.dbg.value(metadata ptr %6, metadata !1555, metadata !DIExpression()), !dbg !1564
  %9 = load i32, ptr @opterr, align 4, !dbg !1565, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %9, metadata !1556, metadata !DIExpression()), !dbg !1564
  store i32 1, ptr @opterr, align 4, !dbg !1566, !tbaa !882
  %10 = select i1 %5, ptr @.str.1.47, ptr @.str.42, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %10, metadata !1557, metadata !DIExpression()), !dbg !1564
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %11, metadata !1558, metadata !DIExpression()), !dbg !1564
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1569

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #38, !dbg !1570
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1559, metadata !DIExpression()), !dbg !1571
  call void @llvm.va_start(ptr nonnull %8), !dbg !1572
  %13 = load ptr, ptr @stdout, align 8, !dbg !1573, !tbaa !825
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #38, !dbg !1574
  call void @exit(i32 noundef 0) #40, !dbg !1575
  unreachable, !dbg !1575

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1576, !tbaa !882
  br label %16, !dbg !1577

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #38, !dbg !1578
  br label %18, !dbg !1579

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1579, !tbaa !882
  ret void, !dbg !1580
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1581 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1583, metadata !DIExpression()), !dbg !1586
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1587
  call void @llvm.dbg.value(metadata ptr %2, metadata !1584, metadata !DIExpression()), !dbg !1586
  %3 = icmp eq ptr %2, null, !dbg !1588
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1588
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1588
  call void @llvm.dbg.value(metadata ptr %5, metadata !1585, metadata !DIExpression()), !dbg !1586
  %6 = ptrtoint ptr %5 to i64, !dbg !1589
  %7 = ptrtoint ptr %0 to i64, !dbg !1589
  %8 = sub i64 %6, %7, !dbg !1589
  %9 = icmp sgt i64 %8, 6, !dbg !1591
  br i1 %9, label %10, label %19, !dbg !1592

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1593
  call void @llvm.dbg.value(metadata ptr %11, metadata !1594, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1599, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 7, metadata !1600, metadata !DIExpression()), !dbg !1601
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1603
  %13 = icmp eq i32 %12, 0, !dbg !1604
  br i1 %13, label %14, label %19, !dbg !1605

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1583, metadata !DIExpression()), !dbg !1586
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #39, !dbg !1606
  %16 = icmp eq i32 %15, 0, !dbg !1609
  %17 = select i1 %16, i64 3, i64 0, !dbg !1610
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1610
  br label %19, !dbg !1610

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1586
  call void @llvm.dbg.value(metadata ptr %21, metadata !1585, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata ptr %20, metadata !1583, metadata !DIExpression()), !dbg !1586
  store ptr %20, ptr @program_name, align 8, !dbg !1611, !tbaa !825
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1612, !tbaa !825
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1613, !tbaa !825
  ret void, !dbg !1614
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1615 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !427 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata ptr %1, metadata !435, metadata !DIExpression()), !dbg !1616
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1617
  call void @llvm.dbg.value(metadata ptr %5, metadata !436, metadata !DIExpression()), !dbg !1616
  %6 = icmp eq ptr %5, %0, !dbg !1618
  br i1 %6, label %7, label %14, !dbg !1620

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1621
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1622
  call void @llvm.dbg.declare(metadata ptr %4, metadata !442, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata ptr %4, metadata !1624, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata ptr %4, metadata !1633, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 0, metadata !1639, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i64 8, metadata !1640, metadata !DIExpression()), !dbg !1641
  store i64 0, ptr %4, align 8, !dbg !1643
  call void @llvm.dbg.value(metadata ptr %3, metadata !437, metadata !DIExpression(DW_OP_deref)), !dbg !1616
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1644
  %9 = icmp eq i64 %8, 2, !dbg !1646
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !437, metadata !DIExpression()), !dbg !1616
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1647
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1616
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1648
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1648
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1616
  ret ptr %15, !dbg !1648
}

; Function Attrs: nounwind
declare !dbg !1649 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1655 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1660, metadata !DIExpression()), !dbg !1663
  %2 = tail call ptr @__errno_location() #41, !dbg !1664
  %3 = load i32, ptr %2, align 4, !dbg !1664, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %3, metadata !1661, metadata !DIExpression()), !dbg !1663
  %4 = icmp eq ptr %0, null, !dbg !1665
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1665
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %6, metadata !1662, metadata !DIExpression()), !dbg !1663
  store i32 %3, ptr %2, align 4, !dbg !1667, !tbaa !882
  ret ptr %6, !dbg !1668
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !1669 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1675, metadata !DIExpression()), !dbg !1676
  %2 = icmp eq ptr %0, null, !dbg !1677
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1677
  %4 = load i32, ptr %3, align 8, !dbg !1678, !tbaa !1679
  ret i32 %4, !dbg !1681
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1682 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1686, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 %1, metadata !1687, metadata !DIExpression()), !dbg !1688
  %3 = icmp eq ptr %0, null, !dbg !1689
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1689
  store i32 %1, ptr %4, align 8, !dbg !1690, !tbaa !1679
  ret void, !dbg !1691
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1692 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1696, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %1, metadata !1697, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %2, metadata !1698, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %1, metadata !1699, metadata !DIExpression()), !dbg !1704
  %4 = icmp eq ptr %0, null, !dbg !1705
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1705
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1706
  %7 = lshr i8 %1, 5, !dbg !1707
  %8 = zext i8 %7 to i64, !dbg !1707
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1708
  call void @llvm.dbg.value(metadata ptr %9, metadata !1700, metadata !DIExpression()), !dbg !1704
  %10 = and i8 %1, 31, !dbg !1709
  %11 = zext i8 %10 to i32, !dbg !1709
  call void @llvm.dbg.value(metadata i32 %11, metadata !1702, metadata !DIExpression()), !dbg !1704
  %12 = load i32, ptr %9, align 4, !dbg !1710, !tbaa !882
  %13 = lshr i32 %12, %11, !dbg !1711
  %14 = and i32 %13, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %14, metadata !1703, metadata !DIExpression()), !dbg !1704
  %15 = xor i32 %13, %2, !dbg !1713
  %16 = and i32 %15, 1, !dbg !1713
  %17 = shl nuw i32 %16, %11, !dbg !1714
  %18 = xor i32 %17, %12, !dbg !1715
  store i32 %18, ptr %9, align 4, !dbg !1715, !tbaa !882
  ret i32 %14, !dbg !1716
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1717 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1721, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 %1, metadata !1722, metadata !DIExpression()), !dbg !1724
  %3 = icmp eq ptr %0, null, !dbg !1725
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1727
  call void @llvm.dbg.value(metadata ptr %4, metadata !1721, metadata !DIExpression()), !dbg !1724
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1728
  %6 = load i32, ptr %5, align 4, !dbg !1728, !tbaa !1729
  call void @llvm.dbg.value(metadata i32 %6, metadata !1723, metadata !DIExpression()), !dbg !1724
  store i32 %1, ptr %5, align 4, !dbg !1730, !tbaa !1729
  ret i32 %6, !dbg !1731
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1732 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1736, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata ptr %1, metadata !1737, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata ptr %2, metadata !1738, metadata !DIExpression()), !dbg !1739
  %4 = icmp eq ptr %0, null, !dbg !1740
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1742
  call void @llvm.dbg.value(metadata ptr %5, metadata !1736, metadata !DIExpression()), !dbg !1739
  store i32 10, ptr %5, align 8, !dbg !1743, !tbaa !1679
  %6 = icmp ne ptr %1, null, !dbg !1744
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1746
  br i1 %8, label %10, label %9, !dbg !1746

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1747
  unreachable, !dbg !1747

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1748
  store ptr %1, ptr %11, align 8, !dbg !1749, !tbaa !1750
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1751
  store ptr %2, ptr %12, align 8, !dbg !1752, !tbaa !1753
  ret void, !dbg !1754
}

; Function Attrs: noreturn nounwind
declare !dbg !1755 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1756 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1760, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %1, metadata !1761, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %2, metadata !1762, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %3, metadata !1763, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %4, metadata !1764, metadata !DIExpression()), !dbg !1768
  %6 = icmp eq ptr %4, null, !dbg !1769
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %7, metadata !1765, metadata !DIExpression()), !dbg !1768
  %8 = tail call ptr @__errno_location() #41, !dbg !1770
  %9 = load i32, ptr %8, align 4, !dbg !1770, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %9, metadata !1766, metadata !DIExpression()), !dbg !1768
  %10 = load i32, ptr %7, align 8, !dbg !1771, !tbaa !1679
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1772
  %12 = load i32, ptr %11, align 4, !dbg !1772, !tbaa !1729
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1773
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1774
  %15 = load ptr, ptr %14, align 8, !dbg !1774, !tbaa !1750
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1775
  %17 = load ptr, ptr %16, align 8, !dbg !1775, !tbaa !1753
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %18, metadata !1767, metadata !DIExpression()), !dbg !1768
  store i32 %9, ptr %8, align 4, !dbg !1777, !tbaa !882
  ret i64 %18, !dbg !1778
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1779 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %1, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %2, metadata !1787, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %3, metadata !1788, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %4, metadata !1789, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %5, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %6, metadata !1791, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %7, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %8, metadata !1793, metadata !DIExpression()), !dbg !1847
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1848
  %17 = icmp eq i64 %16, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i1 %17, metadata !1794, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr null, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1798, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1847
  %18 = trunc i32 %5 to i8, !dbg !1850
  %19 = lshr i8 %18, 1, !dbg !1850
  %20 = and i8 %19, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i8 %20, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1802, metadata !DIExpression()), !dbg !1847
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1851

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1852
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1853
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1854
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1855
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1847
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1856
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1857
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %39, metadata !1802, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %38, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %37, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %36, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %35, metadata !1798, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %34, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %33, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %32, metadata !1788, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %31, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %30, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %29, metadata !1789, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1840), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1847
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
  ], !dbg !1859

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 5, metadata !1789, metadata !DIExpression()), !dbg !1847
  br label %115, !dbg !1860

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 5, metadata !1789, metadata !DIExpression()), !dbg !1847
  %43 = and i8 %37, 1, !dbg !1861
  %44 = icmp eq i8 %43, 0, !dbg !1861
  br i1 %44, label %45, label %115, !dbg !1860

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1863
  br i1 %46, label %115, label %47, !dbg !1866

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1863, !tbaa !891
  br label %115, !dbg !1863

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.66, metadata !526, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %29, metadata !527, metadata !DIExpression()), !dbg !1867
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.11.66, i32 noundef 5) #38, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %49, metadata !528, metadata !DIExpression()), !dbg !1867
  %50 = icmp eq ptr %49, @.str.11.66, !dbg !1872
  br i1 %50, label %51, label %60, !dbg !1874

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1875
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1876
  call void @llvm.dbg.declare(metadata ptr %13, metadata !530, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata ptr %13, metadata !1878, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata ptr %13, metadata !1886, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 8, metadata !1890, metadata !DIExpression()), !dbg !1891
  store i64 0, ptr %13, align 8, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %12, metadata !529, metadata !DIExpression(DW_OP_deref)), !dbg !1867
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1894
  %53 = icmp eq i64 %52, 3, !dbg !1896
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !529, metadata !DIExpression()), !dbg !1867
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1897
  %57 = icmp eq i32 %29, 9, !dbg !1897
  %58 = select i1 %57, ptr @.str.10.68, ptr @.str.12.69, !dbg !1897
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1897
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1898
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1898
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1867
  call void @llvm.dbg.value(metadata ptr %61, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr @.str.12.69, metadata !526, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %29, metadata !527, metadata !DIExpression()), !dbg !1899
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.12.69, i32 noundef 5) #38, !dbg !1901
  call void @llvm.dbg.value(metadata ptr %62, metadata !528, metadata !DIExpression()), !dbg !1899
  %63 = icmp eq ptr %62, @.str.12.69, !dbg !1902
  br i1 %63, label %64, label %73, !dbg !1903

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1904
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %11, metadata !530, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %11, metadata !1878, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata ptr %11, metadata !1886, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 8, metadata !1890, metadata !DIExpression()), !dbg !1909
  store i64 0, ptr %11, align 8, !dbg !1911
  call void @llvm.dbg.value(metadata ptr %10, metadata !529, metadata !DIExpression(DW_OP_deref)), !dbg !1899
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1912
  %66 = icmp eq i64 %65, 3, !dbg !1913
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !529, metadata !DIExpression()), !dbg !1899
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1914
  %70 = icmp eq i32 %29, 9, !dbg !1914
  %71 = select i1 %70, ptr @.str.10.68, ptr @.str.12.69, !dbg !1914
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1914
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1915
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %74, metadata !1792, metadata !DIExpression()), !dbg !1847
  %76 = and i8 %37, 1, !dbg !1916
  %77 = icmp eq i8 %76, 0, !dbg !1916
  br i1 %77, label %78, label %93, !dbg !1917

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1804, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 0, metadata !1795, metadata !DIExpression()), !dbg !1847
  %79 = load i8, ptr %74, align 1, !dbg !1919, !tbaa !891
  %80 = icmp eq i8 %79, 0, !dbg !1921
  br i1 %80, label %93, label %81, !dbg !1921

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1804, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 %84, metadata !1795, metadata !DIExpression()), !dbg !1847
  %85 = icmp ult i64 %84, %40, !dbg !1922
  br i1 %85, label %86, label %88, !dbg !1925

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1922
  store i8 %82, ptr %87, align 1, !dbg !1922, !tbaa !891
  br label %88, !dbg !1922

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %89, metadata !1795, metadata !DIExpression()), !dbg !1847
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1926
  call void @llvm.dbg.value(metadata ptr %90, metadata !1804, metadata !DIExpression()), !dbg !1918
  %91 = load i8, ptr %90, align 1, !dbg !1919, !tbaa !891
  %92 = icmp eq i8 %91, 0, !dbg !1921
  br i1 %92, label %93, label %81, !dbg !1921, !llvm.loop !1927

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1929
  call void @llvm.dbg.value(metadata i64 %94, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %75, metadata !1797, metadata !DIExpression()), !dbg !1847
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %95, metadata !1798, metadata !DIExpression()), !dbg !1847
  br label %115, !dbg !1931

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1799, metadata !DIExpression()), !dbg !1847
  br label %97, !dbg !1932

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %98, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1800, metadata !DIExpression()), !dbg !1847
  br label %99, !dbg !1933

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1855
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %101, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %100, metadata !1799, metadata !DIExpression()), !dbg !1847
  %102 = and i8 %101, 1, !dbg !1934
  %103 = icmp eq i8 %102, 0, !dbg !1934
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1936
  br label %105, !dbg !1936

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1847
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1850
  call void @llvm.dbg.value(metadata i8 %107, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %106, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1789, metadata !DIExpression()), !dbg !1847
  %108 = and i8 %107, 1, !dbg !1937
  %109 = icmp eq i8 %108, 0, !dbg !1937
  br i1 %109, label %110, label %115, !dbg !1939

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1940
  br i1 %111, label %115, label %112, !dbg !1943

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1940, !tbaa !891
  br label %115, !dbg !1940

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1847
  br label %115, !dbg !1944

114:                                              ; preds = %28
  call void @abort() #40, !dbg !1945
  unreachable, !dbg !1945

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1929
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.68, %45 ], [ @.str.10.68, %47 ], [ @.str.10.68, %42 ], [ %34, %28 ], [ @.str.12.69, %110 ], [ @.str.12.69, %112 ], [ @.str.12.69, %105 ], [ @.str.10.68, %41 ], !dbg !1847
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1847
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1847
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %123, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %122, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %121, metadata !1798, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %120, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %119, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %118, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %117, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %116, metadata !1789, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression()), !dbg !1946
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
  br label %138, !dbg !1947

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1929
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1852
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1856
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1857
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1948
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1949
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %145, metadata !1809, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %144, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %143, metadata !1802, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %142, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %141, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %140, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %139, metadata !1788, metadata !DIExpression()), !dbg !1847
  %147 = icmp eq i64 %139, -1, !dbg !1950
  br i1 %147, label %148, label %152, !dbg !1951

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1952
  %150 = load i8, ptr %149, align 1, !dbg !1952, !tbaa !891
  %151 = icmp eq i8 %150, 0, !dbg !1953
  br i1 %151, label %627, label %154, !dbg !1954

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1955
  br i1 %153, label %627, label %154, !dbg !1954

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1956
  br i1 %129, label %155, label %170, !dbg !1957

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1959
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1960
  br i1 %157, label %158, label %160, !dbg !1960

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %159, metadata !1788, metadata !DIExpression()), !dbg !1847
  br label %160, !dbg !1962

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1962
  call void @llvm.dbg.value(metadata i64 %161, metadata !1788, metadata !DIExpression()), !dbg !1847
  %162 = icmp ugt i64 %156, %161, !dbg !1963
  br i1 %162, label %170, label %163, !dbg !1964

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1965
  call void @llvm.dbg.value(metadata ptr %164, metadata !1966, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %120, metadata !1969, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %121, metadata !1970, metadata !DIExpression()), !dbg !1971
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1973
  %166 = icmp ne i32 %165, 0, !dbg !1974
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1975
  %168 = xor i1 %166, true, !dbg !1975
  %169 = zext i1 %168 to i8, !dbg !1975
  br i1 %167, label %170, label %688, !dbg !1975

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1956
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %173, metadata !1811, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %171, metadata !1788, metadata !DIExpression()), !dbg !1847
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1976
  %175 = load i8, ptr %174, align 1, !dbg !1976, !tbaa !891
  call void @llvm.dbg.value(metadata i8 %175, metadata !1816, metadata !DIExpression()), !dbg !1956
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
  ], !dbg !1977

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1978

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1979

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1814, metadata !DIExpression()), !dbg !1956
  %179 = and i8 %144, 1, !dbg !1983
  %180 = icmp eq i8 %179, 0, !dbg !1983
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1983
  br i1 %181, label %182, label %198, !dbg !1983

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1985
  br i1 %183, label %184, label %186, !dbg !1989

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1985
  store i8 39, ptr %185, align 1, !dbg !1985, !tbaa !891
  br label %186, !dbg !1985

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %187, metadata !1795, metadata !DIExpression()), !dbg !1847
  %188 = icmp ult i64 %187, %146, !dbg !1990
  br i1 %188, label %189, label %191, !dbg !1993

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1990
  store i8 36, ptr %190, align 1, !dbg !1990, !tbaa !891
  br label %191, !dbg !1990

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %192, metadata !1795, metadata !DIExpression()), !dbg !1847
  %193 = icmp ult i64 %192, %146, !dbg !1994
  br i1 %193, label %194, label %196, !dbg !1997

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1994
  store i8 39, ptr %195, align 1, !dbg !1994, !tbaa !891
  br label %196, !dbg !1994

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %197, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1803, metadata !DIExpression()), !dbg !1847
  br label %198, !dbg !1998

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1847
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %200, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %199, metadata !1795, metadata !DIExpression()), !dbg !1847
  %201 = icmp ult i64 %199, %146, !dbg !1999
  br i1 %201, label %202, label %204, !dbg !2002

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1999
  store i8 92, ptr %203, align 1, !dbg !1999, !tbaa !891
  br label %204, !dbg !1999

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %205, metadata !1795, metadata !DIExpression()), !dbg !1847
  br i1 %126, label %206, label %491, !dbg !2003

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2005
  %208 = icmp ult i64 %207, %171, !dbg !2006
  br i1 %208, label %209, label %480, !dbg !2007

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2008
  %211 = load i8, ptr %210, align 1, !dbg !2008, !tbaa !891
  %212 = add i8 %211, -48, !dbg !2009
  %213 = icmp ult i8 %212, 10, !dbg !2009
  br i1 %213, label %214, label %480, !dbg !2009

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2010
  br i1 %215, label %216, label %218, !dbg !2014

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2010
  store i8 48, ptr %217, align 1, !dbg !2010, !tbaa !891
  br label %218, !dbg !2010

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %219, metadata !1795, metadata !DIExpression()), !dbg !1847
  %220 = icmp ult i64 %219, %146, !dbg !2015
  br i1 %220, label %221, label %223, !dbg !2018

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2015
  store i8 48, ptr %222, align 1, !dbg !2015, !tbaa !891
  br label %223, !dbg !2015

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %224, metadata !1795, metadata !DIExpression()), !dbg !1847
  br label %480, !dbg !2019

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2020

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2021

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2022

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2024

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2026
  %231 = icmp ult i64 %230, %171, !dbg !2027
  br i1 %231, label %232, label %480, !dbg !2028

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2029
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2030
  %235 = load i8, ptr %234, align 1, !dbg !2030, !tbaa !891
  %236 = icmp eq i8 %235, 63, !dbg !2031
  br i1 %236, label %237, label %480, !dbg !2032

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2033
  %239 = load i8, ptr %238, align 1, !dbg !2033, !tbaa !891
  %240 = sext i8 %239 to i32, !dbg !2033
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
  ], !dbg !2034

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2035

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %230, metadata !1809, metadata !DIExpression()), !dbg !1946
  %243 = icmp ult i64 %140, %146, !dbg !2037
  br i1 %243, label %244, label %246, !dbg !2040

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2037
  store i8 63, ptr %245, align 1, !dbg !2037, !tbaa !891
  br label %246, !dbg !2037

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %247, metadata !1795, metadata !DIExpression()), !dbg !1847
  %248 = icmp ult i64 %247, %146, !dbg !2041
  br i1 %248, label %249, label %251, !dbg !2044

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2041
  store i8 34, ptr %250, align 1, !dbg !2041, !tbaa !891
  br label %251, !dbg !2041

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %252, metadata !1795, metadata !DIExpression()), !dbg !1847
  %253 = icmp ult i64 %252, %146, !dbg !2045
  br i1 %253, label %254, label %256, !dbg !2048

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2045
  store i8 34, ptr %255, align 1, !dbg !2045, !tbaa !891
  br label %256, !dbg !2045

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %257, metadata !1795, metadata !DIExpression()), !dbg !1847
  %258 = icmp ult i64 %257, %146, !dbg !2049
  br i1 %258, label %259, label %261, !dbg !2052

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2049
  store i8 63, ptr %260, align 1, !dbg !2049, !tbaa !891
  br label %261, !dbg !2049

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %262, metadata !1795, metadata !DIExpression()), !dbg !1847
  br label %480, !dbg !2053

263:                                              ; preds = %170
  br label %274, !dbg !2054

264:                                              ; preds = %170
  br label %274, !dbg !2055

265:                                              ; preds = %170
  br label %272, !dbg !2056

266:                                              ; preds = %170
  br label %272, !dbg !2057

267:                                              ; preds = %170
  br label %274, !dbg !2058

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2059

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2060

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2063

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2065

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2066
  call void @llvm.dbg.label(metadata !1841), !dbg !2067
  br i1 %134, label %274, label %670, !dbg !2068

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2066
  call void @llvm.dbg.label(metadata !1843), !dbg !2070
  br i1 %125, label %535, label %491, !dbg !2071

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2072

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2073, !tbaa !891
  %279 = icmp eq i8 %278, 0, !dbg !2075
  br i1 %279, label %280, label %480, !dbg !2076

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2077
  br i1 %281, label %282, label %480, !dbg !2079

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1956
  br label %283, !dbg !2080

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %284, metadata !1815, metadata !DIExpression()), !dbg !1956
  br i1 %134, label %480, label %670, !dbg !2081

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1956
  br i1 %133, label %286, label %480, !dbg !2083

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2084

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2087
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2089
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2089
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %292, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %291, metadata !1796, metadata !DIExpression()), !dbg !1847
  %293 = icmp ult i64 %140, %292, !dbg !2090
  br i1 %293, label %294, label %296, !dbg !2093

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2090
  store i8 39, ptr %295, align 1, !dbg !2090, !tbaa !891
  br label %296, !dbg !2090

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %297, metadata !1795, metadata !DIExpression()), !dbg !1847
  %298 = icmp ult i64 %297, %292, !dbg !2094
  br i1 %298, label %299, label %301, !dbg !2097

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2094
  store i8 92, ptr %300, align 1, !dbg !2094, !tbaa !891
  br label %301, !dbg !2094

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %302, metadata !1795, metadata !DIExpression()), !dbg !1847
  %303 = icmp ult i64 %302, %292, !dbg !2098
  br i1 %303, label %304, label %306, !dbg !2101

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2098
  store i8 39, ptr %305, align 1, !dbg !2098, !tbaa !891
  br label %306, !dbg !2098

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %307, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1847
  br label %480, !dbg !2102

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2103

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1817, metadata !DIExpression()), !dbg !2104
  %310 = tail call ptr @__ctype_b_loc() #41, !dbg !2105
  %311 = load ptr, ptr %310, align 8, !dbg !2105, !tbaa !825
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2105
  %314 = load i16, ptr %313, align 2, !dbg !2105, !tbaa !923
  %315 = lshr i16 %314, 14, !dbg !2107
  %316 = trunc i16 %315 to i8, !dbg !2107
  %317 = and i8 %316, 1, !dbg !2107
  call void @llvm.dbg.value(metadata i8 %317, metadata !1820, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %171, metadata !1788, metadata !DIExpression()), !dbg !1847
  %318 = icmp eq i8 %317, 0, !dbg !2108
  call void @llvm.dbg.value(metadata i1 %318, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1956
  br label %368, !dbg !2109

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2110
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1821, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %14, metadata !1878, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata ptr %14, metadata !1886, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i64 8, metadata !1890, metadata !DIExpression()), !dbg !2114
  store i64 0, ptr %14, align 8, !dbg !2116
  call void @llvm.dbg.value(metadata i64 0, metadata !1817, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !2104
  %320 = icmp eq i64 %171, -1, !dbg !2117
  br i1 %320, label %321, label %323, !dbg !2119

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %322, metadata !1788, metadata !DIExpression()), !dbg !1847
  br label %323, !dbg !2121

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1956
  call void @llvm.dbg.value(metadata i64 %324, metadata !1788, metadata !DIExpression()), !dbg !1847
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2122
  %325 = sub i64 %324, %145, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %15, metadata !1824, metadata !DIExpression(DW_OP_deref)), !dbg !2124
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #38, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %326, metadata !1828, metadata !DIExpression()), !dbg !2124
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2126

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1817, metadata !DIExpression()), !dbg !2104
  %328 = icmp ugt i64 %324, %145, !dbg !2127
  br i1 %328, label %331, label %329, !dbg !2129

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 0, metadata !1817, metadata !DIExpression()), !dbg !2104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %324, metadata !1788, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i1 true, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1956
  br label %368, !dbg !2109

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !2104
  br label %360, !dbg !2132

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1817, metadata !DIExpression()), !dbg !2104
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2134
  %335 = load i8, ptr %334, align 1, !dbg !2134, !tbaa !891
  %336 = icmp eq i8 %335, 0, !dbg !2129
  br i1 %336, label %363, label %337, !dbg !2135

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %338, metadata !1817, metadata !DIExpression()), !dbg !2104
  %339 = add i64 %338, %145, !dbg !2137
  %340 = icmp eq i64 %338, %325, !dbg !2127
  br i1 %340, label %363, label %331, !dbg !2129, !llvm.loop !2138

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2139
  %344 = and i1 %343, %133, !dbg !2139
  call void @llvm.dbg.value(metadata i64 1, metadata !1829, metadata !DIExpression()), !dbg !2140
  br i1 %344, label %345, label %354, !dbg !2139

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1829, metadata !DIExpression()), !dbg !2140
  %347 = add i64 %346, %145, !dbg !2141
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2143
  %349 = load i8, ptr %348, align 1, !dbg !2143, !tbaa !891
  %350 = sext i8 %349 to i32, !dbg !2143
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2144

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %352, metadata !1829, metadata !DIExpression()), !dbg !2140
  %353 = icmp eq i64 %352, %326, !dbg !2146
  br i1 %353, label %354, label %345, !dbg !2147, !llvm.loop !2148

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2150, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %355, metadata !1824, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %355, metadata !2152, metadata !DIExpression()), !dbg !2160
  %356 = call i32 @iswprint(i32 noundef %355) #38, !dbg !2162
  %357 = icmp ne i32 %356, 0, !dbg !2163
  %358 = zext i1 %357 to i8, !dbg !2164
  call void @llvm.dbg.value(metadata i8 %358, metadata !1820, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %326, metadata !1817, metadata !DIExpression()), !dbg !2104
  br label %363, !dbg !2165

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 0, metadata !1817, metadata !DIExpression()), !dbg !2104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2131
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1820, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 0, metadata !1817, metadata !DIExpression()), !dbg !2104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %324, metadata !1788, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i1 %361, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1956
  br label %368, !dbg !2109

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1820, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %364, metadata !1817, metadata !DIExpression()), !dbg !2104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %324, metadata !1788, metadata !DIExpression()), !dbg !1847
  %366 = icmp eq i8 %365, 0, !dbg !2108
  call void @llvm.dbg.value(metadata i1 %366, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1956
  %367 = icmp ugt i64 %364, 1, !dbg !2166
  br i1 %367, label %374, label %368, !dbg !2109

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2167
  br i1 %373, label %374, label %480, !dbg !2167

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %379, metadata !1837, metadata !DIExpression()), !dbg !2169
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2170

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1847
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1948
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1946
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1956
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2171
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %387, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %386, metadata !1814, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %385, metadata !1811, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %384, metadata !1809, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %383, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %382, metadata !1795, metadata !DIExpression()), !dbg !1847
  br i1 %380, label %388, label %434, !dbg !2172

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2177

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1814, metadata !DIExpression()), !dbg !1956
  %390 = and i8 %383, 1, !dbg !2180
  %391 = icmp eq i8 %390, 0, !dbg !2180
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2180
  br i1 %392, label %393, label %409, !dbg !2180

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2182
  br i1 %394, label %395, label %397, !dbg !2186

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2182
  store i8 39, ptr %396, align 1, !dbg !2182, !tbaa !891
  br label %397, !dbg !2182

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %398, metadata !1795, metadata !DIExpression()), !dbg !1847
  %399 = icmp ult i64 %398, %146, !dbg !2187
  br i1 %399, label %400, label %402, !dbg !2190

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2187
  store i8 36, ptr %401, align 1, !dbg !2187, !tbaa !891
  br label %402, !dbg !2187

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %403, metadata !1795, metadata !DIExpression()), !dbg !1847
  %404 = icmp ult i64 %403, %146, !dbg !2191
  br i1 %404, label %405, label %407, !dbg !2194

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2191
  store i8 39, ptr %406, align 1, !dbg !2191, !tbaa !891
  br label %407, !dbg !2191

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %408, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1803, metadata !DIExpression()), !dbg !1847
  br label %409, !dbg !2195

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1847
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %411, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %410, metadata !1795, metadata !DIExpression()), !dbg !1847
  %412 = icmp ult i64 %410, %146, !dbg !2196
  br i1 %412, label %413, label %415, !dbg !2199

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2196
  store i8 92, ptr %414, align 1, !dbg !2196, !tbaa !891
  br label %415, !dbg !2196

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %416, metadata !1795, metadata !DIExpression()), !dbg !1847
  %417 = icmp ult i64 %416, %146, !dbg !2200
  br i1 %417, label %418, label %422, !dbg !2203

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2200
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2200
  store i8 %420, ptr %421, align 1, !dbg !2200, !tbaa !891
  br label %422, !dbg !2200

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %423, metadata !1795, metadata !DIExpression()), !dbg !1847
  %424 = icmp ult i64 %423, %146, !dbg !2204
  br i1 %424, label %425, label %430, !dbg !2207

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2204
  %428 = or i8 %427, 48, !dbg !2204
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2204
  store i8 %428, ptr %429, align 1, !dbg !2204, !tbaa !891
  br label %430, !dbg !2204

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %431, metadata !1795, metadata !DIExpression()), !dbg !1847
  %432 = and i8 %387, 7, !dbg !2208
  %433 = or i8 %432, 48, !dbg !2209
  call void @llvm.dbg.value(metadata i8 %433, metadata !1816, metadata !DIExpression()), !dbg !1956
  br label %443, !dbg !2210

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2211
  %436 = icmp eq i8 %435, 0, !dbg !2211
  br i1 %436, label %443, label %437, !dbg !2213

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2214
  br i1 %438, label %439, label %441, !dbg !2218

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2214
  store i8 92, ptr %440, align 1, !dbg !2214, !tbaa !891
  br label %441, !dbg !2214

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %442, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1956
  br label %443, !dbg !2219

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1847
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1948
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1956
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1956
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %448, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %447, metadata !1814, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %446, metadata !1811, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %445, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %444, metadata !1795, metadata !DIExpression()), !dbg !1847
  %449 = add i64 %384, 1, !dbg !2220
  %450 = icmp ugt i64 %379, %449, !dbg !2222
  br i1 %450, label %451, label %478, !dbg !2223

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2224
  %453 = icmp ne i8 %452, 0, !dbg !2224
  %454 = and i8 %447, 1, !dbg !2224
  %455 = icmp eq i8 %454, 0, !dbg !2224
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2224
  br i1 %456, label %457, label %468, !dbg !2224

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2227
  br i1 %458, label %459, label %461, !dbg !2231

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2227
  store i8 39, ptr %460, align 1, !dbg !2227, !tbaa !891
  br label %461, !dbg !2227

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %462, metadata !1795, metadata !DIExpression()), !dbg !1847
  %463 = icmp ult i64 %462, %146, !dbg !2232
  br i1 %463, label %464, label %466, !dbg !2235

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2232
  store i8 39, ptr %465, align 1, !dbg !2232, !tbaa !891
  br label %466, !dbg !2232

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %467, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1847
  br label %468, !dbg !2236

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2237
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %470, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %469, metadata !1795, metadata !DIExpression()), !dbg !1847
  %471 = icmp ult i64 %469, %146, !dbg !2238
  br i1 %471, label %472, label %474, !dbg !2241

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2238
  store i8 %448, ptr %473, align 1, !dbg !2238, !tbaa !891
  br label %474, !dbg !2238

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %475, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %449, metadata !1809, metadata !DIExpression()), !dbg !1946
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2242
  %477 = load i8, ptr %476, align 1, !dbg !2242, !tbaa !891
  call void @llvm.dbg.value(metadata i8 %477, metadata !1816, metadata !DIExpression()), !dbg !1956
  br label %381, !dbg !2243, !llvm.loop !2244

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1956
  call void @llvm.dbg.value(metadata i8 %448, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %479, metadata !1815, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %447, metadata !1814, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %446, metadata !1811, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %384, metadata !1809, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %445, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %444, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %378, metadata !1788, metadata !DIExpression()), !dbg !1847
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2247
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1847
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1852
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1847
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1847
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1946
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1956
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1956
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1956
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %489, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %488, metadata !1815, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %487, metadata !1814, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %173, metadata !1811, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %486, metadata !1809, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %485, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %484, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %483, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %482, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %481, metadata !1788, metadata !DIExpression()), !dbg !1847
  br i1 %127, label %502, label %491, !dbg !2248

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
  br i1 %137, label %503, label %524, !dbg !2250

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2251

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
  %514 = lshr i8 %505, 5, !dbg !2252
  %515 = zext i8 %514 to i64, !dbg !2252
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2253
  %517 = load i32, ptr %516, align 4, !dbg !2253, !tbaa !882
  %518 = and i8 %505, 31, !dbg !2254
  %519 = zext i8 %518 to i32, !dbg !2254
  %520 = shl nuw i32 1, %519, !dbg !2255
  %521 = and i32 %517, %520, !dbg !2255
  %522 = icmp eq i32 %521, 0, !dbg !2255
  %523 = and i1 %172, %522, !dbg !2256
  br i1 %523, label %573, label %535, !dbg !2256

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
  br i1 %172, label %573, label %535, !dbg !2257

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2247
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1847
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1852
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1856
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1948
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2258
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1956
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1956
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %543, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %542, metadata !1815, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %541, metadata !1809, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %540, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %539, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %538, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %537, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %536, metadata !1788, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1844), !dbg !2259
  br i1 %132, label %545, label %674, !dbg !2260

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1814, metadata !DIExpression()), !dbg !1956
  %546 = and i8 %540, 1, !dbg !2262
  %547 = icmp eq i8 %546, 0, !dbg !2262
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2262
  br i1 %548, label %549, label %565, !dbg !2262

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2264
  br i1 %550, label %551, label %553, !dbg !2268

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2264
  store i8 39, ptr %552, align 1, !dbg !2264, !tbaa !891
  br label %553, !dbg !2264

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %554, metadata !1795, metadata !DIExpression()), !dbg !1847
  %555 = icmp ult i64 %554, %544, !dbg !2269
  br i1 %555, label %556, label %558, !dbg !2272

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2269
  store i8 36, ptr %557, align 1, !dbg !2269, !tbaa !891
  br label %558, !dbg !2269

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %559, metadata !1795, metadata !DIExpression()), !dbg !1847
  %560 = icmp ult i64 %559, %544, !dbg !2273
  br i1 %560, label %561, label %563, !dbg !2276

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2273
  store i8 39, ptr %562, align 1, !dbg !2273, !tbaa !891
  br label %563, !dbg !2273

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %564, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1803, metadata !DIExpression()), !dbg !1847
  br label %565, !dbg !2277

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1956
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %567, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %566, metadata !1795, metadata !DIExpression()), !dbg !1847
  %568 = icmp ult i64 %566, %544, !dbg !2278
  br i1 %568, label %569, label %571, !dbg !2281

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2278
  store i8 92, ptr %570, align 1, !dbg !2278, !tbaa !891
  br label %571, !dbg !2278

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %544, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %543, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %542, metadata !1815, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1814, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %541, metadata !1809, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %567, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %539, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %538, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %572, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %536, metadata !1788, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1845), !dbg !2282
  br label %600, !dbg !2283

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2247
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1847
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1852
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1856
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1948
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2258
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1956
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1956
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2286
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %582, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %581, metadata !1815, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %580, metadata !1814, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %579, metadata !1809, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %578, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %577, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %576, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %575, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %574, metadata !1788, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1845), !dbg !2282
  %584 = and i8 %578, 1, !dbg !2283
  %585 = icmp ne i8 %584, 0, !dbg !2283
  %586 = and i8 %580, 1, !dbg !2283
  %587 = icmp eq i8 %586, 0, !dbg !2283
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2283
  br i1 %588, label %589, label %600, !dbg !2283

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2287
  br i1 %590, label %591, label %593, !dbg !2291

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2287
  store i8 39, ptr %592, align 1, !dbg !2287, !tbaa !891
  br label %593, !dbg !2287

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %594, metadata !1795, metadata !DIExpression()), !dbg !1847
  %595 = icmp ult i64 %594, %583, !dbg !2292
  br i1 %595, label %596, label %598, !dbg !2295

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2292
  store i8 39, ptr %597, align 1, !dbg !2292, !tbaa !891
  br label %598, !dbg !2292

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %599, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1847
  br label %600, !dbg !2296

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1956
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %609, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %608, metadata !1795, metadata !DIExpression()), !dbg !1847
  %610 = icmp ult i64 %608, %601, !dbg !2297
  br i1 %610, label %611, label %613, !dbg !2300

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2297
  store i8 %602, ptr %612, align 1, !dbg !2297, !tbaa !891
  br label %613, !dbg !2297

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %614, metadata !1795, metadata !DIExpression()), !dbg !1847
  %615 = icmp eq i8 %603, 0, !dbg !2301
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2303
  call void @llvm.dbg.value(metadata i8 %616, metadata !1802, metadata !DIExpression()), !dbg !1847
  br label %617, !dbg !2304

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2247
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1847
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1852
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1856
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1857
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1948
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2258
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %624, metadata !1809, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %623, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %622, metadata !1802, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %621, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %620, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %619, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %618, metadata !1788, metadata !DIExpression()), !dbg !1847
  %626 = add i64 %624, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %626, metadata !1809, metadata !DIExpression()), !dbg !1946
  br label %138, !dbg !2306, !llvm.loop !2307

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1786, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %143, metadata !1802, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %142, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %141, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %140, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %139, metadata !1788, metadata !DIExpression()), !dbg !1847
  %628 = icmp eq i64 %140, 0, !dbg !2309
  %629 = and i1 %133, %628, !dbg !2311
  %630 = xor i1 %629, true, !dbg !2311
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2311
  br i1 %631, label %632, label %670, !dbg !2311

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2312
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2312
  br i1 %636, label %637, label %646, !dbg !2312

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2314
  %639 = icmp eq i8 %638, 0, !dbg !2314
  br i1 %639, label %642, label %640, !dbg !2317

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2318
  br label %694, !dbg !2319

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2320
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2322
  br i1 %645, label %28, label %646, !dbg !2322

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2323
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2325
  br i1 %649, label %650, label %665, !dbg !2325

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %140, metadata !1795, metadata !DIExpression()), !dbg !1847
  %651 = load i8, ptr %120, align 1, !dbg !2326, !tbaa !891
  %652 = icmp eq i8 %651, 0, !dbg !2329
  br i1 %652, label %665, label %653, !dbg !2329

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %656, metadata !1795, metadata !DIExpression()), !dbg !1847
  %657 = icmp ult i64 %656, %146, !dbg !2330
  br i1 %657, label %658, label %660, !dbg !2333

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2330
  store i8 %654, ptr %659, align 1, !dbg !2330, !tbaa !891
  br label %660, !dbg !2330

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %661, metadata !1795, metadata !DIExpression()), !dbg !1847
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2334
  call void @llvm.dbg.value(metadata ptr %662, metadata !1797, metadata !DIExpression()), !dbg !1847
  %663 = load i8, ptr %662, align 1, !dbg !2326, !tbaa !891
  %664 = icmp eq i8 %663, 0, !dbg !2329
  br i1 %664, label %665, label %653, !dbg !2329, !llvm.loop !2335

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1929
  call void @llvm.dbg.value(metadata i64 %666, metadata !1795, metadata !DIExpression()), !dbg !1847
  %667 = icmp ult i64 %666, %146, !dbg !2337
  br i1 %667, label %668, label %694, !dbg !2339

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2340
  store i8 0, ptr %669, align 1, !dbg !2341, !tbaa !891
  br label %694, !dbg !2340

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1846), !dbg !2342
  %672 = icmp eq i8 %124, 0, !dbg !2343
  %673 = select i1 %672, i32 2, i32 4, !dbg !2343
  br label %684, !dbg !2343

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2343
  %678 = select i1 %677, i32 2, i32 4, !dbg !2343
  br label %679, !dbg !2345

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1846), !dbg !2342
  %683 = icmp eq i32 %116, 2, !dbg !2345
  br i1 %683, label %684, label %688, !dbg !2343

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2343

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1789, metadata !DIExpression()), !dbg !1847
  %692 = and i32 %5, -3, !dbg !2346
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2347
  br label %694, !dbg !2348

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2349
}

; Function Attrs: nounwind
declare !dbg !2350 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2353 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2356 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2358 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2362, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %1, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %2, metadata !2364, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %0, metadata !2366, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %1, metadata !2371, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata ptr null, metadata !2372, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata ptr %2, metadata !2373, metadata !DIExpression()), !dbg !2379
  %4 = icmp eq ptr %2, null, !dbg !2381
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2381
  call void @llvm.dbg.value(metadata ptr %5, metadata !2374, metadata !DIExpression()), !dbg !2379
  %6 = tail call ptr @__errno_location() #41, !dbg !2382
  %7 = load i32, ptr %6, align 4, !dbg !2382, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %7, metadata !2375, metadata !DIExpression()), !dbg !2379
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2383
  %9 = load i32, ptr %8, align 4, !dbg !2383, !tbaa !1729
  %10 = or i32 %9, 1, !dbg !2384
  call void @llvm.dbg.value(metadata i32 %10, metadata !2376, metadata !DIExpression()), !dbg !2379
  %11 = load i32, ptr %5, align 8, !dbg !2385, !tbaa !1679
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2386
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2387
  %14 = load ptr, ptr %13, align 8, !dbg !2387, !tbaa !1750
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2388
  %16 = load ptr, ptr %15, align 8, !dbg !2388, !tbaa !1753
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2389
  %18 = add i64 %17, 1, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %18, metadata !2377, metadata !DIExpression()), !dbg !2379
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2391
  call void @llvm.dbg.value(metadata ptr %19, metadata !2378, metadata !DIExpression()), !dbg !2379
  %20 = load i32, ptr %5, align 8, !dbg !2392, !tbaa !1679
  %21 = load ptr, ptr %13, align 8, !dbg !2393, !tbaa !1750
  %22 = load ptr, ptr %15, align 8, !dbg !2394, !tbaa !1753
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2395
  store i32 %7, ptr %6, align 4, !dbg !2396, !tbaa !882
  ret ptr %19, !dbg !2397
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2367 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2366, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i64 %1, metadata !2371, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata ptr %2, metadata !2372, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata ptr %3, metadata !2373, metadata !DIExpression()), !dbg !2398
  %5 = icmp eq ptr %3, null, !dbg !2399
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2399
  call void @llvm.dbg.value(metadata ptr %6, metadata !2374, metadata !DIExpression()), !dbg !2398
  %7 = tail call ptr @__errno_location() #41, !dbg !2400
  %8 = load i32, ptr %7, align 4, !dbg !2400, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %8, metadata !2375, metadata !DIExpression()), !dbg !2398
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2401
  %10 = load i32, ptr %9, align 4, !dbg !2401, !tbaa !1729
  %11 = icmp eq ptr %2, null, !dbg !2402
  %12 = zext i1 %11 to i32, !dbg !2402
  %13 = or i32 %10, %12, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %13, metadata !2376, metadata !DIExpression()), !dbg !2398
  %14 = load i32, ptr %6, align 8, !dbg !2404, !tbaa !1679
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2405
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2406
  %17 = load ptr, ptr %16, align 8, !dbg !2406, !tbaa !1750
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2407
  %19 = load ptr, ptr %18, align 8, !dbg !2407, !tbaa !1753
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2408
  %21 = add i64 %20, 1, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %21, metadata !2377, metadata !DIExpression()), !dbg !2398
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2410
  call void @llvm.dbg.value(metadata ptr %22, metadata !2378, metadata !DIExpression()), !dbg !2398
  %23 = load i32, ptr %6, align 8, !dbg !2411, !tbaa !1679
  %24 = load ptr, ptr %16, align 8, !dbg !2412, !tbaa !1750
  %25 = load ptr, ptr %18, align 8, !dbg !2413, !tbaa !1753
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2414
  store i32 %8, ptr %7, align 4, !dbg !2415, !tbaa !882
  br i1 %11, label %28, label %27, !dbg !2416

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2417, !tbaa !1116
  br label %28, !dbg !2419

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2420
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2421 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2426, !tbaa !825
  call void @llvm.dbg.value(metadata ptr %1, metadata !2423, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 1, metadata !2424, metadata !DIExpression()), !dbg !2428
  %2 = load i32, ptr @nslots, align 4, !tbaa !882
  call void @llvm.dbg.value(metadata i32 1, metadata !2424, metadata !DIExpression()), !dbg !2428
  %3 = icmp sgt i32 %2, 1, !dbg !2429
  br i1 %3, label %4, label %6, !dbg !2431

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2429
  br label %10, !dbg !2431

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2432
  %8 = load ptr, ptr %7, align 8, !dbg !2432, !tbaa !2434
  %9 = icmp eq ptr %8, @slot0, !dbg !2436
  br i1 %9, label %17, label %16, !dbg !2437

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2424, metadata !DIExpression()), !dbg !2428
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2438
  %13 = load ptr, ptr %12, align 8, !dbg !2438, !tbaa !2434
  tail call void @free(ptr noundef %13) #38, !dbg !2439
  %14 = add nuw nsw i64 %11, 1, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %14, metadata !2424, metadata !DIExpression()), !dbg !2428
  %15 = icmp eq i64 %14, %5, !dbg !2429
  br i1 %15, label %6, label %10, !dbg !2431, !llvm.loop !2441

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2443
  store i64 256, ptr @slotvec0, align 8, !dbg !2445, !tbaa !2446
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2447, !tbaa !2434
  br label %17, !dbg !2448

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2449
  br i1 %18, label %20, label %19, !dbg !2451

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2452
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2454, !tbaa !825
  br label %20, !dbg !2455

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2456, !tbaa !882
  ret void, !dbg !2457
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %1, metadata !2461, metadata !DIExpression()), !dbg !2462
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2463
  ret ptr %3, !dbg !2464
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2465 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2469, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata ptr %1, metadata !2470, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %2, metadata !2471, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata ptr %3, metadata !2472, metadata !DIExpression()), !dbg !2485
  %6 = tail call ptr @__errno_location() #41, !dbg !2486
  %7 = load i32, ptr %6, align 4, !dbg !2486, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %7, metadata !2473, metadata !DIExpression()), !dbg !2485
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2487, !tbaa !825
  call void @llvm.dbg.value(metadata ptr %8, metadata !2474, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2475, metadata !DIExpression()), !dbg !2485
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2488
  br i1 %9, label %10, label %11, !dbg !2488

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2490
  unreachable, !dbg !2490

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2491, !tbaa !882
  %13 = icmp sgt i32 %12, %0, !dbg !2492
  br i1 %13, label %32, label %14, !dbg !2493

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2494
  call void @llvm.dbg.value(metadata i1 %15, metadata !2476, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2495
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2496
  %16 = sext i32 %12 to i64, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %16, metadata !2479, metadata !DIExpression()), !dbg !2495
  store i64 %16, ptr %5, align 8, !dbg !2498, !tbaa !1116
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2499
  %18 = add nuw nsw i32 %0, 1, !dbg !2500
  %19 = sub i32 %18, %12, !dbg !2501
  %20 = sext i32 %19 to i64, !dbg !2502
  call void @llvm.dbg.value(metadata ptr %5, metadata !2479, metadata !DIExpression(DW_OP_deref)), !dbg !2495
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2503
  call void @llvm.dbg.value(metadata ptr %21, metadata !2474, metadata !DIExpression()), !dbg !2485
  store ptr %21, ptr @slotvec, align 8, !dbg !2504, !tbaa !825
  br i1 %15, label %22, label %23, !dbg !2505

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2506, !tbaa.struct !2508
  br label %23, !dbg !2509

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2510, !tbaa !882
  %25 = sext i32 %24 to i64, !dbg !2511
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2511
  %27 = load i64, ptr %5, align 8, !dbg !2512, !tbaa !1116
  call void @llvm.dbg.value(metadata i64 %27, metadata !2479, metadata !DIExpression()), !dbg !2495
  %28 = sub nsw i64 %27, %25, !dbg !2513
  %29 = shl i64 %28, 4, !dbg !2514
  call void @llvm.dbg.value(metadata ptr %26, metadata !1886, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %29, metadata !1890, metadata !DIExpression()), !dbg !2515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2517
  %30 = load i64, ptr %5, align 8, !dbg !2518, !tbaa !1116
  call void @llvm.dbg.value(metadata i64 %30, metadata !2479, metadata !DIExpression()), !dbg !2495
  %31 = trunc i64 %30 to i32, !dbg !2518
  store i32 %31, ptr @nslots, align 4, !dbg !2519, !tbaa !882
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2520
  br label %32, !dbg !2521

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2485
  call void @llvm.dbg.value(metadata ptr %33, metadata !2474, metadata !DIExpression()), !dbg !2485
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2522
  %36 = load i64, ptr %35, align 8, !dbg !2523, !tbaa !2446
  call void @llvm.dbg.value(metadata i64 %36, metadata !2480, metadata !DIExpression()), !dbg !2524
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2525
  %38 = load ptr, ptr %37, align 8, !dbg !2525, !tbaa !2434
  call void @llvm.dbg.value(metadata ptr %38, metadata !2482, metadata !DIExpression()), !dbg !2524
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2526
  %40 = load i32, ptr %39, align 4, !dbg !2526, !tbaa !1729
  %41 = or i32 %40, 1, !dbg !2527
  call void @llvm.dbg.value(metadata i32 %41, metadata !2483, metadata !DIExpression()), !dbg !2524
  %42 = load i32, ptr %3, align 8, !dbg !2528, !tbaa !1679
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2529
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2530
  %45 = load ptr, ptr %44, align 8, !dbg !2530, !tbaa !1750
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2531
  %47 = load ptr, ptr %46, align 8, !dbg !2531, !tbaa !1753
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2532
  call void @llvm.dbg.value(metadata i64 %48, metadata !2484, metadata !DIExpression()), !dbg !2524
  %49 = icmp ugt i64 %36, %48, !dbg !2533
  br i1 %49, label %60, label %50, !dbg !2535

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %51, metadata !2480, metadata !DIExpression()), !dbg !2524
  store i64 %51, ptr %35, align 8, !dbg !2538, !tbaa !2446
  %52 = icmp eq ptr %38, @slot0, !dbg !2539
  br i1 %52, label %54, label %53, !dbg !2541

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2542
  br label %54, !dbg !2542

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2543
  call void @llvm.dbg.value(metadata ptr %55, metadata !2482, metadata !DIExpression()), !dbg !2524
  store ptr %55, ptr %37, align 8, !dbg !2544, !tbaa !2434
  %56 = load i32, ptr %3, align 8, !dbg !2545, !tbaa !1679
  %57 = load ptr, ptr %44, align 8, !dbg !2546, !tbaa !1750
  %58 = load ptr, ptr %46, align 8, !dbg !2547, !tbaa !1753
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2548
  br label %60, !dbg !2549

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2524
  call void @llvm.dbg.value(metadata ptr %61, metadata !2482, metadata !DIExpression()), !dbg !2524
  store i32 %7, ptr %6, align 4, !dbg !2550, !tbaa !882
  ret ptr %61, !dbg !2551
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2552 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2556, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata ptr %1, metadata !2557, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i64 %2, metadata !2558, metadata !DIExpression()), !dbg !2559
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2560
  ret ptr %4, !dbg !2561
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2562 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2460, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata ptr %0, metadata !2461, metadata !DIExpression()), !dbg !2566
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2568
  ret ptr %2, !dbg !2569
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2570 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %1, metadata !2575, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 0, metadata !2556, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %0, metadata !2557, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2558, metadata !DIExpression()), !dbg !2577
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2579
  ret ptr %3, !dbg !2580
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2581 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2585, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 %1, metadata !2586, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata ptr %2, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2590
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2588, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2592), !dbg !2595
  call void @llvm.dbg.value(metadata i32 %1, metadata !2596, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2601, metadata !DIExpression()), !dbg !2604
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2604, !alias.scope !2592
  %5 = icmp eq i32 %1, 10, !dbg !2605
  br i1 %5, label %6, label %7, !dbg !2607

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2608, !noalias !2592
  unreachable, !dbg !2608

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2609, !tbaa !1679, !alias.scope !2592
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2610
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2611
  ret ptr %8, !dbg !2612
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2613 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2617, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 %1, metadata !2618, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %2, metadata !2619, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i64 %3, metadata !2620, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2623
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2621, metadata !DIExpression()), !dbg !2624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2625), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %1, metadata !2596, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2601, metadata !DIExpression()), !dbg !2631
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2631, !alias.scope !2625
  %6 = icmp eq i32 %1, 10, !dbg !2632
  br i1 %6, label %7, label %8, !dbg !2633

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2634, !noalias !2625
  unreachable, !dbg !2634

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2635, !tbaa !1679, !alias.scope !2625
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2636
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2637
  ret ptr %9, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2639 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %1, metadata !2644, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 0, metadata !2585, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %1, metadata !2587, metadata !DIExpression()), !dbg !2646
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2648
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2588, metadata !DIExpression()), !dbg !2649
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2601, metadata !DIExpression()), !dbg !2656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2656, !alias.scope !2650
  %4 = icmp eq i32 %0, 10, !dbg !2657
  br i1 %4, label %5, label %6, !dbg !2658

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2659, !noalias !2650
  unreachable, !dbg !2659

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2660, !tbaa !1679, !alias.scope !2650
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2661
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2662
  ret ptr %7, !dbg !2663
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2664 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2668, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %1, metadata !2669, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 %2, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 %0, metadata !2618, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %1, metadata !2619, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i64 %2, metadata !2620, metadata !DIExpression()), !dbg !2672
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2674
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2621, metadata !DIExpression()), !dbg !2675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2676), !dbg !2679
  call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2601, metadata !DIExpression()), !dbg !2682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2682, !alias.scope !2676
  %5 = icmp eq i32 %0, 10, !dbg !2683
  br i1 %5, label %6, label %7, !dbg !2684

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2685, !noalias !2676
  unreachable, !dbg !2685

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2686, !tbaa !1679, !alias.scope !2676
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2687
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2688
  ret ptr %8, !dbg !2689
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2690 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 %1, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8 %2, metadata !2696, metadata !DIExpression()), !dbg !2698
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2699
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2701, !tbaa.struct !2702
  call void @llvm.dbg.value(metadata ptr %4, metadata !1696, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 %2, metadata !1697, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 1, metadata !1698, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 %2, metadata !1699, metadata !DIExpression()), !dbg !2703
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2705
  %6 = lshr i8 %2, 5, !dbg !2706
  %7 = zext i8 %6 to i64, !dbg !2706
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2707
  call void @llvm.dbg.value(metadata ptr %8, metadata !1700, metadata !DIExpression()), !dbg !2703
  %9 = and i8 %2, 31, !dbg !2708
  %10 = zext i8 %9 to i32, !dbg !2708
  call void @llvm.dbg.value(metadata i32 %10, metadata !1702, metadata !DIExpression()), !dbg !2703
  %11 = load i32, ptr %8, align 4, !dbg !2709, !tbaa !882
  %12 = lshr i32 %11, %10, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %12, metadata !1703, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2703
  %13 = and i32 %12, 1, !dbg !2711
  %14 = xor i32 %13, 1, !dbg !2711
  %15 = shl nuw i32 %14, %10, !dbg !2712
  %16 = xor i32 %15, %11, !dbg !2713
  store i32 %16, ptr %8, align 4, !dbg !2713, !tbaa !882
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2714
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2715
  ret ptr %17, !dbg !2716
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2717 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2721, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 %1, metadata !2722, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 -1, metadata !2695, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %1, metadata !2696, metadata !DIExpression()), !dbg !2724
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2726
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2697, metadata !DIExpression()), !dbg !2727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2728, !tbaa.struct !2702
  call void @llvm.dbg.value(metadata ptr %3, metadata !1696, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %1, metadata !1697, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32 1, metadata !1698, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %1, metadata !1699, metadata !DIExpression()), !dbg !2729
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2731
  %5 = lshr i8 %1, 5, !dbg !2732
  %6 = zext i8 %5 to i64, !dbg !2732
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2733
  call void @llvm.dbg.value(metadata ptr %7, metadata !1700, metadata !DIExpression()), !dbg !2729
  %8 = and i8 %1, 31, !dbg !2734
  %9 = zext i8 %8 to i32, !dbg !2734
  call void @llvm.dbg.value(metadata i32 %9, metadata !1702, metadata !DIExpression()), !dbg !2729
  %10 = load i32, ptr %7, align 4, !dbg !2735, !tbaa !882
  %11 = lshr i32 %10, %9, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %11, metadata !1703, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2729
  %12 = and i32 %11, 1, !dbg !2737
  %13 = xor i32 %12, 1, !dbg !2737
  %14 = shl nuw i32 %13, %9, !dbg !2738
  %15 = xor i32 %14, %10, !dbg !2739
  store i32 %15, ptr %7, align 4, !dbg !2739, !tbaa !882
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2740
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2741
  ret ptr %16, !dbg !2742
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2743 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2745, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %0, metadata !2721, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8 58, metadata !2722, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 -1, metadata !2695, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 58, metadata !2696, metadata !DIExpression()), !dbg !2749
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2697, metadata !DIExpression()), !dbg !2752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2753, !tbaa.struct !2702
  call void @llvm.dbg.value(metadata ptr %2, metadata !1696, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 58, metadata !1697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 1, metadata !1698, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 58, metadata !1699, metadata !DIExpression()), !dbg !2754
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2756
  call void @llvm.dbg.value(metadata ptr %3, metadata !1700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 26, metadata !1702, metadata !DIExpression()), !dbg !2754
  %4 = load i32, ptr %3, align 4, !dbg !2757, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %4, metadata !1703, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2754
  %5 = or i32 %4, 67108864, !dbg !2758
  store i32 %5, ptr %3, align 4, !dbg !2758, !tbaa !882
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2759
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2760
  ret ptr %6, !dbg !2761
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2762 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %1, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %1, metadata !2695, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 58, metadata !2696, metadata !DIExpression()), !dbg !2767
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2769
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2697, metadata !DIExpression()), !dbg !2770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2771, !tbaa.struct !2702
  call void @llvm.dbg.value(metadata ptr %3, metadata !1696, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 58, metadata !1697, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 1, metadata !1698, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 58, metadata !1699, metadata !DIExpression()), !dbg !2772
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2774
  call void @llvm.dbg.value(metadata ptr %4, metadata !1700, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 26, metadata !1702, metadata !DIExpression()), !dbg !2772
  %5 = load i32, ptr %4, align 4, !dbg !2775, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %5, metadata !1703, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2772
  %6 = or i32 %5, 67108864, !dbg !2776
  store i32 %6, ptr %4, align 4, !dbg !2776, !tbaa !882
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2777
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2778
  ret ptr %7, !dbg !2779
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2780 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2601, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2786
  call void @llvm.dbg.value(metadata i32 %0, metadata !2782, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %1, metadata !2783, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata ptr %2, metadata !2784, metadata !DIExpression()), !dbg !2788
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2785, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 %1, metadata !2596, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2601, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2791
  %5 = icmp eq i32 %1, 10, !dbg !2792
  br i1 %5, label %6, label %7, !dbg !2793

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2794, !noalias !2795
  unreachable, !dbg !2794

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2601, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2791
  store i32 %1, ptr %4, align 8, !dbg !2798, !tbaa.struct !2702
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2798
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %4, metadata !1696, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 58, metadata !1697, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 1, metadata !1698, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 58, metadata !1699, metadata !DIExpression()), !dbg !2799
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2801
  call void @llvm.dbg.value(metadata ptr %9, metadata !1700, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 26, metadata !1702, metadata !DIExpression()), !dbg !2799
  %10 = load i32, ptr %9, align 4, !dbg !2802, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %10, metadata !1703, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2799
  %11 = or i32 %10, 67108864, !dbg !2803
  store i32 %11, ptr %9, align 4, !dbg !2803, !tbaa !882
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2804
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2805
  ret ptr %12, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2807 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2811, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %1, metadata !2812, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %3, metadata !2814, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %0, metadata !2816, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %1, metadata !2821, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %2, metadata !2822, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %3, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 -1, metadata !2824, metadata !DIExpression()), !dbg !2826
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2828
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2825, metadata !DIExpression()), !dbg !2829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2830, !tbaa.struct !2702
  call void @llvm.dbg.value(metadata ptr %5, metadata !1736, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %1, metadata !1737, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %2, metadata !1738, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %5, metadata !1736, metadata !DIExpression()), !dbg !2831
  store i32 10, ptr %5, align 8, !dbg !2833, !tbaa !1679
  %6 = icmp ne ptr %1, null, !dbg !2834
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2835
  br i1 %8, label %10, label %9, !dbg !2835

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2836
  unreachable, !dbg !2836

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2837
  store ptr %1, ptr %11, align 8, !dbg !2838, !tbaa !1750
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2839
  store ptr %2, ptr %12, align 8, !dbg !2840, !tbaa !1753
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2841
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2842
  ret ptr %13, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2817 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2816, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata ptr %1, metadata !2821, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata ptr %2, metadata !2822, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata ptr %3, metadata !2823, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %4, metadata !2824, metadata !DIExpression()), !dbg !2844
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2845
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2825, metadata !DIExpression()), !dbg !2846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2847, !tbaa.struct !2702
  call void @llvm.dbg.value(metadata ptr %6, metadata !1736, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %1, metadata !1737, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %2, metadata !1738, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %6, metadata !1736, metadata !DIExpression()), !dbg !2848
  store i32 10, ptr %6, align 8, !dbg !2850, !tbaa !1679
  %7 = icmp ne ptr %1, null, !dbg !2851
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2852
  br i1 %9, label %11, label %10, !dbg !2852

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2853
  unreachable, !dbg !2853

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2854
  store ptr %1, ptr %12, align 8, !dbg !2855, !tbaa !1750
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2856
  store ptr %2, ptr %13, align 8, !dbg !2857, !tbaa !1753
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2858
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2859
  ret ptr %14, !dbg !2860
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2861 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %1, metadata !2866, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %2, metadata !2867, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i32 0, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %0, metadata !2812, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %1, metadata !2813, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 0, metadata !2816, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %0, metadata !2821, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %1, metadata !2822, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %2, metadata !2823, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 -1, metadata !2824, metadata !DIExpression()), !dbg !2871
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2873
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2825, metadata !DIExpression()), !dbg !2874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2875, !tbaa.struct !2702
  call void @llvm.dbg.value(metadata ptr %4, metadata !1736, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %0, metadata !1737, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %1, metadata !1738, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %4, metadata !1736, metadata !DIExpression()), !dbg !2876
  store i32 10, ptr %4, align 8, !dbg !2878, !tbaa !1679
  %5 = icmp ne ptr %0, null, !dbg !2879
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2880
  br i1 %7, label %9, label %8, !dbg !2880

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2881
  unreachable, !dbg !2881

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2882
  store ptr %0, ptr %10, align 8, !dbg !2883, !tbaa !1750
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2884
  store ptr %1, ptr %11, align 8, !dbg !2885, !tbaa !1753
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2886
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2887
  ret ptr %12, !dbg !2888
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2889 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata ptr %1, metadata !2894, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata ptr %2, metadata !2895, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %3, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 0, metadata !2816, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %0, metadata !2821, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %1, metadata !2822, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %2, metadata !2823, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %3, metadata !2824, metadata !DIExpression()), !dbg !2898
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2900
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2825, metadata !DIExpression()), !dbg !2901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2902, !tbaa.struct !2702
  call void @llvm.dbg.value(metadata ptr %5, metadata !1736, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %0, metadata !1737, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %1, metadata !1738, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %5, metadata !1736, metadata !DIExpression()), !dbg !2903
  store i32 10, ptr %5, align 8, !dbg !2905, !tbaa !1679
  %6 = icmp ne ptr %0, null, !dbg !2906
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2907
  br i1 %8, label %10, label %9, !dbg !2907

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2908
  unreachable, !dbg !2908

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2909
  store ptr %0, ptr %11, align 8, !dbg !2910, !tbaa !1750
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2911
  store ptr %1, ptr %12, align 8, !dbg !2912, !tbaa !1753
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2913
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2914
  ret ptr %13, !dbg !2915
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2920, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %1, metadata !2921, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i64 %2, metadata !2922, metadata !DIExpression()), !dbg !2923
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2924
  ret ptr %4, !dbg !2925
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2926 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 0, metadata !2920, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %0, metadata !2921, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %1, metadata !2922, metadata !DIExpression()), !dbg !2933
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2935
  ret ptr %3, !dbg !2936
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2941, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr %1, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i32 %0, metadata !2920, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %1, metadata !2921, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 -1, metadata !2922, metadata !DIExpression()), !dbg !2944
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2946
  ret ptr %3, !dbg !2947
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2948 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2952, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 0, metadata !2941, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %0, metadata !2942, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 0, metadata !2920, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %0, metadata !2921, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 -1, metadata !2922, metadata !DIExpression()), !dbg !2956
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2958
  ret ptr %2, !dbg !2959
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @extract_trimmed_name(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !2960 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2986, metadata !DIExpression()), !dbg !2990
  %2 = load ptr, ptr %0, align 8, !dbg !2991, !tbaa !1149
  call void @llvm.dbg.value(metadata ptr %2, metadata !2987, metadata !DIExpression()), !dbg !2990
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %3, metadata !2988, metadata !DIExpression()), !dbg !2990
  %4 = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !2993
  call void @llvm.dbg.value(metadata ptr %4, metadata !2989, metadata !DIExpression()), !dbg !2990
  br label %5, !dbg !2995

5:                                                ; preds = %8, %1
  %6 = phi ptr [ %4, %1 ], [ %9, %8 ], !dbg !2996
  call void @llvm.dbg.value(metadata ptr %6, metadata !2989, metadata !DIExpression()), !dbg !2990
  %7 = icmp ult ptr %2, %6, !dbg !2997
  br i1 %7, label %8, label %12, !dbg !2999

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !3000
  %10 = load i8, ptr %9, align 1, !dbg !3000, !tbaa !891
  %11 = icmp eq i8 %10, 32, !dbg !3001
  br i1 %11, label %5, label %12, !dbg !3002, !llvm.loop !3003

12:                                               ; preds = %5, %8
  %13 = ptrtoint ptr %6 to i64, !dbg !3005
  %14 = ptrtoint ptr %2 to i64, !dbg !3005
  %15 = sub i64 %13, %14, !dbg !3005
  %16 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %2, i64 noundef %15) #38, !dbg !3006
  ret ptr %16, !dbg !3007
}

; Function Attrs: nounwind uwtable
define dso_local i32 @read_utmp(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #10 !dbg !3008 {
  %5 = alloca [33 x i8], align 16
  %6 = alloca %struct.sysinfo, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.utmp_alloc, align 8
  %11 = alloca %struct.timespec, align 8
  %12 = alloca %struct.utmp_alloc, align 8
  %13 = alloca %struct.timespec, align 8
  %14 = alloca %struct.utmp_alloc, align 8
  %15 = alloca %struct.timespec, align 8
  %16 = alloca %struct.utmp_alloc, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3014, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %1, metadata !3015, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %2, metadata !3016, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 %3, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %0, metadata !3019, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %1, metadata !3022, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %2, metadata !3023, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 %3, metadata !3024, metadata !DIExpression()), !dbg !3052
  %17 = and i32 %3, 4, !dbg !3054
  %18 = icmp eq i32 %17, 0, !dbg !3056
  %19 = and i32 %3, 10
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %18, %20, !dbg !3057
  br i1 %21, label %23, label %22, !dbg !3057

22:                                               ; preds = %4
  store i64 0, ptr %1, align 8, !dbg !3058, !tbaa !1116
  store ptr null, ptr %2, align 8, !dbg !3060, !tbaa !825
  br label %363, !dbg !3061

23:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #38, !dbg !3062
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3025, metadata !DIExpression()), !dbg !3063
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false), !dbg !3063
  %24 = tail call i32 @utmpxname(ptr noundef %0) #38, !dbg !3064
  tail call void @setutxent() #38, !dbg !3065
  call void @llvm.dbg.value(metadata ptr %0, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3069, metadata !DIExpression()), !dbg !3070
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.80) #39, !dbg !3072
  %26 = icmp eq i32 %25, 0, !dbg !3073
  call void @llvm.dbg.value(metadata i1 %26, metadata !3033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3052
  call void @llvm.dbg.value(metadata i64 0, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3052
  call void @llvm.dbg.value(metadata i64 0, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3052
  %27 = tail call ptr @getutxent() #38, !dbg !3074
  call void @llvm.dbg.value(metadata ptr %27, metadata !3035, metadata !DIExpression()), !dbg !3052
  %28 = icmp eq ptr %27, null, !dbg !3075
  br i1 %28, label %75, label %29, !dbg !3076

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.timespec, ptr %11, i64 0, i32 1
  br label %31, !dbg !3076

31:                                               ; preds = %70, %29
  %32 = phi ptr [ %27, %29 ], [ %73, %70 ]
  %33 = phi i64 [ 0, %29 ], [ %72, %70 ]
  %34 = phi i64 [ 0, %29 ], [ %71, %70 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %34, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %32, metadata !3036, metadata !DIExpression()), !dbg !3077
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #38, !dbg !3078
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3038, metadata !DIExpression()), !dbg !3079
  %35 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 8, !dbg !3080
  %36 = load i32, ptr %35, align 4, !dbg !3081, !tbaa !3082
  %37 = sext i32 %36 to i64, !dbg !3085
  store i64 %37, ptr %11, align 8, !dbg !3086, !tbaa !3087
  %38 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 8, i32 1, !dbg !3088
  %39 = load i32, ptr %38, align 4, !dbg !3088, !tbaa !3089
  %40 = mul nsw i32 %39, 1000, !dbg !3090
  %41 = sext i32 %40 to i64, !dbg !3091
  store i64 %41, ptr %30, align 8, !dbg !3086, !tbaa !3092
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #38, !dbg !3093
  %42 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 4, !dbg !3094
  %43 = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %42, i64 noundef 32) #39, !dbg !3095
  %44 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 3, !dbg !3096
  %45 = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %44, i64 noundef 4) #39, !dbg !3097
  %46 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 2, !dbg !3098
  %47 = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %46, i64 noundef 32) #39, !dbg !3099
  %48 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 5, !dbg !3100
  %49 = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %48, i64 noundef 256) #39, !dbg !3101
  %50 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 1, !dbg !3102
  %51 = load i32, ptr %50, align 4, !dbg !3102, !tbaa !3103
  %52 = load i16, ptr %32, align 4, !dbg !3104, !tbaa !3105
  %53 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 7, !dbg !3106
  %54 = load i32, ptr %53, align 4, !dbg !3106, !tbaa !3107
  %55 = sext i32 %54 to i64, !dbg !3108
  %56 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 6, !dbg !3109
  %57 = load i16, ptr %56, align 4, !dbg !3109, !tbaa !3110
  %58 = sext i16 %57 to i32, !dbg !3109
  %59 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 6, i32 1, !dbg !3111
  %60 = load i16, ptr %59, align 2, !dbg !3111, !tbaa !3112
  %61 = sext i16 %60 to i32, !dbg !3111
  call fastcc void @add_utmp(ptr nonnull sret(%struct.utmp_alloc) align 8 %12, ptr noundef nonnull byval(%struct.utmp_alloc) align 8 %10, i32 noundef %3, ptr noundef nonnull %42, i64 noundef %43, ptr noundef nonnull %44, i64 noundef %45, ptr noundef nonnull %46, i64 noundef %47, ptr noundef nonnull %48, i64 noundef %49, i32 noundef %51, i16 noundef signext %52, ptr noundef nonnull byval(%struct.timespec) align 8 %11, i64 noundef %55, i32 noundef %58, i32 noundef %61), !dbg !3093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !dbg !3093, !tbaa.struct !3113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #38, !dbg !3093
  br i1 %26, label %62, label %70, !dbg !3114

62:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %42, metadata !3116, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr @.str.1.81, metadata !3119, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 9, metadata !3120, metadata !DIExpression()), !dbg !3121
  %63 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %42, ptr noundef nonnull dereferenceable(9) @.str.1.81, i64 9), !dbg !3123
  %64 = icmp eq i32 %63, 0, !dbg !3124
  br i1 %64, label %65, label %70, !dbg !3125

65:                                               ; preds = %62
  call void @llvm.dbg.value(metadata ptr %46, metadata !3116, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata ptr @.str.2.82, metadata !3119, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 2, metadata !3120, metadata !DIExpression()), !dbg !3126
  %66 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %46, ptr noundef nonnull dereferenceable(2) @.str.2.82, i64 2), !dbg !3128
  %67 = icmp eq i32 %66, 0, !dbg !3129
  %68 = select i1 %67, i64 %41, i64 %34, !dbg !3130
  %69 = select i1 %67, i64 %37, i64 %33, !dbg !3130
  br label %70, !dbg !3130

70:                                               ; preds = %65, %62, %31
  %71 = phi i64 [ %34, %62 ], [ %34, %31 ], [ %68, %65 ], !dbg !3052
  %72 = phi i64 [ %33, %62 ], [ %33, %31 ], [ %69, %65 ], !dbg !3052
  call void @llvm.dbg.value(metadata i64 %72, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %71, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3052
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #38, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %72, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %71, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3052
  %73 = tail call ptr @getutxent() #38, !dbg !3074
  call void @llvm.dbg.value(metadata ptr %73, metadata !3035, metadata !DIExpression()), !dbg !3052
  %74 = icmp eq ptr %73, null, !dbg !3075
  br i1 %74, label %75, label %31, !dbg !3076, !llvm.loop !3132

75:                                               ; preds = %70, %23
  %76 = phi i64 [ 0, %23 ], [ %71, %70 ], !dbg !3052
  %77 = phi i64 [ 0, %23 ], [ %72, %70 ], !dbg !3052
  tail call void @endutxent() #38, !dbg !3133
  %78 = select i1 %20, i1 %26, i1 false, !dbg !3134
  br i1 %78, label %79, label %152, !dbg !3134

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.utmp_alloc, ptr %10, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !3135
  call void @llvm.dbg.value(metadata i64 0, metadata !3039, metadata !DIExpression()), !dbg !3137
  %82 = icmp sgt i64 %81, 0, !dbg !3138
  br i1 %82, label %83, label %120, !dbg !3139

83:                                               ; preds = %79
  %84 = load ptr, ptr %10, align 8, !tbaa !3140
  br label %85, !dbg !3139

85:                                               ; preds = %99, %83
  %86 = phi i64 [ 0, %83 ], [ %100, %99 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !3039, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata !DIArgList(ptr %84, i64 %86), metadata !3043, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3141
  %87 = getelementptr inbounds %struct.gl_utmp, ptr %84, i64 %86, i32 7, !dbg !3142
  %88 = load i16, ptr %87, align 8, !dbg !3142, !tbaa !1153
  %89 = icmp eq i16 %88, 2, !dbg !3142
  br i1 %89, label %90, label %99, !dbg !3144

90:                                               ; preds = %85
  call void @llvm.dbg.value(metadata !DIArgList(ptr %84, i64 %86), metadata !3043, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3141
  %91 = getelementptr inbounds %struct.gl_utmp, ptr %84, i64 %86, i32 4, !dbg !3145
  %92 = load i64, ptr %91, align 8, !dbg !3148, !tbaa !3149
  %93 = icmp slt i64 %92, 61, !dbg !3150
  %94 = icmp ne i64 %77, 0
  %95 = select i1 %93, i1 %94, i1 false, !dbg !3151
  br i1 %95, label %96, label %102, !dbg !3151

96:                                               ; preds = %90
  store i64 %77, ptr %91, align 8, !dbg !3152, !tbaa.struct !3153
  %97 = getelementptr inbounds i8, ptr %91, i64 8, !dbg !3152
  store i64 %76, ptr %97, align 8, !dbg !3152, !tbaa.struct !3154
  %98 = load i64, ptr %80, align 8, !tbaa !3135
  br label %102, !dbg !3155

99:                                               ; preds = %85
  %100 = add nuw nsw i64 %86, 1, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %100, metadata !3039, metadata !DIExpression()), !dbg !3137
  %101 = icmp eq i64 %100, %81, !dbg !3138
  br i1 %101, label %102, label %85, !dbg !3139, !llvm.loop !3157

102:                                              ; preds = %99, %96, %90
  %103 = phi i64 [ %81, %90 ], [ %98, %96 ], [ %81, %99 ]
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3159, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression()), !dbg !3171
  %104 = icmp sgt i64 %103, 0, !dbg !3172
  br i1 %104, label %105, label %120, !dbg !3173

105:                                              ; preds = %102
  %106 = load ptr, ptr %10, align 8, !tbaa !3140
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata !DIArgList(ptr %106, i64 0), metadata !3166, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3174
  %107 = getelementptr inbounds %struct.gl_utmp, ptr %106, i64 0, i32 7, !dbg !3175
  %108 = load i16, ptr %107, align 8, !dbg !3175, !tbaa !1153
  %109 = icmp eq i16 %108, 2, !dbg !3175
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3171
  br i1 %109, label %152, label %110

110:                                              ; preds = %105, %114
  %111 = phi i64 [ %112, %114 ], [ 0, %105 ]
  call void @llvm.dbg.value(metadata i64 %111, metadata !3164, metadata !DIExpression()), !dbg !3171
  %112 = add nuw nsw i64 %111, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %111, metadata !3164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3171
  %113 = icmp eq i64 %112, %103, !dbg !3172
  br i1 %113, label %120, label %114, !dbg !3173, !llvm.loop !3178

114:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i64 %112, metadata !3164, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata !DIArgList(ptr %106, i64 %112), metadata !3166, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3174
  %115 = getelementptr inbounds %struct.gl_utmp, ptr %106, i64 %112, i32 7, !dbg !3175
  %116 = load i16, ptr %115, align 8, !dbg !3175, !tbaa !1153
  %117 = icmp eq i16 %116, 2, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %112, metadata !3164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3171
  br i1 %117, label %118, label %110, !llvm.loop !3180

118:                                              ; preds = %114
  %119 = icmp slt i64 %112, %103, !dbg !3172
  br i1 %119, label %152, label %120, !dbg !3181

120:                                              ; preds = %110, %118, %102, %79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #38, !dbg !3182
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3046, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %13, metadata !3184, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 0, metadata !3192, metadata !DIExpression()), !dbg !3231
  %121 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 12
  call void @llvm.dbg.value(metadata ptr @.str.5.83, metadata !3194, metadata !DIExpression()), !dbg !3232
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #38, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3197, metadata !DIExpression()), !dbg !3234
  %122 = call i32 @stat(ptr noundef nonnull @.str.5.83, ptr noundef nonnull %9) #38, !dbg !3235
  %123 = icmp slt i32 %122, 0, !dbg !3236
  %124 = load i64, ptr %121, align 8
  %125 = icmp slt i64 %124, 1122334455
  %126 = select i1 %123, i1 true, i1 %125, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %9, metadata !3238, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %124, metadata !3225, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3248
  call void @llvm.dbg.value(metadata i64 poison, metadata !3225, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3248
  br i1 %126, label %127, label %146, !dbg !3237

127:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #38, !dbg !3249
  call void @llvm.dbg.value(metadata i64 1, metadata !3192, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr @.str.6.84, metadata !3194, metadata !DIExpression()), !dbg !3232
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #38, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3197, metadata !DIExpression()), !dbg !3234
  %128 = call i32 @stat(ptr noundef nonnull @.str.6.84, ptr noundef nonnull %9) #38, !dbg !3235
  %129 = icmp slt i32 %128, 0, !dbg !3236
  %130 = load i64, ptr %121, align 8
  %131 = icmp slt i64 %130, 1122334455
  %132 = select i1 %129, i1 true, i1 %131, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %9, metadata !3238, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %130, metadata !3225, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3248
  call void @llvm.dbg.value(metadata i64 poison, metadata !3225, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3248
  br i1 %132, label %133, label %146, !dbg !3237

133:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #38, !dbg !3249
  call void @llvm.dbg.value(metadata i64 2, metadata !3192, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr @.str.7.85, metadata !3194, metadata !DIExpression()), !dbg !3232
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #38, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3197, metadata !DIExpression()), !dbg !3234
  %134 = call i32 @stat(ptr noundef nonnull @.str.7.85, ptr noundef nonnull %9) #38, !dbg !3235
  %135 = icmp slt i32 %134, 0, !dbg !3236
  %136 = load i64, ptr %121, align 8
  %137 = icmp slt i64 %136, 1122334455
  %138 = select i1 %135, i1 true, i1 %137, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %9, metadata !3238, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %136, metadata !3225, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3248
  call void @llvm.dbg.value(metadata i64 poison, metadata !3225, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3248
  br i1 %138, label %139, label %146, !dbg !3237

139:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #38, !dbg !3249
  call void @llvm.dbg.value(metadata i64 3, metadata !3192, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3194, metadata !DIExpression()), !dbg !3232
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #38, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3197, metadata !DIExpression()), !dbg !3234
  %140 = call i32 @stat(ptr noundef nonnull @.str.80, ptr noundef nonnull %9) #38, !dbg !3235
  %141 = icmp slt i32 %140, 0, !dbg !3236
  %142 = load i64, ptr %121, align 8
  %143 = icmp slt i64 %142, 1122334455
  %144 = select i1 %141, i1 true, i1 %143, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %9, metadata !3238, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %142, metadata !3225, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3248
  call void @llvm.dbg.value(metadata i64 poison, metadata !3225, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3248
  br i1 %144, label %145, label %146, !dbg !3237

145:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #38, !dbg !3249
  call void @llvm.dbg.value(metadata i64 4, metadata !3192, metadata !DIExpression()), !dbg !3231
  br label %151, !dbg !3250

146:                                              ; preds = %139, %133, %127, %120
  %147 = phi i64 [ %124, %120 ], [ %130, %127 ], [ %136, %133 ], [ %142, %139 ]
  %148 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 12, i32 1, !dbg !3251
  %149 = load i64, ptr %148, align 8, !dbg !3251, !tbaa.struct !3154
  call void @llvm.dbg.value(metadata i64 %149, metadata !3225, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3248
  store i64 %147, ptr %13, align 8, !dbg !3252, !tbaa.struct !3153
  %150 = getelementptr inbounds i8, ptr %13, i64 8, !dbg !3252
  store i64 %149, ptr %150, align 8, !dbg !3252, !tbaa.struct !3154
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #38, !dbg !3249
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #38, !dbg !3255
  call fastcc void @add_utmp(ptr nonnull sret(%struct.utmp_alloc) align 8 %14, ptr noundef nonnull byval(%struct.utmp_alloc) align 8 %10, i32 noundef %3, ptr noundef nonnull @.str.3.86, i64 noundef 6, ptr noundef nonnull @.str.4.87, i64 noundef 0, ptr noundef nonnull @.str.2.82, i64 noundef 1, ptr noundef nonnull @.str.4.87, i64 noundef 0, i32 noundef 0, i16 noundef signext 2, ptr noundef nonnull byval(%struct.timespec) align 8 %13, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !3255, !tbaa.struct !3113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #38, !dbg !3255
  br label %151, !dbg !3256

151:                                              ; preds = %146, %145
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #38, !dbg !3257
  br label %152, !dbg !3258

152:                                              ; preds = %151, %118, %105, %75
  br i1 %20, label %153, label %334, !dbg !3259

153:                                              ; preds = %152
  call void @llvm.dbg.value(metadata ptr %0, metadata !3066, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3069, metadata !DIExpression()), !dbg !3260
  %154 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.80) #39, !dbg !3262
  %155 = icmp eq i32 %154, 0, !dbg !3263
  br i1 %155, label %156, label %334, !dbg !3264

156:                                              ; preds = %153
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3159, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression()), !dbg !3267
  %157 = getelementptr inbounds %struct.utmp_alloc, ptr %10, i64 0, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !3135
  %159 = icmp sgt i64 %158, 0, !dbg !3268
  br i1 %159, label %160, label %175, !dbg !3269

160:                                              ; preds = %156
  %161 = load ptr, ptr %10, align 8, !tbaa !3140
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata !DIArgList(ptr %161, i64 0), metadata !3166, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3270
  %162 = getelementptr inbounds %struct.gl_utmp, ptr %161, i64 0, i32 7, !dbg !3271
  %163 = load i16, ptr %162, align 8, !dbg !3271, !tbaa !1153
  %164 = icmp eq i16 %163, 2, !dbg !3271
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3267
  br i1 %164, label %334, label %165

165:                                              ; preds = %160, %169
  %166 = phi i64 [ %167, %169 ], [ 0, %160 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !3164, metadata !DIExpression()), !dbg !3267
  %167 = add nuw nsw i64 %166, 1, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %166, metadata !3164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3267
  %168 = icmp eq i64 %167, %158, !dbg !3268
  br i1 %168, label %175, label %169, !dbg !3269, !llvm.loop !3273

169:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i64 %167, metadata !3164, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata !DIArgList(ptr %161, i64 %167), metadata !3166, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3270
  %170 = getelementptr inbounds %struct.gl_utmp, ptr %161, i64 %167, i32 7, !dbg !3271
  %171 = load i16, ptr %170, align 8, !dbg !3271, !tbaa !1153
  %172 = icmp eq i16 %171, 2, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %167, metadata !3164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3267
  br i1 %172, label %173, label %165, !llvm.loop !3275

173:                                              ; preds = %169
  %174 = icmp slt i64 %167, %158, !dbg !3268
  br i1 %174, label %334, label %175, !dbg !3276

175:                                              ; preds = %165, %173, %156
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #38, !dbg !3277
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3049, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata ptr %15, metadata !3279, metadata !DIExpression()), !dbg !3286
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #38, !dbg !3289
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3282, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata ptr %7, metadata !3291, metadata !DIExpression()), !dbg !3376
  %176 = call i32 @clock_gettime(i32 noundef 7, ptr noundef nonnull %7) #38, !dbg !3378
  %177 = icmp sgt i32 %176, -1, !dbg !3380
  br i1 %177, label %315, label %178, !dbg !3381

178:                                              ; preds = %175
  %179 = call noalias ptr @rpl_fopen(ptr noundef nonnull @.str.8.88, ptr noundef nonnull @.str.9.89) #38, !dbg !3382
  call void @llvm.dbg.value(metadata ptr %179, metadata !3294, metadata !DIExpression()), !dbg !3376
  %180 = icmp eq ptr %179, null, !dbg !3383
  br i1 %180, label %305, label %181, !dbg !3384

181:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %5) #38, !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3329, metadata !DIExpression()), !dbg !3386
  %182 = call i64 @fread_unlocked(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 32, ptr noundef nonnull %179), !dbg !3387
  call void @llvm.dbg.value(metadata i64 %182, metadata !3335, metadata !DIExpression()), !dbg !3388
  %183 = call i32 @rpl_fclose(ptr noundef nonnull %179) #38, !dbg !3389
  %184 = icmp eq i64 %182, 0, !dbg !3390
  br i1 %184, label %304, label %185, !dbg !3391

185:                                              ; preds = %181
  %186 = getelementptr inbounds [33 x i8], ptr %5, i64 0, i64 %182, !dbg !3392
  store i8 0, ptr %186, align 1, !dbg !3393, !tbaa !891
  call void @llvm.dbg.value(metadata i64 0, metadata !3336, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata ptr %5, metadata !3341, metadata !DIExpression()), !dbg !3394
  %187 = load i8, ptr %5, align 16, !dbg !3395, !tbaa !891
  %188 = add i8 %187, -48, !dbg !3398
  %189 = icmp ult i8 %188, 10, !dbg !3398
  br i1 %189, label %190, label %304, !dbg !3398

190:                                              ; preds = %185, %190
  %191 = phi i8 [ %200, %190 ], [ %187, %185 ]
  %192 = phi ptr [ %199, %190 ], [ %5, %185 ]
  %193 = phi i64 [ %198, %190 ], [ 0, %185 ]
  call void @llvm.dbg.value(metadata ptr %192, metadata !3341, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %193, metadata !3336, metadata !DIExpression()), !dbg !3394
  %194 = zext i8 %191 to i64, !dbg !3395
  %195 = mul nsw i64 %193, 10, !dbg !3399
  %196 = add nuw nsw i64 %194, 4294967248, !dbg !3400
  %197 = and i64 %196, 4294967295
  %198 = add nsw i64 %197, %195, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %198, metadata !3336, metadata !DIExpression()), !dbg !3394
  %199 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !3402
  call void @llvm.dbg.value(metadata ptr %199, metadata !3341, metadata !DIExpression()), !dbg !3394
  %200 = load i8, ptr %199, align 1, !dbg !3395, !tbaa !891
  %201 = add i8 %200, -48, !dbg !3398
  %202 = icmp ult i8 %201, 10, !dbg !3398
  br i1 %202, label %190, label %203, !dbg !3398, !llvm.loop !3403

203:                                              ; preds = %190
  %204 = icmp ult ptr %5, %199, !dbg !3406
  br i1 %204, label %205, label %304, !dbg !3407

205:                                              ; preds = %203
  call void @llvm.dbg.value(metadata i64 0, metadata !3342, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata ptr %199, metadata !3341, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3394
  %206 = icmp eq i8 %200, 46, !dbg !3409
  br i1 %206, label %207, label %311, !dbg !3410

207:                                              ; preds = %205
  %208 = getelementptr inbounds i8, ptr %192, i64 2, !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3345, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 0, metadata !3342, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata ptr %208, metadata !3341, metadata !DIExpression()), !dbg !3394
  %209 = load i8, ptr %208, align 1, !dbg !3413, !tbaa !891
  %210 = zext i8 %209 to i64, !dbg !3413
  %211 = add i8 %209, -48, !dbg !3415
  %212 = icmp ult i8 %211, 10, !dbg !3415
  %213 = add nuw nsw i64 %210, 4294967248, !dbg !3415
  %214 = zext i1 %212 to i64, !dbg !3415
  %215 = getelementptr i8, ptr %208, i64 %214, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %215, metadata !3341, metadata !DIExpression()), !dbg !3394
  %216 = and i64 %213, 4294967295
  call void @llvm.dbg.value(metadata i32 1, metadata !3345, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 poison, metadata !3342, metadata !DIExpression()), !dbg !3408
  %217 = mul nuw nsw i64 %216, 10, !dbg !3416
  %218 = select i1 %212, i64 %217, i64 0, !dbg !3416
  %219 = load i8, ptr %215, align 1, !dbg !3413, !tbaa !891
  %220 = zext i8 %219 to i64, !dbg !3413
  %221 = add i8 %219, -48, !dbg !3415
  %222 = icmp ult i8 %221, 10, !dbg !3415
  %223 = add nuw nsw i64 %220, 4294967248, !dbg !3415
  %224 = zext i1 %222 to i64, !dbg !3415
  %225 = getelementptr i8, ptr %215, i64 %224, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %225, metadata !3341, metadata !DIExpression()), !dbg !3394
  %226 = and i64 %223, 4294967295
  %227 = select i1 %222, i64 %226, i64 0, !dbg !3415
  %228 = add nuw nsw i64 %227, %218, !dbg !3417
  call void @llvm.dbg.value(metadata i32 2, metadata !3345, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %228, metadata !3342, metadata !DIExpression()), !dbg !3408
  %229 = mul nuw nsw i64 %228, 10, !dbg !3416
  %230 = load i8, ptr %225, align 1, !dbg !3413, !tbaa !891
  %231 = zext i8 %230 to i64, !dbg !3413
  %232 = add i8 %230, -48, !dbg !3415
  %233 = icmp ult i8 %232, 10, !dbg !3415
  %234 = add nuw nsw i64 %231, 4294967248, !dbg !3415
  %235 = zext i1 %233 to i64, !dbg !3415
  %236 = getelementptr i8, ptr %225, i64 %235, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %236, metadata !3341, metadata !DIExpression()), !dbg !3394
  %237 = and i64 %234, 4294967295
  %238 = select i1 %233, i64 %237, i64 0, !dbg !3415
  %239 = add nuw nsw i64 %229, %238, !dbg !3417
  call void @llvm.dbg.value(metadata i32 3, metadata !3345, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %239, metadata !3342, metadata !DIExpression()), !dbg !3408
  %240 = mul nuw nsw i64 %239, 10, !dbg !3416
  %241 = load i8, ptr %236, align 1, !dbg !3413, !tbaa !891
  %242 = zext i8 %241 to i64, !dbg !3413
  %243 = add i8 %241, -48, !dbg !3415
  %244 = icmp ult i8 %243, 10, !dbg !3415
  %245 = add nuw nsw i64 %242, 4294967248, !dbg !3415
  %246 = zext i1 %244 to i64, !dbg !3415
  %247 = getelementptr i8, ptr %236, i64 %246, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %247, metadata !3341, metadata !DIExpression()), !dbg !3394
  %248 = and i64 %245, 4294967295
  %249 = select i1 %244, i64 %248, i64 0, !dbg !3415
  %250 = add nuw nsw i64 %240, %249, !dbg !3417
  call void @llvm.dbg.value(metadata i32 4, metadata !3345, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %250, metadata !3342, metadata !DIExpression()), !dbg !3408
  %251 = mul nuw nsw i64 %250, 10, !dbg !3416
  %252 = load i8, ptr %247, align 1, !dbg !3413, !tbaa !891
  %253 = zext i8 %252 to i64, !dbg !3413
  %254 = add i8 %252, -48, !dbg !3415
  %255 = icmp ult i8 %254, 10, !dbg !3415
  %256 = add nuw nsw i64 %253, 4294967248, !dbg !3415
  %257 = zext i1 %255 to i64, !dbg !3415
  %258 = getelementptr i8, ptr %247, i64 %257, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %258, metadata !3341, metadata !DIExpression()), !dbg !3394
  %259 = and i64 %256, 4294967295
  %260 = select i1 %255, i64 %259, i64 0, !dbg !3415
  %261 = add nuw nsw i64 %251, %260, !dbg !3417
  call void @llvm.dbg.value(metadata i32 5, metadata !3345, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %261, metadata !3342, metadata !DIExpression()), !dbg !3408
  %262 = mul nuw nsw i64 %261, 10, !dbg !3416
  %263 = load i8, ptr %258, align 1, !dbg !3413, !tbaa !891
  %264 = zext i8 %263 to i64, !dbg !3413
  %265 = add i8 %263, -48, !dbg !3415
  %266 = icmp ult i8 %265, 10, !dbg !3415
  %267 = add nuw nsw i64 %264, 4294967248, !dbg !3415
  %268 = zext i1 %266 to i64, !dbg !3415
  %269 = getelementptr i8, ptr %258, i64 %268, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %269, metadata !3341, metadata !DIExpression()), !dbg !3394
  %270 = and i64 %267, 4294967295
  %271 = select i1 %266, i64 %270, i64 0, !dbg !3415
  %272 = add nuw nsw i64 %262, %271, !dbg !3417
  call void @llvm.dbg.value(metadata i32 6, metadata !3345, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %272, metadata !3342, metadata !DIExpression()), !dbg !3408
  %273 = mul nuw nsw i64 %272, 10, !dbg !3416
  %274 = load i8, ptr %269, align 1, !dbg !3413, !tbaa !891
  %275 = zext i8 %274 to i64, !dbg !3413
  %276 = add i8 %274, -48, !dbg !3415
  %277 = icmp ult i8 %276, 10, !dbg !3415
  %278 = add nuw nsw i64 %275, 4294967248, !dbg !3415
  %279 = zext i1 %277 to i64, !dbg !3415
  %280 = getelementptr i8, ptr %269, i64 %279, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %280, metadata !3341, metadata !DIExpression()), !dbg !3394
  %281 = and i64 %278, 4294967295
  %282 = select i1 %277, i64 %281, i64 0, !dbg !3415
  %283 = add nuw nsw i64 %273, %282, !dbg !3417
  call void @llvm.dbg.value(metadata i32 7, metadata !3345, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %283, metadata !3342, metadata !DIExpression()), !dbg !3408
  %284 = mul nuw nsw i64 %283, 10, !dbg !3416
  %285 = load i8, ptr %280, align 1, !dbg !3413, !tbaa !891
  %286 = zext i8 %285 to i64, !dbg !3413
  %287 = add i8 %285, -48, !dbg !3415
  %288 = icmp ult i8 %287, 10, !dbg !3415
  %289 = add nuw nsw i64 %286, 4294967248, !dbg !3415
  %290 = zext i1 %288 to i64, !dbg !3415
  %291 = getelementptr i8, ptr %280, i64 %290, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %291, metadata !3341, metadata !DIExpression()), !dbg !3394
  %292 = and i64 %289, 4294967295
  %293 = select i1 %288, i64 %292, i64 0, !dbg !3415
  %294 = add nuw nsw i64 %284, %293, !dbg !3417
  call void @llvm.dbg.value(metadata i32 8, metadata !3345, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %294, metadata !3342, metadata !DIExpression()), !dbg !3408
  %295 = mul nuw nsw i64 %294, 10, !dbg !3416
  %296 = load i8, ptr %291, align 1, !dbg !3413, !tbaa !891
  %297 = zext i8 %296 to i64, !dbg !3413
  %298 = add i8 %296, -48, !dbg !3415
  %299 = icmp ult i8 %298, 10, !dbg !3415
  %300 = add nuw nsw i64 %297, 4294967248, !dbg !3415
  call void @llvm.dbg.value(metadata !DIArgList(ptr %291, i1 %299), metadata !3341, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3394
  %301 = and i64 %300, 4294967295
  %302 = select i1 %299, i64 %301, i64 0, !dbg !3415
  %303 = add nuw nsw i64 %295, %302, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %303, metadata !3342, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 9, metadata !3345, metadata !DIExpression()), !dbg !3412
  br label %311, !dbg !3418

304:                                              ; preds = %203, %185, %181
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %5) #38, !dbg !3419
  br label %305

305:                                              ; preds = %304, %178
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #38, !dbg !3420
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3348, metadata !DIExpression()), !dbg !3421
  %306 = call i32 @sysinfo(ptr noundef nonnull %6) #38, !dbg !3422
  %307 = icmp sgt i32 %306, -1, !dbg !3424
  br i1 %307, label %308, label %314, !dbg !3425

308:                                              ; preds = %305
  %309 = load i64, ptr %6, align 8, !dbg !3426, !tbaa !3428
  store i64 %309, ptr %7, align 8, !dbg !3430, !tbaa !3087
  %310 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3431
  store i64 0, ptr %310, align 8, !dbg !3432, !tbaa !3092
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #38, !dbg !3433
  br label %315, !dbg !3434

311:                                              ; preds = %207, %205
  %312 = phi i64 [ 0, %205 ], [ %303, %207 ], !dbg !3435
  call void @llvm.dbg.value(metadata i64 %312, metadata !3342, metadata !DIExpression()), !dbg !3408
  store i64 %198, ptr %7, align 8, !dbg !3418, !tbaa !3087
  %313 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3436
  store i64 %312, ptr %313, align 8, !dbg !3437, !tbaa !3092
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %5) #38, !dbg !3419
  br label %315

314:                                              ; preds = %305
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #38, !dbg !3433
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #38, !dbg !3438
  br label %333, !dbg !3439

315:                                              ; preds = %311, %308, %175
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #38, !dbg !3440
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3283, metadata !DIExpression()), !dbg !3441
  %316 = call i32 @timespec_get(ptr noundef nonnull %8, i32 noundef 1) #38, !dbg !3442
  %317 = icmp eq i32 %316, 0, !dbg !3442
  br i1 %317, label %318, label %319, !dbg !3444

318:                                              ; preds = %315
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #38, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #38, !dbg !3438
  br label %333, !dbg !3439

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.timespec, ptr %8, i64 0, i32 1, !dbg !3446
  %321 = load i64, ptr %320, align 8, !dbg !3446, !tbaa !3092
  %322 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3448
  %323 = load i64, ptr %322, align 8, !dbg !3448, !tbaa !3092
  %324 = icmp slt i64 %321, %323, !dbg !3449
  %325 = load i64, ptr %8, align 8, !dbg !3450
  %326 = add nsw i64 %321, 1000000000, !dbg !3450
  %327 = select i1 %324, i64 %326, i64 %321, !dbg !3450
  %328 = sext i1 %324 to i64, !dbg !3450
  %329 = add nsw i64 %325, %328, !dbg !3450
  %330 = load i64, ptr %7, align 8, !dbg !3451, !tbaa !3087
  %331 = sub i64 %329, %330, !dbg !3452
  store i64 %331, ptr %8, align 8, !dbg !3452, !tbaa !3087
  %332 = sub nsw i64 %327, %323, !dbg !3453
  store i64 %332, ptr %320, align 8, !dbg !3453, !tbaa !3092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !dbg !3454, !tbaa.struct !3153
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #38, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #38, !dbg !3438
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #38, !dbg !3455
  call fastcc void @add_utmp(ptr nonnull sret(%struct.utmp_alloc) align 8 %16, ptr noundef nonnull byval(%struct.utmp_alloc) align 8 %10, i32 noundef %3, ptr noundef nonnull @.str.3.86, i64 noundef 6, ptr noundef nonnull @.str.4.87, i64 noundef 0, ptr noundef nonnull @.str.2.82, i64 noundef 1, ptr noundef nonnull @.str.4.87, i64 noundef 0, i32 noundef 0, i16 noundef signext 2, ptr noundef nonnull byval(%struct.timespec) align 8 %15, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !dbg !3455, !tbaa.struct !3113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #38, !dbg !3455
  br label %333, !dbg !3456

333:                                              ; preds = %319, %318, %314
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #38, !dbg !3457
  br label %334, !dbg !3458

334:                                              ; preds = %333, %173, %160, %153, %152
  %335 = load ptr, ptr %10, align 8, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %335, metadata !3464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3469
  %336 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !3459
  %337 = load i64, ptr %336, align 8, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %337, metadata !3464, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3469
  call void @llvm.dbg.value(metadata i64 poison, metadata !3464, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3469
  %338 = getelementptr inbounds i8, ptr %10, i64 24, !dbg !3459
  %339 = load i64, ptr %338, align 8, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %339, metadata !3464, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3469
  %340 = getelementptr inbounds i8, ptr %335, i64 %339, !dbg !3470
  call void @llvm.dbg.value(metadata ptr %340, metadata !3465, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i64 0, metadata !3466, metadata !DIExpression()), !dbg !3471
  %341 = icmp sgt i64 %337, 0, !dbg !3472
  br i1 %341, label %342, label %362, !dbg !3474

342:                                              ; preds = %334, %342
  %343 = phi i64 [ %360, %342 ], [ 0, %334 ]
  call void @llvm.dbg.value(metadata i64 %343, metadata !3466, metadata !DIExpression()), !dbg !3471
  %344 = getelementptr inbounds %struct.gl_utmp, ptr %335, i64 %343, !dbg !3475
  %345 = load ptr, ptr %344, align 8, !dbg !3477, !tbaa !1149, !noalias !3478
  %346 = ptrtoint ptr %345 to i64, !dbg !3481
  %347 = getelementptr inbounds i8, ptr %340, i64 %346, !dbg !3482
  store ptr %347, ptr %344, align 8, !dbg !3483, !tbaa !1149, !noalias !3478
  %348 = getelementptr inbounds %struct.gl_utmp, ptr %335, i64 %343, i32 1, !dbg !3484
  %349 = load ptr, ptr %348, align 8, !dbg !3484, !tbaa !3485, !noalias !3478
  %350 = ptrtoint ptr %349 to i64, !dbg !3486
  %351 = getelementptr inbounds i8, ptr %340, i64 %350, !dbg !3487
  store ptr %351, ptr %348, align 8, !dbg !3488, !tbaa !3485, !noalias !3478
  %352 = getelementptr inbounds %struct.gl_utmp, ptr %335, i64 %343, i32 2, !dbg !3489
  %353 = load ptr, ptr %352, align 8, !dbg !3489, !tbaa !3490, !noalias !3478
  %354 = ptrtoint ptr %353 to i64, !dbg !3491
  %355 = getelementptr inbounds i8, ptr %340, i64 %354, !dbg !3492
  store ptr %355, ptr %352, align 8, !dbg !3493, !tbaa !3490, !noalias !3478
  %356 = getelementptr inbounds %struct.gl_utmp, ptr %335, i64 %343, i32 3, !dbg !3494
  %357 = load ptr, ptr %356, align 8, !dbg !3494, !tbaa !3495, !noalias !3478
  %358 = ptrtoint ptr %357 to i64, !dbg !3496
  %359 = getelementptr inbounds i8, ptr %340, i64 %358, !dbg !3497
  store ptr %359, ptr %356, align 8, !dbg !3498, !tbaa !3495, !noalias !3478
  %360 = add nuw nsw i64 %343, 1, !dbg !3499
  call void @llvm.dbg.value(metadata i64 %360, metadata !3466, metadata !DIExpression()), !dbg !3471
  %361 = icmp eq i64 %360, %337, !dbg !3472
  br i1 %361, label %362, label %342, !dbg !3474, !llvm.loop !3500

362:                                              ; preds = %342, %334
  store i64 %337, ptr %1, align 8, !dbg !3502, !tbaa !1116
  store ptr %335, ptr %2, align 8, !dbg !3503, !tbaa !825
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #38, !dbg !3504
  br label %363

363:                                              ; preds = %22, %362
  ret i32 0, !dbg !3505
}

declare !dbg !3506 i32 @utmpxname(ptr noundef) local_unnamed_addr #3

declare !dbg !3510 void @setutxent() local_unnamed_addr #3

declare !dbg !3511 ptr @getutxent() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3515 i64 @strnlen(ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @add_utmp(ptr noalias nocapture writeonly sret(%struct.utmp_alloc) align 8 %0, ptr noundef byval(%struct.utmp_alloc) align 8 %1, i32 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5, i64 noundef %6, ptr nocapture noundef readonly %7, i64 noundef %8, ptr nocapture noundef readonly %9, i64 noundef %10, i32 noundef %11, i16 noundef signext %12, ptr nocapture noundef readonly byval(%struct.timespec) align 8 %13, i64 noundef %14, i32 noundef %15, i32 noundef %16) unnamed_addr #10 !dbg !3518 {
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3522, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i32 %2, metadata !3523, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr %3, metadata !3524, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %4, metadata !3525, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr %5, metadata !3526, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %6, metadata !3527, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr %7, metadata !3528, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %8, metadata !3529, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr %9, metadata !3530, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %10, metadata !3531, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 %11, metadata !3532, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i16 %12, metadata !3533, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3534, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %14, metadata !3535, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 %15, metadata !3536, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 %16, metadata !3537, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 72, metadata !3538, metadata !DIExpression()), !dbg !3552
  %18 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 3, !dbg !3554
  %19 = load i64, ptr %18, align 8, !dbg !3554, !tbaa !3555
  %20 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 1, !dbg !3556
  %21 = load i64, ptr %20, align 8, !dbg !3556, !tbaa !3135
  %22 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 2, !dbg !3557
  %23 = load i64, ptr %22, align 8, !dbg !3557, !tbaa !3558
  %24 = mul i64 %21, -72
  %25 = sub i64 %19, %23, !dbg !3559
  %26 = add i64 %25, %24, !dbg !3560
  call void @llvm.dbg.value(metadata i64 %26, metadata !3539, metadata !DIExpression()), !dbg !3552
  %27 = add i64 %6, %4, !dbg !3561
  %28 = add i64 %27, %8, !dbg !3562
  %29 = add i64 %28, %10, !dbg !3563
  %30 = add i64 %29, 4, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %30, metadata !3540, metadata !DIExpression()), !dbg !3552
  %31 = add i64 %29, 76, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %31, metadata !3541, metadata !DIExpression()), !dbg !3552
  %32 = icmp sgt i64 %31, %26, !dbg !3565
  br i1 %32, label %33, label %45, !dbg !3566

33:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 %25, metadata !3542, metadata !DIExpression()), !dbg !3567
  %34 = load ptr, ptr %1, align 8, !dbg !3568, !tbaa !3140
  %35 = sub nsw i64 %31, %26, !dbg !3569
  %36 = call nonnull ptr @xpalloc(ptr noundef %34, ptr noundef nonnull %18, i64 noundef %35, i64 noundef -1, i64 noundef 1) #38, !dbg !3570
  call void @llvm.dbg.value(metadata ptr %36, metadata !3545, metadata !DIExpression()), !dbg !3567
  %37 = load i64, ptr %18, align 8, !dbg !3571, !tbaa !3555
  %38 = load i64, ptr %22, align 8, !dbg !3572, !tbaa !3558
  %39 = sub nsw i64 %37, %38, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %39, metadata !3546, metadata !DIExpression()), !dbg !3567
  store ptr %36, ptr %1, align 8, !dbg !3574, !tbaa !3140
  call void @llvm.dbg.value(metadata ptr %36, metadata !3547, metadata !DIExpression()), !dbg !3567
  %40 = getelementptr inbounds i8, ptr %36, i64 %39, !dbg !3575
  %41 = getelementptr inbounds i8, ptr %36, i64 %25, !dbg !3576
  call void @llvm.dbg.value(metadata ptr %40, metadata !3577, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata ptr %41, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 %38, metadata !3583, metadata !DIExpression()), !dbg !3584
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %40, ptr noundef nonnull align 1 %41, i64 noundef %38, i1 noundef false) #38, !dbg !3586
  %42 = load i64, ptr %20, align 8, !dbg !3587, !tbaa !3135
  %43 = load i64, ptr %18, align 8, !dbg !3588, !tbaa !3555
  %44 = load i64, ptr %22, align 8, !dbg !3589, !tbaa !3558
  br label %45, !dbg !3590

45:                                               ; preds = %33, %17
  %46 = phi i64 [ %44, %33 ], [ %23, %17 ], !dbg !3589
  %47 = phi i64 [ %43, %33 ], [ %19, %17 ], !dbg !3588
  %48 = phi i64 [ %42, %33 ], [ %21, %17 ], !dbg !3587
  %49 = load ptr, ptr %1, align 8, !dbg !3591, !tbaa !3140
  %50 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, !dbg !3592
  call void @llvm.dbg.value(metadata ptr %50, metadata !3548, metadata !DIExpression()), !dbg !3552
  %51 = getelementptr inbounds i8, ptr %49, i64 %47, !dbg !3593
  call void @llvm.dbg.value(metadata ptr %51, metadata !3549, metadata !DIExpression()), !dbg !3552
  %52 = sub i64 0, %46, !dbg !3594
  %53 = getelementptr inbounds i8, ptr %51, i64 %52, !dbg !3594
  call void @llvm.dbg.value(metadata ptr %53, metadata !3550, metadata !DIExpression()), !dbg !3552
  %54 = getelementptr inbounds i8, ptr %53, i64 -1, !dbg !3595
  call void @llvm.dbg.value(metadata ptr %54, metadata !3550, metadata !DIExpression()), !dbg !3552
  store i8 0, ptr %54, align 1, !dbg !3596, !tbaa !891
  %55 = sub i64 0, %4, !dbg !3597
  %56 = getelementptr inbounds i8, ptr %54, i64 %55, !dbg !3597
  call void @llvm.dbg.value(metadata ptr %56, metadata !3598, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr %3, metadata !3604, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %4, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %56, ptr noundef nonnull align 1 %3, i64 noundef %4, i1 noundef false) #38, !dbg !3608
  call void @llvm.dbg.value(metadata ptr %56, metadata !3550, metadata !DIExpression()), !dbg !3552
  store ptr %56, ptr %50, align 8, !dbg !3609, !tbaa !1149
  %57 = getelementptr inbounds i8, ptr %56, i64 -1, !dbg !3610
  call void @llvm.dbg.value(metadata ptr %57, metadata !3550, metadata !DIExpression()), !dbg !3552
  store i8 0, ptr %57, align 1, !dbg !3611, !tbaa !891
  %58 = sub i64 0, %6, !dbg !3612
  %59 = getelementptr inbounds i8, ptr %57, i64 %58, !dbg !3612
  call void @llvm.dbg.value(metadata ptr %59, metadata !3598, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %5, metadata !3604, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 %6, metadata !3605, metadata !DIExpression()), !dbg !3613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %59, ptr noundef nonnull align 1 %5, i64 noundef %6, i1 noundef false) #38, !dbg !3615
  call void @llvm.dbg.value(metadata ptr %59, metadata !3550, metadata !DIExpression()), !dbg !3552
  %60 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 1, !dbg !3616
  store ptr %59, ptr %60, align 8, !dbg !3617, !tbaa !3485
  %61 = getelementptr inbounds i8, ptr %59, i64 -1, !dbg !3618
  call void @llvm.dbg.value(metadata ptr %61, metadata !3550, metadata !DIExpression()), !dbg !3552
  store i8 0, ptr %61, align 1, !dbg !3619, !tbaa !891
  %62 = sub i64 0, %8, !dbg !3620
  %63 = getelementptr inbounds i8, ptr %61, i64 %62, !dbg !3620
  call void @llvm.dbg.value(metadata ptr %63, metadata !3598, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata ptr %7, metadata !3604, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %8, metadata !3605, metadata !DIExpression()), !dbg !3621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %63, ptr noundef nonnull align 1 %7, i64 noundef %8, i1 noundef false) #38, !dbg !3623
  call void @llvm.dbg.value(metadata ptr %63, metadata !3550, metadata !DIExpression()), !dbg !3552
  %64 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 2, !dbg !3624
  store ptr %63, ptr %64, align 8, !dbg !3625, !tbaa !3490
  %65 = getelementptr inbounds i8, ptr %63, i64 -1, !dbg !3626
  call void @llvm.dbg.value(metadata ptr %65, metadata !3550, metadata !DIExpression()), !dbg !3552
  store i8 0, ptr %65, align 1, !dbg !3627, !tbaa !891
  %66 = sub i64 0, %10, !dbg !3628
  %67 = getelementptr inbounds i8, ptr %65, i64 %66, !dbg !3628
  call void @llvm.dbg.value(metadata ptr %67, metadata !3598, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr %9, metadata !3604, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %10, metadata !3605, metadata !DIExpression()), !dbg !3629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %67, ptr noundef nonnull align 1 %9, i64 noundef %10, i1 noundef false) #38, !dbg !3631
  %68 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 3, !dbg !3632
  store ptr %67, ptr %68, align 8, !dbg !3633, !tbaa !3495
  %69 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 4, !dbg !3634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !dbg !3635, !tbaa.struct !3153
  %70 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 5, !dbg !3636
  store i32 %11, ptr %70, align 8, !dbg !3637, !tbaa !3638
  %71 = trunc i64 %14 to i32, !dbg !3639
  %72 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 6, !dbg !3640
  store i32 %71, ptr %72, align 4, !dbg !3641, !tbaa !3642
  %73 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 7, !dbg !3643
  store i16 %12, ptr %73, align 8, !dbg !3644, !tbaa !1153
  %74 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 8, !dbg !3645
  store i32 %15, ptr %74, align 4, !dbg !3646, !tbaa !3647
  %75 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 8, i32 1, !dbg !3648
  store i32 %16, ptr %75, align 4, !dbg !3649, !tbaa !3650
  call void @llvm.dbg.value(metadata ptr %50, metadata !3651, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 %2, metadata !3656, metadata !DIExpression()), !dbg !3659
  %76 = icmp eq i16 %12, 2, !dbg !3662
  call void @llvm.dbg.value(metadata i1 %76, metadata !3657, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3659
  %77 = and i32 %2, 4, !dbg !3663
  %78 = icmp eq i32 %77, 0, !dbg !3663
  %79 = or i1 %78, %76, !dbg !3665
  br i1 %79, label %80, label %121, !dbg !3665

80:                                               ; preds = %45
  %81 = and i32 %2, 8, !dbg !3666
  %82 = icmp ne i32 %81, 0, !dbg !3666
  %83 = and i1 %82, %76, !dbg !3668
  br i1 %83, label %121, label %84, !dbg !3668

84:                                               ; preds = %80
  %85 = load ptr, ptr %50, align 8, !dbg !3669, !tbaa !1149
  %86 = load i8, ptr %85, align 1, !dbg !3669, !tbaa !891
  %87 = icmp ne i8 %86, 0, !dbg !3669
  %88 = icmp eq i16 %12, 7
  %89 = and i1 %88, %87, !dbg !3669
  call void @llvm.dbg.value(metadata i1 %89, metadata !3658, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3659
  %90 = and i32 %2, 2, !dbg !3670
  %91 = icmp eq i32 %90, 0, !dbg !3670
  %92 = select i1 %91, i1 true, i1 %89, !dbg !3672
  br i1 %92, label %93, label %121, !dbg !3672

93:                                               ; preds = %84
  %94 = and i32 %2, 1, !dbg !3673
  %95 = icmp ne i32 %94, 0, !dbg !3673
  %96 = select i1 %95, i1 %89, i1 false, !dbg !3675
  %97 = icmp sgt i32 %11, 0
  %98 = and i1 %96, %97, !dbg !3675
  br i1 %98, label %99, label %106, !dbg !3675

99:                                               ; preds = %93
  %100 = call i32 @kill(i32 noundef %11, i32 noundef 0) #38, !dbg !3676
  %101 = icmp slt i32 %100, 0, !dbg !3677
  br i1 %101, label %102, label %106, !dbg !3678

102:                                              ; preds = %99
  %103 = tail call ptr @__errno_location() #41, !dbg !3679
  %104 = load i32, ptr %103, align 4, !dbg !3679, !tbaa !882
  %105 = icmp eq i32 %104, 3, !dbg !3680
  br i1 %105, label %121, label %106, !dbg !3681

106:                                              ; preds = %102, %99, %93
  %107 = ptrtoint ptr %51 to i64, !dbg !3682
  %108 = load <2 x ptr>, ptr %50, align 8, !dbg !3684, !tbaa !825
  %109 = ptrtoint <2 x ptr> %108 to <2 x i64>, !dbg !3682
  %110 = insertelement <2 x i64> poison, i64 %107, i64 0, !dbg !3685
  %111 = shufflevector <2 x i64> %110, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !3685
  %112 = sub <2 x i64> %109, %111, !dbg !3682
  %113 = inttoptr <2 x i64> %112 to <2 x ptr>, !dbg !3686
  store <2 x ptr> %113, ptr %50, align 8, !dbg !3687, !tbaa !825
  %114 = load <2 x ptr>, ptr %64, align 8, !dbg !3688, !tbaa !825
  %115 = ptrtoint <2 x ptr> %114 to <2 x i64>, !dbg !3689
  %116 = sub <2 x i64> %115, %111, !dbg !3689
  %117 = inttoptr <2 x i64> %116 to <2 x ptr>, !dbg !3690
  store <2 x ptr> %117, ptr %64, align 8, !dbg !3691, !tbaa !825
  %118 = load <2 x i64>, ptr %20, align 8, !dbg !3692, !tbaa !1116
  %119 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %30, i64 1, !dbg !3693
  %120 = add nsw <2 x i64> %119, %118, !dbg !3692
  store <2 x i64> %120, ptr %20, align 8, !dbg !3692, !tbaa !1116
  br label %121, !dbg !3694

121:                                              ; preds = %102, %84, %80, %45, %106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !3695, !tbaa.struct !3113
  ret void, !dbg !3696
}

declare !dbg !3697 void @endutxent() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3698 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3704 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3711 i32 @sysinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3716 i32 @timespec_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #25

; Function Attrs: nounwind
declare !dbg !3719 i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3723 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3762, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %1, metadata !3763, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %2, metadata !3764, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %3, metadata !3765, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %4, metadata !3766, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %5, metadata !3767, metadata !DIExpression()), !dbg !3768
  %7 = icmp eq ptr %1, null, !dbg !3769
  br i1 %7, label %10, label %8, !dbg !3771

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3772
  br label %12, !dbg !3772

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.91, ptr noundef %2, ptr noundef %3) #38, !dbg !3773
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.3.93, i32 noundef 5) #38, !dbg !3774
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3774
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %0), !dbg !3775
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.5.95, i32 noundef 5) #38, !dbg !3776
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.96) #38, !dbg !3776
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %0), !dbg !3777
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
  ], !dbg !3778

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.7.97, i32 noundef 5) #38, !dbg !3779
  %21 = load ptr, ptr %4, align 8, !dbg !3779, !tbaa !825
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3779
  br label %147, !dbg !3781

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.8.98, i32 noundef 5) #38, !dbg !3782
  %25 = load ptr, ptr %4, align 8, !dbg !3782, !tbaa !825
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3782
  %27 = load ptr, ptr %26, align 8, !dbg !3782, !tbaa !825
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3782
  br label %147, !dbg !3783

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.9.99, i32 noundef 5) #38, !dbg !3784
  %31 = load ptr, ptr %4, align 8, !dbg !3784, !tbaa !825
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3784
  %33 = load ptr, ptr %32, align 8, !dbg !3784, !tbaa !825
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3784
  %35 = load ptr, ptr %34, align 8, !dbg !3784, !tbaa !825
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3784
  br label %147, !dbg !3785

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.10.100, i32 noundef 5) #38, !dbg !3786
  %39 = load ptr, ptr %4, align 8, !dbg !3786, !tbaa !825
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3786
  %41 = load ptr, ptr %40, align 8, !dbg !3786, !tbaa !825
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3786
  %43 = load ptr, ptr %42, align 8, !dbg !3786, !tbaa !825
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3786
  %45 = load ptr, ptr %44, align 8, !dbg !3786, !tbaa !825
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3786
  br label %147, !dbg !3787

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.11.101, i32 noundef 5) #38, !dbg !3788
  %49 = load ptr, ptr %4, align 8, !dbg !3788, !tbaa !825
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3788
  %51 = load ptr, ptr %50, align 8, !dbg !3788, !tbaa !825
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3788
  %53 = load ptr, ptr %52, align 8, !dbg !3788, !tbaa !825
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3788
  %55 = load ptr, ptr %54, align 8, !dbg !3788, !tbaa !825
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3788
  %57 = load ptr, ptr %56, align 8, !dbg !3788, !tbaa !825
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3788
  br label %147, !dbg !3789

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.12.102, i32 noundef 5) #38, !dbg !3790
  %61 = load ptr, ptr %4, align 8, !dbg !3790, !tbaa !825
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3790
  %63 = load ptr, ptr %62, align 8, !dbg !3790, !tbaa !825
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3790
  %65 = load ptr, ptr %64, align 8, !dbg !3790, !tbaa !825
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3790
  %67 = load ptr, ptr %66, align 8, !dbg !3790, !tbaa !825
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3790
  %69 = load ptr, ptr %68, align 8, !dbg !3790, !tbaa !825
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3790
  %71 = load ptr, ptr %70, align 8, !dbg !3790, !tbaa !825
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3790
  br label %147, !dbg !3791

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.13.103, i32 noundef 5) #38, !dbg !3792
  %75 = load ptr, ptr %4, align 8, !dbg !3792, !tbaa !825
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3792
  %77 = load ptr, ptr %76, align 8, !dbg !3792, !tbaa !825
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3792
  %79 = load ptr, ptr %78, align 8, !dbg !3792, !tbaa !825
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3792
  %81 = load ptr, ptr %80, align 8, !dbg !3792, !tbaa !825
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3792
  %83 = load ptr, ptr %82, align 8, !dbg !3792, !tbaa !825
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3792
  %85 = load ptr, ptr %84, align 8, !dbg !3792, !tbaa !825
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3792
  %87 = load ptr, ptr %86, align 8, !dbg !3792, !tbaa !825
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3792
  br label %147, !dbg !3793

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.14.104, i32 noundef 5) #38, !dbg !3794
  %91 = load ptr, ptr %4, align 8, !dbg !3794, !tbaa !825
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3794
  %93 = load ptr, ptr %92, align 8, !dbg !3794, !tbaa !825
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3794
  %95 = load ptr, ptr %94, align 8, !dbg !3794, !tbaa !825
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3794
  %97 = load ptr, ptr %96, align 8, !dbg !3794, !tbaa !825
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3794
  %99 = load ptr, ptr %98, align 8, !dbg !3794, !tbaa !825
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3794
  %101 = load ptr, ptr %100, align 8, !dbg !3794, !tbaa !825
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3794
  %103 = load ptr, ptr %102, align 8, !dbg !3794, !tbaa !825
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3794
  %105 = load ptr, ptr %104, align 8, !dbg !3794, !tbaa !825
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3794
  br label %147, !dbg !3795

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.15.105, i32 noundef 5) #38, !dbg !3796
  %109 = load ptr, ptr %4, align 8, !dbg !3796, !tbaa !825
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3796
  %111 = load ptr, ptr %110, align 8, !dbg !3796, !tbaa !825
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3796
  %113 = load ptr, ptr %112, align 8, !dbg !3796, !tbaa !825
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3796
  %115 = load ptr, ptr %114, align 8, !dbg !3796, !tbaa !825
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3796
  %117 = load ptr, ptr %116, align 8, !dbg !3796, !tbaa !825
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3796
  %119 = load ptr, ptr %118, align 8, !dbg !3796, !tbaa !825
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3796
  %121 = load ptr, ptr %120, align 8, !dbg !3796, !tbaa !825
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3796
  %123 = load ptr, ptr %122, align 8, !dbg !3796, !tbaa !825
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3796
  %125 = load ptr, ptr %124, align 8, !dbg !3796, !tbaa !825
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3796
  br label %147, !dbg !3797

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.16.106, i32 noundef 5) #38, !dbg !3798
  %129 = load ptr, ptr %4, align 8, !dbg !3798, !tbaa !825
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3798
  %131 = load ptr, ptr %130, align 8, !dbg !3798, !tbaa !825
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3798
  %133 = load ptr, ptr %132, align 8, !dbg !3798, !tbaa !825
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3798
  %135 = load ptr, ptr %134, align 8, !dbg !3798, !tbaa !825
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3798
  %137 = load ptr, ptr %136, align 8, !dbg !3798, !tbaa !825
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3798
  %139 = load ptr, ptr %138, align 8, !dbg !3798, !tbaa !825
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3798
  %141 = load ptr, ptr %140, align 8, !dbg !3798, !tbaa !825
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3798
  %143 = load ptr, ptr %142, align 8, !dbg !3798, !tbaa !825
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3798
  %145 = load ptr, ptr %144, align 8, !dbg !3798, !tbaa !825
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3798
  br label %147, !dbg !3799

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3800
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3801 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3805, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %1, metadata !3806, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %2, metadata !3807, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %3, metadata !3808, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %4, metadata !3809, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 0, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %6, !dbg !3812

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3814
  call void @llvm.dbg.value(metadata i64 %7, metadata !3810, metadata !DIExpression()), !dbg !3811
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3815
  %9 = load ptr, ptr %8, align 8, !dbg !3815, !tbaa !825
  %10 = icmp eq ptr %9, null, !dbg !3817
  %11 = add i64 %7, 1, !dbg !3818
  call void @llvm.dbg.value(metadata i64 %11, metadata !3810, metadata !DIExpression()), !dbg !3811
  br i1 %10, label %12, label %6, !dbg !3817, !llvm.loop !3819

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3821
  ret void, !dbg !3822
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3823 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3835, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata ptr %1, metadata !3836, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata ptr %2, metadata !3837, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata ptr %3, metadata !3838, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata ptr %4, metadata !3839, metadata !DIExpression()), !dbg !3843
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3844
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3841, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 0, metadata !3840, metadata !DIExpression()), !dbg !3843
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3840, metadata !DIExpression()), !dbg !3843
  %10 = icmp ult i32 %9, 41, !dbg !3846
  br i1 %10, label %11, label %16, !dbg !3846

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3846
  %13 = zext i32 %9 to i64, !dbg !3846
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3846
  %15 = add nuw nsw i32 %9, 8, !dbg !3846
  store i32 %15, ptr %4, align 8, !dbg !3846
  br label %19, !dbg !3846

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3846
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3846
  store ptr %18, ptr %7, align 8, !dbg !3846
  br label %19, !dbg !3846

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3846
  %22 = load ptr, ptr %21, align 8, !dbg !3846
  store ptr %22, ptr %6, align 16, !dbg !3849, !tbaa !825
  %23 = icmp eq ptr %22, null, !dbg !3850
  br i1 %23, label %128, label %24, !dbg !3851

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3840, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 1, metadata !3840, metadata !DIExpression()), !dbg !3843
  %25 = icmp ult i32 %20, 41, !dbg !3846
  br i1 %25, label %29, label %26, !dbg !3846

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3846
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3846
  store ptr %28, ptr %7, align 8, !dbg !3846
  br label %34, !dbg !3846

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3846
  %31 = zext i32 %20 to i64, !dbg !3846
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3846
  %33 = add nuw nsw i32 %20, 8, !dbg !3846
  store i32 %33, ptr %4, align 8, !dbg !3846
  br label %34, !dbg !3846

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3846
  %37 = load ptr, ptr %36, align 8, !dbg !3846
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3852
  store ptr %37, ptr %38, align 8, !dbg !3849, !tbaa !825
  %39 = icmp eq ptr %37, null, !dbg !3850
  br i1 %39, label %128, label %40, !dbg !3851

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3840, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 2, metadata !3840, metadata !DIExpression()), !dbg !3843
  %41 = icmp ult i32 %35, 41, !dbg !3846
  br i1 %41, label %45, label %42, !dbg !3846

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3846
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3846
  store ptr %44, ptr %7, align 8, !dbg !3846
  br label %50, !dbg !3846

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3846
  %47 = zext i32 %35 to i64, !dbg !3846
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3846
  %49 = add nuw nsw i32 %35, 8, !dbg !3846
  store i32 %49, ptr %4, align 8, !dbg !3846
  br label %50, !dbg !3846

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3846
  %53 = load ptr, ptr %52, align 8, !dbg !3846
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3852
  store ptr %53, ptr %54, align 16, !dbg !3849, !tbaa !825
  %55 = icmp eq ptr %53, null, !dbg !3850
  br i1 %55, label %128, label %56, !dbg !3851

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3840, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 3, metadata !3840, metadata !DIExpression()), !dbg !3843
  %57 = icmp ult i32 %51, 41, !dbg !3846
  br i1 %57, label %61, label %58, !dbg !3846

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3846
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3846
  store ptr %60, ptr %7, align 8, !dbg !3846
  br label %66, !dbg !3846

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3846
  %63 = zext i32 %51 to i64, !dbg !3846
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3846
  %65 = add nuw nsw i32 %51, 8, !dbg !3846
  store i32 %65, ptr %4, align 8, !dbg !3846
  br label %66, !dbg !3846

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3846
  %69 = load ptr, ptr %68, align 8, !dbg !3846
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3852
  store ptr %69, ptr %70, align 8, !dbg !3849, !tbaa !825
  %71 = icmp eq ptr %69, null, !dbg !3850
  br i1 %71, label %128, label %72, !dbg !3851

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3840, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 4, metadata !3840, metadata !DIExpression()), !dbg !3843
  %73 = icmp ult i32 %67, 41, !dbg !3846
  br i1 %73, label %77, label %74, !dbg !3846

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3846
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3846
  store ptr %76, ptr %7, align 8, !dbg !3846
  br label %82, !dbg !3846

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3846
  %79 = zext i32 %67 to i64, !dbg !3846
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3846
  %81 = add nuw nsw i32 %67, 8, !dbg !3846
  store i32 %81, ptr %4, align 8, !dbg !3846
  br label %82, !dbg !3846

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3846
  %85 = load ptr, ptr %84, align 8, !dbg !3846
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3852
  store ptr %85, ptr %86, align 16, !dbg !3849, !tbaa !825
  %87 = icmp eq ptr %85, null, !dbg !3850
  br i1 %87, label %128, label %88, !dbg !3851

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3840, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 5, metadata !3840, metadata !DIExpression()), !dbg !3843
  %89 = icmp ult i32 %83, 41, !dbg !3846
  br i1 %89, label %93, label %90, !dbg !3846

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3846
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3846
  store ptr %92, ptr %7, align 8, !dbg !3846
  br label %98, !dbg !3846

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3846
  %95 = zext i32 %83 to i64, !dbg !3846
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3846
  %97 = add nuw nsw i32 %83, 8, !dbg !3846
  store i32 %97, ptr %4, align 8, !dbg !3846
  br label %98, !dbg !3846

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3846
  %100 = load ptr, ptr %99, align 8, !dbg !3846
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3852
  store ptr %100, ptr %101, align 8, !dbg !3849, !tbaa !825
  %102 = icmp eq ptr %100, null, !dbg !3850
  br i1 %102, label %128, label %103, !dbg !3851

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3840, metadata !DIExpression()), !dbg !3843
  %104 = load ptr, ptr %7, align 8, !dbg !3846
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3846
  store ptr %105, ptr %7, align 8, !dbg !3846
  %106 = load ptr, ptr %104, align 8, !dbg !3846
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3852
  store ptr %106, ptr %107, align 16, !dbg !3849, !tbaa !825
  %108 = icmp eq ptr %106, null, !dbg !3850
  br i1 %108, label %128, label %109, !dbg !3851

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3840, metadata !DIExpression()), !dbg !3843
  %110 = load ptr, ptr %7, align 8, !dbg !3846
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3846
  store ptr %111, ptr %7, align 8, !dbg !3846
  %112 = load ptr, ptr %110, align 8, !dbg !3846
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3852
  store ptr %112, ptr %113, align 8, !dbg !3849, !tbaa !825
  %114 = icmp eq ptr %112, null, !dbg !3850
  br i1 %114, label %128, label %115, !dbg !3851

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3840, metadata !DIExpression()), !dbg !3843
  %116 = load ptr, ptr %7, align 8, !dbg !3846
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3846
  store ptr %117, ptr %7, align 8, !dbg !3846
  %118 = load ptr, ptr %116, align 8, !dbg !3846
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3852
  store ptr %118, ptr %119, align 16, !dbg !3849, !tbaa !825
  %120 = icmp eq ptr %118, null, !dbg !3850
  br i1 %120, label %128, label %121, !dbg !3851

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3840, metadata !DIExpression()), !dbg !3843
  %122 = load ptr, ptr %7, align 8, !dbg !3846
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3846
  store ptr %123, ptr %7, align 8, !dbg !3846
  %124 = load ptr, ptr %122, align 8, !dbg !3846
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3852
  store ptr %124, ptr %125, align 8, !dbg !3849, !tbaa !825
  %126 = icmp eq ptr %124, null, !dbg !3850
  %127 = select i1 %126, i64 9, i64 10, !dbg !3851
  br label %128, !dbg !3851

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3853
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3854
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3855
  ret void, !dbg !3855
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3856 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3860, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %1, metadata !3861, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %2, metadata !3862, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %3, metadata !3863, metadata !DIExpression()), !dbg !3869
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3870
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3864, metadata !DIExpression()), !dbg !3871
  call void @llvm.va_start(ptr nonnull %5), !dbg !3872
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3873
  call void @llvm.va_end(ptr nonnull %5), !dbg !3874
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3875
  ret void, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3876 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3877, !tbaa !825
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %1), !dbg !3877
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.17.111, i32 noundef 5) #38, !dbg !3878
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.112) #38, !dbg !3878
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.19.113, i32 noundef 5) #38, !dbg !3879
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #38, !dbg !3879
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.22.114, i32 noundef 5) #38, !dbg !3880
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #38, !dbg !3880
  ret void, !dbg !3881
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3882 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3887, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %2, metadata !3889, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata ptr %0, metadata !3891, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 %1, metadata !3894, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 %2, metadata !3895, metadata !DIExpression()), !dbg !3896
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3898
  call void @llvm.dbg.value(metadata ptr %4, metadata !3899, metadata !DIExpression()), !dbg !3904
  %5 = icmp eq ptr %4, null, !dbg !3906
  br i1 %5, label %6, label %7, !dbg !3908

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3909
  unreachable, !dbg !3909

7:                                                ; preds = %3
  ret ptr %4, !dbg !3910
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3892 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3891, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %1, metadata !3894, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %2, metadata !3895, metadata !DIExpression()), !dbg !3911
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3912
  call void @llvm.dbg.value(metadata ptr %4, metadata !3899, metadata !DIExpression()), !dbg !3913
  %5 = icmp eq ptr %4, null, !dbg !3915
  br i1 %5, label %6, label %7, !dbg !3916

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3917
  unreachable, !dbg !3917

7:                                                ; preds = %3
  ret ptr %4, !dbg !3918
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3919 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3923, metadata !DIExpression()), !dbg !3924
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3925
  call void @llvm.dbg.value(metadata ptr %2, metadata !3899, metadata !DIExpression()), !dbg !3926
  %3 = icmp eq ptr %2, null, !dbg !3928
  br i1 %3, label %4, label %5, !dbg !3929

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3930
  unreachable, !dbg !3930

5:                                                ; preds = %1
  ret ptr %2, !dbg !3931
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3932 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3933 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3937, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %0, metadata !3939, metadata !DIExpression()), !dbg !3943
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3945
  call void @llvm.dbg.value(metadata ptr %2, metadata !3899, metadata !DIExpression()), !dbg !3946
  %3 = icmp eq ptr %2, null, !dbg !3948
  br i1 %3, label %4, label %5, !dbg !3949

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3950
  unreachable, !dbg !3950

5:                                                ; preds = %1
  ret ptr %2, !dbg !3951
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3952 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3956, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %0, metadata !3923, metadata !DIExpression()), !dbg !3958
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3960
  call void @llvm.dbg.value(metadata ptr %2, metadata !3899, metadata !DIExpression()), !dbg !3961
  %3 = icmp eq ptr %2, null, !dbg !3963
  br i1 %3, label %4, label %5, !dbg !3964

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3965
  unreachable, !dbg !3965

5:                                                ; preds = %1
  ret ptr %2, !dbg !3966
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3967 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3971, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i64 %1, metadata !3972, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata ptr %0, metadata !3974, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %1, metadata !3978, metadata !DIExpression()), !dbg !3979
  %3 = icmp eq i64 %1, 0, !dbg !3981
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3981
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3982
  call void @llvm.dbg.value(metadata ptr %5, metadata !3899, metadata !DIExpression()), !dbg !3983
  %6 = icmp eq ptr %5, null, !dbg !3985
  br i1 %6, label %7, label %8, !dbg !3986

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3987
  unreachable, !dbg !3987

8:                                                ; preds = %2
  ret ptr %5, !dbg !3988
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3989 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3990 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %1, metadata !3995, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %0, metadata !3997, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %1, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %0, metadata !3974, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i64 %1, metadata !3978, metadata !DIExpression()), !dbg !4003
  %3 = icmp eq i64 %1, 0, !dbg !4005
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4005
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4006
  call void @llvm.dbg.value(metadata ptr %5, metadata !3899, metadata !DIExpression()), !dbg !4007
  %6 = icmp eq ptr %5, null, !dbg !4009
  br i1 %6, label %7, label %8, !dbg !4010

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4011
  unreachable, !dbg !4011

8:                                                ; preds = %2
  ret ptr %5, !dbg !4012
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4013 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4017, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %1, metadata !4018, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %2, metadata !4019, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata ptr %0, metadata !4021, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %1, metadata !4024, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %2, metadata !4025, metadata !DIExpression()), !dbg !4026
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4028
  call void @llvm.dbg.value(metadata ptr %4, metadata !3899, metadata !DIExpression()), !dbg !4029
  %5 = icmp eq ptr %4, null, !dbg !4031
  br i1 %5, label %6, label %7, !dbg !4032

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4033
  unreachable, !dbg !4033

7:                                                ; preds = %3
  ret ptr %4, !dbg !4034
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4035 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4039, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr null, metadata !3891, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i64 %0, metadata !3894, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i64 %1, metadata !3895, metadata !DIExpression()), !dbg !4042
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4044
  call void @llvm.dbg.value(metadata ptr %3, metadata !3899, metadata !DIExpression()), !dbg !4045
  %4 = icmp eq ptr %3, null, !dbg !4047
  br i1 %4, label %5, label %6, !dbg !4048

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4049
  unreachable, !dbg !4049

6:                                                ; preds = %2
  ret ptr %3, !dbg !4050
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4051 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4055, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i64 %1, metadata !4056, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr null, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i64 %0, metadata !4018, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i64 %1, metadata !4019, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr null, metadata !4021, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %0, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression()), !dbg !4060
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4062
  call void @llvm.dbg.value(metadata ptr %3, metadata !3899, metadata !DIExpression()), !dbg !4063
  %4 = icmp eq ptr %3, null, !dbg !4065
  br i1 %4, label %5, label %6, !dbg !4066

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4067
  unreachable, !dbg !4067

6:                                                ; preds = %2
  ret ptr %3, !dbg !4068
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4069 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4073, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata ptr %1, metadata !4074, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata ptr %0, metadata !759, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %1, metadata !760, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i64 1, metadata !761, metadata !DIExpression()), !dbg !4076
  %3 = load i64, ptr %1, align 8, !dbg !4078, !tbaa !1116
  call void @llvm.dbg.value(metadata i64 %3, metadata !762, metadata !DIExpression()), !dbg !4076
  %4 = icmp eq ptr %0, null, !dbg !4079
  br i1 %4, label %5, label %8, !dbg !4081

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4082
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4085
  br label %15, !dbg !4085

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4086
  %10 = add nuw i64 %9, 1, !dbg !4086
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4086
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4086
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4086
  call void @llvm.dbg.value(metadata i64 %13, metadata !762, metadata !DIExpression()), !dbg !4076
  br i1 %12, label %14, label %15, !dbg !4089

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4090
  unreachable, !dbg !4090

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4076
  call void @llvm.dbg.value(metadata i64 %16, metadata !762, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %0, metadata !3891, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i64 %16, metadata !3894, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i64 1, metadata !3895, metadata !DIExpression()), !dbg !4091
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4093
  call void @llvm.dbg.value(metadata ptr %17, metadata !3899, metadata !DIExpression()), !dbg !4094
  %18 = icmp eq ptr %17, null, !dbg !4096
  br i1 %18, label %19, label %20, !dbg !4097

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4098
  unreachable, !dbg !4098

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !759, metadata !DIExpression()), !dbg !4076
  store i64 %16, ptr %1, align 8, !dbg !4099, !tbaa !1116
  ret ptr %17, !dbg !4100
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !754 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !759, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %1, metadata !760, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i64 %2, metadata !761, metadata !DIExpression()), !dbg !4101
  %4 = load i64, ptr %1, align 8, !dbg !4102, !tbaa !1116
  call void @llvm.dbg.value(metadata i64 %4, metadata !762, metadata !DIExpression()), !dbg !4101
  %5 = icmp eq ptr %0, null, !dbg !4103
  br i1 %5, label %6, label %13, !dbg !4104

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4105
  br i1 %7, label %8, label %20, !dbg !4106

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %9, metadata !762, metadata !DIExpression()), !dbg !4101
  %10 = icmp ugt i64 %2, 128, !dbg !4109
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4110
  call void @llvm.dbg.value(metadata i64 %12, metadata !762, metadata !DIExpression()), !dbg !4101
  br label %20, !dbg !4111

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4112
  %15 = add nuw i64 %14, 1, !dbg !4112
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4112
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4112
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4112
  call void @llvm.dbg.value(metadata i64 %18, metadata !762, metadata !DIExpression()), !dbg !4101
  br i1 %17, label %19, label %20, !dbg !4113

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4114
  unreachable, !dbg !4114

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4101
  call void @llvm.dbg.value(metadata i64 %21, metadata !762, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %0, metadata !3891, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %21, metadata !3894, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %2, metadata !3895, metadata !DIExpression()), !dbg !4115
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4117
  call void @llvm.dbg.value(metadata ptr %22, metadata !3899, metadata !DIExpression()), !dbg !4118
  %23 = icmp eq ptr %22, null, !dbg !4120
  br i1 %23, label %24, label %25, !dbg !4121

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4122
  unreachable, !dbg !4122

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !759, metadata !DIExpression()), !dbg !4101
  store i64 %21, ptr %1, align 8, !dbg !4123, !tbaa !1116
  ret ptr %22, !dbg !4124
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !766 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !774, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr %1, metadata !775, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %2, metadata !776, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %3, metadata !777, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %4, metadata !778, metadata !DIExpression()), !dbg !4125
  %6 = load i64, ptr %1, align 8, !dbg !4126, !tbaa !1116
  call void @llvm.dbg.value(metadata i64 %6, metadata !779, metadata !DIExpression()), !dbg !4125
  %7 = ashr i64 %6, 1, !dbg !4127
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4127
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4127
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %10, metadata !780, metadata !DIExpression()), !dbg !4125
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4129
  call void @llvm.dbg.value(metadata i64 %11, metadata !780, metadata !DIExpression()), !dbg !4125
  %12 = icmp sgt i64 %3, -1, !dbg !4130
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4132
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4132
  call void @llvm.dbg.value(metadata i64 %15, metadata !780, metadata !DIExpression()), !dbg !4125
  %16 = icmp slt i64 %4, 0, !dbg !4133
  br i1 %16, label %17, label %30, !dbg !4133

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4133
  br i1 %18, label %19, label %24, !dbg !4133

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4133
  %21 = udiv i64 9223372036854775807, %20, !dbg !4133
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4133
  br i1 %23, label %46, label %43, !dbg !4133

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4133
  br i1 %25, label %43, label %26, !dbg !4133

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4133
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4133
  %29 = icmp ult i64 %28, %15, !dbg !4133
  br i1 %29, label %46, label %43, !dbg !4133

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4133
  br i1 %31, label %43, label %32, !dbg !4133

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4133
  br i1 %33, label %34, label %40, !dbg !4133

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4133
  br i1 %35, label %43, label %36, !dbg !4133

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4133
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4133
  %39 = icmp ult i64 %38, %4, !dbg !4133
  br i1 %39, label %46, label %43, !dbg !4133

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4133
  br i1 %42, label %46, label %43, !dbg !4133

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !781, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4125
  %44 = mul i64 %15, %4, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %44, metadata !781, metadata !DIExpression()), !dbg !4125
  %45 = icmp slt i64 %44, 128, !dbg !4133
  br i1 %45, label %46, label %51, !dbg !4133

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !782, metadata !DIExpression()), !dbg !4125
  %48 = sdiv i64 %47, %4, !dbg !4134
  call void @llvm.dbg.value(metadata i64 %48, metadata !780, metadata !DIExpression()), !dbg !4125
  %49 = srem i64 %47, %4, !dbg !4137
  %50 = sub nsw i64 %47, %49, !dbg !4138
  call void @llvm.dbg.value(metadata i64 %50, metadata !781, metadata !DIExpression()), !dbg !4125
  br label %51, !dbg !4139

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4125
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4125
  call void @llvm.dbg.value(metadata i64 %53, metadata !781, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %52, metadata !780, metadata !DIExpression()), !dbg !4125
  %54 = icmp eq ptr %0, null, !dbg !4140
  br i1 %54, label %55, label %56, !dbg !4142

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4143, !tbaa !1116
  br label %56, !dbg !4144

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4145
  %58 = icmp slt i64 %57, %2, !dbg !4147
  br i1 %58, label %59, label %96, !dbg !4148

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4149
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4149
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %62, metadata !780, metadata !DIExpression()), !dbg !4125
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4150
  br i1 %65, label %95, label %66, !dbg !4150

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4151

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4151
  br i1 %68, label %69, label %74, !dbg !4151

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4151
  %71 = udiv i64 9223372036854775807, %70, !dbg !4151
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4151
  br i1 %73, label %95, label %93, !dbg !4151

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4151
  br i1 %75, label %93, label %76, !dbg !4151

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4151
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4151
  %79 = icmp ult i64 %78, %62, !dbg !4151
  br i1 %79, label %95, label %93, !dbg !4151

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4151
  br i1 %81, label %93, label %82, !dbg !4151

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4151
  br i1 %83, label %84, label %90, !dbg !4151

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4151
  br i1 %85, label %93, label %86, !dbg !4151

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4151
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4151
  %89 = icmp ult i64 %88, %4, !dbg !4151
  br i1 %89, label %95, label %93, !dbg !4151

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4151
  br i1 %92, label %95, label %93, !dbg !4151

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !781, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4125
  %94 = mul i64 %62, %4, !dbg !4151
  call void @llvm.dbg.value(metadata i64 %94, metadata !781, metadata !DIExpression()), !dbg !4125
  br label %96, !dbg !4152

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #40, !dbg !4153
  unreachable, !dbg !4153

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4125
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4125
  call void @llvm.dbg.value(metadata i64 %98, metadata !781, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %97, metadata !780, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr %0, metadata !3971, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %98, metadata !3972, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata ptr %0, metadata !3974, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 %98, metadata !3978, metadata !DIExpression()), !dbg !4156
  %99 = icmp eq i64 %98, 0, !dbg !4158
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4158
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #45, !dbg !4159
  call void @llvm.dbg.value(metadata ptr %101, metadata !3899, metadata !DIExpression()), !dbg !4160
  %102 = icmp eq ptr %101, null, !dbg !4162
  br i1 %102, label %103, label %104, !dbg !4163

103:                                              ; preds = %96
  tail call void @xalloc_die() #40, !dbg !4164
  unreachable, !dbg !4164

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !774, metadata !DIExpression()), !dbg !4125
  store i64 %97, ptr %1, align 8, !dbg !4165, !tbaa !1116
  ret ptr %101, !dbg !4166
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4167 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4169, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %0, metadata !4171, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i64 1, metadata !4174, metadata !DIExpression()), !dbg !4175
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !4177
  call void @llvm.dbg.value(metadata ptr %2, metadata !3899, metadata !DIExpression()), !dbg !4178
  %3 = icmp eq ptr %2, null, !dbg !4180
  br i1 %3, label %4, label %5, !dbg !4181

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4182
  unreachable, !dbg !4182

5:                                                ; preds = %1
  ret ptr %2, !dbg !4183
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4184 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4172 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4171, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %1, metadata !4174, metadata !DIExpression()), !dbg !4185
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !4186
  call void @llvm.dbg.value(metadata ptr %3, metadata !3899, metadata !DIExpression()), !dbg !4187
  %4 = icmp eq ptr %3, null, !dbg !4189
  br i1 %4, label %5, label %6, !dbg !4190

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4191
  unreachable, !dbg !4191

6:                                                ; preds = %2
  ret ptr %3, !dbg !4192
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4193 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %0, metadata !4197, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 1, metadata !4200, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %0, metadata !4203, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 1, metadata !4206, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 %0, metadata !4203, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 1, metadata !4206, metadata !DIExpression()), !dbg !4207
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !4209
  call void @llvm.dbg.value(metadata ptr %2, metadata !3899, metadata !DIExpression()), !dbg !4210
  %3 = icmp eq ptr %2, null, !dbg !4212
  br i1 %3, label %4, label %5, !dbg !4213

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4214
  unreachable, !dbg !4214

5:                                                ; preds = %1
  ret ptr %2, !dbg !4215
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4198 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4197, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %1, metadata !4200, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %0, metadata !4203, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i64 %1, metadata !4206, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i64 %0, metadata !4203, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i64 %1, metadata !4206, metadata !DIExpression()), !dbg !4217
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !4219
  call void @llvm.dbg.value(metadata ptr %3, metadata !3899, metadata !DIExpression()), !dbg !4220
  %4 = icmp eq ptr %3, null, !dbg !4222
  br i1 %4, label %5, label %6, !dbg !4223

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4224
  unreachable, !dbg !4224

6:                                                ; preds = %2
  ret ptr %3, !dbg !4225
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4226 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4230, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 %1, metadata !4231, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 %1, metadata !3923, metadata !DIExpression()), !dbg !4233
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4235
  call void @llvm.dbg.value(metadata ptr %3, metadata !3899, metadata !DIExpression()), !dbg !4236
  %4 = icmp eq ptr %3, null, !dbg !4238
  br i1 %4, label %5, label %6, !dbg !4239

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4240
  unreachable, !dbg !4240

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4241, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %1, metadata !4245, metadata !DIExpression()), !dbg !4246
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4248
  ret ptr %3, !dbg !4249
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4250 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4254, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !3937, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %1, metadata !3939, metadata !DIExpression()), !dbg !4259
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4261
  call void @llvm.dbg.value(metadata ptr %3, metadata !3899, metadata !DIExpression()), !dbg !4262
  %4 = icmp eq ptr %3, null, !dbg !4264
  br i1 %4, label %5, label %6, !dbg !4265

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4266
  unreachable, !dbg !4266

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4241, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4245, metadata !DIExpression()), !dbg !4267
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4269
  ret ptr %3, !dbg !4270
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4271 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4275, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()), !dbg !4278
  %3 = add nsw i64 %1, 1, !dbg !4279
  call void @llvm.dbg.value(metadata i64 %3, metadata !3937, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %3, metadata !3939, metadata !DIExpression()), !dbg !4282
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4284
  call void @llvm.dbg.value(metadata ptr %4, metadata !3899, metadata !DIExpression()), !dbg !4285
  %5 = icmp eq ptr %4, null, !dbg !4287
  br i1 %5, label %6, label %7, !dbg !4288

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4289
  unreachable, !dbg !4289

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4277, metadata !DIExpression()), !dbg !4278
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4290
  store i8 0, ptr %8, align 1, !dbg !4291, !tbaa !891
  call void @llvm.dbg.value(metadata ptr %4, metadata !4241, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i64 %1, metadata !4245, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4294
  ret ptr %4, !dbg !4295
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4296 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4299
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4300
  %3 = add i64 %2, 1, !dbg !4301
  call void @llvm.dbg.value(metadata ptr %0, metadata !4230, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %3, metadata !4231, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %3, metadata !3923, metadata !DIExpression()), !dbg !4304
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4306
  call void @llvm.dbg.value(metadata ptr %4, metadata !3899, metadata !DIExpression()), !dbg !4307
  %5 = icmp eq ptr %4, null, !dbg !4309
  br i1 %5, label %6, label %7, !dbg !4310

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4311
  unreachable, !dbg !4311

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4241, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %3, metadata !4245, metadata !DIExpression()), !dbg !4312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4314
  ret ptr %4, !dbg !4315
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4316 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4321, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %1, metadata !4318, metadata !DIExpression()), !dbg !4322
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.129, ptr noundef nonnull @.str.2.130, i32 noundef 5) #38, !dbg !4321
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.131, ptr noundef %2) #38, !dbg !4321
  %3 = icmp eq i32 %1, 0, !dbg !4321
  tail call void @llvm.assume(i1 %3), !dbg !4321
  tail call void @abort() #40, !dbg !4323
  unreachable, !dbg !4323
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4324 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %1, metadata !4363, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32 0, metadata !4364, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32 0, metadata !4365, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i8 0, metadata !4366, metadata !DIExpression()), !dbg !4386
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !4387
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4367, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata ptr %1, metadata !4371, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata ptr %3, metadata !4373, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 0, metadata !4364, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32 0, metadata !4365, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i8 0, metadata !4366, metadata !DIExpression()), !dbg !4386
  %4 = load i8, ptr %1, align 1, !dbg !4390, !tbaa !891
  %5 = icmp eq i8 %4, 0, !dbg !4391
  br i1 %5, label %6, label %7, !dbg !4392

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4373, metadata !DIExpression()), !dbg !4389
  store i8 0, ptr %3, align 16, !dbg !4393, !tbaa !891
  br label %74, !dbg !4394

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4364, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32 %11, metadata !4365, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %13, metadata !4371, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i8 %14, metadata !4366, metadata !DIExpression()), !dbg !4386
  %15 = sext i8 %8 to i32, !dbg !4390
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !4395

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !4364, metadata !DIExpression()), !dbg !4386
  %17 = icmp slt i64 %12, 80, !dbg !4396
  br i1 %17, label %18, label %47, !dbg !4399

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !4400
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4389
  store i8 %8, ptr %9, align 1, !dbg !4401, !tbaa !891
  br label %47, !dbg !4402

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4364, metadata !DIExpression()), !dbg !4386
  %21 = or i32 %11, 576, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %21, metadata !4365, metadata !DIExpression()), !dbg !4386
  %22 = icmp slt i64 %12, 80, !dbg !4404
  br i1 %22, label %23, label %47, !dbg !4406

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !4407
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4389
  store i8 %8, ptr %9, align 1, !dbg !4408, !tbaa !891
  br label %47, !dbg !4409

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4364, metadata !DIExpression()), !dbg !4386
  %26 = or i32 %11, 1088, !dbg !4410
  call void @llvm.dbg.value(metadata i32 %26, metadata !4365, metadata !DIExpression()), !dbg !4386
  %27 = icmp slt i64 %12, 80, !dbg !4411
  br i1 %27, label %28, label %47, !dbg !4413

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !4414
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4389
  store i8 %8, ptr %9, align 1, !dbg !4415, !tbaa !891
  br label %47, !dbg !4416

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !4365, metadata !DIExpression()), !dbg !4386
  %31 = icmp slt i64 %12, 80, !dbg !4417
  br i1 %31, label %32, label %47, !dbg !4419

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !4420
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4389
  store i8 %8, ptr %9, align 1, !dbg !4421, !tbaa !891
  br label %47, !dbg !4422

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !4364, metadata !DIExpression()), !dbg !4386
  %35 = icmp slt i64 %12, 80, !dbg !4423
  br i1 %35, label %36, label %47, !dbg !4425

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !4426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4389
  store i8 %8, ptr %9, align 1, !dbg !4427, !tbaa !891
  br label %47, !dbg !4428

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !4429
  call void @llvm.dbg.value(metadata i32 %39, metadata !4365, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i8 1, metadata !4366, metadata !DIExpression()), !dbg !4386
  br label %47, !dbg !4430

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !4431
  call void @llvm.dbg.value(metadata i32 %41, metadata !4365, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i8 1, metadata !4366, metadata !DIExpression()), !dbg !4386
  br label %47, !dbg !4432

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #39, !dbg !4433
  call void @llvm.dbg.value(metadata i64 %43, metadata !4374, metadata !DIExpression()), !dbg !4434
  %44 = sub nsw i64 80, %12, !dbg !4435
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !4437
  call void @llvm.dbg.value(metadata i64 %45, metadata !4374, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata ptr %9, metadata !4438, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata ptr %13, metadata !4441, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %45, metadata !4442, metadata !DIExpression()), !dbg !4443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #38, !dbg !4445
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !4446
  call void @llvm.dbg.value(metadata ptr %46, metadata !4373, metadata !DIExpression()), !dbg !4389
  br label %56, !dbg !4447

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !4386
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !4386
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !4386
  call void @llvm.dbg.value(metadata i32 %51, metadata !4364, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32 %50, metadata !4365, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i8 %48, metadata !4366, metadata !DIExpression()), !dbg !4386
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !4448
  call void @llvm.dbg.value(metadata ptr %52, metadata !4371, metadata !DIExpression()), !dbg !4389
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !4386
  call void @llvm.dbg.value(metadata ptr %53, metadata !4373, metadata !DIExpression()), !dbg !4389
  %54 = load i8, ptr %52, align 1, !dbg !4390, !tbaa !891
  %55 = icmp eq i8 %54, 0, !dbg !4391
  br i1 %55, label %56, label %7, !dbg !4392, !llvm.loop !4449

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !4389
  call void @llvm.dbg.value(metadata ptr %60, metadata !4373, metadata !DIExpression()), !dbg !4389
  store i8 0, ptr %60, align 1, !dbg !4393, !tbaa !891
  %61 = and i8 %57, 1, !dbg !4451
  %62 = icmp eq i8 %61, 0, !dbg !4451
  br i1 %62, label %74, label %63, !dbg !4394

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !4452
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #38, !dbg !4453
  call void @llvm.dbg.value(metadata i32 %65, metadata !4379, metadata !DIExpression()), !dbg !4454
  %66 = icmp slt i32 %65, 0, !dbg !4455
  br i1 %66, label %76, label %67, !dbg !4457

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #38, !dbg !4458
  call void @llvm.dbg.value(metadata ptr %68, metadata !4382, metadata !DIExpression()), !dbg !4454
  %69 = icmp eq ptr %68, null, !dbg !4459
  br i1 %69, label %70, label %76, !dbg !4460

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #41, !dbg !4461
  %72 = load i32, ptr %71, align 4, !dbg !4461, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %72, metadata !4383, metadata !DIExpression()), !dbg !4462
  %73 = tail call i32 @close(i32 noundef %65) #38, !dbg !4463
  store i32 %72, ptr %71, align 4, !dbg !4464, !tbaa !882
  br label %76, !dbg !4465

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !4466, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata ptr %1, metadata !4469, metadata !DIExpression()), !dbg !4470
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4472
  br label %76, !dbg !4473

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !4386
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !4474
  ret ptr %77, !dbg !4474
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4475 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !4478 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #6

declare !dbg !4481 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4482 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4485 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4523, metadata !DIExpression()), !dbg !4528
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4529
  call void @llvm.dbg.value(metadata i1 poison, metadata !4524, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4528
  call void @llvm.dbg.value(metadata ptr %0, metadata !4530, metadata !DIExpression()), !dbg !4533
  %3 = load i32, ptr %0, align 8, !dbg !4535, !tbaa !4536
  %4 = and i32 %3, 32, !dbg !4537
  %5 = icmp eq i32 %4, 0, !dbg !4537
  call void @llvm.dbg.value(metadata i1 %5, metadata !4526, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4528
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4538
  %7 = icmp eq i32 %6, 0, !dbg !4539
  call void @llvm.dbg.value(metadata i1 %7, metadata !4527, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4528
  br i1 %5, label %8, label %18, !dbg !4540

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4542
  call void @llvm.dbg.value(metadata i1 %9, metadata !4524, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4528
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4543
  %11 = xor i1 %7, true, !dbg !4543
  %12 = sext i1 %11 to i32, !dbg !4543
  br i1 %10, label %21, label %13, !dbg !4543

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4544
  %15 = load i32, ptr %14, align 4, !dbg !4544, !tbaa !882
  %16 = icmp ne i32 %15, 9, !dbg !4545
  %17 = sext i1 %16 to i32, !dbg !4546
  br label %21, !dbg !4546

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4547

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4549
  store i32 0, ptr %20, align 4, !dbg !4551, !tbaa !882
  br label %21, !dbg !4549

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4528
  ret i32 %22, !dbg !4552
}

; Function Attrs: nounwind
declare !dbg !4553 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4557 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4595, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4596, metadata !DIExpression()), !dbg !4599
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4600
  call void @llvm.dbg.value(metadata i32 %2, metadata !4597, metadata !DIExpression()), !dbg !4599
  %3 = icmp slt i32 %2, 0, !dbg !4601
  br i1 %3, label %4, label %6, !dbg !4603

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4604
  br label %24, !dbg !4605

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4606
  %8 = icmp eq i32 %7, 0, !dbg !4606
  br i1 %8, label %13, label %9, !dbg !4608

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4609
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !4610
  %12 = icmp eq i64 %11, -1, !dbg !4611
  br i1 %12, label %16, label %13, !dbg !4612

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !4613
  %15 = icmp eq i32 %14, 0, !dbg !4613
  br i1 %15, label %16, label %18, !dbg !4614

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4596, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4598, metadata !DIExpression()), !dbg !4599
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4615
  call void @llvm.dbg.value(metadata i32 %17, metadata !4598, metadata !DIExpression()), !dbg !4599
  br label %24, !dbg !4616

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !4617
  %20 = load i32, ptr %19, align 4, !dbg !4617, !tbaa !882
  call void @llvm.dbg.value(metadata i32 %20, metadata !4596, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4598, metadata !DIExpression()), !dbg !4599
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4615
  call void @llvm.dbg.value(metadata i32 %21, metadata !4598, metadata !DIExpression()), !dbg !4599
  %22 = icmp eq i32 %20, 0, !dbg !4618
  br i1 %22, label %24, label %23, !dbg !4616

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4620, !tbaa !882
  call void @llvm.dbg.value(metadata i32 -1, metadata !4598, metadata !DIExpression()), !dbg !4599
  br label %24, !dbg !4622

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4599
  ret i32 %25, !dbg !4623
}

; Function Attrs: nofree nounwind
declare !dbg !4624 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !4625 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !4626 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4627 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4630 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4668, metadata !DIExpression()), !dbg !4669
  %2 = icmp eq ptr %0, null, !dbg !4670
  br i1 %2, label %6, label %3, !dbg !4672

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4673
  %5 = icmp eq i32 %4, 0, !dbg !4673
  br i1 %5, label %6, label %8, !dbg !4674

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4675
  br label %16, !dbg !4676

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4677, metadata !DIExpression()), !dbg !4682
  %9 = load i32, ptr %0, align 8, !dbg !4684, !tbaa !4536
  %10 = and i32 %9, 256, !dbg !4686
  %11 = icmp eq i32 %10, 0, !dbg !4686
  br i1 %11, label %14, label %12, !dbg !4687

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !4688
  br label %14, !dbg !4688

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4689
  br label %16, !dbg !4690

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4669
  ret i32 %17, !dbg !4691
}

; Function Attrs: nofree nounwind
declare !dbg !4692 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4693 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4732, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i64 %1, metadata !4733, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 %2, metadata !4734, metadata !DIExpression()), !dbg !4738
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4739
  %5 = load ptr, ptr %4, align 8, !dbg !4739, !tbaa !4740
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4741
  %7 = load ptr, ptr %6, align 8, !dbg !4741, !tbaa !4742
  %8 = icmp eq ptr %5, %7, !dbg !4743
  br i1 %8, label %9, label %27, !dbg !4744

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4745
  %11 = load ptr, ptr %10, align 8, !dbg !4745, !tbaa !1178
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4746
  %13 = load ptr, ptr %12, align 8, !dbg !4746, !tbaa !4747
  %14 = icmp eq ptr %11, %13, !dbg !4748
  br i1 %14, label %15, label %27, !dbg !4749

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4750
  %17 = load ptr, ptr %16, align 8, !dbg !4750, !tbaa !4751
  %18 = icmp eq ptr %17, null, !dbg !4752
  br i1 %18, label %19, label %27, !dbg !4753

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4754
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !4755
  call void @llvm.dbg.value(metadata i64 %21, metadata !4735, metadata !DIExpression()), !dbg !4756
  %22 = icmp eq i64 %21, -1, !dbg !4757
  br i1 %22, label %29, label %23, !dbg !4759

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4760, !tbaa !4536
  %25 = and i32 %24, -17, !dbg !4760
  store i32 %25, ptr %0, align 8, !dbg !4760, !tbaa !4536
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4761
  store i64 %21, ptr %26, align 8, !dbg !4762, !tbaa !4763
  br label %29, !dbg !4764

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4765
  br label %29, !dbg !4766

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4738
  ret i32 %30, !dbg !4767
}

; Function Attrs: nofree nounwind
declare !dbg !4768 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4771 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4776, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata ptr %1, metadata !4777, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i64 %2, metadata !4778, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata ptr %3, metadata !4779, metadata !DIExpression()), !dbg !4781
  %5 = icmp eq ptr %1, null, !dbg !4782
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4784
  %7 = select i1 %5, ptr @.str.144, ptr %1, !dbg !4784
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4784
  call void @llvm.dbg.value(metadata i64 %8, metadata !4778, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata ptr %7, metadata !4777, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata ptr %6, metadata !4776, metadata !DIExpression()), !dbg !4781
  %9 = icmp eq ptr %3, null, !dbg !4785
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4787
  call void @llvm.dbg.value(metadata ptr %10, metadata !4779, metadata !DIExpression()), !dbg !4781
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !4788
  call void @llvm.dbg.value(metadata i64 %11, metadata !4780, metadata !DIExpression()), !dbg !4781
  %12 = icmp ult i64 %11, -3, !dbg !4789
  br i1 %12, label %13, label %17, !dbg !4791

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !4792
  %15 = icmp eq i32 %14, 0, !dbg !4792
  br i1 %15, label %16, label %29, !dbg !4793

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4794, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata ptr %10, metadata !4801, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata i32 0, metadata !4804, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata i64 8, metadata !4805, metadata !DIExpression()), !dbg !4806
  store i64 0, ptr %10, align 1, !dbg !4808
  br label %29, !dbg !4809

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4810
  br i1 %18, label %19, label %20, !dbg !4812

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4813
  unreachable, !dbg !4813

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4814

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !4816
  br i1 %23, label %29, label %24, !dbg !4817

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4818
  br i1 %25, label %29, label %26, !dbg !4821

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4822, !tbaa !891
  %28 = zext i8 %27 to i32, !dbg !4823
  store i32 %28, ptr %6, align 4, !dbg !4824, !tbaa !882
  br label %29, !dbg !4825

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4781
  ret i64 %30, !dbg !4826
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4827 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4833 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4835, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %1, metadata !4836, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %2, metadata !4837, metadata !DIExpression()), !dbg !4839
  %4 = icmp eq i64 %2, 0, !dbg !4840
  br i1 %4, label %8, label %5, !dbg !4840

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4840
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4840
  br i1 %7, label %13, label %8, !dbg !4840

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4838, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4839
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4838, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4839
  %9 = mul i64 %2, %1, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %9, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata ptr %0, metadata !4842, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i64 %9, metadata !4845, metadata !DIExpression()), !dbg !4846
  %10 = icmp eq i64 %9, 0, !dbg !4848
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4848
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4849
  br label %15, !dbg !4850

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4838, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4839
  %14 = tail call ptr @__errno_location() #41, !dbg !4851
  store i32 12, ptr %14, align 4, !dbg !4853, !tbaa !882
  br label %15, !dbg !4854

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4839
  ret ptr %16, !dbg !4855
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4856 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4860, metadata !DIExpression()), !dbg !4865
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4866
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4861, metadata !DIExpression()), !dbg !4867
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4868
  %4 = icmp eq i32 %3, 0, !dbg !4868
  br i1 %4, label %5, label %12, !dbg !4870

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4871, metadata !DIExpression()), !dbg !4875
  %6 = load i16, ptr %2, align 16, !dbg !4878
  %7 = icmp eq i16 %6, 67, !dbg !4878
  br i1 %7, label %11, label %8, !dbg !4879

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4871, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr @.str.1.149, metadata !4874, metadata !DIExpression()), !dbg !4880
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.149, i64 6), !dbg !4882
  %10 = icmp eq i32 %9, 0, !dbg !4883
  br i1 %10, label %11, label %12, !dbg !4884

11:                                               ; preds = %8, %5
  br label %12, !dbg !4885

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4865
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4886
  ret i1 %13, !dbg !4886
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4891, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr %1, metadata !4892, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i64 %2, metadata !4893, metadata !DIExpression()), !dbg !4894
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4895
  ret i32 %4, !dbg !4896
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4897 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4901, metadata !DIExpression()), !dbg !4902
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4903
  ret ptr %2, !dbg !4904
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4905 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4907, metadata !DIExpression()), !dbg !4909
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4910
  call void @llvm.dbg.value(metadata ptr %2, metadata !4908, metadata !DIExpression()), !dbg !4909
  ret ptr %2, !dbg !4911
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4914, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata ptr %1, metadata !4915, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %2, metadata !4916, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i32 %0, metadata !4907, metadata !DIExpression()), !dbg !4922
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4924
  call void @llvm.dbg.value(metadata ptr %4, metadata !4908, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata ptr %4, metadata !4917, metadata !DIExpression()), !dbg !4921
  %5 = icmp eq ptr %4, null, !dbg !4925
  br i1 %5, label %6, label %9, !dbg !4926

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4927
  br i1 %7, label %19, label %8, !dbg !4930

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4931, !tbaa !891
  br label %19, !dbg !4932

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4933
  call void @llvm.dbg.value(metadata i64 %10, metadata !4918, metadata !DIExpression()), !dbg !4934
  %11 = icmp ult i64 %10, %2, !dbg !4935
  br i1 %11, label %12, label %14, !dbg !4937

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4938
  call void @llvm.dbg.value(metadata ptr %1, metadata !4940, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata ptr %4, metadata !4943, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i64 %13, metadata !4944, metadata !DIExpression()), !dbg !4945
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4947
  br label %19, !dbg !4948

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4949
  br i1 %15, label %19, label %16, !dbg !4952

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4953
  call void @llvm.dbg.value(metadata ptr %1, metadata !4940, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata ptr %4, metadata !4943, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i64 %17, metadata !4944, metadata !DIExpression()), !dbg !4955
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4957
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4958
  store i8 0, ptr %18, align 1, !dbg !4959, !tbaa !891
  br label %19, !dbg !4960

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4961
  ret i32 %20, !dbg !4962
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!76, !323, !327, !342, !675, !707, !397, !417, !431, !482, !709, !743, !667, !750, !784, !786, !788, !790, !792, !794, !691, !796, !799, !803, !805}
!llvm.ident = !{!807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807}
!llvm.module.flags = !{!808, !809, !810, !811, !812, !813}

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
!341 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !342, file: !343, line: 66, type: !389, isLocal: false, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C11, file: !343, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !344, globals: !345, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!344 = !{!116, !122}
!345 = !{!346, !348, !368, !370, !372, !374, !340, !376, !378, !380, !382, !387}
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !343, line: 272, type: !128, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "old_file_name", scope: !350, file: !343, line: 304, type: !74, isLocal: true, isDefinition: true)
!350 = distinct !DISubprogram(name: "verror_at_line", scope: !343, file: !343, line: 298, type: !351, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !361)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !117, !117, !74, !80, !74, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !355)
!355 = !{!356, !358, !359, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !354, file: !357, baseType: !80, size: 32)
!357 = !DIFile(filename: "lib/error.c", directory: "/src")
!358 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !354, file: !357, baseType: !80, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !354, file: !357, baseType: !116, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !354, file: !357, baseType: !116, size: 64, offset: 128)
!361 = !{!362, !363, !364, !365, !366, !367}
!362 = !DILocalVariable(name: "status", arg: 1, scope: !350, file: !343, line: 298, type: !117)
!363 = !DILocalVariable(name: "errnum", arg: 2, scope: !350, file: !343, line: 298, type: !117)
!364 = !DILocalVariable(name: "file_name", arg: 3, scope: !350, file: !343, line: 298, type: !74)
!365 = !DILocalVariable(name: "line_number", arg: 4, scope: !350, file: !343, line: 298, type: !80)
!366 = !DILocalVariable(name: "message", arg: 5, scope: !350, file: !343, line: 298, type: !74)
!367 = !DILocalVariable(name: "args", arg: 6, scope: !350, file: !343, line: 298, type: !353)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "old_line_number", scope: !350, file: !343, line: 305, type: !80, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !343, line: 338, type: !135, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !343, line: 346, type: !167, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !343, line: 346, type: !142, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "error_message_count", scope: !342, file: !343, line: 69, type: !80, isLocal: false, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !342, file: !343, line: 295, type: !117, isLocal: false, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !343, line: 208, type: !162, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !343, line: 208, type: !384, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 21)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !343, line: 214, type: !128, isLocal: true, isDefinition: true)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null}
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !394, line: 60, type: !142, isLocal: true, isDefinition: true)
!394 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "long_options", scope: !397, file: !394, line: 34, type: !405, isLocal: true, isDefinition: true)
!397 = distinct !DICompileUnit(language: DW_LANG_C11, file: !394, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !398, splitDebugInlining: false, nameTableKind: None)
!398 = !{!392, !399, !401, !403, !395}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !394, line: 112, type: !41, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !394, line: 36, type: !128, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !394, line: 37, type: !167, isLocal: true, isDefinition: true)
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
!417 = distinct !DICompileUnit(language: DW_LANG_C11, file: !418, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !419, globals: !420, splitDebugInlining: false, nameTableKind: None)
!418 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!419 = !{!124}
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
!431 = distinct !DICompileUnit(language: DW_LANG_C11, file: !428, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !432, splitDebugInlining: false, nameTableKind: None)
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
!481 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !482, file: !458, line: 76, type: !554, isLocal: false, isDefinition: true)
!482 = distinct !DICompileUnit(language: DW_LANG_C11, file: !458, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !483, retainedTypes: !489, globals: !490, splitDebugInlining: false, nameTableKind: None)
!483 = !{!101, !484, !86}
!484 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !102, line: 254, baseType: !80, size: 32, elements: !485)
!485 = !{!486, !487, !488}
!486 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!487 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!488 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!489 = !{!117, !118, !119}
!490 = !{!456, !459, !461, !466, !468, !470, !472, !474, !476, !478, !480, !491, !495, !505, !507, !512, !514, !516, !518, !520, !543, !550, !552}
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !482, file: !458, line: 92, type: !493, isLocal: false, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 320, elements: !47)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !482, file: !458, line: 1040, type: !497, isLocal: false, isDefinition: true)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !458, line: 56, size: 448, elements: !498)
!498 = !{!499, !500, !501, !503, !504}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !497, file: !458, line: 59, baseType: !101, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !458, line: 62, baseType: !117, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !497, file: !458, line: 66, baseType: !502, size: 256, offset: 64)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !168)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !497, file: !458, line: 69, baseType: !74, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !497, file: !458, line: 72, baseType: !74, size: 64, offset: 384)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !482, file: !458, line: 107, type: !497, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "slot0", scope: !482, file: !458, line: 831, type: !509, isLocal: true, isDefinition: true)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 256)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !458, line: 321, type: !142, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !458, line: 357, type: !142, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !458, line: 358, type: !142, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !458, line: 199, type: !162, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "quote", scope: !522, file: !458, line: 228, type: !541, isLocal: true, isDefinition: true)
!522 = distinct !DISubprogram(name: "gettext_quote", scope: !458, file: !458, line: 197, type: !523, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!74, !74, !101}
!525 = !{!526, !527, !528, !529, !530}
!526 = !DILocalVariable(name: "msgid", arg: 1, scope: !522, file: !458, line: 197, type: !74)
!527 = !DILocalVariable(name: "s", arg: 2, scope: !522, file: !458, line: 197, type: !101)
!528 = !DILocalVariable(name: "translation", scope: !522, file: !458, line: 199, type: !74)
!529 = !DILocalVariable(name: "w", scope: !522, file: !458, line: 229, type: !438)
!530 = !DILocalVariable(name: "mbs", scope: !522, file: !458, line: 230, type: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !446, line: 21, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 13, size: 64, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !533, file: !446, line: 15, baseType: !117, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !533, file: !446, line: 20, baseType: !537, size: 32, offset: 32)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !533, file: !446, line: 16, size: 32, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !537, file: !446, line: 18, baseType: !80, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !537, file: !446, line: 19, baseType: !135, size: 32)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !542)
!542 = !{!144, !137}
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "slotvec", scope: !482, file: !458, line: 834, type: !545, isLocal: true, isDefinition: true)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !458, line: 823, size: 128, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !546, file: !458, line: 825, baseType: !119, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !458, line: 826, baseType: !124, size: 64, offset: 64)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "nslots", scope: !482, file: !458, line: 832, type: !117, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "slotvec0", scope: !482, file: !458, line: 833, type: !546, isLocal: true, isDefinition: true)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 704, elements: !556)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!556 = !{!557}
!557 = !DISubrange(count: 11)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !560, line: 347, type: !19, isLocal: true, isDefinition: true)
!560 = !DIFile(filename: "lib/readutmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "da68be8ee1104a39b5ac94d0be1eef81")
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !560, line: 398, type: !563, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 9)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !560, line: 399, type: !142, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !560, line: 446, type: !162, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !560, line: 447, type: !41, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !574, line: 98, type: !575, isLocal: true, isDefinition: true)
!574 = !DIFile(filename: "./lib/boot-time-aux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "56a7f792a9c98183f316974c092e6a70")
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 29)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !574, line: 99, type: !575, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !574, line: 100, type: !384, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !574, line: 40, type: !463, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !574, line: 40, type: !151, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !588, line: 67, type: !235, isLocal: true, isDefinition: true)
!588 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !588, line: 69, type: !162, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !588, line: 83, type: !162, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !588, line: 83, type: !135, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !588, line: 85, type: !142, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !588, line: 88, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 171)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !588, line: 88, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 34)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !588, line: 105, type: !63, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !588, line: 109, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 23)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !588, line: 113, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 28)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !588, line: 120, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 32)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !588, line: 127, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 36)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !588, line: 134, type: !186, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !588, line: 142, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 44)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !588, line: 150, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 48)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !588, line: 159, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 52)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !588, line: 170, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 60)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !588, line: 248, type: !309, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !588, line: 248, type: !211, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !588, line: 254, type: !309, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !588, line: 254, type: !19, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !588, line: 254, type: !186, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !588, line: 259, type: !3, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !588, line: 259, type: !575, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !667, file: !668, line: 26, type: !670, isLocal: false, isDefinition: true)
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !668, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !669, splitDebugInlining: false, nameTableKind: None)
!668 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!669 = !{!665}
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 47)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "exit_failure", scope: !675, file: !676, line: 24, type: !678, isLocal: false, isDefinition: true)
!675 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !677, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!677 = !{!673}
!678 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !681, line: 34, type: !151, isLocal: true, isDefinition: true)
!681 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !681, line: 34, type: !162, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !681, line: 34, type: !58, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !688, line: 108, type: !41, isLocal: true, isDefinition: true)
!688 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(name: "internal_state", scope: !691, file: !688, line: 97, type: !694, isLocal: true, isDefinition: true)
!691 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !692, globals: !693, splitDebugInlining: false, nameTableKind: None)
!692 = !{!116, !119, !122}
!693 = !{!686, !689}
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !446, line: 21, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 13, size: 64, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !696, file: !446, line: 15, baseType: !117, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !696, file: !446, line: 20, baseType: !700, size: 32, offset: 32)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !446, line: 16, size: 32, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !700, file: !446, line: 18, baseType: !80, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !700, file: !446, line: 19, baseType: !135, size: 32)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !706, line: 35, type: !26, isLocal: true, isDefinition: true)
!706 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!707 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!708 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !560, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !710, retainedTypes: !711, globals: !742, splitDebugInlining: false, nameTableKind: None)
!710 = !{!78}
!711 = !{!124, !116, !712, !740, !119}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !715, line: 55, size: 3072, elements: !716)
!715 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "d076be7f45ef793a8c3c4dd5282b1b1a")
!716 = !{!717, !719, !721, !722, !723, !724, !725, !730, !732, !737, !739}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !714, file: !715, line: 57, baseType: !718, size: 16)
!718 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !714, file: !715, line: 58, baseType: !720, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !287, line: 154, baseType: !117)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !714, file: !715, line: 59, baseType: !621, size: 256, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !714, file: !715, line: 61, baseType: !135, size: 32, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !714, file: !715, line: 63, baseType: !621, size: 256, offset: 352)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !714, file: !715, line: 65, baseType: !509, size: 2048, offset: 608)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !714, file: !715, line: 67, baseType: !726, size: 32, offset: 2656)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !715, line: 42, size: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !726, file: !715, line: 45, baseType: !718, size: 16)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !726, file: !715, line: 46, baseType: !718, size: 16, offset: 16)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !714, file: !715, line: 74, baseType: !731, size: 32, offset: 2688)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !287, line: 41, baseType: !117)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !714, file: !715, line: 79, baseType: !733, size: 64, offset: 2720)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !714, file: !715, line: 75, size: 64, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !733, file: !715, line: 77, baseType: !731, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !733, file: !715, line: 78, baseType: !731, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !714, file: !715, line: 84, baseType: !738, size: 128, offset: 2784)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 128, elements: !136)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !714, file: !715, line: 85, baseType: !309, size: 160, offset: 2912)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !741, line: 87, baseType: !288)
!741 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!742 = !{!558, !561, !566, !568, !570, !572, !578, !580, !582, !584}
!743 = distinct !DICompileUnit(language: DW_LANG_C11, file: !588, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !744, retainedTypes: !748, globals: !749, splitDebugInlining: false, nameTableKind: None)
!744 = !{!745}
!745 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !588, line: 40, baseType: !80, size: 32, elements: !746)
!746 = !{!747}
!747 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!748 = !{!116}
!749 = !{!586, !589, !591, !593, !595, !597, !602, !607, !609, !614, !619, !624, !629, !631, !636, !641, !646, !651, !653, !655, !657, !659, !661, !663}
!750 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !752, retainedTypes: !783, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!752 = !{!753, !765}
!753 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !754, file: !751, line: 188, baseType: !80, size: 32, elements: !763)
!754 = distinct !DISubprogram(name: "x2nrealloc", scope: !751, file: !751, line: 176, type: !755, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !758)
!755 = !DISubroutineType(types: !756)
!756 = !{!116, !116, !757, !119}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!758 = !{!759, !760, !761, !762}
!759 = !DILocalVariable(name: "p", arg: 1, scope: !754, file: !751, line: 176, type: !116)
!760 = !DILocalVariable(name: "pn", arg: 2, scope: !754, file: !751, line: 176, type: !757)
!761 = !DILocalVariable(name: "s", arg: 3, scope: !754, file: !751, line: 176, type: !119)
!762 = !DILocalVariable(name: "n", scope: !754, file: !751, line: 178, type: !119)
!763 = !{!764}
!764 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!765 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !766, file: !751, line: 228, baseType: !80, size: 32, elements: !763)
!766 = distinct !DISubprogram(name: "xpalloc", scope: !751, file: !751, line: 223, type: !767, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !773)
!767 = !DISubroutineType(types: !768)
!768 = !{!116, !116, !769, !770, !772, !770}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !771, line: 130, baseType: !772)
!771 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !120, line: 35, baseType: !288)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782}
!774 = !DILocalVariable(name: "pa", arg: 1, scope: !766, file: !751, line: 223, type: !116)
!775 = !DILocalVariable(name: "pn", arg: 2, scope: !766, file: !751, line: 223, type: !769)
!776 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !766, file: !751, line: 223, type: !770)
!777 = !DILocalVariable(name: "n_max", arg: 4, scope: !766, file: !751, line: 223, type: !772)
!778 = !DILocalVariable(name: "s", arg: 5, scope: !766, file: !751, line: 223, type: !770)
!779 = !DILocalVariable(name: "n0", scope: !766, file: !751, line: 230, type: !770)
!780 = !DILocalVariable(name: "n", scope: !766, file: !751, line: 237, type: !770)
!781 = !DILocalVariable(name: "nbytes", scope: !766, file: !751, line: 248, type: !770)
!782 = !DILocalVariable(name: "adjusted_nbytes", scope: !766, file: !751, line: 252, type: !770)
!783 = !{!124, !116, !247, !288, !121}
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !785, splitDebugInlining: false, nameTableKind: None)
!785 = !{!679, !682, !684}
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !789, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!789 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!791 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!794 = distinct !DICompileUnit(language: DW_LANG_C11, file: !795, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!795 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!798 = !{!247, !121, !116}
!799 = distinct !DICompileUnit(language: DW_LANG_C11, file: !706, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !800, splitDebugInlining: false, nameTableKind: None)
!800 = !{!801, !704}
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !706, line: 35, type: !142, isLocal: true, isDefinition: true)
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !804, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!804 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!807 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!808 = !{i32 7, !"Dwarf Version", i32 5}
!809 = !{i32 2, !"Debug Info Version", i32 3}
!810 = !{i32 1, !"wchar_size", i32 4}
!811 = !{i32 8, !"PIC Level", i32 2}
!812 = !{i32 7, !"PIE Level", i32 2}
!813 = !{i32 7, !"uwtable", i32 2}
!814 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 96, type: !815, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !117}
!817 = !{!818}
!818 = !DILocalVariable(name: "status", arg: 1, scope: !814, file: !2, line: 96, type: !117)
!819 = !DILocation(line: 0, scope: !814)
!820 = !DILocation(line: 98, column: 14, scope: !821)
!821 = distinct !DILexicalBlock(scope: !814, file: !2, line: 98, column: 7)
!822 = !DILocation(line: 98, column: 7, scope: !814)
!823 = !DILocation(line: 99, column: 5, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !2, line: 99, column: 5)
!825 = !{!826, !826, i64 0}
!826 = !{!"any pointer", !827, i64 0}
!827 = !{!"omnipotent char", !828, i64 0}
!828 = !{!"Simple C/C++ TBAA"}
!829 = !DILocation(line: 102, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !821, file: !2, line: 101, column: 5)
!831 = !DILocation(line: 103, column: 7, scope: !830)
!832 = !DILocation(line: 109, column: 7, scope: !830)
!833 = !DILocation(line: 110, column: 7, scope: !830)
!834 = !DILocalVariable(name: "program", arg: 1, scope: !835, file: !71, line: 836, type: !74)
!835 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !71, file: !71, line: 836, type: !836, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !74}
!838 = !{!834, !839, !846, !847, !849, !850}
!839 = !DILocalVariable(name: "infomap", scope: !835, file: !71, line: 838, type: !840)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 896, elements: !163)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !835, file: !71, line: 838, size: 128, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !842, file: !71, line: 838, baseType: !74, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !842, file: !71, line: 838, baseType: !74, size: 64, offset: 64)
!846 = !DILocalVariable(name: "node", scope: !835, file: !71, line: 848, type: !74)
!847 = !DILocalVariable(name: "map_prog", scope: !835, file: !71, line: 849, type: !848)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!849 = !DILocalVariable(name: "lc_messages", scope: !835, file: !71, line: 861, type: !74)
!850 = !DILocalVariable(name: "url_program", scope: !835, file: !71, line: 874, type: !74)
!851 = !DILocation(line: 0, scope: !835, inlinedAt: !852)
!852 = distinct !DILocation(line: 111, column: 7, scope: !830)
!853 = !DILocation(line: 857, column: 3, scope: !835, inlinedAt: !852)
!854 = !DILocation(line: 861, column: 29, scope: !835, inlinedAt: !852)
!855 = !DILocation(line: 862, column: 7, scope: !856, inlinedAt: !852)
!856 = distinct !DILexicalBlock(scope: !835, file: !71, line: 862, column: 7)
!857 = !DILocation(line: 862, column: 19, scope: !856, inlinedAt: !852)
!858 = !DILocation(line: 862, column: 22, scope: !856, inlinedAt: !852)
!859 = !DILocation(line: 862, column: 7, scope: !835, inlinedAt: !852)
!860 = !DILocation(line: 868, column: 7, scope: !861, inlinedAt: !852)
!861 = distinct !DILexicalBlock(scope: !856, file: !71, line: 863, column: 5)
!862 = !DILocation(line: 870, column: 5, scope: !861, inlinedAt: !852)
!863 = !DILocation(line: 875, column: 3, scope: !835, inlinedAt: !852)
!864 = !DILocation(line: 877, column: 3, scope: !835, inlinedAt: !852)
!865 = !DILocation(line: 113, column: 3, scope: !814)
!866 = !DISubprogram(name: "dcgettext", scope: !867, file: !867, line: 51, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!867 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!868 = !DISubroutineType(types: !869)
!869 = !{!124, !74, !74, !117}
!870 = !{}
!871 = !DISubprogram(name: "__fprintf_chk", scope: !872, file: !872, line: 93, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!872 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!873 = !DISubroutineType(types: !874)
!874 = !{!117, !875, !117, !876, null}
!875 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !260)
!876 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!877 = !DISubprogram(name: "__printf_chk", scope: !872, file: !872, line: 95, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!878 = !DISubroutineType(types: !879)
!879 = !{!117, !117, !876, null}
!880 = !DILocation(line: 0, scope: !70)
!881 = !DILocation(line: 581, column: 7, scope: !245)
!882 = !{!883, !883, i64 0}
!883 = !{!"int", !827, i64 0}
!884 = !DILocation(line: 581, column: 19, scope: !245)
!885 = !DILocation(line: 581, column: 7, scope: !70)
!886 = !DILocation(line: 585, column: 26, scope: !244)
!887 = !DILocation(line: 0, scope: !244)
!888 = !DILocation(line: 586, column: 23, scope: !244)
!889 = !DILocation(line: 586, column: 28, scope: !244)
!890 = !DILocation(line: 586, column: 32, scope: !244)
!891 = !{!827, !827, i64 0}
!892 = !DILocation(line: 586, column: 38, scope: !244)
!893 = !DILocalVariable(name: "__s1", arg: 1, scope: !894, file: !895, line: 1359, type: !74)
!894 = distinct !DISubprogram(name: "streq", scope: !895, file: !895, line: 1359, type: !896, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !898)
!895 = !DIFile(filename: "./lib/string.h", directory: "/src")
!896 = !DISubroutineType(types: !897)
!897 = !{!247, !74, !74}
!898 = !{!893, !899}
!899 = !DILocalVariable(name: "__s2", arg: 2, scope: !894, file: !895, line: 1359, type: !74)
!900 = !DILocation(line: 0, scope: !894, inlinedAt: !901)
!901 = distinct !DILocation(line: 586, column: 41, scope: !244)
!902 = !DILocation(line: 1361, column: 11, scope: !894, inlinedAt: !901)
!903 = !DILocation(line: 1361, column: 10, scope: !894, inlinedAt: !901)
!904 = !DILocation(line: 586, column: 19, scope: !244)
!905 = !DILocation(line: 587, column: 5, scope: !244)
!906 = !DILocation(line: 588, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !70, file: !71, line: 588, column: 7)
!908 = !DILocation(line: 588, column: 7, scope: !70)
!909 = !DILocation(line: 590, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !71, line: 589, column: 5)
!911 = !DILocation(line: 591, column: 7, scope: !910)
!912 = !DILocation(line: 595, column: 37, scope: !70)
!913 = !DILocation(line: 595, column: 35, scope: !70)
!914 = !DILocation(line: 596, column: 29, scope: !70)
!915 = !DILocation(line: 597, column: 8, scope: !253)
!916 = !DILocation(line: 597, column: 7, scope: !70)
!917 = !DILocation(line: 604, column: 24, scope: !252)
!918 = !DILocation(line: 604, column: 12, scope: !253)
!919 = !DILocation(line: 0, scope: !251)
!920 = !DILocation(line: 610, column: 16, scope: !251)
!921 = !DILocation(line: 610, column: 7, scope: !251)
!922 = !DILocation(line: 611, column: 21, scope: !251)
!923 = !{!924, !924, i64 0}
!924 = !{!"short", !827, i64 0}
!925 = !DILocation(line: 611, column: 19, scope: !251)
!926 = !DILocation(line: 611, column: 16, scope: !251)
!927 = !DILocation(line: 610, column: 30, scope: !251)
!928 = distinct !{!928, !921, !922, !929}
!929 = !{!"llvm.loop.mustprogress"}
!930 = !DILocation(line: 612, column: 18, scope: !931)
!931 = distinct !DILexicalBlock(scope: !251, file: !71, line: 612, column: 11)
!932 = !DILocation(line: 612, column: 11, scope: !251)
!933 = !DILocation(line: 618, column: 5, scope: !251)
!934 = !DILocation(line: 620, column: 23, scope: !70)
!935 = !DILocation(line: 625, column: 39, scope: !70)
!936 = !DILocation(line: 626, column: 3, scope: !70)
!937 = !DILocation(line: 626, column: 10, scope: !70)
!938 = !DILocation(line: 626, column: 21, scope: !70)
!939 = !DILocation(line: 628, column: 44, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !71, line: 628, column: 11)
!941 = distinct !DILexicalBlock(scope: !70, file: !71, line: 627, column: 5)
!942 = !DILocation(line: 628, column: 32, scope: !940)
!943 = !DILocation(line: 628, column: 49, scope: !940)
!944 = !DILocation(line: 628, column: 11, scope: !941)
!945 = !DILocation(line: 630, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !71, line: 630, column: 11)
!947 = !DILocation(line: 630, column: 11, scope: !941)
!948 = !DILocation(line: 632, column: 26, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !71, line: 632, column: 15)
!950 = distinct !DILexicalBlock(scope: !946, file: !71, line: 631, column: 9)
!951 = !DILocation(line: 632, column: 34, scope: !949)
!952 = !DILocation(line: 632, column: 37, scope: !949)
!953 = !DILocation(line: 632, column: 15, scope: !950)
!954 = !DILocation(line: 636, column: 16, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !71, line: 636, column: 15)
!956 = !DILocation(line: 636, column: 29, scope: !955)
!957 = !DILocation(line: 640, column: 16, scope: !941)
!958 = distinct !{!958, !936, !959, !929}
!959 = !DILocation(line: 641, column: 5, scope: !70)
!960 = !DILocation(line: 644, column: 3, scope: !70)
!961 = !DILocation(line: 0, scope: !894, inlinedAt: !962)
!962 = distinct !DILocation(line: 648, column: 31, scope: !70)
!963 = !DILocation(line: 0, scope: !894, inlinedAt: !964)
!964 = distinct !DILocation(line: 649, column: 31, scope: !70)
!965 = !DILocation(line: 0, scope: !894, inlinedAt: !966)
!966 = distinct !DILocation(line: 650, column: 31, scope: !70)
!967 = !DILocation(line: 0, scope: !894, inlinedAt: !968)
!968 = distinct !DILocation(line: 651, column: 31, scope: !70)
!969 = !DILocation(line: 0, scope: !894, inlinedAt: !970)
!970 = distinct !DILocation(line: 652, column: 31, scope: !70)
!971 = !DILocation(line: 0, scope: !894, inlinedAt: !972)
!972 = distinct !DILocation(line: 653, column: 31, scope: !70)
!973 = !DILocation(line: 0, scope: !894, inlinedAt: !974)
!974 = distinct !DILocation(line: 654, column: 31, scope: !70)
!975 = !DILocation(line: 0, scope: !894, inlinedAt: !976)
!976 = distinct !DILocation(line: 655, column: 31, scope: !70)
!977 = !DILocation(line: 0, scope: !894, inlinedAt: !978)
!978 = distinct !DILocation(line: 656, column: 31, scope: !70)
!979 = !DILocation(line: 0, scope: !894, inlinedAt: !980)
!980 = distinct !DILocation(line: 657, column: 31, scope: !70)
!981 = !DILocation(line: 663, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !70, file: !71, line: 663, column: 7)
!983 = !DILocation(line: 664, column: 7, scope: !982)
!984 = !DILocation(line: 664, column: 10, scope: !982)
!985 = !DILocation(line: 663, column: 7, scope: !70)
!986 = !DILocation(line: 669, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !982, file: !71, line: 665, column: 5)
!988 = !DILocation(line: 671, column: 5, scope: !987)
!989 = !DILocation(line: 676, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !982, file: !71, line: 673, column: 5)
!991 = !DILocation(line: 679, column: 3, scope: !70)
!992 = !DILocation(line: 683, column: 3, scope: !70)
!993 = !DILocation(line: 686, column: 3, scope: !70)
!994 = !DILocation(line: 688, column: 3, scope: !70)
!995 = !DILocation(line: 691, column: 3, scope: !70)
!996 = !DILocation(line: 695, column: 3, scope: !70)
!997 = !DILocation(line: 696, column: 1, scope: !70)
!998 = !DISubprogram(name: "setlocale", scope: !999, file: !999, line: 122, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!999 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!124, !117, !74}
!1002 = !DISubprogram(name: "strncmp", scope: !1003, file: !1003, line: 159, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1003 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!117, !74, !74, !119}
!1006 = !DISubprogram(name: "fputs_unlocked", scope: !1007, file: !1007, line: 691, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1007 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!117, !876, !875}
!1010 = !DISubprogram(name: "exit", scope: !1011, file: !1011, line: 624, type: !815, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1011 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1012 = !DISubprogram(name: "getenv", scope: !1011, file: !1011, line: 641, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!124, !74}
!1015 = !DISubprogram(name: "strcmp", scope: !1003, file: !1003, line: 156, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!117, !74, !74}
!1018 = !DISubprogram(name: "strspn", scope: !1003, file: !1003, line: 297, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!121, !74, !74}
!1021 = !DISubprogram(name: "strchr", scope: !1003, file: !1003, line: 246, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!124, !74, !117}
!1024 = !DISubprogram(name: "__ctype_b_loc", scope: !87, file: !87, line: 79, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1030 = !DISubprogram(name: "strcspn", scope: !1003, file: !1003, line: 293, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1031 = !DISubprogram(name: "fwrite_unlocked", scope: !1007, file: !1007, line: 704, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!119, !1034, !119, !119, !875}
!1034 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1037 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 117, type: !1038, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!117, !117, !123}
!1040 = !{!1041, !1042}
!1041 = !DILocalVariable(name: "argc", arg: 1, scope: !1037, file: !2, line: 117, type: !117)
!1042 = !DILocalVariable(name: "argv", arg: 2, scope: !1037, file: !2, line: 117, type: !123)
!1043 = !DILocation(line: 0, scope: !1037)
!1044 = !DILocation(line: 120, column: 21, scope: !1037)
!1045 = !DILocation(line: 120, column: 3, scope: !1037)
!1046 = !DILocation(line: 121, column: 3, scope: !1037)
!1047 = !DILocation(line: 122, column: 3, scope: !1037)
!1048 = !DILocation(line: 123, column: 3, scope: !1037)
!1049 = !DILocation(line: 125, column: 3, scope: !1037)
!1050 = !DILocation(line: 128, column: 36, scope: !1037)
!1051 = !DILocation(line: 128, column: 58, scope: !1037)
!1052 = !DILocation(line: 127, column: 3, scope: !1037)
!1053 = !DILocation(line: 131, column: 18, scope: !1037)
!1054 = !DILocation(line: 131, column: 16, scope: !1037)
!1055 = !DILocation(line: 131, column: 3, scope: !1037)
!1056 = !DILocation(line: 134, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 132, column: 5)
!1058 = !DILocation(line: 135, column: 7, scope: !1057)
!1059 = !DILocation(line: 138, column: 14, scope: !1057)
!1060 = !DILocation(line: 138, column: 7, scope: !1057)
!1061 = !DILocation(line: 139, column: 7, scope: !1057)
!1062 = !DILocation(line: 142, column: 7, scope: !1057)
!1063 = !DILocation(line: 143, column: 7, scope: !1057)
!1064 = !DILocation(line: 146, column: 3, scope: !1037)
!1065 = !DISubprogram(name: "bindtextdomain", scope: !867, file: !867, line: 86, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!124, !74, !74}
!1068 = !DISubprogram(name: "textdomain", scope: !867, file: !867, line: 82, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1069 = !DISubprogram(name: "atexit", scope: !1011, file: !1011, line: 602, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!117, !389}
!1072 = distinct !DISubprogram(name: "users", scope: !2, file: !2, line: 82, type: !1073, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1075)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !74, !117}
!1075 = !{!1076, !1077, !1078, !1079}
!1076 = !DILocalVariable(name: "filename", arg: 1, scope: !1072, file: !2, line: 82, type: !74)
!1077 = !DILocalVariable(name: "options", arg: 2, scope: !1072, file: !2, line: 82, type: !117)
!1078 = !DILocalVariable(name: "n_users", scope: !1072, file: !2, line: 84, type: !770)
!1079 = !DILocalVariable(name: "utmp_buf", scope: !1072, file: !2, line: 85, type: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !79, line: 92, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !79, line: 65, size: 576, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1096, !1099, !1100, !1101}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !1082, file: !79, line: 69, baseType: !124, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !1082, file: !79, line: 70, baseType: !124, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !1082, file: !79, line: 71, baseType: !124, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !1082, file: !79, line: 72, baseType: !124, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !1082, file: !79, line: 74, baseType: !1089, size: 128, offset: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1090, line: 11, size: 128, elements: !1091)
!1090 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1091 = !{!1092, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1089, file: !1090, line: 16, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !287, line: 160, baseType: !288)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1089, file: !1090, line: 21, baseType: !1095, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !287, line: 197, baseType: !288)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !1082, file: !79, line: 75, baseType: !1097, size: 32, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1098, line: 97, baseType: !720)
!1098 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !1082, file: !79, line: 76, baseType: !1097, size: 32, offset: 416)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !1082, file: !79, line: 77, baseType: !718, size: 16, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !1082, file: !79, line: 79, baseType: !1102, size: 64, offset: 480)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !79, line: 79, size: 64, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !1102, file: !79, line: 79, baseType: !117, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !1102, file: !79, line: 79, baseType: !117, size: 32, offset: 32)
!1106 = !DILocation(line: 0, scope: !1072)
!1107 = !DILocation(line: 84, column: 3, scope: !1072)
!1108 = !DILocation(line: 85, column: 3, scope: !1072)
!1109 = !DILocation(line: 86, column: 11, scope: !1072)
!1110 = !DILocation(line: 87, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 87, column: 7)
!1112 = !DILocation(line: 87, column: 58, scope: !1111)
!1113 = !DILocation(line: 87, column: 7, scope: !1072)
!1114 = !DILocation(line: 88, column: 5, scope: !1111)
!1115 = !DILocation(line: 90, column: 23, scope: !1072)
!1116 = !{!1117, !1117, i64 0}
!1117 = !{!"long", !827, i64 0}
!1118 = !DILocation(line: 90, column: 32, scope: !1072)
!1119 = !DILocalVariable(name: "n", arg: 1, scope: !1120, file: !2, line: 45, type: !770)
!1120 = distinct !DISubprogram(name: "list_entries_users", scope: !2, file: !2, line: 45, type: !1121, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1125)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !770, !1123}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1125 = !{!1119, !1126, !1127, !1128, !1129, !1133, !1135, !1138}
!1126 = !DILocalVariable(name: "this", arg: 2, scope: !1120, file: !2, line: 45, type: !1123)
!1127 = !DILocalVariable(name: "u", scope: !1120, file: !2, line: 47, type: !123)
!1128 = !DILocalVariable(name: "n_entries", scope: !1120, file: !2, line: 48, type: !770)
!1129 = !DILocalVariable(name: "trimmed_name", scope: !1130, file: !2, line: 54, type: !124)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 53, column: 9)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 52, column: 11)
!1132 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 51, column: 5)
!1133 = !DILocalVariable(name: "i", scope: !1134, file: !2, line: 66, type: !770)
!1134 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 66, column: 3)
!1135 = !DILocalVariable(name: "c", scope: !1136, file: !2, line: 68, type: !4)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 67, column: 5)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 66, column: 3)
!1138 = !DILocalVariable(name: "i", scope: !1139, file: !2, line: 73, type: !770)
!1139 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 73, column: 3)
!1140 = !DILocation(line: 0, scope: !1120, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 90, column: 3, scope: !1072)
!1142 = !DILocation(line: 47, column: 14, scope: !1120, inlinedAt: !1141)
!1143 = !DILocation(line: 50, column: 3, scope: !1120, inlinedAt: !1141)
!1144 = !DILocation(line: 64, column: 3, scope: !1120, inlinedAt: !1141)
!1145 = !DILocation(line: 0, scope: !1134, inlinedAt: !1141)
!1146 = !DILocation(line: 66, column: 3, scope: !1134, inlinedAt: !1141)
!1147 = !DILocation(line: 50, column: 11, scope: !1120, inlinedAt: !1141)
!1148 = !DILocation(line: 52, column: 11, scope: !1131, inlinedAt: !1141)
!1149 = !{!1150, !826, i64 0}
!1150 = !{!"gl_utmp", !826, i64 0, !826, i64 8, !826, i64 16, !826, i64 24, !1151, i64 32, !883, i64 48, !883, i64 52, !924, i64 56, !1152, i64 60}
!1151 = !{!"timespec", !1117, i64 0, !1117, i64 8}
!1152 = !{!"", !883, i64 0, !883, i64 4}
!1153 = !{!1150, !924, i64 56}
!1154 = !DILocation(line: 52, column: 11, scope: !1132, inlinedAt: !1141)
!1155 = !DILocation(line: 56, column: 26, scope: !1130, inlinedAt: !1141)
!1156 = !DILocation(line: 0, scope: !1130, inlinedAt: !1141)
!1157 = !DILocation(line: 58, column: 11, scope: !1130, inlinedAt: !1141)
!1158 = !DILocation(line: 58, column: 24, scope: !1130, inlinedAt: !1141)
!1159 = !DILocation(line: 59, column: 11, scope: !1130, inlinedAt: !1141)
!1160 = !DILocation(line: 60, column: 9, scope: !1130, inlinedAt: !1141)
!1161 = !DILocation(line: 61, column: 11, scope: !1132, inlinedAt: !1141)
!1162 = distinct !{!1162, !1143, !1163, !929}
!1163 = !DILocation(line: 62, column: 5, scope: !1120, inlinedAt: !1141)
!1164 = !DILocation(line: 66, column: 23, scope: !1137, inlinedAt: !1141)
!1165 = !DILocation(line: 68, column: 19, scope: !1136, inlinedAt: !1141)
!1166 = !DILocation(line: 0, scope: !1136, inlinedAt: !1141)
!1167 = !DILocation(line: 69, column: 7, scope: !1136, inlinedAt: !1141)
!1168 = !DILocation(line: 68, column: 16, scope: !1136, inlinedAt: !1141)
!1169 = !DILocalVariable(name: "__c", arg: 1, scope: !1170, file: !1171, line: 108, type: !117)
!1170 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1171, file: !1171, line: 108, type: !1172, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1174)
!1171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!117, !117}
!1174 = !{!1169}
!1175 = !DILocation(line: 0, scope: !1170, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 70, column: 7, scope: !1136, inlinedAt: !1141)
!1177 = !DILocation(line: 110, column: 10, scope: !1170, inlinedAt: !1176)
!1178 = !{!1179, !826, i64 40}
!1179 = !{!"_IO_FILE", !883, i64 0, !826, i64 8, !826, i64 16, !826, i64 24, !826, i64 32, !826, i64 40, !826, i64 48, !826, i64 56, !826, i64 64, !826, i64 72, !826, i64 80, !826, i64 88, !826, i64 96, !826, i64 104, !883, i64 112, !883, i64 116, !1117, i64 120, !924, i64 128, !827, i64 130, !827, i64 131, !826, i64 136, !1117, i64 144, !826, i64 152, !826, i64 160, !826, i64 168, !826, i64 176, !1117, i64 184, !883, i64 192, !827, i64 196}
!1180 = !{!1179, !826, i64 48}
!1181 = !{!"branch_weights", i32 2000, i32 1}
!1182 = !DILocation(line: 66, column: 37, scope: !1137, inlinedAt: !1141)
!1183 = distinct !{!1183, !1146, !1184, !929}
!1184 = !DILocation(line: 71, column: 5, scope: !1134, inlinedAt: !1141)
!1185 = !DILocation(line: 0, scope: !1139, inlinedAt: !1141)
!1186 = !DILocation(line: 74, column: 11, scope: !1187, inlinedAt: !1141)
!1187 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 73, column: 3)
!1188 = !DILocation(line: 74, column: 5, scope: !1187, inlinedAt: !1141)
!1189 = !DILocation(line: 73, column: 37, scope: !1187, inlinedAt: !1141)
!1190 = !DILocation(line: 73, column: 23, scope: !1187, inlinedAt: !1141)
!1191 = !DILocation(line: 73, column: 3, scope: !1139, inlinedAt: !1141)
!1192 = distinct !{!1192, !1191, !1193, !929}
!1193 = !DILocation(line: 74, column: 15, scope: !1139, inlinedAt: !1141)
!1194 = !DILocation(line: 75, column: 3, scope: !1120, inlinedAt: !1141)
!1195 = !DILocation(line: 92, column: 9, scope: !1072)
!1196 = !DILocation(line: 92, column: 3, scope: !1072)
!1197 = !DILocation(line: 93, column: 1, scope: !1072)
!1198 = !DISubprogram(name: "__errno_location", scope: !1199, file: !1199, line: 37, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1199 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!413}
!1202 = distinct !DISubprogram(name: "userid_compare", scope: !2, file: !2, line: 37, type: !1203, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!117, !1035, !1035}
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DILocalVariable(name: "v_a", arg: 1, scope: !1202, file: !2, line: 37, type: !1035)
!1207 = !DILocalVariable(name: "v_b", arg: 2, scope: !1202, file: !2, line: 37, type: !1035)
!1208 = !DILocalVariable(name: "a", scope: !1202, file: !2, line: 39, type: !123)
!1209 = !DILocalVariable(name: "b", scope: !1202, file: !2, line: 40, type: !123)
!1210 = !DILocation(line: 0, scope: !1202)
!1211 = !DILocation(line: 41, column: 18, scope: !1202)
!1212 = !DILocation(line: 41, column: 22, scope: !1202)
!1213 = !DILocation(line: 41, column: 10, scope: !1202)
!1214 = !DILocation(line: 41, column: 3, scope: !1202)
!1215 = !DISubprogram(name: "qsort", scope: !1011, file: !1011, line: 838, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !116, !119, !119, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1011, line: 816, baseType: !1219)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1220 = !DISubprogram(name: "__overflow", scope: !1007, file: !1007, line: 886, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!117, !260, !117}
!1223 = !DISubprogram(name: "free", scope: !1011, file: !1011, line: 555, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !116}
!1226 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !328, file: !328, line: 50, type: !836, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1227)
!1227 = !{!1228}
!1228 = !DILocalVariable(name: "file", arg: 1, scope: !1226, file: !328, line: 50, type: !74)
!1229 = !DILocation(line: 0, scope: !1226)
!1230 = !DILocation(line: 52, column: 13, scope: !1226)
!1231 = !DILocation(line: 53, column: 1, scope: !1226)
!1232 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !328, file: !328, line: 87, type: !1233, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !247}
!1235 = !{!1236}
!1236 = !DILocalVariable(name: "ignore", arg: 1, scope: !1232, file: !328, line: 87, type: !247)
!1237 = !DILocation(line: 0, scope: !1232)
!1238 = !DILocation(line: 89, column: 16, scope: !1232)
!1239 = !{!1240, !1240, i64 0}
!1240 = !{!"_Bool", !827, i64 0}
!1241 = !DILocation(line: 90, column: 1, scope: !1232)
!1242 = distinct !DISubprogram(name: "close_stdout", scope: !328, file: !328, line: 116, type: !390, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1243)
!1243 = !{!1244}
!1244 = !DILocalVariable(name: "write_error", scope: !1245, file: !328, line: 121, type: !74)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !328, line: 120, column: 5)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !328, line: 118, column: 7)
!1247 = !DILocation(line: 118, column: 21, scope: !1246)
!1248 = !DILocation(line: 118, column: 7, scope: !1246)
!1249 = !DILocation(line: 118, column: 29, scope: !1246)
!1250 = !DILocation(line: 119, column: 7, scope: !1246)
!1251 = !DILocation(line: 119, column: 12, scope: !1246)
!1252 = !{i8 0, i8 2}
!1253 = !DILocation(line: 119, column: 25, scope: !1246)
!1254 = !DILocation(line: 119, column: 28, scope: !1246)
!1255 = !DILocation(line: 119, column: 34, scope: !1246)
!1256 = !DILocation(line: 118, column: 7, scope: !1242)
!1257 = !DILocation(line: 121, column: 33, scope: !1245)
!1258 = !DILocation(line: 0, scope: !1245)
!1259 = !DILocation(line: 122, column: 11, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1245, file: !328, line: 122, column: 11)
!1261 = !DILocation(line: 0, scope: !1260)
!1262 = !DILocation(line: 122, column: 11, scope: !1245)
!1263 = !DILocation(line: 123, column: 9, scope: !1260)
!1264 = !DILocation(line: 126, column: 9, scope: !1260)
!1265 = !DILocation(line: 128, column: 14, scope: !1245)
!1266 = !DILocation(line: 128, column: 7, scope: !1245)
!1267 = !DILocation(line: 133, column: 42, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1242, file: !328, line: 133, column: 7)
!1269 = !DILocation(line: 133, column: 28, scope: !1268)
!1270 = !DILocation(line: 133, column: 50, scope: !1268)
!1271 = !DILocation(line: 133, column: 7, scope: !1242)
!1272 = !DILocation(line: 134, column: 12, scope: !1268)
!1273 = !DILocation(line: 134, column: 5, scope: !1268)
!1274 = !DILocation(line: 135, column: 1, scope: !1242)
!1275 = !DISubprogram(name: "_exit", scope: !1276, file: !1276, line: 624, type: !815, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1276 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1277 = distinct !DISubprogram(name: "verror", scope: !343, file: !343, line: 251, type: !1278, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !117, !117, !74, !353}
!1280 = !{!1281, !1282, !1283, !1284}
!1281 = !DILocalVariable(name: "status", arg: 1, scope: !1277, file: !343, line: 251, type: !117)
!1282 = !DILocalVariable(name: "errnum", arg: 2, scope: !1277, file: !343, line: 251, type: !117)
!1283 = !DILocalVariable(name: "message", arg: 3, scope: !1277, file: !343, line: 251, type: !74)
!1284 = !DILocalVariable(name: "args", arg: 4, scope: !1277, file: !343, line: 251, type: !353)
!1285 = !DILocation(line: 0, scope: !1277)
!1286 = !DILocation(line: 261, column: 3, scope: !1277)
!1287 = !DILocation(line: 265, column: 7, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1277, file: !343, line: 265, column: 7)
!1289 = !DILocation(line: 265, column: 7, scope: !1277)
!1290 = !DILocation(line: 266, column: 5, scope: !1288)
!1291 = !DILocation(line: 272, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !343, line: 268, column: 5)
!1293 = !DILocation(line: 276, column: 3, scope: !1277)
!1294 = !DILocation(line: 282, column: 1, scope: !1277)
!1295 = distinct !DISubprogram(name: "flush_stdout", scope: !343, file: !343, line: 163, type: !390, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1296)
!1296 = !{!1297}
!1297 = !DILocalVariable(name: "stdout_fd", scope: !1295, file: !343, line: 166, type: !117)
!1298 = !DILocation(line: 0, scope: !1295)
!1299 = !DILocalVariable(name: "fd", arg: 1, scope: !1300, file: !343, line: 145, type: !117)
!1300 = distinct !DISubprogram(name: "is_open", scope: !343, file: !343, line: 145, type: !1172, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1301)
!1301 = !{!1299}
!1302 = !DILocation(line: 0, scope: !1300, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 182, column: 25, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1295, file: !343, line: 182, column: 7)
!1305 = !DILocation(line: 157, column: 15, scope: !1300, inlinedAt: !1303)
!1306 = !DILocation(line: 157, column: 12, scope: !1300, inlinedAt: !1303)
!1307 = !DILocation(line: 182, column: 7, scope: !1295)
!1308 = !DILocation(line: 184, column: 5, scope: !1304)
!1309 = !DILocation(line: 185, column: 1, scope: !1295)
!1310 = distinct !DISubprogram(name: "error_tail", scope: !343, file: !343, line: 219, type: !1278, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1311)
!1311 = !{!1312, !1313, !1314, !1315}
!1312 = !DILocalVariable(name: "status", arg: 1, scope: !1310, file: !343, line: 219, type: !117)
!1313 = !DILocalVariable(name: "errnum", arg: 2, scope: !1310, file: !343, line: 219, type: !117)
!1314 = !DILocalVariable(name: "message", arg: 3, scope: !1310, file: !343, line: 219, type: !74)
!1315 = !DILocalVariable(name: "args", arg: 4, scope: !1310, file: !343, line: 219, type: !353)
!1316 = !DILocation(line: 0, scope: !1310)
!1317 = !DILocation(line: 229, column: 13, scope: !1310)
!1318 = !DILocalVariable(name: "__stream", arg: 1, scope: !1319, file: !872, line: 132, type: !1322)
!1319 = distinct !DISubprogram(name: "vfprintf", scope: !872, file: !872, line: 132, type: !1320, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1357)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!117, !1322, !876, !353}
!1322 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1325, file: !264, line: 51, baseType: !117, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1325, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1325, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1325, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1325, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1325, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1325, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1325, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1325, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1325, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1325, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1325, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1325, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1325, file: !264, line: 70, baseType: !1341, size: 64, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1325, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1325, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1325, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1325, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1325, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1325, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1325, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1325, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1325, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1325, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1325, file: !264, line: 93, baseType: !1341, size: 64, offset: 1344)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1325, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1325, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1325, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1325, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!1357 = !{!1318, !1358, !1359}
!1358 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1319, file: !872, line: 133, type: !876)
!1359 = !DILocalVariable(name: "__ap", arg: 3, scope: !1319, file: !872, line: 133, type: !353)
!1360 = !DILocation(line: 0, scope: !1319, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 229, column: 3, scope: !1310)
!1362 = !DILocation(line: 135, column: 10, scope: !1319, inlinedAt: !1361)
!1363 = !DILocation(line: 232, column: 3, scope: !1310)
!1364 = !DILocation(line: 233, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1310, file: !343, line: 233, column: 7)
!1366 = !DILocation(line: 233, column: 7, scope: !1310)
!1367 = !DILocalVariable(name: "errnum", arg: 1, scope: !1368, file: !343, line: 188, type: !117)
!1368 = distinct !DISubprogram(name: "print_errno_message", scope: !343, file: !343, line: 188, type: !815, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1369)
!1369 = !{!1367, !1370, !1371}
!1370 = !DILocalVariable(name: "s", scope: !1368, file: !343, line: 190, type: !74)
!1371 = !DILocalVariable(name: "errbuf", scope: !1368, file: !343, line: 193, type: !1372)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 1024)
!1375 = !DILocation(line: 0, scope: !1368, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 234, column: 5, scope: !1365)
!1377 = !DILocation(line: 193, column: 3, scope: !1368, inlinedAt: !1376)
!1378 = !DILocation(line: 193, column: 8, scope: !1368, inlinedAt: !1376)
!1379 = !DILocation(line: 195, column: 7, scope: !1368, inlinedAt: !1376)
!1380 = !DILocation(line: 207, column: 9, scope: !1381, inlinedAt: !1376)
!1381 = distinct !DILexicalBlock(scope: !1368, file: !343, line: 207, column: 7)
!1382 = !DILocation(line: 207, column: 7, scope: !1368, inlinedAt: !1376)
!1383 = !DILocation(line: 208, column: 9, scope: !1381, inlinedAt: !1376)
!1384 = !DILocation(line: 208, column: 5, scope: !1381, inlinedAt: !1376)
!1385 = !DILocation(line: 214, column: 3, scope: !1368, inlinedAt: !1376)
!1386 = !DILocation(line: 216, column: 1, scope: !1368, inlinedAt: !1376)
!1387 = !DILocation(line: 234, column: 5, scope: !1365)
!1388 = !DILocation(line: 238, column: 3, scope: !1310)
!1389 = !DILocalVariable(name: "__c", arg: 1, scope: !1390, file: !1171, line: 101, type: !117)
!1390 = distinct !DISubprogram(name: "putc_unlocked", scope: !1171, file: !1171, line: 101, type: !1391, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!117, !117, !1323}
!1393 = !{!1389, !1394}
!1394 = !DILocalVariable(name: "__stream", arg: 2, scope: !1390, file: !1171, line: 101, type: !1323)
!1395 = !DILocation(line: 0, scope: !1390, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 238, column: 3, scope: !1310)
!1397 = !DILocation(line: 103, column: 10, scope: !1390, inlinedAt: !1396)
!1398 = !DILocation(line: 240, column: 3, scope: !1310)
!1399 = !DILocation(line: 241, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1310, file: !343, line: 241, column: 7)
!1401 = !DILocation(line: 241, column: 7, scope: !1310)
!1402 = !DILocation(line: 242, column: 5, scope: !1400)
!1403 = !DILocation(line: 243, column: 1, scope: !1310)
!1404 = !DISubprogram(name: "__vfprintf_chk", scope: !872, file: !872, line: 96, type: !1405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!117, !1322, !117, !876, !353}
!1407 = !DISubprogram(name: "strerror_r", scope: !1003, file: !1003, line: 444, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!124, !117, !124, !119}
!1410 = !DISubprogram(name: "fflush_unlocked", scope: !1007, file: !1007, line: 239, type: !1411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!117, !1323}
!1413 = !DISubprogram(name: "fcntl", scope: !1414, file: !1414, line: 149, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1414 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!117, !117, !117, null}
!1417 = distinct !DISubprogram(name: "error", scope: !343, file: !343, line: 285, type: !1418, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !117, !117, !74, null}
!1420 = !{!1421, !1422, !1423, !1424}
!1421 = !DILocalVariable(name: "status", arg: 1, scope: !1417, file: !343, line: 285, type: !117)
!1422 = !DILocalVariable(name: "errnum", arg: 2, scope: !1417, file: !343, line: 285, type: !117)
!1423 = !DILocalVariable(name: "message", arg: 3, scope: !1417, file: !343, line: 285, type: !74)
!1424 = !DILocalVariable(name: "ap", scope: !1417, file: !343, line: 287, type: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1007, line: 52, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1427, line: 14, baseType: !1428)
!1427 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !357, baseType: !1429)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 192, elements: !42)
!1430 = !DILocation(line: 0, scope: !1417)
!1431 = !DILocation(line: 287, column: 3, scope: !1417)
!1432 = !DILocation(line: 287, column: 11, scope: !1417)
!1433 = !DILocation(line: 288, column: 3, scope: !1417)
!1434 = !DILocation(line: 289, column: 3, scope: !1417)
!1435 = !DILocation(line: 290, column: 3, scope: !1417)
!1436 = !DILocation(line: 291, column: 1, scope: !1417)
!1437 = !DILocation(line: 0, scope: !350)
!1438 = !DILocation(line: 302, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !350, file: !343, line: 302, column: 7)
!1440 = !DILocation(line: 302, column: 7, scope: !350)
!1441 = !DILocation(line: 307, column: 11, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !343, line: 307, column: 11)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !343, line: 303, column: 5)
!1444 = !DILocation(line: 307, column: 27, scope: !1442)
!1445 = !DILocation(line: 308, column: 11, scope: !1442)
!1446 = !DILocation(line: 308, column: 28, scope: !1442)
!1447 = !DILocation(line: 308, column: 25, scope: !1442)
!1448 = !DILocation(line: 309, column: 15, scope: !1442)
!1449 = !DILocation(line: 309, column: 33, scope: !1442)
!1450 = !DILocation(line: 310, column: 19, scope: !1442)
!1451 = !DILocation(line: 311, column: 22, scope: !1442)
!1452 = !DILocation(line: 311, column: 56, scope: !1442)
!1453 = !DILocation(line: 307, column: 11, scope: !1443)
!1454 = !DILocation(line: 316, column: 21, scope: !1443)
!1455 = !DILocation(line: 317, column: 23, scope: !1443)
!1456 = !DILocation(line: 318, column: 5, scope: !1443)
!1457 = !DILocation(line: 327, column: 3, scope: !350)
!1458 = !DILocation(line: 331, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !350, file: !343, line: 331, column: 7)
!1460 = !DILocation(line: 331, column: 7, scope: !350)
!1461 = !DILocation(line: 332, column: 5, scope: !1459)
!1462 = !DILocation(line: 338, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !343, line: 334, column: 5)
!1464 = !DILocation(line: 346, column: 3, scope: !350)
!1465 = !DILocation(line: 350, column: 3, scope: !350)
!1466 = !DILocation(line: 356, column: 1, scope: !350)
!1467 = distinct !DISubprogram(name: "error_at_line", scope: !343, file: !343, line: 359, type: !1468, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !117, !117, !74, !80, !74, null}
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476}
!1471 = !DILocalVariable(name: "status", arg: 1, scope: !1467, file: !343, line: 359, type: !117)
!1472 = !DILocalVariable(name: "errnum", arg: 2, scope: !1467, file: !343, line: 359, type: !117)
!1473 = !DILocalVariable(name: "file_name", arg: 3, scope: !1467, file: !343, line: 359, type: !74)
!1474 = !DILocalVariable(name: "line_number", arg: 4, scope: !1467, file: !343, line: 360, type: !80)
!1475 = !DILocalVariable(name: "message", arg: 5, scope: !1467, file: !343, line: 360, type: !74)
!1476 = !DILocalVariable(name: "ap", scope: !1467, file: !343, line: 362, type: !1425)
!1477 = !DILocation(line: 0, scope: !1467)
!1478 = !DILocation(line: 362, column: 3, scope: !1467)
!1479 = !DILocation(line: 362, column: 11, scope: !1467)
!1480 = !DILocation(line: 363, column: 3, scope: !1467)
!1481 = !DILocation(line: 364, column: 3, scope: !1467)
!1482 = !DILocation(line: 366, column: 3, scope: !1467)
!1483 = !DILocation(line: 367, column: 1, scope: !1467)
!1484 = distinct !DISubprogram(name: "getprogname", scope: !708, file: !708, line: 54, type: !1485, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !870)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!74}
!1487 = !DILocation(line: 58, column: 10, scope: !1484)
!1488 = !DILocation(line: 58, column: 3, scope: !1484)
!1489 = distinct !DISubprogram(name: "parse_long_options", scope: !394, file: !394, line: 45, type: !1490, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !1493)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !117, !123, !74, !74, !74, !1492, null}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1504}
!1494 = !DILocalVariable(name: "argc", arg: 1, scope: !1489, file: !394, line: 45, type: !117)
!1495 = !DILocalVariable(name: "argv", arg: 2, scope: !1489, file: !394, line: 46, type: !123)
!1496 = !DILocalVariable(name: "command_name", arg: 3, scope: !1489, file: !394, line: 47, type: !74)
!1497 = !DILocalVariable(name: "package", arg: 4, scope: !1489, file: !394, line: 48, type: !74)
!1498 = !DILocalVariable(name: "version", arg: 5, scope: !1489, file: !394, line: 49, type: !74)
!1499 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1489, file: !394, line: 50, type: !1492)
!1500 = !DILocalVariable(name: "saved_opterr", scope: !1489, file: !394, line: 53, type: !117)
!1501 = !DILocalVariable(name: "c", scope: !1502, file: !394, line: 60, type: !117)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !394, line: 59, column: 5)
!1503 = distinct !DILexicalBlock(scope: !1489, file: !394, line: 58, column: 7)
!1504 = !DILocalVariable(name: "authors", scope: !1505, file: !394, line: 71, type: !1509)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !394, line: 70, column: 15)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !394, line: 64, column: 13)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !394, line: 62, column: 9)
!1508 = distinct !DILexicalBlock(scope: !1502, file: !394, line: 61, column: 11)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1007, line: 52, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1427, line: 14, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1512, baseType: !1513)
!1512 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, size: 192, elements: !42)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1514, file: !1512, line: 71, baseType: !80, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1514, file: !1512, line: 71, baseType: !80, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1514, file: !1512, line: 71, baseType: !116, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1514, file: !1512, line: 71, baseType: !116, size: 64, offset: 128)
!1520 = !DILocation(line: 0, scope: !1489)
!1521 = !DILocation(line: 53, column: 22, scope: !1489)
!1522 = !DILocation(line: 56, column: 10, scope: !1489)
!1523 = !DILocation(line: 58, column: 12, scope: !1503)
!1524 = !DILocation(line: 58, column: 7, scope: !1489)
!1525 = !DILocation(line: 60, column: 15, scope: !1502)
!1526 = !DILocation(line: 0, scope: !1502)
!1527 = !DILocation(line: 61, column: 11, scope: !1502)
!1528 = !DILocation(line: 66, column: 15, scope: !1506)
!1529 = !DILocation(line: 67, column: 15, scope: !1506)
!1530 = !DILocation(line: 71, column: 17, scope: !1505)
!1531 = !DILocation(line: 71, column: 25, scope: !1505)
!1532 = !DILocation(line: 72, column: 17, scope: !1505)
!1533 = !DILocation(line: 73, column: 33, scope: !1505)
!1534 = !DILocation(line: 73, column: 17, scope: !1505)
!1535 = !DILocation(line: 74, column: 17, scope: !1505)
!1536 = !DILocation(line: 85, column: 10, scope: !1489)
!1537 = !DILocation(line: 89, column: 10, scope: !1489)
!1538 = !DILocation(line: 90, column: 1, scope: !1489)
!1539 = !DISubprogram(name: "getopt_long", scope: !408, file: !408, line: 66, type: !1540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!117, !117, !1542, !74, !1544, !413}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1545 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !394, file: !394, line: 98, type: !1546, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !117, !123, !74, !74, !74, !247, !1492, null}
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1549 = !DILocalVariable(name: "argc", arg: 1, scope: !1545, file: !394, line: 98, type: !117)
!1550 = !DILocalVariable(name: "argv", arg: 2, scope: !1545, file: !394, line: 99, type: !123)
!1551 = !DILocalVariable(name: "command_name", arg: 3, scope: !1545, file: !394, line: 100, type: !74)
!1552 = !DILocalVariable(name: "package", arg: 4, scope: !1545, file: !394, line: 101, type: !74)
!1553 = !DILocalVariable(name: "version", arg: 5, scope: !1545, file: !394, line: 102, type: !74)
!1554 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1545, file: !394, line: 103, type: !247)
!1555 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1545, file: !394, line: 104, type: !1492)
!1556 = !DILocalVariable(name: "saved_opterr", scope: !1545, file: !394, line: 107, type: !117)
!1557 = !DILocalVariable(name: "optstring", scope: !1545, file: !394, line: 112, type: !74)
!1558 = !DILocalVariable(name: "c", scope: !1545, file: !394, line: 114, type: !117)
!1559 = !DILocalVariable(name: "authors", scope: !1560, file: !394, line: 125, type: !1509)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !394, line: 124, column: 11)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !394, line: 118, column: 9)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !394, line: 116, column: 5)
!1563 = distinct !DILexicalBlock(scope: !1545, file: !394, line: 115, column: 7)
!1564 = !DILocation(line: 0, scope: !1545)
!1565 = !DILocation(line: 107, column: 22, scope: !1545)
!1566 = !DILocation(line: 110, column: 10, scope: !1545)
!1567 = !DILocation(line: 112, column: 27, scope: !1545)
!1568 = !DILocation(line: 114, column: 11, scope: !1545)
!1569 = !DILocation(line: 115, column: 7, scope: !1545)
!1570 = !DILocation(line: 125, column: 13, scope: !1560)
!1571 = !DILocation(line: 125, column: 21, scope: !1560)
!1572 = !DILocation(line: 126, column: 13, scope: !1560)
!1573 = !DILocation(line: 127, column: 29, scope: !1560)
!1574 = !DILocation(line: 127, column: 13, scope: !1560)
!1575 = !DILocation(line: 128, column: 13, scope: !1560)
!1576 = !DILocation(line: 132, column: 26, scope: !1561)
!1577 = !DILocation(line: 133, column: 11, scope: !1561)
!1578 = !DILocation(line: 0, scope: !1561)
!1579 = !DILocation(line: 138, column: 10, scope: !1545)
!1580 = !DILocation(line: 139, column: 1, scope: !1545)
!1581 = distinct !DISubprogram(name: "set_program_name", scope: !418, file: !418, line: 37, type: !836, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DILocalVariable(name: "argv0", arg: 1, scope: !1581, file: !418, line: 37, type: !74)
!1584 = !DILocalVariable(name: "slash", scope: !1581, file: !418, line: 44, type: !74)
!1585 = !DILocalVariable(name: "base", scope: !1581, file: !418, line: 45, type: !74)
!1586 = !DILocation(line: 0, scope: !1581)
!1587 = !DILocation(line: 44, column: 23, scope: !1581)
!1588 = !DILocation(line: 45, column: 22, scope: !1581)
!1589 = !DILocation(line: 46, column: 17, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1581, file: !418, line: 46, column: 7)
!1591 = !DILocation(line: 46, column: 9, scope: !1590)
!1592 = !DILocation(line: 46, column: 25, scope: !1590)
!1593 = !DILocation(line: 46, column: 40, scope: !1590)
!1594 = !DILocalVariable(name: "__s1", arg: 1, scope: !1595, file: !895, line: 974, type: !1035)
!1595 = distinct !DISubprogram(name: "memeq", scope: !895, file: !895, line: 974, type: !1596, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!247, !1035, !1035, !119}
!1598 = !{!1594, !1599, !1600}
!1599 = !DILocalVariable(name: "__s2", arg: 2, scope: !1595, file: !895, line: 974, type: !1035)
!1600 = !DILocalVariable(name: "__n", arg: 3, scope: !1595, file: !895, line: 974, type: !119)
!1601 = !DILocation(line: 0, scope: !1595, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 46, column: 28, scope: !1590)
!1603 = !DILocation(line: 976, column: 11, scope: !1595, inlinedAt: !1602)
!1604 = !DILocation(line: 976, column: 10, scope: !1595, inlinedAt: !1602)
!1605 = !DILocation(line: 46, column: 7, scope: !1581)
!1606 = !DILocation(line: 49, column: 11, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !418, line: 49, column: 11)
!1608 = distinct !DILexicalBlock(scope: !1590, file: !418, line: 47, column: 5)
!1609 = !DILocation(line: 49, column: 36, scope: !1607)
!1610 = !DILocation(line: 49, column: 11, scope: !1608)
!1611 = !DILocation(line: 65, column: 16, scope: !1581)
!1612 = !DILocation(line: 71, column: 27, scope: !1581)
!1613 = !DILocation(line: 74, column: 33, scope: !1581)
!1614 = !DILocation(line: 76, column: 1, scope: !1581)
!1615 = !DISubprogram(name: "strrchr", scope: !1003, file: !1003, line: 273, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1616 = !DILocation(line: 0, scope: !427)
!1617 = !DILocation(line: 40, column: 29, scope: !427)
!1618 = !DILocation(line: 41, column: 19, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !427, file: !428, line: 41, column: 7)
!1620 = !DILocation(line: 41, column: 7, scope: !427)
!1621 = !DILocation(line: 47, column: 3, scope: !427)
!1622 = !DILocation(line: 48, column: 3, scope: !427)
!1623 = !DILocation(line: 48, column: 13, scope: !427)
!1624 = !DILocalVariable(name: "ps", arg: 1, scope: !1625, file: !1626, line: 1135, type: !1629)
!1625 = distinct !DISubprogram(name: "mbszero", scope: !1626, file: !1626, line: 1135, type: !1627, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1630)
!1626 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1630 = !{!1624}
!1631 = !DILocation(line: 0, scope: !1625, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 48, column: 18, scope: !427)
!1633 = !DILocalVariable(name: "__dest", arg: 1, scope: !1634, file: !1635, line: 57, type: !116)
!1634 = distinct !DISubprogram(name: "memset", scope: !1635, file: !1635, line: 57, type: !1636, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1638)
!1635 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!116, !116, !117, !119}
!1638 = !{!1633, !1639, !1640}
!1639 = !DILocalVariable(name: "__ch", arg: 2, scope: !1634, file: !1635, line: 57, type: !117)
!1640 = !DILocalVariable(name: "__len", arg: 3, scope: !1634, file: !1635, line: 57, type: !119)
!1641 = !DILocation(line: 0, scope: !1634, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 1137, column: 3, scope: !1625, inlinedAt: !1632)
!1643 = !DILocation(line: 59, column: 10, scope: !1634, inlinedAt: !1642)
!1644 = !DILocation(line: 49, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !427, file: !428, line: 49, column: 7)
!1646 = !DILocation(line: 49, column: 39, scope: !1645)
!1647 = !DILocation(line: 49, column: 44, scope: !1645)
!1648 = !DILocation(line: 54, column: 1, scope: !427)
!1649 = !DISubprogram(name: "mbrtoc32", scope: !439, file: !439, line: 57, type: !1650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!119, !1652, !876, !119, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1629)
!1655 = distinct !DISubprogram(name: "clone_quoting_options", scope: !458, file: !458, line: 113, type: !1656, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1659)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1658, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!1659 = !{!1660, !1661, !1662}
!1660 = !DILocalVariable(name: "o", arg: 1, scope: !1655, file: !458, line: 113, type: !1658)
!1661 = !DILocalVariable(name: "saved_errno", scope: !1655, file: !458, line: 115, type: !117)
!1662 = !DILocalVariable(name: "p", scope: !1655, file: !458, line: 116, type: !1658)
!1663 = !DILocation(line: 0, scope: !1655)
!1664 = !DILocation(line: 115, column: 21, scope: !1655)
!1665 = !DILocation(line: 116, column: 40, scope: !1655)
!1666 = !DILocation(line: 116, column: 31, scope: !1655)
!1667 = !DILocation(line: 118, column: 9, scope: !1655)
!1668 = !DILocation(line: 119, column: 3, scope: !1655)
!1669 = distinct !DISubprogram(name: "get_quoting_style", scope: !458, file: !458, line: 124, type: !1670, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1674)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!101, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!1674 = !{!1675}
!1675 = !DILocalVariable(name: "o", arg: 1, scope: !1669, file: !458, line: 124, type: !1672)
!1676 = !DILocation(line: 0, scope: !1669)
!1677 = !DILocation(line: 126, column: 11, scope: !1669)
!1678 = !DILocation(line: 126, column: 46, scope: !1669)
!1679 = !{!1680, !827, i64 0}
!1680 = !{!"quoting_options", !827, i64 0, !883, i64 4, !827, i64 8, !826, i64 40, !826, i64 48}
!1681 = !DILocation(line: 126, column: 3, scope: !1669)
!1682 = distinct !DISubprogram(name: "set_quoting_style", scope: !458, file: !458, line: 132, type: !1683, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !1658, !101}
!1685 = !{!1686, !1687}
!1686 = !DILocalVariable(name: "o", arg: 1, scope: !1682, file: !458, line: 132, type: !1658)
!1687 = !DILocalVariable(name: "s", arg: 2, scope: !1682, file: !458, line: 132, type: !101)
!1688 = !DILocation(line: 0, scope: !1682)
!1689 = !DILocation(line: 134, column: 4, scope: !1682)
!1690 = !DILocation(line: 134, column: 45, scope: !1682)
!1691 = !DILocation(line: 135, column: 1, scope: !1682)
!1692 = distinct !DISubprogram(name: "set_char_quoting", scope: !458, file: !458, line: 143, type: !1693, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!117, !1658, !4, !117}
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1702, !1703}
!1696 = !DILocalVariable(name: "o", arg: 1, scope: !1692, file: !458, line: 143, type: !1658)
!1697 = !DILocalVariable(name: "c", arg: 2, scope: !1692, file: !458, line: 143, type: !4)
!1698 = !DILocalVariable(name: "i", arg: 3, scope: !1692, file: !458, line: 143, type: !117)
!1699 = !DILocalVariable(name: "uc", scope: !1692, file: !458, line: 145, type: !122)
!1700 = !DILocalVariable(name: "p", scope: !1692, file: !458, line: 146, type: !1701)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1702 = !DILocalVariable(name: "shift", scope: !1692, file: !458, line: 148, type: !117)
!1703 = !DILocalVariable(name: "r", scope: !1692, file: !458, line: 149, type: !80)
!1704 = !DILocation(line: 0, scope: !1692)
!1705 = !DILocation(line: 147, column: 6, scope: !1692)
!1706 = !DILocation(line: 147, column: 41, scope: !1692)
!1707 = !DILocation(line: 147, column: 62, scope: !1692)
!1708 = !DILocation(line: 147, column: 57, scope: !1692)
!1709 = !DILocation(line: 148, column: 15, scope: !1692)
!1710 = !DILocation(line: 149, column: 21, scope: !1692)
!1711 = !DILocation(line: 149, column: 24, scope: !1692)
!1712 = !DILocation(line: 149, column: 34, scope: !1692)
!1713 = !DILocation(line: 150, column: 19, scope: !1692)
!1714 = !DILocation(line: 150, column: 24, scope: !1692)
!1715 = !DILocation(line: 150, column: 6, scope: !1692)
!1716 = !DILocation(line: 151, column: 3, scope: !1692)
!1717 = distinct !DISubprogram(name: "set_quoting_flags", scope: !458, file: !458, line: 159, type: !1718, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!117, !1658, !117}
!1720 = !{!1721, !1722, !1723}
!1721 = !DILocalVariable(name: "o", arg: 1, scope: !1717, file: !458, line: 159, type: !1658)
!1722 = !DILocalVariable(name: "i", arg: 2, scope: !1717, file: !458, line: 159, type: !117)
!1723 = !DILocalVariable(name: "r", scope: !1717, file: !458, line: 163, type: !117)
!1724 = !DILocation(line: 0, scope: !1717)
!1725 = !DILocation(line: 161, column: 8, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1717, file: !458, line: 161, column: 7)
!1727 = !DILocation(line: 161, column: 7, scope: !1717)
!1728 = !DILocation(line: 163, column: 14, scope: !1717)
!1729 = !{!1680, !883, i64 4}
!1730 = !DILocation(line: 164, column: 12, scope: !1717)
!1731 = !DILocation(line: 165, column: 3, scope: !1717)
!1732 = distinct !DISubprogram(name: "set_custom_quoting", scope: !458, file: !458, line: 169, type: !1733, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1658, !74, !74}
!1735 = !{!1736, !1737, !1738}
!1736 = !DILocalVariable(name: "o", arg: 1, scope: !1732, file: !458, line: 169, type: !1658)
!1737 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1732, file: !458, line: 170, type: !74)
!1738 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1732, file: !458, line: 170, type: !74)
!1739 = !DILocation(line: 0, scope: !1732)
!1740 = !DILocation(line: 172, column: 8, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1732, file: !458, line: 172, column: 7)
!1742 = !DILocation(line: 172, column: 7, scope: !1732)
!1743 = !DILocation(line: 174, column: 12, scope: !1732)
!1744 = !DILocation(line: 175, column: 8, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1732, file: !458, line: 175, column: 7)
!1746 = !DILocation(line: 175, column: 19, scope: !1745)
!1747 = !DILocation(line: 176, column: 5, scope: !1745)
!1748 = !DILocation(line: 177, column: 6, scope: !1732)
!1749 = !DILocation(line: 177, column: 17, scope: !1732)
!1750 = !{!1680, !826, i64 40}
!1751 = !DILocation(line: 178, column: 6, scope: !1732)
!1752 = !DILocation(line: 178, column: 18, scope: !1732)
!1753 = !{!1680, !826, i64 48}
!1754 = !DILocation(line: 179, column: 1, scope: !1732)
!1755 = !DISubprogram(name: "abort", scope: !1011, file: !1011, line: 598, type: !390, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1756 = distinct !DISubprogram(name: "quotearg_buffer", scope: !458, file: !458, line: 774, type: !1757, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!119, !124, !119, !74, !119, !1672}
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1760 = !DILocalVariable(name: "buffer", arg: 1, scope: !1756, file: !458, line: 774, type: !124)
!1761 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1756, file: !458, line: 774, type: !119)
!1762 = !DILocalVariable(name: "arg", arg: 3, scope: !1756, file: !458, line: 775, type: !74)
!1763 = !DILocalVariable(name: "argsize", arg: 4, scope: !1756, file: !458, line: 775, type: !119)
!1764 = !DILocalVariable(name: "o", arg: 5, scope: !1756, file: !458, line: 776, type: !1672)
!1765 = !DILocalVariable(name: "p", scope: !1756, file: !458, line: 778, type: !1672)
!1766 = !DILocalVariable(name: "saved_errno", scope: !1756, file: !458, line: 779, type: !117)
!1767 = !DILocalVariable(name: "r", scope: !1756, file: !458, line: 780, type: !119)
!1768 = !DILocation(line: 0, scope: !1756)
!1769 = !DILocation(line: 778, column: 37, scope: !1756)
!1770 = !DILocation(line: 779, column: 21, scope: !1756)
!1771 = !DILocation(line: 781, column: 43, scope: !1756)
!1772 = !DILocation(line: 781, column: 53, scope: !1756)
!1773 = !DILocation(line: 781, column: 63, scope: !1756)
!1774 = !DILocation(line: 782, column: 43, scope: !1756)
!1775 = !DILocation(line: 782, column: 58, scope: !1756)
!1776 = !DILocation(line: 780, column: 14, scope: !1756)
!1777 = !DILocation(line: 783, column: 9, scope: !1756)
!1778 = !DILocation(line: 784, column: 3, scope: !1756)
!1779 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !458, file: !458, line: 251, type: !1780, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1784)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!119, !124, !119, !74, !119, !101, !117, !1782, !74, !74}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1809, !1811, !1814, !1815, !1816, !1817, !1820, !1821, !1824, !1828, !1829, !1837, !1840, !1841, !1843, !1844, !1845, !1846}
!1785 = !DILocalVariable(name: "buffer", arg: 1, scope: !1779, file: !458, line: 251, type: !124)
!1786 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1779, file: !458, line: 251, type: !119)
!1787 = !DILocalVariable(name: "arg", arg: 3, scope: !1779, file: !458, line: 252, type: !74)
!1788 = !DILocalVariable(name: "argsize", arg: 4, scope: !1779, file: !458, line: 252, type: !119)
!1789 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1779, file: !458, line: 253, type: !101)
!1790 = !DILocalVariable(name: "flags", arg: 6, scope: !1779, file: !458, line: 253, type: !117)
!1791 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1779, file: !458, line: 254, type: !1782)
!1792 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1779, file: !458, line: 255, type: !74)
!1793 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1779, file: !458, line: 256, type: !74)
!1794 = !DILocalVariable(name: "unibyte_locale", scope: !1779, file: !458, line: 258, type: !247)
!1795 = !DILocalVariable(name: "len", scope: !1779, file: !458, line: 260, type: !119)
!1796 = !DILocalVariable(name: "orig_buffersize", scope: !1779, file: !458, line: 261, type: !119)
!1797 = !DILocalVariable(name: "quote_string", scope: !1779, file: !458, line: 262, type: !74)
!1798 = !DILocalVariable(name: "quote_string_len", scope: !1779, file: !458, line: 263, type: !119)
!1799 = !DILocalVariable(name: "backslash_escapes", scope: !1779, file: !458, line: 264, type: !247)
!1800 = !DILocalVariable(name: "elide_outer_quotes", scope: !1779, file: !458, line: 265, type: !247)
!1801 = !DILocalVariable(name: "encountered_single_quote", scope: !1779, file: !458, line: 266, type: !247)
!1802 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1779, file: !458, line: 267, type: !247)
!1803 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1779, file: !458, line: 309, type: !247)
!1804 = !DILocalVariable(name: "lq", scope: !1805, file: !458, line: 361, type: !74)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !458, line: 361, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !458, line: 360, column: 13)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !458, line: 333, column: 7)
!1808 = distinct !DILexicalBlock(scope: !1779, file: !458, line: 312, column: 5)
!1809 = !DILocalVariable(name: "i", scope: !1810, file: !458, line: 395, type: !119)
!1810 = distinct !DILexicalBlock(scope: !1779, file: !458, line: 395, column: 3)
!1811 = !DILocalVariable(name: "is_right_quote", scope: !1812, file: !458, line: 397, type: !247)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !458, line: 396, column: 5)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !458, line: 395, column: 3)
!1814 = !DILocalVariable(name: "escaping", scope: !1812, file: !458, line: 398, type: !247)
!1815 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1812, file: !458, line: 399, type: !247)
!1816 = !DILocalVariable(name: "c", scope: !1812, file: !458, line: 417, type: !122)
!1817 = !DILocalVariable(name: "m", scope: !1818, file: !458, line: 598, type: !119)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !458, line: 596, column: 11)
!1819 = distinct !DILexicalBlock(scope: !1812, file: !458, line: 419, column: 9)
!1820 = !DILocalVariable(name: "printable", scope: !1818, file: !458, line: 600, type: !247)
!1821 = !DILocalVariable(name: "mbs", scope: !1822, file: !458, line: 609, type: !531)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !458, line: 608, column: 15)
!1823 = distinct !DILexicalBlock(scope: !1818, file: !458, line: 602, column: 17)
!1824 = !DILocalVariable(name: "w", scope: !1825, file: !458, line: 618, type: !438)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !458, line: 617, column: 19)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !458, line: 616, column: 17)
!1827 = distinct !DILexicalBlock(scope: !1822, file: !458, line: 616, column: 17)
!1828 = !DILocalVariable(name: "bytes", scope: !1825, file: !458, line: 619, type: !119)
!1829 = !DILocalVariable(name: "j", scope: !1830, file: !458, line: 648, type: !119)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !458, line: 648, column: 29)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !458, line: 647, column: 27)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !458, line: 645, column: 29)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !458, line: 636, column: 23)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !458, line: 628, column: 30)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !458, line: 623, column: 30)
!1836 = distinct !DILexicalBlock(scope: !1825, file: !458, line: 621, column: 25)
!1837 = !DILocalVariable(name: "ilim", scope: !1838, file: !458, line: 674, type: !119)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !458, line: 671, column: 15)
!1839 = distinct !DILexicalBlock(scope: !1818, file: !458, line: 670, column: 17)
!1840 = !DILabel(scope: !1779, name: "process_input", file: !458, line: 308)
!1841 = !DILabel(scope: !1842, name: "c_and_shell_escape", file: !458, line: 502)
!1842 = distinct !DILexicalBlock(scope: !1819, file: !458, line: 478, column: 9)
!1843 = !DILabel(scope: !1842, name: "c_escape", file: !458, line: 507)
!1844 = !DILabel(scope: !1812, name: "store_escape", file: !458, line: 709)
!1845 = !DILabel(scope: !1812, name: "store_c", file: !458, line: 712)
!1846 = !DILabel(scope: !1779, name: "force_outer_quoting_style", file: !458, line: 753)
!1847 = !DILocation(line: 0, scope: !1779)
!1848 = !DILocation(line: 258, column: 25, scope: !1779)
!1849 = !DILocation(line: 258, column: 36, scope: !1779)
!1850 = !DILocation(line: 265, column: 8, scope: !1779)
!1851 = !DILocation(line: 267, column: 3, scope: !1779)
!1852 = !DILocation(line: 261, column: 10, scope: !1779)
!1853 = !DILocation(line: 262, column: 15, scope: !1779)
!1854 = !DILocation(line: 263, column: 10, scope: !1779)
!1855 = !DILocation(line: 264, column: 8, scope: !1779)
!1856 = !DILocation(line: 266, column: 8, scope: !1779)
!1857 = !DILocation(line: 267, column: 8, scope: !1779)
!1858 = !DILocation(line: 308, column: 2, scope: !1779)
!1859 = !DILocation(line: 311, column: 3, scope: !1779)
!1860 = !DILocation(line: 318, column: 11, scope: !1808)
!1861 = !DILocation(line: 318, column: 12, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1808, file: !458, line: 318, column: 11)
!1863 = !DILocation(line: 319, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !458, line: 319, column: 9)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !458, line: 319, column: 9)
!1866 = !DILocation(line: 319, column: 9, scope: !1865)
!1867 = !DILocation(line: 0, scope: !522, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 357, column: 26, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !458, line: 335, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1807, file: !458, line: 334, column: 13)
!1871 = !DILocation(line: 199, column: 29, scope: !522, inlinedAt: !1868)
!1872 = !DILocation(line: 201, column: 19, scope: !1873, inlinedAt: !1868)
!1873 = distinct !DILexicalBlock(scope: !522, file: !458, line: 201, column: 7)
!1874 = !DILocation(line: 201, column: 7, scope: !522, inlinedAt: !1868)
!1875 = !DILocation(line: 229, column: 3, scope: !522, inlinedAt: !1868)
!1876 = !DILocation(line: 230, column: 3, scope: !522, inlinedAt: !1868)
!1877 = !DILocation(line: 230, column: 13, scope: !522, inlinedAt: !1868)
!1878 = !DILocalVariable(name: "ps", arg: 1, scope: !1879, file: !1626, line: 1135, type: !1882)
!1879 = distinct !DISubprogram(name: "mbszero", scope: !1626, file: !1626, line: 1135, type: !1880, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1883)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !1882}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1883 = !{!1878}
!1884 = !DILocation(line: 0, scope: !1879, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 230, column: 18, scope: !522, inlinedAt: !1868)
!1886 = !DILocalVariable(name: "__dest", arg: 1, scope: !1887, file: !1635, line: 57, type: !116)
!1887 = distinct !DISubprogram(name: "memset", scope: !1635, file: !1635, line: 57, type: !1636, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1888)
!1888 = !{!1886, !1889, !1890}
!1889 = !DILocalVariable(name: "__ch", arg: 2, scope: !1887, file: !1635, line: 57, type: !117)
!1890 = !DILocalVariable(name: "__len", arg: 3, scope: !1887, file: !1635, line: 57, type: !119)
!1891 = !DILocation(line: 0, scope: !1887, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 1137, column: 3, scope: !1879, inlinedAt: !1885)
!1893 = !DILocation(line: 59, column: 10, scope: !1887, inlinedAt: !1892)
!1894 = !DILocation(line: 231, column: 7, scope: !1895, inlinedAt: !1868)
!1895 = distinct !DILexicalBlock(scope: !522, file: !458, line: 231, column: 7)
!1896 = !DILocation(line: 231, column: 40, scope: !1895, inlinedAt: !1868)
!1897 = !DILocation(line: 231, column: 45, scope: !1895, inlinedAt: !1868)
!1898 = !DILocation(line: 235, column: 1, scope: !522, inlinedAt: !1868)
!1899 = !DILocation(line: 0, scope: !522, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 358, column: 27, scope: !1869)
!1901 = !DILocation(line: 199, column: 29, scope: !522, inlinedAt: !1900)
!1902 = !DILocation(line: 201, column: 19, scope: !1873, inlinedAt: !1900)
!1903 = !DILocation(line: 201, column: 7, scope: !522, inlinedAt: !1900)
!1904 = !DILocation(line: 229, column: 3, scope: !522, inlinedAt: !1900)
!1905 = !DILocation(line: 230, column: 3, scope: !522, inlinedAt: !1900)
!1906 = !DILocation(line: 230, column: 13, scope: !522, inlinedAt: !1900)
!1907 = !DILocation(line: 0, scope: !1879, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 230, column: 18, scope: !522, inlinedAt: !1900)
!1909 = !DILocation(line: 0, scope: !1887, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 1137, column: 3, scope: !1879, inlinedAt: !1908)
!1911 = !DILocation(line: 59, column: 10, scope: !1887, inlinedAt: !1910)
!1912 = !DILocation(line: 231, column: 7, scope: !1895, inlinedAt: !1900)
!1913 = !DILocation(line: 231, column: 40, scope: !1895, inlinedAt: !1900)
!1914 = !DILocation(line: 231, column: 45, scope: !1895, inlinedAt: !1900)
!1915 = !DILocation(line: 235, column: 1, scope: !522, inlinedAt: !1900)
!1916 = !DILocation(line: 360, column: 14, scope: !1806)
!1917 = !DILocation(line: 360, column: 13, scope: !1807)
!1918 = !DILocation(line: 0, scope: !1805)
!1919 = !DILocation(line: 361, column: 45, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1805, file: !458, line: 361, column: 11)
!1921 = !DILocation(line: 361, column: 11, scope: !1805)
!1922 = !DILocation(line: 362, column: 13, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !458, line: 362, column: 13)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !458, line: 362, column: 13)
!1925 = !DILocation(line: 362, column: 13, scope: !1924)
!1926 = !DILocation(line: 361, column: 52, scope: !1920)
!1927 = distinct !{!1927, !1921, !1928, !929}
!1928 = !DILocation(line: 362, column: 13, scope: !1805)
!1929 = !DILocation(line: 260, column: 10, scope: !1779)
!1930 = !DILocation(line: 365, column: 28, scope: !1807)
!1931 = !DILocation(line: 367, column: 7, scope: !1808)
!1932 = !DILocation(line: 370, column: 7, scope: !1808)
!1933 = !DILocation(line: 373, column: 7, scope: !1808)
!1934 = !DILocation(line: 376, column: 12, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1808, file: !458, line: 376, column: 11)
!1936 = !DILocation(line: 376, column: 11, scope: !1808)
!1937 = !DILocation(line: 381, column: 12, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1808, file: !458, line: 381, column: 11)
!1939 = !DILocation(line: 381, column: 11, scope: !1808)
!1940 = !DILocation(line: 382, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !458, line: 382, column: 9)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !458, line: 382, column: 9)
!1943 = !DILocation(line: 382, column: 9, scope: !1942)
!1944 = !DILocation(line: 389, column: 7, scope: !1808)
!1945 = !DILocation(line: 392, column: 7, scope: !1808)
!1946 = !DILocation(line: 0, scope: !1810)
!1947 = !DILocation(line: 395, column: 8, scope: !1810)
!1948 = !DILocation(line: 309, column: 8, scope: !1779)
!1949 = !DILocation(line: 395, scope: !1810)
!1950 = !DILocation(line: 395, column: 34, scope: !1813)
!1951 = !DILocation(line: 395, column: 26, scope: !1813)
!1952 = !DILocation(line: 395, column: 48, scope: !1813)
!1953 = !DILocation(line: 395, column: 55, scope: !1813)
!1954 = !DILocation(line: 395, column: 3, scope: !1810)
!1955 = !DILocation(line: 395, column: 67, scope: !1813)
!1956 = !DILocation(line: 0, scope: !1812)
!1957 = !DILocation(line: 402, column: 11, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1812, file: !458, line: 401, column: 11)
!1959 = !DILocation(line: 404, column: 17, scope: !1958)
!1960 = !DILocation(line: 405, column: 39, scope: !1958)
!1961 = !DILocation(line: 409, column: 32, scope: !1958)
!1962 = !DILocation(line: 405, column: 19, scope: !1958)
!1963 = !DILocation(line: 405, column: 15, scope: !1958)
!1964 = !DILocation(line: 410, column: 11, scope: !1958)
!1965 = !DILocation(line: 410, column: 25, scope: !1958)
!1966 = !DILocalVariable(name: "__s1", arg: 1, scope: !1967, file: !895, line: 974, type: !1035)
!1967 = distinct !DISubprogram(name: "memeq", scope: !895, file: !895, line: 974, type: !1596, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1968)
!1968 = !{!1966, !1969, !1970}
!1969 = !DILocalVariable(name: "__s2", arg: 2, scope: !1967, file: !895, line: 974, type: !1035)
!1970 = !DILocalVariable(name: "__n", arg: 3, scope: !1967, file: !895, line: 974, type: !119)
!1971 = !DILocation(line: 0, scope: !1967, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 410, column: 14, scope: !1958)
!1973 = !DILocation(line: 976, column: 11, scope: !1967, inlinedAt: !1972)
!1974 = !DILocation(line: 976, column: 10, scope: !1967, inlinedAt: !1972)
!1975 = !DILocation(line: 401, column: 11, scope: !1812)
!1976 = !DILocation(line: 417, column: 25, scope: !1812)
!1977 = !DILocation(line: 418, column: 7, scope: !1812)
!1978 = !DILocation(line: 421, column: 15, scope: !1819)
!1979 = !DILocation(line: 423, column: 15, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !458, line: 423, column: 15)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !458, line: 422, column: 13)
!1982 = distinct !DILexicalBlock(scope: !1819, file: !458, line: 421, column: 15)
!1983 = !DILocation(line: 423, column: 15, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !458, line: 423, column: 15)
!1985 = !DILocation(line: 423, column: 15, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !458, line: 423, column: 15)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !458, line: 423, column: 15)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !458, line: 423, column: 15)
!1989 = !DILocation(line: 423, column: 15, scope: !1987)
!1990 = !DILocation(line: 423, column: 15, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !458, line: 423, column: 15)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !458, line: 423, column: 15)
!1993 = !DILocation(line: 423, column: 15, scope: !1992)
!1994 = !DILocation(line: 423, column: 15, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !458, line: 423, column: 15)
!1996 = distinct !DILexicalBlock(scope: !1988, file: !458, line: 423, column: 15)
!1997 = !DILocation(line: 423, column: 15, scope: !1996)
!1998 = !DILocation(line: 423, column: 15, scope: !1988)
!1999 = !DILocation(line: 423, column: 15, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !458, line: 423, column: 15)
!2001 = distinct !DILexicalBlock(scope: !1980, file: !458, line: 423, column: 15)
!2002 = !DILocation(line: 423, column: 15, scope: !2001)
!2003 = !DILocation(line: 431, column: 19, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1981, file: !458, line: 430, column: 19)
!2005 = !DILocation(line: 431, column: 24, scope: !2004)
!2006 = !DILocation(line: 431, column: 28, scope: !2004)
!2007 = !DILocation(line: 431, column: 38, scope: !2004)
!2008 = !DILocation(line: 431, column: 48, scope: !2004)
!2009 = !DILocation(line: 431, column: 59, scope: !2004)
!2010 = !DILocation(line: 433, column: 19, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !458, line: 433, column: 19)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !458, line: 433, column: 19)
!2013 = distinct !DILexicalBlock(scope: !2004, file: !458, line: 432, column: 17)
!2014 = !DILocation(line: 433, column: 19, scope: !2012)
!2015 = !DILocation(line: 434, column: 19, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !458, line: 434, column: 19)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !458, line: 434, column: 19)
!2018 = !DILocation(line: 434, column: 19, scope: !2017)
!2019 = !DILocation(line: 435, column: 17, scope: !2013)
!2020 = !DILocation(line: 442, column: 20, scope: !1982)
!2021 = !DILocation(line: 447, column: 11, scope: !1819)
!2022 = !DILocation(line: 450, column: 19, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1819, file: !458, line: 448, column: 13)
!2024 = !DILocation(line: 456, column: 19, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2023, file: !458, line: 455, column: 19)
!2026 = !DILocation(line: 456, column: 24, scope: !2025)
!2027 = !DILocation(line: 456, column: 28, scope: !2025)
!2028 = !DILocation(line: 456, column: 38, scope: !2025)
!2029 = !DILocation(line: 456, column: 47, scope: !2025)
!2030 = !DILocation(line: 456, column: 41, scope: !2025)
!2031 = !DILocation(line: 456, column: 52, scope: !2025)
!2032 = !DILocation(line: 455, column: 19, scope: !2023)
!2033 = !DILocation(line: 457, column: 25, scope: !2025)
!2034 = !DILocation(line: 457, column: 17, scope: !2025)
!2035 = !DILocation(line: 464, column: 25, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2025, file: !458, line: 458, column: 19)
!2037 = !DILocation(line: 468, column: 21, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !458, line: 468, column: 21)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !458, line: 468, column: 21)
!2040 = !DILocation(line: 468, column: 21, scope: !2039)
!2041 = !DILocation(line: 469, column: 21, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !458, line: 469, column: 21)
!2043 = distinct !DILexicalBlock(scope: !2036, file: !458, line: 469, column: 21)
!2044 = !DILocation(line: 469, column: 21, scope: !2043)
!2045 = !DILocation(line: 470, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !458, line: 470, column: 21)
!2047 = distinct !DILexicalBlock(scope: !2036, file: !458, line: 470, column: 21)
!2048 = !DILocation(line: 470, column: 21, scope: !2047)
!2049 = !DILocation(line: 471, column: 21, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !458, line: 471, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2036, file: !458, line: 471, column: 21)
!2052 = !DILocation(line: 471, column: 21, scope: !2051)
!2053 = !DILocation(line: 472, column: 21, scope: !2036)
!2054 = !DILocation(line: 482, column: 33, scope: !1842)
!2055 = !DILocation(line: 483, column: 33, scope: !1842)
!2056 = !DILocation(line: 485, column: 33, scope: !1842)
!2057 = !DILocation(line: 486, column: 33, scope: !1842)
!2058 = !DILocation(line: 487, column: 33, scope: !1842)
!2059 = !DILocation(line: 490, column: 17, scope: !1842)
!2060 = !DILocation(line: 492, column: 21, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !458, line: 491, column: 15)
!2062 = distinct !DILexicalBlock(scope: !1842, file: !458, line: 490, column: 17)
!2063 = !DILocation(line: 499, column: 35, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1842, file: !458, line: 499, column: 17)
!2065 = !DILocation(line: 499, column: 57, scope: !2064)
!2066 = !DILocation(line: 0, scope: !1842)
!2067 = !DILocation(line: 502, column: 11, scope: !1842)
!2068 = !DILocation(line: 504, column: 17, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1842, file: !458, line: 503, column: 17)
!2070 = !DILocation(line: 507, column: 11, scope: !1842)
!2071 = !DILocation(line: 508, column: 17, scope: !1842)
!2072 = !DILocation(line: 517, column: 15, scope: !1819)
!2073 = !DILocation(line: 517, column: 40, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1819, file: !458, line: 517, column: 15)
!2075 = !DILocation(line: 517, column: 47, scope: !2074)
!2076 = !DILocation(line: 517, column: 18, scope: !2074)
!2077 = !DILocation(line: 521, column: 17, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1819, file: !458, line: 521, column: 15)
!2079 = !DILocation(line: 521, column: 15, scope: !1819)
!2080 = !DILocation(line: 525, column: 11, scope: !1819)
!2081 = !DILocation(line: 537, column: 15, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1819, file: !458, line: 536, column: 15)
!2083 = !DILocation(line: 544, column: 15, scope: !1819)
!2084 = !DILocation(line: 546, column: 19, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !458, line: 545, column: 13)
!2086 = distinct !DILexicalBlock(scope: !1819, file: !458, line: 544, column: 15)
!2087 = !DILocation(line: 549, column: 19, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !458, line: 549, column: 19)
!2089 = !DILocation(line: 549, column: 30, scope: !2088)
!2090 = !DILocation(line: 558, column: 15, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !458, line: 558, column: 15)
!2092 = distinct !DILexicalBlock(scope: !2085, file: !458, line: 558, column: 15)
!2093 = !DILocation(line: 558, column: 15, scope: !2092)
!2094 = !DILocation(line: 559, column: 15, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !458, line: 559, column: 15)
!2096 = distinct !DILexicalBlock(scope: !2085, file: !458, line: 559, column: 15)
!2097 = !DILocation(line: 559, column: 15, scope: !2096)
!2098 = !DILocation(line: 560, column: 15, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !458, line: 560, column: 15)
!2100 = distinct !DILexicalBlock(scope: !2085, file: !458, line: 560, column: 15)
!2101 = !DILocation(line: 560, column: 15, scope: !2100)
!2102 = !DILocation(line: 562, column: 13, scope: !2085)
!2103 = !DILocation(line: 602, column: 17, scope: !1818)
!2104 = !DILocation(line: 0, scope: !1818)
!2105 = !DILocation(line: 605, column: 29, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1823, file: !458, line: 603, column: 15)
!2107 = !DILocation(line: 605, column: 27, scope: !2106)
!2108 = !DILocation(line: 668, column: 40, scope: !1818)
!2109 = !DILocation(line: 670, column: 23, scope: !1839)
!2110 = !DILocation(line: 609, column: 17, scope: !1822)
!2111 = !DILocation(line: 609, column: 27, scope: !1822)
!2112 = !DILocation(line: 0, scope: !1879, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 609, column: 32, scope: !1822)
!2114 = !DILocation(line: 0, scope: !1887, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 1137, column: 3, scope: !1879, inlinedAt: !2113)
!2116 = !DILocation(line: 59, column: 10, scope: !1887, inlinedAt: !2115)
!2117 = !DILocation(line: 613, column: 29, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1822, file: !458, line: 613, column: 21)
!2119 = !DILocation(line: 613, column: 21, scope: !1822)
!2120 = !DILocation(line: 614, column: 29, scope: !2118)
!2121 = !DILocation(line: 614, column: 19, scope: !2118)
!2122 = !DILocation(line: 618, column: 21, scope: !1825)
!2123 = !DILocation(line: 620, column: 54, scope: !1825)
!2124 = !DILocation(line: 0, scope: !1825)
!2125 = !DILocation(line: 619, column: 36, scope: !1825)
!2126 = !DILocation(line: 621, column: 25, scope: !1825)
!2127 = !DILocation(line: 631, column: 38, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1834, file: !458, line: 629, column: 23)
!2129 = !DILocation(line: 631, column: 48, scope: !2128)
!2130 = !DILocation(line: 665, column: 19, scope: !1826)
!2131 = !DILocation(line: 666, column: 15, scope: !1823)
!2132 = !DILocation(line: 626, column: 25, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1835, file: !458, line: 624, column: 23)
!2134 = !DILocation(line: 631, column: 51, scope: !2128)
!2135 = !DILocation(line: 631, column: 25, scope: !2128)
!2136 = !DILocation(line: 632, column: 28, scope: !2128)
!2137 = !DILocation(line: 631, column: 34, scope: !2128)
!2138 = distinct !{!2138, !2135, !2136, !929}
!2139 = !DILocation(line: 646, column: 29, scope: !1832)
!2140 = !DILocation(line: 0, scope: !1830)
!2141 = !DILocation(line: 649, column: 49, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1830, file: !458, line: 648, column: 29)
!2143 = !DILocation(line: 649, column: 39, scope: !2142)
!2144 = !DILocation(line: 649, column: 31, scope: !2142)
!2145 = !DILocation(line: 648, column: 60, scope: !2142)
!2146 = !DILocation(line: 648, column: 50, scope: !2142)
!2147 = !DILocation(line: 648, column: 29, scope: !1830)
!2148 = distinct !{!2148, !2147, !2149, !929}
!2149 = !DILocation(line: 654, column: 33, scope: !1830)
!2150 = !DILocation(line: 657, column: 43, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1833, file: !458, line: 657, column: 29)
!2152 = !DILocalVariable(name: "wc", arg: 1, scope: !2153, file: !2154, line: 865, type: !2157)
!2153 = distinct !DISubprogram(name: "c32isprint", scope: !2154, file: !2154, line: 865, type: !2155, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2159)
!2154 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!117, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2158, line: 20, baseType: !80)
!2158 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2159 = !{!2152}
!2160 = !DILocation(line: 0, scope: !2153, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 657, column: 31, scope: !2151)
!2162 = !DILocation(line: 871, column: 10, scope: !2153, inlinedAt: !2161)
!2163 = !DILocation(line: 657, column: 31, scope: !2151)
!2164 = !DILocation(line: 657, column: 29, scope: !1833)
!2165 = !DILocation(line: 664, column: 23, scope: !1825)
!2166 = !DILocation(line: 670, column: 19, scope: !1839)
!2167 = !DILocation(line: 670, column: 45, scope: !1839)
!2168 = !DILocation(line: 674, column: 33, scope: !1838)
!2169 = !DILocation(line: 0, scope: !1838)
!2170 = !DILocation(line: 676, column: 17, scope: !1838)
!2171 = !DILocation(line: 398, column: 12, scope: !1812)
!2172 = !DILocation(line: 678, column: 43, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !458, line: 678, column: 25)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !458, line: 677, column: 19)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !458, line: 676, column: 17)
!2176 = distinct !DILexicalBlock(scope: !1838, file: !458, line: 676, column: 17)
!2177 = !DILocation(line: 680, column: 25, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !458, line: 680, column: 25)
!2179 = distinct !DILexicalBlock(scope: !2173, file: !458, line: 679, column: 23)
!2180 = !DILocation(line: 680, column: 25, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2178, file: !458, line: 680, column: 25)
!2182 = !DILocation(line: 680, column: 25, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !458, line: 680, column: 25)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !458, line: 680, column: 25)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !458, line: 680, column: 25)
!2186 = !DILocation(line: 680, column: 25, scope: !2184)
!2187 = !DILocation(line: 680, column: 25, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !458, line: 680, column: 25)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !458, line: 680, column: 25)
!2190 = !DILocation(line: 680, column: 25, scope: !2189)
!2191 = !DILocation(line: 680, column: 25, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !458, line: 680, column: 25)
!2193 = distinct !DILexicalBlock(scope: !2185, file: !458, line: 680, column: 25)
!2194 = !DILocation(line: 680, column: 25, scope: !2193)
!2195 = !DILocation(line: 680, column: 25, scope: !2185)
!2196 = !DILocation(line: 680, column: 25, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !458, line: 680, column: 25)
!2198 = distinct !DILexicalBlock(scope: !2178, file: !458, line: 680, column: 25)
!2199 = !DILocation(line: 680, column: 25, scope: !2198)
!2200 = !DILocation(line: 681, column: 25, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !458, line: 681, column: 25)
!2202 = distinct !DILexicalBlock(scope: !2179, file: !458, line: 681, column: 25)
!2203 = !DILocation(line: 681, column: 25, scope: !2202)
!2204 = !DILocation(line: 682, column: 25, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !458, line: 682, column: 25)
!2206 = distinct !DILexicalBlock(scope: !2179, file: !458, line: 682, column: 25)
!2207 = !DILocation(line: 682, column: 25, scope: !2206)
!2208 = !DILocation(line: 683, column: 38, scope: !2179)
!2209 = !DILocation(line: 683, column: 33, scope: !2179)
!2210 = !DILocation(line: 684, column: 23, scope: !2179)
!2211 = !DILocation(line: 685, column: 30, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2173, file: !458, line: 685, column: 30)
!2213 = !DILocation(line: 685, column: 30, scope: !2173)
!2214 = !DILocation(line: 687, column: 25, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !458, line: 687, column: 25)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !458, line: 687, column: 25)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !458, line: 686, column: 23)
!2218 = !DILocation(line: 687, column: 25, scope: !2216)
!2219 = !DILocation(line: 689, column: 23, scope: !2217)
!2220 = !DILocation(line: 690, column: 35, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2174, file: !458, line: 690, column: 25)
!2222 = !DILocation(line: 690, column: 30, scope: !2221)
!2223 = !DILocation(line: 690, column: 25, scope: !2174)
!2224 = !DILocation(line: 692, column: 21, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !458, line: 692, column: 21)
!2226 = distinct !DILexicalBlock(scope: !2174, file: !458, line: 692, column: 21)
!2227 = !DILocation(line: 692, column: 21, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !458, line: 692, column: 21)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !458, line: 692, column: 21)
!2230 = distinct !DILexicalBlock(scope: !2225, file: !458, line: 692, column: 21)
!2231 = !DILocation(line: 692, column: 21, scope: !2229)
!2232 = !DILocation(line: 692, column: 21, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !458, line: 692, column: 21)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !458, line: 692, column: 21)
!2235 = !DILocation(line: 692, column: 21, scope: !2234)
!2236 = !DILocation(line: 692, column: 21, scope: !2230)
!2237 = !DILocation(line: 0, scope: !2174)
!2238 = !DILocation(line: 693, column: 21, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !458, line: 693, column: 21)
!2240 = distinct !DILexicalBlock(scope: !2174, file: !458, line: 693, column: 21)
!2241 = !DILocation(line: 693, column: 21, scope: !2240)
!2242 = !DILocation(line: 694, column: 25, scope: !2174)
!2243 = !DILocation(line: 676, column: 17, scope: !2175)
!2244 = distinct !{!2244, !2245, !2246}
!2245 = !DILocation(line: 676, column: 17, scope: !2176)
!2246 = !DILocation(line: 695, column: 19, scope: !2176)
!2247 = !DILocation(line: 409, column: 30, scope: !1958)
!2248 = !DILocation(line: 702, column: 34, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1812, file: !458, line: 702, column: 11)
!2250 = !DILocation(line: 704, column: 14, scope: !2249)
!2251 = !DILocation(line: 705, column: 14, scope: !2249)
!2252 = !DILocation(line: 705, column: 35, scope: !2249)
!2253 = !DILocation(line: 705, column: 17, scope: !2249)
!2254 = !DILocation(line: 705, column: 47, scope: !2249)
!2255 = !DILocation(line: 705, column: 65, scope: !2249)
!2256 = !DILocation(line: 706, column: 11, scope: !2249)
!2257 = !DILocation(line: 702, column: 11, scope: !1812)
!2258 = !DILocation(line: 395, column: 15, scope: !1810)
!2259 = !DILocation(line: 709, column: 5, scope: !1812)
!2260 = !DILocation(line: 710, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !1812, file: !458, line: 710, column: 7)
!2262 = !DILocation(line: 710, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2261, file: !458, line: 710, column: 7)
!2264 = !DILocation(line: 710, column: 7, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !458, line: 710, column: 7)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !458, line: 710, column: 7)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !458, line: 710, column: 7)
!2268 = !DILocation(line: 710, column: 7, scope: !2266)
!2269 = !DILocation(line: 710, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !458, line: 710, column: 7)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !458, line: 710, column: 7)
!2272 = !DILocation(line: 710, column: 7, scope: !2271)
!2273 = !DILocation(line: 710, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !458, line: 710, column: 7)
!2275 = distinct !DILexicalBlock(scope: !2267, file: !458, line: 710, column: 7)
!2276 = !DILocation(line: 710, column: 7, scope: !2275)
!2277 = !DILocation(line: 710, column: 7, scope: !2267)
!2278 = !DILocation(line: 710, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !458, line: 710, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2261, file: !458, line: 710, column: 7)
!2281 = !DILocation(line: 710, column: 7, scope: !2280)
!2282 = !DILocation(line: 712, column: 5, scope: !1812)
!2283 = !DILocation(line: 713, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !458, line: 713, column: 7)
!2285 = distinct !DILexicalBlock(scope: !1812, file: !458, line: 713, column: 7)
!2286 = !DILocation(line: 417, column: 21, scope: !1812)
!2287 = !DILocation(line: 713, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !458, line: 713, column: 7)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !458, line: 713, column: 7)
!2290 = distinct !DILexicalBlock(scope: !2284, file: !458, line: 713, column: 7)
!2291 = !DILocation(line: 713, column: 7, scope: !2289)
!2292 = !DILocation(line: 713, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !458, line: 713, column: 7)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !458, line: 713, column: 7)
!2295 = !DILocation(line: 713, column: 7, scope: !2294)
!2296 = !DILocation(line: 713, column: 7, scope: !2290)
!2297 = !DILocation(line: 714, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !458, line: 714, column: 7)
!2299 = distinct !DILexicalBlock(scope: !1812, file: !458, line: 714, column: 7)
!2300 = !DILocation(line: 714, column: 7, scope: !2299)
!2301 = !DILocation(line: 716, column: 13, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !1812, file: !458, line: 716, column: 11)
!2303 = !DILocation(line: 716, column: 11, scope: !1812)
!2304 = !DILocation(line: 718, column: 5, scope: !1813)
!2305 = !DILocation(line: 395, column: 82, scope: !1813)
!2306 = !DILocation(line: 395, column: 3, scope: !1813)
!2307 = distinct !{!2307, !1954, !2308, !929}
!2308 = !DILocation(line: 718, column: 5, scope: !1810)
!2309 = !DILocation(line: 720, column: 11, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !1779, file: !458, line: 720, column: 7)
!2311 = !DILocation(line: 720, column: 16, scope: !2310)
!2312 = !DILocation(line: 728, column: 51, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1779, file: !458, line: 728, column: 7)
!2314 = !DILocation(line: 731, column: 11, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !458, line: 731, column: 11)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !458, line: 730, column: 5)
!2317 = !DILocation(line: 731, column: 11, scope: !2316)
!2318 = !DILocation(line: 732, column: 16, scope: !2315)
!2319 = !DILocation(line: 732, column: 9, scope: !2315)
!2320 = !DILocation(line: 736, column: 18, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2315, file: !458, line: 736, column: 16)
!2322 = !DILocation(line: 736, column: 29, scope: !2321)
!2323 = !DILocation(line: 745, column: 7, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !1779, file: !458, line: 745, column: 7)
!2325 = !DILocation(line: 745, column: 20, scope: !2324)
!2326 = !DILocation(line: 746, column: 12, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !458, line: 746, column: 5)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !458, line: 746, column: 5)
!2329 = !DILocation(line: 746, column: 5, scope: !2328)
!2330 = !DILocation(line: 747, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !458, line: 747, column: 7)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !458, line: 747, column: 7)
!2333 = !DILocation(line: 747, column: 7, scope: !2332)
!2334 = !DILocation(line: 746, column: 39, scope: !2327)
!2335 = distinct !{!2335, !2329, !2336, !929}
!2336 = !DILocation(line: 747, column: 7, scope: !2328)
!2337 = !DILocation(line: 749, column: 11, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !1779, file: !458, line: 749, column: 7)
!2339 = !DILocation(line: 749, column: 7, scope: !1779)
!2340 = !DILocation(line: 750, column: 5, scope: !2338)
!2341 = !DILocation(line: 750, column: 17, scope: !2338)
!2342 = !DILocation(line: 753, column: 2, scope: !1779)
!2343 = !DILocation(line: 756, column: 51, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !1779, file: !458, line: 756, column: 7)
!2345 = !DILocation(line: 756, column: 21, scope: !2344)
!2346 = !DILocation(line: 760, column: 42, scope: !1779)
!2347 = !DILocation(line: 758, column: 10, scope: !1779)
!2348 = !DILocation(line: 758, column: 3, scope: !1779)
!2349 = !DILocation(line: 762, column: 1, scope: !1779)
!2350 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1011, file: !1011, line: 98, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!119}
!2353 = !DISubprogram(name: "strlen", scope: !1003, file: !1003, line: 407, type: !2354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!121, !74}
!2356 = !DISubprogram(name: "iswprint", scope: !2357, file: !2357, line: 120, type: !2155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2358 = distinct !DISubprogram(name: "quotearg_alloc", scope: !458, file: !458, line: 788, type: !2359, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!124, !74, !119, !1672}
!2361 = !{!2362, !2363, !2364}
!2362 = !DILocalVariable(name: "arg", arg: 1, scope: !2358, file: !458, line: 788, type: !74)
!2363 = !DILocalVariable(name: "argsize", arg: 2, scope: !2358, file: !458, line: 788, type: !119)
!2364 = !DILocalVariable(name: "o", arg: 3, scope: !2358, file: !458, line: 789, type: !1672)
!2365 = !DILocation(line: 0, scope: !2358)
!2366 = !DILocalVariable(name: "arg", arg: 1, scope: !2367, file: !458, line: 801, type: !74)
!2367 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !458, file: !458, line: 801, type: !2368, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!124, !74, !119, !757, !1672}
!2370 = !{!2366, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378}
!2371 = !DILocalVariable(name: "argsize", arg: 2, scope: !2367, file: !458, line: 801, type: !119)
!2372 = !DILocalVariable(name: "size", arg: 3, scope: !2367, file: !458, line: 801, type: !757)
!2373 = !DILocalVariable(name: "o", arg: 4, scope: !2367, file: !458, line: 802, type: !1672)
!2374 = !DILocalVariable(name: "p", scope: !2367, file: !458, line: 804, type: !1672)
!2375 = !DILocalVariable(name: "saved_errno", scope: !2367, file: !458, line: 805, type: !117)
!2376 = !DILocalVariable(name: "flags", scope: !2367, file: !458, line: 807, type: !117)
!2377 = !DILocalVariable(name: "bufsize", scope: !2367, file: !458, line: 808, type: !119)
!2378 = !DILocalVariable(name: "buf", scope: !2367, file: !458, line: 812, type: !124)
!2379 = !DILocation(line: 0, scope: !2367, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 791, column: 10, scope: !2358)
!2381 = !DILocation(line: 804, column: 37, scope: !2367, inlinedAt: !2380)
!2382 = !DILocation(line: 805, column: 21, scope: !2367, inlinedAt: !2380)
!2383 = !DILocation(line: 807, column: 18, scope: !2367, inlinedAt: !2380)
!2384 = !DILocation(line: 807, column: 24, scope: !2367, inlinedAt: !2380)
!2385 = !DILocation(line: 808, column: 72, scope: !2367, inlinedAt: !2380)
!2386 = !DILocation(line: 809, column: 56, scope: !2367, inlinedAt: !2380)
!2387 = !DILocation(line: 810, column: 49, scope: !2367, inlinedAt: !2380)
!2388 = !DILocation(line: 811, column: 49, scope: !2367, inlinedAt: !2380)
!2389 = !DILocation(line: 808, column: 20, scope: !2367, inlinedAt: !2380)
!2390 = !DILocation(line: 811, column: 62, scope: !2367, inlinedAt: !2380)
!2391 = !DILocation(line: 812, column: 15, scope: !2367, inlinedAt: !2380)
!2392 = !DILocation(line: 813, column: 60, scope: !2367, inlinedAt: !2380)
!2393 = !DILocation(line: 815, column: 32, scope: !2367, inlinedAt: !2380)
!2394 = !DILocation(line: 815, column: 47, scope: !2367, inlinedAt: !2380)
!2395 = !DILocation(line: 813, column: 3, scope: !2367, inlinedAt: !2380)
!2396 = !DILocation(line: 816, column: 9, scope: !2367, inlinedAt: !2380)
!2397 = !DILocation(line: 791, column: 3, scope: !2358)
!2398 = !DILocation(line: 0, scope: !2367)
!2399 = !DILocation(line: 804, column: 37, scope: !2367)
!2400 = !DILocation(line: 805, column: 21, scope: !2367)
!2401 = !DILocation(line: 807, column: 18, scope: !2367)
!2402 = !DILocation(line: 807, column: 27, scope: !2367)
!2403 = !DILocation(line: 807, column: 24, scope: !2367)
!2404 = !DILocation(line: 808, column: 72, scope: !2367)
!2405 = !DILocation(line: 809, column: 56, scope: !2367)
!2406 = !DILocation(line: 810, column: 49, scope: !2367)
!2407 = !DILocation(line: 811, column: 49, scope: !2367)
!2408 = !DILocation(line: 808, column: 20, scope: !2367)
!2409 = !DILocation(line: 811, column: 62, scope: !2367)
!2410 = !DILocation(line: 812, column: 15, scope: !2367)
!2411 = !DILocation(line: 813, column: 60, scope: !2367)
!2412 = !DILocation(line: 815, column: 32, scope: !2367)
!2413 = !DILocation(line: 815, column: 47, scope: !2367)
!2414 = !DILocation(line: 813, column: 3, scope: !2367)
!2415 = !DILocation(line: 816, column: 9, scope: !2367)
!2416 = !DILocation(line: 817, column: 7, scope: !2367)
!2417 = !DILocation(line: 818, column: 11, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2367, file: !458, line: 817, column: 7)
!2419 = !DILocation(line: 818, column: 5, scope: !2418)
!2420 = !DILocation(line: 819, column: 3, scope: !2367)
!2421 = distinct !DISubprogram(name: "quotearg_free", scope: !458, file: !458, line: 837, type: !390, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2422)
!2422 = !{!2423, !2424}
!2423 = !DILocalVariable(name: "sv", scope: !2421, file: !458, line: 839, type: !545)
!2424 = !DILocalVariable(name: "i", scope: !2425, file: !458, line: 840, type: !117)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !458, line: 840, column: 3)
!2426 = !DILocation(line: 839, column: 24, scope: !2421)
!2427 = !DILocation(line: 0, scope: !2421)
!2428 = !DILocation(line: 0, scope: !2425)
!2429 = !DILocation(line: 840, column: 21, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2425, file: !458, line: 840, column: 3)
!2431 = !DILocation(line: 840, column: 3, scope: !2425)
!2432 = !DILocation(line: 842, column: 13, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2421, file: !458, line: 842, column: 7)
!2434 = !{!2435, !826, i64 8}
!2435 = !{!"slotvec", !1117, i64 0, !826, i64 8}
!2436 = !DILocation(line: 842, column: 17, scope: !2433)
!2437 = !DILocation(line: 842, column: 7, scope: !2421)
!2438 = !DILocation(line: 841, column: 17, scope: !2430)
!2439 = !DILocation(line: 841, column: 5, scope: !2430)
!2440 = !DILocation(line: 840, column: 32, scope: !2430)
!2441 = distinct !{!2441, !2431, !2442, !929}
!2442 = !DILocation(line: 841, column: 20, scope: !2425)
!2443 = !DILocation(line: 844, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2433, file: !458, line: 843, column: 5)
!2445 = !DILocation(line: 845, column: 21, scope: !2444)
!2446 = !{!2435, !1117, i64 0}
!2447 = !DILocation(line: 846, column: 20, scope: !2444)
!2448 = !DILocation(line: 847, column: 5, scope: !2444)
!2449 = !DILocation(line: 848, column: 10, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2421, file: !458, line: 848, column: 7)
!2451 = !DILocation(line: 848, column: 7, scope: !2421)
!2452 = !DILocation(line: 850, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2450, file: !458, line: 849, column: 5)
!2454 = !DILocation(line: 851, column: 15, scope: !2453)
!2455 = !DILocation(line: 852, column: 5, scope: !2453)
!2456 = !DILocation(line: 853, column: 10, scope: !2421)
!2457 = !DILocation(line: 854, column: 1, scope: !2421)
!2458 = distinct !DISubprogram(name: "quotearg_n", scope: !458, file: !458, line: 919, type: !1000, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2459)
!2459 = !{!2460, !2461}
!2460 = !DILocalVariable(name: "n", arg: 1, scope: !2458, file: !458, line: 919, type: !117)
!2461 = !DILocalVariable(name: "arg", arg: 2, scope: !2458, file: !458, line: 919, type: !74)
!2462 = !DILocation(line: 0, scope: !2458)
!2463 = !DILocation(line: 921, column: 10, scope: !2458)
!2464 = !DILocation(line: 921, column: 3, scope: !2458)
!2465 = distinct !DISubprogram(name: "quotearg_n_options", scope: !458, file: !458, line: 866, type: !2466, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!124, !117, !74, !119, !1672}
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2479, !2480, !2482, !2483, !2484}
!2469 = !DILocalVariable(name: "n", arg: 1, scope: !2465, file: !458, line: 866, type: !117)
!2470 = !DILocalVariable(name: "arg", arg: 2, scope: !2465, file: !458, line: 866, type: !74)
!2471 = !DILocalVariable(name: "argsize", arg: 3, scope: !2465, file: !458, line: 866, type: !119)
!2472 = !DILocalVariable(name: "options", arg: 4, scope: !2465, file: !458, line: 867, type: !1672)
!2473 = !DILocalVariable(name: "saved_errno", scope: !2465, file: !458, line: 869, type: !117)
!2474 = !DILocalVariable(name: "sv", scope: !2465, file: !458, line: 871, type: !545)
!2475 = !DILocalVariable(name: "nslots_max", scope: !2465, file: !458, line: 873, type: !117)
!2476 = !DILocalVariable(name: "preallocated", scope: !2477, file: !458, line: 879, type: !247)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !458, line: 878, column: 5)
!2478 = distinct !DILexicalBlock(scope: !2465, file: !458, line: 877, column: 7)
!2479 = !DILocalVariable(name: "new_nslots", scope: !2477, file: !458, line: 880, type: !770)
!2480 = !DILocalVariable(name: "size", scope: !2481, file: !458, line: 891, type: !119)
!2481 = distinct !DILexicalBlock(scope: !2465, file: !458, line: 890, column: 3)
!2482 = !DILocalVariable(name: "val", scope: !2481, file: !458, line: 892, type: !124)
!2483 = !DILocalVariable(name: "flags", scope: !2481, file: !458, line: 894, type: !117)
!2484 = !DILocalVariable(name: "qsize", scope: !2481, file: !458, line: 895, type: !119)
!2485 = !DILocation(line: 0, scope: !2465)
!2486 = !DILocation(line: 869, column: 21, scope: !2465)
!2487 = !DILocation(line: 871, column: 24, scope: !2465)
!2488 = !DILocation(line: 874, column: 17, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2465, file: !458, line: 874, column: 7)
!2490 = !DILocation(line: 875, column: 5, scope: !2489)
!2491 = !DILocation(line: 877, column: 7, scope: !2478)
!2492 = !DILocation(line: 877, column: 14, scope: !2478)
!2493 = !DILocation(line: 877, column: 7, scope: !2465)
!2494 = !DILocation(line: 879, column: 31, scope: !2477)
!2495 = !DILocation(line: 0, scope: !2477)
!2496 = !DILocation(line: 880, column: 7, scope: !2477)
!2497 = !DILocation(line: 880, column: 26, scope: !2477)
!2498 = !DILocation(line: 880, column: 13, scope: !2477)
!2499 = !DILocation(line: 882, column: 31, scope: !2477)
!2500 = !DILocation(line: 883, column: 33, scope: !2477)
!2501 = !DILocation(line: 883, column: 42, scope: !2477)
!2502 = !DILocation(line: 883, column: 31, scope: !2477)
!2503 = !DILocation(line: 882, column: 22, scope: !2477)
!2504 = !DILocation(line: 882, column: 15, scope: !2477)
!2505 = !DILocation(line: 884, column: 11, scope: !2477)
!2506 = !DILocation(line: 885, column: 15, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2477, file: !458, line: 884, column: 11)
!2508 = !{i64 0, i64 8, !1116, i64 8, i64 8, !825}
!2509 = !DILocation(line: 885, column: 9, scope: !2507)
!2510 = !DILocation(line: 886, column: 20, scope: !2477)
!2511 = !DILocation(line: 886, column: 18, scope: !2477)
!2512 = !DILocation(line: 886, column: 32, scope: !2477)
!2513 = !DILocation(line: 886, column: 43, scope: !2477)
!2514 = !DILocation(line: 886, column: 53, scope: !2477)
!2515 = !DILocation(line: 0, scope: !1887, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 886, column: 7, scope: !2477)
!2517 = !DILocation(line: 59, column: 10, scope: !1887, inlinedAt: !2516)
!2518 = !DILocation(line: 887, column: 16, scope: !2477)
!2519 = !DILocation(line: 887, column: 14, scope: !2477)
!2520 = !DILocation(line: 888, column: 5, scope: !2478)
!2521 = !DILocation(line: 888, column: 5, scope: !2477)
!2522 = !DILocation(line: 891, column: 19, scope: !2481)
!2523 = !DILocation(line: 891, column: 25, scope: !2481)
!2524 = !DILocation(line: 0, scope: !2481)
!2525 = !DILocation(line: 892, column: 23, scope: !2481)
!2526 = !DILocation(line: 894, column: 26, scope: !2481)
!2527 = !DILocation(line: 894, column: 32, scope: !2481)
!2528 = !DILocation(line: 896, column: 55, scope: !2481)
!2529 = !DILocation(line: 897, column: 55, scope: !2481)
!2530 = !DILocation(line: 898, column: 55, scope: !2481)
!2531 = !DILocation(line: 899, column: 55, scope: !2481)
!2532 = !DILocation(line: 895, column: 20, scope: !2481)
!2533 = !DILocation(line: 901, column: 14, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2481, file: !458, line: 901, column: 9)
!2535 = !DILocation(line: 901, column: 9, scope: !2481)
!2536 = !DILocation(line: 903, column: 35, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !458, line: 902, column: 7)
!2538 = !DILocation(line: 903, column: 20, scope: !2537)
!2539 = !DILocation(line: 904, column: 17, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !458, line: 904, column: 13)
!2541 = !DILocation(line: 904, column: 13, scope: !2537)
!2542 = !DILocation(line: 905, column: 11, scope: !2540)
!2543 = !DILocation(line: 906, column: 27, scope: !2537)
!2544 = !DILocation(line: 906, column: 19, scope: !2537)
!2545 = !DILocation(line: 907, column: 69, scope: !2537)
!2546 = !DILocation(line: 909, column: 44, scope: !2537)
!2547 = !DILocation(line: 910, column: 44, scope: !2537)
!2548 = !DILocation(line: 907, column: 9, scope: !2537)
!2549 = !DILocation(line: 911, column: 7, scope: !2537)
!2550 = !DILocation(line: 913, column: 11, scope: !2481)
!2551 = !DILocation(line: 914, column: 5, scope: !2481)
!2552 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !458, file: !458, line: 925, type: !2553, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!124, !117, !74, !119}
!2555 = !{!2556, !2557, !2558}
!2556 = !DILocalVariable(name: "n", arg: 1, scope: !2552, file: !458, line: 925, type: !117)
!2557 = !DILocalVariable(name: "arg", arg: 2, scope: !2552, file: !458, line: 925, type: !74)
!2558 = !DILocalVariable(name: "argsize", arg: 3, scope: !2552, file: !458, line: 925, type: !119)
!2559 = !DILocation(line: 0, scope: !2552)
!2560 = !DILocation(line: 927, column: 10, scope: !2552)
!2561 = !DILocation(line: 927, column: 3, scope: !2552)
!2562 = distinct !DISubprogram(name: "quotearg", scope: !458, file: !458, line: 931, type: !1013, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2563)
!2563 = !{!2564}
!2564 = !DILocalVariable(name: "arg", arg: 1, scope: !2562, file: !458, line: 931, type: !74)
!2565 = !DILocation(line: 0, scope: !2562)
!2566 = !DILocation(line: 0, scope: !2458, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 933, column: 10, scope: !2562)
!2568 = !DILocation(line: 921, column: 10, scope: !2458, inlinedAt: !2567)
!2569 = !DILocation(line: 933, column: 3, scope: !2562)
!2570 = distinct !DISubprogram(name: "quotearg_mem", scope: !458, file: !458, line: 937, type: !2571, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!124, !74, !119}
!2573 = !{!2574, !2575}
!2574 = !DILocalVariable(name: "arg", arg: 1, scope: !2570, file: !458, line: 937, type: !74)
!2575 = !DILocalVariable(name: "argsize", arg: 2, scope: !2570, file: !458, line: 937, type: !119)
!2576 = !DILocation(line: 0, scope: !2570)
!2577 = !DILocation(line: 0, scope: !2552, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 939, column: 10, scope: !2570)
!2579 = !DILocation(line: 927, column: 10, scope: !2552, inlinedAt: !2578)
!2580 = !DILocation(line: 939, column: 3, scope: !2570)
!2581 = distinct !DISubprogram(name: "quotearg_n_style", scope: !458, file: !458, line: 943, type: !2582, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!124, !117, !101, !74}
!2584 = !{!2585, !2586, !2587, !2588}
!2585 = !DILocalVariable(name: "n", arg: 1, scope: !2581, file: !458, line: 943, type: !117)
!2586 = !DILocalVariable(name: "s", arg: 2, scope: !2581, file: !458, line: 943, type: !101)
!2587 = !DILocalVariable(name: "arg", arg: 3, scope: !2581, file: !458, line: 943, type: !74)
!2588 = !DILocalVariable(name: "o", scope: !2581, file: !458, line: 945, type: !1673)
!2589 = !DILocation(line: 0, scope: !2581)
!2590 = !DILocation(line: 945, column: 3, scope: !2581)
!2591 = !DILocation(line: 945, column: 32, scope: !2581)
!2592 = !{!2593}
!2593 = distinct !{!2593, !2594, !"quoting_options_from_style: argument 0"}
!2594 = distinct !{!2594, !"quoting_options_from_style"}
!2595 = !DILocation(line: 945, column: 36, scope: !2581)
!2596 = !DILocalVariable(name: "style", arg: 1, scope: !2597, file: !458, line: 183, type: !101)
!2597 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !458, file: !458, line: 183, type: !2598, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!497, !101}
!2600 = !{!2596, !2601}
!2601 = !DILocalVariable(name: "o", scope: !2597, file: !458, line: 185, type: !497)
!2602 = !DILocation(line: 0, scope: !2597, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 945, column: 36, scope: !2581)
!2604 = !DILocation(line: 185, column: 26, scope: !2597, inlinedAt: !2603)
!2605 = !DILocation(line: 186, column: 13, scope: !2606, inlinedAt: !2603)
!2606 = distinct !DILexicalBlock(scope: !2597, file: !458, line: 186, column: 7)
!2607 = !DILocation(line: 186, column: 7, scope: !2597, inlinedAt: !2603)
!2608 = !DILocation(line: 187, column: 5, scope: !2606, inlinedAt: !2603)
!2609 = !DILocation(line: 188, column: 11, scope: !2597, inlinedAt: !2603)
!2610 = !DILocation(line: 946, column: 10, scope: !2581)
!2611 = !DILocation(line: 947, column: 1, scope: !2581)
!2612 = !DILocation(line: 946, column: 3, scope: !2581)
!2613 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !458, file: !458, line: 950, type: !2614, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!124, !117, !101, !74, !119}
!2616 = !{!2617, !2618, !2619, !2620, !2621}
!2617 = !DILocalVariable(name: "n", arg: 1, scope: !2613, file: !458, line: 950, type: !117)
!2618 = !DILocalVariable(name: "s", arg: 2, scope: !2613, file: !458, line: 950, type: !101)
!2619 = !DILocalVariable(name: "arg", arg: 3, scope: !2613, file: !458, line: 951, type: !74)
!2620 = !DILocalVariable(name: "argsize", arg: 4, scope: !2613, file: !458, line: 951, type: !119)
!2621 = !DILocalVariable(name: "o", scope: !2613, file: !458, line: 953, type: !1673)
!2622 = !DILocation(line: 0, scope: !2613)
!2623 = !DILocation(line: 953, column: 3, scope: !2613)
!2624 = !DILocation(line: 953, column: 32, scope: !2613)
!2625 = !{!2626}
!2626 = distinct !{!2626, !2627, !"quoting_options_from_style: argument 0"}
!2627 = distinct !{!2627, !"quoting_options_from_style"}
!2628 = !DILocation(line: 953, column: 36, scope: !2613)
!2629 = !DILocation(line: 0, scope: !2597, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 953, column: 36, scope: !2613)
!2631 = !DILocation(line: 185, column: 26, scope: !2597, inlinedAt: !2630)
!2632 = !DILocation(line: 186, column: 13, scope: !2606, inlinedAt: !2630)
!2633 = !DILocation(line: 186, column: 7, scope: !2597, inlinedAt: !2630)
!2634 = !DILocation(line: 187, column: 5, scope: !2606, inlinedAt: !2630)
!2635 = !DILocation(line: 188, column: 11, scope: !2597, inlinedAt: !2630)
!2636 = !DILocation(line: 954, column: 10, scope: !2613)
!2637 = !DILocation(line: 955, column: 1, scope: !2613)
!2638 = !DILocation(line: 954, column: 3, scope: !2613)
!2639 = distinct !DISubprogram(name: "quotearg_style", scope: !458, file: !458, line: 958, type: !2640, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!124, !101, !74}
!2642 = !{!2643, !2644}
!2643 = !DILocalVariable(name: "s", arg: 1, scope: !2639, file: !458, line: 958, type: !101)
!2644 = !DILocalVariable(name: "arg", arg: 2, scope: !2639, file: !458, line: 958, type: !74)
!2645 = !DILocation(line: 0, scope: !2639)
!2646 = !DILocation(line: 0, scope: !2581, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 960, column: 10, scope: !2639)
!2648 = !DILocation(line: 945, column: 3, scope: !2581, inlinedAt: !2647)
!2649 = !DILocation(line: 945, column: 32, scope: !2581, inlinedAt: !2647)
!2650 = !{!2651}
!2651 = distinct !{!2651, !2652, !"quoting_options_from_style: argument 0"}
!2652 = distinct !{!2652, !"quoting_options_from_style"}
!2653 = !DILocation(line: 945, column: 36, scope: !2581, inlinedAt: !2647)
!2654 = !DILocation(line: 0, scope: !2597, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 945, column: 36, scope: !2581, inlinedAt: !2647)
!2656 = !DILocation(line: 185, column: 26, scope: !2597, inlinedAt: !2655)
!2657 = !DILocation(line: 186, column: 13, scope: !2606, inlinedAt: !2655)
!2658 = !DILocation(line: 186, column: 7, scope: !2597, inlinedAt: !2655)
!2659 = !DILocation(line: 187, column: 5, scope: !2606, inlinedAt: !2655)
!2660 = !DILocation(line: 188, column: 11, scope: !2597, inlinedAt: !2655)
!2661 = !DILocation(line: 946, column: 10, scope: !2581, inlinedAt: !2647)
!2662 = !DILocation(line: 947, column: 1, scope: !2581, inlinedAt: !2647)
!2663 = !DILocation(line: 960, column: 3, scope: !2639)
!2664 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !458, file: !458, line: 964, type: !2665, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!124, !101, !74, !119}
!2667 = !{!2668, !2669, !2670}
!2668 = !DILocalVariable(name: "s", arg: 1, scope: !2664, file: !458, line: 964, type: !101)
!2669 = !DILocalVariable(name: "arg", arg: 2, scope: !2664, file: !458, line: 964, type: !74)
!2670 = !DILocalVariable(name: "argsize", arg: 3, scope: !2664, file: !458, line: 964, type: !119)
!2671 = !DILocation(line: 0, scope: !2664)
!2672 = !DILocation(line: 0, scope: !2613, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 966, column: 10, scope: !2664)
!2674 = !DILocation(line: 953, column: 3, scope: !2613, inlinedAt: !2673)
!2675 = !DILocation(line: 953, column: 32, scope: !2613, inlinedAt: !2673)
!2676 = !{!2677}
!2677 = distinct !{!2677, !2678, !"quoting_options_from_style: argument 0"}
!2678 = distinct !{!2678, !"quoting_options_from_style"}
!2679 = !DILocation(line: 953, column: 36, scope: !2613, inlinedAt: !2673)
!2680 = !DILocation(line: 0, scope: !2597, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 953, column: 36, scope: !2613, inlinedAt: !2673)
!2682 = !DILocation(line: 185, column: 26, scope: !2597, inlinedAt: !2681)
!2683 = !DILocation(line: 186, column: 13, scope: !2606, inlinedAt: !2681)
!2684 = !DILocation(line: 186, column: 7, scope: !2597, inlinedAt: !2681)
!2685 = !DILocation(line: 187, column: 5, scope: !2606, inlinedAt: !2681)
!2686 = !DILocation(line: 188, column: 11, scope: !2597, inlinedAt: !2681)
!2687 = !DILocation(line: 954, column: 10, scope: !2613, inlinedAt: !2673)
!2688 = !DILocation(line: 955, column: 1, scope: !2613, inlinedAt: !2673)
!2689 = !DILocation(line: 966, column: 3, scope: !2664)
!2690 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !458, file: !458, line: 970, type: !2691, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!124, !74, !119, !4}
!2693 = !{!2694, !2695, !2696, !2697}
!2694 = !DILocalVariable(name: "arg", arg: 1, scope: !2690, file: !458, line: 970, type: !74)
!2695 = !DILocalVariable(name: "argsize", arg: 2, scope: !2690, file: !458, line: 970, type: !119)
!2696 = !DILocalVariable(name: "ch", arg: 3, scope: !2690, file: !458, line: 970, type: !4)
!2697 = !DILocalVariable(name: "options", scope: !2690, file: !458, line: 972, type: !497)
!2698 = !DILocation(line: 0, scope: !2690)
!2699 = !DILocation(line: 972, column: 3, scope: !2690)
!2700 = !DILocation(line: 972, column: 26, scope: !2690)
!2701 = !DILocation(line: 973, column: 13, scope: !2690)
!2702 = !{i64 0, i64 4, !891, i64 4, i64 4, !882, i64 8, i64 32, !891, i64 40, i64 8, !825, i64 48, i64 8, !825}
!2703 = !DILocation(line: 0, scope: !1692, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 974, column: 3, scope: !2690)
!2705 = !DILocation(line: 147, column: 41, scope: !1692, inlinedAt: !2704)
!2706 = !DILocation(line: 147, column: 62, scope: !1692, inlinedAt: !2704)
!2707 = !DILocation(line: 147, column: 57, scope: !1692, inlinedAt: !2704)
!2708 = !DILocation(line: 148, column: 15, scope: !1692, inlinedAt: !2704)
!2709 = !DILocation(line: 149, column: 21, scope: !1692, inlinedAt: !2704)
!2710 = !DILocation(line: 149, column: 24, scope: !1692, inlinedAt: !2704)
!2711 = !DILocation(line: 150, column: 19, scope: !1692, inlinedAt: !2704)
!2712 = !DILocation(line: 150, column: 24, scope: !1692, inlinedAt: !2704)
!2713 = !DILocation(line: 150, column: 6, scope: !1692, inlinedAt: !2704)
!2714 = !DILocation(line: 975, column: 10, scope: !2690)
!2715 = !DILocation(line: 976, column: 1, scope: !2690)
!2716 = !DILocation(line: 975, column: 3, scope: !2690)
!2717 = distinct !DISubprogram(name: "quotearg_char", scope: !458, file: !458, line: 979, type: !2718, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!124, !74, !4}
!2720 = !{!2721, !2722}
!2721 = !DILocalVariable(name: "arg", arg: 1, scope: !2717, file: !458, line: 979, type: !74)
!2722 = !DILocalVariable(name: "ch", arg: 2, scope: !2717, file: !458, line: 979, type: !4)
!2723 = !DILocation(line: 0, scope: !2717)
!2724 = !DILocation(line: 0, scope: !2690, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 981, column: 10, scope: !2717)
!2726 = !DILocation(line: 972, column: 3, scope: !2690, inlinedAt: !2725)
!2727 = !DILocation(line: 972, column: 26, scope: !2690, inlinedAt: !2725)
!2728 = !DILocation(line: 973, column: 13, scope: !2690, inlinedAt: !2725)
!2729 = !DILocation(line: 0, scope: !1692, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 974, column: 3, scope: !2690, inlinedAt: !2725)
!2731 = !DILocation(line: 147, column: 41, scope: !1692, inlinedAt: !2730)
!2732 = !DILocation(line: 147, column: 62, scope: !1692, inlinedAt: !2730)
!2733 = !DILocation(line: 147, column: 57, scope: !1692, inlinedAt: !2730)
!2734 = !DILocation(line: 148, column: 15, scope: !1692, inlinedAt: !2730)
!2735 = !DILocation(line: 149, column: 21, scope: !1692, inlinedAt: !2730)
!2736 = !DILocation(line: 149, column: 24, scope: !1692, inlinedAt: !2730)
!2737 = !DILocation(line: 150, column: 19, scope: !1692, inlinedAt: !2730)
!2738 = !DILocation(line: 150, column: 24, scope: !1692, inlinedAt: !2730)
!2739 = !DILocation(line: 150, column: 6, scope: !1692, inlinedAt: !2730)
!2740 = !DILocation(line: 975, column: 10, scope: !2690, inlinedAt: !2725)
!2741 = !DILocation(line: 976, column: 1, scope: !2690, inlinedAt: !2725)
!2742 = !DILocation(line: 981, column: 3, scope: !2717)
!2743 = distinct !DISubprogram(name: "quotearg_colon", scope: !458, file: !458, line: 985, type: !1013, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2744)
!2744 = !{!2745}
!2745 = !DILocalVariable(name: "arg", arg: 1, scope: !2743, file: !458, line: 985, type: !74)
!2746 = !DILocation(line: 0, scope: !2743)
!2747 = !DILocation(line: 0, scope: !2717, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 987, column: 10, scope: !2743)
!2749 = !DILocation(line: 0, scope: !2690, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 981, column: 10, scope: !2717, inlinedAt: !2748)
!2751 = !DILocation(line: 972, column: 3, scope: !2690, inlinedAt: !2750)
!2752 = !DILocation(line: 972, column: 26, scope: !2690, inlinedAt: !2750)
!2753 = !DILocation(line: 973, column: 13, scope: !2690, inlinedAt: !2750)
!2754 = !DILocation(line: 0, scope: !1692, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 974, column: 3, scope: !2690, inlinedAt: !2750)
!2756 = !DILocation(line: 147, column: 57, scope: !1692, inlinedAt: !2755)
!2757 = !DILocation(line: 149, column: 21, scope: !1692, inlinedAt: !2755)
!2758 = !DILocation(line: 150, column: 6, scope: !1692, inlinedAt: !2755)
!2759 = !DILocation(line: 975, column: 10, scope: !2690, inlinedAt: !2750)
!2760 = !DILocation(line: 976, column: 1, scope: !2690, inlinedAt: !2750)
!2761 = !DILocation(line: 987, column: 3, scope: !2743)
!2762 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !458, file: !458, line: 991, type: !2571, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2763)
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "arg", arg: 1, scope: !2762, file: !458, line: 991, type: !74)
!2765 = !DILocalVariable(name: "argsize", arg: 2, scope: !2762, file: !458, line: 991, type: !119)
!2766 = !DILocation(line: 0, scope: !2762)
!2767 = !DILocation(line: 0, scope: !2690, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 993, column: 10, scope: !2762)
!2769 = !DILocation(line: 972, column: 3, scope: !2690, inlinedAt: !2768)
!2770 = !DILocation(line: 972, column: 26, scope: !2690, inlinedAt: !2768)
!2771 = !DILocation(line: 973, column: 13, scope: !2690, inlinedAt: !2768)
!2772 = !DILocation(line: 0, scope: !1692, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 974, column: 3, scope: !2690, inlinedAt: !2768)
!2774 = !DILocation(line: 147, column: 57, scope: !1692, inlinedAt: !2773)
!2775 = !DILocation(line: 149, column: 21, scope: !1692, inlinedAt: !2773)
!2776 = !DILocation(line: 150, column: 6, scope: !1692, inlinedAt: !2773)
!2777 = !DILocation(line: 975, column: 10, scope: !2690, inlinedAt: !2768)
!2778 = !DILocation(line: 976, column: 1, scope: !2690, inlinedAt: !2768)
!2779 = !DILocation(line: 993, column: 3, scope: !2762)
!2780 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !458, file: !458, line: 997, type: !2582, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2781)
!2781 = !{!2782, !2783, !2784, !2785}
!2782 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !458, line: 997, type: !117)
!2783 = !DILocalVariable(name: "s", arg: 2, scope: !2780, file: !458, line: 997, type: !101)
!2784 = !DILocalVariable(name: "arg", arg: 3, scope: !2780, file: !458, line: 997, type: !74)
!2785 = !DILocalVariable(name: "options", scope: !2780, file: !458, line: 999, type: !497)
!2786 = !DILocation(line: 185, column: 26, scope: !2597, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 1000, column: 13, scope: !2780)
!2788 = !DILocation(line: 0, scope: !2780)
!2789 = !DILocation(line: 999, column: 3, scope: !2780)
!2790 = !DILocation(line: 999, column: 26, scope: !2780)
!2791 = !DILocation(line: 0, scope: !2597, inlinedAt: !2787)
!2792 = !DILocation(line: 186, column: 13, scope: !2606, inlinedAt: !2787)
!2793 = !DILocation(line: 186, column: 7, scope: !2597, inlinedAt: !2787)
!2794 = !DILocation(line: 187, column: 5, scope: !2606, inlinedAt: !2787)
!2795 = !{!2796}
!2796 = distinct !{!2796, !2797, !"quoting_options_from_style: argument 0"}
!2797 = distinct !{!2797, !"quoting_options_from_style"}
!2798 = !DILocation(line: 1000, column: 13, scope: !2780)
!2799 = !DILocation(line: 0, scope: !1692, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 1001, column: 3, scope: !2780)
!2801 = !DILocation(line: 147, column: 57, scope: !1692, inlinedAt: !2800)
!2802 = !DILocation(line: 149, column: 21, scope: !1692, inlinedAt: !2800)
!2803 = !DILocation(line: 150, column: 6, scope: !1692, inlinedAt: !2800)
!2804 = !DILocation(line: 1002, column: 10, scope: !2780)
!2805 = !DILocation(line: 1003, column: 1, scope: !2780)
!2806 = !DILocation(line: 1002, column: 3, scope: !2780)
!2807 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !458, file: !458, line: 1006, type: !2808, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!124, !117, !74, !74, !74}
!2810 = !{!2811, !2812, !2813, !2814}
!2811 = !DILocalVariable(name: "n", arg: 1, scope: !2807, file: !458, line: 1006, type: !117)
!2812 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2807, file: !458, line: 1006, type: !74)
!2813 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2807, file: !458, line: 1007, type: !74)
!2814 = !DILocalVariable(name: "arg", arg: 4, scope: !2807, file: !458, line: 1007, type: !74)
!2815 = !DILocation(line: 0, scope: !2807)
!2816 = !DILocalVariable(name: "n", arg: 1, scope: !2817, file: !458, line: 1014, type: !117)
!2817 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !458, file: !458, line: 1014, type: !2818, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!124, !117, !74, !74, !74, !119}
!2820 = !{!2816, !2821, !2822, !2823, !2824, !2825}
!2821 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2817, file: !458, line: 1014, type: !74)
!2822 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2817, file: !458, line: 1015, type: !74)
!2823 = !DILocalVariable(name: "arg", arg: 4, scope: !2817, file: !458, line: 1016, type: !74)
!2824 = !DILocalVariable(name: "argsize", arg: 5, scope: !2817, file: !458, line: 1016, type: !119)
!2825 = !DILocalVariable(name: "o", scope: !2817, file: !458, line: 1018, type: !497)
!2826 = !DILocation(line: 0, scope: !2817, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1009, column: 10, scope: !2807)
!2828 = !DILocation(line: 1018, column: 3, scope: !2817, inlinedAt: !2827)
!2829 = !DILocation(line: 1018, column: 26, scope: !2817, inlinedAt: !2827)
!2830 = !DILocation(line: 1018, column: 30, scope: !2817, inlinedAt: !2827)
!2831 = !DILocation(line: 0, scope: !1732, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 1019, column: 3, scope: !2817, inlinedAt: !2827)
!2833 = !DILocation(line: 174, column: 12, scope: !1732, inlinedAt: !2832)
!2834 = !DILocation(line: 175, column: 8, scope: !1745, inlinedAt: !2832)
!2835 = !DILocation(line: 175, column: 19, scope: !1745, inlinedAt: !2832)
!2836 = !DILocation(line: 176, column: 5, scope: !1745, inlinedAt: !2832)
!2837 = !DILocation(line: 177, column: 6, scope: !1732, inlinedAt: !2832)
!2838 = !DILocation(line: 177, column: 17, scope: !1732, inlinedAt: !2832)
!2839 = !DILocation(line: 178, column: 6, scope: !1732, inlinedAt: !2832)
!2840 = !DILocation(line: 178, column: 18, scope: !1732, inlinedAt: !2832)
!2841 = !DILocation(line: 1020, column: 10, scope: !2817, inlinedAt: !2827)
!2842 = !DILocation(line: 1021, column: 1, scope: !2817, inlinedAt: !2827)
!2843 = !DILocation(line: 1009, column: 3, scope: !2807)
!2844 = !DILocation(line: 0, scope: !2817)
!2845 = !DILocation(line: 1018, column: 3, scope: !2817)
!2846 = !DILocation(line: 1018, column: 26, scope: !2817)
!2847 = !DILocation(line: 1018, column: 30, scope: !2817)
!2848 = !DILocation(line: 0, scope: !1732, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 1019, column: 3, scope: !2817)
!2850 = !DILocation(line: 174, column: 12, scope: !1732, inlinedAt: !2849)
!2851 = !DILocation(line: 175, column: 8, scope: !1745, inlinedAt: !2849)
!2852 = !DILocation(line: 175, column: 19, scope: !1745, inlinedAt: !2849)
!2853 = !DILocation(line: 176, column: 5, scope: !1745, inlinedAt: !2849)
!2854 = !DILocation(line: 177, column: 6, scope: !1732, inlinedAt: !2849)
!2855 = !DILocation(line: 177, column: 17, scope: !1732, inlinedAt: !2849)
!2856 = !DILocation(line: 178, column: 6, scope: !1732, inlinedAt: !2849)
!2857 = !DILocation(line: 178, column: 18, scope: !1732, inlinedAt: !2849)
!2858 = !DILocation(line: 1020, column: 10, scope: !2817)
!2859 = !DILocation(line: 1021, column: 1, scope: !2817)
!2860 = !DILocation(line: 1020, column: 3, scope: !2817)
!2861 = distinct !DISubprogram(name: "quotearg_custom", scope: !458, file: !458, line: 1024, type: !2862, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!124, !74, !74, !74}
!2864 = !{!2865, !2866, !2867}
!2865 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2861, file: !458, line: 1024, type: !74)
!2866 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2861, file: !458, line: 1024, type: !74)
!2867 = !DILocalVariable(name: "arg", arg: 3, scope: !2861, file: !458, line: 1025, type: !74)
!2868 = !DILocation(line: 0, scope: !2861)
!2869 = !DILocation(line: 0, scope: !2807, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 1027, column: 10, scope: !2861)
!2871 = !DILocation(line: 0, scope: !2817, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1009, column: 10, scope: !2807, inlinedAt: !2870)
!2873 = !DILocation(line: 1018, column: 3, scope: !2817, inlinedAt: !2872)
!2874 = !DILocation(line: 1018, column: 26, scope: !2817, inlinedAt: !2872)
!2875 = !DILocation(line: 1018, column: 30, scope: !2817, inlinedAt: !2872)
!2876 = !DILocation(line: 0, scope: !1732, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 1019, column: 3, scope: !2817, inlinedAt: !2872)
!2878 = !DILocation(line: 174, column: 12, scope: !1732, inlinedAt: !2877)
!2879 = !DILocation(line: 175, column: 8, scope: !1745, inlinedAt: !2877)
!2880 = !DILocation(line: 175, column: 19, scope: !1745, inlinedAt: !2877)
!2881 = !DILocation(line: 176, column: 5, scope: !1745, inlinedAt: !2877)
!2882 = !DILocation(line: 177, column: 6, scope: !1732, inlinedAt: !2877)
!2883 = !DILocation(line: 177, column: 17, scope: !1732, inlinedAt: !2877)
!2884 = !DILocation(line: 178, column: 6, scope: !1732, inlinedAt: !2877)
!2885 = !DILocation(line: 178, column: 18, scope: !1732, inlinedAt: !2877)
!2886 = !DILocation(line: 1020, column: 10, scope: !2817, inlinedAt: !2872)
!2887 = !DILocation(line: 1021, column: 1, scope: !2817, inlinedAt: !2872)
!2888 = !DILocation(line: 1027, column: 3, scope: !2861)
!2889 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !458, file: !458, line: 1031, type: !2890, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!124, !74, !74, !74, !119}
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2889, file: !458, line: 1031, type: !74)
!2894 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2889, file: !458, line: 1031, type: !74)
!2895 = !DILocalVariable(name: "arg", arg: 3, scope: !2889, file: !458, line: 1032, type: !74)
!2896 = !DILocalVariable(name: "argsize", arg: 4, scope: !2889, file: !458, line: 1032, type: !119)
!2897 = !DILocation(line: 0, scope: !2889)
!2898 = !DILocation(line: 0, scope: !2817, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 1034, column: 10, scope: !2889)
!2900 = !DILocation(line: 1018, column: 3, scope: !2817, inlinedAt: !2899)
!2901 = !DILocation(line: 1018, column: 26, scope: !2817, inlinedAt: !2899)
!2902 = !DILocation(line: 1018, column: 30, scope: !2817, inlinedAt: !2899)
!2903 = !DILocation(line: 0, scope: !1732, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 1019, column: 3, scope: !2817, inlinedAt: !2899)
!2905 = !DILocation(line: 174, column: 12, scope: !1732, inlinedAt: !2904)
!2906 = !DILocation(line: 175, column: 8, scope: !1745, inlinedAt: !2904)
!2907 = !DILocation(line: 175, column: 19, scope: !1745, inlinedAt: !2904)
!2908 = !DILocation(line: 176, column: 5, scope: !1745, inlinedAt: !2904)
!2909 = !DILocation(line: 177, column: 6, scope: !1732, inlinedAt: !2904)
!2910 = !DILocation(line: 177, column: 17, scope: !1732, inlinedAt: !2904)
!2911 = !DILocation(line: 178, column: 6, scope: !1732, inlinedAt: !2904)
!2912 = !DILocation(line: 178, column: 18, scope: !1732, inlinedAt: !2904)
!2913 = !DILocation(line: 1020, column: 10, scope: !2817, inlinedAt: !2899)
!2914 = !DILocation(line: 1021, column: 1, scope: !2817, inlinedAt: !2899)
!2915 = !DILocation(line: 1034, column: 3, scope: !2889)
!2916 = distinct !DISubprogram(name: "quote_n_mem", scope: !458, file: !458, line: 1049, type: !2917, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!74, !117, !74, !119}
!2919 = !{!2920, !2921, !2922}
!2920 = !DILocalVariable(name: "n", arg: 1, scope: !2916, file: !458, line: 1049, type: !117)
!2921 = !DILocalVariable(name: "arg", arg: 2, scope: !2916, file: !458, line: 1049, type: !74)
!2922 = !DILocalVariable(name: "argsize", arg: 3, scope: !2916, file: !458, line: 1049, type: !119)
!2923 = !DILocation(line: 0, scope: !2916)
!2924 = !DILocation(line: 1051, column: 10, scope: !2916)
!2925 = !DILocation(line: 1051, column: 3, scope: !2916)
!2926 = distinct !DISubprogram(name: "quote_mem", scope: !458, file: !458, line: 1055, type: !2927, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!74, !74, !119}
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "arg", arg: 1, scope: !2926, file: !458, line: 1055, type: !74)
!2931 = !DILocalVariable(name: "argsize", arg: 2, scope: !2926, file: !458, line: 1055, type: !119)
!2932 = !DILocation(line: 0, scope: !2926)
!2933 = !DILocation(line: 0, scope: !2916, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 1057, column: 10, scope: !2926)
!2935 = !DILocation(line: 1051, column: 10, scope: !2916, inlinedAt: !2934)
!2936 = !DILocation(line: 1057, column: 3, scope: !2926)
!2937 = distinct !DISubprogram(name: "quote_n", scope: !458, file: !458, line: 1061, type: !2938, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!74, !117, !74}
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "n", arg: 1, scope: !2937, file: !458, line: 1061, type: !117)
!2942 = !DILocalVariable(name: "arg", arg: 2, scope: !2937, file: !458, line: 1061, type: !74)
!2943 = !DILocation(line: 0, scope: !2937)
!2944 = !DILocation(line: 0, scope: !2916, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 1063, column: 10, scope: !2937)
!2946 = !DILocation(line: 1051, column: 10, scope: !2916, inlinedAt: !2945)
!2947 = !DILocation(line: 1063, column: 3, scope: !2937)
!2948 = distinct !DISubprogram(name: "quote", scope: !458, file: !458, line: 1067, type: !2949, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!74, !74}
!2951 = !{!2952}
!2952 = !DILocalVariable(name: "arg", arg: 1, scope: !2948, file: !458, line: 1067, type: !74)
!2953 = !DILocation(line: 0, scope: !2948)
!2954 = !DILocation(line: 0, scope: !2937, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 1069, column: 10, scope: !2948)
!2956 = !DILocation(line: 0, scope: !2916, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 1063, column: 10, scope: !2937, inlinedAt: !2955)
!2958 = !DILocation(line: 1051, column: 10, scope: !2916, inlinedAt: !2957)
!2959 = !DILocation(line: 1069, column: 3, scope: !2948)
!2960 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !560, file: !560, line: 156, type: !2961, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !2985)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!124, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !79, line: 92, baseType: !2966)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !79, line: 65, size: 576, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2977, !2978, !2979, !2980}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !2966, file: !79, line: 69, baseType: !124, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !2966, file: !79, line: 70, baseType: !124, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !2966, file: !79, line: 71, baseType: !124, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !2966, file: !79, line: 72, baseType: !124, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !2966, file: !79, line: 74, baseType: !2973, size: 128, offset: 256)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1090, line: 11, size: 128, elements: !2974)
!2974 = !{!2975, !2976}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2973, file: !1090, line: 16, baseType: !1093, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2973, file: !1090, line: 21, baseType: !1095, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !2966, file: !79, line: 75, baseType: !1097, size: 32, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !2966, file: !79, line: 76, baseType: !1097, size: 32, offset: 416)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !2966, file: !79, line: 77, baseType: !718, size: 16, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !2966, file: !79, line: 79, baseType: !2981, size: 64, offset: 480)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !79, line: 79, size: 64, elements: !2982)
!2982 = !{!2983, !2984}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !2981, file: !79, line: 79, baseType: !117, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !2981, file: !79, line: 79, baseType: !117, size: 32, offset: 32)
!2985 = !{!2986, !2987, !2988, !2989}
!2986 = !DILocalVariable(name: "ut", arg: 1, scope: !2960, file: !560, line: 156, type: !2963)
!2987 = !DILocalVariable(name: "name", scope: !2960, file: !560, line: 158, type: !74)
!2988 = !DILocalVariable(name: "len", scope: !2960, file: !560, line: 159, type: !770)
!2989 = !DILocalVariable(name: "p", scope: !2960, file: !560, line: 160, type: !74)
!2990 = !DILocation(line: 0, scope: !2960)
!2991 = !DILocation(line: 158, column: 26, scope: !2960)
!2992 = !DILocation(line: 159, column: 15, scope: !2960)
!2993 = !DILocation(line: 161, column: 17, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2960, file: !560, line: 161, column: 3)
!2995 = !DILocation(line: 161, column: 8, scope: !2994)
!2996 = !DILocation(line: 161, scope: !2994)
!2997 = !DILocation(line: 161, column: 29, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2994, file: !560, line: 161, column: 3)
!2999 = !DILocation(line: 161, column: 33, scope: !2998)
!3000 = !DILocation(line: 161, column: 36, scope: !2998)
!3001 = !DILocation(line: 161, column: 42, scope: !2998)
!3002 = !DILocation(line: 161, column: 3, scope: !2994)
!3003 = distinct !{!3003, !3002, !3004, !929}
!3004 = !DILocation(line: 162, column: 5, scope: !2994)
!3005 = !DILocation(line: 163, column: 29, scope: !2960)
!3006 = !DILocation(line: 163, column: 10, scope: !2960)
!3007 = !DILocation(line: 163, column: 3, scope: !2960)
!3008 = distinct !DISubprogram(name: "read_utmp", scope: !560, file: !560, line: 977, type: !3009, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3013)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!117, !74, !769, !3011, !117}
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!3013 = !{!3014, !3015, !3016, !3017}
!3014 = !DILocalVariable(name: "file", arg: 1, scope: !3008, file: !560, line: 977, type: !74)
!3015 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3008, file: !560, line: 977, type: !769)
!3016 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3008, file: !560, line: 977, type: !3011)
!3017 = !DILocalVariable(name: "options", arg: 4, scope: !3008, file: !560, line: 978, type: !117)
!3018 = !DILocation(line: 0, scope: !3008)
!3019 = !DILocalVariable(name: "file", arg: 1, scope: !3020, file: !560, line: 320, type: !74)
!3020 = distinct !DISubprogram(name: "read_utmp_from_file", scope: !560, file: !560, line: 320, type: !3009, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3021)
!3021 = !{!3019, !3022, !3023, !3024, !3025, !3033, !3034, !3035, !3036, !3038, !3039, !3043, !3046, !3049}
!3022 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3020, file: !560, line: 320, type: !769)
!3023 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3020, file: !560, line: 320, type: !3011)
!3024 = !DILocalVariable(name: "options", arg: 4, scope: !3020, file: !560, line: 321, type: !117)
!3025 = !DILocalVariable(name: "a", scope: !3020, file: !560, line: 332, type: !3026)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmp_alloc", file: !560, line: 202, size: 256, elements: !3027)
!3027 = !{!3028, !3030, !3031, !3032}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "utmp", scope: !3026, file: !560, line: 208, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "filled", scope: !3026, file: !560, line: 211, baseType: !770, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "string_bytes", scope: !3026, file: !560, line: 214, baseType: !770, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_bytes", scope: !3026, file: !560, line: 218, baseType: !770, size: 64, offset: 192)
!3033 = !DILocalVariable(name: "file_is_utmp", scope: !3020, file: !560, line: 347, type: !247)
!3034 = !DILocalVariable(name: "runlevel_ts", scope: !3020, file: !560, line: 349, type: !2973)
!3035 = !DILocalVariable(name: "entry", scope: !3020, file: !560, line: 352, type: !1035)
!3036 = !DILocalVariable(name: "ut", scope: !3037, file: !560, line: 356, type: !712)
!3037 = distinct !DILexicalBlock(scope: !3020, file: !560, line: 355, column: 5)
!3038 = !DILocalVariable(name: "ts", scope: !3037, file: !560, line: 358, type: !2973)
!3039 = !DILocalVariable(name: "i", scope: !3040, file: !560, line: 429, type: !770)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !560, line: 429, column: 7)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !560, line: 428, column: 5)
!3042 = distinct !DILexicalBlock(scope: !3020, file: !560, line: 426, column: 7)
!3043 = !DILocalVariable(name: "ut", scope: !3044, file: !560, line: 431, type: !3029)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !560, line: 430, column: 9)
!3045 = distinct !DILexicalBlock(scope: !3040, file: !560, line: 429, column: 7)
!3046 = !DILocalVariable(name: "boot_time", scope: !3047, file: !560, line: 443, type: !2973)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !560, line: 441, column: 9)
!3048 = distinct !DILexicalBlock(scope: !3041, file: !560, line: 440, column: 11)
!3049 = !DILocalVariable(name: "boot_time", scope: !3050, file: !560, line: 592, type: !2973)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !560, line: 591, column: 5)
!3051 = distinct !DILexicalBlock(scope: !3020, file: !560, line: 588, column: 7)
!3052 = !DILocation(line: 0, scope: !3020, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 986, column: 10, scope: !3008)
!3054 = !DILocation(line: 323, column: 16, scope: !3055, inlinedAt: !3053)
!3055 = distinct !DILexicalBlock(scope: !3020, file: !560, line: 323, column: 7)
!3056 = !DILocation(line: 323, column: 39, scope: !3055, inlinedAt: !3053)
!3057 = !DILocation(line: 324, column: 7, scope: !3055, inlinedAt: !3053)
!3058 = !DILocation(line: 327, column: 18, scope: !3059, inlinedAt: !3053)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !560, line: 325, column: 5)
!3060 = !DILocation(line: 328, column: 17, scope: !3059, inlinedAt: !3053)
!3061 = !DILocation(line: 329, column: 7, scope: !3059, inlinedAt: !3053)
!3062 = !DILocation(line: 332, column: 3, scope: !3020, inlinedAt: !3053)
!3063 = !DILocation(line: 332, column: 21, scope: !3020, inlinedAt: !3053)
!3064 = !DILocation(line: 342, column: 3, scope: !3020, inlinedAt: !3053)
!3065 = !DILocation(line: 344, column: 3, scope: !3020, inlinedAt: !3053)
!3066 = !DILocalVariable(name: "__s1", arg: 1, scope: !3067, file: !895, line: 1359, type: !74)
!3067 = distinct !DISubprogram(name: "streq", scope: !895, file: !895, line: 1359, type: !896, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3068)
!3068 = !{!3066, !3069}
!3069 = !DILocalVariable(name: "__s2", arg: 2, scope: !3067, file: !895, line: 1359, type: !74)
!3070 = !DILocation(line: 0, scope: !3067, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 347, column: 23, scope: !3020, inlinedAt: !3053)
!3072 = !DILocation(line: 1361, column: 11, scope: !3067, inlinedAt: !3071)
!3073 = !DILocation(line: 1361, column: 10, scope: !3067, inlinedAt: !3071)
!3074 = !DILocation(line: 354, column: 19, scope: !3020, inlinedAt: !3053)
!3075 = !DILocation(line: 354, column: 36, scope: !3020, inlinedAt: !3053)
!3076 = !DILocation(line: 354, column: 3, scope: !3020, inlinedAt: !3053)
!3077 = !DILocation(line: 0, scope: !3037, inlinedAt: !3053)
!3078 = !DILocation(line: 358, column: 7, scope: !3037, inlinedAt: !3053)
!3079 = !DILocation(line: 358, column: 23, scope: !3037, inlinedAt: !3053)
!3080 = !DILocation(line: 360, column: 25, scope: !3037, inlinedAt: !3053)
!3081 = !DILocation(line: 360, column: 31, scope: !3037, inlinedAt: !3053)
!3082 = !{!3083, !883, i64 340}
!3083 = !{!"utmpx", !924, i64 0, !883, i64 4, !827, i64 8, !827, i64 40, !827, i64 44, !827, i64 76, !3084, i64 332, !883, i64 336, !1152, i64 340, !827, i64 348, !827, i64 364}
!3084 = !{!"__exit_status", !924, i64 0, !924, i64 2}
!3085 = !DILocation(line: 360, column: 21, scope: !3037, inlinedAt: !3053)
!3086 = !DILocation(line: 360, column: 9, scope: !3037, inlinedAt: !3053)
!3087 = !{!1151, !1117, i64 0}
!3088 = !DILocation(line: 360, column: 60, scope: !3037, inlinedAt: !3053)
!3089 = !{!3083, !883, i64 344}
!3090 = !DILocation(line: 360, column: 68, scope: !3037, inlinedAt: !3053)
!3091 = !DILocation(line: 360, column: 50, scope: !3037, inlinedAt: !3053)
!3092 = !{!1151, !1117, i64 8}
!3093 = !DILocation(line: 365, column: 11, scope: !3037, inlinedAt: !3053)
!3094 = !DILocation(line: 366, column: 21, scope: !3037, inlinedAt: !3053)
!3095 = !DILocation(line: 366, column: 35, scope: !3037, inlinedAt: !3053)
!3096 = !DILocation(line: 368, column: 25, scope: !3037, inlinedAt: !3053)
!3097 = !DILocation(line: 368, column: 32, scope: !3037, inlinedAt: !3053)
!3098 = !DILocation(line: 372, column: 25, scope: !3037, inlinedAt: !3053)
!3099 = !DILocation(line: 372, column: 34, scope: !3037, inlinedAt: !3053)
!3100 = !DILocation(line: 374, column: 25, scope: !3037, inlinedAt: !3053)
!3101 = !DILocation(line: 374, column: 34, scope: !3037, inlinedAt: !3053)
!3102 = !DILocation(line: 379, column: 25, scope: !3037, inlinedAt: !3053)
!3103 = !{!3083, !883, i64 4}
!3104 = !DILocation(line: 384, column: 25, scope: !3037, inlinedAt: !3053)
!3105 = !{!3083, !924, i64 0}
!3106 = !DILocation(line: 390, column: 25, scope: !3037, inlinedAt: !3053)
!3107 = !{!3083, !883, i64 336}
!3108 = !DILocation(line: 390, column: 21, scope: !3037, inlinedAt: !3053)
!3109 = !DILocation(line: 394, column: 21, scope: !3037, inlinedAt: !3053)
!3110 = !{!3083, !924, i64 332}
!3111 = !DILocation(line: 394, column: 49, scope: !3037, inlinedAt: !3053)
!3112 = !{!3083, !924, i64 334}
!3113 = !{i64 0, i64 8, !825, i64 8, i64 8, !1116, i64 16, i64 8, !1116, i64 24, i64 8, !1116}
!3114 = !DILocation(line: 398, column: 11, scope: !3115, inlinedAt: !3053)
!3115 = distinct !DILexicalBlock(scope: !3037, file: !560, line: 397, column: 11)
!3116 = !DILocalVariable(name: "__s1", arg: 1, scope: !3117, file: !895, line: 974, type: !1035)
!3117 = distinct !DISubprogram(name: "memeq", scope: !895, file: !895, line: 974, type: !1596, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3118)
!3118 = !{!3116, !3119, !3120}
!3119 = !DILocalVariable(name: "__s2", arg: 2, scope: !3117, file: !895, line: 974, type: !1035)
!3120 = !DILocalVariable(name: "__n", arg: 3, scope: !3117, file: !895, line: 974, type: !119)
!3121 = !DILocation(line: 0, scope: !3117, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 398, column: 14, scope: !3115, inlinedAt: !3053)
!3123 = !DILocation(line: 976, column: 11, scope: !3117, inlinedAt: !3122)
!3124 = !DILocation(line: 976, column: 10, scope: !3117, inlinedAt: !3122)
!3125 = !DILocation(line: 399, column: 11, scope: !3115, inlinedAt: !3053)
!3126 = !DILocation(line: 0, scope: !3117, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 399, column: 14, scope: !3115, inlinedAt: !3053)
!3128 = !DILocation(line: 976, column: 11, scope: !3117, inlinedAt: !3127)
!3129 = !DILocation(line: 976, column: 10, scope: !3117, inlinedAt: !3127)
!3130 = !DILocation(line: 397, column: 11, scope: !3037, inlinedAt: !3053)
!3131 = !DILocation(line: 408, column: 5, scope: !3020, inlinedAt: !3053)
!3132 = distinct !{!3132, !3076, !3131, !929}
!3133 = !DILocation(line: 410, column: 3, scope: !3020, inlinedAt: !3053)
!3134 = !DILocation(line: 427, column: 7, scope: !3042, inlinedAt: !3053)
!3135 = !{!3136, !1117, i64 8}
!3136 = !{!"utmp_alloc", !826, i64 0, !1117, i64 8, !1117, i64 16, !1117, i64 24}
!3137 = !DILocation(line: 0, scope: !3040, inlinedAt: !3053)
!3138 = !DILocation(line: 429, column: 27, scope: !3045, inlinedAt: !3053)
!3139 = !DILocation(line: 429, column: 7, scope: !3040, inlinedAt: !3053)
!3140 = !{!3136, !826, i64 0}
!3141 = !DILocation(line: 0, scope: !3044, inlinedAt: !3053)
!3142 = !DILocation(line: 432, column: 15, scope: !3143, inlinedAt: !3053)
!3143 = distinct !DILexicalBlock(scope: !3044, file: !560, line: 432, column: 15)
!3144 = !DILocation(line: 432, column: 15, scope: !3044, inlinedAt: !3053)
!3145 = !DILocation(line: 435, column: 23, scope: !3146, inlinedAt: !3053)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !560, line: 435, column: 19)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !560, line: 433, column: 13)
!3148 = !DILocation(line: 435, column: 29, scope: !3146, inlinedAt: !3053)
!3149 = !{!1150, !1117, i64 32}
!3150 = !DILocation(line: 435, column: 36, scope: !3146, inlinedAt: !3053)
!3151 = !DILocation(line: 435, column: 42, scope: !3146, inlinedAt: !3053)
!3152 = !DILocation(line: 436, column: 29, scope: !3146, inlinedAt: !3053)
!3153 = !{i64 0, i64 8, !1116, i64 8, i64 8, !1116}
!3154 = !{i64 0, i64 8, !1116}
!3155 = !DILocation(line: 436, column: 17, scope: !3146, inlinedAt: !3053)
!3156 = !DILocation(line: 429, column: 40, scope: !3045, inlinedAt: !3053)
!3157 = distinct !{!3157, !3139, !3158, !929}
!3158 = !DILocation(line: 439, column: 9, scope: !3040, inlinedAt: !3053)
!3159 = !DILocalVariable(name: "a", arg: 1, scope: !3160, file: !560, line: 302, type: !3026)
!3160 = distinct !DISubprogram(name: "have_boot_time", scope: !560, file: !560, line: 302, type: !3161, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!247, !3026}
!3163 = !{!3159, !3164, !3166}
!3164 = !DILocalVariable(name: "i", scope: !3165, file: !560, line: 304, type: !770)
!3165 = distinct !DILexicalBlock(scope: !3160, file: !560, line: 304, column: 3)
!3166 = !DILocalVariable(name: "ut", scope: !3167, file: !560, line: 306, type: !3029)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !560, line: 305, column: 5)
!3168 = distinct !DILexicalBlock(scope: !3165, file: !560, line: 304, column: 3)
!3169 = !DILocation(line: 302, column: 35, scope: !3160, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 440, column: 12, scope: !3048, inlinedAt: !3053)
!3171 = !DILocation(line: 0, scope: !3165, inlinedAt: !3170)
!3172 = !DILocation(line: 304, column: 23, scope: !3168, inlinedAt: !3170)
!3173 = !DILocation(line: 304, column: 3, scope: !3165, inlinedAt: !3170)
!3174 = !DILocation(line: 0, scope: !3167, inlinedAt: !3170)
!3175 = !DILocation(line: 307, column: 11, scope: !3176, inlinedAt: !3170)
!3176 = distinct !DILexicalBlock(scope: !3167, file: !560, line: 307, column: 11)
!3177 = !DILocation(line: 304, column: 36, scope: !3168, inlinedAt: !3170)
!3178 = distinct !{!3178, !3173, !3179, !929}
!3179 = !DILocation(line: 309, column: 5, scope: !3165, inlinedAt: !3170)
!3180 = distinct !{!3180, !3173, !3179, !929}
!3181 = !DILocation(line: 440, column: 11, scope: !3041, inlinedAt: !3053)
!3182 = !DILocation(line: 443, column: 11, scope: !3047, inlinedAt: !3053)
!3183 = !DILocation(line: 443, column: 27, scope: !3047, inlinedAt: !3053)
!3184 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3185, file: !574, line: 87, type: !3188)
!3185 = distinct !DISubprogram(name: "get_linux_boot_time_fallback", scope: !574, file: !574, line: 87, type: !3186, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3189)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!117, !3188}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!3189 = !{!3184, !3190, !3192, !3194, !3197, !3225}
!3190 = !DILocalVariable(name: "boot_touched_files", scope: !3185, file: !574, line: 96, type: !3191)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 256, elements: !136)
!3192 = !DILocalVariable(name: "i", scope: !3193, file: !574, line: 105, type: !770)
!3193 = distinct !DILexicalBlock(scope: !3185, file: !574, line: 105, column: 3)
!3194 = !DILocalVariable(name: "filename", scope: !3195, file: !574, line: 107, type: !74)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !574, line: 106, column: 5)
!3196 = distinct !DILexicalBlock(scope: !3193, file: !574, line: 105, column: 3)
!3197 = !DILocalVariable(name: "statbuf", scope: !3195, file: !574, line: 108, type: !3198)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3199, line: 26, size: 1152, elements: !3200)
!3199 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!3200 = !{!3201, !3203, !3205, !3207, !3209, !3211, !3213, !3214, !3215, !3216, !3218, !3220, !3221, !3222, !3223}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3198, file: !3199, line: 31, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !287, line: 145, baseType: !121)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3198, file: !3199, line: 36, baseType: !3204, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !287, line: 148, baseType: !121)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3198, file: !3199, line: 44, baseType: !3206, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !287, line: 151, baseType: !121)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3198, file: !3199, line: 45, baseType: !3208, size: 32, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !287, line: 150, baseType: !80)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3198, file: !3199, line: 47, baseType: !3210, size: 32, offset: 224)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !287, line: 146, baseType: !80)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3198, file: !3199, line: 48, baseType: !3212, size: 32, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !287, line: 147, baseType: !80)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3198, file: !3199, line: 50, baseType: !117, size: 32, offset: 288)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3198, file: !3199, line: 52, baseType: !3202, size: 64, offset: 320)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3198, file: !3199, line: 57, baseType: !286, size: 64, offset: 384)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3198, file: !3199, line: 61, baseType: !3217, size: 64, offset: 448)
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !287, line: 175, baseType: !288)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3198, file: !3199, line: 63, baseType: !3219, size: 64, offset: 512)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !287, line: 180, baseType: !288)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3198, file: !3199, line: 74, baseType: !2973, size: 128, offset: 576)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3198, file: !3199, line: 75, baseType: !2973, size: 128, offset: 704)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3198, file: !3199, line: 76, baseType: !2973, size: 128, offset: 832)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3198, file: !3199, line: 89, baseType: !3224, size: 192, offset: 960)
!3224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 192, elements: !152)
!3225 = !DILocalVariable(name: "boot_time", scope: !3226, file: !574, line: 111, type: !2973)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !574, line: 110, column: 9)
!3227 = distinct !DILexicalBlock(scope: !3195, file: !574, line: 109, column: 11)
!3228 = !DILocation(line: 0, scope: !3185, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 444, column: 15, scope: !3230, inlinedAt: !3053)
!3230 = distinct !DILexicalBlock(scope: !3047, file: !560, line: 444, column: 15)
!3231 = !DILocation(line: 0, scope: !3193, inlinedAt: !3229)
!3232 = !DILocation(line: 0, scope: !3195, inlinedAt: !3229)
!3233 = !DILocation(line: 108, column: 7, scope: !3195, inlinedAt: !3229)
!3234 = !DILocation(line: 108, column: 19, scope: !3195, inlinedAt: !3229)
!3235 = !DILocation(line: 109, column: 11, scope: !3227, inlinedAt: !3229)
!3236 = !DILocation(line: 109, column: 37, scope: !3227, inlinedAt: !3229)
!3237 = !DILocation(line: 109, column: 11, scope: !3195, inlinedAt: !3229)
!3238 = !DILocalVariable(name: "st", arg: 1, scope: !3239, file: !3240, line: 169, type: !3243)
!3239 = distinct !DISubprogram(name: "get_stat_mtime", scope: !3240, file: !3240, line: 169, type: !3241, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3245)
!3240 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!2973, !3243}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3245 = !{!3238}
!3246 = !DILocation(line: 0, scope: !3239, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 111, column: 39, scope: !3226, inlinedAt: !3229)
!3248 = !DILocation(line: 0, scope: !3226, inlinedAt: !3229)
!3249 = !DILocation(line: 122, column: 5, scope: !3196, inlinedAt: !3229)
!3250 = !DILocation(line: 444, column: 15, scope: !3047, inlinedAt: !3053)
!3251 = !DILocation(line: 172, column: 10, scope: !3239, inlinedAt: !3247)
!3252 = !DILocation(line: 118, column: 30, scope: !3253, inlinedAt: !3229)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !574, line: 117, column: 13)
!3254 = distinct !DILexicalBlock(scope: !3226, file: !574, line: 116, column: 15)
!3255 = !DILocation(line: 445, column: 17, scope: !3230, inlinedAt: !3053)
!3256 = !DILocation(line: 445, column: 13, scope: !3230, inlinedAt: !3053)
!3257 = !DILocation(line: 451, column: 9, scope: !3048, inlinedAt: !3053)
!3258 = !DILocation(line: 451, column: 9, scope: !3047, inlinedAt: !3053)
!3259 = !DILocation(line: 589, column: 7, scope: !3051, inlinedAt: !3053)
!3260 = !DILocation(line: 0, scope: !3067, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 589, column: 10, scope: !3051, inlinedAt: !3053)
!3262 = !DILocation(line: 1361, column: 11, scope: !3067, inlinedAt: !3261)
!3263 = !DILocation(line: 1361, column: 10, scope: !3067, inlinedAt: !3261)
!3264 = !DILocation(line: 590, column: 7, scope: !3051, inlinedAt: !3053)
!3265 = !DILocation(line: 302, column: 35, scope: !3160, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 590, column: 11, scope: !3051, inlinedAt: !3053)
!3267 = !DILocation(line: 0, scope: !3165, inlinedAt: !3266)
!3268 = !DILocation(line: 304, column: 23, scope: !3168, inlinedAt: !3266)
!3269 = !DILocation(line: 304, column: 3, scope: !3165, inlinedAt: !3266)
!3270 = !DILocation(line: 0, scope: !3167, inlinedAt: !3266)
!3271 = !DILocation(line: 307, column: 11, scope: !3176, inlinedAt: !3266)
!3272 = !DILocation(line: 304, column: 36, scope: !3168, inlinedAt: !3266)
!3273 = distinct !{!3273, !3269, !3274, !929}
!3274 = !DILocation(line: 309, column: 5, scope: !3165, inlinedAt: !3266)
!3275 = distinct !{!3275, !3269, !3274, !929}
!3276 = !DILocation(line: 588, column: 7, scope: !3020, inlinedAt: !3053)
!3277 = !DILocation(line: 592, column: 7, scope: !3050, inlinedAt: !3053)
!3278 = !DILocation(line: 592, column: 23, scope: !3050, inlinedAt: !3053)
!3279 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3280, file: !574, line: 134, type: !3188)
!3280 = distinct !DISubprogram(name: "get_linux_boot_time_final_fallback", scope: !574, file: !574, line: 134, type: !3186, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3281)
!3281 = !{!3279, !3282, !3283}
!3282 = !DILocalVariable(name: "uptime", scope: !3280, file: !574, line: 136, type: !2973)
!3283 = !DILocalVariable(name: "result", scope: !3284, file: !574, line: 139, type: !2973)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !574, line: 138, column: 5)
!3285 = distinct !DILexicalBlock(scope: !3280, file: !574, line: 137, column: 7)
!3286 = !DILocation(line: 0, scope: !3280, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 593, column: 11, scope: !3288, inlinedAt: !3053)
!3288 = distinct !DILexicalBlock(scope: !3050, file: !560, line: 593, column: 11)
!3289 = !DILocation(line: 136, column: 3, scope: !3280, inlinedAt: !3287)
!3290 = !DILocation(line: 136, column: 19, scope: !3280, inlinedAt: !3287)
!3291 = !DILocalVariable(name: "p_uptime", arg: 1, scope: !3292, file: !574, line: 27, type: !3188)
!3292 = distinct !DISubprogram(name: "get_linux_uptime", scope: !574, file: !574, line: 27, type: !3186, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3293)
!3293 = !{!3291, !3294, !3329, !3335, !3336, !3341, !3342, !3345, !3348}
!3294 = !DILocalVariable(name: "fp", scope: !3292, file: !574, line: 40, type: !3295)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3297, file: !264, line: 51, baseType: !117, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3297, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3297, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3297, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3297, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3297, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3297, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3297, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3297, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3297, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3297, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3297, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3297, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3297, file: !264, line: 70, baseType: !3313, size: 64, offset: 832)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3297, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3297, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3297, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3297, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3297, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3297, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3297, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3297, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3297, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3297, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3297, file: !264, line: 93, baseType: !3313, size: 64, offset: 1344)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3297, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3297, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3297, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3297, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!3329 = !DILocalVariable(name: "buf", scope: !3330, file: !574, line: 43, type: !3332)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !574, line: 42, column: 5)
!3331 = distinct !DILexicalBlock(scope: !3292, file: !574, line: 41, column: 7)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !3333)
!3333 = !{!3334}
!3334 = !DISubrange(count: 33)
!3335 = !DILocalVariable(name: "n", scope: !3330, file: !574, line: 44, type: !119)
!3336 = !DILocalVariable(name: "s", scope: !3337, file: !574, line: 50, type: !3339)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !574, line: 47, column: 9)
!3338 = distinct !DILexicalBlock(scope: !3330, file: !574, line: 46, column: 11)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !3340, line: 10, baseType: !1093)
!3340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!3341 = !DILocalVariable(name: "p", scope: !3337, file: !574, line: 51, type: !124)
!3342 = !DILocalVariable(name: "ns", scope: !3343, file: !574, line: 56, type: !288)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !574, line: 55, column: 13)
!3344 = distinct !DILexicalBlock(scope: !3337, file: !574, line: 54, column: 15)
!3345 = !DILocalVariable(name: "i", scope: !3346, file: !574, line: 58, type: !117)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !574, line: 58, column: 17)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !574, line: 57, column: 19)
!3348 = !DILocalVariable(name: "info", scope: !3292, file: !574, line: 70, type: !3349)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !3350, line: 8, size: 896, elements: !3351)
!3350 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "6f8882c542ddb6603b06a4eafcc17015")
!3351 = !{!3352, !3355, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3367, !3368, !3369, !3370, !3372}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !3349, file: !3350, line: 9, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !3354, line: 15, baseType: !288)
!3354 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "", checksumkind: CSK_MD5, checksum: "dfd772b670921419860c9b47bcd28ff0")
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !3349, file: !3350, line: 10, baseType: !3356, size: 192, offset: 64)
!3356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3357, size: 192, elements: !152)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !3354, line: 16, baseType: !121)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !3349, file: !3350, line: 11, baseType: !3357, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !3349, file: !3350, line: 12, baseType: !3357, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !3349, file: !3350, line: 13, baseType: !3357, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !3349, file: !3350, line: 14, baseType: !3357, size: 64, offset: 448)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !3349, file: !3350, line: 15, baseType: !3357, size: 64, offset: 512)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !3349, file: !3350, line: 16, baseType: !3357, size: 64, offset: 576)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !3349, file: !3350, line: 17, baseType: !3365, size: 16, offset: 640)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !3366, line: 24, baseType: !118)
!3366 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3349, file: !3350, line: 18, baseType: !3365, size: 16, offset: 656)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !3349, file: !3350, line: 19, baseType: !3357, size: 64, offset: 704)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !3349, file: !3350, line: 20, baseType: !3357, size: 64, offset: 768)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !3349, file: !3350, line: 21, baseType: !3371, size: 32, offset: 832)
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !3366, line: 27, baseType: !80)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !3349, file: !3350, line: 22, baseType: !3373, offset: 864)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !3374)
!3374 = !{!3375}
!3375 = !DISubrange(count: 0)
!3376 = !DILocation(line: 0, scope: !3292, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 137, column: 7, scope: !3285, inlinedAt: !3287)
!3378 = !DILocation(line: 33, column: 7, scope: !3379, inlinedAt: !3377)
!3379 = distinct !DILexicalBlock(scope: !3292, file: !574, line: 33, column: 7)
!3380 = !DILocation(line: 33, column: 48, scope: !3379, inlinedAt: !3377)
!3381 = !DILocation(line: 33, column: 7, scope: !3292, inlinedAt: !3377)
!3382 = !DILocation(line: 40, column: 14, scope: !3292, inlinedAt: !3377)
!3383 = !DILocation(line: 41, column: 10, scope: !3331, inlinedAt: !3377)
!3384 = !DILocation(line: 41, column: 7, scope: !3292, inlinedAt: !3377)
!3385 = !DILocation(line: 43, column: 7, scope: !3330, inlinedAt: !3377)
!3386 = !DILocation(line: 43, column: 12, scope: !3330, inlinedAt: !3377)
!3387 = !DILocation(line: 44, column: 18, scope: !3330, inlinedAt: !3377)
!3388 = !DILocation(line: 0, scope: !3330, inlinedAt: !3377)
!3389 = !DILocation(line: 45, column: 7, scope: !3330, inlinedAt: !3377)
!3390 = !DILocation(line: 46, column: 13, scope: !3338, inlinedAt: !3377)
!3391 = !DILocation(line: 46, column: 11, scope: !3330, inlinedAt: !3377)
!3392 = !DILocation(line: 48, column: 11, scope: !3337, inlinedAt: !3377)
!3393 = !DILocation(line: 48, column: 18, scope: !3337, inlinedAt: !3377)
!3394 = !DILocation(line: 0, scope: !3337, inlinedAt: !3377)
!3395 = !DILocation(line: 52, column: 32, scope: !3396, inlinedAt: !3377)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !574, line: 52, column: 11)
!3397 = distinct !DILexicalBlock(scope: !3337, file: !574, line: 52, column: 11)
!3398 = !DILocation(line: 52, column: 35, scope: !3396, inlinedAt: !3377)
!3399 = !DILocation(line: 53, column: 20, scope: !3396, inlinedAt: !3377)
!3400 = !DILocation(line: 53, column: 30, scope: !3396, inlinedAt: !3377)
!3401 = !DILocation(line: 53, column: 24, scope: !3396, inlinedAt: !3377)
!3402 = !DILocation(line: 52, column: 50, scope: !3396, inlinedAt: !3377)
!3403 = distinct !{!3403, !3404, !3405, !929}
!3404 = !DILocation(line: 52, column: 11, scope: !3397, inlinedAt: !3377)
!3405 = !DILocation(line: 53, column: 35, scope: !3397, inlinedAt: !3377)
!3406 = !DILocation(line: 54, column: 19, scope: !3344, inlinedAt: !3377)
!3407 = !DILocation(line: 54, column: 15, scope: !3337, inlinedAt: !3377)
!3408 = !DILocation(line: 0, scope: !3343, inlinedAt: !3377)
!3409 = !DILocation(line: 57, column: 24, scope: !3347, inlinedAt: !3377)
!3410 = !DILocation(line: 57, column: 19, scope: !3343, inlinedAt: !3377)
!3411 = !DILocation(line: 57, column: 21, scope: !3347, inlinedAt: !3377)
!3412 = !DILocation(line: 0, scope: !3346, inlinedAt: !3377)
!3413 = !DILocation(line: 59, column: 42, scope: !3414, inlinedAt: !3377)
!3414 = distinct !DILexicalBlock(scope: !3346, file: !574, line: 58, column: 17)
!3415 = !DILocation(line: 59, column: 45, scope: !3414, inlinedAt: !3377)
!3416 = !DILocation(line: 59, column: 27, scope: !3414, inlinedAt: !3377)
!3417 = !DILocation(line: 59, column: 32, scope: !3414, inlinedAt: !3377)
!3418 = !DILocation(line: 60, column: 32, scope: !3343, inlinedAt: !3377)
!3419 = !DILocation(line: 65, column: 5, scope: !3331, inlinedAt: !3377)
!3420 = !DILocation(line: 70, column: 3, scope: !3292, inlinedAt: !3377)
!3421 = !DILocation(line: 70, column: 18, scope: !3292, inlinedAt: !3377)
!3422 = !DILocation(line: 71, column: 7, scope: !3423, inlinedAt: !3377)
!3423 = distinct !DILexicalBlock(scope: !3292, file: !574, line: 71, column: 7)
!3424 = !DILocation(line: 71, column: 23, scope: !3423, inlinedAt: !3377)
!3425 = !DILocation(line: 71, column: 7, scope: !3292, inlinedAt: !3377)
!3426 = !DILocation(line: 73, column: 31, scope: !3427, inlinedAt: !3377)
!3427 = distinct !DILexicalBlock(scope: !3423, file: !574, line: 72, column: 5)
!3428 = !{!3429, !1117, i64 0}
!3429 = !{!"sysinfo", !1117, i64 0, !827, i64 8, !1117, i64 32, !1117, i64 40, !1117, i64 48, !1117, i64 56, !1117, i64 64, !1117, i64 72, !924, i64 80, !924, i64 82, !1117, i64 88, !1117, i64 96, !883, i64 104, !827, i64 108}
!3430 = !DILocation(line: 73, column: 24, scope: !3427, inlinedAt: !3377)
!3431 = !DILocation(line: 74, column: 17, scope: !3427, inlinedAt: !3377)
!3432 = !DILocation(line: 74, column: 25, scope: !3427, inlinedAt: !3377)
!3433 = !DILocation(line: 80, column: 1, scope: !3292, inlinedAt: !3377)
!3434 = !DILocation(line: 137, column: 7, scope: !3280, inlinedAt: !3287)
!3435 = !DILocation(line: 56, column: 20, scope: !3343, inlinedAt: !3377)
!3436 = !DILocation(line: 61, column: 25, scope: !3343, inlinedAt: !3377)
!3437 = !DILocation(line: 61, column: 33, scope: !3343, inlinedAt: !3377)
!3438 = !DILocation(line: 169, column: 1, scope: !3280, inlinedAt: !3287)
!3439 = !DILocation(line: 593, column: 11, scope: !3050, inlinedAt: !3053)
!3440 = !DILocation(line: 139, column: 7, scope: !3284, inlinedAt: !3287)
!3441 = !DILocation(line: 139, column: 23, scope: !3284, inlinedAt: !3287)
!3442 = !DILocation(line: 145, column: 13, scope: !3443, inlinedAt: !3287)
!3443 = distinct !DILexicalBlock(scope: !3284, file: !574, line: 145, column: 11)
!3444 = !DILocation(line: 145, column: 11, scope: !3284, inlinedAt: !3287)
!3445 = !DILocation(line: 167, column: 5, scope: !3285, inlinedAt: !3287)
!3446 = !DILocation(line: 158, column: 18, scope: !3447, inlinedAt: !3287)
!3447 = distinct !DILexicalBlock(scope: !3284, file: !574, line: 158, column: 11)
!3448 = !DILocation(line: 158, column: 35, scope: !3447, inlinedAt: !3287)
!3449 = !DILocation(line: 158, column: 26, scope: !3447, inlinedAt: !3287)
!3450 = !DILocation(line: 158, column: 11, scope: !3284, inlinedAt: !3287)
!3451 = !DILocation(line: 163, column: 31, scope: !3284, inlinedAt: !3287)
!3452 = !DILocation(line: 163, column: 21, scope: !3284, inlinedAt: !3287)
!3453 = !DILocation(line: 164, column: 22, scope: !3284, inlinedAt: !3287)
!3454 = !DILocation(line: 165, column: 22, scope: !3284, inlinedAt: !3287)
!3455 = !DILocation(line: 594, column: 13, scope: !3288, inlinedAt: !3053)
!3456 = !DILocation(line: 594, column: 9, scope: !3288, inlinedAt: !3053)
!3457 = !DILocation(line: 600, column: 5, scope: !3051, inlinedAt: !3053)
!3458 = !DILocation(line: 600, column: 5, scope: !3050, inlinedAt: !3053)
!3459 = !DILocation(line: 284, column: 32, scope: !3460, inlinedAt: !3468)
!3460 = distinct !DISubprogram(name: "finish_utmp", scope: !560, file: !560, line: 284, type: !3461, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!3026, !3026}
!3463 = !{!3464, !3465, !3466}
!3464 = !DILocalVariable(name: "a", arg: 1, scope: !3460, file: !560, line: 284, type: !3026)
!3465 = !DILocalVariable(name: "stringlim", scope: !3460, file: !560, line: 286, type: !124)
!3466 = !DILocalVariable(name: "i", scope: !3467, file: !560, line: 288, type: !770)
!3467 = distinct !DILexicalBlock(scope: !3460, file: !560, line: 288, column: 3)
!3468 = distinct !DILocation(line: 688, column: 7, scope: !3020, inlinedAt: !3053)
!3469 = !DILocation(line: 0, scope: !3460, inlinedAt: !3468)
!3470 = !DILocation(line: 286, column: 37, scope: !3460, inlinedAt: !3468)
!3471 = !DILocation(line: 0, scope: !3467, inlinedAt: !3468)
!3472 = !DILocation(line: 288, column: 23, scope: !3473, inlinedAt: !3468)
!3473 = distinct !DILexicalBlock(scope: !3467, file: !560, line: 288, column: 3)
!3474 = !DILocation(line: 288, column: 3, scope: !3467, inlinedAt: !3468)
!3475 = !DILocation(line: 290, column: 38, scope: !3476, inlinedAt: !3468)
!3476 = distinct !DILexicalBlock(scope: !3473, file: !560, line: 289, column: 5)
!3477 = !DILocation(line: 290, column: 48, scope: !3476, inlinedAt: !3468)
!3478 = !{!3479}
!3479 = distinct !{!3479, !3480, !"finish_utmp: argument 0"}
!3480 = distinct !{!3480, !"finish_utmp"}
!3481 = !DILocation(line: 290, column: 27, scope: !3476, inlinedAt: !3468)
!3482 = !DILocation(line: 290, column: 56, scope: !3476, inlinedAt: !3468)
!3483 = !DILocation(line: 290, column: 25, scope: !3476, inlinedAt: !3468)
!3484 = !DILocation(line: 291, column: 48, scope: !3476, inlinedAt: !3468)
!3485 = !{!1150, !826, i64 8}
!3486 = !DILocation(line: 291, column: 27, scope: !3476, inlinedAt: !3468)
!3487 = !DILocation(line: 291, column: 56, scope: !3476, inlinedAt: !3468)
!3488 = !DILocation(line: 291, column: 25, scope: !3476, inlinedAt: !3468)
!3489 = !DILocation(line: 292, column: 48, scope: !3476, inlinedAt: !3468)
!3490 = !{!1150, !826, i64 16}
!3491 = !DILocation(line: 292, column: 27, scope: !3476, inlinedAt: !3468)
!3492 = !DILocation(line: 292, column: 56, scope: !3476, inlinedAt: !3468)
!3493 = !DILocation(line: 292, column: 25, scope: !3476, inlinedAt: !3468)
!3494 = !DILocation(line: 293, column: 48, scope: !3476, inlinedAt: !3468)
!3495 = !{!1150, !826, i64 24}
!3496 = !DILocation(line: 293, column: 27, scope: !3476, inlinedAt: !3468)
!3497 = !DILocation(line: 293, column: 56, scope: !3476, inlinedAt: !3468)
!3498 = !DILocation(line: 293, column: 25, scope: !3476, inlinedAt: !3468)
!3499 = !DILocation(line: 288, column: 36, scope: !3473, inlinedAt: !3468)
!3500 = distinct !{!3500, !3474, !3501, !929}
!3501 = !DILocation(line: 294, column: 5, scope: !3467, inlinedAt: !3468)
!3502 = !DILocation(line: 690, column: 14, scope: !3020, inlinedAt: !3053)
!3503 = !DILocation(line: 691, column: 13, scope: !3020, inlinedAt: !3053)
!3504 = !DILocation(line: 694, column: 1, scope: !3020, inlinedAt: !3053)
!3505 = !DILocation(line: 986, column: 3, scope: !3008)
!3506 = !DISubprogram(name: "utmpxname", scope: !3507, file: !3507, line: 93, type: !3508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3507 = !DIFile(filename: "/usr/include/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "59d83f2bbda77647297a040029d18d89")
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!117, !74}
!3510 = !DISubprogram(name: "setutxent", scope: !3507, file: !3507, line: 53, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3511 = !DISubprogram(name: "getutxent", scope: !3507, file: !3507, line: 65, type: !3512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!3514}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!3515 = !DISubprogram(name: "strnlen", scope: !1003, file: !1003, line: 413, type: !3516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!119, !74, !119}
!3518 = distinct !DISubprogram(name: "add_utmp", scope: !560, file: !560, line: 227, type: !3519, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3521)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!3026, !3026, !117, !74, !770, !74, !770, !74, !770, !74, !770, !1097, !718, !2973, !288, !117, !117}
!3521 = !{!3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3545, !3546, !3547, !3548, !3549, !3550}
!3522 = !DILocalVariable(name: "a", arg: 1, scope: !3518, file: !560, line: 227, type: !3026)
!3523 = !DILocalVariable(name: "options", arg: 2, scope: !3518, file: !560, line: 227, type: !117)
!3524 = !DILocalVariable(name: "user", arg: 3, scope: !3518, file: !560, line: 228, type: !74)
!3525 = !DILocalVariable(name: "user_len", arg: 4, scope: !3518, file: !560, line: 228, type: !770)
!3526 = !DILocalVariable(name: "id", arg: 5, scope: !3518, file: !560, line: 229, type: !74)
!3527 = !DILocalVariable(name: "id_len", arg: 6, scope: !3518, file: !560, line: 229, type: !770)
!3528 = !DILocalVariable(name: "line", arg: 7, scope: !3518, file: !560, line: 230, type: !74)
!3529 = !DILocalVariable(name: "line_len", arg: 8, scope: !3518, file: !560, line: 230, type: !770)
!3530 = !DILocalVariable(name: "host", arg: 9, scope: !3518, file: !560, line: 231, type: !74)
!3531 = !DILocalVariable(name: "host_len", arg: 10, scope: !3518, file: !560, line: 231, type: !770)
!3532 = !DILocalVariable(name: "pid", arg: 11, scope: !3518, file: !560, line: 232, type: !1097)
!3533 = !DILocalVariable(name: "type", arg: 12, scope: !3518, file: !560, line: 232, type: !718)
!3534 = !DILocalVariable(name: "ts", arg: 13, scope: !3518, file: !560, line: 232, type: !2973)
!3535 = !DILocalVariable(name: "session", arg: 14, scope: !3518, file: !560, line: 232, type: !288)
!3536 = !DILocalVariable(name: "termination", arg: 15, scope: !3518, file: !560, line: 233, type: !117)
!3537 = !DILocalVariable(name: "exit", arg: 16, scope: !3518, file: !560, line: 233, type: !117)
!3538 = !DILocalVariable(name: "entry_bytes", scope: !3518, file: !560, line: 235, type: !117)
!3539 = !DILocalVariable(name: "avail", scope: !3518, file: !560, line: 236, type: !770)
!3540 = !DILocalVariable(name: "needed_string_bytes", scope: !3518, file: !560, line: 237, type: !770)
!3541 = !DILocalVariable(name: "needed", scope: !3518, file: !560, line: 239, type: !770)
!3542 = !DILocalVariable(name: "old_string_offset", scope: !3543, file: !560, line: 242, type: !770)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !560, line: 241, column: 5)
!3544 = distinct !DILexicalBlock(scope: !3518, file: !560, line: 240, column: 7)
!3545 = !DILocalVariable(name: "new", scope: !3543, file: !560, line: 243, type: !116)
!3546 = !DILocalVariable(name: "new_string_offset", scope: !3543, file: !560, line: 244, type: !770)
!3547 = !DILocalVariable(name: "q", scope: !3543, file: !560, line: 246, type: !124)
!3548 = !DILocalVariable(name: "ut", scope: !3518, file: !560, line: 249, type: !3029)
!3549 = !DILocalVariable(name: "stringlim", scope: !3518, file: !560, line: 250, type: !124)
!3550 = !DILocalVariable(name: "p", scope: !3518, file: !560, line: 251, type: !124)
!3551 = !DILocation(line: 227, column: 29, scope: !3518)
!3552 = !DILocation(line: 0, scope: !3518)
!3553 = !DILocation(line: 232, column: 50, scope: !3518)
!3554 = !DILocation(line: 236, column: 19, scope: !3518)
!3555 = !{!3136, !1117, i64 24}
!3556 = !DILocation(line: 236, column: 50, scope: !3518)
!3557 = !DILocation(line: 236, column: 61, scope: !3518)
!3558 = !{!3136, !1117, i64 16}
!3559 = !DILocation(line: 236, column: 57, scope: !3518)
!3560 = !DILocation(line: 236, column: 31, scope: !3518)
!3561 = !DILocation(line: 238, column: 20, scope: !3518)
!3562 = !DILocation(line: 238, column: 35, scope: !3518)
!3563 = !DILocation(line: 238, column: 52, scope: !3518)
!3564 = !DILocation(line: 239, column: 30, scope: !3518)
!3565 = !DILocation(line: 240, column: 13, scope: !3544)
!3566 = !DILocation(line: 240, column: 7, scope: !3518)
!3567 = !DILocation(line: 0, scope: !3543)
!3568 = !DILocation(line: 243, column: 30, scope: !3543)
!3569 = !DILocation(line: 243, column: 59, scope: !3543)
!3570 = !DILocation(line: 243, column: 19, scope: !3543)
!3571 = !DILocation(line: 244, column: 35, scope: !3543)
!3572 = !DILocation(line: 244, column: 51, scope: !3543)
!3573 = !DILocation(line: 244, column: 47, scope: !3543)
!3574 = !DILocation(line: 245, column: 14, scope: !3543)
!3575 = !DILocation(line: 247, column: 18, scope: !3543)
!3576 = !DILocation(line: 247, column: 41, scope: !3543)
!3577 = !DILocalVariable(name: "__dest", arg: 1, scope: !3578, file: !1635, line: 34, type: !116)
!3578 = distinct !DISubprogram(name: "memmove", scope: !1635, file: !1635, line: 34, type: !3579, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!116, !116, !1035, !119}
!3581 = !{!3577, !3582, !3583}
!3582 = !DILocalVariable(name: "__src", arg: 2, scope: !3578, file: !1635, line: 34, type: !1035)
!3583 = !DILocalVariable(name: "__len", arg: 3, scope: !3578, file: !1635, line: 34, type: !119)
!3584 = !DILocation(line: 0, scope: !3578, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 247, column: 7, scope: !3543)
!3586 = !DILocation(line: 36, column: 10, scope: !3578, inlinedAt: !3585)
!3587 = !DILocation(line: 249, column: 34, scope: !3518)
!3588 = !DILocation(line: 250, column: 41, scope: !3518)
!3589 = !DILocation(line: 251, column: 27, scope: !3518)
!3590 = !DILocation(line: 248, column: 5, scope: !3543)
!3591 = !DILocation(line: 249, column: 27, scope: !3518)
!3592 = !DILocation(line: 249, column: 25, scope: !3518)
!3593 = !DILocation(line: 250, column: 37, scope: !3518)
!3594 = !DILocation(line: 251, column: 23, scope: !3518)
!3595 = !DILocation(line: 252, column: 4, scope: !3518)
!3596 = !DILocation(line: 252, column: 8, scope: !3518)
!3597 = !DILocation(line: 253, column: 31, scope: !3518)
!3598 = !DILocalVariable(name: "__dest", arg: 1, scope: !3599, file: !1635, line: 26, type: !3602)
!3599 = distinct !DISubprogram(name: "memcpy", scope: !1635, file: !1635, line: 26, type: !3600, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3603)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!116, !3602, !1034, !119}
!3602 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!3603 = !{!3598, !3604, !3605}
!3604 = !DILocalVariable(name: "__src", arg: 2, scope: !3599, file: !1635, line: 26, type: !1034)
!3605 = !DILocalVariable(name: "__len", arg: 3, scope: !3599, file: !1635, line: 26, type: !119)
!3606 = !DILocation(line: 0, scope: !3599, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 253, column: 21, scope: !3518)
!3608 = !DILocation(line: 29, column: 10, scope: !3599, inlinedAt: !3607)
!3609 = !DILocation(line: 253, column: 15, scope: !3518)
!3610 = !DILocation(line: 254, column: 4, scope: !3518)
!3611 = !DILocation(line: 254, column: 8, scope: !3518)
!3612 = !DILocation(line: 255, column: 31, scope: !3518)
!3613 = !DILocation(line: 0, scope: !3599, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 255, column: 21, scope: !3518)
!3615 = !DILocation(line: 29, column: 10, scope: !3599, inlinedAt: !3614)
!3616 = !DILocation(line: 255, column: 7, scope: !3518)
!3617 = !DILocation(line: 255, column: 15, scope: !3518)
!3618 = !DILocation(line: 256, column: 4, scope: !3518)
!3619 = !DILocation(line: 256, column: 8, scope: !3518)
!3620 = !DILocation(line: 257, column: 31, scope: !3518)
!3621 = !DILocation(line: 0, scope: !3599, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 257, column: 21, scope: !3518)
!3623 = !DILocation(line: 29, column: 10, scope: !3599, inlinedAt: !3622)
!3624 = !DILocation(line: 257, column: 7, scope: !3518)
!3625 = !DILocation(line: 257, column: 15, scope: !3518)
!3626 = !DILocation(line: 258, column: 4, scope: !3518)
!3627 = !DILocation(line: 258, column: 8, scope: !3518)
!3628 = !DILocation(line: 259, column: 31, scope: !3518)
!3629 = !DILocation(line: 0, scope: !3599, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 259, column: 21, scope: !3518)
!3631 = !DILocation(line: 29, column: 10, scope: !3599, inlinedAt: !3630)
!3632 = !DILocation(line: 259, column: 7, scope: !3518)
!3633 = !DILocation(line: 259, column: 15, scope: !3518)
!3634 = !DILocation(line: 260, column: 7, scope: !3518)
!3635 = !DILocation(line: 260, column: 15, scope: !3518)
!3636 = !DILocation(line: 261, column: 7, scope: !3518)
!3637 = !DILocation(line: 261, column: 14, scope: !3518)
!3638 = !{!1150, !883, i64 48}
!3639 = !DILocation(line: 262, column: 20, scope: !3518)
!3640 = !DILocation(line: 262, column: 7, scope: !3518)
!3641 = !DILocation(line: 262, column: 18, scope: !3518)
!3642 = !{!1150, !883, i64 52}
!3643 = !DILocation(line: 263, column: 7, scope: !3518)
!3644 = !DILocation(line: 263, column: 15, scope: !3518)
!3645 = !DILocation(line: 264, column: 7, scope: !3518)
!3646 = !DILocation(line: 264, column: 29, scope: !3518)
!3647 = !{!1150, !883, i64 60}
!3648 = !DILocation(line: 265, column: 15, scope: !3518)
!3649 = !DILocation(line: 265, column: 22, scope: !3518)
!3650 = !{!1150, !883, i64 64}
!3651 = !DILocalVariable(name: "ut", arg: 1, scope: !3652, file: !560, line: 171, type: !2963)
!3652 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !560, file: !560, line: 171, type: !3653, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!247, !2963, !117}
!3655 = !{!3651, !3656, !3657, !3658}
!3656 = !DILocalVariable(name: "options", arg: 2, scope: !3652, file: !560, line: 171, type: !117)
!3657 = !DILocalVariable(name: "boot_time", scope: !3652, file: !560, line: 180, type: !247)
!3658 = !DILocalVariable(name: "user_proc", scope: !3652, file: !560, line: 186, type: !247)
!3659 = !DILocation(line: 0, scope: !3652, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 266, column: 7, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3518, file: !560, line: 266, column: 7)
!3662 = !DILocation(line: 180, column: 20, scope: !3652, inlinedAt: !3660)
!3663 = !DILocation(line: 181, column: 16, scope: !3664, inlinedAt: !3660)
!3664 = distinct !DILexicalBlock(scope: !3652, file: !560, line: 181, column: 7)
!3665 = !DILocation(line: 181, column: 39, scope: !3664, inlinedAt: !3660)
!3666 = !DILocation(line: 183, column: 16, scope: !3667, inlinedAt: !3660)
!3667 = distinct !DILexicalBlock(scope: !3652, file: !560, line: 183, column: 7)
!3668 = !DILocation(line: 183, column: 42, scope: !3667, inlinedAt: !3660)
!3669 = !DILocation(line: 186, column: 20, scope: !3652, inlinedAt: !3660)
!3670 = !DILocation(line: 187, column: 16, scope: !3671, inlinedAt: !3660)
!3671 = distinct !DILexicalBlock(scope: !3652, file: !560, line: 187, column: 7)
!3672 = !DILocation(line: 187, column: 42, scope: !3671, inlinedAt: !3660)
!3673 = !DILocation(line: 190, column: 16, scope: !3674, inlinedAt: !3660)
!3674 = distinct !DILexicalBlock(scope: !3652, file: !560, line: 190, column: 7)
!3675 = !DILocation(line: 191, column: 7, scope: !3674, inlinedAt: !3660)
!3676 = !DILocation(line: 193, column: 11, scope: !3674, inlinedAt: !3660)
!3677 = !DILocation(line: 193, column: 33, scope: !3674, inlinedAt: !3660)
!3678 = !DILocation(line: 193, column: 37, scope: !3674, inlinedAt: !3660)
!3679 = !DILocation(line: 193, column: 40, scope: !3674, inlinedAt: !3660)
!3680 = !DILocation(line: 193, column: 46, scope: !3674, inlinedAt: !3660)
!3681 = !DILocation(line: 190, column: 7, scope: !3652, inlinedAt: !3660)
!3682 = !DILocation(line: 272, column: 54, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3661, file: !560, line: 267, column: 5)
!3684 = !DILocation(line: 272, column: 46, scope: !3683)
!3685 = !DILocation(line: 273, column: 54, scope: !3683)
!3686 = !DILocation(line: 272, column: 21, scope: !3683)
!3687 = !DILocation(line: 272, column: 19, scope: !3683)
!3688 = !DILocation(line: 274, column: 46, scope: !3683)
!3689 = !DILocation(line: 274, column: 54, scope: !3683)
!3690 = !DILocation(line: 274, column: 21, scope: !3683)
!3691 = !DILocation(line: 274, column: 19, scope: !3683)
!3692 = !DILocation(line: 276, column: 15, scope: !3683)
!3693 = !DILocation(line: 277, column: 22, scope: !3683)
!3694 = !DILocation(line: 278, column: 5, scope: !3683)
!3695 = !DILocation(line: 279, column: 10, scope: !3518)
!3696 = !DILocation(line: 280, column: 1, scope: !3518)
!3697 = !DISubprogram(name: "endutxent", scope: !3507, file: !3507, line: 59, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3698 = !DISubprogram(name: "stat", scope: !3699, file: !3699, line: 205, type: !3700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3699 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!117, !876, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3703)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3704 = !DISubprogram(name: "clock_gettime", scope: !3705, file: !3705, line: 279, type: !3706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3705 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!117, !3708, !3188}
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3709, line: 7, baseType: !3710)
!3709 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !287, line: 169, baseType: !117)
!3711 = !DISubprogram(name: "sysinfo", scope: !3712, file: !3712, line: 29, type: !3713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3712 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "833dbd3acd3e0392e300e781deccc082")
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!117, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3716 = !DISubprogram(name: "timespec_get", scope: !3705, file: !3705, line: 371, type: !3717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!117, !3188, !117}
!3719 = !DISubprogram(name: "kill", scope: !3720, file: !3720, line: 112, type: !3721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3720 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!117, !720, !117}
!3723 = distinct !DISubprogram(name: "version_etc_arn", scope: !588, file: !588, line: 61, type: !3724, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3761)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !3726, !74, !74, !74, !3760, !119}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !3728)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !3729)
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3728, file: !264, line: 51, baseType: !117, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3728, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3728, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3728, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3728, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3728, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3728, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3728, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3728, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3728, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3728, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3728, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3728, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3728, file: !264, line: 70, baseType: !3744, size: 64, offset: 832)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3728, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3728, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3728, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3728, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3728, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3728, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3728, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3728, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3728, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3728, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3728, file: !264, line: 93, baseType: !3744, size: 64, offset: 1344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3728, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3728, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3728, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3728, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767}
!3762 = !DILocalVariable(name: "stream", arg: 1, scope: !3723, file: !588, line: 61, type: !3726)
!3763 = !DILocalVariable(name: "command_name", arg: 2, scope: !3723, file: !588, line: 62, type: !74)
!3764 = !DILocalVariable(name: "package", arg: 3, scope: !3723, file: !588, line: 62, type: !74)
!3765 = !DILocalVariable(name: "version", arg: 4, scope: !3723, file: !588, line: 63, type: !74)
!3766 = !DILocalVariable(name: "authors", arg: 5, scope: !3723, file: !588, line: 64, type: !3760)
!3767 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3723, file: !588, line: 64, type: !119)
!3768 = !DILocation(line: 0, scope: !3723)
!3769 = !DILocation(line: 66, column: 7, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3723, file: !588, line: 66, column: 7)
!3771 = !DILocation(line: 66, column: 7, scope: !3723)
!3772 = !DILocation(line: 67, column: 5, scope: !3770)
!3773 = !DILocation(line: 69, column: 5, scope: !3770)
!3774 = !DILocation(line: 83, column: 3, scope: !3723)
!3775 = !DILocation(line: 85, column: 3, scope: !3723)
!3776 = !DILocation(line: 88, column: 3, scope: !3723)
!3777 = !DILocation(line: 95, column: 3, scope: !3723)
!3778 = !DILocation(line: 97, column: 3, scope: !3723)
!3779 = !DILocation(line: 105, column: 7, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3723, file: !588, line: 98, column: 5)
!3781 = !DILocation(line: 106, column: 7, scope: !3780)
!3782 = !DILocation(line: 109, column: 7, scope: !3780)
!3783 = !DILocation(line: 110, column: 7, scope: !3780)
!3784 = !DILocation(line: 113, column: 7, scope: !3780)
!3785 = !DILocation(line: 115, column: 7, scope: !3780)
!3786 = !DILocation(line: 120, column: 7, scope: !3780)
!3787 = !DILocation(line: 122, column: 7, scope: !3780)
!3788 = !DILocation(line: 127, column: 7, scope: !3780)
!3789 = !DILocation(line: 129, column: 7, scope: !3780)
!3790 = !DILocation(line: 134, column: 7, scope: !3780)
!3791 = !DILocation(line: 137, column: 7, scope: !3780)
!3792 = !DILocation(line: 142, column: 7, scope: !3780)
!3793 = !DILocation(line: 145, column: 7, scope: !3780)
!3794 = !DILocation(line: 150, column: 7, scope: !3780)
!3795 = !DILocation(line: 154, column: 7, scope: !3780)
!3796 = !DILocation(line: 159, column: 7, scope: !3780)
!3797 = !DILocation(line: 163, column: 7, scope: !3780)
!3798 = !DILocation(line: 170, column: 7, scope: !3780)
!3799 = !DILocation(line: 174, column: 7, scope: !3780)
!3800 = !DILocation(line: 176, column: 1, scope: !3723)
!3801 = distinct !DISubprogram(name: "version_etc_ar", scope: !588, file: !588, line: 183, type: !3802, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3726, !74, !74, !74, !3760}
!3804 = !{!3805, !3806, !3807, !3808, !3809, !3810}
!3805 = !DILocalVariable(name: "stream", arg: 1, scope: !3801, file: !588, line: 183, type: !3726)
!3806 = !DILocalVariable(name: "command_name", arg: 2, scope: !3801, file: !588, line: 184, type: !74)
!3807 = !DILocalVariable(name: "package", arg: 3, scope: !3801, file: !588, line: 184, type: !74)
!3808 = !DILocalVariable(name: "version", arg: 4, scope: !3801, file: !588, line: 185, type: !74)
!3809 = !DILocalVariable(name: "authors", arg: 5, scope: !3801, file: !588, line: 185, type: !3760)
!3810 = !DILocalVariable(name: "n_authors", scope: !3801, file: !588, line: 187, type: !119)
!3811 = !DILocation(line: 0, scope: !3801)
!3812 = !DILocation(line: 189, column: 8, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3801, file: !588, line: 189, column: 3)
!3814 = !DILocation(line: 189, scope: !3813)
!3815 = !DILocation(line: 189, column: 23, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3813, file: !588, line: 189, column: 3)
!3817 = !DILocation(line: 189, column: 3, scope: !3813)
!3818 = !DILocation(line: 189, column: 52, scope: !3816)
!3819 = distinct !{!3819, !3817, !3820, !929}
!3820 = !DILocation(line: 190, column: 5, scope: !3813)
!3821 = !DILocation(line: 191, column: 3, scope: !3801)
!3822 = !DILocation(line: 192, column: 1, scope: !3801)
!3823 = distinct !DISubprogram(name: "version_etc_va", scope: !588, file: !588, line: 199, type: !3824, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3834)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3726, !74, !74, !74, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3828)
!3828 = !{!3829, !3831, !3832, !3833}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3827, file: !3830, line: 192, baseType: !80, size: 32)
!3830 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3827, file: !3830, line: 192, baseType: !80, size: 32, offset: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3827, file: !3830, line: 192, baseType: !116, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3827, file: !3830, line: 192, baseType: !116, size: 64, offset: 128)
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3840, !3841}
!3835 = !DILocalVariable(name: "stream", arg: 1, scope: !3823, file: !588, line: 199, type: !3726)
!3836 = !DILocalVariable(name: "command_name", arg: 2, scope: !3823, file: !588, line: 200, type: !74)
!3837 = !DILocalVariable(name: "package", arg: 3, scope: !3823, file: !588, line: 200, type: !74)
!3838 = !DILocalVariable(name: "version", arg: 4, scope: !3823, file: !588, line: 201, type: !74)
!3839 = !DILocalVariable(name: "authors", arg: 5, scope: !3823, file: !588, line: 201, type: !3826)
!3840 = !DILocalVariable(name: "n_authors", scope: !3823, file: !588, line: 203, type: !119)
!3841 = !DILocalVariable(name: "authtab", scope: !3823, file: !588, line: 204, type: !3842)
!3842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !47)
!3843 = !DILocation(line: 0, scope: !3823)
!3844 = !DILocation(line: 204, column: 3, scope: !3823)
!3845 = !DILocation(line: 204, column: 15, scope: !3823)
!3846 = !DILocation(line: 208, column: 35, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !588, line: 206, column: 3)
!3848 = distinct !DILexicalBlock(scope: !3823, file: !588, line: 206, column: 3)
!3849 = !DILocation(line: 208, column: 33, scope: !3847)
!3850 = !DILocation(line: 208, column: 67, scope: !3847)
!3851 = !DILocation(line: 206, column: 3, scope: !3848)
!3852 = !DILocation(line: 208, column: 14, scope: !3847)
!3853 = !DILocation(line: 0, scope: !3848)
!3854 = !DILocation(line: 211, column: 3, scope: !3823)
!3855 = !DILocation(line: 213, column: 1, scope: !3823)
!3856 = distinct !DISubprogram(name: "version_etc", scope: !588, file: !588, line: 230, type: !3857, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !3726, !74, !74, !74, null}
!3859 = !{!3860, !3861, !3862, !3863, !3864}
!3860 = !DILocalVariable(name: "stream", arg: 1, scope: !3856, file: !588, line: 230, type: !3726)
!3861 = !DILocalVariable(name: "command_name", arg: 2, scope: !3856, file: !588, line: 231, type: !74)
!3862 = !DILocalVariable(name: "package", arg: 3, scope: !3856, file: !588, line: 231, type: !74)
!3863 = !DILocalVariable(name: "version", arg: 4, scope: !3856, file: !588, line: 232, type: !74)
!3864 = !DILocalVariable(name: "authors", scope: !3856, file: !588, line: 234, type: !3865)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1007, line: 52, baseType: !3866)
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1427, line: 14, baseType: !3867)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3830, baseType: !3868)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3827, size: 192, elements: !42)
!3869 = !DILocation(line: 0, scope: !3856)
!3870 = !DILocation(line: 234, column: 3, scope: !3856)
!3871 = !DILocation(line: 234, column: 11, scope: !3856)
!3872 = !DILocation(line: 235, column: 3, scope: !3856)
!3873 = !DILocation(line: 236, column: 3, scope: !3856)
!3874 = !DILocation(line: 237, column: 3, scope: !3856)
!3875 = !DILocation(line: 238, column: 1, scope: !3856)
!3876 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !588, file: !588, line: 241, type: !390, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !870)
!3877 = !DILocation(line: 243, column: 3, scope: !3876)
!3878 = !DILocation(line: 248, column: 3, scope: !3876)
!3879 = !DILocation(line: 254, column: 3, scope: !3876)
!3880 = !DILocation(line: 259, column: 3, scope: !3876)
!3881 = !DILocation(line: 261, column: 1, scope: !3876)
!3882 = distinct !DISubprogram(name: "xnrealloc", scope: !3883, file: !3883, line: 147, type: !3884, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3886)
!3883 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!116, !116, !119, !119}
!3886 = !{!3887, !3888, !3889}
!3887 = !DILocalVariable(name: "p", arg: 1, scope: !3882, file: !3883, line: 147, type: !116)
!3888 = !DILocalVariable(name: "n", arg: 2, scope: !3882, file: !3883, line: 147, type: !119)
!3889 = !DILocalVariable(name: "s", arg: 3, scope: !3882, file: !3883, line: 147, type: !119)
!3890 = !DILocation(line: 0, scope: !3882)
!3891 = !DILocalVariable(name: "p", arg: 1, scope: !3892, file: !751, line: 83, type: !116)
!3892 = distinct !DISubprogram(name: "xreallocarray", scope: !751, file: !751, line: 83, type: !3884, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3893)
!3893 = !{!3891, !3894, !3895}
!3894 = !DILocalVariable(name: "n", arg: 2, scope: !3892, file: !751, line: 83, type: !119)
!3895 = !DILocalVariable(name: "s", arg: 3, scope: !3892, file: !751, line: 83, type: !119)
!3896 = !DILocation(line: 0, scope: !3892, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 149, column: 10, scope: !3882)
!3898 = !DILocation(line: 85, column: 25, scope: !3892, inlinedAt: !3897)
!3899 = !DILocalVariable(name: "p", arg: 1, scope: !3900, file: !751, line: 37, type: !116)
!3900 = distinct !DISubprogram(name: "check_nonnull", scope: !751, file: !751, line: 37, type: !3901, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3903)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!116, !116}
!3903 = !{!3899}
!3904 = !DILocation(line: 0, scope: !3900, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 85, column: 10, scope: !3892, inlinedAt: !3897)
!3906 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !3905)
!3907 = distinct !DILexicalBlock(scope: !3900, file: !751, line: 39, column: 7)
!3908 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !3905)
!3909 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !3905)
!3910 = !DILocation(line: 149, column: 3, scope: !3882)
!3911 = !DILocation(line: 0, scope: !3892)
!3912 = !DILocation(line: 85, column: 25, scope: !3892)
!3913 = !DILocation(line: 0, scope: !3900, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 85, column: 10, scope: !3892)
!3915 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !3914)
!3916 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !3914)
!3917 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !3914)
!3918 = !DILocation(line: 85, column: 3, scope: !3892)
!3919 = distinct !DISubprogram(name: "xmalloc", scope: !751, file: !751, line: 47, type: !3920, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!116, !119}
!3922 = !{!3923}
!3923 = !DILocalVariable(name: "s", arg: 1, scope: !3919, file: !751, line: 47, type: !119)
!3924 = !DILocation(line: 0, scope: !3919)
!3925 = !DILocation(line: 49, column: 25, scope: !3919)
!3926 = !DILocation(line: 0, scope: !3900, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 49, column: 10, scope: !3919)
!3928 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !3927)
!3929 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !3927)
!3930 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !3927)
!3931 = !DILocation(line: 49, column: 3, scope: !3919)
!3932 = !DISubprogram(name: "malloc", scope: !1011, file: !1011, line: 540, type: !3920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3933 = distinct !DISubprogram(name: "ximalloc", scope: !751, file: !751, line: 53, type: !3934, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!116, !770}
!3936 = !{!3937}
!3937 = !DILocalVariable(name: "s", arg: 1, scope: !3933, file: !751, line: 53, type: !770)
!3938 = !DILocation(line: 0, scope: !3933)
!3939 = !DILocalVariable(name: "s", arg: 1, scope: !3940, file: !3941, line: 55, type: !770)
!3940 = distinct !DISubprogram(name: "imalloc", scope: !3941, file: !3941, line: 55, type: !3934, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3942)
!3941 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3942 = !{!3939}
!3943 = !DILocation(line: 0, scope: !3940, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 55, column: 25, scope: !3933)
!3945 = !DILocation(line: 57, column: 26, scope: !3940, inlinedAt: !3944)
!3946 = !DILocation(line: 0, scope: !3900, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 55, column: 10, scope: !3933)
!3948 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !3947)
!3949 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !3947)
!3950 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !3947)
!3951 = !DILocation(line: 55, column: 3, scope: !3933)
!3952 = distinct !DISubprogram(name: "xcharalloc", scope: !751, file: !751, line: 59, type: !3953, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3955)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!124, !119}
!3955 = !{!3956}
!3956 = !DILocalVariable(name: "n", arg: 1, scope: !3952, file: !751, line: 59, type: !119)
!3957 = !DILocation(line: 0, scope: !3952)
!3958 = !DILocation(line: 0, scope: !3919, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 61, column: 10, scope: !3952)
!3960 = !DILocation(line: 49, column: 25, scope: !3919, inlinedAt: !3959)
!3961 = !DILocation(line: 0, scope: !3900, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 49, column: 10, scope: !3919, inlinedAt: !3959)
!3963 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !3962)
!3964 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !3962)
!3965 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !3962)
!3966 = !DILocation(line: 61, column: 3, scope: !3952)
!3967 = distinct !DISubprogram(name: "xrealloc", scope: !751, file: !751, line: 68, type: !3968, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!116, !116, !119}
!3970 = !{!3971, !3972}
!3971 = !DILocalVariable(name: "p", arg: 1, scope: !3967, file: !751, line: 68, type: !116)
!3972 = !DILocalVariable(name: "s", arg: 2, scope: !3967, file: !751, line: 68, type: !119)
!3973 = !DILocation(line: 0, scope: !3967)
!3974 = !DILocalVariable(name: "ptr", arg: 1, scope: !3975, file: !3976, line: 2057, type: !116)
!3975 = distinct !DISubprogram(name: "rpl_realloc", scope: !3976, file: !3976, line: 2057, type: !3968, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3977)
!3976 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3977 = !{!3974, !3978}
!3978 = !DILocalVariable(name: "size", arg: 2, scope: !3975, file: !3976, line: 2057, type: !119)
!3979 = !DILocation(line: 0, scope: !3975, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 70, column: 25, scope: !3967)
!3981 = !DILocation(line: 2059, column: 24, scope: !3975, inlinedAt: !3980)
!3982 = !DILocation(line: 2059, column: 10, scope: !3975, inlinedAt: !3980)
!3983 = !DILocation(line: 0, scope: !3900, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 70, column: 10, scope: !3967)
!3985 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !3984)
!3986 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !3984)
!3987 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !3984)
!3988 = !DILocation(line: 70, column: 3, scope: !3967)
!3989 = !DISubprogram(name: "realloc", scope: !1011, file: !1011, line: 551, type: !3968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!3990 = distinct !DISubprogram(name: "xirealloc", scope: !751, file: !751, line: 74, type: !3991, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!116, !116, !770}
!3993 = !{!3994, !3995}
!3994 = !DILocalVariable(name: "p", arg: 1, scope: !3990, file: !751, line: 74, type: !116)
!3995 = !DILocalVariable(name: "s", arg: 2, scope: !3990, file: !751, line: 74, type: !770)
!3996 = !DILocation(line: 0, scope: !3990)
!3997 = !DILocalVariable(name: "p", arg: 1, scope: !3998, file: !3941, line: 66, type: !116)
!3998 = distinct !DISubprogram(name: "irealloc", scope: !3941, file: !3941, line: 66, type: !3991, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3999)
!3999 = !{!3997, !4000}
!4000 = !DILocalVariable(name: "s", arg: 2, scope: !3998, file: !3941, line: 66, type: !770)
!4001 = !DILocation(line: 0, scope: !3998, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 76, column: 25, scope: !3990)
!4003 = !DILocation(line: 0, scope: !3975, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 68, column: 26, scope: !3998, inlinedAt: !4002)
!4005 = !DILocation(line: 2059, column: 24, scope: !3975, inlinedAt: !4004)
!4006 = !DILocation(line: 2059, column: 10, scope: !3975, inlinedAt: !4004)
!4007 = !DILocation(line: 0, scope: !3900, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 76, column: 10, scope: !3990)
!4009 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4008)
!4010 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4008)
!4011 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4008)
!4012 = !DILocation(line: 76, column: 3, scope: !3990)
!4013 = distinct !DISubprogram(name: "xireallocarray", scope: !751, file: !751, line: 89, type: !4014, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!116, !116, !770, !770}
!4016 = !{!4017, !4018, !4019}
!4017 = !DILocalVariable(name: "p", arg: 1, scope: !4013, file: !751, line: 89, type: !116)
!4018 = !DILocalVariable(name: "n", arg: 2, scope: !4013, file: !751, line: 89, type: !770)
!4019 = !DILocalVariable(name: "s", arg: 3, scope: !4013, file: !751, line: 89, type: !770)
!4020 = !DILocation(line: 0, scope: !4013)
!4021 = !DILocalVariable(name: "p", arg: 1, scope: !4022, file: !3941, line: 98, type: !116)
!4022 = distinct !DISubprogram(name: "ireallocarray", scope: !3941, file: !3941, line: 98, type: !4014, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4023)
!4023 = !{!4021, !4024, !4025}
!4024 = !DILocalVariable(name: "n", arg: 2, scope: !4022, file: !3941, line: 98, type: !770)
!4025 = !DILocalVariable(name: "s", arg: 3, scope: !4022, file: !3941, line: 98, type: !770)
!4026 = !DILocation(line: 0, scope: !4022, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 91, column: 25, scope: !4013)
!4028 = !DILocation(line: 101, column: 13, scope: !4022, inlinedAt: !4027)
!4029 = !DILocation(line: 0, scope: !3900, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 91, column: 10, scope: !4013)
!4031 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4030)
!4032 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4030)
!4033 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4030)
!4034 = !DILocation(line: 91, column: 3, scope: !4013)
!4035 = distinct !DISubprogram(name: "xnmalloc", scope: !751, file: !751, line: 98, type: !4036, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!116, !119, !119}
!4038 = !{!4039, !4040}
!4039 = !DILocalVariable(name: "n", arg: 1, scope: !4035, file: !751, line: 98, type: !119)
!4040 = !DILocalVariable(name: "s", arg: 2, scope: !4035, file: !751, line: 98, type: !119)
!4041 = !DILocation(line: 0, scope: !4035)
!4042 = !DILocation(line: 0, scope: !3892, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 100, column: 10, scope: !4035)
!4044 = !DILocation(line: 85, column: 25, scope: !3892, inlinedAt: !4043)
!4045 = !DILocation(line: 0, scope: !3900, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 85, column: 10, scope: !3892, inlinedAt: !4043)
!4047 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4046)
!4048 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4046)
!4049 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4046)
!4050 = !DILocation(line: 100, column: 3, scope: !4035)
!4051 = distinct !DISubprogram(name: "xinmalloc", scope: !751, file: !751, line: 104, type: !4052, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4054)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!116, !770, !770}
!4054 = !{!4055, !4056}
!4055 = !DILocalVariable(name: "n", arg: 1, scope: !4051, file: !751, line: 104, type: !770)
!4056 = !DILocalVariable(name: "s", arg: 2, scope: !4051, file: !751, line: 104, type: !770)
!4057 = !DILocation(line: 0, scope: !4051)
!4058 = !DILocation(line: 0, scope: !4013, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 106, column: 10, scope: !4051)
!4060 = !DILocation(line: 0, scope: !4022, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 91, column: 25, scope: !4013, inlinedAt: !4059)
!4062 = !DILocation(line: 101, column: 13, scope: !4022, inlinedAt: !4061)
!4063 = !DILocation(line: 0, scope: !3900, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 91, column: 10, scope: !4013, inlinedAt: !4059)
!4065 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4064)
!4066 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4064)
!4067 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4064)
!4068 = !DILocation(line: 106, column: 3, scope: !4051)
!4069 = distinct !DISubprogram(name: "x2realloc", scope: !751, file: !751, line: 116, type: !4070, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!116, !116, !757}
!4072 = !{!4073, !4074}
!4073 = !DILocalVariable(name: "p", arg: 1, scope: !4069, file: !751, line: 116, type: !116)
!4074 = !DILocalVariable(name: "ps", arg: 2, scope: !4069, file: !751, line: 116, type: !757)
!4075 = !DILocation(line: 0, scope: !4069)
!4076 = !DILocation(line: 0, scope: !754, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 118, column: 10, scope: !4069)
!4078 = !DILocation(line: 178, column: 14, scope: !754, inlinedAt: !4077)
!4079 = !DILocation(line: 180, column: 9, scope: !4080, inlinedAt: !4077)
!4080 = distinct !DILexicalBlock(scope: !754, file: !751, line: 180, column: 7)
!4081 = !DILocation(line: 180, column: 7, scope: !754, inlinedAt: !4077)
!4082 = !DILocation(line: 182, column: 13, scope: !4083, inlinedAt: !4077)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !751, line: 182, column: 11)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !751, line: 181, column: 5)
!4085 = !DILocation(line: 182, column: 11, scope: !4084, inlinedAt: !4077)
!4086 = !DILocation(line: 197, column: 11, scope: !4087, inlinedAt: !4077)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !751, line: 197, column: 11)
!4088 = distinct !DILexicalBlock(scope: !4080, file: !751, line: 195, column: 5)
!4089 = !DILocation(line: 197, column: 11, scope: !4088, inlinedAt: !4077)
!4090 = !DILocation(line: 198, column: 9, scope: !4087, inlinedAt: !4077)
!4091 = !DILocation(line: 0, scope: !3892, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 201, column: 7, scope: !754, inlinedAt: !4077)
!4093 = !DILocation(line: 85, column: 25, scope: !3892, inlinedAt: !4092)
!4094 = !DILocation(line: 0, scope: !3900, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 85, column: 10, scope: !3892, inlinedAt: !4092)
!4096 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4095)
!4097 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4095)
!4098 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4095)
!4099 = !DILocation(line: 202, column: 7, scope: !754, inlinedAt: !4077)
!4100 = !DILocation(line: 118, column: 3, scope: !4069)
!4101 = !DILocation(line: 0, scope: !754)
!4102 = !DILocation(line: 178, column: 14, scope: !754)
!4103 = !DILocation(line: 180, column: 9, scope: !4080)
!4104 = !DILocation(line: 180, column: 7, scope: !754)
!4105 = !DILocation(line: 182, column: 13, scope: !4083)
!4106 = !DILocation(line: 182, column: 11, scope: !4084)
!4107 = !DILocation(line: 190, column: 30, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4083, file: !751, line: 183, column: 9)
!4109 = !DILocation(line: 191, column: 16, scope: !4108)
!4110 = !DILocation(line: 191, column: 13, scope: !4108)
!4111 = !DILocation(line: 192, column: 9, scope: !4108)
!4112 = !DILocation(line: 197, column: 11, scope: !4087)
!4113 = !DILocation(line: 197, column: 11, scope: !4088)
!4114 = !DILocation(line: 198, column: 9, scope: !4087)
!4115 = !DILocation(line: 0, scope: !3892, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 201, column: 7, scope: !754)
!4117 = !DILocation(line: 85, column: 25, scope: !3892, inlinedAt: !4116)
!4118 = !DILocation(line: 0, scope: !3900, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 85, column: 10, scope: !3892, inlinedAt: !4116)
!4120 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4119)
!4121 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4119)
!4122 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4119)
!4123 = !DILocation(line: 202, column: 7, scope: !754)
!4124 = !DILocation(line: 203, column: 3, scope: !754)
!4125 = !DILocation(line: 0, scope: !766)
!4126 = !DILocation(line: 230, column: 14, scope: !766)
!4127 = !DILocation(line: 238, column: 7, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !766, file: !751, line: 238, column: 7)
!4129 = !DILocation(line: 238, column: 7, scope: !766)
!4130 = !DILocation(line: 240, column: 9, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !766, file: !751, line: 240, column: 7)
!4132 = !DILocation(line: 240, column: 18, scope: !4131)
!4133 = !DILocation(line: 253, column: 8, scope: !766)
!4134 = !DILocation(line: 258, column: 27, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !751, line: 257, column: 5)
!4136 = distinct !DILexicalBlock(scope: !766, file: !751, line: 256, column: 7)
!4137 = !DILocation(line: 259, column: 50, scope: !4135)
!4138 = !DILocation(line: 259, column: 32, scope: !4135)
!4139 = !DILocation(line: 260, column: 5, scope: !4135)
!4140 = !DILocation(line: 262, column: 9, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !766, file: !751, line: 262, column: 7)
!4142 = !DILocation(line: 262, column: 7, scope: !766)
!4143 = !DILocation(line: 263, column: 9, scope: !4141)
!4144 = !DILocation(line: 263, column: 5, scope: !4141)
!4145 = !DILocation(line: 264, column: 9, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !766, file: !751, line: 264, column: 7)
!4147 = !DILocation(line: 264, column: 14, scope: !4146)
!4148 = !DILocation(line: 265, column: 7, scope: !4146)
!4149 = !DILocation(line: 265, column: 11, scope: !4146)
!4150 = !DILocation(line: 266, column: 11, scope: !4146)
!4151 = !DILocation(line: 267, column: 14, scope: !4146)
!4152 = !DILocation(line: 264, column: 7, scope: !766)
!4153 = !DILocation(line: 268, column: 5, scope: !4146)
!4154 = !DILocation(line: 0, scope: !3967, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 269, column: 8, scope: !766)
!4156 = !DILocation(line: 0, scope: !3975, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 70, column: 25, scope: !3967, inlinedAt: !4155)
!4158 = !DILocation(line: 2059, column: 24, scope: !3975, inlinedAt: !4157)
!4159 = !DILocation(line: 2059, column: 10, scope: !3975, inlinedAt: !4157)
!4160 = !DILocation(line: 0, scope: !3900, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 70, column: 10, scope: !3967, inlinedAt: !4155)
!4162 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4161)
!4163 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4161)
!4164 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4161)
!4165 = !DILocation(line: 270, column: 7, scope: !766)
!4166 = !DILocation(line: 271, column: 3, scope: !766)
!4167 = distinct !DISubprogram(name: "xzalloc", scope: !751, file: !751, line: 279, type: !3920, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4168)
!4168 = !{!4169}
!4169 = !DILocalVariable(name: "s", arg: 1, scope: !4167, file: !751, line: 279, type: !119)
!4170 = !DILocation(line: 0, scope: !4167)
!4171 = !DILocalVariable(name: "n", arg: 1, scope: !4172, file: !751, line: 294, type: !119)
!4172 = distinct !DISubprogram(name: "xcalloc", scope: !751, file: !751, line: 294, type: !4036, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4173)
!4173 = !{!4171, !4174}
!4174 = !DILocalVariable(name: "s", arg: 2, scope: !4172, file: !751, line: 294, type: !119)
!4175 = !DILocation(line: 0, scope: !4172, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 281, column: 10, scope: !4167)
!4177 = !DILocation(line: 296, column: 25, scope: !4172, inlinedAt: !4176)
!4178 = !DILocation(line: 0, scope: !3900, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 296, column: 10, scope: !4172, inlinedAt: !4176)
!4180 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4179)
!4181 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4179)
!4182 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4179)
!4183 = !DILocation(line: 281, column: 3, scope: !4167)
!4184 = !DISubprogram(name: "calloc", scope: !1011, file: !1011, line: 543, type: !4036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4185 = !DILocation(line: 0, scope: !4172)
!4186 = !DILocation(line: 296, column: 25, scope: !4172)
!4187 = !DILocation(line: 0, scope: !3900, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 296, column: 10, scope: !4172)
!4189 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4188)
!4190 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4188)
!4191 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4188)
!4192 = !DILocation(line: 296, column: 3, scope: !4172)
!4193 = distinct !DISubprogram(name: "xizalloc", scope: !751, file: !751, line: 285, type: !3934, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4194)
!4194 = !{!4195}
!4195 = !DILocalVariable(name: "s", arg: 1, scope: !4193, file: !751, line: 285, type: !770)
!4196 = !DILocation(line: 0, scope: !4193)
!4197 = !DILocalVariable(name: "n", arg: 1, scope: !4198, file: !751, line: 300, type: !770)
!4198 = distinct !DISubprogram(name: "xicalloc", scope: !751, file: !751, line: 300, type: !4052, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4199)
!4199 = !{!4197, !4200}
!4200 = !DILocalVariable(name: "s", arg: 2, scope: !4198, file: !751, line: 300, type: !770)
!4201 = !DILocation(line: 0, scope: !4198, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 287, column: 10, scope: !4193)
!4203 = !DILocalVariable(name: "n", arg: 1, scope: !4204, file: !3941, line: 77, type: !770)
!4204 = distinct !DISubprogram(name: "icalloc", scope: !3941, file: !3941, line: 77, type: !4052, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4205)
!4205 = !{!4203, !4206}
!4206 = !DILocalVariable(name: "s", arg: 2, scope: !4204, file: !3941, line: 77, type: !770)
!4207 = !DILocation(line: 0, scope: !4204, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 302, column: 25, scope: !4198, inlinedAt: !4202)
!4209 = !DILocation(line: 91, column: 10, scope: !4204, inlinedAt: !4208)
!4210 = !DILocation(line: 0, scope: !3900, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 302, column: 10, scope: !4198, inlinedAt: !4202)
!4212 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4211)
!4213 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4211)
!4214 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4211)
!4215 = !DILocation(line: 287, column: 3, scope: !4193)
!4216 = !DILocation(line: 0, scope: !4198)
!4217 = !DILocation(line: 0, scope: !4204, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 302, column: 25, scope: !4198)
!4219 = !DILocation(line: 91, column: 10, scope: !4204, inlinedAt: !4218)
!4220 = !DILocation(line: 0, scope: !3900, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 302, column: 10, scope: !4198)
!4222 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4221)
!4223 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4221)
!4224 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4221)
!4225 = !DILocation(line: 302, column: 3, scope: !4198)
!4226 = distinct !DISubprogram(name: "xmemdup", scope: !751, file: !751, line: 310, type: !4227, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4229)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!116, !1035, !119}
!4229 = !{!4230, !4231}
!4230 = !DILocalVariable(name: "p", arg: 1, scope: !4226, file: !751, line: 310, type: !1035)
!4231 = !DILocalVariable(name: "s", arg: 2, scope: !4226, file: !751, line: 310, type: !119)
!4232 = !DILocation(line: 0, scope: !4226)
!4233 = !DILocation(line: 0, scope: !3919, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 312, column: 18, scope: !4226)
!4235 = !DILocation(line: 49, column: 25, scope: !3919, inlinedAt: !4234)
!4236 = !DILocation(line: 0, scope: !3900, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 49, column: 10, scope: !3919, inlinedAt: !4234)
!4238 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4237)
!4239 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4237)
!4240 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4237)
!4241 = !DILocalVariable(name: "__dest", arg: 1, scope: !4242, file: !1635, line: 26, type: !3602)
!4242 = distinct !DISubprogram(name: "memcpy", scope: !1635, file: !1635, line: 26, type: !3600, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4243)
!4243 = !{!4241, !4244, !4245}
!4244 = !DILocalVariable(name: "__src", arg: 2, scope: !4242, file: !1635, line: 26, type: !1034)
!4245 = !DILocalVariable(name: "__len", arg: 3, scope: !4242, file: !1635, line: 26, type: !119)
!4246 = !DILocation(line: 0, scope: !4242, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 312, column: 10, scope: !4226)
!4248 = !DILocation(line: 29, column: 10, scope: !4242, inlinedAt: !4247)
!4249 = !DILocation(line: 312, column: 3, scope: !4226)
!4250 = distinct !DISubprogram(name: "ximemdup", scope: !751, file: !751, line: 316, type: !4251, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4253)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!116, !1035, !770}
!4253 = !{!4254, !4255}
!4254 = !DILocalVariable(name: "p", arg: 1, scope: !4250, file: !751, line: 316, type: !1035)
!4255 = !DILocalVariable(name: "s", arg: 2, scope: !4250, file: !751, line: 316, type: !770)
!4256 = !DILocation(line: 0, scope: !4250)
!4257 = !DILocation(line: 0, scope: !3933, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 318, column: 18, scope: !4250)
!4259 = !DILocation(line: 0, scope: !3940, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 55, column: 25, scope: !3933, inlinedAt: !4258)
!4261 = !DILocation(line: 57, column: 26, scope: !3940, inlinedAt: !4260)
!4262 = !DILocation(line: 0, scope: !3900, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 55, column: 10, scope: !3933, inlinedAt: !4258)
!4264 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4263)
!4265 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4263)
!4266 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4263)
!4267 = !DILocation(line: 0, scope: !4242, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 318, column: 10, scope: !4250)
!4269 = !DILocation(line: 29, column: 10, scope: !4242, inlinedAt: !4268)
!4270 = !DILocation(line: 318, column: 3, scope: !4250)
!4271 = distinct !DISubprogram(name: "ximemdup0", scope: !751, file: !751, line: 325, type: !4272, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!124, !1035, !770}
!4274 = !{!4275, !4276, !4277}
!4275 = !DILocalVariable(name: "p", arg: 1, scope: !4271, file: !751, line: 325, type: !1035)
!4276 = !DILocalVariable(name: "s", arg: 2, scope: !4271, file: !751, line: 325, type: !770)
!4277 = !DILocalVariable(name: "result", scope: !4271, file: !751, line: 327, type: !124)
!4278 = !DILocation(line: 0, scope: !4271)
!4279 = !DILocation(line: 327, column: 30, scope: !4271)
!4280 = !DILocation(line: 0, scope: !3933, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 327, column: 18, scope: !4271)
!4282 = !DILocation(line: 0, scope: !3940, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 55, column: 25, scope: !3933, inlinedAt: !4281)
!4284 = !DILocation(line: 57, column: 26, scope: !3940, inlinedAt: !4283)
!4285 = !DILocation(line: 0, scope: !3900, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 55, column: 10, scope: !3933, inlinedAt: !4281)
!4287 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4286)
!4288 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4286)
!4289 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4286)
!4290 = !DILocation(line: 328, column: 3, scope: !4271)
!4291 = !DILocation(line: 328, column: 13, scope: !4271)
!4292 = !DILocation(line: 0, scope: !4242, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 329, column: 10, scope: !4271)
!4294 = !DILocation(line: 29, column: 10, scope: !4242, inlinedAt: !4293)
!4295 = !DILocation(line: 329, column: 3, scope: !4271)
!4296 = distinct !DISubprogram(name: "xstrdup", scope: !751, file: !751, line: 335, type: !1013, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4297)
!4297 = !{!4298}
!4298 = !DILocalVariable(name: "string", arg: 1, scope: !4296, file: !751, line: 335, type: !74)
!4299 = !DILocation(line: 0, scope: !4296)
!4300 = !DILocation(line: 337, column: 27, scope: !4296)
!4301 = !DILocation(line: 337, column: 43, scope: !4296)
!4302 = !DILocation(line: 0, scope: !4226, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 337, column: 10, scope: !4296)
!4304 = !DILocation(line: 0, scope: !3919, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 312, column: 18, scope: !4226, inlinedAt: !4303)
!4306 = !DILocation(line: 49, column: 25, scope: !3919, inlinedAt: !4305)
!4307 = !DILocation(line: 0, scope: !3900, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 49, column: 10, scope: !3919, inlinedAt: !4305)
!4309 = !DILocation(line: 39, column: 8, scope: !3907, inlinedAt: !4308)
!4310 = !DILocation(line: 39, column: 7, scope: !3900, inlinedAt: !4308)
!4311 = !DILocation(line: 40, column: 5, scope: !3907, inlinedAt: !4308)
!4312 = !DILocation(line: 0, scope: !4242, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 312, column: 10, scope: !4226, inlinedAt: !4303)
!4314 = !DILocation(line: 29, column: 10, scope: !4242, inlinedAt: !4313)
!4315 = !DILocation(line: 337, column: 3, scope: !4296)
!4316 = distinct !DISubprogram(name: "xalloc_die", scope: !681, file: !681, line: 32, type: !390, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4317)
!4317 = !{!4318}
!4318 = !DILocalVariable(name: "__errstatus", scope: !4319, file: !681, line: 34, type: !4320)
!4319 = distinct !DILexicalBlock(scope: !4316, file: !681, line: 34, column: 3)
!4320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!4321 = !DILocation(line: 34, column: 3, scope: !4319)
!4322 = !DILocation(line: 0, scope: !4319)
!4323 = !DILocation(line: 40, column: 3, scope: !4316)
!4324 = distinct !DISubprogram(name: "rpl_fopen", scope: !787, file: !787, line: 46, type: !4325, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4361)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!4327, !74, !74}
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4329)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4329, file: !264, line: 51, baseType: !117, size: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4329, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4329, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4329, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4329, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4329, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4329, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4329, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4329, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4329, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4329, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4329, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4329, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4329, file: !264, line: 70, baseType: !4345, size: 64, offset: 832)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4329, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4329, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4329, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4329, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4329, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4329, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4329, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4329, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4329, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4329, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4329, file: !264, line: 93, baseType: !4345, size: 64, offset: 1344)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4329, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4329, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4329, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4329, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4361 = !{!4362, !4363, !4364, !4365, !4366, !4367, !4371, !4373, !4374, !4379, !4382, !4383}
!4362 = !DILocalVariable(name: "filename", arg: 1, scope: !4324, file: !787, line: 46, type: !74)
!4363 = !DILocalVariable(name: "mode", arg: 2, scope: !4324, file: !787, line: 46, type: !74)
!4364 = !DILocalVariable(name: "open_direction", scope: !4324, file: !787, line: 54, type: !117)
!4365 = !DILocalVariable(name: "open_flags", scope: !4324, file: !787, line: 55, type: !117)
!4366 = !DILocalVariable(name: "open_flags_gnu", scope: !4324, file: !787, line: 57, type: !247)
!4367 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4324, file: !787, line: 59, type: !4368)
!4368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4369)
!4369 = !{!4370}
!4370 = !DISubrange(count: 81)
!4371 = !DILocalVariable(name: "p", scope: !4372, file: !787, line: 62, type: !74)
!4372 = distinct !DILexicalBlock(scope: !4324, file: !787, line: 61, column: 3)
!4373 = !DILocalVariable(name: "q", scope: !4372, file: !787, line: 64, type: !124)
!4374 = !DILocalVariable(name: "len", scope: !4375, file: !787, line: 128, type: !119)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !787, line: 127, column: 9)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !787, line: 68, column: 7)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !787, line: 67, column: 5)
!4378 = distinct !DILexicalBlock(scope: !4372, file: !787, line: 67, column: 5)
!4379 = !DILocalVariable(name: "fd", scope: !4380, file: !787, line: 199, type: !117)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !787, line: 198, column: 5)
!4381 = distinct !DILexicalBlock(scope: !4324, file: !787, line: 197, column: 7)
!4382 = !DILocalVariable(name: "fp", scope: !4380, file: !787, line: 204, type: !4327)
!4383 = !DILocalVariable(name: "saved_errno", scope: !4384, file: !787, line: 207, type: !117)
!4384 = distinct !DILexicalBlock(scope: !4385, file: !787, line: 206, column: 9)
!4385 = distinct !DILexicalBlock(scope: !4380, file: !787, line: 205, column: 11)
!4386 = !DILocation(line: 0, scope: !4324)
!4387 = !DILocation(line: 59, column: 3, scope: !4324)
!4388 = !DILocation(line: 59, column: 8, scope: !4324)
!4389 = !DILocation(line: 0, scope: !4372)
!4390 = !DILocation(line: 67, column: 12, scope: !4377)
!4391 = !DILocation(line: 67, column: 15, scope: !4377)
!4392 = !DILocation(line: 67, column: 5, scope: !4378)
!4393 = !DILocation(line: 138, column: 8, scope: !4372)
!4394 = !DILocation(line: 197, column: 7, scope: !4324)
!4395 = !DILocation(line: 69, column: 9, scope: !4376)
!4396 = !DILocation(line: 74, column: 19, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !787, line: 74, column: 17)
!4398 = distinct !DILexicalBlock(scope: !4376, file: !787, line: 70, column: 11)
!4399 = !DILocation(line: 74, column: 17, scope: !4398)
!4400 = !DILocation(line: 75, column: 17, scope: !4397)
!4401 = !DILocation(line: 75, column: 20, scope: !4397)
!4402 = !DILocation(line: 75, column: 15, scope: !4397)
!4403 = !DILocation(line: 80, column: 24, scope: !4398)
!4404 = !DILocation(line: 82, column: 19, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4398, file: !787, line: 82, column: 17)
!4406 = !DILocation(line: 82, column: 17, scope: !4398)
!4407 = !DILocation(line: 83, column: 17, scope: !4405)
!4408 = !DILocation(line: 83, column: 20, scope: !4405)
!4409 = !DILocation(line: 83, column: 15, scope: !4405)
!4410 = !DILocation(line: 88, column: 24, scope: !4398)
!4411 = !DILocation(line: 90, column: 19, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4398, file: !787, line: 90, column: 17)
!4413 = !DILocation(line: 90, column: 17, scope: !4398)
!4414 = !DILocation(line: 91, column: 17, scope: !4412)
!4415 = !DILocation(line: 91, column: 20, scope: !4412)
!4416 = !DILocation(line: 91, column: 15, scope: !4412)
!4417 = !DILocation(line: 100, column: 19, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4398, file: !787, line: 100, column: 17)
!4419 = !DILocation(line: 100, column: 17, scope: !4398)
!4420 = !DILocation(line: 101, column: 17, scope: !4418)
!4421 = !DILocation(line: 101, column: 20, scope: !4418)
!4422 = !DILocation(line: 101, column: 15, scope: !4418)
!4423 = !DILocation(line: 107, column: 19, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4398, file: !787, line: 107, column: 17)
!4425 = !DILocation(line: 107, column: 17, scope: !4398)
!4426 = !DILocation(line: 108, column: 17, scope: !4424)
!4427 = !DILocation(line: 108, column: 20, scope: !4424)
!4428 = !DILocation(line: 108, column: 15, scope: !4424)
!4429 = !DILocation(line: 113, column: 24, scope: !4398)
!4430 = !DILocation(line: 115, column: 13, scope: !4398)
!4431 = !DILocation(line: 117, column: 24, scope: !4398)
!4432 = !DILocation(line: 119, column: 13, scope: !4398)
!4433 = !DILocation(line: 128, column: 24, scope: !4375)
!4434 = !DILocation(line: 0, scope: !4375)
!4435 = !DILocation(line: 129, column: 48, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4375, file: !787, line: 129, column: 15)
!4437 = !DILocation(line: 129, column: 15, scope: !4375)
!4438 = !DILocalVariable(name: "__dest", arg: 1, scope: !4439, file: !1635, line: 26, type: !3602)
!4439 = distinct !DISubprogram(name: "memcpy", scope: !1635, file: !1635, line: 26, type: !3600, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4440)
!4440 = !{!4438, !4441, !4442}
!4441 = !DILocalVariable(name: "__src", arg: 2, scope: !4439, file: !1635, line: 26, type: !1034)
!4442 = !DILocalVariable(name: "__len", arg: 3, scope: !4439, file: !1635, line: 26, type: !119)
!4443 = !DILocation(line: 0, scope: !4439, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 131, column: 11, scope: !4375)
!4445 = !DILocation(line: 29, column: 10, scope: !4439, inlinedAt: !4444)
!4446 = !DILocation(line: 132, column: 13, scope: !4375)
!4447 = !DILocation(line: 135, column: 9, scope: !4376)
!4448 = !DILocation(line: 67, column: 25, scope: !4377)
!4449 = distinct !{!4449, !4392, !4450, !929}
!4450 = !DILocation(line: 136, column: 7, scope: !4378)
!4451 = !DILocation(line: 197, column: 7, scope: !4381)
!4452 = !DILocation(line: 199, column: 47, scope: !4380)
!4453 = !DILocation(line: 199, column: 16, scope: !4380)
!4454 = !DILocation(line: 0, scope: !4380)
!4455 = !DILocation(line: 201, column: 14, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4380, file: !787, line: 201, column: 11)
!4457 = !DILocation(line: 201, column: 11, scope: !4380)
!4458 = !DILocation(line: 204, column: 18, scope: !4380)
!4459 = !DILocation(line: 205, column: 14, scope: !4385)
!4460 = !DILocation(line: 205, column: 11, scope: !4380)
!4461 = !DILocation(line: 207, column: 29, scope: !4384)
!4462 = !DILocation(line: 0, scope: !4384)
!4463 = !DILocation(line: 208, column: 11, scope: !4384)
!4464 = !DILocation(line: 209, column: 17, scope: !4384)
!4465 = !DILocation(line: 210, column: 9, scope: !4384)
!4466 = !DILocalVariable(name: "filename", arg: 1, scope: !4467, file: !787, line: 30, type: !74)
!4467 = distinct !DISubprogram(name: "orig_fopen", scope: !787, file: !787, line: 30, type: !4325, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4468)
!4468 = !{!4466, !4469}
!4469 = !DILocalVariable(name: "mode", arg: 2, scope: !4467, file: !787, line: 30, type: !74)
!4470 = !DILocation(line: 0, scope: !4467, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 219, column: 10, scope: !4324)
!4472 = !DILocation(line: 32, column: 10, scope: !4467, inlinedAt: !4471)
!4473 = !DILocation(line: 219, column: 3, scope: !4324)
!4474 = !DILocation(line: 220, column: 1, scope: !4324)
!4475 = !DISubprogram(name: "open", scope: !1414, file: !1414, line: 181, type: !4476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!117, !74, !117, null}
!4478 = !DISubprogram(name: "fdopen", scope: !1007, file: !1007, line: 293, type: !4479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!4327, !117, !74}
!4481 = !DISubprogram(name: "close", scope: !1276, file: !1276, line: 358, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4482 = !DISubprogram(name: "fopen", scope: !1007, file: !1007, line: 258, type: !4483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!4327, !876, !876}
!4485 = distinct !DISubprogram(name: "close_stream", scope: !789, file: !789, line: 55, type: !4486, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4522)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!117, !4488}
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4490)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4491)
!4491 = !{!4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4490, file: !264, line: 51, baseType: !117, size: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4490, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4490, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4490, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4490, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4490, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4490, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4490, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4490, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4490, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4490, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4490, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4490, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4490, file: !264, line: 70, baseType: !4506, size: 64, offset: 832)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4490, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4490, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4490, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4490, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4490, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4490, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4490, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4490, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4490, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4490, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4490, file: !264, line: 93, baseType: !4506, size: 64, offset: 1344)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4490, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4490, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4490, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4490, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4522 = !{!4523, !4524, !4526, !4527}
!4523 = !DILocalVariable(name: "stream", arg: 1, scope: !4485, file: !789, line: 55, type: !4488)
!4524 = !DILocalVariable(name: "some_pending", scope: !4485, file: !789, line: 57, type: !4525)
!4525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!4526 = !DILocalVariable(name: "prev_fail", scope: !4485, file: !789, line: 58, type: !4525)
!4527 = !DILocalVariable(name: "fclose_fail", scope: !4485, file: !789, line: 59, type: !4525)
!4528 = !DILocation(line: 0, scope: !4485)
!4529 = !DILocation(line: 57, column: 30, scope: !4485)
!4530 = !DILocalVariable(name: "__stream", arg: 1, scope: !4531, file: !1171, line: 135, type: !4488)
!4531 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1171, file: !1171, line: 135, type: !4486, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4532)
!4532 = !{!4530}
!4533 = !DILocation(line: 0, scope: !4531, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 58, column: 27, scope: !4485)
!4535 = !DILocation(line: 137, column: 10, scope: !4531, inlinedAt: !4534)
!4536 = !{!1179, !883, i64 0}
!4537 = !DILocation(line: 58, column: 43, scope: !4485)
!4538 = !DILocation(line: 59, column: 29, scope: !4485)
!4539 = !DILocation(line: 59, column: 45, scope: !4485)
!4540 = !DILocation(line: 69, column: 17, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4485, file: !789, line: 69, column: 7)
!4542 = !DILocation(line: 57, column: 50, scope: !4485)
!4543 = !DILocation(line: 69, column: 33, scope: !4541)
!4544 = !DILocation(line: 69, column: 53, scope: !4541)
!4545 = !DILocation(line: 69, column: 59, scope: !4541)
!4546 = !DILocation(line: 69, column: 7, scope: !4485)
!4547 = !DILocation(line: 71, column: 11, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4541, file: !789, line: 70, column: 5)
!4549 = !DILocation(line: 72, column: 9, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4548, file: !789, line: 71, column: 11)
!4551 = !DILocation(line: 72, column: 15, scope: !4550)
!4552 = !DILocation(line: 77, column: 1, scope: !4485)
!4553 = !DISubprogram(name: "__fpending", scope: !4554, file: !4554, line: 75, type: !4555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4554 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!119, !4488}
!4557 = distinct !DISubprogram(name: "rpl_fclose", scope: !791, file: !791, line: 58, type: !4558, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4594)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!117, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4562)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4563)
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4562, file: !264, line: 51, baseType: !117, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4562, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4562, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4562, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4562, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4562, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4562, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4562, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4562, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4562, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4562, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4562, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4562, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4562, file: !264, line: 70, baseType: !4578, size: 64, offset: 832)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4562, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4562, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4562, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4562, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4562, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4562, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4562, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4562, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4562, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4562, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4562, file: !264, line: 93, baseType: !4578, size: 64, offset: 1344)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4562, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4562, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4562, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4562, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4594 = !{!4595, !4596, !4597, !4598}
!4595 = !DILocalVariable(name: "fp", arg: 1, scope: !4557, file: !791, line: 58, type: !4560)
!4596 = !DILocalVariable(name: "saved_errno", scope: !4557, file: !791, line: 60, type: !117)
!4597 = !DILocalVariable(name: "fd", scope: !4557, file: !791, line: 63, type: !117)
!4598 = !DILocalVariable(name: "result", scope: !4557, file: !791, line: 74, type: !117)
!4599 = !DILocation(line: 0, scope: !4557)
!4600 = !DILocation(line: 63, column: 12, scope: !4557)
!4601 = !DILocation(line: 64, column: 10, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4557, file: !791, line: 64, column: 7)
!4603 = !DILocation(line: 64, column: 7, scope: !4557)
!4604 = !DILocation(line: 65, column: 12, scope: !4602)
!4605 = !DILocation(line: 65, column: 5, scope: !4602)
!4606 = !DILocation(line: 70, column: 9, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4557, file: !791, line: 70, column: 7)
!4608 = !DILocation(line: 70, column: 23, scope: !4607)
!4609 = !DILocation(line: 70, column: 33, scope: !4607)
!4610 = !DILocation(line: 70, column: 26, scope: !4607)
!4611 = !DILocation(line: 70, column: 59, scope: !4607)
!4612 = !DILocation(line: 71, column: 7, scope: !4607)
!4613 = !DILocation(line: 71, column: 10, scope: !4607)
!4614 = !DILocation(line: 70, column: 7, scope: !4557)
!4615 = !DILocation(line: 100, column: 12, scope: !4557)
!4616 = !DILocation(line: 105, column: 7, scope: !4557)
!4617 = !DILocation(line: 72, column: 19, scope: !4607)
!4618 = !DILocation(line: 105, column: 19, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4557, file: !791, line: 105, column: 7)
!4620 = !DILocation(line: 107, column: 13, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4619, file: !791, line: 106, column: 5)
!4622 = !DILocation(line: 109, column: 5, scope: !4621)
!4623 = !DILocation(line: 112, column: 1, scope: !4557)
!4624 = !DISubprogram(name: "fileno", scope: !1007, file: !1007, line: 809, type: !4558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4625 = !DISubprogram(name: "fclose", scope: !1007, file: !1007, line: 178, type: !4558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4626 = !DISubprogram(name: "__freading", scope: !4554, file: !4554, line: 51, type: !4558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4627 = !DISubprogram(name: "lseek", scope: !1276, file: !1276, line: 339, type: !4628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!286, !117, !286, !117}
!4630 = distinct !DISubprogram(name: "rpl_fflush", scope: !793, file: !793, line: 130, type: !4631, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4667)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!117, !4633}
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4635)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4636)
!4636 = !{!4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4635, file: !264, line: 51, baseType: !117, size: 32)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4635, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4635, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4635, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4635, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4635, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4635, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4635, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4635, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4635, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4635, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4635, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4635, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4635, file: !264, line: 70, baseType: !4651, size: 64, offset: 832)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4635, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4635, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4635, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4635, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4635, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4635, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4635, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4635, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4635, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4635, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4635, file: !264, line: 93, baseType: !4651, size: 64, offset: 1344)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4635, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4635, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4635, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4635, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4667 = !{!4668}
!4668 = !DILocalVariable(name: "stream", arg: 1, scope: !4630, file: !793, line: 130, type: !4633)
!4669 = !DILocation(line: 0, scope: !4630)
!4670 = !DILocation(line: 151, column: 14, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4630, file: !793, line: 151, column: 7)
!4672 = !DILocation(line: 151, column: 22, scope: !4671)
!4673 = !DILocation(line: 151, column: 27, scope: !4671)
!4674 = !DILocation(line: 151, column: 7, scope: !4630)
!4675 = !DILocation(line: 152, column: 12, scope: !4671)
!4676 = !DILocation(line: 152, column: 5, scope: !4671)
!4677 = !DILocalVariable(name: "fp", arg: 1, scope: !4678, file: !793, line: 42, type: !4633)
!4678 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !793, file: !793, line: 42, type: !4679, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4681)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{null, !4633}
!4681 = !{!4677}
!4682 = !DILocation(line: 0, scope: !4678, inlinedAt: !4683)
!4683 = distinct !DILocation(line: 157, column: 3, scope: !4630)
!4684 = !DILocation(line: 44, column: 12, scope: !4685, inlinedAt: !4683)
!4685 = distinct !DILexicalBlock(scope: !4678, file: !793, line: 44, column: 7)
!4686 = !DILocation(line: 44, column: 19, scope: !4685, inlinedAt: !4683)
!4687 = !DILocation(line: 44, column: 7, scope: !4678, inlinedAt: !4683)
!4688 = !DILocation(line: 46, column: 5, scope: !4685, inlinedAt: !4683)
!4689 = !DILocation(line: 159, column: 10, scope: !4630)
!4690 = !DILocation(line: 159, column: 3, scope: !4630)
!4691 = !DILocation(line: 236, column: 1, scope: !4630)
!4692 = !DISubprogram(name: "fflush", scope: !1007, file: !1007, line: 230, type: !4631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4693 = distinct !DISubprogram(name: "rpl_fseeko", scope: !795, file: !795, line: 28, type: !4694, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4731)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!117, !4696, !4730, !117}
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4698)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4699)
!4699 = !{!4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4698, file: !264, line: 51, baseType: !117, size: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4698, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4698, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4698, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4698, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4698, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4698, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4698, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4698, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4698, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4698, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4698, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4698, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4698, file: !264, line: 70, baseType: !4714, size: 64, offset: 832)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4698, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4698, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4698, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4698, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4698, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4698, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4698, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4698, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4698, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4698, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4698, file: !264, line: 93, baseType: !4714, size: 64, offset: 1344)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4698, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4698, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4698, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4698, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4730 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1007, line: 63, baseType: !286)
!4731 = !{!4732, !4733, !4734, !4735}
!4732 = !DILocalVariable(name: "fp", arg: 1, scope: !4693, file: !795, line: 28, type: !4696)
!4733 = !DILocalVariable(name: "offset", arg: 2, scope: !4693, file: !795, line: 28, type: !4730)
!4734 = !DILocalVariable(name: "whence", arg: 3, scope: !4693, file: !795, line: 28, type: !117)
!4735 = !DILocalVariable(name: "pos", scope: !4736, file: !795, line: 123, type: !4730)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !795, line: 119, column: 5)
!4737 = distinct !DILexicalBlock(scope: !4693, file: !795, line: 55, column: 7)
!4738 = !DILocation(line: 0, scope: !4693)
!4739 = !DILocation(line: 55, column: 12, scope: !4737)
!4740 = !{!1179, !826, i64 16}
!4741 = !DILocation(line: 55, column: 33, scope: !4737)
!4742 = !{!1179, !826, i64 8}
!4743 = !DILocation(line: 55, column: 25, scope: !4737)
!4744 = !DILocation(line: 56, column: 7, scope: !4737)
!4745 = !DILocation(line: 56, column: 15, scope: !4737)
!4746 = !DILocation(line: 56, column: 37, scope: !4737)
!4747 = !{!1179, !826, i64 32}
!4748 = !DILocation(line: 56, column: 29, scope: !4737)
!4749 = !DILocation(line: 57, column: 7, scope: !4737)
!4750 = !DILocation(line: 57, column: 15, scope: !4737)
!4751 = !{!1179, !826, i64 72}
!4752 = !DILocation(line: 57, column: 29, scope: !4737)
!4753 = !DILocation(line: 55, column: 7, scope: !4693)
!4754 = !DILocation(line: 123, column: 26, scope: !4736)
!4755 = !DILocation(line: 123, column: 19, scope: !4736)
!4756 = !DILocation(line: 0, scope: !4736)
!4757 = !DILocation(line: 124, column: 15, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4736, file: !795, line: 124, column: 11)
!4759 = !DILocation(line: 124, column: 11, scope: !4736)
!4760 = !DILocation(line: 135, column: 19, scope: !4736)
!4761 = !DILocation(line: 136, column: 12, scope: !4736)
!4762 = !DILocation(line: 136, column: 20, scope: !4736)
!4763 = !{!1179, !1117, i64 144}
!4764 = !DILocation(line: 167, column: 7, scope: !4736)
!4765 = !DILocation(line: 169, column: 10, scope: !4693)
!4766 = !DILocation(line: 169, column: 3, scope: !4693)
!4767 = !DILocation(line: 170, column: 1, scope: !4693)
!4768 = !DISubprogram(name: "fseeko", scope: !1007, file: !1007, line: 736, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!117, !4696, !286, !117}
!4771 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !688, file: !688, line: 100, type: !4772, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4775)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!119, !1653, !74, !119, !4774}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!4775 = !{!4776, !4777, !4778, !4779, !4780}
!4776 = !DILocalVariable(name: "pwc", arg: 1, scope: !4771, file: !688, line: 100, type: !1653)
!4777 = !DILocalVariable(name: "s", arg: 2, scope: !4771, file: !688, line: 100, type: !74)
!4778 = !DILocalVariable(name: "n", arg: 3, scope: !4771, file: !688, line: 100, type: !119)
!4779 = !DILocalVariable(name: "ps", arg: 4, scope: !4771, file: !688, line: 100, type: !4774)
!4780 = !DILocalVariable(name: "ret", scope: !4771, file: !688, line: 130, type: !119)
!4781 = !DILocation(line: 0, scope: !4771)
!4782 = !DILocation(line: 105, column: 9, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4771, file: !688, line: 105, column: 7)
!4784 = !DILocation(line: 105, column: 7, scope: !4771)
!4785 = !DILocation(line: 117, column: 10, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4771, file: !688, line: 117, column: 7)
!4787 = !DILocation(line: 117, column: 7, scope: !4771)
!4788 = !DILocation(line: 130, column: 16, scope: !4771)
!4789 = !DILocation(line: 135, column: 11, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4771, file: !688, line: 135, column: 7)
!4791 = !DILocation(line: 135, column: 25, scope: !4790)
!4792 = !DILocation(line: 135, column: 30, scope: !4790)
!4793 = !DILocation(line: 135, column: 7, scope: !4771)
!4794 = !DILocalVariable(name: "ps", arg: 1, scope: !4795, file: !1626, line: 1135, type: !4774)
!4795 = distinct !DISubprogram(name: "mbszero", scope: !1626, file: !1626, line: 1135, type: !4796, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4798)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{null, !4774}
!4798 = !{!4794}
!4799 = !DILocation(line: 0, scope: !4795, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 137, column: 5, scope: !4790)
!4801 = !DILocalVariable(name: "__dest", arg: 1, scope: !4802, file: !1635, line: 57, type: !116)
!4802 = distinct !DISubprogram(name: "memset", scope: !1635, file: !1635, line: 57, type: !1636, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4803)
!4803 = !{!4801, !4804, !4805}
!4804 = !DILocalVariable(name: "__ch", arg: 2, scope: !4802, file: !1635, line: 57, type: !117)
!4805 = !DILocalVariable(name: "__len", arg: 3, scope: !4802, file: !1635, line: 57, type: !119)
!4806 = !DILocation(line: 0, scope: !4802, inlinedAt: !4807)
!4807 = distinct !DILocation(line: 1137, column: 3, scope: !4795, inlinedAt: !4800)
!4808 = !DILocation(line: 59, column: 10, scope: !4802, inlinedAt: !4807)
!4809 = !DILocation(line: 137, column: 5, scope: !4790)
!4810 = !DILocation(line: 138, column: 11, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4771, file: !688, line: 138, column: 7)
!4812 = !DILocation(line: 138, column: 7, scope: !4771)
!4813 = !DILocation(line: 139, column: 5, scope: !4811)
!4814 = !DILocation(line: 143, column: 26, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4771, file: !688, line: 143, column: 7)
!4816 = !DILocation(line: 143, column: 41, scope: !4815)
!4817 = !DILocation(line: 143, column: 7, scope: !4771)
!4818 = !DILocation(line: 145, column: 15, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !688, line: 145, column: 11)
!4820 = distinct !DILexicalBlock(scope: !4815, file: !688, line: 144, column: 5)
!4821 = !DILocation(line: 145, column: 11, scope: !4820)
!4822 = !DILocation(line: 146, column: 32, scope: !4819)
!4823 = !DILocation(line: 146, column: 16, scope: !4819)
!4824 = !DILocation(line: 146, column: 14, scope: !4819)
!4825 = !DILocation(line: 146, column: 9, scope: !4819)
!4826 = !DILocation(line: 286, column: 1, scope: !4771)
!4827 = !DISubprogram(name: "mbsinit", scope: !4828, file: !4828, line: 293, type: !4829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!4828 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!117, !4831}
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!4833 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !797, file: !797, line: 27, type: !3884, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4834)
!4834 = !{!4835, !4836, !4837, !4838}
!4835 = !DILocalVariable(name: "ptr", arg: 1, scope: !4833, file: !797, line: 27, type: !116)
!4836 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4833, file: !797, line: 27, type: !119)
!4837 = !DILocalVariable(name: "size", arg: 3, scope: !4833, file: !797, line: 27, type: !119)
!4838 = !DILocalVariable(name: "nbytes", scope: !4833, file: !797, line: 29, type: !119)
!4839 = !DILocation(line: 0, scope: !4833)
!4840 = !DILocation(line: 30, column: 7, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4833, file: !797, line: 30, column: 7)
!4842 = !DILocalVariable(name: "ptr", arg: 1, scope: !4843, file: !3976, line: 2057, type: !116)
!4843 = distinct !DISubprogram(name: "rpl_realloc", scope: !3976, file: !3976, line: 2057, type: !3968, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4844)
!4844 = !{!4842, !4845}
!4845 = !DILocalVariable(name: "size", arg: 2, scope: !4843, file: !3976, line: 2057, type: !119)
!4846 = !DILocation(line: 0, scope: !4843, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 37, column: 10, scope: !4833)
!4848 = !DILocation(line: 2059, column: 24, scope: !4843, inlinedAt: !4847)
!4849 = !DILocation(line: 2059, column: 10, scope: !4843, inlinedAt: !4847)
!4850 = !DILocation(line: 37, column: 3, scope: !4833)
!4851 = !DILocation(line: 32, column: 7, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4841, file: !797, line: 31, column: 5)
!4853 = !DILocation(line: 32, column: 13, scope: !4852)
!4854 = !DILocation(line: 33, column: 7, scope: !4852)
!4855 = !DILocation(line: 38, column: 1, scope: !4833)
!4856 = distinct !DISubprogram(name: "hard_locale", scope: !706, file: !706, line: 28, type: !4857, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4859)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!247, !117}
!4859 = !{!4860, !4861}
!4860 = !DILocalVariable(name: "category", arg: 1, scope: !4856, file: !706, line: 28, type: !117)
!4861 = !DILocalVariable(name: "locale", scope: !4856, file: !706, line: 30, type: !4862)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4863)
!4863 = !{!4864}
!4864 = !DISubrange(count: 257)
!4865 = !DILocation(line: 0, scope: !4856)
!4866 = !DILocation(line: 30, column: 3, scope: !4856)
!4867 = !DILocation(line: 30, column: 8, scope: !4856)
!4868 = !DILocation(line: 32, column: 7, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4856, file: !706, line: 32, column: 7)
!4870 = !DILocation(line: 32, column: 7, scope: !4856)
!4871 = !DILocalVariable(name: "__s1", arg: 1, scope: !4872, file: !895, line: 1359, type: !74)
!4872 = distinct !DISubprogram(name: "streq", scope: !895, file: !895, line: 1359, type: !896, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4873)
!4873 = !{!4871, !4874}
!4874 = !DILocalVariable(name: "__s2", arg: 2, scope: !4872, file: !895, line: 1359, type: !74)
!4875 = !DILocation(line: 0, scope: !4872, inlinedAt: !4876)
!4876 = distinct !DILocation(line: 35, column: 9, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4856, file: !706, line: 35, column: 7)
!4878 = !DILocation(line: 1361, column: 11, scope: !4872, inlinedAt: !4876)
!4879 = !DILocation(line: 35, column: 29, scope: !4877)
!4880 = !DILocation(line: 0, scope: !4872, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 35, column: 32, scope: !4877)
!4882 = !DILocation(line: 1361, column: 11, scope: !4872, inlinedAt: !4881)
!4883 = !DILocation(line: 1361, column: 10, scope: !4872, inlinedAt: !4881)
!4884 = !DILocation(line: 35, column: 7, scope: !4856)
!4885 = !DILocation(line: 46, column: 3, scope: !4856)
!4886 = !DILocation(line: 47, column: 1, scope: !4856)
!4887 = distinct !DISubprogram(name: "setlocale_null_r", scope: !804, file: !804, line: 154, type: !4888, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4890)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!117, !117, !124, !119}
!4890 = !{!4891, !4892, !4893}
!4891 = !DILocalVariable(name: "category", arg: 1, scope: !4887, file: !804, line: 154, type: !117)
!4892 = !DILocalVariable(name: "buf", arg: 2, scope: !4887, file: !804, line: 154, type: !124)
!4893 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4887, file: !804, line: 154, type: !119)
!4894 = !DILocation(line: 0, scope: !4887)
!4895 = !DILocation(line: 159, column: 10, scope: !4887)
!4896 = !DILocation(line: 159, column: 3, scope: !4887)
!4897 = distinct !DISubprogram(name: "setlocale_null", scope: !804, file: !804, line: 186, type: !4898, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4900)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!74, !117}
!4900 = !{!4901}
!4901 = !DILocalVariable(name: "category", arg: 1, scope: !4897, file: !804, line: 186, type: !117)
!4902 = !DILocation(line: 0, scope: !4897)
!4903 = !DILocation(line: 189, column: 10, scope: !4897)
!4904 = !DILocation(line: 189, column: 3, scope: !4897)
!4905 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !806, file: !806, line: 35, type: !4898, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4906)
!4906 = !{!4907, !4908}
!4907 = !DILocalVariable(name: "category", arg: 1, scope: !4905, file: !806, line: 35, type: !117)
!4908 = !DILocalVariable(name: "result", scope: !4905, file: !806, line: 37, type: !74)
!4909 = !DILocation(line: 0, scope: !4905)
!4910 = !DILocation(line: 37, column: 24, scope: !4905)
!4911 = !DILocation(line: 62, column: 3, scope: !4905)
!4912 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !806, file: !806, line: 66, type: !4888, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4913)
!4913 = !{!4914, !4915, !4916, !4917, !4918}
!4914 = !DILocalVariable(name: "category", arg: 1, scope: !4912, file: !806, line: 66, type: !117)
!4915 = !DILocalVariable(name: "buf", arg: 2, scope: !4912, file: !806, line: 66, type: !124)
!4916 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4912, file: !806, line: 66, type: !119)
!4917 = !DILocalVariable(name: "result", scope: !4912, file: !806, line: 111, type: !74)
!4918 = !DILocalVariable(name: "length", scope: !4919, file: !806, line: 125, type: !119)
!4919 = distinct !DILexicalBlock(scope: !4920, file: !806, line: 124, column: 5)
!4920 = distinct !DILexicalBlock(scope: !4912, file: !806, line: 113, column: 7)
!4921 = !DILocation(line: 0, scope: !4912)
!4922 = !DILocation(line: 0, scope: !4905, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 111, column: 24, scope: !4912)
!4924 = !DILocation(line: 37, column: 24, scope: !4905, inlinedAt: !4923)
!4925 = !DILocation(line: 113, column: 14, scope: !4920)
!4926 = !DILocation(line: 113, column: 7, scope: !4912)
!4927 = !DILocation(line: 116, column: 19, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !806, line: 116, column: 11)
!4929 = distinct !DILexicalBlock(scope: !4920, file: !806, line: 114, column: 5)
!4930 = !DILocation(line: 116, column: 11, scope: !4929)
!4931 = !DILocation(line: 120, column: 16, scope: !4928)
!4932 = !DILocation(line: 120, column: 9, scope: !4928)
!4933 = !DILocation(line: 125, column: 23, scope: !4919)
!4934 = !DILocation(line: 0, scope: !4919)
!4935 = !DILocation(line: 126, column: 18, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4919, file: !806, line: 126, column: 11)
!4937 = !DILocation(line: 126, column: 11, scope: !4919)
!4938 = !DILocation(line: 128, column: 39, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4936, file: !806, line: 127, column: 9)
!4940 = !DILocalVariable(name: "__dest", arg: 1, scope: !4941, file: !1635, line: 26, type: !3602)
!4941 = distinct !DISubprogram(name: "memcpy", scope: !1635, file: !1635, line: 26, type: !3600, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4942)
!4942 = !{!4940, !4943, !4944}
!4943 = !DILocalVariable(name: "__src", arg: 2, scope: !4941, file: !1635, line: 26, type: !1034)
!4944 = !DILocalVariable(name: "__len", arg: 3, scope: !4941, file: !1635, line: 26, type: !119)
!4945 = !DILocation(line: 0, scope: !4941, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 128, column: 11, scope: !4939)
!4947 = !DILocation(line: 29, column: 10, scope: !4941, inlinedAt: !4946)
!4948 = !DILocation(line: 129, column: 11, scope: !4939)
!4949 = !DILocation(line: 133, column: 23, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4951, file: !806, line: 133, column: 15)
!4951 = distinct !DILexicalBlock(scope: !4936, file: !806, line: 132, column: 9)
!4952 = !DILocation(line: 133, column: 15, scope: !4951)
!4953 = !DILocation(line: 138, column: 44, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4950, file: !806, line: 134, column: 13)
!4955 = !DILocation(line: 0, scope: !4941, inlinedAt: !4956)
!4956 = distinct !DILocation(line: 138, column: 15, scope: !4954)
!4957 = !DILocation(line: 29, column: 10, scope: !4941, inlinedAt: !4956)
!4958 = !DILocation(line: 139, column: 15, scope: !4954)
!4959 = !DILocation(line: 139, column: 32, scope: !4954)
!4960 = !DILocation(line: 140, column: 13, scope: !4954)
!4961 = !DILocation(line: 0, scope: !4920)
!4962 = !DILocation(line: 145, column: 1, scope: !4912)
