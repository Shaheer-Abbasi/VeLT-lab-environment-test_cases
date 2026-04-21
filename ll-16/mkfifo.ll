; ModuleID = 'src/mkfifo.bc'
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
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [50 x i8] c"Create named pipes (FIFOs) with the given NAMEs.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [79 x i8] c"  -m, --mode=MODE\0A         set file permission bits to MODE, not a=rw - umask\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [64 x i8] c"  -Z\0A         set the SELinux security context to default type\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !44
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1, !dbg !59
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.58, i32 2, ptr null, i32 90 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !64
@optarg = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1, !dbg !115
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !120
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !125
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !130
@.str.18 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1, !dbg !134
@.str.19 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1, !dbg !139
@.str.20 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1, !dbg !144
@.str.21 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1, !dbg !149
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !154
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !159
@.str.23 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !242
@.str.24 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !247
@.str.25 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !249
@.str.26 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !251
@.str.40 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !291
@.str.41 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !293
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !295
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !300
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !305
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !310
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !315
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !317
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !319
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !321
@.str.53 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !329
@.str.54 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !331
@.str.55 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !336
@.str.56 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !341
@.str.57 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !346
@.str.58 = private unnamed_addr constant [8 x i8] c"context\00", align 1, !dbg !351
@.str.59 = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !353
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !355
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !357
@.str.17 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !369
@Version = dso_local local_unnamed_addr global ptr @.str.17, align 8, !dbg !372
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !376
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !389
@.str.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !381
@.str.1.28 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !383
@.str.2.29 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !385
@.str.3.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !387
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !391
@stderr = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !397
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !434
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !399
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !424
@.str.1.37 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !426
@.str.2.39 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !428
@.str.3.38 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !430
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !432
@.str.4.32 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !436
@.str.5.33 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !438
@.str.6.34 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !443
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !448
@.str.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !454
@.str.1.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !456
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !458
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !489
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !492
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !494
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !496
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !498
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !500
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !502
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !504
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !506
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !508
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.62, ptr @.str.1.63, ptr @.str.2.64, ptr @.str.3.65, ptr @.str.4.66, ptr @.str.5.67, ptr @.str.6.68, ptr @.str.7.69, ptr @.str.8.70, ptr @.str.9.71, ptr null], align 8, !dbg !510
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !521
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !535
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !573
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !580
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !537
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !582
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !525
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !542
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !544
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !546
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !548
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !550
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !588
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !591
@.str.2.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !593
@.str.3.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !595
@.str.4.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !597
@.str.5.85 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !599
@.str.6.86 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !604
@.str.7.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !609
@.str.8.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !611
@.str.9.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !616
@.str.10.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !621
@.str.11.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !626
@.str.12.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !631
@.str.13.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !633
@.str.14.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !635
@.str.15.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !640
@.str.16.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !645
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.101 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !650
@.str.18.102 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !652
@.str.19.103 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !654
@.str.20.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !656
@.str.21.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !658
@.str.22.106 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !660
@.str.23.107 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !662
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !664
@exit_failure = dso_local global i32 1, align 4, !dbg !672
@.str.124 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !678
@.str.1.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !681
@.str.2.123 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !683
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !685
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !688
@.str.140 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !703
@.str.1.141 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !706

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !793, metadata !DIExpression()), !dbg !794
  %2 = icmp eq i32 %0, 0, !dbg !795
  br i1 %2, label %8, label %3, !dbg !797

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !798, !tbaa !800
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !798
  %6 = load ptr, ptr @program_name, align 8, !dbg !798, !tbaa !800
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !798
  br label %37, !dbg !798

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !804
  %10 = load ptr, ptr @program_name, align 8, !dbg !804, !tbaa !800
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !804
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !806
  %13 = load ptr, ptr @stdout, align 8, !dbg !806, !tbaa !800
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !806
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !807
  %16 = load ptr, ptr @stdout, align 8, !dbg !807, !tbaa !800
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !807
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !811
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !811
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !812
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !812
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !813
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !813
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #36, !dbg !814
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !814
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #36, !dbg !815
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !815
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !816, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr poison, metadata !828, metadata !DIExpression()), !dbg !833
  tail call void @emit_bug_reporting_address() #36, !dbg !835
  %23 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !836
  call void @llvm.dbg.value(metadata ptr %23, metadata !831, metadata !DIExpression()), !dbg !833
  %24 = icmp eq ptr %23, null, !dbg !837
  br i1 %24, label %32, label %25, !dbg !839

25:                                               ; preds = %8
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #37, !dbg !840
  %27 = icmp eq i32 %26, 0, !dbg !840
  br i1 %27, label %32, label %28, !dbg !841

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #36, !dbg !842
  %30 = load ptr, ptr @stdout, align 8, !dbg !842, !tbaa !800
  %31 = tail call i32 @fputs_unlocked(ptr noundef %29, ptr noundef %30), !dbg !842
  br label %32, !dbg !844

32:                                               ; preds = %8, %25, %28
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !832, metadata !DIExpression()), !dbg !833
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #36, !dbg !845
  %34 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %33, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #36, !dbg !845
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #36, !dbg !846
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #36, !dbg !846
  br label %37

37:                                               ; preds = %32, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !847
  unreachable, !dbg !847
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !848 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !852 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !858 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !861 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !161 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !165, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %0, metadata !166, metadata !DIExpression()), !dbg !864
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !865, !tbaa !866
  %3 = icmp eq i32 %2, -1, !dbg !868
  br i1 %3, label %4, label %16, !dbg !869

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.23) #36, !dbg !870
  call void @llvm.dbg.value(metadata ptr %5, metadata !167, metadata !DIExpression()), !dbg !871
  %6 = icmp eq ptr %5, null, !dbg !872
  br i1 %6, label %14, label %7, !dbg !873

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !874, !tbaa !875
  %9 = icmp eq i8 %8, 0, !dbg !874
  br i1 %9, label %14, label %10, !dbg !876

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !877, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata ptr @.str.24, metadata !883, metadata !DIExpression()), !dbg !884
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.24) #37, !dbg !886
  %12 = icmp eq i32 %11, 0, !dbg !887
  %13 = zext i1 %12 to i32, !dbg !876
  br label %14, !dbg !876

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !888, !tbaa !866
  br label %16, !dbg !889

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !890
  %18 = icmp eq i32 %17, 0, !dbg !890
  br i1 %18, label %22, label %19, !dbg !892

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !893, !tbaa !800
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !893
  br label %122, !dbg !895

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !170, metadata !DIExpression()), !dbg !864
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.25) #37, !dbg !896
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !897
  call void @llvm.dbg.value(metadata ptr %24, metadata !172, metadata !DIExpression()), !dbg !864
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !898
  call void @llvm.dbg.value(metadata ptr %25, metadata !173, metadata !DIExpression()), !dbg !864
  %26 = icmp eq ptr %25, null, !dbg !899
  br i1 %26, label %54, label %27, !dbg !900

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !901
  br i1 %28, label %54, label %29, !dbg !902

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !174, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !903
  %30 = icmp ult ptr %24, %25, !dbg !904
  br i1 %30, label %31, label %52, !dbg !905

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !864
  %33 = load ptr, ptr %32, align 8, !tbaa !800
  br label %34, !dbg !905

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !174, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i64 %36, metadata !178, metadata !DIExpression()), !dbg !903
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !906
  call void @llvm.dbg.value(metadata ptr %37, metadata !174, metadata !DIExpression()), !dbg !903
  %38 = load i8, ptr %35, align 1, !dbg !906, !tbaa !875
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !906
  %41 = load i16, ptr %40, align 2, !dbg !906, !tbaa !907
  %42 = freeze i16 %41, !dbg !909
  %43 = lshr i16 %42, 13, !dbg !909
  %44 = and i16 %43, 1, !dbg !909
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !910
  call void @llvm.dbg.value(metadata i64 %46, metadata !178, metadata !DIExpression()), !dbg !903
  %47 = icmp ult ptr %37, %25, !dbg !904
  %48 = icmp ult i64 %46, 2, !dbg !911
  %49 = select i1 %47, i1 %48, i1 false, !dbg !911
  br i1 %49, label %34, label %50, !dbg !905, !llvm.loop !912

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !914
  br i1 %51, label %52, label %54, !dbg !916

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !916

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !864
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %55, metadata !173, metadata !DIExpression()), !dbg !864
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.26) #37, !dbg !917
  call void @llvm.dbg.value(metadata i64 %57, metadata !179, metadata !DIExpression()), !dbg !864
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !918
  call void @llvm.dbg.value(metadata ptr %58, metadata !180, metadata !DIExpression()), !dbg !864
  br label %59, !dbg !919

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !864
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %60, metadata !180, metadata !DIExpression()), !dbg !864
  %62 = load i8, ptr %60, align 1, !dbg !920, !tbaa !875
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !921

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !922
  %65 = load i8, ptr %64, align 1, !dbg !925, !tbaa !875
  %66 = icmp ne i8 %65, 45, !dbg !926
  %67 = select i1 %66, i1 %61, i1 false, !dbg !927
  br label %68, !dbg !927

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !864
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !928
  %71 = load ptr, ptr %70, align 8, !dbg !928, !tbaa !800
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !928
  %74 = load i16, ptr %73, align 2, !dbg !928, !tbaa !907
  %75 = and i16 %74, 8192, !dbg !928
  %76 = icmp eq i16 %75, 0, !dbg !928
  br i1 %76, label %90, label %77, !dbg !930

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !931
  br i1 %78, label %92, label %79, !dbg !934

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !935
  %81 = load i8, ptr %80, align 1, !dbg !935, !tbaa !875
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !935
  %84 = load i16, ptr %83, align 2, !dbg !935, !tbaa !907
  %85 = and i16 %84, 8192, !dbg !935
  %86 = icmp eq i16 %85, 0, !dbg !935
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !936
  br i1 %89, label %90, label %92, !dbg !936

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !937
  call void @llvm.dbg.value(metadata ptr %91, metadata !180, metadata !DIExpression()), !dbg !864
  br label %59, !dbg !919, !llvm.loop !938

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !940
  %94 = load ptr, ptr @stdout, align 8, !dbg !940, !tbaa !800
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !940
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !237, metadata !DIExpression()), !dbg !864
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #37, !dbg !961
  %97 = icmp eq i32 %96, 0, !dbg !961
  br i1 %97, label %101, label %98, !dbg !963

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.41, i64 noundef 9) #37, !dbg !964
  %100 = icmp eq i32 %99, 0, !dbg !964
  br i1 %100, label %101, label %104, !dbg !965

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !966
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !966
  br label %107, !dbg !968

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !969
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !969
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !800
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %108), !dbg !971
  %110 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !800
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %110), !dbg !972
  %112 = ptrtoint ptr %60 to i64, !dbg !973
  %113 = sub i64 %112, %93, !dbg !973
  %114 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !800
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !973
  %116 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !800
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %116), !dbg !974
  %118 = load ptr, ptr @stdout, align 8, !dbg !975, !tbaa !800
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %118), !dbg !975
  %120 = load ptr, ptr @stdout, align 8, !dbg !976, !tbaa !800
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !976
  br label %122, !dbg !977

122:                                              ; preds = %107, %19
  ret void, !dbg !977
}

; Function Attrs: nounwind
declare !dbg !978 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !982 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !986 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !988 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !991 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !994 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !997 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1000 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1006 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1007 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1018, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata ptr %1, metadata !1019, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata ptr null, metadata !1020, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata ptr null, metadata !1021, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata ptr null, metadata !1022, metadata !DIExpression()), !dbg !1042
  %3 = load ptr, ptr %1, align 8, !dbg !1043, !tbaa !800
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !1044
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #36, !dbg !1045
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #36, !dbg !1046
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #36, !dbg !1047
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1048
  br label %8, !dbg !1049

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !1049

10:                                               ; preds = %19, %8
  call void @llvm.dbg.value(metadata ptr %9, metadata !1020, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata ptr null, metadata !1021, metadata !DIExpression()), !dbg !1042
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %11, metadata !1026, metadata !DIExpression()), !dbg !1042
  switch i32 %11, label %25 [
    i32 -1, label %26
    i32 109, label %12
    i32 90, label %14
    i32 -2, label %20
    i32 -3, label %21
  ], !dbg !1049

12:                                               ; preds = %10
  %13 = load ptr, ptr @optarg, align 8, !dbg !1051, !tbaa !800
  call void @llvm.dbg.value(metadata ptr %13, metadata !1020, metadata !DIExpression()), !dbg !1042
  br label %8, !dbg !1054, !llvm.loop !1055

14:                                               ; preds = %10
  %15 = load ptr, ptr @optarg, align 8, !dbg !1057, !tbaa !800
  %16 = icmp eq ptr %15, null, !dbg !1057
  br i1 %16, label %19, label %17, !dbg !1061

17:                                               ; preds = %14
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !1062
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18) #36, !dbg !1062
  br label %19, !dbg !1064

19:                                               ; preds = %17, %14
  br label %10, !dbg !1042, !llvm.loop !1055

20:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #40, !dbg !1065
  unreachable, !dbg !1065

21:                                               ; preds = %10
  %22 = load ptr, ptr @stdout, align 8, !dbg !1066, !tbaa !800
  %23 = load ptr, ptr @Version, align 8, !dbg !1066, !tbaa !800
  %24 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #36, !dbg !1066
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %23, ptr noundef %24, ptr noundef null) #36, !dbg !1066
  tail call void @exit(i32 noundef 0) #38, !dbg !1066
  unreachable, !dbg !1066

25:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #40, !dbg !1067
  unreachable, !dbg !1067

26:                                               ; preds = %10
  %27 = load i32, ptr @optind, align 4, !dbg !1068, !tbaa !866
  %28 = icmp eq i32 %27, %0, !dbg !1070
  br i1 %28, label %29, label %31, !dbg !1071

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #36, !dbg !1072
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #36, !dbg !1072
  tail call void @usage(i32 noundef 1) #40, !dbg !1074
  unreachable, !dbg !1074

31:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 438, metadata !1030, metadata !DIExpression()), !dbg !1042
  %32 = icmp eq ptr %9, null, !dbg !1075
  br i1 %32, label %47, label %33, !dbg !1076

33:                                               ; preds = %31
  %34 = tail call noalias ptr @mode_compile(ptr noundef nonnull %9) #36, !dbg !1077
  call void @llvm.dbg.value(metadata ptr %34, metadata !1034, metadata !DIExpression()), !dbg !1078
  %35 = icmp eq ptr %34, null, !dbg !1079
  br i1 %35, label %36, label %38, !dbg !1081

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #36, !dbg !1082
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %37) #36, !dbg !1082
  unreachable, !dbg !1082

38:                                               ; preds = %33
  %39 = tail call i32 @umask(i32 noundef 0) #36, !dbg !1083
  call void @llvm.dbg.value(metadata i32 %39, metadata !1040, metadata !DIExpression()), !dbg !1078
  %40 = tail call i32 @umask(i32 noundef %39) #36, !dbg !1084
  %41 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef false, i32 noundef %39, ptr noundef nonnull %34, ptr noundef null) #37, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %41, metadata !1030, metadata !DIExpression()), !dbg !1042
  tail call void @free(ptr noundef nonnull %34) #36, !dbg !1086
  %42 = icmp ult i32 %41, 512, !dbg !1087
  br i1 %42, label %43, label %45, !dbg !1089

43:                                               ; preds = %38
  %44 = load i32, ptr @optind, align 4, !dbg !1090, !tbaa !866
  br label %47, !dbg !1089

45:                                               ; preds = %38
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !1093
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #36, !dbg !1093
  unreachable, !dbg !1093

47:                                               ; preds = %43, %31
  %48 = phi i32 [ %27, %31 ], [ %44, %43 ], !dbg !1090
  %49 = phi i32 [ 438, %31 ], [ %41, %43 ], !dbg !1042
  call void @llvm.dbg.value(metadata i32 %49, metadata !1030, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i32 0, metadata !1041, metadata !DIExpression()), !dbg !1042
  %50 = icmp slt i32 %48, %0, !dbg !1094
  br i1 %50, label %51, label %82, !dbg !1095

51:                                               ; preds = %47, %77
  %52 = phi i32 [ %80, %77 ], [ %48, %47 ]
  %53 = phi i32 [ %78, %77 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !1041, metadata !DIExpression()), !dbg !1042
  %54 = sext i32 %52 to i64, !dbg !1096
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1096
  %56 = load ptr, ptr %55, align 8, !dbg !1096, !tbaa !800
  %57 = tail call i32 @mkfifo(ptr noundef %56, i32 noundef %49) #36, !dbg !1099
  %58 = icmp eq i32 %57, 0, !dbg !1100
  br i1 %58, label %59, label %67, !dbg !1101

59:                                               ; preds = %51
  br i1 %32, label %77, label %60, !dbg !1102

60:                                               ; preds = %59
  %61 = load i32, ptr @optind, align 4, !dbg !1104, !tbaa !866
  %62 = sext i32 %61 to i64, !dbg !1105
  %63 = getelementptr inbounds ptr, ptr %1, i64 %62, !dbg !1105
  %64 = load ptr, ptr %63, align 8, !dbg !1105, !tbaa !800
  %65 = tail call i32 @lchmod(ptr noundef %64, i32 noundef %49) #36, !dbg !1106
  %66 = icmp eq i32 %65, 0, !dbg !1107
  br i1 %66, label %77, label %67, !dbg !1108

67:                                               ; preds = %60, %51
  %68 = phi ptr [ @.str.20, %51 ], [ @.str.21, %60 ]
  %69 = tail call ptr @__errno_location() #39, !dbg !1109
  %70 = load i32, ptr %69, align 4, !dbg !1109, !tbaa !866
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %68, i32 noundef 5) #36, !dbg !1109
  %72 = load i32, ptr @optind, align 4, !dbg !1109, !tbaa !866
  %73 = sext i32 %72 to i64, !dbg !1109
  %74 = getelementptr inbounds ptr, ptr %1, i64 %73, !dbg !1109
  %75 = load ptr, ptr %74, align 8, !dbg !1109, !tbaa !800
  %76 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %75) #36, !dbg !1109
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %70, ptr noundef %71, ptr noundef %76) #36, !dbg !1109
  br label %77, !dbg !1110

77:                                               ; preds = %67, %60, %59
  %78 = phi i32 [ %53, %60 ], [ %53, %59 ], [ 1, %67 ], !dbg !1042
  call void @llvm.dbg.value(metadata i32 %78, metadata !1041, metadata !DIExpression()), !dbg !1042
  %79 = load i32, ptr @optind, align 4, !dbg !1110, !tbaa !866
  %80 = add nsw i32 %79, 1, !dbg !1110
  store i32 %80, ptr @optind, align 4, !dbg !1110, !tbaa !866
  %81 = icmp slt i32 %80, %0, !dbg !1094
  br i1 %81, label %51, label %82, !dbg !1095, !llvm.loop !1111

82:                                               ; preds = %77, %47
  %83 = phi i32 [ 0, %47 ], [ %78, %77 ], !dbg !1042
  ret i32 %83, !dbg !1113
}

; Function Attrs: nounwind
declare !dbg !1114 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1117 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1118 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1121 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1127 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1131 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1134 i32 @mkfifo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1137 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1138 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1142 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1144, metadata !DIExpression()), !dbg !1145
  store ptr %0, ptr @file_name, align 8, !dbg !1146, !tbaa !800
  ret void, !dbg !1147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #12 !dbg !1148 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1152, metadata !DIExpression()), !dbg !1153
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1154, !tbaa !1155
  ret void, !dbg !1157
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1158 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1163, !tbaa !800
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1164
  %3 = icmp eq i32 %2, 0, !dbg !1165
  br i1 %3, label %22, label %4, !dbg !1166

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1167, !tbaa !1155, !range !1168, !noundef !809
  %6 = icmp eq i8 %5, 0, !dbg !1167
  br i1 %6, label %11, label %7, !dbg !1169

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1170
  %9 = load i32, ptr %8, align 4, !dbg !1170, !tbaa !866
  %10 = icmp eq i32 %9, 32, !dbg !1171
  br i1 %10, label %22, label %11, !dbg !1172

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1.28, i32 noundef 5) #36, !dbg !1173
  call void @llvm.dbg.value(metadata ptr %12, metadata !1160, metadata !DIExpression()), !dbg !1174
  %13 = load ptr, ptr @file_name, align 8, !dbg !1175, !tbaa !800
  %14 = icmp eq ptr %13, null, !dbg !1175
  %15 = tail call ptr @__errno_location() #39, !dbg !1177
  %16 = load i32, ptr %15, align 4, !dbg !1177, !tbaa !866
  br i1 %14, label %19, label %17, !dbg !1178

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1179
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.29, ptr noundef %18, ptr noundef %12) #36, !dbg !1179
  br label %20, !dbg !1179

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.30, ptr noundef %12) #36, !dbg !1180
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1181, !tbaa !866
  tail call void @_exit(i32 noundef %21) #38, !dbg !1182
  unreachable, !dbg !1182

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1183, !tbaa !800
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1185
  %25 = icmp eq i32 %24, 0, !dbg !1186
  br i1 %25, label %28, label %26, !dbg !1187

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1188, !tbaa !866
  tail call void @_exit(i32 noundef %27) #38, !dbg !1189
  unreachable, !dbg !1189

28:                                               ; preds = %22
  ret void, !dbg !1190
}

; Function Attrs: noreturn
declare !dbg !1191 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #14 !dbg !1193 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1197, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 %1, metadata !1198, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %2, metadata !1199, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1200, metadata !DIExpression()), !dbg !1202
  tail call fastcc void @flush_stdout(), !dbg !1203
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1204, !tbaa !800
  %7 = icmp eq ptr %6, null, !dbg !1204
  br i1 %7, label %9, label %8, !dbg !1206

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1207
  br label %13, !dbg !1207

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1208, !tbaa !800
  %11 = tail call ptr @getprogname() #37, !dbg !1208
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef %11) #36, !dbg !1208
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1210, !tbaa.struct !1211
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1210
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1210
  ret void, !dbg !1212
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1213 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1215, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 1, metadata !1217, metadata !DIExpression()), !dbg !1222
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1225
  %2 = icmp slt i32 %1, 0, !dbg !1226
  br i1 %2, label %6, label %3, !dbg !1227

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1228, !tbaa !800
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1228
  br label %6, !dbg !1228

6:                                                ; preds = %3, %0
  ret void, !dbg !1229
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1230 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1232, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i32 %1, metadata !1233, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %2, metadata !1234, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1235, metadata !DIExpression()), !dbg !1237
  %7 = load ptr, ptr @stderr, align 8, !dbg !1238, !tbaa !800
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1239, !noalias !1283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1287
  call void @llvm.dbg.value(metadata ptr %7, metadata !1279, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata ptr %2, metadata !1280, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1281, metadata !DIExpression()), !dbg !1289
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1239, !noalias !1283
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1290, !tbaa !866
  %10 = add i32 %9, 1, !dbg !1290
  store i32 %10, ptr @error_message_count, align 4, !dbg !1290, !tbaa !866
  %11 = icmp eq i32 %1, 0, !dbg !1291
  br i1 %11, label %21, label %12, !dbg !1293

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1294, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1304
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1298, metadata !DIExpression()), !dbg !1305
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1306
  call void @llvm.dbg.value(metadata ptr %13, metadata !1297, metadata !DIExpression()), !dbg !1302
  %14 = icmp eq ptr %13, null, !dbg !1307
  br i1 %14, label %15, label %17, !dbg !1309

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.32, ptr noundef nonnull @.str.5.33, i32 noundef 5) #36, !dbg !1310
  call void @llvm.dbg.value(metadata ptr %16, metadata !1297, metadata !DIExpression()), !dbg !1302
  br label %17, !dbg !1311

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1302
  call void @llvm.dbg.value(metadata ptr %18, metadata !1297, metadata !DIExpression()), !dbg !1302
  %19 = load ptr, ptr @stderr, align 8, !dbg !1312, !tbaa !800
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.34, ptr noundef %18) #36, !dbg !1312
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1313
  br label %21, !dbg !1314

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1315, !tbaa !800
  call void @llvm.dbg.value(metadata i32 10, metadata !1316, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata ptr %22, metadata !1322, metadata !DIExpression()), !dbg !1323
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1325
  %24 = load ptr, ptr %23, align 8, !dbg !1325, !tbaa !1326
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1325
  %26 = load ptr, ptr %25, align 8, !dbg !1325, !tbaa !1329
  %27 = icmp ult ptr %24, %26, !dbg !1325
  br i1 %27, label %30, label %28, !dbg !1325, !prof !1330

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1325
  br label %32, !dbg !1325

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1325
  store ptr %31, ptr %23, align 8, !dbg !1325, !tbaa !1326
  store i8 10, ptr %24, align 1, !dbg !1325, !tbaa !875
  br label %32, !dbg !1325

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1331, !tbaa !800
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1331
  %35 = icmp eq i32 %0, 0, !dbg !1332
  br i1 %35, label %37, label %36, !dbg !1334

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1335
  unreachable, !dbg !1335

37:                                               ; preds = %32
  ret void, !dbg !1336
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

declare !dbg !1337 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1340 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1343 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1346 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1349 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1353 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1357, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i32 %1, metadata !1358, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata ptr %2, metadata !1359, metadata !DIExpression()), !dbg !1361
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1360, metadata !DIExpression()), !dbg !1363
  call void @llvm.va_start(ptr nonnull %4), !dbg !1364
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1365, !tbaa.struct !1211
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1365
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1365
  call void @llvm.va_end(ptr nonnull %4), !dbg !1366
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1367
  ret void, !dbg !1367
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #14 !dbg !401 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !418, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %1, metadata !419, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %2, metadata !420, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %3, metadata !421, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %4, metadata !422, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %5, metadata !423, metadata !DIExpression()), !dbg !1369
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1370, !tbaa !866
  %9 = icmp eq i32 %8, 0, !dbg !1370
  br i1 %9, label %24, label %10, !dbg !1372

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1373, !tbaa !866
  %12 = icmp eq i32 %11, %3, !dbg !1376
  br i1 %12, label %13, label %23, !dbg !1377

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1378, !tbaa !800
  %15 = icmp eq ptr %14, %2, !dbg !1379
  br i1 %15, label %37, label %16, !dbg !1380

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1381
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1382
  br i1 %19, label %20, label %23, !dbg !1382

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1383
  %22 = icmp eq i32 %21, 0, !dbg !1384
  br i1 %22, label %37, label %23, !dbg !1385

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1386, !tbaa !800
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1387, !tbaa !866
  br label %24, !dbg !1388

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1389
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1390, !tbaa !800
  %26 = icmp eq ptr %25, null, !dbg !1390
  br i1 %26, label %28, label %27, !dbg !1392

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1393
  br label %32, !dbg !1393

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1394, !tbaa !800
  %30 = tail call ptr @getprogname() #37, !dbg !1394
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.37, ptr noundef %30) #36, !dbg !1394
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1396, !tbaa !800
  %34 = icmp eq ptr %2, null, !dbg !1396
  %35 = select i1 %34, ptr @.str.3.38, ptr @.str.2.39, !dbg !1396
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1396
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1397, !tbaa.struct !1211
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1397
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1397
  br label %37, !dbg !1398

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1398
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1399 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1403, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i32 %1, metadata !1404, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata ptr %2, metadata !1405, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i32 %3, metadata !1406, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata ptr %4, metadata !1407, metadata !DIExpression()), !dbg !1409
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1410
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1408, metadata !DIExpression()), !dbg !1411
  call void @llvm.va_start(ptr nonnull %6), !dbg !1412
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1413, !tbaa.struct !1211
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1413
  call void @llvm.va_end(ptr nonnull %6), !dbg !1414
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1415
  ret void, !dbg !1415
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1416 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1419, !tbaa !800
  ret ptr %1, !dbg !1420
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !1421 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1433, metadata !DIExpression()), !dbg !1463
  %2 = load i8, ptr %0, align 1, !dbg !1464, !tbaa !875
  %3 = and i8 %2, -8, !dbg !1465
  %4 = icmp eq i8 %3, 48, !dbg !1465
  br i1 %4, label %5, label %34, !dbg !1465

5:                                                ; preds = %1, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %1 ], !dbg !1466
  %7 = phi i32 [ %12, %14 ], [ 0, %1 ], !dbg !1468
  %8 = phi ptr [ %15, %14 ], [ %0, %1 ], !dbg !1468
  call void @llvm.dbg.value(metadata ptr %8, metadata !1434, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %7, metadata !1437, metadata !DIExpression()), !dbg !1468
  %9 = shl i32 %7, 3, !dbg !1469
  call void @llvm.dbg.value(metadata ptr %8, metadata !1434, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1468
  %10 = zext i8 %6 to i32, !dbg !1466
  %11 = add i32 %9, -48, !dbg !1470
  %12 = add i32 %11, %10, !dbg !1471
  call void @llvm.dbg.value(metadata i32 %12, metadata !1437, metadata !DIExpression()), !dbg !1468
  %13 = icmp ugt i32 %12, 4095, !dbg !1472
  br i1 %13, label %139, label %14, !dbg !1474

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1475
  call void @llvm.dbg.value(metadata ptr %15, metadata !1434, metadata !DIExpression()), !dbg !1468
  %16 = load i8, ptr %15, align 1, !dbg !1476, !tbaa !875
  %17 = and i8 %16, -8, !dbg !1477
  %18 = icmp eq i8 %17, 48, !dbg !1477
  br i1 %18, label %5, label %19, !dbg !1477, !llvm.loop !1478

19:                                               ; preds = %14
  %20 = icmp eq i8 %16, 0, !dbg !1481
  br i1 %20, label %21, label %139, !dbg !1483

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %12, metadata !1438, metadata !DIExpression()), !dbg !1468
  %22 = ptrtoint ptr %15 to i64, !dbg !1484
  %23 = ptrtoint ptr %0 to i64, !dbg !1484
  %24 = sub i64 %22, %23, !dbg !1484
  %25 = icmp slt i64 %24, 5, !dbg !1485
  %26 = or i32 %12, 1023, !dbg !1486
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %27, metadata !1439, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %12, metadata !1487, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %27, metadata !1492, metadata !DIExpression()), !dbg !1494
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #42, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %28, metadata !1493, metadata !DIExpression()), !dbg !1494
  store i8 61, ptr %28, align 4, !dbg !1497, !tbaa !1498
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !1500
  store i8 1, ptr %29, align 1, !dbg !1501, !tbaa !1502
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !1503
  store i32 4095, ptr %30, align 4, !dbg !1504, !tbaa !1505
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !1506
  store i32 %12, ptr %31, align 4, !dbg !1507, !tbaa !1508
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !1509
  store i32 %27, ptr %32, align 4, !dbg !1510, !tbaa !1511
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !1512
  store i8 0, ptr %33, align 1, !dbg !1513, !tbaa !1502
  br label %139, !dbg !1514

34:                                               ; preds = %1, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %1 ], !dbg !1515
  %36 = phi i64 [ %43, %41 ], [ 1, %1 ], !dbg !1517
  %37 = phi ptr [ %44, %41 ], [ %0, %1 ], !dbg !1518
  call void @llvm.dbg.value(metadata ptr %37, metadata !1443, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i64 %36, metadata !1441, metadata !DIExpression()), !dbg !1517
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !1520

38:                                               ; preds = %34
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 16) #43, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %39, metadata !1440, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 0, metadata !1445, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata ptr %0, metadata !1446, metadata !DIExpression()), !dbg !1463
  br label %46, !dbg !1522

40:                                               ; preds = %34
  br label %41, !dbg !1523

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %43, metadata !1441, metadata !DIExpression()), !dbg !1517
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %44, metadata !1443, metadata !DIExpression()), !dbg !1519
  %45 = load i8, ptr %44, align 1, !dbg !1515, !tbaa !875
  br label %34, !dbg !1526, !llvm.loop !1527

46:                                               ; preds = %134, %38
  %47 = phi i64 [ 0, %38 ], [ %122, %134 ], !dbg !1529
  %48 = phi ptr [ %0, %38 ], [ %135, %134 ], !dbg !1530
  call void @llvm.dbg.value(metadata i32 poison, metadata !1453, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %48, metadata !1446, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %47, metadata !1445, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i32 0, metadata !1447, metadata !DIExpression()), !dbg !1532
  br label %49, !dbg !1533

49:                                               ; preds = %60, %46
  %50 = phi ptr [ %48, %46 ], [ %62, %60 ], !dbg !1534
  %51 = phi i32 [ 0, %46 ], [ %61, %60 ], !dbg !1532
  call void @llvm.dbg.value(metadata i32 %51, metadata !1447, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %50, metadata !1446, metadata !DIExpression()), !dbg !1463
  %52 = load i8, ptr %50, align 1, !dbg !1535, !tbaa !875
  switch i8 %52, label %138 [
    i8 117, label %54
    i8 103, label %56
    i8 111, label %58
    i8 97, label %60
    i8 61, label %53
    i8 43, label %53
    i8 45, label %53
  ], !dbg !1538

53:                                               ; preds = %49, %49, %49
  br label %63, !dbg !1539

54:                                               ; preds = %49
  %55 = or i32 %51, 2496, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %55, metadata !1447, metadata !DIExpression()), !dbg !1532
  br label %60, !dbg !1542

56:                                               ; preds = %49
  %57 = or i32 %51, 1080, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %57, metadata !1447, metadata !DIExpression()), !dbg !1532
  br label %60, !dbg !1544

58:                                               ; preds = %49
  %59 = or i32 %51, 519, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %59, metadata !1447, metadata !DIExpression()), !dbg !1532
  br label %60, !dbg !1546

60:                                               ; preds = %49, %54, %56, %58
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ 4095, %49 ], !dbg !1547
  call void @llvm.dbg.value(metadata i32 %61, metadata !1447, metadata !DIExpression()), !dbg !1532
  %62 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %62, metadata !1446, metadata !DIExpression()), !dbg !1463
  br label %49, !dbg !1549, !llvm.loop !1550

63:                                               ; preds = %133, %53
  %64 = phi i8 [ %52, %53 ], [ %132, %133 ], !dbg !1553
  %65 = phi i64 [ %47, %53 ], [ %122, %133 ], !dbg !1463
  %66 = phi ptr [ %50, %53 ], [ %115, %133 ], !dbg !1534
  %67 = phi i32 [ %51, %53 ], [ %121, %133 ], !dbg !1554
  call void @llvm.dbg.value(metadata i32 poison, metadata !1453, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %67, metadata !1447, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %66, metadata !1446, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %65, metadata !1445, metadata !DIExpression()), !dbg !1463
  %68 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %68, metadata !1446, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i8 %64, metadata !1451, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32 0, metadata !1454, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 3, metadata !1455, metadata !DIExpression()), !dbg !1531
  %69 = load i8, ptr %68, align 1, !dbg !1556, !tbaa !875
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
  ], !dbg !1539

70:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %71, !dbg !1557

71:                                               ; preds = %70, %80
  %72 = phi i8 [ %82, %80 ], [ %69, %70 ], !dbg !1558
  %73 = phi ptr [ %81, %80 ], [ %68, %70 ], !dbg !1531
  %74 = phi i32 [ %78, %80 ], [ 0, %70 ], !dbg !1560
  call void @llvm.dbg.value(metadata i32 %74, metadata !1456, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %73, metadata !1446, metadata !DIExpression()), !dbg !1463
  %75 = shl i32 %74, 3, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %73, metadata !1446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1463
  %76 = zext i8 %72 to i32, !dbg !1558
  %77 = add i32 %75, -48, !dbg !1562
  %78 = add i32 %77, %76, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %78, metadata !1456, metadata !DIExpression()), !dbg !1560
  %79 = icmp ugt i32 %78, 4095, !dbg !1564
  br i1 %79, label %138, label %80, !dbg !1566

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %81, metadata !1446, metadata !DIExpression()), !dbg !1463
  %82 = load i8, ptr %81, align 1, !dbg !1568, !tbaa !875
  %83 = and i8 %82, -8, !dbg !1569
  %84 = icmp eq i8 %83, 48, !dbg !1569
  br i1 %84, label %71, label %85, !dbg !1569, !llvm.loop !1570

85:                                               ; preds = %80
  %86 = icmp eq i32 %67, 0, !dbg !1572
  br i1 %86, label %87, label %138, !dbg !1574

87:                                               ; preds = %85
  switch i8 %82, label %138 [
    i8 0, label %114
    i8 44, label %114
  ], !dbg !1575

88:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 448, metadata !1453, metadata !DIExpression()), !dbg !1531
  %89 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %89, metadata !1446, metadata !DIExpression()), !dbg !1463
  br label %114, !dbg !1577

90:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 56, metadata !1453, metadata !DIExpression()), !dbg !1531
  %91 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1578
  call void @llvm.dbg.value(metadata ptr %91, metadata !1446, metadata !DIExpression()), !dbg !1463
  br label %114, !dbg !1579

92:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 7, metadata !1453, metadata !DIExpression()), !dbg !1531
  %93 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1580
  call void @llvm.dbg.value(metadata ptr %93, metadata !1446, metadata !DIExpression()), !dbg !1463
  br label %114, !dbg !1581

94:                                               ; preds = %63, %109
  %95 = phi i8 [ %113, %109 ], [ %69, %63 ], !dbg !1582
  %96 = phi ptr [ %112, %109 ], [ %68, %63 ], !dbg !1531
  %97 = phi i32 [ %110, %109 ], [ 0, %63 ], !dbg !1585
  %98 = phi i8 [ %111, %109 ], [ 1, %63 ], !dbg !1586
  call void @llvm.dbg.value(metadata i8 %98, metadata !1455, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %97, metadata !1453, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %96, metadata !1446, metadata !DIExpression()), !dbg !1463
  switch i8 %95, label %114 [
    i8 114, label %99
    i8 119, label %101
    i8 120, label %103
    i8 88, label %109
    i8 115, label %105
    i8 116, label %107
  ], !dbg !1587

99:                                               ; preds = %94
  %100 = or i32 %97, 292, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %100, metadata !1453, metadata !DIExpression()), !dbg !1531
  br label %109, !dbg !1590

101:                                              ; preds = %94
  %102 = or i32 %97, 146, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %102, metadata !1453, metadata !DIExpression()), !dbg !1531
  br label %109, !dbg !1592

103:                                              ; preds = %94
  %104 = or i32 %97, 73, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %104, metadata !1453, metadata !DIExpression()), !dbg !1531
  br label %109, !dbg !1594

105:                                              ; preds = %94
  %106 = or i32 %97, 3072, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %106, metadata !1453, metadata !DIExpression()), !dbg !1531
  br label %109, !dbg !1596

107:                                              ; preds = %94
  %108 = or i32 %97, 512, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %108, metadata !1453, metadata !DIExpression()), !dbg !1531
  br label %109, !dbg !1598

109:                                              ; preds = %94, %99, %101, %103, %105, %107
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %97, %94 ], !dbg !1585
  %111 = phi i8 [ %98, %107 ], [ %98, %105 ], [ %98, %103 ], [ %98, %101 ], [ %98, %99 ], [ 2, %94 ], !dbg !1585
  call void @llvm.dbg.value(metadata i8 %111, metadata !1455, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %110, metadata !1453, metadata !DIExpression()), !dbg !1531
  %112 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1599
  call void @llvm.dbg.value(metadata ptr %112, metadata !1446, metadata !DIExpression()), !dbg !1463
  %113 = load i8, ptr %112, align 1, !dbg !1582, !tbaa !875
  br label %94, !dbg !1600, !llvm.loop !1601

114:                                              ; preds = %94, %87, %87, %92, %90, %88
  %115 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %81, %87 ], [ %81, %87 ], [ %96, %94 ], !dbg !1531
  %116 = phi i32 [ %67, %92 ], [ %67, %90 ], [ %67, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ %67, %94 ], !dbg !1554
  %117 = phi i32 [ 7, %92 ], [ 56, %90 ], [ 448, %88 ], [ %78, %87 ], [ %78, %87 ], [ %97, %94 ]
  %118 = phi i1 [ true, %92 ], [ true, %90 ], [ true, %88 ], [ false, %87 ], [ false, %87 ], [ true, %94 ], !dbg !1604
  %119 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ 0, %94 ], !dbg !1604
  %120 = phi i8 [ 3, %92 ], [ 3, %90 ], [ 3, %88 ], [ 1, %87 ], [ 1, %87 ], [ %98, %94 ], !dbg !1531
  %121 = freeze i32 %116, !dbg !1605
  call void @llvm.dbg.value(metadata i8 %120, metadata !1455, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %119, metadata !1454, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %117, metadata !1453, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %116, metadata !1447, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %115, metadata !1446, metadata !DIExpression()), !dbg !1463
  %122 = add i64 %65, 1, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %122, metadata !1445, metadata !DIExpression()), !dbg !1463
  %123 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, !dbg !1607
  call void @llvm.dbg.value(metadata ptr %123, metadata !1459, metadata !DIExpression()), !dbg !1531
  store i8 %64, ptr %123, align 4, !dbg !1608, !tbaa !1498
  %124 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 1, !dbg !1609
  store i8 %120, ptr %124, align 1, !dbg !1610, !tbaa !1502
  %125 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 2, !dbg !1611
  store i32 %121, ptr %125, align 4, !dbg !1612, !tbaa !1505
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 3, !dbg !1613
  store i32 %117, ptr %126, align 4, !dbg !1614, !tbaa !1508
  %127 = icmp eq i32 %121, 0, !dbg !1605
  %128 = select i1 %127, i32 -1, i32 %121, !dbg !1605
  %129 = and i32 %128, %117, !dbg !1605
  %130 = select i1 %118, i32 %129, i32 %119, !dbg !1605
  %131 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 4, !dbg !1615
  store i32 %130, ptr %131, align 4, !dbg !1616, !tbaa !1511
  %132 = load i8, ptr %115, align 1, !dbg !1617, !tbaa !875
  switch i8 %132, label %138 [
    i8 61, label %133
    i8 43, label %133
    i8 45, label %133
    i8 44, label %134
    i8 0, label %136
  ], !dbg !1618

133:                                              ; preds = %114, %114, %114
  br label %63, !dbg !1531

134:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 poison, metadata !1453, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %115, metadata !1446, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %122, metadata !1445, metadata !DIExpression()), !dbg !1463
  %135 = getelementptr inbounds i8, ptr %115, i64 1, !dbg !1619
  call void @llvm.dbg.value(metadata ptr %135, metadata !1446, metadata !DIExpression()), !dbg !1463
  br label %46, !dbg !1620, !llvm.loop !1621

136:                                              ; preds = %114
  %137 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %122, i32 1, !dbg !1624
  store i8 0, ptr %137, align 1, !dbg !1627, !tbaa !1502
  br label %139, !dbg !1628

138:                                              ; preds = %49, %85, %87, %114, %71
  call void @llvm.dbg.label(metadata !1462), !dbg !1629
  tail call void @free(ptr noundef nonnull %39) #36, !dbg !1630
  br label %139, !dbg !1631

139:                                              ; preds = %5, %136, %138, %21, %19
  %140 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %138 ], [ %39, %136 ], [ null, %5 ]
  ret ptr %140, !dbg !1632
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !1633 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1635, metadata !DIExpression()), !dbg !1671
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #36, !dbg !1672
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1636, metadata !DIExpression()), !dbg !1673
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #36, !dbg !1674
  %4 = icmp eq i32 %3, 0, !dbg !1676
  br i1 %4, label %5, label %14, !dbg !1677

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1678
  %7 = load i32, ptr %6, align 8, !dbg !1678, !tbaa !1679
  call void @llvm.dbg.value(metadata i32 %7, metadata !1487, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 4095, metadata !1492, metadata !DIExpression()), !dbg !1682
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #42, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %8, metadata !1493, metadata !DIExpression()), !dbg !1682
  store i8 61, ptr %8, align 4, !dbg !1685, !tbaa !1498
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !1686
  store i8 1, ptr %9, align 1, !dbg !1687, !tbaa !1502
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !1688
  store i32 4095, ptr %10, align 4, !dbg !1689, !tbaa !1505
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !1690
  store i32 %7, ptr %11, align 4, !dbg !1691, !tbaa !1508
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !1692
  store i32 4095, ptr %12, align 4, !dbg !1693, !tbaa !1511
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !1694
  store i8 0, ptr %13, align 1, !dbg !1695, !tbaa !1502
  br label %14, !dbg !1696

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !1671
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #36, !dbg !1697
  ret ptr %15, !dbg !1697
}

; Function Attrs: nofree nounwind
declare !dbg !1698 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #19 !dbg !1703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1710, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i1 %1, metadata !1711, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1726
  call void @llvm.dbg.value(metadata i32 %2, metadata !1712, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata ptr %3, metadata !1713, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata ptr %4, metadata !1714, metadata !DIExpression()), !dbg !1726
  %6 = and i32 %0, 4095, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %6, metadata !1715, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i32 0, metadata !1716, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata ptr %3, metadata !1713, metadata !DIExpression()), !dbg !1726
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !1728
  %8 = load i8, ptr %7, align 1, !dbg !1728, !tbaa !1502
  %9 = icmp eq i8 %8, 0, !dbg !1729
  br i1 %9, label %78, label %10, !dbg !1730

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1730

14:                                               ; preds = %10, %71
  %15 = phi i8 [ %8, %10 ], [ %76, %71 ]
  %16 = phi ptr [ %3, %10 ], [ %74, %71 ]
  %17 = phi i32 [ %6, %10 ], [ %73, %71 ]
  %18 = phi i32 [ 0, %10 ], [ %72, %71 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !1713, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i32 %17, metadata !1715, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i32 %18, metadata !1716, metadata !DIExpression()), !dbg !1726
  %19 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !1731
  %20 = load i32, ptr %19, align 4, !dbg !1731, !tbaa !1505
  call void @llvm.dbg.value(metadata i32 %20, metadata !1717, metadata !DIExpression()), !dbg !1732
  %21 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !1733
  %22 = load i32, ptr %21, align 4, !dbg !1733, !tbaa !1511
  %23 = xor i32 %22, -1, !dbg !1734
  %24 = and i32 %11, %23, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %24, metadata !1721, metadata !DIExpression()), !dbg !1732
  %25 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !1736
  %26 = load i32, ptr %25, align 4, !dbg !1736, !tbaa !1508
  call void @llvm.dbg.value(metadata i32 %26, metadata !1722, metadata !DIExpression()), !dbg !1732
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1737

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %28, metadata !1722, metadata !DIExpression()), !dbg !1732
  %29 = and i32 %28, 292, !dbg !1740
  %30 = icmp eq i32 %29, 0, !dbg !1741
  %31 = select i1 %30, i32 0, i32 292, !dbg !1741
  %32 = and i32 %28, 146, !dbg !1742
  %33 = icmp eq i32 %32, 0, !dbg !1743
  %34 = select i1 %33, i32 0, i32 146, !dbg !1743
  %35 = and i32 %28, 73, !dbg !1744
  %36 = icmp eq i32 %35, 0, !dbg !1745
  %37 = select i1 %36, i32 0, i32 73, !dbg !1745
  %38 = or i32 %34, %31, !dbg !1746
  %39 = or i32 %38, %37, !dbg !1747
  %40 = or i32 %39, %28, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %40, metadata !1722, metadata !DIExpression()), !dbg !1732
  br label %47, !dbg !1748

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1749
  %43 = or i32 %42, %12, !dbg !1751
  %44 = icmp eq i32 %43, 0, !dbg !1751
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1752
  br label %47, !dbg !1752

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1732
  call void @llvm.dbg.value(metadata i32 %48, metadata !1722, metadata !DIExpression()), !dbg !1732
  %49 = icmp eq i32 %20, 0, !dbg !1753
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1753
  %51 = xor i32 %24, -1, !dbg !1754
  %52 = and i32 %50, %51, !dbg !1755
  %53 = and i32 %52, %48, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %53, metadata !1722, metadata !DIExpression()), !dbg !1732
  %54 = load i8, ptr %16, align 4, !dbg !1757, !tbaa !1498
  switch i8 %54, label %71 [
    i8 61, label %55
    i8 43, label %64
    i8 45, label %67
  ], !dbg !1758

55:                                               ; preds = %47
  %56 = xor i32 %20, -1, !dbg !1759
  %57 = select i1 %49, i32 0, i32 %56, !dbg !1759
  %58 = or i32 %57, %24, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %58, metadata !1723, metadata !DIExpression()), !dbg !1761
  %59 = and i32 %58, 4095, !dbg !1762
  %60 = xor i32 %59, 4095, !dbg !1762
  %61 = or i32 %60, %18, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %61, metadata !1716, metadata !DIExpression()), !dbg !1726
  %62 = and i32 %58, %17, !dbg !1764
  %63 = or i32 %53, %62, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %63, metadata !1715, metadata !DIExpression()), !dbg !1726
  br label %71

64:                                               ; preds = %47
  %65 = or i32 %53, %18, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %65, metadata !1716, metadata !DIExpression()), !dbg !1726
  %66 = or i32 %53, %17, !dbg !1767
  call void @llvm.dbg.value(metadata i32 %66, metadata !1715, metadata !DIExpression()), !dbg !1726
  br label %71, !dbg !1768

67:                                               ; preds = %47
  %68 = or i32 %53, %18, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %68, metadata !1716, metadata !DIExpression()), !dbg !1726
  %69 = xor i32 %53, -1, !dbg !1770
  %70 = and i32 %17, %69, !dbg !1771
  call void @llvm.dbg.value(metadata i32 %70, metadata !1715, metadata !DIExpression()), !dbg !1726
  br label %71, !dbg !1772

71:                                               ; preds = %47, %67, %64, %55
  %72 = phi i32 [ %18, %47 ], [ %68, %67 ], [ %65, %64 ], [ %61, %55 ], !dbg !1726
  %73 = phi i32 [ %17, %47 ], [ %70, %67 ], [ %66, %64 ], [ %63, %55 ], !dbg !1726
  call void @llvm.dbg.value(metadata i32 %73, metadata !1715, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i32 %72, metadata !1716, metadata !DIExpression()), !dbg !1726
  %74 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !1773
  call void @llvm.dbg.value(metadata ptr %74, metadata !1713, metadata !DIExpression()), !dbg !1726
  %75 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !1728
  %76 = load i8, ptr %75, align 1, !dbg !1728, !tbaa !1502
  %77 = icmp eq i8 %76, 0, !dbg !1729
  br i1 %77, label %78, label %14, !dbg !1730, !llvm.loop !1774

78:                                               ; preds = %71, %5
  %79 = phi i32 [ 0, %5 ], [ %72, %71 ], !dbg !1776
  %80 = phi i32 [ %6, %5 ], [ %73, %71 ], !dbg !1777
  %81 = icmp eq ptr %4, null, !dbg !1778
  br i1 %81, label %83, label %82, !dbg !1780

82:                                               ; preds = %78
  store i32 %79, ptr %4, align 4, !dbg !1781, !tbaa !866
  br label %83, !dbg !1782

83:                                               ; preds = %82, %78
  ret i32 %80, !dbg !1783
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1784 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1786, metadata !DIExpression()), !dbg !1789
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %2, metadata !1787, metadata !DIExpression()), !dbg !1789
  %3 = icmp eq ptr %2, null, !dbg !1791
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1791
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %5, metadata !1788, metadata !DIExpression()), !dbg !1789
  %6 = ptrtoint ptr %5 to i64, !dbg !1792
  %7 = ptrtoint ptr %0 to i64, !dbg !1792
  %8 = sub i64 %6, %7, !dbg !1792
  %9 = icmp sgt i64 %8, 6, !dbg !1794
  br i1 %9, label %10, label %19, !dbg !1795

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1796
  call void @llvm.dbg.value(metadata ptr %11, metadata !1797, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1802, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 7, metadata !1803, metadata !DIExpression()), !dbg !1804
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1806
  %13 = icmp eq i32 %12, 0, !dbg !1807
  br i1 %13, label %14, label %19, !dbg !1808

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1786, metadata !DIExpression()), !dbg !1789
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #37, !dbg !1809
  %16 = icmp eq i32 %15, 0, !dbg !1812
  %17 = select i1 %16, i64 3, i64 0, !dbg !1813
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1813
  br label %19, !dbg !1813

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1789
  call void @llvm.dbg.value(metadata ptr %21, metadata !1788, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata ptr %20, metadata !1786, metadata !DIExpression()), !dbg !1789
  store ptr %20, ptr @program_name, align 8, !dbg !1814, !tbaa !800
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1815, !tbaa !800
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1816, !tbaa !800
  ret void, !dbg !1817
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1818 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !460 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !467, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata ptr %1, metadata !468, metadata !DIExpression()), !dbg !1819
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %5, metadata !469, metadata !DIExpression()), !dbg !1819
  %6 = icmp eq ptr %5, %0, !dbg !1821
  br i1 %6, label %7, label %14, !dbg !1823

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1824
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1825
  call void @llvm.dbg.declare(metadata ptr %4, metadata !475, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata ptr %4, metadata !1827, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata ptr %4, metadata !1836, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 0, metadata !1842, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 8, metadata !1843, metadata !DIExpression()), !dbg !1844
  store i64 0, ptr %4, align 8, !dbg !1846
  call void @llvm.dbg.value(metadata ptr %3, metadata !470, metadata !DIExpression(DW_OP_deref)), !dbg !1819
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1847
  %9 = icmp eq i64 %8, 2, !dbg !1849
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !470, metadata !DIExpression()), !dbg !1819
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1850
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1819
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1851
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1851
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1819
  ret ptr %15, !dbg !1851
}

; Function Attrs: nounwind
declare !dbg !1852 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1858 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1863, metadata !DIExpression()), !dbg !1866
  %2 = tail call ptr @__errno_location() #39, !dbg !1867
  %3 = load i32, ptr %2, align 4, !dbg !1867, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %3, metadata !1864, metadata !DIExpression()), !dbg !1866
  %4 = icmp eq ptr %0, null, !dbg !1868
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1868
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !1869
  call void @llvm.dbg.value(metadata ptr %6, metadata !1865, metadata !DIExpression()), !dbg !1866
  store i32 %3, ptr %2, align 4, !dbg !1870, !tbaa !866
  ret ptr %6, !dbg !1871
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1872 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1878, metadata !DIExpression()), !dbg !1879
  %2 = icmp eq ptr %0, null, !dbg !1880
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1880
  %4 = load i32, ptr %3, align 8, !dbg !1881, !tbaa !1882
  ret i32 %4, !dbg !1884
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1885 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1889, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 %1, metadata !1890, metadata !DIExpression()), !dbg !1891
  %3 = icmp eq ptr %0, null, !dbg !1892
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1892
  store i32 %1, ptr %4, align 8, !dbg !1893, !tbaa !1882
  ret void, !dbg !1894
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1895 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1899, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %1, metadata !1900, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i32 %2, metadata !1901, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %1, metadata !1902, metadata !DIExpression()), !dbg !1907
  %4 = icmp eq ptr %0, null, !dbg !1908
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1908
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1909
  %7 = lshr i8 %1, 5, !dbg !1910
  %8 = zext i8 %7 to i64, !dbg !1910
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1911
  call void @llvm.dbg.value(metadata ptr %9, metadata !1903, metadata !DIExpression()), !dbg !1907
  %10 = and i8 %1, 31, !dbg !1912
  %11 = zext i8 %10 to i32, !dbg !1912
  call void @llvm.dbg.value(metadata i32 %11, metadata !1905, metadata !DIExpression()), !dbg !1907
  %12 = load i32, ptr %9, align 4, !dbg !1913, !tbaa !866
  %13 = lshr i32 %12, %11, !dbg !1914
  %14 = and i32 %13, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i32 %14, metadata !1906, metadata !DIExpression()), !dbg !1907
  %15 = xor i32 %13, %2, !dbg !1916
  %16 = and i32 %15, 1, !dbg !1916
  %17 = shl nuw i32 %16, %11, !dbg !1917
  %18 = xor i32 %17, %12, !dbg !1918
  store i32 %18, ptr %9, align 4, !dbg !1918, !tbaa !866
  ret i32 %14, !dbg !1919
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1920 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1924, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 %1, metadata !1925, metadata !DIExpression()), !dbg !1927
  %3 = icmp eq ptr %0, null, !dbg !1928
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %4, metadata !1924, metadata !DIExpression()), !dbg !1927
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1931
  %6 = load i32, ptr %5, align 4, !dbg !1931, !tbaa !1932
  call void @llvm.dbg.value(metadata i32 %6, metadata !1926, metadata !DIExpression()), !dbg !1927
  store i32 %1, ptr %5, align 4, !dbg !1933, !tbaa !1932
  ret i32 %6, !dbg !1934
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1935 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1939, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata ptr %1, metadata !1940, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata ptr %2, metadata !1941, metadata !DIExpression()), !dbg !1942
  %4 = icmp eq ptr %0, null, !dbg !1943
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1945
  call void @llvm.dbg.value(metadata ptr %5, metadata !1939, metadata !DIExpression()), !dbg !1942
  store i32 10, ptr %5, align 8, !dbg !1946, !tbaa !1882
  %6 = icmp ne ptr %1, null, !dbg !1947
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1949
  br i1 %8, label %10, label %9, !dbg !1949

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1950
  unreachable, !dbg !1950

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1951
  store ptr %1, ptr %11, align 8, !dbg !1952, !tbaa !1953
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1954
  store ptr %2, ptr %12, align 8, !dbg !1955, !tbaa !1956
  ret void, !dbg !1957
}

; Function Attrs: noreturn nounwind
declare !dbg !1958 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1959 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1963, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %1, metadata !1964, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %2, metadata !1965, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %3, metadata !1966, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %4, metadata !1967, metadata !DIExpression()), !dbg !1971
  %6 = icmp eq ptr %4, null, !dbg !1972
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1972
  call void @llvm.dbg.value(metadata ptr %7, metadata !1968, metadata !DIExpression()), !dbg !1971
  %8 = tail call ptr @__errno_location() #39, !dbg !1973
  %9 = load i32, ptr %8, align 4, !dbg !1973, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %9, metadata !1969, metadata !DIExpression()), !dbg !1971
  %10 = load i32, ptr %7, align 8, !dbg !1974, !tbaa !1882
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1975
  %12 = load i32, ptr %11, align 4, !dbg !1975, !tbaa !1932
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1976
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1977
  %15 = load ptr, ptr %14, align 8, !dbg !1977, !tbaa !1953
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1978
  %17 = load ptr, ptr %16, align 8, !dbg !1978, !tbaa !1956
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %18, metadata !1970, metadata !DIExpression()), !dbg !1971
  store i32 %9, ptr %8, align 4, !dbg !1980, !tbaa !866
  ret i64 %18, !dbg !1981
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1982 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1988, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %1, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %2, metadata !1990, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %3, metadata !1991, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %4, metadata !1992, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %5, metadata !1993, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %6, metadata !1994, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %7, metadata !1995, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %8, metadata !1996, metadata !DIExpression()), !dbg !2050
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !2051
  %17 = icmp eq i64 %16, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i1 %17, metadata !1997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !1999, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr null, metadata !2000, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !2001, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %5, metadata !2003, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 1, metadata !2005, metadata !DIExpression()), !dbg !2050
  %18 = and i32 %5, 2, !dbg !2053
  %19 = icmp ne i32 %18, 0, !dbg !2053
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2053

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2054
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2055
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2056
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %34, metadata !2001, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %33, metadata !2000, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %32, metadata !1999, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %31, metadata !1991, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %30, metadata !1996, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %29, metadata !1995, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %28, metadata !1992, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.label(metadata !2043), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2050
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
  ], !dbg !2058

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 5, metadata !1992, metadata !DIExpression()), !dbg !2050
  br label %102, !dbg !2059

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 5, metadata !1992, metadata !DIExpression()), !dbg !2050
  br i1 %36, label %102, label %42, !dbg !2059

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2060
  br i1 %43, label %102, label %44, !dbg !2064

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2060, !tbaa !875
  br label %102, !dbg !2060

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.72, metadata !556, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %28, metadata !557, metadata !DIExpression()), !dbg !2065
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.11.72, i32 noundef 5) #36, !dbg !2069
  call void @llvm.dbg.value(metadata ptr %46, metadata !558, metadata !DIExpression()), !dbg !2065
  %47 = icmp eq ptr %46, @.str.11.72, !dbg !2070
  br i1 %47, label %48, label %57, !dbg !2072

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !2073
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !2074
  call void @llvm.dbg.declare(metadata ptr %13, metadata !560, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata ptr %13, metadata !2076, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %13, metadata !2084, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i64 8, metadata !2088, metadata !DIExpression()), !dbg !2089
  store i64 0, ptr %13, align 8, !dbg !2091
  call void @llvm.dbg.value(metadata ptr %12, metadata !559, metadata !DIExpression(DW_OP_deref)), !dbg !2065
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !2092
  %50 = icmp eq i64 %49, 3, !dbg !2094
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !559, metadata !DIExpression()), !dbg !2065
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2095
  %54 = icmp eq i32 %28, 9, !dbg !2095
  %55 = select i1 %54, ptr @.str.10.74, ptr @.str.12.75, !dbg !2095
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2095
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !2096
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !2096
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2065
  call void @llvm.dbg.value(metadata ptr %58, metadata !1995, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr @.str.12.75, metadata !556, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i32 %28, metadata !557, metadata !DIExpression()), !dbg !2097
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.12.75, i32 noundef 5) #36, !dbg !2099
  call void @llvm.dbg.value(metadata ptr %59, metadata !558, metadata !DIExpression()), !dbg !2097
  %60 = icmp eq ptr %59, @.str.12.75, !dbg !2100
  br i1 %60, label %61, label %70, !dbg !2101

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !2103
  call void @llvm.dbg.declare(metadata ptr %11, metadata !560, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %11, metadata !2076, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata ptr %11, metadata !2084, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 8, metadata !2088, metadata !DIExpression()), !dbg !2107
  store i64 0, ptr %11, align 8, !dbg !2109
  call void @llvm.dbg.value(metadata ptr %10, metadata !559, metadata !DIExpression(DW_OP_deref)), !dbg !2097
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !2110
  %63 = icmp eq i64 %62, 3, !dbg !2111
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !559, metadata !DIExpression()), !dbg !2097
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2112
  %67 = icmp eq i32 %28, 9, !dbg !2112
  %68 = select i1 %67, ptr @.str.10.74, ptr @.str.12.75, !dbg !2112
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !2113
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1996, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %71, metadata !1995, metadata !DIExpression()), !dbg !2050
  br i1 %36, label %88, label %73, !dbg !2114

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2007, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 0, metadata !1998, metadata !DIExpression()), !dbg !2050
  %74 = load i8, ptr %71, align 1, !dbg !2116, !tbaa !875
  %75 = icmp eq i8 %74, 0, !dbg !2118
  br i1 %75, label %88, label %76, !dbg !2118

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2007, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %79, metadata !1998, metadata !DIExpression()), !dbg !2050
  %80 = icmp ult i64 %79, %39, !dbg !2119
  br i1 %80, label %81, label %83, !dbg !2122

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2119
  store i8 %77, ptr %82, align 1, !dbg !2119, !tbaa !875
  br label %83, !dbg !2119

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %84, metadata !1998, metadata !DIExpression()), !dbg !2050
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %85, metadata !2007, metadata !DIExpression()), !dbg !2115
  %86 = load i8, ptr %85, align 1, !dbg !2116, !tbaa !875
  %87 = icmp eq i8 %86, 0, !dbg !2118
  br i1 %87, label %88, label %76, !dbg !2118, !llvm.loop !2124

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2126
  call void @llvm.dbg.value(metadata i64 %89, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 1, metadata !2002, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %72, metadata !2000, metadata !DIExpression()), !dbg !2050
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %90, metadata !2001, metadata !DIExpression()), !dbg !2050
  br label %102, !dbg !2128

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2002, metadata !DIExpression()), !dbg !2050
  br label %93, !dbg !2129

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2050
  br i1 %36, label %102, label %96, !dbg !2130

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 2, metadata !1992, metadata !DIExpression()), !dbg !2050
  br label %102, !dbg !2131

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 2, metadata !1992, metadata !DIExpression()), !dbg !2050
  br i1 %36, label %102, label %96, !dbg !2131

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2132
  br i1 %98, label %102, label %99, !dbg !2136

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2132, !tbaa !875
  br label %102, !dbg !2132

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2003, metadata !DIExpression()), !dbg !2050
  br label %102, !dbg !2137

101:                                              ; preds = %27
  call void @abort() #38, !dbg !2138
  unreachable, !dbg !2138

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2126
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.74, %42 ], [ @.str.10.74, %44 ], [ @.str.10.74, %41 ], [ %33, %27 ], [ @.str.12.75, %96 ], [ @.str.12.75, %99 ], [ @.str.12.75, %95 ], [ @.str.10.74, %40 ], [ @.str.12.75, %93 ], [ @.str.12.75, %92 ], !dbg !2050
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2050
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %108, metadata !2001, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %107, metadata !2000, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %106, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %105, metadata !1996, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %104, metadata !1995, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %103, metadata !1992, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !2012, metadata !DIExpression()), !dbg !2139
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
  br label %122, !dbg !2140

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2126
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2054
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2141
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %129, metadata !2012, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %125, metadata !1999, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %124, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %123, metadata !1991, metadata !DIExpression()), !dbg !2050
  %131 = icmp eq i64 %123, -1, !dbg !2142
  br i1 %131, label %132, label %136, !dbg !2143

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2144
  %134 = load i8, ptr %133, align 1, !dbg !2144, !tbaa !875
  %135 = icmp eq i8 %134, 0, !dbg !2145
  br i1 %135, label %579, label %138, !dbg !2146

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2147
  br i1 %137, label %579, label %138, !dbg !2146

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 0, metadata !2017, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 0, metadata !2018, metadata !DIExpression()), !dbg !2148
  br i1 %114, label %139, label %152, !dbg !2149

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2151
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2152
  br i1 %141, label %142, label %144, !dbg !2152

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %143, metadata !1991, metadata !DIExpression()), !dbg !2050
  br label %144, !dbg !2154

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2154
  call void @llvm.dbg.value(metadata i64 %145, metadata !1991, metadata !DIExpression()), !dbg !2050
  %146 = icmp ugt i64 %140, %145, !dbg !2155
  br i1 %146, label %152, label %147, !dbg !2156

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2157
  call void @llvm.dbg.value(metadata ptr %148, metadata !2158, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata ptr %107, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i64 %108, metadata !2162, metadata !DIExpression()), !dbg !2163
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2165
  %150 = icmp eq i32 %149, 0, !dbg !2166
  %151 = and i1 %150, %110, !dbg !2167
  br i1 %151, label %630, label %152, !dbg !2167

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2014, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %153, metadata !1991, metadata !DIExpression()), !dbg !2050
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2168
  %156 = load i8, ptr %155, align 1, !dbg !2168, !tbaa !875
  call void @llvm.dbg.value(metadata i8 %156, metadata !2019, metadata !DIExpression()), !dbg !2148
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
  ], !dbg !2169

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2170

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2171

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2017, metadata !DIExpression()), !dbg !2148
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2175
  br i1 %160, label %177, label %161, !dbg !2175

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2177
  br i1 %162, label %163, label %165, !dbg !2181

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2177
  store i8 39, ptr %164, align 1, !dbg !2177, !tbaa !875
  br label %165, !dbg !2177

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %166, metadata !1998, metadata !DIExpression()), !dbg !2050
  %167 = icmp ult i64 %166, %130, !dbg !2182
  br i1 %167, label %168, label %170, !dbg !2185

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2182
  store i8 36, ptr %169, align 1, !dbg !2182, !tbaa !875
  br label %170, !dbg !2182

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %171, metadata !1998, metadata !DIExpression()), !dbg !2050
  %172 = icmp ult i64 %171, %130, !dbg !2186
  br i1 %172, label %173, label %175, !dbg !2189

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2186
  store i8 39, ptr %174, align 1, !dbg !2186, !tbaa !875
  br label %175, !dbg !2186

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %176, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2050
  br label %177, !dbg !2190

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2050
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %178, metadata !1998, metadata !DIExpression()), !dbg !2050
  %180 = icmp ult i64 %178, %130, !dbg !2191
  br i1 %180, label %181, label %183, !dbg !2194

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2191
  store i8 92, ptr %182, align 1, !dbg !2191, !tbaa !875
  br label %183, !dbg !2191

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %184, metadata !1998, metadata !DIExpression()), !dbg !2050
  br i1 %111, label %185, label %482, !dbg !2195

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2197
  %187 = icmp ult i64 %186, %153, !dbg !2198
  br i1 %187, label %188, label %439, !dbg !2199

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2200
  %190 = load i8, ptr %189, align 1, !dbg !2200, !tbaa !875
  %191 = add i8 %190, -48, !dbg !2201
  %192 = icmp ult i8 %191, 10, !dbg !2201
  br i1 %192, label %193, label %439, !dbg !2201

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2202
  br i1 %194, label %195, label %197, !dbg !2206

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2202
  store i8 48, ptr %196, align 1, !dbg !2202, !tbaa !875
  br label %197, !dbg !2202

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %198, metadata !1998, metadata !DIExpression()), !dbg !2050
  %199 = icmp ult i64 %198, %130, !dbg !2207
  br i1 %199, label %200, label %202, !dbg !2210

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2207
  store i8 48, ptr %201, align 1, !dbg !2207, !tbaa !875
  br label %202, !dbg !2207

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %203, metadata !1998, metadata !DIExpression()), !dbg !2050
  br label %439, !dbg !2211

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2212

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2213

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2214

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2216

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2218
  %210 = icmp ult i64 %209, %153, !dbg !2219
  br i1 %210, label %211, label %439, !dbg !2220

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2221
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2222
  %214 = load i8, ptr %213, align 1, !dbg !2222, !tbaa !875
  %215 = icmp eq i8 %214, 63, !dbg !2223
  br i1 %215, label %216, label %439, !dbg !2224

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2225
  %218 = load i8, ptr %217, align 1, !dbg !2225, !tbaa !875
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
  ], !dbg !2226

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2227

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2019, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %209, metadata !2012, metadata !DIExpression()), !dbg !2139
  %221 = icmp ult i64 %124, %130, !dbg !2229
  br i1 %221, label %222, label %224, !dbg !2232

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2229
  store i8 63, ptr %223, align 1, !dbg !2229, !tbaa !875
  br label %224, !dbg !2229

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %225, metadata !1998, metadata !DIExpression()), !dbg !2050
  %226 = icmp ult i64 %225, %130, !dbg !2233
  br i1 %226, label %227, label %229, !dbg !2236

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2233
  store i8 34, ptr %228, align 1, !dbg !2233, !tbaa !875
  br label %229, !dbg !2233

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %230, metadata !1998, metadata !DIExpression()), !dbg !2050
  %231 = icmp ult i64 %230, %130, !dbg !2237
  br i1 %231, label %232, label %234, !dbg !2240

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2237
  store i8 34, ptr %233, align 1, !dbg !2237, !tbaa !875
  br label %234, !dbg !2237

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %235, metadata !1998, metadata !DIExpression()), !dbg !2050
  %236 = icmp ult i64 %235, %130, !dbg !2241
  br i1 %236, label %237, label %239, !dbg !2244

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2241
  store i8 63, ptr %238, align 1, !dbg !2241, !tbaa !875
  br label %239, !dbg !2241

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %240, metadata !1998, metadata !DIExpression()), !dbg !2050
  br label %439, !dbg !2245

241:                                              ; preds = %152
  br label %251, !dbg !2246

242:                                              ; preds = %152
  br label %251, !dbg !2247

243:                                              ; preds = %152
  br label %249, !dbg !2248

244:                                              ; preds = %152
  br label %249, !dbg !2249

245:                                              ; preds = %152
  br label %251, !dbg !2250

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2251

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2252

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2255

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2257
  call void @llvm.dbg.label(metadata !2044), !dbg !2258
  br i1 %119, label %621, label %251, !dbg !2259

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2257
  call void @llvm.dbg.label(metadata !2046), !dbg !2261
  br i1 %109, label %493, label %450, !dbg !2262

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2263

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2264, !tbaa !875
  %256 = icmp eq i8 %255, 0, !dbg !2266
  br i1 %256, label %257, label %439, !dbg !2267

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2268
  br i1 %258, label %259, label %439, !dbg !2270

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2018, metadata !DIExpression()), !dbg !2148
  br label %260, !dbg !2271

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2148
  br i1 %116, label %262, label %439, !dbg !2272

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2274

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 1, metadata !2018, metadata !DIExpression()), !dbg !2148
  br i1 %116, label %264, label %439, !dbg !2275

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2276

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2279
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2281
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2281
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %270, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %269, metadata !1999, metadata !DIExpression()), !dbg !2050
  %271 = icmp ult i64 %124, %270, !dbg !2282
  br i1 %271, label %272, label %274, !dbg !2285

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2282
  store i8 39, ptr %273, align 1, !dbg !2282, !tbaa !875
  br label %274, !dbg !2282

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %275, metadata !1998, metadata !DIExpression()), !dbg !2050
  %276 = icmp ult i64 %275, %270, !dbg !2286
  br i1 %276, label %277, label %279, !dbg !2289

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2286
  store i8 92, ptr %278, align 1, !dbg !2286, !tbaa !875
  br label %279, !dbg !2286

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %280, metadata !1998, metadata !DIExpression()), !dbg !2050
  %281 = icmp ult i64 %280, %270, !dbg !2290
  br i1 %281, label %282, label %284, !dbg !2293

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2290
  store i8 39, ptr %283, align 1, !dbg !2290, !tbaa !875
  br label %284, !dbg !2290

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %285, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2050
  br label %439, !dbg !2294

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2295

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2020, metadata !DIExpression()), !dbg !2296
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !2297
  %289 = load ptr, ptr %288, align 8, !dbg !2297, !tbaa !800
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2297
  %292 = load i16, ptr %291, align 2, !dbg !2297, !tbaa !907
  %293 = and i16 %292, 16384, !dbg !2297
  %294 = icmp ne i16 %293, 0, !dbg !2299
  call void @llvm.dbg.value(metadata i1 %294, metadata !2023, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2296
  br label %337, !dbg !2300

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2301
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2024, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata ptr %14, metadata !2076, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata ptr %14, metadata !2084, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i64 8, metadata !2088, metadata !DIExpression()), !dbg !2305
  store i64 0, ptr %14, align 8, !dbg !2307
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 1, metadata !2023, metadata !DIExpression()), !dbg !2296
  %296 = icmp eq i64 %153, -1, !dbg !2308
  br i1 %296, label %297, label %299, !dbg !2310

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %298, metadata !1991, metadata !DIExpression()), !dbg !2050
  br label %299, !dbg !2312

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2148
  call void @llvm.dbg.value(metadata i64 %300, metadata !1991, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2313
  %301 = sub i64 %300, %129, !dbg !2314
  call void @llvm.dbg.value(metadata ptr %15, metadata !2027, metadata !DIExpression(DW_OP_deref)), !dbg !2315
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %302, metadata !2031, metadata !DIExpression()), !dbg !2315
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2317

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2296
  %304 = icmp ugt i64 %300, %129, !dbg !2318
  br i1 %304, label %306, label %332, !dbg !2320

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2296
  br label %332, !dbg !2321

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2020, metadata !DIExpression()), !dbg !2296
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2323
  %310 = load i8, ptr %309, align 1, !dbg !2323, !tbaa !875
  %311 = icmp eq i8 %310, 0, !dbg !2320
  br i1 %311, label %332, label %312, !dbg !2324

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %313, metadata !2020, metadata !DIExpression()), !dbg !2296
  %314 = add i64 %313, %129, !dbg !2326
  %315 = icmp eq i64 %313, %301, !dbg !2318
  br i1 %315, label %332, label %306, !dbg !2320, !llvm.loop !2327

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2328
  %319 = and i1 %318, %110, !dbg !2328
  call void @llvm.dbg.value(metadata i64 1, metadata !2032, metadata !DIExpression()), !dbg !2329
  br i1 %319, label %320, label %328, !dbg !2328

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2032, metadata !DIExpression()), !dbg !2329
  %322 = add i64 %321, %129, !dbg !2330
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2332
  %324 = load i8, ptr %323, align 1, !dbg !2332, !tbaa !875
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2333

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %326, metadata !2032, metadata !DIExpression()), !dbg !2329
  %327 = icmp eq i64 %326, %302, !dbg !2335
  br i1 %327, label %328, label %320, !dbg !2336, !llvm.loop !2337

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2339, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %329, metadata !2027, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 %329, metadata !2341, metadata !DIExpression()), !dbg !2349
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !2351
  %331 = icmp ne i32 %330, 0, !dbg !2352
  call void @llvm.dbg.value(metadata i8 poison, metadata !2023, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %302, metadata !2020, metadata !DIExpression()), !dbg !2296
  br label %332, !dbg !2353

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2023, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %333, metadata !2020, metadata !DIExpression()), !dbg !2296
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2354
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2355
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2023, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2296
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2354
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2355
  call void @llvm.dbg.label(metadata !2049), !dbg !2356
  %336 = select i1 %109, i32 4, i32 2, !dbg !2357
  br label %626, !dbg !2357

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2148
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2359
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2023, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %339, metadata !2020, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %338, metadata !1991, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i1 %340, metadata !2018, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2148
  %341 = icmp ult i64 %339, 2, !dbg !2360
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2361
  br i1 %343, label %439, label %344, !dbg !2361

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %345, metadata !2040, metadata !DIExpression()), !dbg !2363
  br label %346, !dbg !2364

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2050
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2139
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2365
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2148
  call void @llvm.dbg.value(metadata i8 %352, metadata !2019, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %351, metadata !2017, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2014, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %349, metadata !2012, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %347, metadata !1998, metadata !DIExpression()), !dbg !2050
  br i1 %342, label %397, label %353, !dbg !2366

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2371

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2017, metadata !DIExpression()), !dbg !2148
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2374
  br i1 %355, label %372, label %356, !dbg !2374

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2376
  br i1 %357, label %358, label %360, !dbg !2380

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2376
  store i8 39, ptr %359, align 1, !dbg !2376, !tbaa !875
  br label %360, !dbg !2376

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %361, metadata !1998, metadata !DIExpression()), !dbg !2050
  %362 = icmp ult i64 %361, %130, !dbg !2381
  br i1 %362, label %363, label %365, !dbg !2384

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2381
  store i8 36, ptr %364, align 1, !dbg !2381, !tbaa !875
  br label %365, !dbg !2381

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %366, metadata !1998, metadata !DIExpression()), !dbg !2050
  %367 = icmp ult i64 %366, %130, !dbg !2385
  br i1 %367, label %368, label %370, !dbg !2388

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2385
  store i8 39, ptr %369, align 1, !dbg !2385, !tbaa !875
  br label %370, !dbg !2385

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %371, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2050
  br label %372, !dbg !2389

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2050
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %373, metadata !1998, metadata !DIExpression()), !dbg !2050
  %375 = icmp ult i64 %373, %130, !dbg !2390
  br i1 %375, label %376, label %378, !dbg !2393

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2390
  store i8 92, ptr %377, align 1, !dbg !2390, !tbaa !875
  br label %378, !dbg !2390

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %379, metadata !1998, metadata !DIExpression()), !dbg !2050
  %380 = icmp ult i64 %379, %130, !dbg !2394
  br i1 %380, label %381, label %385, !dbg !2397

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2394
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2394
  store i8 %383, ptr %384, align 1, !dbg !2394, !tbaa !875
  br label %385, !dbg !2394

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %386, metadata !1998, metadata !DIExpression()), !dbg !2050
  %387 = icmp ult i64 %386, %130, !dbg !2398
  br i1 %387, label %388, label %393, !dbg !2401

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2398
  %391 = or i8 %390, 48, !dbg !2398
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2398
  store i8 %391, ptr %392, align 1, !dbg !2398, !tbaa !875
  br label %393, !dbg !2398

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %394, metadata !1998, metadata !DIExpression()), !dbg !2050
  %395 = and i8 %352, 7, !dbg !2402
  %396 = or i8 %395, 48, !dbg !2403
  call void @llvm.dbg.value(metadata i8 %396, metadata !2019, metadata !DIExpression()), !dbg !2148
  br label %404, !dbg !2404

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2405

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2406
  br i1 %399, label %400, label %402, !dbg !2411

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2406
  store i8 92, ptr %401, align 1, !dbg !2406, !tbaa !875
  br label %402, !dbg !2406

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %403, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2148
  br label %404, !dbg !2412

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2050
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2148
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2148
  call void @llvm.dbg.value(metadata i8 %409, metadata !2019, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %408, metadata !2017, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2014, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %405, metadata !1998, metadata !DIExpression()), !dbg !2050
  %410 = add i64 %349, 1, !dbg !2413
  %411 = icmp ugt i64 %345, %410, !dbg !2415
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2416

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2417
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2417
  br i1 %415, label %416, label %427, !dbg !2417

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2420
  br i1 %417, label %418, label %420, !dbg !2424

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2420
  store i8 39, ptr %419, align 1, !dbg !2420, !tbaa !875
  br label %420, !dbg !2420

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %421, metadata !1998, metadata !DIExpression()), !dbg !2050
  %422 = icmp ult i64 %421, %130, !dbg !2425
  br i1 %422, label %423, label %425, !dbg !2428

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2425
  store i8 39, ptr %424, align 1, !dbg !2425, !tbaa !875
  br label %425, !dbg !2425

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %426, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2050
  br label %427, !dbg !2429

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2430
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %428, metadata !1998, metadata !DIExpression()), !dbg !2050
  %430 = icmp ult i64 %428, %130, !dbg !2431
  br i1 %430, label %431, label %433, !dbg !2434

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2431
  store i8 %409, ptr %432, align 1, !dbg !2431, !tbaa !875
  br label %433, !dbg !2431

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %434, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %410, metadata !2012, metadata !DIExpression()), !dbg !2139
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2435
  %436 = load i8, ptr %435, align 1, !dbg !2435, !tbaa !875
  call void @llvm.dbg.value(metadata i8 %436, metadata !2019, metadata !DIExpression()), !dbg !2148
  br label %346, !dbg !2436, !llvm.loop !2437

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2019, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i1 %340, metadata !2018, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %408, metadata !2017, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2014, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %349, metadata !2012, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %405, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %338, metadata !1991, metadata !DIExpression()), !dbg !2050
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2440
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2050
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2054
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2139
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2148
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 %448, metadata !2019, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2017, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2014, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %445, metadata !2012, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %442, metadata !1999, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %441, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %440, metadata !1991, metadata !DIExpression()), !dbg !2050
  br i1 %112, label %461, label %450, !dbg !2441

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
  br i1 %121, label %462, label %482, !dbg !2443

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2444

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
  %473 = lshr i8 %464, 5, !dbg !2445
  %474 = zext i8 %473 to i64, !dbg !2445
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2446
  %476 = load i32, ptr %475, align 4, !dbg !2446, !tbaa !866
  %477 = and i8 %464, 31, !dbg !2447
  %478 = zext i8 %477 to i32, !dbg !2447
  %479 = shl nuw i32 1, %478, !dbg !2448
  %480 = and i32 %476, %479, !dbg !2448
  %481 = icmp eq i32 %480, 0, !dbg !2448
  br i1 %481, label %482, label %493, !dbg !2449

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
  br i1 %154, label %493, label %529, !dbg !2450

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2440
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2050
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2054
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2451
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2148
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 %501, metadata !2019, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %499, metadata !2012, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %496, metadata !1999, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %495, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %494, metadata !1991, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.label(metadata !2047), !dbg !2452
  br i1 %110, label %621, label %503, !dbg !2453

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2017, metadata !DIExpression()), !dbg !2148
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2455
  br i1 %504, label %521, label %505, !dbg !2455

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2457
  br i1 %506, label %507, label %509, !dbg !2461

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2457
  store i8 39, ptr %508, align 1, !dbg !2457, !tbaa !875
  br label %509, !dbg !2457

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %510, metadata !1998, metadata !DIExpression()), !dbg !2050
  %511 = icmp ult i64 %510, %502, !dbg !2462
  br i1 %511, label %512, label %514, !dbg !2465

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2462
  store i8 36, ptr %513, align 1, !dbg !2462, !tbaa !875
  br label %514, !dbg !2462

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %515, metadata !1998, metadata !DIExpression()), !dbg !2050
  %516 = icmp ult i64 %515, %502, !dbg !2466
  br i1 %516, label %517, label %519, !dbg !2469

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2466
  store i8 39, ptr %518, align 1, !dbg !2466, !tbaa !875
  br label %519, !dbg !2466

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %520, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2050
  br label %521, !dbg !2470

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2148
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %522, metadata !1998, metadata !DIExpression()), !dbg !2050
  %524 = icmp ult i64 %522, %502, !dbg !2471
  br i1 %524, label %525, label %527, !dbg !2474

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2471
  store i8 92, ptr %526, align 1, !dbg !2471, !tbaa !875
  br label %527, !dbg !2471

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %502, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 %501, metadata !2019, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2017, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %499, metadata !2012, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %496, metadata !1999, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %528, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %494, metadata !1991, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.label(metadata !2048), !dbg !2475
  br label %553, !dbg !2476

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2440
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2050
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2054
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2451
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2479
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 %538, metadata !2019, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 poison, metadata !2017, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %535, metadata !2012, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %532, metadata !1999, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %531, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %530, metadata !1991, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.label(metadata !2048), !dbg !2475
  %540 = xor i1 %534, true, !dbg !2476
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2476
  br i1 %541, label %553, label %542, !dbg !2476

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2480
  br i1 %543, label %544, label %546, !dbg !2484

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2480
  store i8 39, ptr %545, align 1, !dbg !2480, !tbaa !875
  br label %546, !dbg !2480

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %547, metadata !1998, metadata !DIExpression()), !dbg !2050
  %548 = icmp ult i64 %547, %539, !dbg !2485
  br i1 %548, label %549, label %551, !dbg !2488

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2485
  store i8 39, ptr %550, align 1, !dbg !2485, !tbaa !875
  br label %551, !dbg !2485

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %552, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2050
  br label %553, !dbg !2489

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2148
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %561, metadata !1998, metadata !DIExpression()), !dbg !2050
  %563 = icmp ult i64 %561, %554, !dbg !2490
  br i1 %563, label %564, label %566, !dbg !2493

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2490
  store i8 %555, ptr %565, align 1, !dbg !2490, !tbaa !875
  br label %566, !dbg !2490

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %567, metadata !1998, metadata !DIExpression()), !dbg !2050
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2494
  call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2050
  br label %569, !dbg !2495

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2440
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2050
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2054
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2451
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %576, metadata !2012, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %572, metadata !1999, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %571, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %570, metadata !1991, metadata !DIExpression()), !dbg !2050
  %578 = add i64 %576, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %578, metadata !2012, metadata !DIExpression()), !dbg !2139
  br label %122, !dbg !2497, !llvm.loop !2498

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1989, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %125, metadata !1999, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %124, metadata !1998, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %123, metadata !1991, metadata !DIExpression()), !dbg !2050
  %580 = icmp ne i64 %124, 0, !dbg !2500
  %581 = xor i1 %110, true, !dbg !2502
  %582 = or i1 %580, %581, !dbg !2502
  %583 = or i1 %582, %111, !dbg !2502
  br i1 %583, label %584, label %621, !dbg !2502

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2503
  %586 = xor i1 %126, true, !dbg !2503
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2503
  br i1 %587, label %595, label %588, !dbg !2503

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2505

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2507
  br label %636, !dbg !2509

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2510
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2512
  br i1 %594, label %27, label %595, !dbg !2512

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2513
  %598 = or i1 %597, %596, !dbg !2515
  br i1 %598, label %614, label %599, !dbg !2515

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2000, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %124, metadata !1998, metadata !DIExpression()), !dbg !2050
  %600 = load i8, ptr %107, align 1, !dbg !2516, !tbaa !875
  %601 = icmp eq i8 %600, 0, !dbg !2519
  br i1 %601, label %614, label %602, !dbg !2519

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2000, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %605, metadata !1998, metadata !DIExpression()), !dbg !2050
  %606 = icmp ult i64 %605, %130, !dbg !2520
  br i1 %606, label %607, label %609, !dbg !2523

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2520
  store i8 %603, ptr %608, align 1, !dbg !2520, !tbaa !875
  br label %609, !dbg !2520

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %610, metadata !1998, metadata !DIExpression()), !dbg !2050
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2524
  call void @llvm.dbg.value(metadata ptr %611, metadata !2000, metadata !DIExpression()), !dbg !2050
  %612 = load i8, ptr %611, align 1, !dbg !2516, !tbaa !875
  %613 = icmp eq i8 %612, 0, !dbg !2519
  br i1 %613, label %614, label %602, !dbg !2519, !llvm.loop !2525

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2126
  call void @llvm.dbg.value(metadata i64 %615, metadata !1998, metadata !DIExpression()), !dbg !2050
  %616 = icmp ult i64 %615, %130, !dbg !2527
  br i1 %616, label %617, label %636, !dbg !2529

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2530
  store i8 0, ptr %618, align 1, !dbg !2531, !tbaa !875
  br label %636, !dbg !2530

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2049), !dbg !2356
  %620 = icmp eq i32 %103, 2, !dbg !2532
  br i1 %620, label %626, label %630, !dbg !2357

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2049), !dbg !2356
  %624 = icmp eq i32 %103, 2, !dbg !2532
  %625 = select i1 %109, i32 4, i32 2, !dbg !2357
  br i1 %624, label %626, label %630, !dbg !2357

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2357

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1992, metadata !DIExpression()), !dbg !2050
  %634 = and i32 %5, -3, !dbg !2533
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2534
  br label %636, !dbg !2535

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2536
}

; Function Attrs: nounwind
declare !dbg !2537 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2540 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2543 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2545 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2549, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 %1, metadata !2550, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %2, metadata !2551, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %1, metadata !2558, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata ptr null, metadata !2559, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata ptr %2, metadata !2560, metadata !DIExpression()), !dbg !2566
  %4 = icmp eq ptr %2, null, !dbg !2568
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2568
  call void @llvm.dbg.value(metadata ptr %5, metadata !2561, metadata !DIExpression()), !dbg !2566
  %6 = tail call ptr @__errno_location() #39, !dbg !2569
  %7 = load i32, ptr %6, align 4, !dbg !2569, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %7, metadata !2562, metadata !DIExpression()), !dbg !2566
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2570
  %9 = load i32, ptr %8, align 4, !dbg !2570, !tbaa !1932
  %10 = or i32 %9, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %10, metadata !2563, metadata !DIExpression()), !dbg !2566
  %11 = load i32, ptr %5, align 8, !dbg !2572, !tbaa !1882
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2573
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2574
  %14 = load ptr, ptr %13, align 8, !dbg !2574, !tbaa !1953
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2575
  %16 = load ptr, ptr %15, align 8, !dbg !2575, !tbaa !1956
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2576
  %18 = add i64 %17, 1, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %18, metadata !2564, metadata !DIExpression()), !dbg !2566
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #42, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %19, metadata !2565, metadata !DIExpression()), !dbg !2566
  %20 = load i32, ptr %5, align 8, !dbg !2579, !tbaa !1882
  %21 = load ptr, ptr %13, align 8, !dbg !2580, !tbaa !1953
  %22 = load ptr, ptr %15, align 8, !dbg !2581, !tbaa !1956
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2582
  store i32 %7, ptr %6, align 4, !dbg !2583, !tbaa !866
  ret ptr %19, !dbg !2584
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2554 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %1, metadata !2558, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata ptr %2, metadata !2559, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata ptr %3, metadata !2560, metadata !DIExpression()), !dbg !2585
  %5 = icmp eq ptr %3, null, !dbg !2586
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2586
  call void @llvm.dbg.value(metadata ptr %6, metadata !2561, metadata !DIExpression()), !dbg !2585
  %7 = tail call ptr @__errno_location() #39, !dbg !2587
  %8 = load i32, ptr %7, align 4, !dbg !2587, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %8, metadata !2562, metadata !DIExpression()), !dbg !2585
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2588
  %10 = load i32, ptr %9, align 4, !dbg !2588, !tbaa !1932
  %11 = icmp eq ptr %2, null, !dbg !2589
  %12 = zext i1 %11 to i32, !dbg !2589
  %13 = or i32 %10, %12, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %13, metadata !2563, metadata !DIExpression()), !dbg !2585
  %14 = load i32, ptr %6, align 8, !dbg !2591, !tbaa !1882
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2592
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2593
  %17 = load ptr, ptr %16, align 8, !dbg !2593, !tbaa !1953
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2594
  %19 = load ptr, ptr %18, align 8, !dbg !2594, !tbaa !1956
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2595
  %21 = add i64 %20, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %21, metadata !2564, metadata !DIExpression()), !dbg !2585
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #42, !dbg !2597
  call void @llvm.dbg.value(metadata ptr %22, metadata !2565, metadata !DIExpression()), !dbg !2585
  %23 = load i32, ptr %6, align 8, !dbg !2598, !tbaa !1882
  %24 = load ptr, ptr %16, align 8, !dbg !2599, !tbaa !1953
  %25 = load ptr, ptr %18, align 8, !dbg !2600, !tbaa !1956
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2601
  store i32 %8, ptr %7, align 4, !dbg !2602, !tbaa !866
  br i1 %11, label %28, label %27, !dbg !2603

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2604, !tbaa !2606
  br label %28, !dbg !2607

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2608
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2609 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2614, !tbaa !800
  call void @llvm.dbg.value(metadata ptr %1, metadata !2611, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 1, metadata !2612, metadata !DIExpression()), !dbg !2616
  %2 = load i32, ptr @nslots, align 4, !tbaa !866
  call void @llvm.dbg.value(metadata i32 1, metadata !2612, metadata !DIExpression()), !dbg !2616
  %3 = icmp sgt i32 %2, 1, !dbg !2617
  br i1 %3, label %4, label %6, !dbg !2619

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2617
  br label %10, !dbg !2619

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2620
  %8 = load ptr, ptr %7, align 8, !dbg !2620, !tbaa !2622
  %9 = icmp eq ptr %8, @slot0, !dbg !2624
  br i1 %9, label %17, label %16, !dbg !2625

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2612, metadata !DIExpression()), !dbg !2616
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2626
  %13 = load ptr, ptr %12, align 8, !dbg !2626, !tbaa !2622
  tail call void @free(ptr noundef %13) #36, !dbg !2627
  %14 = add nuw nsw i64 %11, 1, !dbg !2628
  call void @llvm.dbg.value(metadata i64 %14, metadata !2612, metadata !DIExpression()), !dbg !2616
  %15 = icmp eq i64 %14, %5, !dbg !2617
  br i1 %15, label %6, label %10, !dbg !2619, !llvm.loop !2629

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2631
  store i64 256, ptr @slotvec0, align 8, !dbg !2633, !tbaa !2634
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2635, !tbaa !2622
  br label %17, !dbg !2636

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2637
  br i1 %18, label %20, label %19, !dbg !2639

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2640
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2642, !tbaa !800
  br label %20, !dbg !2643

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2644, !tbaa !866
  ret void, !dbg !2645
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2648, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %1, metadata !2649, metadata !DIExpression()), !dbg !2650
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2651
  ret ptr %3, !dbg !2652
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2653 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2657, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %1, metadata !2658, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %2, metadata !2659, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %3, metadata !2660, metadata !DIExpression()), !dbg !2673
  %6 = tail call ptr @__errno_location() #39, !dbg !2674
  %7 = load i32, ptr %6, align 4, !dbg !2674, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %7, metadata !2661, metadata !DIExpression()), !dbg !2673
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2675, !tbaa !800
  call void @llvm.dbg.value(metadata ptr %8, metadata !2662, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2663, metadata !DIExpression()), !dbg !2673
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2676
  br i1 %9, label %10, label %11, !dbg !2676

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2678
  unreachable, !dbg !2678

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2679, !tbaa !866
  %13 = icmp sgt i32 %12, %0, !dbg !2680
  br i1 %13, label %32, label %14, !dbg !2681

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2682
  call void @llvm.dbg.value(metadata i1 %15, metadata !2664, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2683
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2684
  %16 = sext i32 %12 to i64, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %16, metadata !2667, metadata !DIExpression()), !dbg !2683
  store i64 %16, ptr %5, align 8, !dbg !2686, !tbaa !2606
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2687
  %18 = add nuw nsw i32 %0, 1, !dbg !2688
  %19 = sub i32 %18, %12, !dbg !2689
  %20 = sext i32 %19 to i64, !dbg !2690
  call void @llvm.dbg.value(metadata ptr %5, metadata !2667, metadata !DIExpression(DW_OP_deref)), !dbg !2683
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2691
  call void @llvm.dbg.value(metadata ptr %21, metadata !2662, metadata !DIExpression()), !dbg !2673
  store ptr %21, ptr @slotvec, align 8, !dbg !2692, !tbaa !800
  br i1 %15, label %22, label %23, !dbg !2693

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2694, !tbaa.struct !2696
  br label %23, !dbg !2697

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2698, !tbaa !866
  %25 = sext i32 %24 to i64, !dbg !2699
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2699
  %27 = load i64, ptr %5, align 8, !dbg !2700, !tbaa !2606
  call void @llvm.dbg.value(metadata i64 %27, metadata !2667, metadata !DIExpression()), !dbg !2683
  %28 = sub nsw i64 %27, %25, !dbg !2701
  %29 = shl i64 %28, 4, !dbg !2702
  call void @llvm.dbg.value(metadata ptr %26, metadata !2084, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %29, metadata !2088, metadata !DIExpression()), !dbg !2703
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2705
  %30 = load i64, ptr %5, align 8, !dbg !2706, !tbaa !2606
  call void @llvm.dbg.value(metadata i64 %30, metadata !2667, metadata !DIExpression()), !dbg !2683
  %31 = trunc i64 %30 to i32, !dbg !2706
  store i32 %31, ptr @nslots, align 4, !dbg !2707, !tbaa !866
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2708
  br label %32, !dbg !2709

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2673
  call void @llvm.dbg.value(metadata ptr %33, metadata !2662, metadata !DIExpression()), !dbg !2673
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2710
  %36 = load i64, ptr %35, align 8, !dbg !2711, !tbaa !2634
  call void @llvm.dbg.value(metadata i64 %36, metadata !2668, metadata !DIExpression()), !dbg !2712
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2713
  %38 = load ptr, ptr %37, align 8, !dbg !2713, !tbaa !2622
  call void @llvm.dbg.value(metadata ptr %38, metadata !2670, metadata !DIExpression()), !dbg !2712
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2714
  %40 = load i32, ptr %39, align 4, !dbg !2714, !tbaa !1932
  %41 = or i32 %40, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %41, metadata !2671, metadata !DIExpression()), !dbg !2712
  %42 = load i32, ptr %3, align 8, !dbg !2716, !tbaa !1882
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2717
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2718
  %45 = load ptr, ptr %44, align 8, !dbg !2718, !tbaa !1953
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2719
  %47 = load ptr, ptr %46, align 8, !dbg !2719, !tbaa !1956
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %48, metadata !2672, metadata !DIExpression()), !dbg !2712
  %49 = icmp ugt i64 %36, %48, !dbg !2721
  br i1 %49, label %60, label %50, !dbg !2723

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %51, metadata !2668, metadata !DIExpression()), !dbg !2712
  store i64 %51, ptr %35, align 8, !dbg !2726, !tbaa !2634
  %52 = icmp eq ptr %38, @slot0, !dbg !2727
  br i1 %52, label %54, label %53, !dbg !2729

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2730
  br label %54, !dbg !2730

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #42, !dbg !2731
  call void @llvm.dbg.value(metadata ptr %55, metadata !2670, metadata !DIExpression()), !dbg !2712
  store ptr %55, ptr %37, align 8, !dbg !2732, !tbaa !2622
  %56 = load i32, ptr %3, align 8, !dbg !2733, !tbaa !1882
  %57 = load ptr, ptr %44, align 8, !dbg !2734, !tbaa !1953
  %58 = load ptr, ptr %46, align 8, !dbg !2735, !tbaa !1956
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2736
  br label %60, !dbg !2737

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2712
  call void @llvm.dbg.value(metadata ptr %61, metadata !2670, metadata !DIExpression()), !dbg !2712
  store i32 %7, ptr %6, align 4, !dbg !2738, !tbaa !866
  ret ptr %61, !dbg !2739
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2740 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2744, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata ptr %1, metadata !2745, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %2, metadata !2746, metadata !DIExpression()), !dbg !2747
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2748
  ret ptr %4, !dbg !2749
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2750 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2648, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %0, metadata !2649, metadata !DIExpression()), !dbg !2754
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2756
  ret ptr %2, !dbg !2757
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2758 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2762, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %1, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 0, metadata !2744, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata ptr %0, metadata !2745, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %1, metadata !2746, metadata !DIExpression()), !dbg !2765
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2767
  ret ptr %3, !dbg !2768
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2769 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 %1, metadata !2774, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %2, metadata !2775, metadata !DIExpression()), !dbg !2777
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2778
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2776, metadata !DIExpression()), !dbg !2779
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2780), !dbg !2783
  call void @llvm.dbg.value(metadata i32 %1, metadata !2784, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2789, metadata !DIExpression()), !dbg !2792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2792, !alias.scope !2780
  %5 = icmp eq i32 %1, 10, !dbg !2793
  br i1 %5, label %6, label %7, !dbg !2795

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2796, !noalias !2780
  unreachable, !dbg !2796

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2797, !tbaa !1882, !alias.scope !2780
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2798
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2799
  ret ptr %8, !dbg !2800
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2801 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2805, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i32 %1, metadata !2806, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %2, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %3, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2811
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2809, metadata !DIExpression()), !dbg !2812
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2813), !dbg !2816
  call void @llvm.dbg.value(metadata i32 %1, metadata !2784, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2789, metadata !DIExpression()), !dbg !2819
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2819, !alias.scope !2813
  %6 = icmp eq i32 %1, 10, !dbg !2820
  br i1 %6, label %7, label %8, !dbg !2821

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2822, !noalias !2813
  unreachable, !dbg !2822

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2823, !tbaa !1882, !alias.scope !2813
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2824
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2825
  ret ptr %9, !dbg !2826
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2827 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata ptr %1, metadata !2832, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 0, metadata !2773, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %1, metadata !2775, metadata !DIExpression()), !dbg !2834
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2836
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2776, metadata !DIExpression()), !dbg !2837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2838), !dbg !2841
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2789, metadata !DIExpression()), !dbg !2844
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2844, !alias.scope !2838
  %4 = icmp eq i32 %0, 10, !dbg !2845
  br i1 %4, label %5, label %6, !dbg !2846

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2847, !noalias !2838
  unreachable, !dbg !2847

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2848, !tbaa !1882, !alias.scope !2838
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2849
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2850
  ret ptr %7, !dbg !2851
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2852 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2856, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %1, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i64 %2, metadata !2858, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i32 0, metadata !2805, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i32 %0, metadata !2806, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %1, metadata !2807, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %2, metadata !2808, metadata !DIExpression()), !dbg !2860
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2862
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2809, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864), !dbg !2867
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2789, metadata !DIExpression()), !dbg !2870
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2870, !alias.scope !2864
  %5 = icmp eq i32 %0, 10, !dbg !2871
  br i1 %5, label %6, label %7, !dbg !2872

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2873, !noalias !2864
  unreachable, !dbg !2873

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2874, !tbaa !1882, !alias.scope !2864
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2875
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2876
  ret ptr %8, !dbg !2877
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2878 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2882, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %1, metadata !2883, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %2, metadata !2884, metadata !DIExpression()), !dbg !2886
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2887
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2885, metadata !DIExpression()), !dbg !2888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2889, !tbaa.struct !2890
  call void @llvm.dbg.value(metadata ptr %4, metadata !1899, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 %2, metadata !1900, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 1, metadata !1901, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 %2, metadata !1902, metadata !DIExpression()), !dbg !2891
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2893
  %6 = lshr i8 %2, 5, !dbg !2894
  %7 = zext i8 %6 to i64, !dbg !2894
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2895
  call void @llvm.dbg.value(metadata ptr %8, metadata !1903, metadata !DIExpression()), !dbg !2891
  %9 = and i8 %2, 31, !dbg !2896
  %10 = zext i8 %9 to i32, !dbg !2896
  call void @llvm.dbg.value(metadata i32 %10, metadata !1905, metadata !DIExpression()), !dbg !2891
  %11 = load i32, ptr %8, align 4, !dbg !2897, !tbaa !866
  %12 = lshr i32 %11, %10, !dbg !2898
  call void @llvm.dbg.value(metadata i32 %12, metadata !1906, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2891
  %13 = and i32 %12, 1, !dbg !2899
  %14 = xor i32 %13, 1, !dbg !2899
  %15 = shl nuw i32 %14, %10, !dbg !2900
  %16 = xor i32 %15, %11, !dbg !2901
  store i32 %16, ptr %8, align 4, !dbg !2901, !tbaa !866
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2902
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2903
  ret ptr %17, !dbg !2904
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2905 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8 %1, metadata !2910, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata ptr %0, metadata !2882, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i64 -1, metadata !2883, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 %1, metadata !2884, metadata !DIExpression()), !dbg !2912
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2914
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2885, metadata !DIExpression()), !dbg !2915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2916, !tbaa.struct !2890
  call void @llvm.dbg.value(metadata ptr %3, metadata !1899, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8 %1, metadata !1900, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 1, metadata !1901, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8 %1, metadata !1902, metadata !DIExpression()), !dbg !2917
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2919
  %5 = lshr i8 %1, 5, !dbg !2920
  %6 = zext i8 %5 to i64, !dbg !2920
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2921
  call void @llvm.dbg.value(metadata ptr %7, metadata !1903, metadata !DIExpression()), !dbg !2917
  %8 = and i8 %1, 31, !dbg !2922
  %9 = zext i8 %8 to i32, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %9, metadata !1905, metadata !DIExpression()), !dbg !2917
  %10 = load i32, ptr %7, align 4, !dbg !2923, !tbaa !866
  %11 = lshr i32 %10, %9, !dbg !2924
  call void @llvm.dbg.value(metadata i32 %11, metadata !1906, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2917
  %12 = and i32 %11, 1, !dbg !2925
  %13 = xor i32 %12, 1, !dbg !2925
  %14 = shl nuw i32 %13, %9, !dbg !2926
  %15 = xor i32 %14, %10, !dbg !2927
  store i32 %15, ptr %7, align 4, !dbg !2927, !tbaa !866
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2928
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2929
  ret ptr %16, !dbg !2930
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2931 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata ptr %0, metadata !2909, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 58, metadata !2910, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata ptr %0, metadata !2882, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 -1, metadata !2883, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8 58, metadata !2884, metadata !DIExpression()), !dbg !2937
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2939
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2885, metadata !DIExpression()), !dbg !2940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2941, !tbaa.struct !2890
  call void @llvm.dbg.value(metadata ptr %2, metadata !1899, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 58, metadata !1900, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 1, metadata !1901, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 58, metadata !1902, metadata !DIExpression()), !dbg !2942
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2944
  call void @llvm.dbg.value(metadata ptr %3, metadata !1903, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 26, metadata !1905, metadata !DIExpression()), !dbg !2942
  %4 = load i32, ptr %3, align 4, !dbg !2945, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %4, metadata !1906, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2942
  %5 = or i32 %4, 67108864, !dbg !2946
  store i32 %5, ptr %3, align 4, !dbg !2946, !tbaa !866
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2947
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2948
  ret ptr %6, !dbg !2949
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2950 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %0, metadata !2882, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %1, metadata !2883, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 58, metadata !2884, metadata !DIExpression()), !dbg !2955
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2957
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2885, metadata !DIExpression()), !dbg !2958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2959, !tbaa.struct !2890
  call void @llvm.dbg.value(metadata ptr %3, metadata !1899, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 58, metadata !1900, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 1, metadata !1901, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 58, metadata !1902, metadata !DIExpression()), !dbg !2960
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2962
  call void @llvm.dbg.value(metadata ptr %4, metadata !1903, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 26, metadata !1905, metadata !DIExpression()), !dbg !2960
  %5 = load i32, ptr %4, align 4, !dbg !2963, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %5, metadata !1906, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2960
  %6 = or i32 %5, 67108864, !dbg !2964
  store i32 %6, ptr %4, align 4, !dbg !2964, !tbaa !866
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2965
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2966
  ret ptr %7, !dbg !2967
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2968 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2789, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2974
  call void @llvm.dbg.value(metadata i32 %0, metadata !2970, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 %1, metadata !2971, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata ptr %2, metadata !2972, metadata !DIExpression()), !dbg !2976
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2977
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2973, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i32 %1, metadata !2784, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 0, metadata !2789, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2979
  %5 = icmp eq i32 %1, 10, !dbg !2980
  br i1 %5, label %6, label %7, !dbg !2981

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2982, !noalias !2983
  unreachable, !dbg !2982

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2789, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2979
  store i32 %1, ptr %4, align 8, !dbg !2986, !tbaa.struct !2890
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2986
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2986
  call void @llvm.dbg.value(metadata ptr %4, metadata !1899, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i8 58, metadata !1900, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 1, metadata !1901, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i8 58, metadata !1902, metadata !DIExpression()), !dbg !2987
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2989
  call void @llvm.dbg.value(metadata ptr %9, metadata !1903, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 26, metadata !1905, metadata !DIExpression()), !dbg !2987
  %10 = load i32, ptr %9, align 4, !dbg !2990, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %10, metadata !1906, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2987
  %11 = or i32 %10, 67108864, !dbg !2991
  store i32 %11, ptr %9, align 4, !dbg !2991, !tbaa !866
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2992
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2993
  ret ptr %12, !dbg !2994
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2995 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2999, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %1, metadata !3000, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %2, metadata !3001, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %3, metadata !3002, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i32 %0, metadata !3004, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %1, metadata !3009, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %2, metadata !3010, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %3, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 -1, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3016
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3013, metadata !DIExpression()), !dbg !3017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3018, !tbaa.struct !2890
  call void @llvm.dbg.value(metadata ptr %5, metadata !1939, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata ptr %1, metadata !1940, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata ptr %2, metadata !1941, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata ptr %5, metadata !1939, metadata !DIExpression()), !dbg !3019
  store i32 10, ptr %5, align 8, !dbg !3021, !tbaa !1882
  %6 = icmp ne ptr %1, null, !dbg !3022
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3023
  br i1 %8, label %10, label %9, !dbg !3023

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3024
  unreachable, !dbg !3024

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3025
  store ptr %1, ptr %11, align 8, !dbg !3026, !tbaa !1953
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3027
  store ptr %2, ptr %12, align 8, !dbg !3028, !tbaa !1956
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3029
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3030
  ret ptr %13, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3005 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3004, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %1, metadata !3009, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %2, metadata !3010, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %3, metadata !3011, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %4, metadata !3012, metadata !DIExpression()), !dbg !3032
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !3033
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3013, metadata !DIExpression()), !dbg !3034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3035, !tbaa.struct !2890
  call void @llvm.dbg.value(metadata ptr %6, metadata !1939, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %1, metadata !1940, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %2, metadata !1941, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %6, metadata !1939, metadata !DIExpression()), !dbg !3036
  store i32 10, ptr %6, align 8, !dbg !3038, !tbaa !1882
  %7 = icmp ne ptr %1, null, !dbg !3039
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3040
  br i1 %9, label %11, label %10, !dbg !3040

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !3041
  unreachable, !dbg !3041

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3042
  store ptr %1, ptr %12, align 8, !dbg !3043, !tbaa !1953
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3044
  store ptr %2, ptr %13, align 8, !dbg !3045, !tbaa !1956
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3046
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !3047
  ret ptr %14, !dbg !3048
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3049 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %1, metadata !3054, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %2, metadata !3055, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr %0, metadata !3000, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr %1, metadata !3001, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr %2, metadata !3002, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %0, metadata !3009, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %1, metadata !3010, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %2, metadata !3011, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 -1, metadata !3012, metadata !DIExpression()), !dbg !3059
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3061
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3013, metadata !DIExpression()), !dbg !3062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3063, !tbaa.struct !2890
  call void @llvm.dbg.value(metadata ptr %4, metadata !1939, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %0, metadata !1940, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %1, metadata !1941, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %4, metadata !1939, metadata !DIExpression()), !dbg !3064
  store i32 10, ptr %4, align 8, !dbg !3066, !tbaa !1882
  %5 = icmp ne ptr %0, null, !dbg !3067
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3068
  br i1 %7, label %9, label %8, !dbg !3068

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3069
  unreachable, !dbg !3069

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3070
  store ptr %0, ptr %10, align 8, !dbg !3071, !tbaa !1953
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3072
  store ptr %1, ptr %11, align 8, !dbg !3073, !tbaa !1956
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3074
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3075
  ret ptr %12, !dbg !3076
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3077 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %1, metadata !3082, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %2, metadata !3083, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %3, metadata !3084, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata ptr %0, metadata !3009, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata ptr %1, metadata !3010, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata ptr %2, metadata !3011, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 %3, metadata !3012, metadata !DIExpression()), !dbg !3086
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3088
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3013, metadata !DIExpression()), !dbg !3089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3090, !tbaa.struct !2890
  call void @llvm.dbg.value(metadata ptr %5, metadata !1939, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata ptr %0, metadata !1940, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata ptr %1, metadata !1941, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata ptr %5, metadata !1939, metadata !DIExpression()), !dbg !3091
  store i32 10, ptr %5, align 8, !dbg !3093, !tbaa !1882
  %6 = icmp ne ptr %0, null, !dbg !3094
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3095
  br i1 %8, label %10, label %9, !dbg !3095

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3096
  unreachable, !dbg !3096

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3097
  store ptr %0, ptr %11, align 8, !dbg !3098, !tbaa !1953
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3099
  store ptr %1, ptr %12, align 8, !dbg !3100, !tbaa !1956
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3101
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3102
  ret ptr %13, !dbg !3103
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3104 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3108, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %1, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %2, metadata !3110, metadata !DIExpression()), !dbg !3111
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3112
  ret ptr %4, !dbg !3113
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3114 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3118, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3119, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 0, metadata !3108, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %1, metadata !3110, metadata !DIExpression()), !dbg !3121
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3123
  ret ptr %3, !dbg !3124
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3125 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3129, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %1, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %0, metadata !3108, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata ptr %1, metadata !3109, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 -1, metadata !3110, metadata !DIExpression()), !dbg !3132
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3134
  ret ptr %3, !dbg !3135
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3136 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i32 0, metadata !3129, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %0, metadata !3130, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 0, metadata !3108, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 -1, metadata !3110, metadata !DIExpression()), !dbg !3144
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3146
  ret ptr %2, !dbg !3147
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3148 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3187, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %1, metadata !3188, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %2, metadata !3189, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %3, metadata !3190, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %4, metadata !3191, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %5, metadata !3192, metadata !DIExpression()), !dbg !3193
  %7 = icmp eq ptr %1, null, !dbg !3194
  br i1 %7, label %10, label %8, !dbg !3196

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3197
  br label %12, !dbg !3197

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.81, ptr noundef %2, ptr noundef %3) #36, !dbg !3198
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.3.83, i32 noundef 5) #36, !dbg !3199
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3199
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %0), !dbg !3200
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.5.85, i32 noundef 5) #36, !dbg !3201
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.86) #36, !dbg !3201
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %0), !dbg !3202
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
  ], !dbg !3203

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.7.87, i32 noundef 5) #36, !dbg !3204
  %21 = load ptr, ptr %4, align 8, !dbg !3204, !tbaa !800
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3204
  br label %147, !dbg !3206

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.8.88, i32 noundef 5) #36, !dbg !3207
  %25 = load ptr, ptr %4, align 8, !dbg !3207, !tbaa !800
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3207
  %27 = load ptr, ptr %26, align 8, !dbg !3207, !tbaa !800
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3207
  br label %147, !dbg !3208

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.9.89, i32 noundef 5) #36, !dbg !3209
  %31 = load ptr, ptr %4, align 8, !dbg !3209, !tbaa !800
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3209
  %33 = load ptr, ptr %32, align 8, !dbg !3209, !tbaa !800
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3209
  %35 = load ptr, ptr %34, align 8, !dbg !3209, !tbaa !800
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3209
  br label %147, !dbg !3210

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.10.90, i32 noundef 5) #36, !dbg !3211
  %39 = load ptr, ptr %4, align 8, !dbg !3211, !tbaa !800
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3211
  %41 = load ptr, ptr %40, align 8, !dbg !3211, !tbaa !800
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3211
  %43 = load ptr, ptr %42, align 8, !dbg !3211, !tbaa !800
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3211
  %45 = load ptr, ptr %44, align 8, !dbg !3211, !tbaa !800
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3211
  br label %147, !dbg !3212

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.11.91, i32 noundef 5) #36, !dbg !3213
  %49 = load ptr, ptr %4, align 8, !dbg !3213, !tbaa !800
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3213
  %51 = load ptr, ptr %50, align 8, !dbg !3213, !tbaa !800
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3213
  %53 = load ptr, ptr %52, align 8, !dbg !3213, !tbaa !800
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3213
  %55 = load ptr, ptr %54, align 8, !dbg !3213, !tbaa !800
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3213
  %57 = load ptr, ptr %56, align 8, !dbg !3213, !tbaa !800
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3213
  br label %147, !dbg !3214

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.12.92, i32 noundef 5) #36, !dbg !3215
  %61 = load ptr, ptr %4, align 8, !dbg !3215, !tbaa !800
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3215
  %63 = load ptr, ptr %62, align 8, !dbg !3215, !tbaa !800
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3215
  %65 = load ptr, ptr %64, align 8, !dbg !3215, !tbaa !800
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3215
  %67 = load ptr, ptr %66, align 8, !dbg !3215, !tbaa !800
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3215
  %69 = load ptr, ptr %68, align 8, !dbg !3215, !tbaa !800
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3215
  %71 = load ptr, ptr %70, align 8, !dbg !3215, !tbaa !800
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3215
  br label %147, !dbg !3216

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.13.93, i32 noundef 5) #36, !dbg !3217
  %75 = load ptr, ptr %4, align 8, !dbg !3217, !tbaa !800
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3217
  %77 = load ptr, ptr %76, align 8, !dbg !3217, !tbaa !800
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3217
  %79 = load ptr, ptr %78, align 8, !dbg !3217, !tbaa !800
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3217
  %81 = load ptr, ptr %80, align 8, !dbg !3217, !tbaa !800
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3217
  %83 = load ptr, ptr %82, align 8, !dbg !3217, !tbaa !800
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3217
  %85 = load ptr, ptr %84, align 8, !dbg !3217, !tbaa !800
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3217
  %87 = load ptr, ptr %86, align 8, !dbg !3217, !tbaa !800
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3217
  br label %147, !dbg !3218

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.14.94, i32 noundef 5) #36, !dbg !3219
  %91 = load ptr, ptr %4, align 8, !dbg !3219, !tbaa !800
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3219
  %93 = load ptr, ptr %92, align 8, !dbg !3219, !tbaa !800
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3219
  %95 = load ptr, ptr %94, align 8, !dbg !3219, !tbaa !800
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3219
  %97 = load ptr, ptr %96, align 8, !dbg !3219, !tbaa !800
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3219
  %99 = load ptr, ptr %98, align 8, !dbg !3219, !tbaa !800
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3219
  %101 = load ptr, ptr %100, align 8, !dbg !3219, !tbaa !800
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3219
  %103 = load ptr, ptr %102, align 8, !dbg !3219, !tbaa !800
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3219
  %105 = load ptr, ptr %104, align 8, !dbg !3219, !tbaa !800
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3219
  br label %147, !dbg !3220

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.15.95, i32 noundef 5) #36, !dbg !3221
  %109 = load ptr, ptr %4, align 8, !dbg !3221, !tbaa !800
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3221
  %111 = load ptr, ptr %110, align 8, !dbg !3221, !tbaa !800
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3221
  %113 = load ptr, ptr %112, align 8, !dbg !3221, !tbaa !800
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3221
  %115 = load ptr, ptr %114, align 8, !dbg !3221, !tbaa !800
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3221
  %117 = load ptr, ptr %116, align 8, !dbg !3221, !tbaa !800
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3221
  %119 = load ptr, ptr %118, align 8, !dbg !3221, !tbaa !800
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3221
  %121 = load ptr, ptr %120, align 8, !dbg !3221, !tbaa !800
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3221
  %123 = load ptr, ptr %122, align 8, !dbg !3221, !tbaa !800
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3221
  %125 = load ptr, ptr %124, align 8, !dbg !3221, !tbaa !800
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3221
  br label %147, !dbg !3222

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.16.96, i32 noundef 5) #36, !dbg !3223
  %129 = load ptr, ptr %4, align 8, !dbg !3223, !tbaa !800
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3223
  %131 = load ptr, ptr %130, align 8, !dbg !3223, !tbaa !800
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3223
  %133 = load ptr, ptr %132, align 8, !dbg !3223, !tbaa !800
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3223
  %135 = load ptr, ptr %134, align 8, !dbg !3223, !tbaa !800
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3223
  %137 = load ptr, ptr %136, align 8, !dbg !3223, !tbaa !800
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3223
  %139 = load ptr, ptr %138, align 8, !dbg !3223, !tbaa !800
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3223
  %141 = load ptr, ptr %140, align 8, !dbg !3223, !tbaa !800
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3223
  %143 = load ptr, ptr %142, align 8, !dbg !3223, !tbaa !800
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3223
  %145 = load ptr, ptr %144, align 8, !dbg !3223, !tbaa !800
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3223
  br label %147, !dbg !3224

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3225
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3226 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3230, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %1, metadata !3231, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %2, metadata !3232, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %3, metadata !3233, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %4, metadata !3234, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 0, metadata !3235, metadata !DIExpression()), !dbg !3236
  br label %6, !dbg !3237

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3239
  call void @llvm.dbg.value(metadata i64 %7, metadata !3235, metadata !DIExpression()), !dbg !3236
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3240
  %9 = load ptr, ptr %8, align 8, !dbg !3240, !tbaa !800
  %10 = icmp eq ptr %9, null, !dbg !3242
  %11 = add i64 %7, 1, !dbg !3243
  call void @llvm.dbg.value(metadata i64 %11, metadata !3235, metadata !DIExpression()), !dbg !3236
  br i1 %10, label %12, label %6, !dbg !3242, !llvm.loop !3244

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3246
  ret void, !dbg !3247
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3248 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3263, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %1, metadata !3264, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %2, metadata !3265, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %3, metadata !3266, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3267, metadata !DIExpression()), !dbg !3272
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3273
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3269, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 0, metadata !3268, metadata !DIExpression()), !dbg !3271
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3268, metadata !DIExpression()), !dbg !3271
  %10 = icmp sgt i32 %9, -1, !dbg !3275
  br i1 %10, label %18, label %11, !dbg !3275

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3275
  store i32 %12, ptr %7, align 8, !dbg !3275
  %13 = icmp ult i32 %9, -7, !dbg !3275
  br i1 %13, label %14, label %18, !dbg !3275

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3275
  %16 = sext i32 %9 to i64, !dbg !3275
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3275
  br label %22, !dbg !3275

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3275
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3275
  store ptr %21, ptr %4, align 8, !dbg !3275
  br label %22, !dbg !3275

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3275
  %25 = load ptr, ptr %24, align 8, !dbg !3275
  store ptr %25, ptr %6, align 8, !dbg !3278, !tbaa !800
  %26 = icmp eq ptr %25, null, !dbg !3279
  br i1 %26, label %197, label %27, !dbg !3280

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 1, metadata !3268, metadata !DIExpression()), !dbg !3271
  %28 = icmp sgt i32 %23, -1, !dbg !3275
  br i1 %28, label %36, label %29, !dbg !3275

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3275
  store i32 %30, ptr %7, align 8, !dbg !3275
  %31 = icmp ult i32 %23, -7, !dbg !3275
  br i1 %31, label %32, label %36, !dbg !3275

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3275
  %34 = sext i32 %23 to i64, !dbg !3275
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3275
  br label %40, !dbg !3275

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3275
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3275
  store ptr %39, ptr %4, align 8, !dbg !3275
  br label %40, !dbg !3275

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3275
  %43 = load ptr, ptr %42, align 8, !dbg !3275
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3281
  store ptr %43, ptr %44, align 8, !dbg !3278, !tbaa !800
  %45 = icmp eq ptr %43, null, !dbg !3279
  br i1 %45, label %197, label %46, !dbg !3280

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 2, metadata !3268, metadata !DIExpression()), !dbg !3271
  %47 = icmp sgt i32 %41, -1, !dbg !3275
  br i1 %47, label %55, label %48, !dbg !3275

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3275
  store i32 %49, ptr %7, align 8, !dbg !3275
  %50 = icmp ult i32 %41, -7, !dbg !3275
  br i1 %50, label %51, label %55, !dbg !3275

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3275
  %53 = sext i32 %41 to i64, !dbg !3275
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3275
  br label %59, !dbg !3275

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3275
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3275
  store ptr %58, ptr %4, align 8, !dbg !3275
  br label %59, !dbg !3275

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3275
  %62 = load ptr, ptr %61, align 8, !dbg !3275
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3281
  store ptr %62, ptr %63, align 8, !dbg !3278, !tbaa !800
  %64 = icmp eq ptr %62, null, !dbg !3279
  br i1 %64, label %197, label %65, !dbg !3280

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 3, metadata !3268, metadata !DIExpression()), !dbg !3271
  %66 = icmp sgt i32 %60, -1, !dbg !3275
  br i1 %66, label %74, label %67, !dbg !3275

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3275
  store i32 %68, ptr %7, align 8, !dbg !3275
  %69 = icmp ult i32 %60, -7, !dbg !3275
  br i1 %69, label %70, label %74, !dbg !3275

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3275
  %72 = sext i32 %60 to i64, !dbg !3275
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3275
  br label %78, !dbg !3275

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3275
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3275
  store ptr %77, ptr %4, align 8, !dbg !3275
  br label %78, !dbg !3275

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3275
  %81 = load ptr, ptr %80, align 8, !dbg !3275
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3281
  store ptr %81, ptr %82, align 8, !dbg !3278, !tbaa !800
  %83 = icmp eq ptr %81, null, !dbg !3279
  br i1 %83, label %197, label %84, !dbg !3280

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 4, metadata !3268, metadata !DIExpression()), !dbg !3271
  %85 = icmp sgt i32 %79, -1, !dbg !3275
  br i1 %85, label %93, label %86, !dbg !3275

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3275
  store i32 %87, ptr %7, align 8, !dbg !3275
  %88 = icmp ult i32 %79, -7, !dbg !3275
  br i1 %88, label %89, label %93, !dbg !3275

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3275
  %91 = sext i32 %79 to i64, !dbg !3275
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3275
  br label %97, !dbg !3275

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3275
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3275
  store ptr %96, ptr %4, align 8, !dbg !3275
  br label %97, !dbg !3275

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3275
  %100 = load ptr, ptr %99, align 8, !dbg !3275
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3281
  store ptr %100, ptr %101, align 8, !dbg !3278, !tbaa !800
  %102 = icmp eq ptr %100, null, !dbg !3279
  br i1 %102, label %197, label %103, !dbg !3280

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 5, metadata !3268, metadata !DIExpression()), !dbg !3271
  %104 = icmp sgt i32 %98, -1, !dbg !3275
  br i1 %104, label %112, label %105, !dbg !3275

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3275
  store i32 %106, ptr %7, align 8, !dbg !3275
  %107 = icmp ult i32 %98, -7, !dbg !3275
  br i1 %107, label %108, label %112, !dbg !3275

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3275
  %110 = sext i32 %98 to i64, !dbg !3275
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3275
  br label %116, !dbg !3275

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3275
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3275
  store ptr %115, ptr %4, align 8, !dbg !3275
  br label %116, !dbg !3275

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3275
  %119 = load ptr, ptr %118, align 8, !dbg !3275
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3281
  store ptr %119, ptr %120, align 8, !dbg !3278, !tbaa !800
  %121 = icmp eq ptr %119, null, !dbg !3279
  br i1 %121, label %197, label %122, !dbg !3280

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 6, metadata !3268, metadata !DIExpression()), !dbg !3271
  %123 = icmp sgt i32 %117, -1, !dbg !3275
  br i1 %123, label %131, label %124, !dbg !3275

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3275
  store i32 %125, ptr %7, align 8, !dbg !3275
  %126 = icmp ult i32 %117, -7, !dbg !3275
  br i1 %126, label %127, label %131, !dbg !3275

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3275
  %129 = sext i32 %117 to i64, !dbg !3275
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3275
  br label %135, !dbg !3275

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3275
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3275
  store ptr %134, ptr %4, align 8, !dbg !3275
  br label %135, !dbg !3275

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3275
  %138 = load ptr, ptr %137, align 8, !dbg !3275
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3281
  store ptr %138, ptr %139, align 8, !dbg !3278, !tbaa !800
  %140 = icmp eq ptr %138, null, !dbg !3279
  br i1 %140, label %197, label %141, !dbg !3280

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 7, metadata !3268, metadata !DIExpression()), !dbg !3271
  %142 = icmp sgt i32 %136, -1, !dbg !3275
  br i1 %142, label %150, label %143, !dbg !3275

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3275
  store i32 %144, ptr %7, align 8, !dbg !3275
  %145 = icmp ult i32 %136, -7, !dbg !3275
  br i1 %145, label %146, label %150, !dbg !3275

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3275
  %148 = sext i32 %136 to i64, !dbg !3275
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3275
  br label %154, !dbg !3275

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3275
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3275
  store ptr %153, ptr %4, align 8, !dbg !3275
  br label %154, !dbg !3275

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3275
  %157 = load ptr, ptr %156, align 8, !dbg !3275
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3281
  store ptr %157, ptr %158, align 8, !dbg !3278, !tbaa !800
  %159 = icmp eq ptr %157, null, !dbg !3279
  br i1 %159, label %197, label %160, !dbg !3280

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 8, metadata !3268, metadata !DIExpression()), !dbg !3271
  %161 = icmp sgt i32 %155, -1, !dbg !3275
  br i1 %161, label %169, label %162, !dbg !3275

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3275
  store i32 %163, ptr %7, align 8, !dbg !3275
  %164 = icmp ult i32 %155, -7, !dbg !3275
  br i1 %164, label %165, label %169, !dbg !3275

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3275
  %167 = sext i32 %155 to i64, !dbg !3275
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3275
  br label %173, !dbg !3275

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3275
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3275
  store ptr %172, ptr %4, align 8, !dbg !3275
  br label %173, !dbg !3275

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3275
  %176 = load ptr, ptr %175, align 8, !dbg !3275
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3281
  store ptr %176, ptr %177, align 8, !dbg !3278, !tbaa !800
  %178 = icmp eq ptr %176, null, !dbg !3279
  br i1 %178, label %197, label %179, !dbg !3280

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 9, metadata !3268, metadata !DIExpression()), !dbg !3271
  %180 = icmp sgt i32 %174, -1, !dbg !3275
  br i1 %180, label %188, label %181, !dbg !3275

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3275
  store i32 %182, ptr %7, align 8, !dbg !3275
  %183 = icmp ult i32 %174, -7, !dbg !3275
  br i1 %183, label %184, label %188, !dbg !3275

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3275
  %186 = sext i32 %174 to i64, !dbg !3275
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3275
  br label %191, !dbg !3275

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3275
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3275
  store ptr %190, ptr %4, align 8, !dbg !3275
  br label %191, !dbg !3275

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3275
  %193 = load ptr, ptr %192, align 8, !dbg !3275
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3281
  store ptr %193, ptr %194, align 8, !dbg !3278, !tbaa !800
  %195 = icmp eq ptr %193, null, !dbg !3279
  %196 = select i1 %195, i64 9, i64 10, !dbg !3280
  br label %197, !dbg !3280

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3282
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3283
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3284
  ret void, !dbg !3284
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3285 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %1, metadata !3290, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %2, metadata !3291, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %3, metadata !3292, metadata !DIExpression()), !dbg !3294
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !3295
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3293, metadata !DIExpression()), !dbg !3296
  call void @llvm.va_start(ptr nonnull %5), !dbg !3297
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !3298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3298, !tbaa.struct !1211
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3298
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !3298
  call void @llvm.va_end(ptr nonnull %5), !dbg !3299
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !3300
  ret void, !dbg !3300
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3301 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3302, !tbaa !800
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %1), !dbg !3302
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.17.101, i32 noundef 5) #36, !dbg !3303
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.102) #36, !dbg !3303
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.19.103, i32 noundef 5) #36, !dbg !3304
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.104, ptr noundef nonnull @.str.21.105) #36, !dbg !3304
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.22.106, i32 noundef 5) #36, !dbg !3305
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.107) #36, !dbg !3305
  ret void, !dbg !3306
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3307 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %1, metadata !3313, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %2, metadata !3314, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %1, metadata !3319, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %2, metadata !3320, metadata !DIExpression()), !dbg !3321
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %4, metadata !3324, metadata !DIExpression()), !dbg !3329
  %5 = icmp eq ptr %4, null, !dbg !3331
  br i1 %5, label %6, label %7, !dbg !3333

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3334
  unreachable, !dbg !3334

7:                                                ; preds = %3
  ret ptr %4, !dbg !3335
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3317 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %1, metadata !3319, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %2, metadata !3320, metadata !DIExpression()), !dbg !3336
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3337
  call void @llvm.dbg.value(metadata ptr %4, metadata !3324, metadata !DIExpression()), !dbg !3338
  %5 = icmp eq ptr %4, null, !dbg !3340
  br i1 %5, label %6, label %7, !dbg !3341

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3342
  unreachable, !dbg !3342

7:                                                ; preds = %3
  ret ptr %4, !dbg !3343
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3344 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3348, metadata !DIExpression()), !dbg !3349
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3350
  call void @llvm.dbg.value(metadata ptr %2, metadata !3324, metadata !DIExpression()), !dbg !3351
  %3 = icmp eq ptr %2, null, !dbg !3353
  br i1 %3, label %4, label %5, !dbg !3354

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3355
  unreachable, !dbg !3355

5:                                                ; preds = %1
  ret ptr %2, !dbg !3356
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3357 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3358 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %0, metadata !3364, metadata !DIExpression()), !dbg !3368
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3370
  call void @llvm.dbg.value(metadata ptr %2, metadata !3324, metadata !DIExpression()), !dbg !3371
  %3 = icmp eq ptr %2, null, !dbg !3373
  br i1 %3, label %4, label %5, !dbg !3374

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3375
  unreachable, !dbg !3375

5:                                                ; preds = %1
  ret ptr %2, !dbg !3376
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3377 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3381, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 %0, metadata !3348, metadata !DIExpression()), !dbg !3383
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3385
  call void @llvm.dbg.value(metadata ptr %2, metadata !3324, metadata !DIExpression()), !dbg !3386
  %3 = icmp eq ptr %2, null, !dbg !3388
  br i1 %3, label %4, label %5, !dbg !3389

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3390
  unreachable, !dbg !3390

5:                                                ; preds = %1
  ret ptr %2, !dbg !3391
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3392 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %0, metadata !3399, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3404
  %3 = icmp eq i64 %1, 0, !dbg !3406
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3406
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3407
  call void @llvm.dbg.value(metadata ptr %5, metadata !3324, metadata !DIExpression()), !dbg !3408
  %6 = icmp eq ptr %5, null, !dbg !3410
  br i1 %6, label %7, label %8, !dbg !3411

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3412
  unreachable, !dbg !3412

8:                                                ; preds = %2
  ret ptr %5, !dbg !3413
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3414 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3415 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3419, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i64 %1, metadata !3420, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata ptr %0, metadata !3422, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %1, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %0, metadata !3399, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3428
  %3 = icmp eq i64 %1, 0, !dbg !3430
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3430
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3431
  call void @llvm.dbg.value(metadata ptr %5, metadata !3324, metadata !DIExpression()), !dbg !3432
  %6 = icmp eq ptr %5, null, !dbg !3434
  br i1 %6, label %7, label %8, !dbg !3435

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3436
  unreachable, !dbg !3436

8:                                                ; preds = %2
  ret ptr %5, !dbg !3437
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3438 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %2, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata ptr %0, metadata !3446, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 %2, metadata !3450, metadata !DIExpression()), !dbg !3451
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3453
  call void @llvm.dbg.value(metadata ptr %4, metadata !3324, metadata !DIExpression()), !dbg !3454
  %5 = icmp eq ptr %4, null, !dbg !3456
  br i1 %5, label %6, label %7, !dbg !3457

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3458
  unreachable, !dbg !3458

7:                                                ; preds = %3
  ret ptr %4, !dbg !3459
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3460 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3464, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr null, metadata !3316, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %0, metadata !3319, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3467
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3469
  call void @llvm.dbg.value(metadata ptr %3, metadata !3324, metadata !DIExpression()), !dbg !3470
  %4 = icmp eq ptr %3, null, !dbg !3472
  br i1 %4, label %5, label %6, !dbg !3473

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3474
  unreachable, !dbg !3474

6:                                                ; preds = %2
  ret ptr %3, !dbg !3475
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3476 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3480, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %1, metadata !3481, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr null, metadata !3442, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %0, metadata !3443, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %1, metadata !3444, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata ptr null, metadata !3446, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %0, metadata !3449, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()), !dbg !3485
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3487
  call void @llvm.dbg.value(metadata ptr %3, metadata !3324, metadata !DIExpression()), !dbg !3488
  %4 = icmp eq ptr %3, null, !dbg !3490
  br i1 %4, label %5, label %6, !dbg !3491

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3492
  unreachable, !dbg !3492

6:                                                ; preds = %2
  ret ptr %3, !dbg !3493
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3494 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3498, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata ptr %1, metadata !3499, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata ptr %0, metadata !737, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata ptr %1, metadata !738, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 1, metadata !739, metadata !DIExpression()), !dbg !3501
  %3 = load i64, ptr %1, align 8, !dbg !3503, !tbaa !2606
  call void @llvm.dbg.value(metadata i64 %3, metadata !740, metadata !DIExpression()), !dbg !3501
  %4 = icmp eq ptr %0, null, !dbg !3504
  br i1 %4, label %5, label %8, !dbg !3506

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3507
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3510
  br label %15, !dbg !3510

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3511
  %10 = add nuw i64 %9, 1, !dbg !3511
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3511
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3511
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %13, metadata !740, metadata !DIExpression()), !dbg !3501
  br i1 %12, label %14, label %15, !dbg !3514

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3515
  unreachable, !dbg !3515

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3501
  call void @llvm.dbg.value(metadata i64 %16, metadata !740, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %16, metadata !3319, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 1, metadata !3320, metadata !DIExpression()), !dbg !3516
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3518
  call void @llvm.dbg.value(metadata ptr %17, metadata !3324, metadata !DIExpression()), !dbg !3519
  %18 = icmp eq ptr %17, null, !dbg !3521
  br i1 %18, label %19, label %20, !dbg !3522

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3523
  unreachable, !dbg !3523

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !737, metadata !DIExpression()), !dbg !3501
  store i64 %16, ptr %1, align 8, !dbg !3524, !tbaa !2606
  ret ptr %17, !dbg !3525
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !732 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !737, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %1, metadata !738, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i64 %2, metadata !739, metadata !DIExpression()), !dbg !3526
  %4 = load i64, ptr %1, align 8, !dbg !3527, !tbaa !2606
  call void @llvm.dbg.value(metadata i64 %4, metadata !740, metadata !DIExpression()), !dbg !3526
  %5 = icmp eq ptr %0, null, !dbg !3528
  br i1 %5, label %6, label %13, !dbg !3529

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3530
  br i1 %7, label %8, label %20, !dbg !3531

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %9, metadata !740, metadata !DIExpression()), !dbg !3526
  %10 = icmp ugt i64 %2, 128, !dbg !3534
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %12, metadata !740, metadata !DIExpression()), !dbg !3526
  br label %20, !dbg !3536

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3537
  %15 = add nuw i64 %14, 1, !dbg !3537
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3537
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3537
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3537
  call void @llvm.dbg.value(metadata i64 %18, metadata !740, metadata !DIExpression()), !dbg !3526
  br i1 %17, label %19, label %20, !dbg !3538

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3539
  unreachable, !dbg !3539

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3526
  call void @llvm.dbg.value(metadata i64 %21, metadata !740, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %21, metadata !3319, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %2, metadata !3320, metadata !DIExpression()), !dbg !3540
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3542
  call void @llvm.dbg.value(metadata ptr %22, metadata !3324, metadata !DIExpression()), !dbg !3543
  %23 = icmp eq ptr %22, null, !dbg !3545
  br i1 %23, label %24, label %25, !dbg !3546

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3547
  unreachable, !dbg !3547

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !737, metadata !DIExpression()), !dbg !3526
  store i64 %21, ptr %1, align 8, !dbg !3548, !tbaa !2606
  ret ptr %22, !dbg !3549
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !744 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !752, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata ptr %1, metadata !753, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %2, metadata !754, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %3, metadata !755, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %4, metadata !756, metadata !DIExpression()), !dbg !3550
  %6 = load i64, ptr %1, align 8, !dbg !3551, !tbaa !2606
  call void @llvm.dbg.value(metadata i64 %6, metadata !757, metadata !DIExpression()), !dbg !3550
  %7 = ashr i64 %6, 1, !dbg !3552
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3552
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3552
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %10, metadata !758, metadata !DIExpression()), !dbg !3550
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %11, metadata !758, metadata !DIExpression()), !dbg !3550
  %12 = icmp sgt i64 %3, -1, !dbg !3555
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3557
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %15, metadata !758, metadata !DIExpression()), !dbg !3550
  %16 = icmp slt i64 %4, 0, !dbg !3558
  br i1 %16, label %17, label %30, !dbg !3558

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3558
  br i1 %18, label %19, label %24, !dbg !3558

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3558
  %21 = udiv i64 9223372036854775807, %20, !dbg !3558
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3558
  br i1 %23, label %46, label %43, !dbg !3558

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3558
  br i1 %25, label %43, label %26, !dbg !3558

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3558
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3558
  %29 = icmp ult i64 %28, %15, !dbg !3558
  br i1 %29, label %46, label %43, !dbg !3558

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3558
  br i1 %31, label %43, label %32, !dbg !3558

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3558
  br i1 %33, label %34, label %40, !dbg !3558

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3558
  br i1 %35, label %43, label %36, !dbg !3558

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3558
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3558
  %39 = icmp ult i64 %38, %4, !dbg !3558
  br i1 %39, label %46, label %43, !dbg !3558

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3558
  br i1 %42, label %46, label %43, !dbg !3558

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !759, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3550
  %44 = mul i64 %15, %4, !dbg !3558
  call void @llvm.dbg.value(metadata i64 %44, metadata !759, metadata !DIExpression()), !dbg !3550
  %45 = icmp slt i64 %44, 128, !dbg !3558
  br i1 %45, label %46, label %52, !dbg !3558

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !760, metadata !DIExpression()), !dbg !3550
  %48 = sdiv i64 %47, %4, !dbg !3559
  call void @llvm.dbg.value(metadata i64 %48, metadata !758, metadata !DIExpression()), !dbg !3550
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %51, metadata !759, metadata !DIExpression()), !dbg !3550
  br label %52, !dbg !3563

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3550
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3550
  call void @llvm.dbg.value(metadata i64 %54, metadata !759, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %53, metadata !758, metadata !DIExpression()), !dbg !3550
  %55 = icmp eq ptr %0, null, !dbg !3564
  br i1 %55, label %56, label %57, !dbg !3566

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3567, !tbaa !2606
  br label %57, !dbg !3568

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3569
  %59 = icmp slt i64 %58, %2, !dbg !3571
  br i1 %59, label %60, label %97, !dbg !3572

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3573
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3573
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %63, metadata !758, metadata !DIExpression()), !dbg !3550
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3574
  br i1 %66, label %96, label %67, !dbg !3574

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3575

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3575
  br i1 %69, label %70, label %75, !dbg !3575

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3575
  %72 = udiv i64 9223372036854775807, %71, !dbg !3575
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3575
  br i1 %74, label %96, label %94, !dbg !3575

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3575
  br i1 %76, label %94, label %77, !dbg !3575

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3575
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3575
  %80 = icmp ult i64 %79, %63, !dbg !3575
  br i1 %80, label %96, label %94, !dbg !3575

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3575
  br i1 %82, label %94, label %83, !dbg !3575

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3575
  br i1 %84, label %85, label %91, !dbg !3575

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3575
  br i1 %86, label %94, label %87, !dbg !3575

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3575
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3575
  %90 = icmp ult i64 %89, %4, !dbg !3575
  br i1 %90, label %96, label %94, !dbg !3575

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3575
  br i1 %93, label %96, label %94, !dbg !3575

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !759, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3550
  %95 = mul i64 %63, %4, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %95, metadata !759, metadata !DIExpression()), !dbg !3550
  br label %97, !dbg !3576

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3577
  unreachable, !dbg !3577

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3550
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3550
  call void @llvm.dbg.value(metadata i64 %99, metadata !759, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %98, metadata !758, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata ptr %0, metadata !3396, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 %99, metadata !3397, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata ptr %0, metadata !3399, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %99, metadata !3403, metadata !DIExpression()), !dbg !3580
  %100 = icmp eq i64 %99, 0, !dbg !3582
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3582
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !3583
  call void @llvm.dbg.value(metadata ptr %102, metadata !3324, metadata !DIExpression()), !dbg !3584
  %103 = icmp eq ptr %102, null, !dbg !3586
  br i1 %103, label %104, label %105, !dbg !3587

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3588
  unreachable, !dbg !3588

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !752, metadata !DIExpression()), !dbg !3550
  store i64 %98, ptr %1, align 8, !dbg !3589, !tbaa !2606
  ret ptr %102, !dbg !3590
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3591 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3593, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %0, metadata !3595, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 1, metadata !3598, metadata !DIExpression()), !dbg !3599
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3601
  call void @llvm.dbg.value(metadata ptr %2, metadata !3324, metadata !DIExpression()), !dbg !3602
  %3 = icmp eq ptr %2, null, !dbg !3604
  br i1 %3, label %4, label %5, !dbg !3605

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3606
  unreachable, !dbg !3606

5:                                                ; preds = %1
  ret ptr %2, !dbg !3607
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3608 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3596 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3595, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %1, metadata !3598, metadata !DIExpression()), !dbg !3609
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3610
  call void @llvm.dbg.value(metadata ptr %3, metadata !3324, metadata !DIExpression()), !dbg !3611
  %4 = icmp eq ptr %3, null, !dbg !3613
  br i1 %4, label %5, label %6, !dbg !3614

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3615
  unreachable, !dbg !3615

6:                                                ; preds = %2
  ret ptr %3, !dbg !3616
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3617 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3619, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 %0, metadata !3621, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 1, metadata !3624, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %0, metadata !3627, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 1, metadata !3630, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %0, metadata !3627, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 1, metadata !3630, metadata !DIExpression()), !dbg !3631
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %2, metadata !3324, metadata !DIExpression()), !dbg !3634
  %3 = icmp eq ptr %2, null, !dbg !3636
  br i1 %3, label %4, label %5, !dbg !3637

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3638
  unreachable, !dbg !3638

5:                                                ; preds = %1
  ret ptr %2, !dbg !3639
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3622 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3621, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %1, metadata !3624, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %0, metadata !3627, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %1, metadata !3630, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %0, metadata !3627, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %1, metadata !3630, metadata !DIExpression()), !dbg !3641
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3643
  call void @llvm.dbg.value(metadata ptr %3, metadata !3324, metadata !DIExpression()), !dbg !3644
  %4 = icmp eq ptr %3, null, !dbg !3646
  br i1 %4, label %5, label %6, !dbg !3647

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3648
  unreachable, !dbg !3648

6:                                                ; preds = %2
  ret ptr %3, !dbg !3649
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3650 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3654, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %1, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %1, metadata !3348, metadata !DIExpression()), !dbg !3657
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3659
  call void @llvm.dbg.value(metadata ptr %3, metadata !3324, metadata !DIExpression()), !dbg !3660
  %4 = icmp eq ptr %3, null, !dbg !3662
  br i1 %4, label %5, label %6, !dbg !3663

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3664
  unreachable, !dbg !3664

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3665, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata ptr %0, metadata !3671, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %1, metadata !3672, metadata !DIExpression()), !dbg !3673
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3675
  ret ptr %3, !dbg !3676
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3677 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3681, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %1, metadata !3682, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %1, metadata !3362, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %1, metadata !3364, metadata !DIExpression()), !dbg !3686
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3688
  call void @llvm.dbg.value(metadata ptr %3, metadata !3324, metadata !DIExpression()), !dbg !3689
  %4 = icmp eq ptr %3, null, !dbg !3691
  br i1 %4, label %5, label %6, !dbg !3692

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3693
  unreachable, !dbg !3693

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3665, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %0, metadata !3671, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %1, metadata !3672, metadata !DIExpression()), !dbg !3694
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3696
  ret ptr %3, !dbg !3697
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3698 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3702, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()), !dbg !3705
  %3 = add nsw i64 %1, 1, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %3, metadata !3362, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %3, metadata !3364, metadata !DIExpression()), !dbg !3709
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3711
  call void @llvm.dbg.value(metadata ptr %4, metadata !3324, metadata !DIExpression()), !dbg !3712
  %5 = icmp eq ptr %4, null, !dbg !3714
  br i1 %5, label %6, label %7, !dbg !3715

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3716
  unreachable, !dbg !3716

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3704, metadata !DIExpression()), !dbg !3705
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3717
  store i8 0, ptr %8, align 1, !dbg !3718, !tbaa !875
  call void @llvm.dbg.value(metadata ptr %4, metadata !3665, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata ptr %0, metadata !3671, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %1, metadata !3672, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3721
  ret ptr %4, !dbg !3722
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3723 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3725, metadata !DIExpression()), !dbg !3726
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3727
  %3 = add i64 %2, 1, !dbg !3728
  call void @llvm.dbg.value(metadata ptr %0, metadata !3654, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %3, metadata !3655, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %3, metadata !3348, metadata !DIExpression()), !dbg !3731
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3733
  call void @llvm.dbg.value(metadata ptr %4, metadata !3324, metadata !DIExpression()), !dbg !3734
  %5 = icmp eq ptr %4, null, !dbg !3736
  br i1 %5, label %6, label %7, !dbg !3737

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3738
  unreachable, !dbg !3738

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3665, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %0, metadata !3671, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %3, metadata !3672, metadata !DIExpression()), !dbg !3739
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3741
  ret ptr %4, !dbg !3742
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3743 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3748, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %1, metadata !3745, metadata !DIExpression()), !dbg !3749
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.122, ptr noundef nonnull @.str.2.123, i32 noundef 5) #36, !dbg !3748
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.124, ptr noundef %2) #36, !dbg !3748
  %3 = icmp eq i32 %1, 0, !dbg !3748
  tail call void @llvm.assume(i1 %3), !dbg !3748
  tail call void @abort() #38, !dbg !3750
  unreachable, !dbg !3750
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3751 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3789, metadata !DIExpression()), !dbg !3794
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3795
  call void @llvm.dbg.value(metadata i1 poison, metadata !3790, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3794
  call void @llvm.dbg.value(metadata ptr %0, metadata !3796, metadata !DIExpression()), !dbg !3799
  %3 = load i32, ptr %0, align 8, !dbg !3801, !tbaa !3802
  %4 = and i32 %3, 32, !dbg !3803
  %5 = icmp eq i32 %4, 0, !dbg !3803
  call void @llvm.dbg.value(metadata i1 %5, metadata !3792, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3794
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3804
  %7 = icmp eq i32 %6, 0, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %7, metadata !3793, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3794
  br i1 %5, label %8, label %18, !dbg !3806

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3808
  call void @llvm.dbg.value(metadata i1 %9, metadata !3790, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3794
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3809
  %11 = xor i1 %7, true, !dbg !3809
  %12 = sext i1 %11 to i32, !dbg !3809
  br i1 %10, label %21, label %13, !dbg !3809

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3810
  %15 = load i32, ptr %14, align 4, !dbg !3810, !tbaa !866
  %16 = icmp ne i32 %15, 9, !dbg !3811
  %17 = sext i1 %16 to i32, !dbg !3812
  br label %21, !dbg !3812

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3813

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3815
  store i32 0, ptr %20, align 4, !dbg !3817, !tbaa !866
  br label %21, !dbg !3815

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3794
  ret i32 %22, !dbg !3818
}

; Function Attrs: nounwind
declare !dbg !3819 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3823 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3861, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()), !dbg !3865
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3866
  call void @llvm.dbg.value(metadata i32 %2, metadata !3863, metadata !DIExpression()), !dbg !3865
  %3 = icmp slt i32 %2, 0, !dbg !3867
  br i1 %3, label %4, label %6, !dbg !3869

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3870
  br label %24, !dbg !3871

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3872
  %8 = icmp eq i32 %7, 0, !dbg !3872
  br i1 %8, label %13, label %9, !dbg !3874

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3875
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3876
  %12 = icmp eq i64 %11, -1, !dbg !3877
  br i1 %12, label %16, label %13, !dbg !3878

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3879
  %15 = icmp eq i32 %14, 0, !dbg !3879
  br i1 %15, label %16, label %18, !dbg !3880

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i32 0, metadata !3864, metadata !DIExpression()), !dbg !3865
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3881
  call void @llvm.dbg.value(metadata i32 %17, metadata !3864, metadata !DIExpression()), !dbg !3865
  br label %24, !dbg !3882

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3883
  %20 = load i32, ptr %19, align 4, !dbg !3883, !tbaa !866
  call void @llvm.dbg.value(metadata i32 %20, metadata !3862, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i32 0, metadata !3864, metadata !DIExpression()), !dbg !3865
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3881
  call void @llvm.dbg.value(metadata i32 %21, metadata !3864, metadata !DIExpression()), !dbg !3865
  %22 = icmp eq i32 %20, 0, !dbg !3884
  br i1 %22, label %24, label %23, !dbg !3882

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3886, !tbaa !866
  call void @llvm.dbg.value(metadata i32 -1, metadata !3864, metadata !DIExpression()), !dbg !3865
  br label %24, !dbg !3888

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3865
  ret i32 %25, !dbg !3889
}

; Function Attrs: nofree nounwind
declare !dbg !3890 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3891 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3892 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3893 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3896 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3934, metadata !DIExpression()), !dbg !3935
  %2 = icmp eq ptr %0, null, !dbg !3936
  br i1 %2, label %6, label %3, !dbg !3938

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3939
  %5 = icmp eq i32 %4, 0, !dbg !3939
  br i1 %5, label %6, label %8, !dbg !3940

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3941
  br label %16, !dbg !3942

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3943, metadata !DIExpression()), !dbg !3948
  %9 = load i32, ptr %0, align 8, !dbg !3950, !tbaa !3802
  %10 = and i32 %9, 256, !dbg !3952
  %11 = icmp eq i32 %10, 0, !dbg !3952
  br i1 %11, label %14, label %12, !dbg !3953

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3954
  br label %14, !dbg !3954

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3955
  br label %16, !dbg !3956

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3935
  ret i32 %17, !dbg !3957
}

; Function Attrs: nofree nounwind
declare !dbg !3958 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3959 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i64 %1, metadata !3999, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i32 %2, metadata !4000, metadata !DIExpression()), !dbg !4004
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4005
  %5 = load ptr, ptr %4, align 8, !dbg !4005, !tbaa !4006
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4007
  %7 = load ptr, ptr %6, align 8, !dbg !4007, !tbaa !4008
  %8 = icmp eq ptr %5, %7, !dbg !4009
  br i1 %8, label %9, label %27, !dbg !4010

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4011
  %11 = load ptr, ptr %10, align 8, !dbg !4011, !tbaa !1326
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4012
  %13 = load ptr, ptr %12, align 8, !dbg !4012, !tbaa !4013
  %14 = icmp eq ptr %11, %13, !dbg !4014
  br i1 %14, label %15, label %27, !dbg !4015

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4016
  %17 = load ptr, ptr %16, align 8, !dbg !4016, !tbaa !4017
  %18 = icmp eq ptr %17, null, !dbg !4018
  br i1 %18, label %19, label %27, !dbg !4019

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4020
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %21, metadata !4001, metadata !DIExpression()), !dbg !4022
  %22 = icmp eq i64 %21, -1, !dbg !4023
  br i1 %22, label %29, label %23, !dbg !4025

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4026, !tbaa !3802
  %25 = and i32 %24, -17, !dbg !4026
  store i32 %25, ptr %0, align 8, !dbg !4026, !tbaa !3802
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4027
  store i64 %21, ptr %26, align 8, !dbg !4028, !tbaa !4029
  br label %29, !dbg !4030

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4031
  br label %29, !dbg !4032

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4004
  ret i32 %30, !dbg !4033
}

; Function Attrs: nofree nounwind
declare !dbg !4034 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4037 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %1, metadata !4043, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %2, metadata !4044, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %3, metadata !4045, metadata !DIExpression()), !dbg !4047
  %5 = icmp eq ptr %1, null, !dbg !4048
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4050
  %7 = select i1 %5, ptr @.str.135, ptr %1, !dbg !4050
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %8, metadata !4044, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %7, metadata !4043, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %6, metadata !4042, metadata !DIExpression()), !dbg !4047
  %9 = icmp eq ptr %3, null, !dbg !4051
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4053
  call void @llvm.dbg.value(metadata ptr %10, metadata !4045, metadata !DIExpression()), !dbg !4047
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %11, metadata !4046, metadata !DIExpression()), !dbg !4047
  %12 = icmp ult i64 %11, -3, !dbg !4055
  br i1 %12, label %13, label %17, !dbg !4057

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !4058
  %15 = icmp eq i32 %14, 0, !dbg !4058
  br i1 %15, label %16, label %29, !dbg !4059

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4060, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %10, metadata !4067, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 0, metadata !4070, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i64 8, metadata !4071, metadata !DIExpression()), !dbg !4072
  store i64 0, ptr %10, align 1, !dbg !4074
  br label %29, !dbg !4075

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4076
  br i1 %18, label %19, label %20, !dbg !4078

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !4079
  unreachable, !dbg !4079

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4080

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !4082
  br i1 %23, label %29, label %24, !dbg !4083

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4084
  br i1 %25, label %29, label %26, !dbg !4087

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4088, !tbaa !875
  %28 = zext i8 %27 to i32, !dbg !4089
  store i32 %28, ptr %6, align 4, !dbg !4090, !tbaa !866
  br label %29, !dbg !4091

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4047
  ret i64 %30, !dbg !4092
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4093 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !4099 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4101, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i64 %1, metadata !4102, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i64 %2, metadata !4103, metadata !DIExpression()), !dbg !4105
  %4 = icmp eq i64 %2, 0, !dbg !4106
  br i1 %4, label %8, label %5, !dbg !4106

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4106
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4106
  br i1 %7, label %13, label %8, !dbg !4106

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4105
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4105
  %9 = mul i64 %2, %1, !dbg !4106
  call void @llvm.dbg.value(metadata i64 %9, metadata !4104, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata ptr %0, metadata !4108, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i64 %9, metadata !4111, metadata !DIExpression()), !dbg !4112
  %10 = icmp eq i64 %9, 0, !dbg !4114
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4114
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4115
  br label %15, !dbg !4116

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4105
  %14 = tail call ptr @__errno_location() #39, !dbg !4117
  store i32 12, ptr %14, align 4, !dbg !4119, !tbaa !866
  br label %15, !dbg !4120

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4105
  ret ptr %16, !dbg !4121
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4122 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4126, metadata !DIExpression()), !dbg !4131
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4132
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4127, metadata !DIExpression()), !dbg !4133
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4134
  %4 = icmp eq i32 %3, 0, !dbg !4134
  br i1 %4, label %5, label %12, !dbg !4136

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr @.str.140, metadata !4140, metadata !DIExpression()), !dbg !4141
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.140, i64 2), !dbg !4144
  %7 = icmp eq i32 %6, 0, !dbg !4145
  br i1 %7, label %11, label %8, !dbg !4146

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata ptr @.str.1.141, metadata !4140, metadata !DIExpression()), !dbg !4147
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.141, i64 6), !dbg !4149
  %10 = icmp eq i32 %9, 0, !dbg !4150
  br i1 %10, label %11, label %12, !dbg !4151

11:                                               ; preds = %8, %5
  br label %12, !dbg !4152

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4131
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4153
  ret i1 %13, !dbg !4153
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4154 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4158, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata ptr %1, metadata !4159, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i64 %2, metadata !4160, metadata !DIExpression()), !dbg !4161
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4162
  ret i32 %4, !dbg !4163
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4168, metadata !DIExpression()), !dbg !4169
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4170
  ret ptr %2, !dbg !4171
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4172 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4174, metadata !DIExpression()), !dbg !4176
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4177
  call void @llvm.dbg.value(metadata ptr %2, metadata !4175, metadata !DIExpression()), !dbg !4176
  ret ptr %2, !dbg !4178
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4181, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata ptr %1, metadata !4182, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i64 %2, metadata !4183, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i32 %0, metadata !4174, metadata !DIExpression()), !dbg !4189
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4191
  call void @llvm.dbg.value(metadata ptr %4, metadata !4175, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata ptr %4, metadata !4184, metadata !DIExpression()), !dbg !4188
  %5 = icmp eq ptr %4, null, !dbg !4192
  br i1 %5, label %6, label %9, !dbg !4193

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4194
  br i1 %7, label %19, label %8, !dbg !4197

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4198, !tbaa !875
  br label %19, !dbg !4199

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4200
  call void @llvm.dbg.value(metadata i64 %10, metadata !4185, metadata !DIExpression()), !dbg !4201
  %11 = icmp ult i64 %10, %2, !dbg !4202
  br i1 %11, label %12, label %14, !dbg !4204

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4205
  call void @llvm.dbg.value(metadata ptr %1, metadata !4207, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %4, metadata !4210, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %13, metadata !4211, metadata !DIExpression()), !dbg !4212
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4214
  br label %19, !dbg !4215

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4216
  br i1 %15, label %19, label %16, !dbg !4219

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4220
  call void @llvm.dbg.value(metadata ptr %1, metadata !4207, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata ptr %4, metadata !4210, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %17, metadata !4211, metadata !DIExpression()), !dbg !4222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4224
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4225
  store i8 0, ptr %18, align 1, !dbg !4226, !tbaa !875
  br label %19, !dbg !4227

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4228
  ret i32 %20, !dbg !4229
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!66, !708, !374, !378, !393, !674, !710, !712, !450, !464, !512, !721, !666, !728, !762, !764, !766, !768, !770, !690, !772, !775, !777, !779}
!llvm.ident = !{!781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781, !781}
!llvm.module.flags = !{!782, !783, !784, !785, !786, !787, !788}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mkfifo.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0ee63ed749703cce6fd462844f0b7c3f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 31)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 50)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 7)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 79)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 64)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1016, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 127)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !14, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 62)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 1)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 10)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 24)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 4)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "longopts", scope: !66, file: !2, line: 36, type: !359, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !104, globals: !114, splitDebugInlining: false, nameTableKind: None)
!67 = !{!68, !74, !89}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 337, baseType: !70, size: 32, elements: !71)
!69 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!73 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !75, line: 42, baseType: !76, size: 32, elements: !77)
!75 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!78 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!79 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!80 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!81 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!82 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!83 = !DIEnumerator(name: "c_quoting_style", value: 5)
!84 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!85 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!86 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!87 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!88 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 46, baseType: !76, size: 32, elements: !91)
!90 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!92 = !DIEnumerator(name: "_ISupper", value: 256)
!93 = !DIEnumerator(name: "_ISlower", value: 512)
!94 = !DIEnumerator(name: "_ISalpha", value: 1024)
!95 = !DIEnumerator(name: "_ISdigit", value: 2048)
!96 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!97 = !DIEnumerator(name: "_ISspace", value: 8192)
!98 = !DIEnumerator(name: "_ISprint", value: 16384)
!99 = !DIEnumerator(name: "_ISgraph", value: 32768)
!100 = !DIEnumerator(name: "_ISblank", value: 1)
!101 = !DIEnumerator(name: "_IScntrl", value: 2)
!102 = !DIEnumerator(name: "_ISpunct", value: 4)
!103 = !DIEnumerator(name: "_ISalnum", value: 8)
!104 = !{!105, !106, !70, !107, !108, !111, !113}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!110 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !{!0, !7, !12, !17, !22, !27, !32, !37, !39, !44, !49, !54, !59, !115, !120, !125, !130, !132, !134, !139, !144, !149, !154, !159, !242, !247, !249, !251, !256, !261, !263, !265, !270, !272, !274, !276, !278, !283, !285, !287, !289, !291, !293, !295, !300, !305, !310, !315, !317, !319, !321, !323, !325, !327, !329, !331, !336, !341, !346, !351, !353, !355, !357, !64}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 73)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 14)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 16)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !127, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !14, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 13)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 44)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 22)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 29)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !69, line: 736, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 75)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !161, file: !69, line: 575, type: !70, isLocal: true, isDefinition: true)
!161 = distinct !DISubprogram(name: "oputs_", scope: !69, file: !69, line: 573, type: !162, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !164)
!162 = !DISubroutineType(cc: DW_CC_nocall, types: !163)
!163 = !{null, !111, !111}
!164 = !{!165, !166, !167, !170, !172, !173, !174, !178, !179, !180, !181, !183, !236, !237, !238, !240, !241}
!165 = !DILocalVariable(name: "program", arg: 1, scope: !161, file: !69, line: 573, type: !111)
!166 = !DILocalVariable(name: "option", arg: 2, scope: !161, file: !69, line: 573, type: !111)
!167 = !DILocalVariable(name: "term", scope: !168, file: !69, line: 585, type: !111)
!168 = distinct !DILexicalBlock(scope: !169, file: !69, line: 582, column: 5)
!169 = distinct !DILexicalBlock(scope: !161, file: !69, line: 581, column: 7)
!170 = !DILocalVariable(name: "double_space", scope: !161, file: !69, line: 594, type: !171)
!171 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!172 = !DILocalVariable(name: "first_word", scope: !161, file: !69, line: 595, type: !111)
!173 = !DILocalVariable(name: "option_text", scope: !161, file: !69, line: 596, type: !111)
!174 = !DILocalVariable(name: "s", scope: !175, file: !69, line: 608, type: !111)
!175 = distinct !DILexicalBlock(scope: !176, file: !69, line: 605, column: 5)
!176 = distinct !DILexicalBlock(scope: !177, file: !69, line: 604, column: 12)
!177 = distinct !DILexicalBlock(scope: !161, file: !69, line: 597, column: 7)
!178 = !DILocalVariable(name: "spaces", scope: !175, file: !69, line: 609, type: !108)
!179 = !DILocalVariable(name: "anchor_len", scope: !161, file: !69, line: 620, type: !108)
!180 = !DILocalVariable(name: "desc_text", scope: !161, file: !69, line: 625, type: !111)
!181 = !DILocalVariable(name: "__ptr", scope: !182, file: !69, line: 644, type: !111)
!182 = distinct !DILexicalBlock(scope: !161, file: !69, line: 644, column: 3)
!183 = !DILocalVariable(name: "__stream", scope: !182, file: !69, line: 644, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !187)
!186 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !189)
!188 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !205, !207, !208, !209, !213, !214, !216, !217, !220, !222, !225, !228, !229, !230, !231, !232}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !187, file: !188, line: 51, baseType: !70, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !187, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !187, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !187, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !187, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !187, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !187, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !187, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !187, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !187, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !187, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !187, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !187, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !188, line: 36, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !187, file: !188, line: 70, baseType: !206, size: 64, offset: 832)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !187, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !187, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !187, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !211, line: 152, baseType: !212)
!211 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!212 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !187, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !187, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!215 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !187, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !187, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !188, line: 43, baseType: null)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !187, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !211, line: 153, baseType: !212)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !187, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !188, line: 37, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !187, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !188, line: 38, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !187, file: !188, line: 93, baseType: !206, size: 64, offset: 1344)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !187, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !187, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !187, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !187, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 20)
!236 = !DILocalVariable(name: "__cnt", scope: !182, file: !69, line: 644, type: !108)
!237 = !DILocalVariable(name: "url_program", scope: !161, file: !69, line: 648, type: !111)
!238 = !DILocalVariable(name: "__ptr", scope: !239, file: !69, line: 686, type: !111)
!239 = distinct !DILexicalBlock(scope: !161, file: !69, line: 686, column: 3)
!240 = !DILocalVariable(name: "__stream", scope: !239, file: !69, line: 686, type: !184)
!241 = !DILocalVariable(name: "__cnt", scope: !239, file: !69, line: 686, type: !108)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !69, line: 585, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 5)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !69, line: 586, type: !244, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !69, line: 595, type: !61, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !69, line: 620, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 6)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 2)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !244, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !61, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 3)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !69, line: 650, type: !244, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !253, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !253, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !69, line: 652, type: !19, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !69, line: 653, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 8)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !69, line: 654, type: !51, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !69, line: 655, type: !51, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !69, line: 656, type: !51, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !69, line: 657, type: !51, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !69, line: 663, type: !19, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !69, line: 664, type: !51, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 17)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 40)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !307, isLocal: true, isDefinition: true)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 15)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 61)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !69, line: 679, type: !267, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !69, line: 683, type: !244, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !69, line: 688, type: !244, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !69, line: 691, type: !280, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !69, line: 839, type: !127, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !69, line: 840, type: !146, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !69, line: 841, type: !307, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !69, line: 862, type: !61, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !69, line: 868, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 71)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !69, line: 875, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 27)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 51)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 12)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !280, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !244, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !244, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !280, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 1280, elements: !245)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !362, line: 50, size: 256, elements: !363)
!362 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!363 = !{!364, !365, !366, !368}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !362, line: 52, baseType: !111, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !361, file: !362, line: 55, baseType: !70, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !361, file: !362, line: 56, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !362, line: 57, baseType: !70, size: 32, offset: 192)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !371, line: 3, type: !307, isLocal: true, isDefinition: true)
!371 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "Version", scope: !374, file: !371, line: 3, type: !111, isLocal: false, isDefinition: true)
!374 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !375, splitDebugInlining: false, nameTableKind: None)
!375 = !{!369, !372}
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "file_name", scope: !378, file: !379, line: 45, type: !111, isLocal: true, isDefinition: true)
!378 = distinct !DICompileUnit(language: DW_LANG_C11, file: !379, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !380, splitDebugInlining: false, nameTableKind: None)
!379 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!380 = !{!381, !383, !385, !387, !376, !389}
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !379, line: 121, type: !19, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !379, line: 121, type: !348, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !379, line: 123, type: !19, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !379, line: 126, type: !267, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !378, file: !379, line: 55, type: !171, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !393, file: !394, line: 66, type: !445, isLocal: false, isDefinition: true)
!393 = distinct !DICompileUnit(language: DW_LANG_C11, file: !394, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, globals: !396, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!395 = !{!106, !113}
!396 = !{!397, !399, !424, !426, !428, !430, !391, !432, !434, !436, !438, !443}
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !394, line: 272, type: !244, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "old_file_name", scope: !401, file: !394, line: 304, type: !111, isLocal: true, isDefinition: true)
!401 = distinct !DISubprogram(name: "verror_at_line", scope: !394, file: !394, line: 298, type: !402, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !417)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !70, !70, !111, !76, !111, !404}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !405, line: 52, baseType: !406)
!405 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !407, line: 14, baseType: !408)
!407 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !409, baseType: !410)
!409 = !DIFile(filename: "lib/error.c", directory: "/src")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !411)
!411 = !{!412, !413, !414, !415, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !410, file: !409, baseType: !106, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !410, file: !409, baseType: !106, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !410, file: !409, baseType: !106, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !410, file: !409, baseType: !70, size: 32, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !410, file: !409, baseType: !70, size: 32, offset: 224)
!417 = !{!418, !419, !420, !421, !422, !423}
!418 = !DILocalVariable(name: "status", arg: 1, scope: !401, file: !394, line: 298, type: !70)
!419 = !DILocalVariable(name: "errnum", arg: 2, scope: !401, file: !394, line: 298, type: !70)
!420 = !DILocalVariable(name: "file_name", arg: 3, scope: !401, file: !394, line: 298, type: !111)
!421 = !DILocalVariable(name: "line_number", arg: 4, scope: !401, file: !394, line: 298, type: !76)
!422 = !DILocalVariable(name: "message", arg: 5, scope: !401, file: !394, line: 298, type: !111)
!423 = !DILocalVariable(name: "args", arg: 6, scope: !401, file: !394, line: 298, type: !404)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "old_line_number", scope: !401, file: !394, line: 305, type: !76, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !394, line: 338, type: !61, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !394, line: 346, type: !280, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !394, line: 346, type: !258, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "error_message_count", scope: !393, file: !394, line: 69, type: !76, isLocal: false, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !393, file: !394, line: 295, type: !70, isLocal: false, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !394, line: 208, type: !19, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !394, line: 208, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 21)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !394, line: 214, type: !244, isLocal: true, isDefinition: true)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null}
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "program_name", scope: !450, file: !451, line: 31, type: !111, isLocal: false, isDefinition: true)
!450 = distinct !DICompileUnit(language: DW_LANG_C11, file: !451, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !452, globals: !453, splitDebugInlining: false, nameTableKind: None)
!451 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!452 = !{!105}
!453 = !{!448, !454, !456}
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !451, line: 46, type: !280, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !451, line: 49, type: !61, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "utf07FF", scope: !460, file: !461, line: 46, type: !488, isLocal: true, isDefinition: true)
!460 = distinct !DISubprogram(name: "proper_name_lite", scope: !461, file: !461, line: 38, type: !462, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !466)
!461 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!462 = !DISubroutineType(types: !463)
!463 = !{!111, !111, !111}
!464 = distinct !DICompileUnit(language: DW_LANG_C11, file: !461, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !465, splitDebugInlining: false, nameTableKind: None)
!465 = !{!458}
!466 = !{!467, !468, !469, !470, !475}
!467 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !460, file: !461, line: 38, type: !111)
!468 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !460, file: !461, line: 38, type: !111)
!469 = !DILocalVariable(name: "translation", scope: !460, file: !461, line: 40, type: !111)
!470 = !DILocalVariable(name: "w", scope: !460, file: !461, line: 47, type: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !472, line: 37, baseType: !473)
!472 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !211, line: 57, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !211, line: 42, baseType: !76)
!475 = !DILocalVariable(name: "mbs", scope: !460, file: !461, line: 48, type: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !477, line: 6, baseType: !478)
!477 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !479, line: 21, baseType: !480)
!479 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 13, size: 64, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !480, file: !479, line: 15, baseType: !70, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !480, file: !479, line: 20, baseType: !484, size: 32, offset: 32)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !479, line: 16, size: 32, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !484, file: !479, line: 18, baseType: !76, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !484, file: !479, line: 19, baseType: !61, size: 32)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 16, elements: !259)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !491, line: 78, type: !280, isLocal: true, isDefinition: true)
!491 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !491, line: 79, type: !253, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !491, line: 80, type: !136, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !491, line: 81, type: !136, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !491, line: 82, type: !233, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !491, line: 83, type: !258, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !491, line: 84, type: !280, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !491, line: 85, type: !19, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !491, line: 86, type: !19, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !491, line: 87, type: !280, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !512, file: !491, line: 76, type: !584, isLocal: false, isDefinition: true)
!512 = distinct !DICompileUnit(language: DW_LANG_C11, file: !491, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !513, retainedTypes: !519, globals: !520, splitDebugInlining: false, nameTableKind: None)
!513 = !{!74, !514, !89}
!514 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !75, line: 254, baseType: !76, size: 32, elements: !515)
!515 = !{!516, !517, !518}
!516 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!517 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!518 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!519 = !{!70, !107, !108}
!520 = !{!489, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !521, !525, !535, !537, !542, !544, !546, !548, !550, !573, !580, !582}
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !512, file: !491, line: 92, type: !523, isLocal: false, isDefinition: true)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 320, elements: !52)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !512, file: !491, line: 1040, type: !527, isLocal: false, isDefinition: true)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !491, line: 56, size: 448, elements: !528)
!528 = !{!529, !530, !531, !533, !534}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !527, file: !491, line: 59, baseType: !74, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !491, line: 62, baseType: !70, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !527, file: !491, line: 66, baseType: !532, size: 256, offset: 64)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !281)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !527, file: !491, line: 69, baseType: !111, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !527, file: !491, line: 72, baseType: !111, size: 64, offset: 384)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !512, file: !491, line: 107, type: !527, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "slot0", scope: !512, file: !491, line: 831, type: !539, isLocal: true, isDefinition: true)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 256)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !491, line: 321, type: !258, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !491, line: 357, type: !258, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !491, line: 358, type: !258, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !491, line: 199, type: !19, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "quote", scope: !552, file: !491, line: 228, type: !571, isLocal: true, isDefinition: true)
!552 = distinct !DISubprogram(name: "gettext_quote", scope: !491, file: !491, line: 197, type: !553, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!111, !111, !74}
!555 = !{!556, !557, !558, !559, !560}
!556 = !DILocalVariable(name: "msgid", arg: 1, scope: !552, file: !491, line: 197, type: !111)
!557 = !DILocalVariable(name: "s", arg: 2, scope: !552, file: !491, line: 197, type: !74)
!558 = !DILocalVariable(name: "translation", scope: !552, file: !491, line: 199, type: !111)
!559 = !DILocalVariable(name: "w", scope: !552, file: !491, line: 229, type: !471)
!560 = !DILocalVariable(name: "mbs", scope: !552, file: !491, line: 230, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !477, line: 6, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !479, line: 21, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 13, size: 64, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !563, file: !479, line: 15, baseType: !70, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !563, file: !479, line: 20, baseType: !567, size: 32, offset: 32)
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !479, line: 16, size: 32, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !567, file: !479, line: 18, baseType: !76, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !567, file: !479, line: 19, baseType: !61, size: 32)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !572)
!572 = !{!260, !63}
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "slotvec", scope: !512, file: !491, line: 834, type: !575, isLocal: true, isDefinition: true)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !491, line: 823, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !576, file: !491, line: 825, baseType: !108, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !576, file: !491, line: 826, baseType: !105, size: 64, offset: 64)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "nslots", scope: !512, file: !491, line: 832, type: !70, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "slotvec0", scope: !512, file: !491, line: 833, type: !576, isLocal: true, isDefinition: true)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 704, elements: !586)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!586 = !{!587}
!587 = !DISubrange(count: 11)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !590, line: 67, type: !348, isLocal: true, isDefinition: true)
!590 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !590, line: 69, type: !19, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !590, line: 83, type: !19, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !590, line: 83, type: !61, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !590, line: 85, type: !258, isLocal: true, isDefinition: true)
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
!610 = distinct !DIGlobalVariable(scope: null, file: !590, line: 105, type: !127, isLocal: true, isDefinition: true)
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
!632 = distinct !DIGlobalVariable(scope: null, file: !590, line: 134, type: !302, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !590, line: 142, type: !141, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !590, line: 150, type: !637, isLocal: true, isDefinition: true)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 48)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !590, line: 159, type: !642, isLocal: true, isDefinition: true)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 52)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !590, line: 170, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 60)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !590, line: 248, type: !233, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !590, line: 248, type: !146, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !590, line: 254, type: !233, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !590, line: 254, type: !122, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !590, line: 254, type: !302, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !590, line: 259, type: !3, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !590, line: 259, type: !151, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !666, file: !667, line: 26, type: !669, isLocal: false, isDefinition: true)
!666 = distinct !DICompileUnit(language: DW_LANG_C11, file: !667, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !668, splitDebugInlining: false, nameTableKind: None)
!667 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!668 = !{!664}
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 376, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 47)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(name: "exit_failure", scope: !674, file: !675, line: 24, type: !677, isLocal: false, isDefinition: true)
!674 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !676, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!676 = !{!672}
!677 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !680, line: 34, type: !267, isLocal: true, isDefinition: true)
!680 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !680, line: 34, type: !19, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !680, line: 34, type: !297, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !687, line: 108, type: !46, isLocal: true, isDefinition: true)
!687 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "internal_state", scope: !690, file: !687, line: 97, type: !693, isLocal: true, isDefinition: true)
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !691, globals: !692, splitDebugInlining: false, nameTableKind: None)
!691 = !{!106, !108, !113}
!692 = !{!685, !688}
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !477, line: 6, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !479, line: 21, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 13, size: 64, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !695, file: !479, line: 15, baseType: !70, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !695, file: !479, line: 20, baseType: !699, size: 32, offset: 32)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !479, line: 16, size: 32, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !699, file: !479, line: 18, baseType: !76, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !699, file: !479, line: 19, baseType: !61, size: 32)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !705, line: 35, type: !258, isLocal: true, isDefinition: true)
!705 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !705, line: 35, type: !253, isLocal: true, isDefinition: true)
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !714, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!714 = !{!715}
!715 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !713, line: 78, baseType: !76, size: 32, elements: !716)
!716 = !{!717, !718, !719, !720}
!717 = !DIEnumerator(name: "MODE_DONE", value: 0)
!718 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!719 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!720 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !590, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !722, retainedTypes: !726, globals: !727, splitDebugInlining: false, nameTableKind: None)
!722 = !{!723}
!723 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !590, line: 40, baseType: !76, size: 32, elements: !724)
!724 = !{!725}
!725 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!726 = !{!106}
!727 = !{!588, !591, !593, !595, !597, !599, !604, !609, !611, !616, !621, !626, !631, !633, !635, !640, !645, !650, !652, !654, !656, !658, !660, !662}
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !730, retainedTypes: !761, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!730 = !{!731, !743}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !732, file: !729, line: 188, baseType: !76, size: 32, elements: !741)
!732 = distinct !DISubprogram(name: "x2nrealloc", scope: !729, file: !729, line: 176, type: !733, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !736)
!733 = !DISubroutineType(types: !734)
!734 = !{!106, !106, !735, !108}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!736 = !{!737, !738, !739, !740}
!737 = !DILocalVariable(name: "p", arg: 1, scope: !732, file: !729, line: 176, type: !106)
!738 = !DILocalVariable(name: "pn", arg: 2, scope: !732, file: !729, line: 176, type: !735)
!739 = !DILocalVariable(name: "s", arg: 3, scope: !732, file: !729, line: 176, type: !108)
!740 = !DILocalVariable(name: "n", scope: !732, file: !729, line: 178, type: !108)
!741 = !{!742}
!742 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!743 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !744, file: !729, line: 228, baseType: !76, size: 32, elements: !741)
!744 = distinct !DISubprogram(name: "xpalloc", scope: !729, file: !729, line: 223, type: !745, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !751)
!745 = !DISubroutineType(types: !746)
!746 = !{!106, !106, !747, !748, !750, !748}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !749, line: 130, baseType: !750)
!749 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !109, line: 35, baseType: !212)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760}
!752 = !DILocalVariable(name: "pa", arg: 1, scope: !744, file: !729, line: 223, type: !106)
!753 = !DILocalVariable(name: "pn", arg: 2, scope: !744, file: !729, line: 223, type: !747)
!754 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !744, file: !729, line: 223, type: !748)
!755 = !DILocalVariable(name: "n_max", arg: 4, scope: !744, file: !729, line: 223, type: !750)
!756 = !DILocalVariable(name: "s", arg: 5, scope: !744, file: !729, line: 223, type: !748)
!757 = !DILocalVariable(name: "n0", scope: !744, file: !729, line: 230, type: !748)
!758 = !DILocalVariable(name: "n", scope: !744, file: !729, line: 237, type: !748)
!759 = !DILocalVariable(name: "nbytes", scope: !744, file: !729, line: 248, type: !748)
!760 = !DILocalVariable(name: "adjusted_nbytes", scope: !744, file: !729, line: 252, type: !748)
!761 = !{!105, !106, !171, !212, !110}
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !763, splitDebugInlining: false, nameTableKind: None)
!763 = !{!678, !681, !683}
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!765 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !726, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !726, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !774, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!774 = !{!171, !110, !106}
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !705, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !776, splitDebugInlining: false, nameTableKind: None)
!776 = !{!703, !706}
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !778, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !726, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!781 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!782 = !{i32 7, !"Dwarf Version", i32 5}
!783 = !{i32 2, !"Debug Info Version", i32 3}
!784 = !{i32 1, !"wchar_size", i32 4}
!785 = !{i32 8, !"PIC Level", i32 2}
!786 = !{i32 7, !"PIE Level", i32 2}
!787 = !{i32 7, !"uwtable", i32 2}
!788 = !{i32 7, !"frame-pointer", i32 1}
!789 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 46, type: !790, scopeLine: 47, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !70}
!792 = !{!793}
!793 = !DILocalVariable(name: "status", arg: 1, scope: !789, file: !2, line: 46, type: !70)
!794 = !DILocation(line: 0, scope: !789)
!795 = !DILocation(line: 48, column: 14, scope: !796)
!796 = distinct !DILexicalBlock(scope: !789, file: !2, line: 48, column: 7)
!797 = !DILocation(line: 48, column: 7, scope: !789)
!798 = !DILocation(line: 49, column: 5, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !2, line: 49, column: 5)
!800 = !{!801, !801, i64 0}
!801 = !{!"any pointer", !802, i64 0}
!802 = !{!"omnipotent char", !803, i64 0}
!803 = !{!"Simple C/C++ TBAA"}
!804 = !DILocation(line: 52, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !796, file: !2, line: 51, column: 5)
!806 = !DILocation(line: 53, column: 7, scope: !805)
!807 = !DILocation(line: 736, column: 3, scope: !808, inlinedAt: !810)
!808 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !69, file: !69, line: 734, type: !446, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !809)
!809 = !{}
!810 = distinct !DILocation(line: 57, column: 7, scope: !805)
!811 = !DILocation(line: 59, column: 7, scope: !805)
!812 = !DILocation(line: 63, column: 7, scope: !805)
!813 = !DILocation(line: 67, column: 7, scope: !805)
!814 = !DILocation(line: 72, column: 7, scope: !805)
!815 = !DILocation(line: 73, column: 7, scope: !805)
!816 = !DILocalVariable(name: "program", arg: 1, scope: !817, file: !69, line: 836, type: !111)
!817 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !818, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !111}
!820 = !{!816, !821, !828, !829, !831, !832}
!821 = !DILocalVariable(name: "infomap", scope: !817, file: !69, line: 838, type: !822)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 896, elements: !20)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !817, file: !69, line: 838, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !824, file: !69, line: 838, baseType: !111, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !824, file: !69, line: 838, baseType: !111, size: 64, offset: 64)
!828 = !DILocalVariable(name: "node", scope: !817, file: !69, line: 848, type: !111)
!829 = !DILocalVariable(name: "map_prog", scope: !817, file: !69, line: 849, type: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!831 = !DILocalVariable(name: "lc_messages", scope: !817, file: !69, line: 861, type: !111)
!832 = !DILocalVariable(name: "url_program", scope: !817, file: !69, line: 874, type: !111)
!833 = !DILocation(line: 0, scope: !817, inlinedAt: !834)
!834 = distinct !DILocation(line: 74, column: 7, scope: !805)
!835 = !DILocation(line: 857, column: 3, scope: !817, inlinedAt: !834)
!836 = !DILocation(line: 861, column: 29, scope: !817, inlinedAt: !834)
!837 = !DILocation(line: 862, column: 7, scope: !838, inlinedAt: !834)
!838 = distinct !DILexicalBlock(scope: !817, file: !69, line: 862, column: 7)
!839 = !DILocation(line: 862, column: 19, scope: !838, inlinedAt: !834)
!840 = !DILocation(line: 862, column: 22, scope: !838, inlinedAt: !834)
!841 = !DILocation(line: 862, column: 7, scope: !817, inlinedAt: !834)
!842 = !DILocation(line: 868, column: 7, scope: !843, inlinedAt: !834)
!843 = distinct !DILexicalBlock(scope: !838, file: !69, line: 863, column: 5)
!844 = !DILocation(line: 870, column: 5, scope: !843, inlinedAt: !834)
!845 = !DILocation(line: 875, column: 3, scope: !817, inlinedAt: !834)
!846 = !DILocation(line: 877, column: 3, scope: !817, inlinedAt: !834)
!847 = !DILocation(line: 76, column: 3, scope: !789)
!848 = !DISubprogram(name: "dcgettext", scope: !849, file: !849, line: 51, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!849 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!850 = !DISubroutineType(types: !851)
!851 = !{!105, !111, !111, !70}
!852 = !DISubprogram(name: "__fprintf_chk", scope: !853, file: !853, line: 93, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!853 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!854 = !DISubroutineType(types: !855)
!855 = !{!70, !856, !70, !857, null}
!856 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!857 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!858 = !DISubprogram(name: "__printf_chk", scope: !853, file: !853, line: 95, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!859 = !DISubroutineType(types: !860)
!860 = !{!70, !70, !857, null}
!861 = !DISubprogram(name: "fputs_unlocked", scope: !405, file: !405, line: 691, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!862 = !DISubroutineType(types: !863)
!863 = !{!70, !857, !856}
!864 = !DILocation(line: 0, scope: !161)
!865 = !DILocation(line: 581, column: 7, scope: !169)
!866 = !{!867, !867, i64 0}
!867 = !{!"int", !802, i64 0}
!868 = !DILocation(line: 581, column: 19, scope: !169)
!869 = !DILocation(line: 581, column: 7, scope: !161)
!870 = !DILocation(line: 585, column: 26, scope: !168)
!871 = !DILocation(line: 0, scope: !168)
!872 = !DILocation(line: 586, column: 23, scope: !168)
!873 = !DILocation(line: 586, column: 28, scope: !168)
!874 = !DILocation(line: 586, column: 32, scope: !168)
!875 = !{!802, !802, i64 0}
!876 = !DILocation(line: 586, column: 38, scope: !168)
!877 = !DILocalVariable(name: "__s1", arg: 1, scope: !878, file: !879, line: 1359, type: !111)
!878 = distinct !DISubprogram(name: "streq", scope: !879, file: !879, line: 1359, type: !880, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !882)
!879 = !DIFile(filename: "./lib/string.h", directory: "/src")
!880 = !DISubroutineType(types: !881)
!881 = !{!171, !111, !111}
!882 = !{!877, !883}
!883 = !DILocalVariable(name: "__s2", arg: 2, scope: !878, file: !879, line: 1359, type: !111)
!884 = !DILocation(line: 0, scope: !878, inlinedAt: !885)
!885 = distinct !DILocation(line: 586, column: 41, scope: !168)
!886 = !DILocation(line: 1361, column: 11, scope: !878, inlinedAt: !885)
!887 = !DILocation(line: 1361, column: 10, scope: !878, inlinedAt: !885)
!888 = !DILocation(line: 586, column: 19, scope: !168)
!889 = !DILocation(line: 587, column: 5, scope: !168)
!890 = !DILocation(line: 588, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !161, file: !69, line: 588, column: 7)
!892 = !DILocation(line: 588, column: 7, scope: !161)
!893 = !DILocation(line: 590, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !69, line: 589, column: 5)
!895 = !DILocation(line: 591, column: 7, scope: !894)
!896 = !DILocation(line: 595, column: 37, scope: !161)
!897 = !DILocation(line: 595, column: 35, scope: !161)
!898 = !DILocation(line: 596, column: 29, scope: !161)
!899 = !DILocation(line: 597, column: 8, scope: !177)
!900 = !DILocation(line: 597, column: 7, scope: !161)
!901 = !DILocation(line: 604, column: 24, scope: !176)
!902 = !DILocation(line: 604, column: 12, scope: !177)
!903 = !DILocation(line: 0, scope: !175)
!904 = !DILocation(line: 610, column: 16, scope: !175)
!905 = !DILocation(line: 610, column: 7, scope: !175)
!906 = !DILocation(line: 611, column: 21, scope: !175)
!907 = !{!908, !908, i64 0}
!908 = !{!"short", !802, i64 0}
!909 = !DILocation(line: 611, column: 19, scope: !175)
!910 = !DILocation(line: 611, column: 16, scope: !175)
!911 = !DILocation(line: 610, column: 30, scope: !175)
!912 = distinct !{!912, !905, !906, !913}
!913 = !{!"llvm.loop.mustprogress"}
!914 = !DILocation(line: 612, column: 18, scope: !915)
!915 = distinct !DILexicalBlock(scope: !175, file: !69, line: 612, column: 11)
!916 = !DILocation(line: 612, column: 11, scope: !175)
!917 = !DILocation(line: 620, column: 23, scope: !161)
!918 = !DILocation(line: 625, column: 39, scope: !161)
!919 = !DILocation(line: 626, column: 3, scope: !161)
!920 = !DILocation(line: 626, column: 10, scope: !161)
!921 = !DILocation(line: 626, column: 21, scope: !161)
!922 = !DILocation(line: 628, column: 44, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !69, line: 628, column: 11)
!924 = distinct !DILexicalBlock(scope: !161, file: !69, line: 627, column: 5)
!925 = !DILocation(line: 628, column: 32, scope: !923)
!926 = !DILocation(line: 628, column: 49, scope: !923)
!927 = !DILocation(line: 628, column: 11, scope: !924)
!928 = !DILocation(line: 630, column: 11, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !69, line: 630, column: 11)
!930 = !DILocation(line: 630, column: 11, scope: !924)
!931 = !DILocation(line: 632, column: 26, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !69, line: 632, column: 15)
!933 = distinct !DILexicalBlock(scope: !929, file: !69, line: 631, column: 9)
!934 = !DILocation(line: 632, column: 34, scope: !932)
!935 = !DILocation(line: 632, column: 37, scope: !932)
!936 = !DILocation(line: 632, column: 15, scope: !933)
!937 = !DILocation(line: 640, column: 16, scope: !924)
!938 = distinct !{!938, !919, !939, !913}
!939 = !DILocation(line: 641, column: 5, scope: !161)
!940 = !DILocation(line: 644, column: 3, scope: !161)
!941 = !DILocation(line: 0, scope: !878, inlinedAt: !942)
!942 = distinct !DILocation(line: 648, column: 31, scope: !161)
!943 = !DILocation(line: 0, scope: !878, inlinedAt: !944)
!944 = distinct !DILocation(line: 649, column: 31, scope: !161)
!945 = !DILocation(line: 0, scope: !878, inlinedAt: !946)
!946 = distinct !DILocation(line: 650, column: 31, scope: !161)
!947 = !DILocation(line: 0, scope: !878, inlinedAt: !948)
!948 = distinct !DILocation(line: 651, column: 31, scope: !161)
!949 = !DILocation(line: 0, scope: !878, inlinedAt: !950)
!950 = distinct !DILocation(line: 652, column: 31, scope: !161)
!951 = !DILocation(line: 0, scope: !878, inlinedAt: !952)
!952 = distinct !DILocation(line: 653, column: 31, scope: !161)
!953 = !DILocation(line: 0, scope: !878, inlinedAt: !954)
!954 = distinct !DILocation(line: 654, column: 31, scope: !161)
!955 = !DILocation(line: 0, scope: !878, inlinedAt: !956)
!956 = distinct !DILocation(line: 655, column: 31, scope: !161)
!957 = !DILocation(line: 0, scope: !878, inlinedAt: !958)
!958 = distinct !DILocation(line: 656, column: 31, scope: !161)
!959 = !DILocation(line: 0, scope: !878, inlinedAt: !960)
!960 = distinct !DILocation(line: 657, column: 31, scope: !161)
!961 = !DILocation(line: 663, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !161, file: !69, line: 663, column: 7)
!963 = !DILocation(line: 664, column: 7, scope: !962)
!964 = !DILocation(line: 664, column: 10, scope: !962)
!965 = !DILocation(line: 663, column: 7, scope: !161)
!966 = !DILocation(line: 669, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !962, file: !69, line: 665, column: 5)
!968 = !DILocation(line: 671, column: 5, scope: !967)
!969 = !DILocation(line: 676, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !962, file: !69, line: 673, column: 5)
!971 = !DILocation(line: 679, column: 3, scope: !161)
!972 = !DILocation(line: 683, column: 3, scope: !161)
!973 = !DILocation(line: 686, column: 3, scope: !161)
!974 = !DILocation(line: 688, column: 3, scope: !161)
!975 = !DILocation(line: 691, column: 3, scope: !161)
!976 = !DILocation(line: 695, column: 3, scope: !161)
!977 = !DILocation(line: 696, column: 1, scope: !161)
!978 = !DISubprogram(name: "setlocale", scope: !979, file: !979, line: 122, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!979 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!980 = !DISubroutineType(types: !981)
!981 = !{!105, !70, !111}
!982 = !DISubprogram(name: "strncmp", scope: !983, file: !983, line: 159, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!983 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!984 = !DISubroutineType(types: !985)
!985 = !{!70, !111, !111, !108}
!986 = !DISubprogram(name: "exit", scope: !987, file: !987, line: 624, type: !790, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !809)
!987 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!988 = !DISubprogram(name: "getenv", scope: !987, file: !987, line: 641, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!989 = !DISubroutineType(types: !990)
!990 = !{!105, !111}
!991 = !DISubprogram(name: "strcmp", scope: !983, file: !983, line: 156, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!992 = !DISubroutineType(types: !993)
!993 = !{!70, !111, !111}
!994 = !DISubprogram(name: "strspn", scope: !983, file: !983, line: 297, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!995 = !DISubroutineType(types: !996)
!996 = !{!110, !111, !111}
!997 = !DISubprogram(name: "strchr", scope: !983, file: !983, line: 246, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!998 = !DISubroutineType(types: !999)
!999 = !{!105, !111, !70}
!1000 = !DISubprogram(name: "__ctype_b_loc", scope: !90, file: !90, line: 79, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1006 = !DISubprogram(name: "strcspn", scope: !983, file: !983, line: 293, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1007 = !DISubprogram(name: "fwrite_unlocked", scope: !405, file: !405, line: 704, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!108, !1010, !108, !108, !856}
!1010 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1013 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 80, type: !1014, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1017)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!70, !70, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1026, !1027, !1030, !1034, !1040, !1041}
!1018 = !DILocalVariable(name: "argc", arg: 1, scope: !1013, file: !2, line: 80, type: !70)
!1019 = !DILocalVariable(name: "argv", arg: 2, scope: !1013, file: !2, line: 80, type: !1016)
!1020 = !DILocalVariable(name: "specified_mode", scope: !1013, file: !2, line: 82, type: !111)
!1021 = !DILocalVariable(name: "scontext", scope: !1013, file: !2, line: 83, type: !111)
!1022 = !DILocalVariable(name: "set_security_context", scope: !1013, file: !2, line: 84, type: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1025, line: 53, flags: DIFlagFwdDecl)
!1025 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1026 = !DILocalVariable(name: "optc", scope: !1013, file: !2, line: 94, type: !70)
!1027 = !DILocalVariable(name: "ret", scope: !1028, file: !2, line: 142, type: !70)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 141, column: 5)
!1029 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 140, column: 7)
!1030 = !DILocalVariable(name: "newmode", scope: !1013, file: !2, line: 154, type: !1031)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1032, line: 69, baseType: !1033)
!1032 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !211, line: 150, baseType: !76)
!1034 = !DILocalVariable(name: "change", scope: !1035, file: !2, line: 157, type: !1037)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 156, column: 5)
!1036 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 155, column: 7)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1039, line: 35, flags: DIFlagFwdDecl)
!1039 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1040 = !DILocalVariable(name: "umask_value", scope: !1035, file: !2, line: 160, type: !1031)
!1041 = !DILocalVariable(name: "exit_status", scope: !1013, file: !2, line: 169, type: !70)
!1042 = !DILocation(line: 0, scope: !1013)
!1043 = !DILocation(line: 87, column: 21, scope: !1013)
!1044 = !DILocation(line: 87, column: 3, scope: !1013)
!1045 = !DILocation(line: 88, column: 3, scope: !1013)
!1046 = !DILocation(line: 89, column: 3, scope: !1013)
!1047 = !DILocation(line: 90, column: 3, scope: !1013)
!1048 = !DILocation(line: 92, column: 3, scope: !1013)
!1049 = !DILocation(line: 95, column: 3, scope: !1013)
!1050 = !DILocation(line: 95, column: 18, scope: !1013)
!1051 = !DILocation(line: 100, column: 28, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 98, column: 9)
!1053 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 96, column: 5)
!1054 = !DILocation(line: 101, column: 11, scope: !1052)
!1055 = distinct !{!1055, !1049, !1056, !913}
!1056 = !DILocation(line: 132, column: 5, scope: !1013)
!1057 = !DILocation(line: 120, column: 20, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 120, column: 20)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 108, column: 20)
!1060 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 103, column: 15)
!1061 = !DILocation(line: 120, column: 20, scope: !1059)
!1062 = !DILocation(line: 122, column: 15, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 121, column: 13)
!1064 = !DILocation(line: 125, column: 13, scope: !1063)
!1065 = !DILocation(line: 127, column: 9, scope: !1052)
!1066 = !DILocation(line: 128, column: 9, scope: !1052)
!1067 = !DILocation(line: 130, column: 11, scope: !1052)
!1068 = !DILocation(line: 134, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 134, column: 7)
!1070 = !DILocation(line: 134, column: 14, scope: !1069)
!1071 = !DILocation(line: 134, column: 7, scope: !1013)
!1072 = !DILocation(line: 136, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 135, column: 5)
!1074 = !DILocation(line: 137, column: 7, scope: !1073)
!1075 = !DILocation(line: 155, column: 7, scope: !1036)
!1076 = !DILocation(line: 155, column: 7, scope: !1013)
!1077 = !DILocation(line: 157, column: 36, scope: !1035)
!1078 = !DILocation(line: 0, scope: !1035)
!1079 = !DILocation(line: 158, column: 12, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 158, column: 11)
!1081 = !DILocation(line: 158, column: 11, scope: !1035)
!1082 = !DILocation(line: 159, column: 9, scope: !1080)
!1083 = !DILocation(line: 160, column: 28, scope: !1035)
!1084 = !DILocation(line: 161, column: 7, scope: !1035)
!1085 = !DILocation(line: 162, column: 17, scope: !1035)
!1086 = !DILocation(line: 163, column: 7, scope: !1035)
!1087 = !DILocation(line: 164, column: 19, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 164, column: 11)
!1089 = !DILocation(line: 164, column: 11, scope: !1035)
!1090 = !DILocation(line: 170, column: 10, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 170, column: 3)
!1092 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 170, column: 3)
!1093 = !DILocation(line: 165, column: 9, scope: !1088)
!1094 = !DILocation(line: 170, column: 17, scope: !1091)
!1095 = !DILocation(line: 170, column: 3, scope: !1092)
!1096 = !DILocation(line: 174, column: 19, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 174, column: 11)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 171, column: 5)
!1099 = !DILocation(line: 174, column: 11, scope: !1097)
!1100 = !DILocation(line: 174, column: 42, scope: !1097)
!1101 = !DILocation(line: 174, column: 11, scope: !1098)
!1102 = !DILocation(line: 179, column: 31, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 179, column: 16)
!1104 = !DILocation(line: 179, column: 47, scope: !1103)
!1105 = !DILocation(line: 179, column: 42, scope: !1103)
!1106 = !DILocation(line: 179, column: 34, scope: !1103)
!1107 = !DILocation(line: 179, column: 65, scope: !1103)
!1108 = !DILocation(line: 179, column: 16, scope: !1097)
!1109 = !DILocation(line: 0, scope: !1097)
!1110 = !DILocation(line: 170, column: 25, scope: !1091)
!1111 = distinct !{!1111, !1095, !1112, !913}
!1112 = !DILocation(line: 185, column: 5, scope: !1092)
!1113 = !DILocation(line: 187, column: 3, scope: !1013)
!1114 = !DISubprogram(name: "bindtextdomain", scope: !849, file: !849, line: 86, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!105, !111, !111}
!1117 = !DISubprogram(name: "textdomain", scope: !849, file: !849, line: 82, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1118 = !DISubprogram(name: "atexit", scope: !987, file: !987, line: 602, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!70, !445}
!1121 = !DISubprogram(name: "getopt_long", scope: !362, file: !362, line: 66, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!70, !70, !1124, !111, !1126, !367}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1127 = !DISubprogram(name: "umask", scope: !1128, file: !1128, line: 380, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1128 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!1033, !1033}
!1131 = !DISubprogram(name: "free", scope: !987, file: !987, line: 555, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !106}
!1134 = !DISubprogram(name: "mkfifo", scope: !1128, file: !1128, line: 418, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!70, !111, !1033}
!1137 = !DISubprogram(name: "lchmod", scope: !1128, file: !1128, line: 359, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1138 = !DISubprogram(name: "__errno_location", scope: !1139, file: !1139, line: 37, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1139 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!367}
!1142 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !379, file: !379, line: 50, type: !818, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1143)
!1143 = !{!1144}
!1144 = !DILocalVariable(name: "file", arg: 1, scope: !1142, file: !379, line: 50, type: !111)
!1145 = !DILocation(line: 0, scope: !1142)
!1146 = !DILocation(line: 52, column: 13, scope: !1142)
!1147 = !DILocation(line: 53, column: 1, scope: !1142)
!1148 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !379, file: !379, line: 87, type: !1149, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !171}
!1151 = !{!1152}
!1152 = !DILocalVariable(name: "ignore", arg: 1, scope: !1148, file: !379, line: 87, type: !171)
!1153 = !DILocation(line: 0, scope: !1148)
!1154 = !DILocation(line: 89, column: 16, scope: !1148)
!1155 = !{!1156, !1156, i64 0}
!1156 = !{!"_Bool", !802, i64 0}
!1157 = !DILocation(line: 90, column: 1, scope: !1148)
!1158 = distinct !DISubprogram(name: "close_stdout", scope: !379, file: !379, line: 116, type: !446, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1159)
!1159 = !{!1160}
!1160 = !DILocalVariable(name: "write_error", scope: !1161, file: !379, line: 121, type: !111)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !379, line: 120, column: 5)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !379, line: 118, column: 7)
!1163 = !DILocation(line: 118, column: 21, scope: !1162)
!1164 = !DILocation(line: 118, column: 7, scope: !1162)
!1165 = !DILocation(line: 118, column: 29, scope: !1162)
!1166 = !DILocation(line: 119, column: 7, scope: !1162)
!1167 = !DILocation(line: 119, column: 12, scope: !1162)
!1168 = !{i8 0, i8 2}
!1169 = !DILocation(line: 119, column: 25, scope: !1162)
!1170 = !DILocation(line: 119, column: 28, scope: !1162)
!1171 = !DILocation(line: 119, column: 34, scope: !1162)
!1172 = !DILocation(line: 118, column: 7, scope: !1158)
!1173 = !DILocation(line: 121, column: 33, scope: !1161)
!1174 = !DILocation(line: 0, scope: !1161)
!1175 = !DILocation(line: 122, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1161, file: !379, line: 122, column: 11)
!1177 = !DILocation(line: 0, scope: !1176)
!1178 = !DILocation(line: 122, column: 11, scope: !1161)
!1179 = !DILocation(line: 123, column: 9, scope: !1176)
!1180 = !DILocation(line: 126, column: 9, scope: !1176)
!1181 = !DILocation(line: 128, column: 14, scope: !1161)
!1182 = !DILocation(line: 128, column: 7, scope: !1161)
!1183 = !DILocation(line: 133, column: 42, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1158, file: !379, line: 133, column: 7)
!1185 = !DILocation(line: 133, column: 28, scope: !1184)
!1186 = !DILocation(line: 133, column: 50, scope: !1184)
!1187 = !DILocation(line: 133, column: 7, scope: !1158)
!1188 = !DILocation(line: 134, column: 12, scope: !1184)
!1189 = !DILocation(line: 134, column: 5, scope: !1184)
!1190 = !DILocation(line: 135, column: 1, scope: !1158)
!1191 = !DISubprogram(name: "_exit", scope: !1192, file: !1192, line: 624, type: !790, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1192 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1193 = distinct !DISubprogram(name: "verror", scope: !394, file: !394, line: 251, type: !1194, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !70, !70, !111, !404}
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DILocalVariable(name: "status", arg: 1, scope: !1193, file: !394, line: 251, type: !70)
!1198 = !DILocalVariable(name: "errnum", arg: 2, scope: !1193, file: !394, line: 251, type: !70)
!1199 = !DILocalVariable(name: "message", arg: 3, scope: !1193, file: !394, line: 251, type: !111)
!1200 = !DILocalVariable(name: "args", arg: 4, scope: !1193, file: !394, line: 251, type: !404)
!1201 = !DILocation(line: 0, scope: !1193)
!1202 = !DILocation(line: 251, column: 1, scope: !1193)
!1203 = !DILocation(line: 261, column: 3, scope: !1193)
!1204 = !DILocation(line: 265, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1193, file: !394, line: 265, column: 7)
!1206 = !DILocation(line: 265, column: 7, scope: !1193)
!1207 = !DILocation(line: 266, column: 5, scope: !1205)
!1208 = !DILocation(line: 272, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !394, line: 268, column: 5)
!1210 = !DILocation(line: 276, column: 3, scope: !1193)
!1211 = !{i64 0, i64 8, !800, i64 8, i64 8, !800, i64 16, i64 8, !800, i64 24, i64 4, !866, i64 28, i64 4, !866}
!1212 = !DILocation(line: 282, column: 1, scope: !1193)
!1213 = distinct !DISubprogram(name: "flush_stdout", scope: !394, file: !394, line: 163, type: !446, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1214)
!1214 = !{!1215}
!1215 = !DILocalVariable(name: "stdout_fd", scope: !1213, file: !394, line: 166, type: !70)
!1216 = !DILocation(line: 0, scope: !1213)
!1217 = !DILocalVariable(name: "fd", arg: 1, scope: !1218, file: !394, line: 145, type: !70)
!1218 = distinct !DISubprogram(name: "is_open", scope: !394, file: !394, line: 145, type: !1219, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!70, !70}
!1221 = !{!1217}
!1222 = !DILocation(line: 0, scope: !1218, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 182, column: 25, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1213, file: !394, line: 182, column: 7)
!1225 = !DILocation(line: 157, column: 15, scope: !1218, inlinedAt: !1223)
!1226 = !DILocation(line: 157, column: 12, scope: !1218, inlinedAt: !1223)
!1227 = !DILocation(line: 182, column: 7, scope: !1213)
!1228 = !DILocation(line: 184, column: 5, scope: !1224)
!1229 = !DILocation(line: 185, column: 1, scope: !1213)
!1230 = distinct !DISubprogram(name: "error_tail", scope: !394, file: !394, line: 219, type: !1194, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1231)
!1231 = !{!1232, !1233, !1234, !1235}
!1232 = !DILocalVariable(name: "status", arg: 1, scope: !1230, file: !394, line: 219, type: !70)
!1233 = !DILocalVariable(name: "errnum", arg: 2, scope: !1230, file: !394, line: 219, type: !70)
!1234 = !DILocalVariable(name: "message", arg: 3, scope: !1230, file: !394, line: 219, type: !111)
!1235 = !DILocalVariable(name: "args", arg: 4, scope: !1230, file: !394, line: 219, type: !404)
!1236 = !DILocation(line: 0, scope: !1230)
!1237 = !DILocation(line: 219, column: 1, scope: !1230)
!1238 = !DILocation(line: 229, column: 13, scope: !1230)
!1239 = !DILocation(line: 135, column: 10, scope: !1240, inlinedAt: !1282)
!1240 = distinct !DISubprogram(name: "vfprintf", scope: !853, file: !853, line: 132, type: !1241, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1278)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!70, !1243, !857, !406}
!1243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !1246)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1246, file: !188, line: 51, baseType: !70, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1246, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1246, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1246, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1246, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1246, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1246, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1246, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1246, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1246, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1246, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1246, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1246, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1246, file: !188, line: 70, baseType: !1262, size: 64, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1246, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1246, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1246, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1246, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1246, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1246, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1246, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1246, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1246, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1246, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1246, file: !188, line: 93, baseType: !1262, size: 64, offset: 1344)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1246, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1246, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1246, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1246, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!1278 = !{!1279, !1280, !1281}
!1279 = !DILocalVariable(name: "__stream", arg: 1, scope: !1240, file: !853, line: 132, type: !1243)
!1280 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1240, file: !853, line: 133, type: !857)
!1281 = !DILocalVariable(name: "__ap", arg: 3, scope: !1240, file: !853, line: 133, type: !406)
!1282 = distinct !DILocation(line: 229, column: 3, scope: !1230)
!1283 = !{!1284, !1286}
!1284 = distinct !{!1284, !1285, !"vfprintf.inline: argument 0"}
!1285 = distinct !{!1285, !"vfprintf.inline"}
!1286 = distinct !{!1286, !1285, !"vfprintf.inline: argument 1"}
!1287 = !DILocation(line: 229, column: 3, scope: !1230)
!1288 = !DILocation(line: 0, scope: !1240, inlinedAt: !1282)
!1289 = !DILocation(line: 133, column: 49, scope: !1240, inlinedAt: !1282)
!1290 = !DILocation(line: 232, column: 3, scope: !1230)
!1291 = !DILocation(line: 233, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1230, file: !394, line: 233, column: 7)
!1293 = !DILocation(line: 233, column: 7, scope: !1230)
!1294 = !DILocalVariable(name: "errnum", arg: 1, scope: !1295, file: !394, line: 188, type: !70)
!1295 = distinct !DISubprogram(name: "print_errno_message", scope: !394, file: !394, line: 188, type: !790, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1296)
!1296 = !{!1294, !1297, !1298}
!1297 = !DILocalVariable(name: "s", scope: !1295, file: !394, line: 190, type: !111)
!1298 = !DILocalVariable(name: "errbuf", scope: !1295, file: !394, line: 193, type: !1299)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 1024)
!1302 = !DILocation(line: 0, scope: !1295, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 234, column: 5, scope: !1292)
!1304 = !DILocation(line: 193, column: 3, scope: !1295, inlinedAt: !1303)
!1305 = !DILocation(line: 193, column: 8, scope: !1295, inlinedAt: !1303)
!1306 = !DILocation(line: 195, column: 7, scope: !1295, inlinedAt: !1303)
!1307 = !DILocation(line: 207, column: 9, scope: !1308, inlinedAt: !1303)
!1308 = distinct !DILexicalBlock(scope: !1295, file: !394, line: 207, column: 7)
!1309 = !DILocation(line: 207, column: 7, scope: !1295, inlinedAt: !1303)
!1310 = !DILocation(line: 208, column: 9, scope: !1308, inlinedAt: !1303)
!1311 = !DILocation(line: 208, column: 5, scope: !1308, inlinedAt: !1303)
!1312 = !DILocation(line: 214, column: 3, scope: !1295, inlinedAt: !1303)
!1313 = !DILocation(line: 216, column: 1, scope: !1295, inlinedAt: !1303)
!1314 = !DILocation(line: 234, column: 5, scope: !1292)
!1315 = !DILocation(line: 238, column: 3, scope: !1230)
!1316 = !DILocalVariable(name: "__c", arg: 1, scope: !1317, file: !1318, line: 101, type: !70)
!1317 = distinct !DISubprogram(name: "putc_unlocked", scope: !1318, file: !1318, line: 101, type: !1319, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1321)
!1318 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!70, !70, !1244}
!1321 = !{!1316, !1322}
!1322 = !DILocalVariable(name: "__stream", arg: 2, scope: !1317, file: !1318, line: 101, type: !1244)
!1323 = !DILocation(line: 0, scope: !1317, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 238, column: 3, scope: !1230)
!1325 = !DILocation(line: 103, column: 10, scope: !1317, inlinedAt: !1324)
!1326 = !{!1327, !801, i64 40}
!1327 = !{!"_IO_FILE", !867, i64 0, !801, i64 8, !801, i64 16, !801, i64 24, !801, i64 32, !801, i64 40, !801, i64 48, !801, i64 56, !801, i64 64, !801, i64 72, !801, i64 80, !801, i64 88, !801, i64 96, !801, i64 104, !867, i64 112, !867, i64 116, !1328, i64 120, !908, i64 128, !802, i64 130, !802, i64 131, !801, i64 136, !1328, i64 144, !801, i64 152, !801, i64 160, !801, i64 168, !801, i64 176, !1328, i64 184, !867, i64 192, !802, i64 196}
!1328 = !{!"long", !802, i64 0}
!1329 = !{!1327, !801, i64 48}
!1330 = !{!"branch_weights", i32 2000, i32 1}
!1331 = !DILocation(line: 240, column: 3, scope: !1230)
!1332 = !DILocation(line: 241, column: 7, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1230, file: !394, line: 241, column: 7)
!1334 = !DILocation(line: 241, column: 7, scope: !1230)
!1335 = !DILocation(line: 242, column: 5, scope: !1333)
!1336 = !DILocation(line: 243, column: 1, scope: !1230)
!1337 = !DISubprogram(name: "__vfprintf_chk", scope: !853, file: !853, line: 96, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!70, !1243, !70, !857, !406}
!1340 = !DISubprogram(name: "strerror_r", scope: !983, file: !983, line: 444, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!105, !70, !105, !108}
!1343 = !DISubprogram(name: "__overflow", scope: !405, file: !405, line: 886, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!70, !1244, !70}
!1346 = !DISubprogram(name: "fflush_unlocked", scope: !405, file: !405, line: 239, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!70, !1244}
!1349 = !DISubprogram(name: "fcntl", scope: !1350, file: !1350, line: 149, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1350 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!70, !70, !70, null}
!1353 = distinct !DISubprogram(name: "error", scope: !394, file: !394, line: 285, type: !1354, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !70, !70, !111, null}
!1356 = !{!1357, !1358, !1359, !1360}
!1357 = !DILocalVariable(name: "status", arg: 1, scope: !1353, file: !394, line: 285, type: !70)
!1358 = !DILocalVariable(name: "errnum", arg: 2, scope: !1353, file: !394, line: 285, type: !70)
!1359 = !DILocalVariable(name: "message", arg: 3, scope: !1353, file: !394, line: 285, type: !111)
!1360 = !DILocalVariable(name: "ap", scope: !1353, file: !394, line: 287, type: !404)
!1361 = !DILocation(line: 0, scope: !1353)
!1362 = !DILocation(line: 287, column: 3, scope: !1353)
!1363 = !DILocation(line: 287, column: 11, scope: !1353)
!1364 = !DILocation(line: 288, column: 3, scope: !1353)
!1365 = !DILocation(line: 289, column: 3, scope: !1353)
!1366 = !DILocation(line: 290, column: 3, scope: !1353)
!1367 = !DILocation(line: 291, column: 1, scope: !1353)
!1368 = !DILocation(line: 0, scope: !401)
!1369 = !DILocation(line: 298, column: 1, scope: !401)
!1370 = !DILocation(line: 302, column: 7, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !401, file: !394, line: 302, column: 7)
!1372 = !DILocation(line: 302, column: 7, scope: !401)
!1373 = !DILocation(line: 307, column: 11, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !394, line: 307, column: 11)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !394, line: 303, column: 5)
!1376 = !DILocation(line: 307, column: 27, scope: !1374)
!1377 = !DILocation(line: 308, column: 11, scope: !1374)
!1378 = !DILocation(line: 308, column: 28, scope: !1374)
!1379 = !DILocation(line: 308, column: 25, scope: !1374)
!1380 = !DILocation(line: 309, column: 15, scope: !1374)
!1381 = !DILocation(line: 309, column: 33, scope: !1374)
!1382 = !DILocation(line: 310, column: 19, scope: !1374)
!1383 = !DILocation(line: 311, column: 22, scope: !1374)
!1384 = !DILocation(line: 311, column: 56, scope: !1374)
!1385 = !DILocation(line: 307, column: 11, scope: !1375)
!1386 = !DILocation(line: 316, column: 21, scope: !1375)
!1387 = !DILocation(line: 317, column: 23, scope: !1375)
!1388 = !DILocation(line: 318, column: 5, scope: !1375)
!1389 = !DILocation(line: 327, column: 3, scope: !401)
!1390 = !DILocation(line: 331, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !401, file: !394, line: 331, column: 7)
!1392 = !DILocation(line: 331, column: 7, scope: !401)
!1393 = !DILocation(line: 332, column: 5, scope: !1391)
!1394 = !DILocation(line: 338, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !394, line: 334, column: 5)
!1396 = !DILocation(line: 346, column: 3, scope: !401)
!1397 = !DILocation(line: 350, column: 3, scope: !401)
!1398 = !DILocation(line: 356, column: 1, scope: !401)
!1399 = distinct !DISubprogram(name: "error_at_line", scope: !394, file: !394, line: 359, type: !1400, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1402)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !70, !70, !111, !76, !111, null}
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408}
!1403 = !DILocalVariable(name: "status", arg: 1, scope: !1399, file: !394, line: 359, type: !70)
!1404 = !DILocalVariable(name: "errnum", arg: 2, scope: !1399, file: !394, line: 359, type: !70)
!1405 = !DILocalVariable(name: "file_name", arg: 3, scope: !1399, file: !394, line: 359, type: !111)
!1406 = !DILocalVariable(name: "line_number", arg: 4, scope: !1399, file: !394, line: 360, type: !76)
!1407 = !DILocalVariable(name: "message", arg: 5, scope: !1399, file: !394, line: 360, type: !111)
!1408 = !DILocalVariable(name: "ap", scope: !1399, file: !394, line: 362, type: !404)
!1409 = !DILocation(line: 0, scope: !1399)
!1410 = !DILocation(line: 362, column: 3, scope: !1399)
!1411 = !DILocation(line: 362, column: 11, scope: !1399)
!1412 = !DILocation(line: 363, column: 3, scope: !1399)
!1413 = !DILocation(line: 364, column: 3, scope: !1399)
!1414 = !DILocation(line: 366, column: 3, scope: !1399)
!1415 = !DILocation(line: 367, column: 1, scope: !1399)
!1416 = distinct !DISubprogram(name: "getprogname", scope: !711, file: !711, line: 54, type: !1417, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !809)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!111}
!1419 = !DILocation(line: 58, column: 10, scope: !1416)
!1420 = !DILocation(line: 58, column: 3, scope: !1416)
!1421 = distinct !DISubprogram(name: "mode_compile", scope: !713, file: !713, line: 134, type: !1422, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !1432)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1424, !111}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !713, line: 98, size: 128, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1425, file: !713, line: 100, baseType: !4, size: 8)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1425, file: !713, line: 101, baseType: !4, size: 8, offset: 8)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1425, file: !713, line: 102, baseType: !1031, size: 32, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1425, file: !713, line: 103, baseType: !1031, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1425, file: !713, line: 104, baseType: !1031, size: 32, offset: 96)
!1432 = !{!1433, !1434, !1437, !1438, !1439, !1440, !1441, !1443, !1445, !1446, !1447, !1451, !1453, !1454, !1455, !1456, !1459, !1460, !1461, !1462}
!1433 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1421, file: !713, line: 134, type: !111)
!1434 = !DILocalVariable(name: "p", scope: !1435, file: !713, line: 138, type: !111)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !713, line: 137, column: 5)
!1436 = distinct !DILexicalBlock(scope: !1421, file: !713, line: 136, column: 7)
!1437 = !DILocalVariable(name: "octal_mode", scope: !1435, file: !713, line: 139, type: !76)
!1438 = !DILocalVariable(name: "mode", scope: !1435, file: !713, line: 140, type: !1031)
!1439 = !DILocalVariable(name: "mentioned", scope: !1435, file: !713, line: 141, type: !1031)
!1440 = !DILocalVariable(name: "mc", scope: !1421, file: !713, line: 163, type: !1424)
!1441 = !DILocalVariable(name: "needed", scope: !1442, file: !713, line: 167, type: !108)
!1442 = distinct !DILexicalBlock(scope: !1421, file: !713, line: 166, column: 3)
!1443 = !DILocalVariable(name: "p", scope: !1444, file: !713, line: 168, type: !111)
!1444 = distinct !DILexicalBlock(scope: !1442, file: !713, line: 168, column: 5)
!1445 = !DILocalVariable(name: "used", scope: !1421, file: !713, line: 175, type: !108)
!1446 = !DILocalVariable(name: "p", scope: !1421, file: !713, line: 176, type: !111)
!1447 = !DILocalVariable(name: "affected", scope: !1448, file: !713, line: 180, type: !1031)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !713, line: 178, column: 5)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !713, line: 177, column: 3)
!1450 = distinct !DILexicalBlock(scope: !1421, file: !713, line: 177, column: 3)
!1451 = !DILocalVariable(name: "op", scope: !1452, file: !713, line: 207, type: !4)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !713, line: 206, column: 9)
!1453 = !DILocalVariable(name: "value", scope: !1452, file: !713, line: 208, type: !1031)
!1454 = !DILocalVariable(name: "mentioned", scope: !1452, file: !713, line: 209, type: !1031)
!1455 = !DILocalVariable(name: "flag", scope: !1452, file: !713, line: 210, type: !4)
!1456 = !DILocalVariable(name: "octal_mode", scope: !1457, file: !713, line: 217, type: !76)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !713, line: 216, column: 15)
!1458 = distinct !DILexicalBlock(scope: !1452, file: !713, line: 213, column: 13)
!1459 = !DILocalVariable(name: "change", scope: !1452, file: !713, line: 287, type: !1424)
!1460 = !DILabel(scope: !1448, name: "no_more_affected", file: !713, line: 203)
!1461 = !DILabel(scope: !1458, name: "no_more_values", file: !713, line: 284)
!1462 = !DILabel(scope: !1421, name: "invalid", file: !713, line: 308)
!1463 = !DILocation(line: 0, scope: !1421)
!1464 = !DILocation(line: 136, column: 14, scope: !1436)
!1465 = !DILocation(line: 136, column: 27, scope: !1436)
!1466 = !DILocation(line: 146, column: 41, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1435, file: !713, line: 145, column: 9)
!1468 = !DILocation(line: 0, scope: !1435)
!1469 = !DILocation(line: 146, column: 26, scope: !1467)
!1470 = !DILocation(line: 146, column: 39, scope: !1467)
!1471 = !DILocation(line: 146, column: 46, scope: !1467)
!1472 = !DILocation(line: 147, column: 20, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1467, file: !713, line: 147, column: 15)
!1474 = !DILocation(line: 147, column: 15, scope: !1467)
!1475 = !DILocation(line: 146, column: 43, scope: !1467)
!1476 = !DILocation(line: 150, column: 21, scope: !1435)
!1477 = !DILocation(line: 150, column: 24, scope: !1435)
!1478 = distinct !{!1478, !1479, !1480, !913}
!1479 = !DILocation(line: 144, column: 7, scope: !1435)
!1480 = !DILocation(line: 150, column: 35, scope: !1435)
!1481 = !DILocation(line: 152, column: 11, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1435, file: !713, line: 152, column: 11)
!1483 = !DILocation(line: 152, column: 11, scope: !1435)
!1484 = !DILocation(line: 156, column: 22, scope: !1435)
!1485 = !DILocation(line: 156, column: 36, scope: !1435)
!1486 = !DILocation(line: 156, column: 20, scope: !1435)
!1487 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1488, file: !713, line: 112, type: !1031)
!1488 = distinct !DISubprogram(name: "make_node_op_equals", scope: !713, file: !713, line: 112, type: !1489, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1424, !1031, !1031}
!1491 = !{!1487, !1492, !1493}
!1492 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1488, file: !713, line: 112, type: !1031)
!1493 = !DILocalVariable(name: "p", scope: !1488, file: !713, line: 114, type: !1424)
!1494 = !DILocation(line: 0, scope: !1488, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 159, column: 14, scope: !1435)
!1496 = !DILocation(line: 114, column: 27, scope: !1488, inlinedAt: !1495)
!1497 = !DILocation(line: 115, column: 9, scope: !1488, inlinedAt: !1495)
!1498 = !{!1499, !802, i64 0}
!1499 = !{!"mode_change", !802, i64 0, !802, i64 1, !867, i64 4, !867, i64 8, !867, i64 12}
!1500 = !DILocation(line: 116, column: 6, scope: !1488, inlinedAt: !1495)
!1501 = !DILocation(line: 116, column: 11, scope: !1488, inlinedAt: !1495)
!1502 = !{!1499, !802, i64 1}
!1503 = !DILocation(line: 117, column: 6, scope: !1488, inlinedAt: !1495)
!1504 = !DILocation(line: 117, column: 15, scope: !1488, inlinedAt: !1495)
!1505 = !{!1499, !867, i64 4}
!1506 = !DILocation(line: 118, column: 6, scope: !1488, inlinedAt: !1495)
!1507 = !DILocation(line: 118, column: 12, scope: !1488, inlinedAt: !1495)
!1508 = !{!1499, !867, i64 8}
!1509 = !DILocation(line: 119, column: 6, scope: !1488, inlinedAt: !1495)
!1510 = !DILocation(line: 119, column: 16, scope: !1488, inlinedAt: !1495)
!1511 = !{!1499, !867, i64 12}
!1512 = !DILocation(line: 120, column: 8, scope: !1488, inlinedAt: !1495)
!1513 = !DILocation(line: 120, column: 13, scope: !1488, inlinedAt: !1495)
!1514 = !DILocation(line: 159, column: 7, scope: !1435)
!1515 = !DILocation(line: 168, column: 39, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1444, file: !713, line: 168, column: 5)
!1517 = !DILocation(line: 0, scope: !1442)
!1518 = !DILocation(line: 168, scope: !1444)
!1519 = !DILocation(line: 0, scope: !1444)
!1520 = !DILocation(line: 168, column: 5, scope: !1444)
!1521 = !DILocation(line: 170, column: 10, scope: !1442)
!1522 = !DILocation(line: 177, column: 8, scope: !1450)
!1523 = !DILocation(line: 169, column: 41, scope: !1516)
!1524 = !DILocation(line: 169, column: 14, scope: !1516)
!1525 = !DILocation(line: 168, column: 44, scope: !1516)
!1526 = !DILocation(line: 168, column: 5, scope: !1516)
!1527 = distinct !{!1527, !1520, !1528, !913}
!1528 = !DILocation(line: 169, column: 53, scope: !1444)
!1529 = !DILocation(line: 175, column: 10, scope: !1421)
!1530 = !DILocation(line: 177, scope: !1450)
!1531 = !DILocation(line: 0, scope: !1452)
!1532 = !DILocation(line: 0, scope: !1448)
!1533 = !DILocation(line: 183, column: 7, scope: !1448)
!1534 = !DILocation(line: 0, scope: !1450)
!1535 = !DILocation(line: 184, column: 17, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !713, line: 183, column: 7)
!1537 = distinct !DILexicalBlock(scope: !1448, file: !713, line: 183, column: 7)
!1538 = !DILocation(line: 184, column: 9, scope: !1536)
!1539 = !DILocation(line: 212, column: 11, scope: !1452)
!1540 = !DILocation(line: 189, column: 22, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !713, line: 185, column: 11)
!1542 = !DILocation(line: 190, column: 13, scope: !1541)
!1543 = !DILocation(line: 192, column: 22, scope: !1541)
!1544 = !DILocation(line: 193, column: 13, scope: !1541)
!1545 = !DILocation(line: 195, column: 22, scope: !1541)
!1546 = !DILocation(line: 196, column: 13, scope: !1541)
!1547 = !DILocation(line: 0, scope: !1541)
!1548 = !DILocation(line: 183, column: 16, scope: !1536)
!1549 = !DILocation(line: 183, column: 7, scope: !1536)
!1550 = distinct !{!1550, !1551, !1552}
!1551 = !DILocation(line: 183, column: 7, scope: !1537)
!1552 = !DILocation(line: 202, column: 11, scope: !1537)
!1553 = !DILocation(line: 207, column: 21, scope: !1452)
!1554 = !DILocation(line: 180, column: 14, scope: !1448)
!1555 = !DILocation(line: 207, column: 23, scope: !1452)
!1556 = !DILocation(line: 212, column: 19, scope: !1452)
!1557 = !DILocation(line: 219, column: 17, scope: !1457)
!1558 = !DILocation(line: 221, column: 51, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1457, file: !713, line: 220, column: 19)
!1560 = !DILocation(line: 0, scope: !1457)
!1561 = !DILocation(line: 221, column: 36, scope: !1559)
!1562 = !DILocation(line: 221, column: 49, scope: !1559)
!1563 = !DILocation(line: 221, column: 56, scope: !1559)
!1564 = !DILocation(line: 222, column: 30, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1559, file: !713, line: 222, column: 25)
!1566 = !DILocation(line: 222, column: 25, scope: !1559)
!1567 = !DILocation(line: 221, column: 53, scope: !1559)
!1568 = !DILocation(line: 225, column: 31, scope: !1457)
!1569 = !DILocation(line: 225, column: 34, scope: !1457)
!1570 = distinct !{!1570, !1557, !1571, !913}
!1571 = !DILocation(line: 225, column: 45, scope: !1457)
!1572 = !DILocation(line: 227, column: 21, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1457, file: !713, line: 227, column: 21)
!1574 = !DILocation(line: 227, column: 30, scope: !1573)
!1575 = !DILocation(line: 227, column: 37, scope: !1573)
!1576 = !DILocation(line: 239, column: 16, scope: !1458)
!1577 = !DILocation(line: 240, column: 15, scope: !1458)
!1578 = !DILocation(line: 245, column: 16, scope: !1458)
!1579 = !DILocation(line: 246, column: 15, scope: !1458)
!1580 = !DILocation(line: 251, column: 16, scope: !1458)
!1581 = !DILocation(line: 252, column: 15, scope: !1458)
!1582 = !DILocation(line: 259, column: 25, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !713, line: 258, column: 15)
!1584 = distinct !DILexicalBlock(scope: !1458, file: !713, line: 258, column: 15)
!1585 = !DILocation(line: 0, scope: !1458)
!1586 = !DILocation(line: 256, column: 20, scope: !1458)
!1587 = !DILocation(line: 259, column: 17, scope: !1583)
!1588 = !DILocation(line: 262, column: 27, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1583, file: !713, line: 260, column: 19)
!1590 = !DILocation(line: 263, column: 21, scope: !1589)
!1591 = !DILocation(line: 265, column: 27, scope: !1589)
!1592 = !DILocation(line: 266, column: 21, scope: !1589)
!1593 = !DILocation(line: 268, column: 27, scope: !1589)
!1594 = !DILocation(line: 269, column: 21, scope: !1589)
!1595 = !DILocation(line: 275, column: 27, scope: !1589)
!1596 = !DILocation(line: 276, column: 21, scope: !1589)
!1597 = !DILocation(line: 279, column: 27, scope: !1589)
!1598 = !DILocation(line: 280, column: 21, scope: !1589)
!1599 = !DILocation(line: 258, column: 24, scope: !1583)
!1600 = !DILocation(line: 258, column: 15, scope: !1583)
!1601 = distinct !{!1601, !1602, !1603}
!1602 = !DILocation(line: 258, column: 15, scope: !1584)
!1603 = !DILocation(line: 283, column: 19, scope: !1584)
!1604 = !DILocation(line: 209, column: 18, scope: !1452)
!1605 = !DILocation(line: 294, column: 14, scope: !1452)
!1606 = !DILocation(line: 288, column: 28, scope: !1452)
!1607 = !DILocation(line: 288, column: 21, scope: !1452)
!1608 = !DILocation(line: 289, column: 22, scope: !1452)
!1609 = !DILocation(line: 290, column: 19, scope: !1452)
!1610 = !DILocation(line: 290, column: 24, scope: !1452)
!1611 = !DILocation(line: 291, column: 19, scope: !1452)
!1612 = !DILocation(line: 291, column: 28, scope: !1452)
!1613 = !DILocation(line: 292, column: 19, scope: !1452)
!1614 = !DILocation(line: 292, column: 25, scope: !1452)
!1615 = !DILocation(line: 293, column: 19, scope: !1452)
!1616 = !DILocation(line: 293, column: 29, scope: !1452)
!1617 = !DILocation(line: 296, column: 14, scope: !1448)
!1618 = !DILocation(line: 296, column: 24, scope: !1448)
!1619 = !DILocation(line: 177, column: 28, scope: !1449)
!1620 = !DILocation(line: 177, column: 3, scope: !1449)
!1621 = distinct !{!1621, !1622, !1623}
!1622 = !DILocation(line: 177, column: 3, scope: !1450)
!1623 = !DILocation(line: 300, column: 5, scope: !1450)
!1624 = !DILocation(line: 304, column: 16, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !713, line: 303, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1421, file: !713, line: 302, column: 7)
!1627 = !DILocation(line: 304, column: 21, scope: !1625)
!1628 = !DILocation(line: 305, column: 7, scope: !1625)
!1629 = !DILocation(line: 308, column: 1, scope: !1421)
!1630 = !DILocation(line: 309, column: 3, scope: !1421)
!1631 = !DILocation(line: 310, column: 3, scope: !1421)
!1632 = !DILocation(line: 311, column: 1, scope: !1421)
!1633 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !713, file: !713, line: 317, type: !1422, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !1634)
!1634 = !{!1635, !1636}
!1635 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1633, file: !713, line: 317, type: !111)
!1636 = !DILocalVariable(name: "ref_stats", scope: !1633, file: !713, line: 319, type: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1638, line: 44, size: 1024, elements: !1639)
!1638 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1639 = !{!1640, !1642, !1644, !1645, !1647, !1649, !1651, !1652, !1653, !1654, !1656, !1657, !1659, !1667, !1668, !1669}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1637, file: !1638, line: 46, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !211, line: 145, baseType: !110)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1637, file: !1638, line: 47, baseType: !1643, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !211, line: 148, baseType: !110)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1637, file: !1638, line: 48, baseType: !1033, size: 32, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1637, file: !1638, line: 49, baseType: !1646, size: 32, offset: 160)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !211, line: 151, baseType: !76)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1637, file: !1638, line: 50, baseType: !1648, size: 32, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !211, line: 146, baseType: !76)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1637, file: !1638, line: 51, baseType: !1650, size: 32, offset: 224)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !211, line: 147, baseType: !76)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1637, file: !1638, line: 52, baseType: !1641, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1637, file: !1638, line: 53, baseType: !1641, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1637, file: !1638, line: 54, baseType: !210, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1637, file: !1638, line: 55, baseType: !1655, size: 32, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !211, line: 175, baseType: !70)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1637, file: !1638, line: 56, baseType: !70, size: 32, offset: 480)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1637, file: !1638, line: 57, baseType: !1658, size: 64, offset: 512)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !211, line: 180, baseType: !212)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1637, file: !1638, line: 65, baseType: !1660, size: 128, offset: 576)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1661, line: 11, size: 128, elements: !1662)
!1661 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1662 = !{!1663, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1660, file: !1661, line: 16, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !211, line: 160, baseType: !212)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1660, file: !1661, line: 21, baseType: !1666, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !211, line: 197, baseType: !212)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1637, file: !1638, line: 66, baseType: !1660, size: 128, offset: 704)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1637, file: !1638, line: 67, baseType: !1660, size: 128, offset: 832)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1637, file: !1638, line: 79, baseType: !1670, size: 64, offset: 960)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !259)
!1671 = !DILocation(line: 0, scope: !1633)
!1672 = !DILocation(line: 319, column: 3, scope: !1633)
!1673 = !DILocation(line: 319, column: 15, scope: !1633)
!1674 = !DILocation(line: 321, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1633, file: !713, line: 321, column: 7)
!1676 = !DILocation(line: 321, column: 35, scope: !1675)
!1677 = !DILocation(line: 321, column: 7, scope: !1633)
!1678 = !DILocation(line: 323, column: 41, scope: !1633)
!1679 = !{!1680, !867, i64 16}
!1680 = !{!"stat", !1328, i64 0, !1328, i64 8, !867, i64 16, !867, i64 20, !867, i64 24, !867, i64 28, !1328, i64 32, !1328, i64 40, !1328, i64 48, !867, i64 56, !867, i64 60, !1328, i64 64, !1681, i64 72, !1681, i64 88, !1681, i64 104, !802, i64 120}
!1681 = !{!"timespec", !1328, i64 0, !1328, i64 8}
!1682 = !DILocation(line: 0, scope: !1488, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 323, column: 10, scope: !1633)
!1684 = !DILocation(line: 114, column: 27, scope: !1488, inlinedAt: !1683)
!1685 = !DILocation(line: 115, column: 9, scope: !1488, inlinedAt: !1683)
!1686 = !DILocation(line: 116, column: 6, scope: !1488, inlinedAt: !1683)
!1687 = !DILocation(line: 116, column: 11, scope: !1488, inlinedAt: !1683)
!1688 = !DILocation(line: 117, column: 6, scope: !1488, inlinedAt: !1683)
!1689 = !DILocation(line: 117, column: 15, scope: !1488, inlinedAt: !1683)
!1690 = !DILocation(line: 118, column: 6, scope: !1488, inlinedAt: !1683)
!1691 = !DILocation(line: 118, column: 12, scope: !1488, inlinedAt: !1683)
!1692 = !DILocation(line: 119, column: 6, scope: !1488, inlinedAt: !1683)
!1693 = !DILocation(line: 119, column: 16, scope: !1488, inlinedAt: !1683)
!1694 = !DILocation(line: 120, column: 8, scope: !1488, inlinedAt: !1683)
!1695 = !DILocation(line: 120, column: 13, scope: !1488, inlinedAt: !1683)
!1696 = !DILocation(line: 323, column: 3, scope: !1633)
!1697 = !DILocation(line: 324, column: 1, scope: !1633)
!1698 = !DISubprogram(name: "stat", scope: !1128, file: !1128, line: 205, type: !1699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!70, !857, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1702)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1703 = distinct !DISubprogram(name: "mode_adjust", scope: !713, file: !713, line: 340, type: !1704, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !1709)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1031, !1031, !171, !1031, !1706, !1708}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1721, !1722, !1723}
!1710 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1703, file: !713, line: 340, type: !1031)
!1711 = !DILocalVariable(name: "dir", arg: 2, scope: !1703, file: !713, line: 340, type: !171)
!1712 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1703, file: !713, line: 340, type: !1031)
!1713 = !DILocalVariable(name: "changes", arg: 4, scope: !1703, file: !713, line: 341, type: !1706)
!1714 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1703, file: !713, line: 341, type: !1708)
!1715 = !DILocalVariable(name: "newmode", scope: !1703, file: !713, line: 344, type: !1031)
!1716 = !DILocalVariable(name: "mode_bits", scope: !1703, file: !713, line: 347, type: !1031)
!1717 = !DILocalVariable(name: "affected", scope: !1718, file: !713, line: 351, type: !1031)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !713, line: 350, column: 5)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !713, line: 349, column: 3)
!1720 = distinct !DILexicalBlock(scope: !1703, file: !713, line: 349, column: 3)
!1721 = !DILocalVariable(name: "omit_change", scope: !1718, file: !713, line: 352, type: !1031)
!1722 = !DILocalVariable(name: "value", scope: !1718, file: !713, line: 354, type: !1031)
!1723 = !DILocalVariable(name: "preserved", scope: !1724, file: !713, line: 394, type: !1031)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !713, line: 393, column: 11)
!1725 = distinct !DILexicalBlock(scope: !1718, file: !713, line: 388, column: 9)
!1726 = !DILocation(line: 0, scope: !1703)
!1727 = !DILocation(line: 344, column: 28, scope: !1703)
!1728 = !DILocation(line: 349, column: 19, scope: !1719)
!1729 = !DILocation(line: 349, column: 24, scope: !1719)
!1730 = !DILocation(line: 349, column: 3, scope: !1720)
!1731 = !DILocation(line: 351, column: 34, scope: !1718)
!1732 = !DILocation(line: 0, scope: !1718)
!1733 = !DILocation(line: 353, column: 52, scope: !1718)
!1734 = !DILocation(line: 353, column: 41, scope: !1718)
!1735 = !DILocation(line: 353, column: 39, scope: !1718)
!1736 = !DILocation(line: 354, column: 31, scope: !1718)
!1737 = !DILocation(line: 356, column: 7, scope: !1718)
!1738 = !DILocation(line: 363, column: 17, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1718, file: !713, line: 357, column: 9)
!1740 = !DILocation(line: 366, column: 28, scope: !1739)
!1741 = !DILocation(line: 366, column: 22, scope: !1739)
!1742 = !DILocation(line: 368, column: 30, scope: !1739)
!1743 = !DILocation(line: 368, column: 24, scope: !1739)
!1744 = !DILocation(line: 370, column: 30, scope: !1739)
!1745 = !DILocation(line: 370, column: 24, scope: !1739)
!1746 = !DILocation(line: 370, column: 21, scope: !1739)
!1747 = !DILocation(line: 366, column: 17, scope: !1739)
!1748 = !DILocation(line: 372, column: 11, scope: !1739)
!1749 = !DILocation(line: 377, column: 24, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1739, file: !713, line: 377, column: 15)
!1751 = !DILocation(line: 377, column: 57, scope: !1750)
!1752 = !DILocation(line: 377, column: 15, scope: !1739)
!1753 = !DILocation(line: 385, column: 17, scope: !1718)
!1754 = !DILocation(line: 385, column: 55, scope: !1718)
!1755 = !DILocation(line: 385, column: 53, scope: !1718)
!1756 = !DILocation(line: 385, column: 13, scope: !1718)
!1757 = !DILocation(line: 387, column: 24, scope: !1718)
!1758 = !DILocation(line: 387, column: 7, scope: !1718)
!1759 = !DILocation(line: 394, column: 33, scope: !1724)
!1760 = !DILocation(line: 394, column: 59, scope: !1724)
!1761 = !DILocation(line: 0, scope: !1724)
!1762 = !DILocation(line: 395, column: 42, scope: !1724)
!1763 = !DILocation(line: 395, column: 23, scope: !1724)
!1764 = !DILocation(line: 396, column: 32, scope: !1724)
!1765 = !DILocation(line: 396, column: 45, scope: !1724)
!1766 = !DILocation(line: 401, column: 21, scope: !1725)
!1767 = !DILocation(line: 402, column: 19, scope: !1725)
!1768 = !DILocation(line: 403, column: 11, scope: !1725)
!1769 = !DILocation(line: 406, column: 21, scope: !1725)
!1770 = !DILocation(line: 407, column: 22, scope: !1725)
!1771 = !DILocation(line: 407, column: 19, scope: !1725)
!1772 = !DILocation(line: 408, column: 11, scope: !1725)
!1773 = !DILocation(line: 349, column: 45, scope: !1719)
!1774 = distinct !{!1774, !1730, !1775, !913}
!1775 = !DILocation(line: 410, column: 5, scope: !1720)
!1776 = !DILocation(line: 347, column: 10, scope: !1703)
!1777 = !DILocation(line: 344, column: 10, scope: !1703)
!1778 = !DILocation(line: 412, column: 7, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1703, file: !713, line: 412, column: 7)
!1780 = !DILocation(line: 412, column: 7, scope: !1703)
!1781 = !DILocation(line: 413, column: 17, scope: !1779)
!1782 = !DILocation(line: 413, column: 5, scope: !1779)
!1783 = !DILocation(line: 414, column: 3, scope: !1703)
!1784 = distinct !DISubprogram(name: "set_program_name", scope: !451, file: !451, line: 37, type: !818, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !1785)
!1785 = !{!1786, !1787, !1788}
!1786 = !DILocalVariable(name: "argv0", arg: 1, scope: !1784, file: !451, line: 37, type: !111)
!1787 = !DILocalVariable(name: "slash", scope: !1784, file: !451, line: 44, type: !111)
!1788 = !DILocalVariable(name: "base", scope: !1784, file: !451, line: 45, type: !111)
!1789 = !DILocation(line: 0, scope: !1784)
!1790 = !DILocation(line: 44, column: 23, scope: !1784)
!1791 = !DILocation(line: 45, column: 22, scope: !1784)
!1792 = !DILocation(line: 46, column: 17, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1784, file: !451, line: 46, column: 7)
!1794 = !DILocation(line: 46, column: 9, scope: !1793)
!1795 = !DILocation(line: 46, column: 25, scope: !1793)
!1796 = !DILocation(line: 46, column: 40, scope: !1793)
!1797 = !DILocalVariable(name: "__s1", arg: 1, scope: !1798, file: !879, line: 974, type: !1011)
!1798 = distinct !DISubprogram(name: "memeq", scope: !879, file: !879, line: 974, type: !1799, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!171, !1011, !1011, !108}
!1801 = !{!1797, !1802, !1803}
!1802 = !DILocalVariable(name: "__s2", arg: 2, scope: !1798, file: !879, line: 974, type: !1011)
!1803 = !DILocalVariable(name: "__n", arg: 3, scope: !1798, file: !879, line: 974, type: !108)
!1804 = !DILocation(line: 0, scope: !1798, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 46, column: 28, scope: !1793)
!1806 = !DILocation(line: 976, column: 11, scope: !1798, inlinedAt: !1805)
!1807 = !DILocation(line: 976, column: 10, scope: !1798, inlinedAt: !1805)
!1808 = !DILocation(line: 46, column: 7, scope: !1784)
!1809 = !DILocation(line: 49, column: 11, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !451, line: 49, column: 11)
!1811 = distinct !DILexicalBlock(scope: !1793, file: !451, line: 47, column: 5)
!1812 = !DILocation(line: 49, column: 36, scope: !1810)
!1813 = !DILocation(line: 49, column: 11, scope: !1811)
!1814 = !DILocation(line: 65, column: 16, scope: !1784)
!1815 = !DILocation(line: 71, column: 27, scope: !1784)
!1816 = !DILocation(line: 74, column: 33, scope: !1784)
!1817 = !DILocation(line: 76, column: 1, scope: !1784)
!1818 = !DISubprogram(name: "strrchr", scope: !983, file: !983, line: 273, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1819 = !DILocation(line: 0, scope: !460)
!1820 = !DILocation(line: 40, column: 29, scope: !460)
!1821 = !DILocation(line: 41, column: 19, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !460, file: !461, line: 41, column: 7)
!1823 = !DILocation(line: 41, column: 7, scope: !460)
!1824 = !DILocation(line: 47, column: 3, scope: !460)
!1825 = !DILocation(line: 48, column: 3, scope: !460)
!1826 = !DILocation(line: 48, column: 13, scope: !460)
!1827 = !DILocalVariable(name: "ps", arg: 1, scope: !1828, file: !1829, line: 1135, type: !1832)
!1828 = distinct !DISubprogram(name: "mbszero", scope: !1829, file: !1829, line: 1135, type: !1830, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1833)
!1829 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !1832}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!1833 = !{!1827}
!1834 = !DILocation(line: 0, scope: !1828, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 48, column: 18, scope: !460)
!1836 = !DILocalVariable(name: "__dest", arg: 1, scope: !1837, file: !1838, line: 57, type: !106)
!1837 = distinct !DISubprogram(name: "memset", scope: !1838, file: !1838, line: 57, type: !1839, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1841)
!1838 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!106, !106, !70, !108}
!1841 = !{!1836, !1842, !1843}
!1842 = !DILocalVariable(name: "__ch", arg: 2, scope: !1837, file: !1838, line: 57, type: !70)
!1843 = !DILocalVariable(name: "__len", arg: 3, scope: !1837, file: !1838, line: 57, type: !108)
!1844 = !DILocation(line: 0, scope: !1837, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 1137, column: 3, scope: !1828, inlinedAt: !1835)
!1846 = !DILocation(line: 59, column: 10, scope: !1837, inlinedAt: !1845)
!1847 = !DILocation(line: 49, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !460, file: !461, line: 49, column: 7)
!1849 = !DILocation(line: 49, column: 39, scope: !1848)
!1850 = !DILocation(line: 49, column: 44, scope: !1848)
!1851 = !DILocation(line: 54, column: 1, scope: !460)
!1852 = !DISubprogram(name: "mbrtoc32", scope: !472, file: !472, line: 57, type: !1853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!108, !1855, !857, !108, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1832)
!1858 = distinct !DISubprogram(name: "clone_quoting_options", scope: !491, file: !491, line: 113, type: !1859, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1862)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1861, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!1862 = !{!1863, !1864, !1865}
!1863 = !DILocalVariable(name: "o", arg: 1, scope: !1858, file: !491, line: 113, type: !1861)
!1864 = !DILocalVariable(name: "saved_errno", scope: !1858, file: !491, line: 115, type: !70)
!1865 = !DILocalVariable(name: "p", scope: !1858, file: !491, line: 116, type: !1861)
!1866 = !DILocation(line: 0, scope: !1858)
!1867 = !DILocation(line: 115, column: 21, scope: !1858)
!1868 = !DILocation(line: 116, column: 40, scope: !1858)
!1869 = !DILocation(line: 116, column: 31, scope: !1858)
!1870 = !DILocation(line: 118, column: 9, scope: !1858)
!1871 = !DILocation(line: 119, column: 3, scope: !1858)
!1872 = distinct !DISubprogram(name: "get_quoting_style", scope: !491, file: !491, line: 124, type: !1873, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1877)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!74, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!1877 = !{!1878}
!1878 = !DILocalVariable(name: "o", arg: 1, scope: !1872, file: !491, line: 124, type: !1875)
!1879 = !DILocation(line: 0, scope: !1872)
!1880 = !DILocation(line: 126, column: 11, scope: !1872)
!1881 = !DILocation(line: 126, column: 46, scope: !1872)
!1882 = !{!1883, !802, i64 0}
!1883 = !{!"quoting_options", !802, i64 0, !867, i64 4, !802, i64 8, !801, i64 40, !801, i64 48}
!1884 = !DILocation(line: 126, column: 3, scope: !1872)
!1885 = distinct !DISubprogram(name: "set_quoting_style", scope: !491, file: !491, line: 132, type: !1886, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1861, !74}
!1888 = !{!1889, !1890}
!1889 = !DILocalVariable(name: "o", arg: 1, scope: !1885, file: !491, line: 132, type: !1861)
!1890 = !DILocalVariable(name: "s", arg: 2, scope: !1885, file: !491, line: 132, type: !74)
!1891 = !DILocation(line: 0, scope: !1885)
!1892 = !DILocation(line: 134, column: 4, scope: !1885)
!1893 = !DILocation(line: 134, column: 45, scope: !1885)
!1894 = !DILocation(line: 135, column: 1, scope: !1885)
!1895 = distinct !DISubprogram(name: "set_char_quoting", scope: !491, file: !491, line: 143, type: !1896, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!70, !1861, !4, !70}
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1905, !1906}
!1899 = !DILocalVariable(name: "o", arg: 1, scope: !1895, file: !491, line: 143, type: !1861)
!1900 = !DILocalVariable(name: "c", arg: 2, scope: !1895, file: !491, line: 143, type: !4)
!1901 = !DILocalVariable(name: "i", arg: 3, scope: !1895, file: !491, line: 143, type: !70)
!1902 = !DILocalVariable(name: "uc", scope: !1895, file: !491, line: 145, type: !113)
!1903 = !DILocalVariable(name: "p", scope: !1895, file: !491, line: 146, type: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1905 = !DILocalVariable(name: "shift", scope: !1895, file: !491, line: 148, type: !70)
!1906 = !DILocalVariable(name: "r", scope: !1895, file: !491, line: 149, type: !76)
!1907 = !DILocation(line: 0, scope: !1895)
!1908 = !DILocation(line: 147, column: 6, scope: !1895)
!1909 = !DILocation(line: 147, column: 41, scope: !1895)
!1910 = !DILocation(line: 147, column: 62, scope: !1895)
!1911 = !DILocation(line: 147, column: 57, scope: !1895)
!1912 = !DILocation(line: 148, column: 15, scope: !1895)
!1913 = !DILocation(line: 149, column: 21, scope: !1895)
!1914 = !DILocation(line: 149, column: 24, scope: !1895)
!1915 = !DILocation(line: 149, column: 34, scope: !1895)
!1916 = !DILocation(line: 150, column: 19, scope: !1895)
!1917 = !DILocation(line: 150, column: 24, scope: !1895)
!1918 = !DILocation(line: 150, column: 6, scope: !1895)
!1919 = !DILocation(line: 151, column: 3, scope: !1895)
!1920 = distinct !DISubprogram(name: "set_quoting_flags", scope: !491, file: !491, line: 159, type: !1921, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1923)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!70, !1861, !70}
!1923 = !{!1924, !1925, !1926}
!1924 = !DILocalVariable(name: "o", arg: 1, scope: !1920, file: !491, line: 159, type: !1861)
!1925 = !DILocalVariable(name: "i", arg: 2, scope: !1920, file: !491, line: 159, type: !70)
!1926 = !DILocalVariable(name: "r", scope: !1920, file: !491, line: 163, type: !70)
!1927 = !DILocation(line: 0, scope: !1920)
!1928 = !DILocation(line: 161, column: 8, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1920, file: !491, line: 161, column: 7)
!1930 = !DILocation(line: 161, column: 7, scope: !1920)
!1931 = !DILocation(line: 163, column: 14, scope: !1920)
!1932 = !{!1883, !867, i64 4}
!1933 = !DILocation(line: 164, column: 12, scope: !1920)
!1934 = !DILocation(line: 165, column: 3, scope: !1920)
!1935 = distinct !DISubprogram(name: "set_custom_quoting", scope: !491, file: !491, line: 169, type: !1936, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1861, !111, !111}
!1938 = !{!1939, !1940, !1941}
!1939 = !DILocalVariable(name: "o", arg: 1, scope: !1935, file: !491, line: 169, type: !1861)
!1940 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1935, file: !491, line: 170, type: !111)
!1941 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1935, file: !491, line: 170, type: !111)
!1942 = !DILocation(line: 0, scope: !1935)
!1943 = !DILocation(line: 172, column: 8, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1935, file: !491, line: 172, column: 7)
!1945 = !DILocation(line: 172, column: 7, scope: !1935)
!1946 = !DILocation(line: 174, column: 12, scope: !1935)
!1947 = !DILocation(line: 175, column: 8, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1935, file: !491, line: 175, column: 7)
!1949 = !DILocation(line: 175, column: 19, scope: !1948)
!1950 = !DILocation(line: 176, column: 5, scope: !1948)
!1951 = !DILocation(line: 177, column: 6, scope: !1935)
!1952 = !DILocation(line: 177, column: 17, scope: !1935)
!1953 = !{!1883, !801, i64 40}
!1954 = !DILocation(line: 178, column: 6, scope: !1935)
!1955 = !DILocation(line: 178, column: 18, scope: !1935)
!1956 = !{!1883, !801, i64 48}
!1957 = !DILocation(line: 179, column: 1, scope: !1935)
!1958 = !DISubprogram(name: "abort", scope: !987, file: !987, line: 598, type: !446, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !809)
!1959 = distinct !DISubprogram(name: "quotearg_buffer", scope: !491, file: !491, line: 774, type: !1960, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!108, !105, !108, !111, !108, !1875}
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970}
!1963 = !DILocalVariable(name: "buffer", arg: 1, scope: !1959, file: !491, line: 774, type: !105)
!1964 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1959, file: !491, line: 774, type: !108)
!1965 = !DILocalVariable(name: "arg", arg: 3, scope: !1959, file: !491, line: 775, type: !111)
!1966 = !DILocalVariable(name: "argsize", arg: 4, scope: !1959, file: !491, line: 775, type: !108)
!1967 = !DILocalVariable(name: "o", arg: 5, scope: !1959, file: !491, line: 776, type: !1875)
!1968 = !DILocalVariable(name: "p", scope: !1959, file: !491, line: 778, type: !1875)
!1969 = !DILocalVariable(name: "saved_errno", scope: !1959, file: !491, line: 779, type: !70)
!1970 = !DILocalVariable(name: "r", scope: !1959, file: !491, line: 780, type: !108)
!1971 = !DILocation(line: 0, scope: !1959)
!1972 = !DILocation(line: 778, column: 37, scope: !1959)
!1973 = !DILocation(line: 779, column: 21, scope: !1959)
!1974 = !DILocation(line: 781, column: 43, scope: !1959)
!1975 = !DILocation(line: 781, column: 53, scope: !1959)
!1976 = !DILocation(line: 781, column: 63, scope: !1959)
!1977 = !DILocation(line: 782, column: 43, scope: !1959)
!1978 = !DILocation(line: 782, column: 58, scope: !1959)
!1979 = !DILocation(line: 780, column: 14, scope: !1959)
!1980 = !DILocation(line: 783, column: 9, scope: !1959)
!1981 = !DILocation(line: 784, column: 3, scope: !1959)
!1982 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !491, file: !491, line: 251, type: !1983, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1987)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!108, !105, !108, !111, !108, !74, !70, !1985, !111, !111}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2012, !2014, !2017, !2018, !2019, !2020, !2023, !2024, !2027, !2031, !2032, !2040, !2043, !2044, !2046, !2047, !2048, !2049}
!1988 = !DILocalVariable(name: "buffer", arg: 1, scope: !1982, file: !491, line: 251, type: !105)
!1989 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1982, file: !491, line: 251, type: !108)
!1990 = !DILocalVariable(name: "arg", arg: 3, scope: !1982, file: !491, line: 252, type: !111)
!1991 = !DILocalVariable(name: "argsize", arg: 4, scope: !1982, file: !491, line: 252, type: !108)
!1992 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1982, file: !491, line: 253, type: !74)
!1993 = !DILocalVariable(name: "flags", arg: 6, scope: !1982, file: !491, line: 253, type: !70)
!1994 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1982, file: !491, line: 254, type: !1985)
!1995 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1982, file: !491, line: 255, type: !111)
!1996 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1982, file: !491, line: 256, type: !111)
!1997 = !DILocalVariable(name: "unibyte_locale", scope: !1982, file: !491, line: 258, type: !171)
!1998 = !DILocalVariable(name: "len", scope: !1982, file: !491, line: 260, type: !108)
!1999 = !DILocalVariable(name: "orig_buffersize", scope: !1982, file: !491, line: 261, type: !108)
!2000 = !DILocalVariable(name: "quote_string", scope: !1982, file: !491, line: 262, type: !111)
!2001 = !DILocalVariable(name: "quote_string_len", scope: !1982, file: !491, line: 263, type: !108)
!2002 = !DILocalVariable(name: "backslash_escapes", scope: !1982, file: !491, line: 264, type: !171)
!2003 = !DILocalVariable(name: "elide_outer_quotes", scope: !1982, file: !491, line: 265, type: !171)
!2004 = !DILocalVariable(name: "encountered_single_quote", scope: !1982, file: !491, line: 266, type: !171)
!2005 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1982, file: !491, line: 267, type: !171)
!2006 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1982, file: !491, line: 309, type: !171)
!2007 = !DILocalVariable(name: "lq", scope: !2008, file: !491, line: 361, type: !111)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !491, line: 361, column: 11)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !491, line: 360, column: 13)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !491, line: 333, column: 7)
!2011 = distinct !DILexicalBlock(scope: !1982, file: !491, line: 312, column: 5)
!2012 = !DILocalVariable(name: "i", scope: !2013, file: !491, line: 395, type: !108)
!2013 = distinct !DILexicalBlock(scope: !1982, file: !491, line: 395, column: 3)
!2014 = !DILocalVariable(name: "is_right_quote", scope: !2015, file: !491, line: 397, type: !171)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !491, line: 396, column: 5)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !491, line: 395, column: 3)
!2017 = !DILocalVariable(name: "escaping", scope: !2015, file: !491, line: 398, type: !171)
!2018 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2015, file: !491, line: 399, type: !171)
!2019 = !DILocalVariable(name: "c", scope: !2015, file: !491, line: 417, type: !113)
!2020 = !DILocalVariable(name: "m", scope: !2021, file: !491, line: 598, type: !108)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !491, line: 596, column: 11)
!2022 = distinct !DILexicalBlock(scope: !2015, file: !491, line: 419, column: 9)
!2023 = !DILocalVariable(name: "printable", scope: !2021, file: !491, line: 600, type: !171)
!2024 = !DILocalVariable(name: "mbs", scope: !2025, file: !491, line: 609, type: !561)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !491, line: 608, column: 15)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !491, line: 602, column: 17)
!2027 = !DILocalVariable(name: "w", scope: !2028, file: !491, line: 618, type: !471)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !491, line: 617, column: 19)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !491, line: 616, column: 17)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !491, line: 616, column: 17)
!2031 = !DILocalVariable(name: "bytes", scope: !2028, file: !491, line: 619, type: !108)
!2032 = !DILocalVariable(name: "j", scope: !2033, file: !491, line: 648, type: !108)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !491, line: 648, column: 29)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !491, line: 647, column: 27)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !491, line: 645, column: 29)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !491, line: 636, column: 23)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !491, line: 628, column: 30)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !491, line: 623, column: 30)
!2039 = distinct !DILexicalBlock(scope: !2028, file: !491, line: 621, column: 25)
!2040 = !DILocalVariable(name: "ilim", scope: !2041, file: !491, line: 674, type: !108)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !491, line: 671, column: 15)
!2042 = distinct !DILexicalBlock(scope: !2021, file: !491, line: 670, column: 17)
!2043 = !DILabel(scope: !1982, name: "process_input", file: !491, line: 308)
!2044 = !DILabel(scope: !2045, name: "c_and_shell_escape", file: !491, line: 502)
!2045 = distinct !DILexicalBlock(scope: !2022, file: !491, line: 478, column: 9)
!2046 = !DILabel(scope: !2045, name: "c_escape", file: !491, line: 507)
!2047 = !DILabel(scope: !2015, name: "store_escape", file: !491, line: 709)
!2048 = !DILabel(scope: !2015, name: "store_c", file: !491, line: 712)
!2049 = !DILabel(scope: !1982, name: "force_outer_quoting_style", file: !491, line: 753)
!2050 = !DILocation(line: 0, scope: !1982)
!2051 = !DILocation(line: 258, column: 25, scope: !1982)
!2052 = !DILocation(line: 258, column: 36, scope: !1982)
!2053 = !DILocation(line: 267, column: 3, scope: !1982)
!2054 = !DILocation(line: 261, column: 10, scope: !1982)
!2055 = !DILocation(line: 262, column: 15, scope: !1982)
!2056 = !DILocation(line: 263, column: 10, scope: !1982)
!2057 = !DILocation(line: 308, column: 2, scope: !1982)
!2058 = !DILocation(line: 311, column: 3, scope: !1982)
!2059 = !DILocation(line: 318, column: 11, scope: !2011)
!2060 = !DILocation(line: 319, column: 9, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !491, line: 319, column: 9)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !491, line: 319, column: 9)
!2063 = distinct !DILexicalBlock(scope: !2011, file: !491, line: 318, column: 11)
!2064 = !DILocation(line: 319, column: 9, scope: !2062)
!2065 = !DILocation(line: 0, scope: !552, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 357, column: 26, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !491, line: 335, column: 11)
!2068 = distinct !DILexicalBlock(scope: !2010, file: !491, line: 334, column: 13)
!2069 = !DILocation(line: 199, column: 29, scope: !552, inlinedAt: !2066)
!2070 = !DILocation(line: 201, column: 19, scope: !2071, inlinedAt: !2066)
!2071 = distinct !DILexicalBlock(scope: !552, file: !491, line: 201, column: 7)
!2072 = !DILocation(line: 201, column: 7, scope: !552, inlinedAt: !2066)
!2073 = !DILocation(line: 229, column: 3, scope: !552, inlinedAt: !2066)
!2074 = !DILocation(line: 230, column: 3, scope: !552, inlinedAt: !2066)
!2075 = !DILocation(line: 230, column: 13, scope: !552, inlinedAt: !2066)
!2076 = !DILocalVariable(name: "ps", arg: 1, scope: !2077, file: !1829, line: 1135, type: !2080)
!2077 = distinct !DISubprogram(name: "mbszero", scope: !1829, file: !1829, line: 1135, type: !2078, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2081)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !2080}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!2081 = !{!2076}
!2082 = !DILocation(line: 0, scope: !2077, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 230, column: 18, scope: !552, inlinedAt: !2066)
!2084 = !DILocalVariable(name: "__dest", arg: 1, scope: !2085, file: !1838, line: 57, type: !106)
!2085 = distinct !DISubprogram(name: "memset", scope: !1838, file: !1838, line: 57, type: !1839, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2086)
!2086 = !{!2084, !2087, !2088}
!2087 = !DILocalVariable(name: "__ch", arg: 2, scope: !2085, file: !1838, line: 57, type: !70)
!2088 = !DILocalVariable(name: "__len", arg: 3, scope: !2085, file: !1838, line: 57, type: !108)
!2089 = !DILocation(line: 0, scope: !2085, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 1137, column: 3, scope: !2077, inlinedAt: !2083)
!2091 = !DILocation(line: 59, column: 10, scope: !2085, inlinedAt: !2090)
!2092 = !DILocation(line: 231, column: 7, scope: !2093, inlinedAt: !2066)
!2093 = distinct !DILexicalBlock(scope: !552, file: !491, line: 231, column: 7)
!2094 = !DILocation(line: 231, column: 40, scope: !2093, inlinedAt: !2066)
!2095 = !DILocation(line: 231, column: 45, scope: !2093, inlinedAt: !2066)
!2096 = !DILocation(line: 235, column: 1, scope: !552, inlinedAt: !2066)
!2097 = !DILocation(line: 0, scope: !552, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 358, column: 27, scope: !2067)
!2099 = !DILocation(line: 199, column: 29, scope: !552, inlinedAt: !2098)
!2100 = !DILocation(line: 201, column: 19, scope: !2071, inlinedAt: !2098)
!2101 = !DILocation(line: 201, column: 7, scope: !552, inlinedAt: !2098)
!2102 = !DILocation(line: 229, column: 3, scope: !552, inlinedAt: !2098)
!2103 = !DILocation(line: 230, column: 3, scope: !552, inlinedAt: !2098)
!2104 = !DILocation(line: 230, column: 13, scope: !552, inlinedAt: !2098)
!2105 = !DILocation(line: 0, scope: !2077, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 230, column: 18, scope: !552, inlinedAt: !2098)
!2107 = !DILocation(line: 0, scope: !2085, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 1137, column: 3, scope: !2077, inlinedAt: !2106)
!2109 = !DILocation(line: 59, column: 10, scope: !2085, inlinedAt: !2108)
!2110 = !DILocation(line: 231, column: 7, scope: !2093, inlinedAt: !2098)
!2111 = !DILocation(line: 231, column: 40, scope: !2093, inlinedAt: !2098)
!2112 = !DILocation(line: 231, column: 45, scope: !2093, inlinedAt: !2098)
!2113 = !DILocation(line: 235, column: 1, scope: !552, inlinedAt: !2098)
!2114 = !DILocation(line: 360, column: 13, scope: !2010)
!2115 = !DILocation(line: 0, scope: !2008)
!2116 = !DILocation(line: 361, column: 45, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2008, file: !491, line: 361, column: 11)
!2118 = !DILocation(line: 361, column: 11, scope: !2008)
!2119 = !DILocation(line: 362, column: 13, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !491, line: 362, column: 13)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !491, line: 362, column: 13)
!2122 = !DILocation(line: 362, column: 13, scope: !2121)
!2123 = !DILocation(line: 361, column: 52, scope: !2117)
!2124 = distinct !{!2124, !2118, !2125, !913}
!2125 = !DILocation(line: 362, column: 13, scope: !2008)
!2126 = !DILocation(line: 260, column: 10, scope: !1982)
!2127 = !DILocation(line: 365, column: 28, scope: !2010)
!2128 = !DILocation(line: 367, column: 7, scope: !2011)
!2129 = !DILocation(line: 370, column: 7, scope: !2011)
!2130 = !DILocation(line: 376, column: 11, scope: !2011)
!2131 = !DILocation(line: 381, column: 11, scope: !2011)
!2132 = !DILocation(line: 382, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !491, line: 382, column: 9)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !491, line: 382, column: 9)
!2135 = distinct !DILexicalBlock(scope: !2011, file: !491, line: 381, column: 11)
!2136 = !DILocation(line: 382, column: 9, scope: !2134)
!2137 = !DILocation(line: 389, column: 7, scope: !2011)
!2138 = !DILocation(line: 392, column: 7, scope: !2011)
!2139 = !DILocation(line: 0, scope: !2013)
!2140 = !DILocation(line: 395, column: 8, scope: !2013)
!2141 = !DILocation(line: 395, scope: !2013)
!2142 = !DILocation(line: 395, column: 34, scope: !2016)
!2143 = !DILocation(line: 395, column: 26, scope: !2016)
!2144 = !DILocation(line: 395, column: 48, scope: !2016)
!2145 = !DILocation(line: 395, column: 55, scope: !2016)
!2146 = !DILocation(line: 395, column: 3, scope: !2013)
!2147 = !DILocation(line: 395, column: 67, scope: !2016)
!2148 = !DILocation(line: 0, scope: !2015)
!2149 = !DILocation(line: 402, column: 11, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2015, file: !491, line: 401, column: 11)
!2151 = !DILocation(line: 404, column: 17, scope: !2150)
!2152 = !DILocation(line: 405, column: 39, scope: !2150)
!2153 = !DILocation(line: 409, column: 32, scope: !2150)
!2154 = !DILocation(line: 405, column: 19, scope: !2150)
!2155 = !DILocation(line: 405, column: 15, scope: !2150)
!2156 = !DILocation(line: 410, column: 11, scope: !2150)
!2157 = !DILocation(line: 410, column: 25, scope: !2150)
!2158 = !DILocalVariable(name: "__s1", arg: 1, scope: !2159, file: !879, line: 974, type: !1011)
!2159 = distinct !DISubprogram(name: "memeq", scope: !879, file: !879, line: 974, type: !1799, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2160)
!2160 = !{!2158, !2161, !2162}
!2161 = !DILocalVariable(name: "__s2", arg: 2, scope: !2159, file: !879, line: 974, type: !1011)
!2162 = !DILocalVariable(name: "__n", arg: 3, scope: !2159, file: !879, line: 974, type: !108)
!2163 = !DILocation(line: 0, scope: !2159, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 410, column: 14, scope: !2150)
!2165 = !DILocation(line: 976, column: 11, scope: !2159, inlinedAt: !2164)
!2166 = !DILocation(line: 976, column: 10, scope: !2159, inlinedAt: !2164)
!2167 = !DILocation(line: 401, column: 11, scope: !2015)
!2168 = !DILocation(line: 417, column: 25, scope: !2015)
!2169 = !DILocation(line: 418, column: 7, scope: !2015)
!2170 = !DILocation(line: 421, column: 15, scope: !2022)
!2171 = !DILocation(line: 423, column: 15, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !491, line: 423, column: 15)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !491, line: 422, column: 13)
!2174 = distinct !DILexicalBlock(scope: !2022, file: !491, line: 421, column: 15)
!2175 = !DILocation(line: 423, column: 15, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !491, line: 423, column: 15)
!2177 = !DILocation(line: 423, column: 15, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !491, line: 423, column: 15)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !491, line: 423, column: 15)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !491, line: 423, column: 15)
!2181 = !DILocation(line: 423, column: 15, scope: !2179)
!2182 = !DILocation(line: 423, column: 15, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !491, line: 423, column: 15)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !491, line: 423, column: 15)
!2185 = !DILocation(line: 423, column: 15, scope: !2184)
!2186 = !DILocation(line: 423, column: 15, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !491, line: 423, column: 15)
!2188 = distinct !DILexicalBlock(scope: !2180, file: !491, line: 423, column: 15)
!2189 = !DILocation(line: 423, column: 15, scope: !2188)
!2190 = !DILocation(line: 423, column: 15, scope: !2180)
!2191 = !DILocation(line: 423, column: 15, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !491, line: 423, column: 15)
!2193 = distinct !DILexicalBlock(scope: !2172, file: !491, line: 423, column: 15)
!2194 = !DILocation(line: 423, column: 15, scope: !2193)
!2195 = !DILocation(line: 431, column: 19, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2173, file: !491, line: 430, column: 19)
!2197 = !DILocation(line: 431, column: 24, scope: !2196)
!2198 = !DILocation(line: 431, column: 28, scope: !2196)
!2199 = !DILocation(line: 431, column: 38, scope: !2196)
!2200 = !DILocation(line: 431, column: 48, scope: !2196)
!2201 = !DILocation(line: 431, column: 59, scope: !2196)
!2202 = !DILocation(line: 433, column: 19, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !491, line: 433, column: 19)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !491, line: 433, column: 19)
!2205 = distinct !DILexicalBlock(scope: !2196, file: !491, line: 432, column: 17)
!2206 = !DILocation(line: 433, column: 19, scope: !2204)
!2207 = !DILocation(line: 434, column: 19, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !491, line: 434, column: 19)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !491, line: 434, column: 19)
!2210 = !DILocation(line: 434, column: 19, scope: !2209)
!2211 = !DILocation(line: 435, column: 17, scope: !2205)
!2212 = !DILocation(line: 442, column: 20, scope: !2174)
!2213 = !DILocation(line: 447, column: 11, scope: !2022)
!2214 = !DILocation(line: 450, column: 19, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2022, file: !491, line: 448, column: 13)
!2216 = !DILocation(line: 456, column: 19, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2215, file: !491, line: 455, column: 19)
!2218 = !DILocation(line: 456, column: 24, scope: !2217)
!2219 = !DILocation(line: 456, column: 28, scope: !2217)
!2220 = !DILocation(line: 456, column: 38, scope: !2217)
!2221 = !DILocation(line: 456, column: 47, scope: !2217)
!2222 = !DILocation(line: 456, column: 41, scope: !2217)
!2223 = !DILocation(line: 456, column: 52, scope: !2217)
!2224 = !DILocation(line: 455, column: 19, scope: !2215)
!2225 = !DILocation(line: 457, column: 25, scope: !2217)
!2226 = !DILocation(line: 457, column: 17, scope: !2217)
!2227 = !DILocation(line: 464, column: 25, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2217, file: !491, line: 458, column: 19)
!2229 = !DILocation(line: 468, column: 21, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !491, line: 468, column: 21)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !491, line: 468, column: 21)
!2232 = !DILocation(line: 468, column: 21, scope: !2231)
!2233 = !DILocation(line: 469, column: 21, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !491, line: 469, column: 21)
!2235 = distinct !DILexicalBlock(scope: !2228, file: !491, line: 469, column: 21)
!2236 = !DILocation(line: 469, column: 21, scope: !2235)
!2237 = !DILocation(line: 470, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !491, line: 470, column: 21)
!2239 = distinct !DILexicalBlock(scope: !2228, file: !491, line: 470, column: 21)
!2240 = !DILocation(line: 470, column: 21, scope: !2239)
!2241 = !DILocation(line: 471, column: 21, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !491, line: 471, column: 21)
!2243 = distinct !DILexicalBlock(scope: !2228, file: !491, line: 471, column: 21)
!2244 = !DILocation(line: 471, column: 21, scope: !2243)
!2245 = !DILocation(line: 472, column: 21, scope: !2228)
!2246 = !DILocation(line: 482, column: 33, scope: !2045)
!2247 = !DILocation(line: 483, column: 33, scope: !2045)
!2248 = !DILocation(line: 485, column: 33, scope: !2045)
!2249 = !DILocation(line: 486, column: 33, scope: !2045)
!2250 = !DILocation(line: 487, column: 33, scope: !2045)
!2251 = !DILocation(line: 490, column: 17, scope: !2045)
!2252 = !DILocation(line: 492, column: 21, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !491, line: 491, column: 15)
!2254 = distinct !DILexicalBlock(scope: !2045, file: !491, line: 490, column: 17)
!2255 = !DILocation(line: 499, column: 35, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2045, file: !491, line: 499, column: 17)
!2257 = !DILocation(line: 0, scope: !2045)
!2258 = !DILocation(line: 502, column: 11, scope: !2045)
!2259 = !DILocation(line: 504, column: 17, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2045, file: !491, line: 503, column: 17)
!2261 = !DILocation(line: 507, column: 11, scope: !2045)
!2262 = !DILocation(line: 508, column: 17, scope: !2045)
!2263 = !DILocation(line: 517, column: 15, scope: !2022)
!2264 = !DILocation(line: 517, column: 40, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2022, file: !491, line: 517, column: 15)
!2266 = !DILocation(line: 517, column: 47, scope: !2265)
!2267 = !DILocation(line: 517, column: 18, scope: !2265)
!2268 = !DILocation(line: 521, column: 17, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2022, file: !491, line: 521, column: 15)
!2270 = !DILocation(line: 521, column: 15, scope: !2022)
!2271 = !DILocation(line: 525, column: 11, scope: !2022)
!2272 = !DILocation(line: 537, column: 15, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2022, file: !491, line: 536, column: 15)
!2274 = !DILocation(line: 536, column: 15, scope: !2022)
!2275 = !DILocation(line: 544, column: 15, scope: !2022)
!2276 = !DILocation(line: 546, column: 19, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !491, line: 545, column: 13)
!2278 = distinct !DILexicalBlock(scope: !2022, file: !491, line: 544, column: 15)
!2279 = !DILocation(line: 549, column: 19, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !491, line: 549, column: 19)
!2281 = !DILocation(line: 549, column: 30, scope: !2280)
!2282 = !DILocation(line: 558, column: 15, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !491, line: 558, column: 15)
!2284 = distinct !DILexicalBlock(scope: !2277, file: !491, line: 558, column: 15)
!2285 = !DILocation(line: 558, column: 15, scope: !2284)
!2286 = !DILocation(line: 559, column: 15, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !491, line: 559, column: 15)
!2288 = distinct !DILexicalBlock(scope: !2277, file: !491, line: 559, column: 15)
!2289 = !DILocation(line: 559, column: 15, scope: !2288)
!2290 = !DILocation(line: 560, column: 15, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !491, line: 560, column: 15)
!2292 = distinct !DILexicalBlock(scope: !2277, file: !491, line: 560, column: 15)
!2293 = !DILocation(line: 560, column: 15, scope: !2292)
!2294 = !DILocation(line: 562, column: 13, scope: !2277)
!2295 = !DILocation(line: 602, column: 17, scope: !2021)
!2296 = !DILocation(line: 0, scope: !2021)
!2297 = !DILocation(line: 605, column: 29, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2026, file: !491, line: 603, column: 15)
!2299 = !DILocation(line: 605, column: 41, scope: !2298)
!2300 = !DILocation(line: 606, column: 15, scope: !2298)
!2301 = !DILocation(line: 609, column: 17, scope: !2025)
!2302 = !DILocation(line: 609, column: 27, scope: !2025)
!2303 = !DILocation(line: 0, scope: !2077, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 609, column: 32, scope: !2025)
!2305 = !DILocation(line: 0, scope: !2085, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 1137, column: 3, scope: !2077, inlinedAt: !2304)
!2307 = !DILocation(line: 59, column: 10, scope: !2085, inlinedAt: !2306)
!2308 = !DILocation(line: 613, column: 29, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2025, file: !491, line: 613, column: 21)
!2310 = !DILocation(line: 613, column: 21, scope: !2025)
!2311 = !DILocation(line: 614, column: 29, scope: !2309)
!2312 = !DILocation(line: 614, column: 19, scope: !2309)
!2313 = !DILocation(line: 618, column: 21, scope: !2028)
!2314 = !DILocation(line: 620, column: 54, scope: !2028)
!2315 = !DILocation(line: 0, scope: !2028)
!2316 = !DILocation(line: 619, column: 36, scope: !2028)
!2317 = !DILocation(line: 621, column: 25, scope: !2028)
!2318 = !DILocation(line: 631, column: 38, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2037, file: !491, line: 629, column: 23)
!2320 = !DILocation(line: 631, column: 48, scope: !2319)
!2321 = !DILocation(line: 626, column: 25, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2038, file: !491, line: 624, column: 23)
!2323 = !DILocation(line: 631, column: 51, scope: !2319)
!2324 = !DILocation(line: 631, column: 25, scope: !2319)
!2325 = !DILocation(line: 632, column: 28, scope: !2319)
!2326 = !DILocation(line: 631, column: 34, scope: !2319)
!2327 = distinct !{!2327, !2324, !2325, !913}
!2328 = !DILocation(line: 646, column: 29, scope: !2035)
!2329 = !DILocation(line: 0, scope: !2033)
!2330 = !DILocation(line: 649, column: 49, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2033, file: !491, line: 648, column: 29)
!2332 = !DILocation(line: 649, column: 39, scope: !2331)
!2333 = !DILocation(line: 649, column: 31, scope: !2331)
!2334 = !DILocation(line: 648, column: 60, scope: !2331)
!2335 = !DILocation(line: 648, column: 50, scope: !2331)
!2336 = !DILocation(line: 648, column: 29, scope: !2033)
!2337 = distinct !{!2337, !2336, !2338, !913}
!2338 = !DILocation(line: 654, column: 33, scope: !2033)
!2339 = !DILocation(line: 657, column: 43, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2036, file: !491, line: 657, column: 29)
!2341 = !DILocalVariable(name: "wc", arg: 1, scope: !2342, file: !2343, line: 865, type: !2346)
!2342 = distinct !DISubprogram(name: "c32isprint", scope: !2343, file: !2343, line: 865, type: !2344, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2348)
!2343 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!70, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2347, line: 20, baseType: !76)
!2347 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2348 = !{!2341}
!2349 = !DILocation(line: 0, scope: !2342, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 657, column: 31, scope: !2340)
!2351 = !DILocation(line: 871, column: 10, scope: !2342, inlinedAt: !2350)
!2352 = !DILocation(line: 657, column: 31, scope: !2340)
!2353 = !DILocation(line: 664, column: 23, scope: !2028)
!2354 = !DILocation(line: 665, column: 19, scope: !2029)
!2355 = !DILocation(line: 666, column: 15, scope: !2026)
!2356 = !DILocation(line: 753, column: 2, scope: !1982)
!2357 = !DILocation(line: 756, column: 51, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !1982, file: !491, line: 756, column: 7)
!2359 = !DILocation(line: 0, scope: !2026)
!2360 = !DILocation(line: 670, column: 19, scope: !2042)
!2361 = !DILocation(line: 670, column: 23, scope: !2042)
!2362 = !DILocation(line: 674, column: 33, scope: !2041)
!2363 = !DILocation(line: 0, scope: !2041)
!2364 = !DILocation(line: 676, column: 17, scope: !2041)
!2365 = !DILocation(line: 398, column: 12, scope: !2015)
!2366 = !DILocation(line: 678, column: 43, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !491, line: 678, column: 25)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !491, line: 677, column: 19)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !491, line: 676, column: 17)
!2370 = distinct !DILexicalBlock(scope: !2041, file: !491, line: 676, column: 17)
!2371 = !DILocation(line: 680, column: 25, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !491, line: 680, column: 25)
!2373 = distinct !DILexicalBlock(scope: !2367, file: !491, line: 679, column: 23)
!2374 = !DILocation(line: 680, column: 25, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2372, file: !491, line: 680, column: 25)
!2376 = !DILocation(line: 680, column: 25, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !491, line: 680, column: 25)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !491, line: 680, column: 25)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !491, line: 680, column: 25)
!2380 = !DILocation(line: 680, column: 25, scope: !2378)
!2381 = !DILocation(line: 680, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !491, line: 680, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !491, line: 680, column: 25)
!2384 = !DILocation(line: 680, column: 25, scope: !2383)
!2385 = !DILocation(line: 680, column: 25, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !491, line: 680, column: 25)
!2387 = distinct !DILexicalBlock(scope: !2379, file: !491, line: 680, column: 25)
!2388 = !DILocation(line: 680, column: 25, scope: !2387)
!2389 = !DILocation(line: 680, column: 25, scope: !2379)
!2390 = !DILocation(line: 680, column: 25, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !491, line: 680, column: 25)
!2392 = distinct !DILexicalBlock(scope: !2372, file: !491, line: 680, column: 25)
!2393 = !DILocation(line: 680, column: 25, scope: !2392)
!2394 = !DILocation(line: 681, column: 25, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !491, line: 681, column: 25)
!2396 = distinct !DILexicalBlock(scope: !2373, file: !491, line: 681, column: 25)
!2397 = !DILocation(line: 681, column: 25, scope: !2396)
!2398 = !DILocation(line: 682, column: 25, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !491, line: 682, column: 25)
!2400 = distinct !DILexicalBlock(scope: !2373, file: !491, line: 682, column: 25)
!2401 = !DILocation(line: 682, column: 25, scope: !2400)
!2402 = !DILocation(line: 683, column: 38, scope: !2373)
!2403 = !DILocation(line: 683, column: 33, scope: !2373)
!2404 = !DILocation(line: 684, column: 23, scope: !2373)
!2405 = !DILocation(line: 685, column: 30, scope: !2367)
!2406 = !DILocation(line: 687, column: 25, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !491, line: 687, column: 25)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !491, line: 687, column: 25)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !491, line: 686, column: 23)
!2410 = distinct !DILexicalBlock(scope: !2367, file: !491, line: 685, column: 30)
!2411 = !DILocation(line: 687, column: 25, scope: !2408)
!2412 = !DILocation(line: 689, column: 23, scope: !2409)
!2413 = !DILocation(line: 690, column: 35, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2368, file: !491, line: 690, column: 25)
!2415 = !DILocation(line: 690, column: 30, scope: !2414)
!2416 = !DILocation(line: 690, column: 25, scope: !2368)
!2417 = !DILocation(line: 692, column: 21, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !491, line: 692, column: 21)
!2419 = distinct !DILexicalBlock(scope: !2368, file: !491, line: 692, column: 21)
!2420 = !DILocation(line: 692, column: 21, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !491, line: 692, column: 21)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !491, line: 692, column: 21)
!2423 = distinct !DILexicalBlock(scope: !2418, file: !491, line: 692, column: 21)
!2424 = !DILocation(line: 692, column: 21, scope: !2422)
!2425 = !DILocation(line: 692, column: 21, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !491, line: 692, column: 21)
!2427 = distinct !DILexicalBlock(scope: !2423, file: !491, line: 692, column: 21)
!2428 = !DILocation(line: 692, column: 21, scope: !2427)
!2429 = !DILocation(line: 692, column: 21, scope: !2423)
!2430 = !DILocation(line: 0, scope: !2368)
!2431 = !DILocation(line: 693, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !491, line: 693, column: 21)
!2433 = distinct !DILexicalBlock(scope: !2368, file: !491, line: 693, column: 21)
!2434 = !DILocation(line: 693, column: 21, scope: !2433)
!2435 = !DILocation(line: 694, column: 25, scope: !2368)
!2436 = !DILocation(line: 676, column: 17, scope: !2369)
!2437 = distinct !{!2437, !2438, !2439}
!2438 = !DILocation(line: 676, column: 17, scope: !2370)
!2439 = !DILocation(line: 695, column: 19, scope: !2370)
!2440 = !DILocation(line: 409, column: 30, scope: !2150)
!2441 = !DILocation(line: 702, column: 34, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2015, file: !491, line: 702, column: 11)
!2443 = !DILocation(line: 704, column: 14, scope: !2442)
!2444 = !DILocation(line: 705, column: 14, scope: !2442)
!2445 = !DILocation(line: 705, column: 35, scope: !2442)
!2446 = !DILocation(line: 705, column: 17, scope: !2442)
!2447 = !DILocation(line: 705, column: 47, scope: !2442)
!2448 = !DILocation(line: 705, column: 65, scope: !2442)
!2449 = !DILocation(line: 706, column: 11, scope: !2442)
!2450 = !DILocation(line: 702, column: 11, scope: !2015)
!2451 = !DILocation(line: 395, column: 15, scope: !2013)
!2452 = !DILocation(line: 709, column: 5, scope: !2015)
!2453 = !DILocation(line: 710, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2015, file: !491, line: 710, column: 7)
!2455 = !DILocation(line: 710, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2454, file: !491, line: 710, column: 7)
!2457 = !DILocation(line: 710, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !491, line: 710, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !491, line: 710, column: 7)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !491, line: 710, column: 7)
!2461 = !DILocation(line: 710, column: 7, scope: !2459)
!2462 = !DILocation(line: 710, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !491, line: 710, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !491, line: 710, column: 7)
!2465 = !DILocation(line: 710, column: 7, scope: !2464)
!2466 = !DILocation(line: 710, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !491, line: 710, column: 7)
!2468 = distinct !DILexicalBlock(scope: !2460, file: !491, line: 710, column: 7)
!2469 = !DILocation(line: 710, column: 7, scope: !2468)
!2470 = !DILocation(line: 710, column: 7, scope: !2460)
!2471 = !DILocation(line: 710, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !491, line: 710, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2454, file: !491, line: 710, column: 7)
!2474 = !DILocation(line: 710, column: 7, scope: !2473)
!2475 = !DILocation(line: 712, column: 5, scope: !2015)
!2476 = !DILocation(line: 713, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !491, line: 713, column: 7)
!2478 = distinct !DILexicalBlock(scope: !2015, file: !491, line: 713, column: 7)
!2479 = !DILocation(line: 417, column: 21, scope: !2015)
!2480 = !DILocation(line: 713, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !491, line: 713, column: 7)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !491, line: 713, column: 7)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !491, line: 713, column: 7)
!2484 = !DILocation(line: 713, column: 7, scope: !2482)
!2485 = !DILocation(line: 713, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !491, line: 713, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !491, line: 713, column: 7)
!2488 = !DILocation(line: 713, column: 7, scope: !2487)
!2489 = !DILocation(line: 713, column: 7, scope: !2483)
!2490 = !DILocation(line: 714, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !491, line: 714, column: 7)
!2492 = distinct !DILexicalBlock(scope: !2015, file: !491, line: 714, column: 7)
!2493 = !DILocation(line: 714, column: 7, scope: !2492)
!2494 = !DILocation(line: 716, column: 11, scope: !2015)
!2495 = !DILocation(line: 718, column: 5, scope: !2016)
!2496 = !DILocation(line: 395, column: 82, scope: !2016)
!2497 = !DILocation(line: 395, column: 3, scope: !2016)
!2498 = distinct !{!2498, !2146, !2499, !913}
!2499 = !DILocation(line: 718, column: 5, scope: !2013)
!2500 = !DILocation(line: 720, column: 11, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !1982, file: !491, line: 720, column: 7)
!2502 = !DILocation(line: 720, column: 16, scope: !2501)
!2503 = !DILocation(line: 728, column: 51, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !1982, file: !491, line: 728, column: 7)
!2505 = !DILocation(line: 731, column: 11, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2504, file: !491, line: 730, column: 5)
!2507 = !DILocation(line: 732, column: 16, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2506, file: !491, line: 731, column: 11)
!2509 = !DILocation(line: 732, column: 9, scope: !2508)
!2510 = !DILocation(line: 736, column: 18, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !491, line: 736, column: 16)
!2512 = !DILocation(line: 736, column: 29, scope: !2511)
!2513 = !DILocation(line: 745, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !1982, file: !491, line: 745, column: 7)
!2515 = !DILocation(line: 745, column: 20, scope: !2514)
!2516 = !DILocation(line: 746, column: 12, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !491, line: 746, column: 5)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !491, line: 746, column: 5)
!2519 = !DILocation(line: 746, column: 5, scope: !2518)
!2520 = !DILocation(line: 747, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !491, line: 747, column: 7)
!2522 = distinct !DILexicalBlock(scope: !2517, file: !491, line: 747, column: 7)
!2523 = !DILocation(line: 747, column: 7, scope: !2522)
!2524 = !DILocation(line: 746, column: 39, scope: !2517)
!2525 = distinct !{!2525, !2519, !2526, !913}
!2526 = !DILocation(line: 747, column: 7, scope: !2518)
!2527 = !DILocation(line: 749, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !1982, file: !491, line: 749, column: 7)
!2529 = !DILocation(line: 749, column: 7, scope: !1982)
!2530 = !DILocation(line: 750, column: 5, scope: !2528)
!2531 = !DILocation(line: 750, column: 17, scope: !2528)
!2532 = !DILocation(line: 756, column: 21, scope: !2358)
!2533 = !DILocation(line: 760, column: 42, scope: !1982)
!2534 = !DILocation(line: 758, column: 10, scope: !1982)
!2535 = !DILocation(line: 758, column: 3, scope: !1982)
!2536 = !DILocation(line: 762, column: 1, scope: !1982)
!2537 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !987, file: !987, line: 98, type: !2538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!108}
!2540 = !DISubprogram(name: "strlen", scope: !983, file: !983, line: 407, type: !2541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!110, !111}
!2543 = !DISubprogram(name: "iswprint", scope: !2544, file: !2544, line: 120, type: !2344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!2544 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2545 = distinct !DISubprogram(name: "quotearg_alloc", scope: !491, file: !491, line: 788, type: !2546, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!105, !111, !108, !1875}
!2548 = !{!2549, !2550, !2551}
!2549 = !DILocalVariable(name: "arg", arg: 1, scope: !2545, file: !491, line: 788, type: !111)
!2550 = !DILocalVariable(name: "argsize", arg: 2, scope: !2545, file: !491, line: 788, type: !108)
!2551 = !DILocalVariable(name: "o", arg: 3, scope: !2545, file: !491, line: 789, type: !1875)
!2552 = !DILocation(line: 0, scope: !2545)
!2553 = !DILocalVariable(name: "arg", arg: 1, scope: !2554, file: !491, line: 801, type: !111)
!2554 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !491, file: !491, line: 801, type: !2555, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!105, !111, !108, !735, !1875}
!2557 = !{!2553, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565}
!2558 = !DILocalVariable(name: "argsize", arg: 2, scope: !2554, file: !491, line: 801, type: !108)
!2559 = !DILocalVariable(name: "size", arg: 3, scope: !2554, file: !491, line: 801, type: !735)
!2560 = !DILocalVariable(name: "o", arg: 4, scope: !2554, file: !491, line: 802, type: !1875)
!2561 = !DILocalVariable(name: "p", scope: !2554, file: !491, line: 804, type: !1875)
!2562 = !DILocalVariable(name: "saved_errno", scope: !2554, file: !491, line: 805, type: !70)
!2563 = !DILocalVariable(name: "flags", scope: !2554, file: !491, line: 807, type: !70)
!2564 = !DILocalVariable(name: "bufsize", scope: !2554, file: !491, line: 808, type: !108)
!2565 = !DILocalVariable(name: "buf", scope: !2554, file: !491, line: 812, type: !105)
!2566 = !DILocation(line: 0, scope: !2554, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 791, column: 10, scope: !2545)
!2568 = !DILocation(line: 804, column: 37, scope: !2554, inlinedAt: !2567)
!2569 = !DILocation(line: 805, column: 21, scope: !2554, inlinedAt: !2567)
!2570 = !DILocation(line: 807, column: 18, scope: !2554, inlinedAt: !2567)
!2571 = !DILocation(line: 807, column: 24, scope: !2554, inlinedAt: !2567)
!2572 = !DILocation(line: 808, column: 72, scope: !2554, inlinedAt: !2567)
!2573 = !DILocation(line: 809, column: 56, scope: !2554, inlinedAt: !2567)
!2574 = !DILocation(line: 810, column: 49, scope: !2554, inlinedAt: !2567)
!2575 = !DILocation(line: 811, column: 49, scope: !2554, inlinedAt: !2567)
!2576 = !DILocation(line: 808, column: 20, scope: !2554, inlinedAt: !2567)
!2577 = !DILocation(line: 811, column: 62, scope: !2554, inlinedAt: !2567)
!2578 = !DILocation(line: 812, column: 15, scope: !2554, inlinedAt: !2567)
!2579 = !DILocation(line: 813, column: 60, scope: !2554, inlinedAt: !2567)
!2580 = !DILocation(line: 815, column: 32, scope: !2554, inlinedAt: !2567)
!2581 = !DILocation(line: 815, column: 47, scope: !2554, inlinedAt: !2567)
!2582 = !DILocation(line: 813, column: 3, scope: !2554, inlinedAt: !2567)
!2583 = !DILocation(line: 816, column: 9, scope: !2554, inlinedAt: !2567)
!2584 = !DILocation(line: 791, column: 3, scope: !2545)
!2585 = !DILocation(line: 0, scope: !2554)
!2586 = !DILocation(line: 804, column: 37, scope: !2554)
!2587 = !DILocation(line: 805, column: 21, scope: !2554)
!2588 = !DILocation(line: 807, column: 18, scope: !2554)
!2589 = !DILocation(line: 807, column: 27, scope: !2554)
!2590 = !DILocation(line: 807, column: 24, scope: !2554)
!2591 = !DILocation(line: 808, column: 72, scope: !2554)
!2592 = !DILocation(line: 809, column: 56, scope: !2554)
!2593 = !DILocation(line: 810, column: 49, scope: !2554)
!2594 = !DILocation(line: 811, column: 49, scope: !2554)
!2595 = !DILocation(line: 808, column: 20, scope: !2554)
!2596 = !DILocation(line: 811, column: 62, scope: !2554)
!2597 = !DILocation(line: 812, column: 15, scope: !2554)
!2598 = !DILocation(line: 813, column: 60, scope: !2554)
!2599 = !DILocation(line: 815, column: 32, scope: !2554)
!2600 = !DILocation(line: 815, column: 47, scope: !2554)
!2601 = !DILocation(line: 813, column: 3, scope: !2554)
!2602 = !DILocation(line: 816, column: 9, scope: !2554)
!2603 = !DILocation(line: 817, column: 7, scope: !2554)
!2604 = !DILocation(line: 818, column: 11, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2554, file: !491, line: 817, column: 7)
!2606 = !{!1328, !1328, i64 0}
!2607 = !DILocation(line: 818, column: 5, scope: !2605)
!2608 = !DILocation(line: 819, column: 3, scope: !2554)
!2609 = distinct !DISubprogram(name: "quotearg_free", scope: !491, file: !491, line: 837, type: !446, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2610)
!2610 = !{!2611, !2612}
!2611 = !DILocalVariable(name: "sv", scope: !2609, file: !491, line: 839, type: !575)
!2612 = !DILocalVariable(name: "i", scope: !2613, file: !491, line: 840, type: !70)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !491, line: 840, column: 3)
!2614 = !DILocation(line: 839, column: 24, scope: !2609)
!2615 = !DILocation(line: 0, scope: !2609)
!2616 = !DILocation(line: 0, scope: !2613)
!2617 = !DILocation(line: 840, column: 21, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2613, file: !491, line: 840, column: 3)
!2619 = !DILocation(line: 840, column: 3, scope: !2613)
!2620 = !DILocation(line: 842, column: 13, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2609, file: !491, line: 842, column: 7)
!2622 = !{!2623, !801, i64 8}
!2623 = !{!"slotvec", !1328, i64 0, !801, i64 8}
!2624 = !DILocation(line: 842, column: 17, scope: !2621)
!2625 = !DILocation(line: 842, column: 7, scope: !2609)
!2626 = !DILocation(line: 841, column: 17, scope: !2618)
!2627 = !DILocation(line: 841, column: 5, scope: !2618)
!2628 = !DILocation(line: 840, column: 32, scope: !2618)
!2629 = distinct !{!2629, !2619, !2630, !913}
!2630 = !DILocation(line: 841, column: 20, scope: !2613)
!2631 = !DILocation(line: 844, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2621, file: !491, line: 843, column: 5)
!2633 = !DILocation(line: 845, column: 21, scope: !2632)
!2634 = !{!2623, !1328, i64 0}
!2635 = !DILocation(line: 846, column: 20, scope: !2632)
!2636 = !DILocation(line: 847, column: 5, scope: !2632)
!2637 = !DILocation(line: 848, column: 10, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2609, file: !491, line: 848, column: 7)
!2639 = !DILocation(line: 848, column: 7, scope: !2609)
!2640 = !DILocation(line: 850, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !491, line: 849, column: 5)
!2642 = !DILocation(line: 851, column: 15, scope: !2641)
!2643 = !DILocation(line: 852, column: 5, scope: !2641)
!2644 = !DILocation(line: 853, column: 10, scope: !2609)
!2645 = !DILocation(line: 854, column: 1, scope: !2609)
!2646 = distinct !DISubprogram(name: "quotearg_n", scope: !491, file: !491, line: 919, type: !980, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2647)
!2647 = !{!2648, !2649}
!2648 = !DILocalVariable(name: "n", arg: 1, scope: !2646, file: !491, line: 919, type: !70)
!2649 = !DILocalVariable(name: "arg", arg: 2, scope: !2646, file: !491, line: 919, type: !111)
!2650 = !DILocation(line: 0, scope: !2646)
!2651 = !DILocation(line: 921, column: 10, scope: !2646)
!2652 = !DILocation(line: 921, column: 3, scope: !2646)
!2653 = distinct !DISubprogram(name: "quotearg_n_options", scope: !491, file: !491, line: 866, type: !2654, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!105, !70, !111, !108, !1875}
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2667, !2668, !2670, !2671, !2672}
!2657 = !DILocalVariable(name: "n", arg: 1, scope: !2653, file: !491, line: 866, type: !70)
!2658 = !DILocalVariable(name: "arg", arg: 2, scope: !2653, file: !491, line: 866, type: !111)
!2659 = !DILocalVariable(name: "argsize", arg: 3, scope: !2653, file: !491, line: 866, type: !108)
!2660 = !DILocalVariable(name: "options", arg: 4, scope: !2653, file: !491, line: 867, type: !1875)
!2661 = !DILocalVariable(name: "saved_errno", scope: !2653, file: !491, line: 869, type: !70)
!2662 = !DILocalVariable(name: "sv", scope: !2653, file: !491, line: 871, type: !575)
!2663 = !DILocalVariable(name: "nslots_max", scope: !2653, file: !491, line: 873, type: !70)
!2664 = !DILocalVariable(name: "preallocated", scope: !2665, file: !491, line: 879, type: !171)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !491, line: 878, column: 5)
!2666 = distinct !DILexicalBlock(scope: !2653, file: !491, line: 877, column: 7)
!2667 = !DILocalVariable(name: "new_nslots", scope: !2665, file: !491, line: 880, type: !748)
!2668 = !DILocalVariable(name: "size", scope: !2669, file: !491, line: 891, type: !108)
!2669 = distinct !DILexicalBlock(scope: !2653, file: !491, line: 890, column: 3)
!2670 = !DILocalVariable(name: "val", scope: !2669, file: !491, line: 892, type: !105)
!2671 = !DILocalVariable(name: "flags", scope: !2669, file: !491, line: 894, type: !70)
!2672 = !DILocalVariable(name: "qsize", scope: !2669, file: !491, line: 895, type: !108)
!2673 = !DILocation(line: 0, scope: !2653)
!2674 = !DILocation(line: 869, column: 21, scope: !2653)
!2675 = !DILocation(line: 871, column: 24, scope: !2653)
!2676 = !DILocation(line: 874, column: 17, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2653, file: !491, line: 874, column: 7)
!2678 = !DILocation(line: 875, column: 5, scope: !2677)
!2679 = !DILocation(line: 877, column: 7, scope: !2666)
!2680 = !DILocation(line: 877, column: 14, scope: !2666)
!2681 = !DILocation(line: 877, column: 7, scope: !2653)
!2682 = !DILocation(line: 879, column: 31, scope: !2665)
!2683 = !DILocation(line: 0, scope: !2665)
!2684 = !DILocation(line: 880, column: 7, scope: !2665)
!2685 = !DILocation(line: 880, column: 26, scope: !2665)
!2686 = !DILocation(line: 880, column: 13, scope: !2665)
!2687 = !DILocation(line: 882, column: 31, scope: !2665)
!2688 = !DILocation(line: 883, column: 33, scope: !2665)
!2689 = !DILocation(line: 883, column: 42, scope: !2665)
!2690 = !DILocation(line: 883, column: 31, scope: !2665)
!2691 = !DILocation(line: 882, column: 22, scope: !2665)
!2692 = !DILocation(line: 882, column: 15, scope: !2665)
!2693 = !DILocation(line: 884, column: 11, scope: !2665)
!2694 = !DILocation(line: 885, column: 15, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2665, file: !491, line: 884, column: 11)
!2696 = !{i64 0, i64 8, !2606, i64 8, i64 8, !800}
!2697 = !DILocation(line: 885, column: 9, scope: !2695)
!2698 = !DILocation(line: 886, column: 20, scope: !2665)
!2699 = !DILocation(line: 886, column: 18, scope: !2665)
!2700 = !DILocation(line: 886, column: 32, scope: !2665)
!2701 = !DILocation(line: 886, column: 43, scope: !2665)
!2702 = !DILocation(line: 886, column: 53, scope: !2665)
!2703 = !DILocation(line: 0, scope: !2085, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 886, column: 7, scope: !2665)
!2705 = !DILocation(line: 59, column: 10, scope: !2085, inlinedAt: !2704)
!2706 = !DILocation(line: 887, column: 16, scope: !2665)
!2707 = !DILocation(line: 887, column: 14, scope: !2665)
!2708 = !DILocation(line: 888, column: 5, scope: !2666)
!2709 = !DILocation(line: 888, column: 5, scope: !2665)
!2710 = !DILocation(line: 891, column: 19, scope: !2669)
!2711 = !DILocation(line: 891, column: 25, scope: !2669)
!2712 = !DILocation(line: 0, scope: !2669)
!2713 = !DILocation(line: 892, column: 23, scope: !2669)
!2714 = !DILocation(line: 894, column: 26, scope: !2669)
!2715 = !DILocation(line: 894, column: 32, scope: !2669)
!2716 = !DILocation(line: 896, column: 55, scope: !2669)
!2717 = !DILocation(line: 897, column: 55, scope: !2669)
!2718 = !DILocation(line: 898, column: 55, scope: !2669)
!2719 = !DILocation(line: 899, column: 55, scope: !2669)
!2720 = !DILocation(line: 895, column: 20, scope: !2669)
!2721 = !DILocation(line: 901, column: 14, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2669, file: !491, line: 901, column: 9)
!2723 = !DILocation(line: 901, column: 9, scope: !2669)
!2724 = !DILocation(line: 903, column: 35, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !491, line: 902, column: 7)
!2726 = !DILocation(line: 903, column: 20, scope: !2725)
!2727 = !DILocation(line: 904, column: 17, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !491, line: 904, column: 13)
!2729 = !DILocation(line: 904, column: 13, scope: !2725)
!2730 = !DILocation(line: 905, column: 11, scope: !2728)
!2731 = !DILocation(line: 906, column: 27, scope: !2725)
!2732 = !DILocation(line: 906, column: 19, scope: !2725)
!2733 = !DILocation(line: 907, column: 69, scope: !2725)
!2734 = !DILocation(line: 909, column: 44, scope: !2725)
!2735 = !DILocation(line: 910, column: 44, scope: !2725)
!2736 = !DILocation(line: 907, column: 9, scope: !2725)
!2737 = !DILocation(line: 911, column: 7, scope: !2725)
!2738 = !DILocation(line: 913, column: 11, scope: !2669)
!2739 = !DILocation(line: 914, column: 5, scope: !2669)
!2740 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !491, file: !491, line: 925, type: !2741, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!105, !70, !111, !108}
!2743 = !{!2744, !2745, !2746}
!2744 = !DILocalVariable(name: "n", arg: 1, scope: !2740, file: !491, line: 925, type: !70)
!2745 = !DILocalVariable(name: "arg", arg: 2, scope: !2740, file: !491, line: 925, type: !111)
!2746 = !DILocalVariable(name: "argsize", arg: 3, scope: !2740, file: !491, line: 925, type: !108)
!2747 = !DILocation(line: 0, scope: !2740)
!2748 = !DILocation(line: 927, column: 10, scope: !2740)
!2749 = !DILocation(line: 927, column: 3, scope: !2740)
!2750 = distinct !DISubprogram(name: "quotearg", scope: !491, file: !491, line: 931, type: !989, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2751)
!2751 = !{!2752}
!2752 = !DILocalVariable(name: "arg", arg: 1, scope: !2750, file: !491, line: 931, type: !111)
!2753 = !DILocation(line: 0, scope: !2750)
!2754 = !DILocation(line: 0, scope: !2646, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 933, column: 10, scope: !2750)
!2756 = !DILocation(line: 921, column: 10, scope: !2646, inlinedAt: !2755)
!2757 = !DILocation(line: 933, column: 3, scope: !2750)
!2758 = distinct !DISubprogram(name: "quotearg_mem", scope: !491, file: !491, line: 937, type: !2759, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!105, !111, !108}
!2761 = !{!2762, !2763}
!2762 = !DILocalVariable(name: "arg", arg: 1, scope: !2758, file: !491, line: 937, type: !111)
!2763 = !DILocalVariable(name: "argsize", arg: 2, scope: !2758, file: !491, line: 937, type: !108)
!2764 = !DILocation(line: 0, scope: !2758)
!2765 = !DILocation(line: 0, scope: !2740, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 939, column: 10, scope: !2758)
!2767 = !DILocation(line: 927, column: 10, scope: !2740, inlinedAt: !2766)
!2768 = !DILocation(line: 939, column: 3, scope: !2758)
!2769 = distinct !DISubprogram(name: "quotearg_n_style", scope: !491, file: !491, line: 943, type: !2770, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!105, !70, !74, !111}
!2772 = !{!2773, !2774, !2775, !2776}
!2773 = !DILocalVariable(name: "n", arg: 1, scope: !2769, file: !491, line: 943, type: !70)
!2774 = !DILocalVariable(name: "s", arg: 2, scope: !2769, file: !491, line: 943, type: !74)
!2775 = !DILocalVariable(name: "arg", arg: 3, scope: !2769, file: !491, line: 943, type: !111)
!2776 = !DILocalVariable(name: "o", scope: !2769, file: !491, line: 945, type: !1876)
!2777 = !DILocation(line: 0, scope: !2769)
!2778 = !DILocation(line: 945, column: 3, scope: !2769)
!2779 = !DILocation(line: 945, column: 32, scope: !2769)
!2780 = !{!2781}
!2781 = distinct !{!2781, !2782, !"quoting_options_from_style: argument 0"}
!2782 = distinct !{!2782, !"quoting_options_from_style"}
!2783 = !DILocation(line: 945, column: 36, scope: !2769)
!2784 = !DILocalVariable(name: "style", arg: 1, scope: !2785, file: !491, line: 183, type: !74)
!2785 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !491, file: !491, line: 183, type: !2786, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!527, !74}
!2788 = !{!2784, !2789}
!2789 = !DILocalVariable(name: "o", scope: !2785, file: !491, line: 185, type: !527)
!2790 = !DILocation(line: 0, scope: !2785, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 945, column: 36, scope: !2769)
!2792 = !DILocation(line: 185, column: 26, scope: !2785, inlinedAt: !2791)
!2793 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2791)
!2794 = distinct !DILexicalBlock(scope: !2785, file: !491, line: 186, column: 7)
!2795 = !DILocation(line: 186, column: 7, scope: !2785, inlinedAt: !2791)
!2796 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2791)
!2797 = !DILocation(line: 188, column: 11, scope: !2785, inlinedAt: !2791)
!2798 = !DILocation(line: 946, column: 10, scope: !2769)
!2799 = !DILocation(line: 947, column: 1, scope: !2769)
!2800 = !DILocation(line: 946, column: 3, scope: !2769)
!2801 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !491, file: !491, line: 950, type: !2802, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!105, !70, !74, !111, !108}
!2804 = !{!2805, !2806, !2807, !2808, !2809}
!2805 = !DILocalVariable(name: "n", arg: 1, scope: !2801, file: !491, line: 950, type: !70)
!2806 = !DILocalVariable(name: "s", arg: 2, scope: !2801, file: !491, line: 950, type: !74)
!2807 = !DILocalVariable(name: "arg", arg: 3, scope: !2801, file: !491, line: 951, type: !111)
!2808 = !DILocalVariable(name: "argsize", arg: 4, scope: !2801, file: !491, line: 951, type: !108)
!2809 = !DILocalVariable(name: "o", scope: !2801, file: !491, line: 953, type: !1876)
!2810 = !DILocation(line: 0, scope: !2801)
!2811 = !DILocation(line: 953, column: 3, scope: !2801)
!2812 = !DILocation(line: 953, column: 32, scope: !2801)
!2813 = !{!2814}
!2814 = distinct !{!2814, !2815, !"quoting_options_from_style: argument 0"}
!2815 = distinct !{!2815, !"quoting_options_from_style"}
!2816 = !DILocation(line: 953, column: 36, scope: !2801)
!2817 = !DILocation(line: 0, scope: !2785, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 953, column: 36, scope: !2801)
!2819 = !DILocation(line: 185, column: 26, scope: !2785, inlinedAt: !2818)
!2820 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2818)
!2821 = !DILocation(line: 186, column: 7, scope: !2785, inlinedAt: !2818)
!2822 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2818)
!2823 = !DILocation(line: 188, column: 11, scope: !2785, inlinedAt: !2818)
!2824 = !DILocation(line: 954, column: 10, scope: !2801)
!2825 = !DILocation(line: 955, column: 1, scope: !2801)
!2826 = !DILocation(line: 954, column: 3, scope: !2801)
!2827 = distinct !DISubprogram(name: "quotearg_style", scope: !491, file: !491, line: 958, type: !2828, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!105, !74, !111}
!2830 = !{!2831, !2832}
!2831 = !DILocalVariable(name: "s", arg: 1, scope: !2827, file: !491, line: 958, type: !74)
!2832 = !DILocalVariable(name: "arg", arg: 2, scope: !2827, file: !491, line: 958, type: !111)
!2833 = !DILocation(line: 0, scope: !2827)
!2834 = !DILocation(line: 0, scope: !2769, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 960, column: 10, scope: !2827)
!2836 = !DILocation(line: 945, column: 3, scope: !2769, inlinedAt: !2835)
!2837 = !DILocation(line: 945, column: 32, scope: !2769, inlinedAt: !2835)
!2838 = !{!2839}
!2839 = distinct !{!2839, !2840, !"quoting_options_from_style: argument 0"}
!2840 = distinct !{!2840, !"quoting_options_from_style"}
!2841 = !DILocation(line: 945, column: 36, scope: !2769, inlinedAt: !2835)
!2842 = !DILocation(line: 0, scope: !2785, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 945, column: 36, scope: !2769, inlinedAt: !2835)
!2844 = !DILocation(line: 185, column: 26, scope: !2785, inlinedAt: !2843)
!2845 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2843)
!2846 = !DILocation(line: 186, column: 7, scope: !2785, inlinedAt: !2843)
!2847 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2843)
!2848 = !DILocation(line: 188, column: 11, scope: !2785, inlinedAt: !2843)
!2849 = !DILocation(line: 946, column: 10, scope: !2769, inlinedAt: !2835)
!2850 = !DILocation(line: 947, column: 1, scope: !2769, inlinedAt: !2835)
!2851 = !DILocation(line: 960, column: 3, scope: !2827)
!2852 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !491, file: !491, line: 964, type: !2853, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!105, !74, !111, !108}
!2855 = !{!2856, !2857, !2858}
!2856 = !DILocalVariable(name: "s", arg: 1, scope: !2852, file: !491, line: 964, type: !74)
!2857 = !DILocalVariable(name: "arg", arg: 2, scope: !2852, file: !491, line: 964, type: !111)
!2858 = !DILocalVariable(name: "argsize", arg: 3, scope: !2852, file: !491, line: 964, type: !108)
!2859 = !DILocation(line: 0, scope: !2852)
!2860 = !DILocation(line: 0, scope: !2801, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 966, column: 10, scope: !2852)
!2862 = !DILocation(line: 953, column: 3, scope: !2801, inlinedAt: !2861)
!2863 = !DILocation(line: 953, column: 32, scope: !2801, inlinedAt: !2861)
!2864 = !{!2865}
!2865 = distinct !{!2865, !2866, !"quoting_options_from_style: argument 0"}
!2866 = distinct !{!2866, !"quoting_options_from_style"}
!2867 = !DILocation(line: 953, column: 36, scope: !2801, inlinedAt: !2861)
!2868 = !DILocation(line: 0, scope: !2785, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 953, column: 36, scope: !2801, inlinedAt: !2861)
!2870 = !DILocation(line: 185, column: 26, scope: !2785, inlinedAt: !2869)
!2871 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2869)
!2872 = !DILocation(line: 186, column: 7, scope: !2785, inlinedAt: !2869)
!2873 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2869)
!2874 = !DILocation(line: 188, column: 11, scope: !2785, inlinedAt: !2869)
!2875 = !DILocation(line: 954, column: 10, scope: !2801, inlinedAt: !2861)
!2876 = !DILocation(line: 955, column: 1, scope: !2801, inlinedAt: !2861)
!2877 = !DILocation(line: 966, column: 3, scope: !2852)
!2878 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !491, file: !491, line: 970, type: !2879, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!105, !111, !108, !4}
!2881 = !{!2882, !2883, !2884, !2885}
!2882 = !DILocalVariable(name: "arg", arg: 1, scope: !2878, file: !491, line: 970, type: !111)
!2883 = !DILocalVariable(name: "argsize", arg: 2, scope: !2878, file: !491, line: 970, type: !108)
!2884 = !DILocalVariable(name: "ch", arg: 3, scope: !2878, file: !491, line: 970, type: !4)
!2885 = !DILocalVariable(name: "options", scope: !2878, file: !491, line: 972, type: !527)
!2886 = !DILocation(line: 0, scope: !2878)
!2887 = !DILocation(line: 972, column: 3, scope: !2878)
!2888 = !DILocation(line: 972, column: 26, scope: !2878)
!2889 = !DILocation(line: 973, column: 13, scope: !2878)
!2890 = !{i64 0, i64 4, !875, i64 4, i64 4, !866, i64 8, i64 32, !875, i64 40, i64 8, !800, i64 48, i64 8, !800}
!2891 = !DILocation(line: 0, scope: !1895, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 974, column: 3, scope: !2878)
!2893 = !DILocation(line: 147, column: 41, scope: !1895, inlinedAt: !2892)
!2894 = !DILocation(line: 147, column: 62, scope: !1895, inlinedAt: !2892)
!2895 = !DILocation(line: 147, column: 57, scope: !1895, inlinedAt: !2892)
!2896 = !DILocation(line: 148, column: 15, scope: !1895, inlinedAt: !2892)
!2897 = !DILocation(line: 149, column: 21, scope: !1895, inlinedAt: !2892)
!2898 = !DILocation(line: 149, column: 24, scope: !1895, inlinedAt: !2892)
!2899 = !DILocation(line: 150, column: 19, scope: !1895, inlinedAt: !2892)
!2900 = !DILocation(line: 150, column: 24, scope: !1895, inlinedAt: !2892)
!2901 = !DILocation(line: 150, column: 6, scope: !1895, inlinedAt: !2892)
!2902 = !DILocation(line: 975, column: 10, scope: !2878)
!2903 = !DILocation(line: 976, column: 1, scope: !2878)
!2904 = !DILocation(line: 975, column: 3, scope: !2878)
!2905 = distinct !DISubprogram(name: "quotearg_char", scope: !491, file: !491, line: 979, type: !2906, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!105, !111, !4}
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "arg", arg: 1, scope: !2905, file: !491, line: 979, type: !111)
!2910 = !DILocalVariable(name: "ch", arg: 2, scope: !2905, file: !491, line: 979, type: !4)
!2911 = !DILocation(line: 0, scope: !2905)
!2912 = !DILocation(line: 0, scope: !2878, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 981, column: 10, scope: !2905)
!2914 = !DILocation(line: 972, column: 3, scope: !2878, inlinedAt: !2913)
!2915 = !DILocation(line: 972, column: 26, scope: !2878, inlinedAt: !2913)
!2916 = !DILocation(line: 973, column: 13, scope: !2878, inlinedAt: !2913)
!2917 = !DILocation(line: 0, scope: !1895, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 974, column: 3, scope: !2878, inlinedAt: !2913)
!2919 = !DILocation(line: 147, column: 41, scope: !1895, inlinedAt: !2918)
!2920 = !DILocation(line: 147, column: 62, scope: !1895, inlinedAt: !2918)
!2921 = !DILocation(line: 147, column: 57, scope: !1895, inlinedAt: !2918)
!2922 = !DILocation(line: 148, column: 15, scope: !1895, inlinedAt: !2918)
!2923 = !DILocation(line: 149, column: 21, scope: !1895, inlinedAt: !2918)
!2924 = !DILocation(line: 149, column: 24, scope: !1895, inlinedAt: !2918)
!2925 = !DILocation(line: 150, column: 19, scope: !1895, inlinedAt: !2918)
!2926 = !DILocation(line: 150, column: 24, scope: !1895, inlinedAt: !2918)
!2927 = !DILocation(line: 150, column: 6, scope: !1895, inlinedAt: !2918)
!2928 = !DILocation(line: 975, column: 10, scope: !2878, inlinedAt: !2913)
!2929 = !DILocation(line: 976, column: 1, scope: !2878, inlinedAt: !2913)
!2930 = !DILocation(line: 981, column: 3, scope: !2905)
!2931 = distinct !DISubprogram(name: "quotearg_colon", scope: !491, file: !491, line: 985, type: !989, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2932)
!2932 = !{!2933}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2931, file: !491, line: 985, type: !111)
!2934 = !DILocation(line: 0, scope: !2931)
!2935 = !DILocation(line: 0, scope: !2905, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 987, column: 10, scope: !2931)
!2937 = !DILocation(line: 0, scope: !2878, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 981, column: 10, scope: !2905, inlinedAt: !2936)
!2939 = !DILocation(line: 972, column: 3, scope: !2878, inlinedAt: !2938)
!2940 = !DILocation(line: 972, column: 26, scope: !2878, inlinedAt: !2938)
!2941 = !DILocation(line: 973, column: 13, scope: !2878, inlinedAt: !2938)
!2942 = !DILocation(line: 0, scope: !1895, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 974, column: 3, scope: !2878, inlinedAt: !2938)
!2944 = !DILocation(line: 147, column: 57, scope: !1895, inlinedAt: !2943)
!2945 = !DILocation(line: 149, column: 21, scope: !1895, inlinedAt: !2943)
!2946 = !DILocation(line: 150, column: 6, scope: !1895, inlinedAt: !2943)
!2947 = !DILocation(line: 975, column: 10, scope: !2878, inlinedAt: !2938)
!2948 = !DILocation(line: 976, column: 1, scope: !2878, inlinedAt: !2938)
!2949 = !DILocation(line: 987, column: 3, scope: !2931)
!2950 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !491, file: !491, line: 991, type: !2759, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2951)
!2951 = !{!2952, !2953}
!2952 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !491, line: 991, type: !111)
!2953 = !DILocalVariable(name: "argsize", arg: 2, scope: !2950, file: !491, line: 991, type: !108)
!2954 = !DILocation(line: 0, scope: !2950)
!2955 = !DILocation(line: 0, scope: !2878, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 993, column: 10, scope: !2950)
!2957 = !DILocation(line: 972, column: 3, scope: !2878, inlinedAt: !2956)
!2958 = !DILocation(line: 972, column: 26, scope: !2878, inlinedAt: !2956)
!2959 = !DILocation(line: 973, column: 13, scope: !2878, inlinedAt: !2956)
!2960 = !DILocation(line: 0, scope: !1895, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 974, column: 3, scope: !2878, inlinedAt: !2956)
!2962 = !DILocation(line: 147, column: 57, scope: !1895, inlinedAt: !2961)
!2963 = !DILocation(line: 149, column: 21, scope: !1895, inlinedAt: !2961)
!2964 = !DILocation(line: 150, column: 6, scope: !1895, inlinedAt: !2961)
!2965 = !DILocation(line: 975, column: 10, scope: !2878, inlinedAt: !2956)
!2966 = !DILocation(line: 976, column: 1, scope: !2878, inlinedAt: !2956)
!2967 = !DILocation(line: 993, column: 3, scope: !2950)
!2968 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !491, file: !491, line: 997, type: !2770, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2969)
!2969 = !{!2970, !2971, !2972, !2973}
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2968, file: !491, line: 997, type: !70)
!2971 = !DILocalVariable(name: "s", arg: 2, scope: !2968, file: !491, line: 997, type: !74)
!2972 = !DILocalVariable(name: "arg", arg: 3, scope: !2968, file: !491, line: 997, type: !111)
!2973 = !DILocalVariable(name: "options", scope: !2968, file: !491, line: 999, type: !527)
!2974 = !DILocation(line: 185, column: 26, scope: !2785, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1000, column: 13, scope: !2968)
!2976 = !DILocation(line: 0, scope: !2968)
!2977 = !DILocation(line: 999, column: 3, scope: !2968)
!2978 = !DILocation(line: 999, column: 26, scope: !2968)
!2979 = !DILocation(line: 0, scope: !2785, inlinedAt: !2975)
!2980 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2975)
!2981 = !DILocation(line: 186, column: 7, scope: !2785, inlinedAt: !2975)
!2982 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2975)
!2983 = !{!2984}
!2984 = distinct !{!2984, !2985, !"quoting_options_from_style: argument 0"}
!2985 = distinct !{!2985, !"quoting_options_from_style"}
!2986 = !DILocation(line: 1000, column: 13, scope: !2968)
!2987 = !DILocation(line: 0, scope: !1895, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 1001, column: 3, scope: !2968)
!2989 = !DILocation(line: 147, column: 57, scope: !1895, inlinedAt: !2988)
!2990 = !DILocation(line: 149, column: 21, scope: !1895, inlinedAt: !2988)
!2991 = !DILocation(line: 150, column: 6, scope: !1895, inlinedAt: !2988)
!2992 = !DILocation(line: 1002, column: 10, scope: !2968)
!2993 = !DILocation(line: 1003, column: 1, scope: !2968)
!2994 = !DILocation(line: 1002, column: 3, scope: !2968)
!2995 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !491, file: !491, line: 1006, type: !2996, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!105, !70, !111, !111, !111}
!2998 = !{!2999, !3000, !3001, !3002}
!2999 = !DILocalVariable(name: "n", arg: 1, scope: !2995, file: !491, line: 1006, type: !70)
!3000 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2995, file: !491, line: 1006, type: !111)
!3001 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2995, file: !491, line: 1007, type: !111)
!3002 = !DILocalVariable(name: "arg", arg: 4, scope: !2995, file: !491, line: 1007, type: !111)
!3003 = !DILocation(line: 0, scope: !2995)
!3004 = !DILocalVariable(name: "n", arg: 1, scope: !3005, file: !491, line: 1014, type: !70)
!3005 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !491, file: !491, line: 1014, type: !3006, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!105, !70, !111, !111, !111, !108}
!3008 = !{!3004, !3009, !3010, !3011, !3012, !3013}
!3009 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3005, file: !491, line: 1014, type: !111)
!3010 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3005, file: !491, line: 1015, type: !111)
!3011 = !DILocalVariable(name: "arg", arg: 4, scope: !3005, file: !491, line: 1016, type: !111)
!3012 = !DILocalVariable(name: "argsize", arg: 5, scope: !3005, file: !491, line: 1016, type: !108)
!3013 = !DILocalVariable(name: "o", scope: !3005, file: !491, line: 1018, type: !527)
!3014 = !DILocation(line: 0, scope: !3005, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 1009, column: 10, scope: !2995)
!3016 = !DILocation(line: 1018, column: 3, scope: !3005, inlinedAt: !3015)
!3017 = !DILocation(line: 1018, column: 26, scope: !3005, inlinedAt: !3015)
!3018 = !DILocation(line: 1018, column: 30, scope: !3005, inlinedAt: !3015)
!3019 = !DILocation(line: 0, scope: !1935, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 1019, column: 3, scope: !3005, inlinedAt: !3015)
!3021 = !DILocation(line: 174, column: 12, scope: !1935, inlinedAt: !3020)
!3022 = !DILocation(line: 175, column: 8, scope: !1948, inlinedAt: !3020)
!3023 = !DILocation(line: 175, column: 19, scope: !1948, inlinedAt: !3020)
!3024 = !DILocation(line: 176, column: 5, scope: !1948, inlinedAt: !3020)
!3025 = !DILocation(line: 177, column: 6, scope: !1935, inlinedAt: !3020)
!3026 = !DILocation(line: 177, column: 17, scope: !1935, inlinedAt: !3020)
!3027 = !DILocation(line: 178, column: 6, scope: !1935, inlinedAt: !3020)
!3028 = !DILocation(line: 178, column: 18, scope: !1935, inlinedAt: !3020)
!3029 = !DILocation(line: 1020, column: 10, scope: !3005, inlinedAt: !3015)
!3030 = !DILocation(line: 1021, column: 1, scope: !3005, inlinedAt: !3015)
!3031 = !DILocation(line: 1009, column: 3, scope: !2995)
!3032 = !DILocation(line: 0, scope: !3005)
!3033 = !DILocation(line: 1018, column: 3, scope: !3005)
!3034 = !DILocation(line: 1018, column: 26, scope: !3005)
!3035 = !DILocation(line: 1018, column: 30, scope: !3005)
!3036 = !DILocation(line: 0, scope: !1935, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 1019, column: 3, scope: !3005)
!3038 = !DILocation(line: 174, column: 12, scope: !1935, inlinedAt: !3037)
!3039 = !DILocation(line: 175, column: 8, scope: !1948, inlinedAt: !3037)
!3040 = !DILocation(line: 175, column: 19, scope: !1948, inlinedAt: !3037)
!3041 = !DILocation(line: 176, column: 5, scope: !1948, inlinedAt: !3037)
!3042 = !DILocation(line: 177, column: 6, scope: !1935, inlinedAt: !3037)
!3043 = !DILocation(line: 177, column: 17, scope: !1935, inlinedAt: !3037)
!3044 = !DILocation(line: 178, column: 6, scope: !1935, inlinedAt: !3037)
!3045 = !DILocation(line: 178, column: 18, scope: !1935, inlinedAt: !3037)
!3046 = !DILocation(line: 1020, column: 10, scope: !3005)
!3047 = !DILocation(line: 1021, column: 1, scope: !3005)
!3048 = !DILocation(line: 1020, column: 3, scope: !3005)
!3049 = distinct !DISubprogram(name: "quotearg_custom", scope: !491, file: !491, line: 1024, type: !3050, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!105, !111, !111, !111}
!3052 = !{!3053, !3054, !3055}
!3053 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3049, file: !491, line: 1024, type: !111)
!3054 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3049, file: !491, line: 1024, type: !111)
!3055 = !DILocalVariable(name: "arg", arg: 3, scope: !3049, file: !491, line: 1025, type: !111)
!3056 = !DILocation(line: 0, scope: !3049)
!3057 = !DILocation(line: 0, scope: !2995, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 1027, column: 10, scope: !3049)
!3059 = !DILocation(line: 0, scope: !3005, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 1009, column: 10, scope: !2995, inlinedAt: !3058)
!3061 = !DILocation(line: 1018, column: 3, scope: !3005, inlinedAt: !3060)
!3062 = !DILocation(line: 1018, column: 26, scope: !3005, inlinedAt: !3060)
!3063 = !DILocation(line: 1018, column: 30, scope: !3005, inlinedAt: !3060)
!3064 = !DILocation(line: 0, scope: !1935, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 1019, column: 3, scope: !3005, inlinedAt: !3060)
!3066 = !DILocation(line: 174, column: 12, scope: !1935, inlinedAt: !3065)
!3067 = !DILocation(line: 175, column: 8, scope: !1948, inlinedAt: !3065)
!3068 = !DILocation(line: 175, column: 19, scope: !1948, inlinedAt: !3065)
!3069 = !DILocation(line: 176, column: 5, scope: !1948, inlinedAt: !3065)
!3070 = !DILocation(line: 177, column: 6, scope: !1935, inlinedAt: !3065)
!3071 = !DILocation(line: 177, column: 17, scope: !1935, inlinedAt: !3065)
!3072 = !DILocation(line: 178, column: 6, scope: !1935, inlinedAt: !3065)
!3073 = !DILocation(line: 178, column: 18, scope: !1935, inlinedAt: !3065)
!3074 = !DILocation(line: 1020, column: 10, scope: !3005, inlinedAt: !3060)
!3075 = !DILocation(line: 1021, column: 1, scope: !3005, inlinedAt: !3060)
!3076 = !DILocation(line: 1027, column: 3, scope: !3049)
!3077 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !491, file: !491, line: 1031, type: !3078, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!105, !111, !111, !111, !108}
!3080 = !{!3081, !3082, !3083, !3084}
!3081 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3077, file: !491, line: 1031, type: !111)
!3082 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3077, file: !491, line: 1031, type: !111)
!3083 = !DILocalVariable(name: "arg", arg: 3, scope: !3077, file: !491, line: 1032, type: !111)
!3084 = !DILocalVariable(name: "argsize", arg: 4, scope: !3077, file: !491, line: 1032, type: !108)
!3085 = !DILocation(line: 0, scope: !3077)
!3086 = !DILocation(line: 0, scope: !3005, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 1034, column: 10, scope: !3077)
!3088 = !DILocation(line: 1018, column: 3, scope: !3005, inlinedAt: !3087)
!3089 = !DILocation(line: 1018, column: 26, scope: !3005, inlinedAt: !3087)
!3090 = !DILocation(line: 1018, column: 30, scope: !3005, inlinedAt: !3087)
!3091 = !DILocation(line: 0, scope: !1935, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 1019, column: 3, scope: !3005, inlinedAt: !3087)
!3093 = !DILocation(line: 174, column: 12, scope: !1935, inlinedAt: !3092)
!3094 = !DILocation(line: 175, column: 8, scope: !1948, inlinedAt: !3092)
!3095 = !DILocation(line: 175, column: 19, scope: !1948, inlinedAt: !3092)
!3096 = !DILocation(line: 176, column: 5, scope: !1948, inlinedAt: !3092)
!3097 = !DILocation(line: 177, column: 6, scope: !1935, inlinedAt: !3092)
!3098 = !DILocation(line: 177, column: 17, scope: !1935, inlinedAt: !3092)
!3099 = !DILocation(line: 178, column: 6, scope: !1935, inlinedAt: !3092)
!3100 = !DILocation(line: 178, column: 18, scope: !1935, inlinedAt: !3092)
!3101 = !DILocation(line: 1020, column: 10, scope: !3005, inlinedAt: !3087)
!3102 = !DILocation(line: 1021, column: 1, scope: !3005, inlinedAt: !3087)
!3103 = !DILocation(line: 1034, column: 3, scope: !3077)
!3104 = distinct !DISubprogram(name: "quote_n_mem", scope: !491, file: !491, line: 1049, type: !3105, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!111, !70, !111, !108}
!3107 = !{!3108, !3109, !3110}
!3108 = !DILocalVariable(name: "n", arg: 1, scope: !3104, file: !491, line: 1049, type: !70)
!3109 = !DILocalVariable(name: "arg", arg: 2, scope: !3104, file: !491, line: 1049, type: !111)
!3110 = !DILocalVariable(name: "argsize", arg: 3, scope: !3104, file: !491, line: 1049, type: !108)
!3111 = !DILocation(line: 0, scope: !3104)
!3112 = !DILocation(line: 1051, column: 10, scope: !3104)
!3113 = !DILocation(line: 1051, column: 3, scope: !3104)
!3114 = distinct !DISubprogram(name: "quote_mem", scope: !491, file: !491, line: 1055, type: !3115, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!111, !111, !108}
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "arg", arg: 1, scope: !3114, file: !491, line: 1055, type: !111)
!3119 = !DILocalVariable(name: "argsize", arg: 2, scope: !3114, file: !491, line: 1055, type: !108)
!3120 = !DILocation(line: 0, scope: !3114)
!3121 = !DILocation(line: 0, scope: !3104, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1057, column: 10, scope: !3114)
!3123 = !DILocation(line: 1051, column: 10, scope: !3104, inlinedAt: !3122)
!3124 = !DILocation(line: 1057, column: 3, scope: !3114)
!3125 = distinct !DISubprogram(name: "quote_n", scope: !491, file: !491, line: 1061, type: !3126, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!111, !70, !111}
!3128 = !{!3129, !3130}
!3129 = !DILocalVariable(name: "n", arg: 1, scope: !3125, file: !491, line: 1061, type: !70)
!3130 = !DILocalVariable(name: "arg", arg: 2, scope: !3125, file: !491, line: 1061, type: !111)
!3131 = !DILocation(line: 0, scope: !3125)
!3132 = !DILocation(line: 0, scope: !3104, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 1063, column: 10, scope: !3125)
!3134 = !DILocation(line: 1051, column: 10, scope: !3104, inlinedAt: !3133)
!3135 = !DILocation(line: 1063, column: 3, scope: !3125)
!3136 = distinct !DISubprogram(name: "quote", scope: !491, file: !491, line: 1067, type: !3137, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!111, !111}
!3139 = !{!3140}
!3140 = !DILocalVariable(name: "arg", arg: 1, scope: !3136, file: !491, line: 1067, type: !111)
!3141 = !DILocation(line: 0, scope: !3136)
!3142 = !DILocation(line: 0, scope: !3125, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 1069, column: 10, scope: !3136)
!3144 = !DILocation(line: 0, scope: !3104, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1063, column: 10, scope: !3125, inlinedAt: !3143)
!3146 = !DILocation(line: 1051, column: 10, scope: !3104, inlinedAt: !3145)
!3147 = !DILocation(line: 1069, column: 3, scope: !3136)
!3148 = distinct !DISubprogram(name: "version_etc_arn", scope: !590, file: !590, line: 61, type: !3149, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3186)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !3151, !111, !111, !111, !3185, !108}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3153)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3153, file: !188, line: 51, baseType: !70, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3153, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3153, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3153, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3153, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3153, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3153, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3153, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3153, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3153, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3153, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3153, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3153, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3153, file: !188, line: 70, baseType: !3169, size: 64, offset: 832)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3153, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3153, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3153, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3153, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3153, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3153, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3153, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3153, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3153, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3153, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3153, file: !188, line: 93, baseType: !3169, size: 64, offset: 1344)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3153, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3153, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3153, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3153, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192}
!3187 = !DILocalVariable(name: "stream", arg: 1, scope: !3148, file: !590, line: 61, type: !3151)
!3188 = !DILocalVariable(name: "command_name", arg: 2, scope: !3148, file: !590, line: 62, type: !111)
!3189 = !DILocalVariable(name: "package", arg: 3, scope: !3148, file: !590, line: 62, type: !111)
!3190 = !DILocalVariable(name: "version", arg: 4, scope: !3148, file: !590, line: 63, type: !111)
!3191 = !DILocalVariable(name: "authors", arg: 5, scope: !3148, file: !590, line: 64, type: !3185)
!3192 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3148, file: !590, line: 64, type: !108)
!3193 = !DILocation(line: 0, scope: !3148)
!3194 = !DILocation(line: 66, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3148, file: !590, line: 66, column: 7)
!3196 = !DILocation(line: 66, column: 7, scope: !3148)
!3197 = !DILocation(line: 67, column: 5, scope: !3195)
!3198 = !DILocation(line: 69, column: 5, scope: !3195)
!3199 = !DILocation(line: 83, column: 3, scope: !3148)
!3200 = !DILocation(line: 85, column: 3, scope: !3148)
!3201 = !DILocation(line: 88, column: 3, scope: !3148)
!3202 = !DILocation(line: 95, column: 3, scope: !3148)
!3203 = !DILocation(line: 97, column: 3, scope: !3148)
!3204 = !DILocation(line: 105, column: 7, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3148, file: !590, line: 98, column: 5)
!3206 = !DILocation(line: 106, column: 7, scope: !3205)
!3207 = !DILocation(line: 109, column: 7, scope: !3205)
!3208 = !DILocation(line: 110, column: 7, scope: !3205)
!3209 = !DILocation(line: 113, column: 7, scope: !3205)
!3210 = !DILocation(line: 115, column: 7, scope: !3205)
!3211 = !DILocation(line: 120, column: 7, scope: !3205)
!3212 = !DILocation(line: 122, column: 7, scope: !3205)
!3213 = !DILocation(line: 127, column: 7, scope: !3205)
!3214 = !DILocation(line: 129, column: 7, scope: !3205)
!3215 = !DILocation(line: 134, column: 7, scope: !3205)
!3216 = !DILocation(line: 137, column: 7, scope: !3205)
!3217 = !DILocation(line: 142, column: 7, scope: !3205)
!3218 = !DILocation(line: 145, column: 7, scope: !3205)
!3219 = !DILocation(line: 150, column: 7, scope: !3205)
!3220 = !DILocation(line: 154, column: 7, scope: !3205)
!3221 = !DILocation(line: 159, column: 7, scope: !3205)
!3222 = !DILocation(line: 163, column: 7, scope: !3205)
!3223 = !DILocation(line: 170, column: 7, scope: !3205)
!3224 = !DILocation(line: 174, column: 7, scope: !3205)
!3225 = !DILocation(line: 176, column: 1, scope: !3148)
!3226 = distinct !DISubprogram(name: "version_etc_ar", scope: !590, file: !590, line: 183, type: !3227, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !3151, !111, !111, !111, !3185}
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235}
!3230 = !DILocalVariable(name: "stream", arg: 1, scope: !3226, file: !590, line: 183, type: !3151)
!3231 = !DILocalVariable(name: "command_name", arg: 2, scope: !3226, file: !590, line: 184, type: !111)
!3232 = !DILocalVariable(name: "package", arg: 3, scope: !3226, file: !590, line: 184, type: !111)
!3233 = !DILocalVariable(name: "version", arg: 4, scope: !3226, file: !590, line: 185, type: !111)
!3234 = !DILocalVariable(name: "authors", arg: 5, scope: !3226, file: !590, line: 185, type: !3185)
!3235 = !DILocalVariable(name: "n_authors", scope: !3226, file: !590, line: 187, type: !108)
!3236 = !DILocation(line: 0, scope: !3226)
!3237 = !DILocation(line: 189, column: 8, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3226, file: !590, line: 189, column: 3)
!3239 = !DILocation(line: 189, scope: !3238)
!3240 = !DILocation(line: 189, column: 23, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3238, file: !590, line: 189, column: 3)
!3242 = !DILocation(line: 189, column: 3, scope: !3238)
!3243 = !DILocation(line: 189, column: 52, scope: !3241)
!3244 = distinct !{!3244, !3242, !3245, !913}
!3245 = !DILocation(line: 190, column: 5, scope: !3238)
!3246 = !DILocation(line: 191, column: 3, scope: !3226)
!3247 = !DILocation(line: 192, column: 1, scope: !3226)
!3248 = distinct !DISubprogram(name: "version_etc_va", scope: !590, file: !590, line: 199, type: !3249, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3262)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !3151, !111, !111, !111, !3251}
!3251 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !405, line: 52, baseType: !3252)
!3252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !407, line: 14, baseType: !3253)
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3254, baseType: !3255)
!3254 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3260, !3261}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3255, file: !3254, line: 192, baseType: !106, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3255, file: !3254, line: 192, baseType: !106, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3255, file: !3254, line: 192, baseType: !106, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3255, file: !3254, line: 192, baseType: !70, size: 32, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3255, file: !3254, line: 192, baseType: !70, size: 32, offset: 224)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3268, !3269}
!3263 = !DILocalVariable(name: "stream", arg: 1, scope: !3248, file: !590, line: 199, type: !3151)
!3264 = !DILocalVariable(name: "command_name", arg: 2, scope: !3248, file: !590, line: 200, type: !111)
!3265 = !DILocalVariable(name: "package", arg: 3, scope: !3248, file: !590, line: 200, type: !111)
!3266 = !DILocalVariable(name: "version", arg: 4, scope: !3248, file: !590, line: 201, type: !111)
!3267 = !DILocalVariable(name: "authors", arg: 5, scope: !3248, file: !590, line: 201, type: !3251)
!3268 = !DILocalVariable(name: "n_authors", scope: !3248, file: !590, line: 203, type: !108)
!3269 = !DILocalVariable(name: "authtab", scope: !3248, file: !590, line: 204, type: !3270)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 640, elements: !52)
!3271 = !DILocation(line: 0, scope: !3248)
!3272 = !DILocation(line: 201, column: 46, scope: !3248)
!3273 = !DILocation(line: 204, column: 3, scope: !3248)
!3274 = !DILocation(line: 204, column: 15, scope: !3248)
!3275 = !DILocation(line: 208, column: 35, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !590, line: 206, column: 3)
!3277 = distinct !DILexicalBlock(scope: !3248, file: !590, line: 206, column: 3)
!3278 = !DILocation(line: 208, column: 33, scope: !3276)
!3279 = !DILocation(line: 208, column: 67, scope: !3276)
!3280 = !DILocation(line: 206, column: 3, scope: !3277)
!3281 = !DILocation(line: 208, column: 14, scope: !3276)
!3282 = !DILocation(line: 0, scope: !3277)
!3283 = !DILocation(line: 211, column: 3, scope: !3248)
!3284 = !DILocation(line: 213, column: 1, scope: !3248)
!3285 = distinct !DISubprogram(name: "version_etc", scope: !590, file: !590, line: 230, type: !3286, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !3151, !111, !111, !111, null}
!3288 = !{!3289, !3290, !3291, !3292, !3293}
!3289 = !DILocalVariable(name: "stream", arg: 1, scope: !3285, file: !590, line: 230, type: !3151)
!3290 = !DILocalVariable(name: "command_name", arg: 2, scope: !3285, file: !590, line: 231, type: !111)
!3291 = !DILocalVariable(name: "package", arg: 3, scope: !3285, file: !590, line: 231, type: !111)
!3292 = !DILocalVariable(name: "version", arg: 4, scope: !3285, file: !590, line: 232, type: !111)
!3293 = !DILocalVariable(name: "authors", scope: !3285, file: !590, line: 234, type: !3251)
!3294 = !DILocation(line: 0, scope: !3285)
!3295 = !DILocation(line: 234, column: 3, scope: !3285)
!3296 = !DILocation(line: 234, column: 11, scope: !3285)
!3297 = !DILocation(line: 235, column: 3, scope: !3285)
!3298 = !DILocation(line: 236, column: 3, scope: !3285)
!3299 = !DILocation(line: 237, column: 3, scope: !3285)
!3300 = !DILocation(line: 238, column: 1, scope: !3285)
!3301 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !590, file: !590, line: 241, type: !446, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !809)
!3302 = !DILocation(line: 243, column: 3, scope: !3301)
!3303 = !DILocation(line: 248, column: 3, scope: !3301)
!3304 = !DILocation(line: 254, column: 3, scope: !3301)
!3305 = !DILocation(line: 259, column: 3, scope: !3301)
!3306 = !DILocation(line: 261, column: 1, scope: !3301)
!3307 = distinct !DISubprogram(name: "xnrealloc", scope: !3308, file: !3308, line: 147, type: !3309, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3311)
!3308 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!106, !106, !108, !108}
!3311 = !{!3312, !3313, !3314}
!3312 = !DILocalVariable(name: "p", arg: 1, scope: !3307, file: !3308, line: 147, type: !106)
!3313 = !DILocalVariable(name: "n", arg: 2, scope: !3307, file: !3308, line: 147, type: !108)
!3314 = !DILocalVariable(name: "s", arg: 3, scope: !3307, file: !3308, line: 147, type: !108)
!3315 = !DILocation(line: 0, scope: !3307)
!3316 = !DILocalVariable(name: "p", arg: 1, scope: !3317, file: !729, line: 83, type: !106)
!3317 = distinct !DISubprogram(name: "xreallocarray", scope: !729, file: !729, line: 83, type: !3309, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3318)
!3318 = !{!3316, !3319, !3320}
!3319 = !DILocalVariable(name: "n", arg: 2, scope: !3317, file: !729, line: 83, type: !108)
!3320 = !DILocalVariable(name: "s", arg: 3, scope: !3317, file: !729, line: 83, type: !108)
!3321 = !DILocation(line: 0, scope: !3317, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 149, column: 10, scope: !3307)
!3323 = !DILocation(line: 85, column: 25, scope: !3317, inlinedAt: !3322)
!3324 = !DILocalVariable(name: "p", arg: 1, scope: !3325, file: !729, line: 37, type: !106)
!3325 = distinct !DISubprogram(name: "check_nonnull", scope: !729, file: !729, line: 37, type: !3326, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!106, !106}
!3328 = !{!3324}
!3329 = !DILocation(line: 0, scope: !3325, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 85, column: 10, scope: !3317, inlinedAt: !3322)
!3331 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3330)
!3332 = distinct !DILexicalBlock(scope: !3325, file: !729, line: 39, column: 7)
!3333 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3330)
!3334 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3330)
!3335 = !DILocation(line: 149, column: 3, scope: !3307)
!3336 = !DILocation(line: 0, scope: !3317)
!3337 = !DILocation(line: 85, column: 25, scope: !3317)
!3338 = !DILocation(line: 0, scope: !3325, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 85, column: 10, scope: !3317)
!3340 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3339)
!3341 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3339)
!3342 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3339)
!3343 = !DILocation(line: 85, column: 3, scope: !3317)
!3344 = distinct !DISubprogram(name: "xmalloc", scope: !729, file: !729, line: 47, type: !3345, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3347)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!106, !108}
!3347 = !{!3348}
!3348 = !DILocalVariable(name: "s", arg: 1, scope: !3344, file: !729, line: 47, type: !108)
!3349 = !DILocation(line: 0, scope: !3344)
!3350 = !DILocation(line: 49, column: 25, scope: !3344)
!3351 = !DILocation(line: 0, scope: !3325, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 49, column: 10, scope: !3344)
!3353 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3352)
!3354 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3352)
!3355 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3352)
!3356 = !DILocation(line: 49, column: 3, scope: !3344)
!3357 = !DISubprogram(name: "malloc", scope: !987, file: !987, line: 540, type: !3345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!3358 = distinct !DISubprogram(name: "ximalloc", scope: !729, file: !729, line: 53, type: !3359, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!106, !748}
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "s", arg: 1, scope: !3358, file: !729, line: 53, type: !748)
!3363 = !DILocation(line: 0, scope: !3358)
!3364 = !DILocalVariable(name: "s", arg: 1, scope: !3365, file: !3366, line: 55, type: !748)
!3365 = distinct !DISubprogram(name: "imalloc", scope: !3366, file: !3366, line: 55, type: !3359, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3367)
!3366 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3367 = !{!3364}
!3368 = !DILocation(line: 0, scope: !3365, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 55, column: 25, scope: !3358)
!3370 = !DILocation(line: 57, column: 26, scope: !3365, inlinedAt: !3369)
!3371 = !DILocation(line: 0, scope: !3325, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 55, column: 10, scope: !3358)
!3373 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3372)
!3374 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3372)
!3375 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3372)
!3376 = !DILocation(line: 55, column: 3, scope: !3358)
!3377 = distinct !DISubprogram(name: "xcharalloc", scope: !729, file: !729, line: 59, type: !3378, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!105, !108}
!3380 = !{!3381}
!3381 = !DILocalVariable(name: "n", arg: 1, scope: !3377, file: !729, line: 59, type: !108)
!3382 = !DILocation(line: 0, scope: !3377)
!3383 = !DILocation(line: 0, scope: !3344, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 61, column: 10, scope: !3377)
!3385 = !DILocation(line: 49, column: 25, scope: !3344, inlinedAt: !3384)
!3386 = !DILocation(line: 0, scope: !3325, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 49, column: 10, scope: !3344, inlinedAt: !3384)
!3388 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3387)
!3389 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3387)
!3390 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3387)
!3391 = !DILocation(line: 61, column: 3, scope: !3377)
!3392 = distinct !DISubprogram(name: "xrealloc", scope: !729, file: !729, line: 68, type: !3393, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!106, !106, !108}
!3395 = !{!3396, !3397}
!3396 = !DILocalVariable(name: "p", arg: 1, scope: !3392, file: !729, line: 68, type: !106)
!3397 = !DILocalVariable(name: "s", arg: 2, scope: !3392, file: !729, line: 68, type: !108)
!3398 = !DILocation(line: 0, scope: !3392)
!3399 = !DILocalVariable(name: "ptr", arg: 1, scope: !3400, file: !3401, line: 2057, type: !106)
!3400 = distinct !DISubprogram(name: "rpl_realloc", scope: !3401, file: !3401, line: 2057, type: !3393, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3402)
!3401 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3402 = !{!3399, !3403}
!3403 = !DILocalVariable(name: "size", arg: 2, scope: !3400, file: !3401, line: 2057, type: !108)
!3404 = !DILocation(line: 0, scope: !3400, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 70, column: 25, scope: !3392)
!3406 = !DILocation(line: 2059, column: 24, scope: !3400, inlinedAt: !3405)
!3407 = !DILocation(line: 2059, column: 10, scope: !3400, inlinedAt: !3405)
!3408 = !DILocation(line: 0, scope: !3325, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 70, column: 10, scope: !3392)
!3410 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3409)
!3411 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3409)
!3412 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3409)
!3413 = !DILocation(line: 70, column: 3, scope: !3392)
!3414 = !DISubprogram(name: "realloc", scope: !987, file: !987, line: 551, type: !3393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!3415 = distinct !DISubprogram(name: "xirealloc", scope: !729, file: !729, line: 74, type: !3416, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!106, !106, !748}
!3418 = !{!3419, !3420}
!3419 = !DILocalVariable(name: "p", arg: 1, scope: !3415, file: !729, line: 74, type: !106)
!3420 = !DILocalVariable(name: "s", arg: 2, scope: !3415, file: !729, line: 74, type: !748)
!3421 = !DILocation(line: 0, scope: !3415)
!3422 = !DILocalVariable(name: "p", arg: 1, scope: !3423, file: !3366, line: 66, type: !106)
!3423 = distinct !DISubprogram(name: "irealloc", scope: !3366, file: !3366, line: 66, type: !3416, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3424)
!3424 = !{!3422, !3425}
!3425 = !DILocalVariable(name: "s", arg: 2, scope: !3423, file: !3366, line: 66, type: !748)
!3426 = !DILocation(line: 0, scope: !3423, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 76, column: 25, scope: !3415)
!3428 = !DILocation(line: 0, scope: !3400, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 68, column: 26, scope: !3423, inlinedAt: !3427)
!3430 = !DILocation(line: 2059, column: 24, scope: !3400, inlinedAt: !3429)
!3431 = !DILocation(line: 2059, column: 10, scope: !3400, inlinedAt: !3429)
!3432 = !DILocation(line: 0, scope: !3325, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 76, column: 10, scope: !3415)
!3434 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3433)
!3435 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3433)
!3436 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3433)
!3437 = !DILocation(line: 76, column: 3, scope: !3415)
!3438 = distinct !DISubprogram(name: "xireallocarray", scope: !729, file: !729, line: 89, type: !3439, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3441)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!106, !106, !748, !748}
!3441 = !{!3442, !3443, !3444}
!3442 = !DILocalVariable(name: "p", arg: 1, scope: !3438, file: !729, line: 89, type: !106)
!3443 = !DILocalVariable(name: "n", arg: 2, scope: !3438, file: !729, line: 89, type: !748)
!3444 = !DILocalVariable(name: "s", arg: 3, scope: !3438, file: !729, line: 89, type: !748)
!3445 = !DILocation(line: 0, scope: !3438)
!3446 = !DILocalVariable(name: "p", arg: 1, scope: !3447, file: !3366, line: 98, type: !106)
!3447 = distinct !DISubprogram(name: "ireallocarray", scope: !3366, file: !3366, line: 98, type: !3439, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3448)
!3448 = !{!3446, !3449, !3450}
!3449 = !DILocalVariable(name: "n", arg: 2, scope: !3447, file: !3366, line: 98, type: !748)
!3450 = !DILocalVariable(name: "s", arg: 3, scope: !3447, file: !3366, line: 98, type: !748)
!3451 = !DILocation(line: 0, scope: !3447, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 91, column: 25, scope: !3438)
!3453 = !DILocation(line: 101, column: 13, scope: !3447, inlinedAt: !3452)
!3454 = !DILocation(line: 0, scope: !3325, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 91, column: 10, scope: !3438)
!3456 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3455)
!3457 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3455)
!3458 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3455)
!3459 = !DILocation(line: 91, column: 3, scope: !3438)
!3460 = distinct !DISubprogram(name: "xnmalloc", scope: !729, file: !729, line: 98, type: !3461, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!106, !108, !108}
!3463 = !{!3464, !3465}
!3464 = !DILocalVariable(name: "n", arg: 1, scope: !3460, file: !729, line: 98, type: !108)
!3465 = !DILocalVariable(name: "s", arg: 2, scope: !3460, file: !729, line: 98, type: !108)
!3466 = !DILocation(line: 0, scope: !3460)
!3467 = !DILocation(line: 0, scope: !3317, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 100, column: 10, scope: !3460)
!3469 = !DILocation(line: 85, column: 25, scope: !3317, inlinedAt: !3468)
!3470 = !DILocation(line: 0, scope: !3325, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 85, column: 10, scope: !3317, inlinedAt: !3468)
!3472 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3471)
!3473 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3471)
!3474 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3471)
!3475 = !DILocation(line: 100, column: 3, scope: !3460)
!3476 = distinct !DISubprogram(name: "xinmalloc", scope: !729, file: !729, line: 104, type: !3477, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!106, !748, !748}
!3479 = !{!3480, !3481}
!3480 = !DILocalVariable(name: "n", arg: 1, scope: !3476, file: !729, line: 104, type: !748)
!3481 = !DILocalVariable(name: "s", arg: 2, scope: !3476, file: !729, line: 104, type: !748)
!3482 = !DILocation(line: 0, scope: !3476)
!3483 = !DILocation(line: 0, scope: !3438, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 106, column: 10, scope: !3476)
!3485 = !DILocation(line: 0, scope: !3447, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 91, column: 25, scope: !3438, inlinedAt: !3484)
!3487 = !DILocation(line: 101, column: 13, scope: !3447, inlinedAt: !3486)
!3488 = !DILocation(line: 0, scope: !3325, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 91, column: 10, scope: !3438, inlinedAt: !3484)
!3490 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3489)
!3491 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3489)
!3492 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3489)
!3493 = !DILocation(line: 106, column: 3, scope: !3476)
!3494 = distinct !DISubprogram(name: "x2realloc", scope: !729, file: !729, line: 116, type: !3495, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!106, !106, !735}
!3497 = !{!3498, !3499}
!3498 = !DILocalVariable(name: "p", arg: 1, scope: !3494, file: !729, line: 116, type: !106)
!3499 = !DILocalVariable(name: "ps", arg: 2, scope: !3494, file: !729, line: 116, type: !735)
!3500 = !DILocation(line: 0, scope: !3494)
!3501 = !DILocation(line: 0, scope: !732, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 118, column: 10, scope: !3494)
!3503 = !DILocation(line: 178, column: 14, scope: !732, inlinedAt: !3502)
!3504 = !DILocation(line: 180, column: 9, scope: !3505, inlinedAt: !3502)
!3505 = distinct !DILexicalBlock(scope: !732, file: !729, line: 180, column: 7)
!3506 = !DILocation(line: 180, column: 7, scope: !732, inlinedAt: !3502)
!3507 = !DILocation(line: 182, column: 13, scope: !3508, inlinedAt: !3502)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !729, line: 182, column: 11)
!3509 = distinct !DILexicalBlock(scope: !3505, file: !729, line: 181, column: 5)
!3510 = !DILocation(line: 182, column: 11, scope: !3509, inlinedAt: !3502)
!3511 = !DILocation(line: 197, column: 11, scope: !3512, inlinedAt: !3502)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !729, line: 197, column: 11)
!3513 = distinct !DILexicalBlock(scope: !3505, file: !729, line: 195, column: 5)
!3514 = !DILocation(line: 197, column: 11, scope: !3513, inlinedAt: !3502)
!3515 = !DILocation(line: 198, column: 9, scope: !3512, inlinedAt: !3502)
!3516 = !DILocation(line: 0, scope: !3317, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 201, column: 7, scope: !732, inlinedAt: !3502)
!3518 = !DILocation(line: 85, column: 25, scope: !3317, inlinedAt: !3517)
!3519 = !DILocation(line: 0, scope: !3325, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 85, column: 10, scope: !3317, inlinedAt: !3517)
!3521 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3520)
!3522 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3520)
!3523 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3520)
!3524 = !DILocation(line: 202, column: 7, scope: !732, inlinedAt: !3502)
!3525 = !DILocation(line: 118, column: 3, scope: !3494)
!3526 = !DILocation(line: 0, scope: !732)
!3527 = !DILocation(line: 178, column: 14, scope: !732)
!3528 = !DILocation(line: 180, column: 9, scope: !3505)
!3529 = !DILocation(line: 180, column: 7, scope: !732)
!3530 = !DILocation(line: 182, column: 13, scope: !3508)
!3531 = !DILocation(line: 182, column: 11, scope: !3509)
!3532 = !DILocation(line: 190, column: 30, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3508, file: !729, line: 183, column: 9)
!3534 = !DILocation(line: 191, column: 16, scope: !3533)
!3535 = !DILocation(line: 191, column: 13, scope: !3533)
!3536 = !DILocation(line: 192, column: 9, scope: !3533)
!3537 = !DILocation(line: 197, column: 11, scope: !3512)
!3538 = !DILocation(line: 197, column: 11, scope: !3513)
!3539 = !DILocation(line: 198, column: 9, scope: !3512)
!3540 = !DILocation(line: 0, scope: !3317, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 201, column: 7, scope: !732)
!3542 = !DILocation(line: 85, column: 25, scope: !3317, inlinedAt: !3541)
!3543 = !DILocation(line: 0, scope: !3325, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 85, column: 10, scope: !3317, inlinedAt: !3541)
!3545 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3544)
!3546 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3544)
!3547 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3544)
!3548 = !DILocation(line: 202, column: 7, scope: !732)
!3549 = !DILocation(line: 203, column: 3, scope: !732)
!3550 = !DILocation(line: 0, scope: !744)
!3551 = !DILocation(line: 230, column: 14, scope: !744)
!3552 = !DILocation(line: 238, column: 7, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !744, file: !729, line: 238, column: 7)
!3554 = !DILocation(line: 238, column: 7, scope: !744)
!3555 = !DILocation(line: 240, column: 9, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !744, file: !729, line: 240, column: 7)
!3557 = !DILocation(line: 240, column: 18, scope: !3556)
!3558 = !DILocation(line: 253, column: 8, scope: !744)
!3559 = !DILocation(line: 258, column: 27, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !729, line: 257, column: 5)
!3561 = distinct !DILexicalBlock(scope: !744, file: !729, line: 256, column: 7)
!3562 = !DILocation(line: 259, column: 32, scope: !3560)
!3563 = !DILocation(line: 260, column: 5, scope: !3560)
!3564 = !DILocation(line: 262, column: 9, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !744, file: !729, line: 262, column: 7)
!3566 = !DILocation(line: 262, column: 7, scope: !744)
!3567 = !DILocation(line: 263, column: 9, scope: !3565)
!3568 = !DILocation(line: 263, column: 5, scope: !3565)
!3569 = !DILocation(line: 264, column: 9, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !744, file: !729, line: 264, column: 7)
!3571 = !DILocation(line: 264, column: 14, scope: !3570)
!3572 = !DILocation(line: 265, column: 7, scope: !3570)
!3573 = !DILocation(line: 265, column: 11, scope: !3570)
!3574 = !DILocation(line: 266, column: 11, scope: !3570)
!3575 = !DILocation(line: 267, column: 14, scope: !3570)
!3576 = !DILocation(line: 264, column: 7, scope: !744)
!3577 = !DILocation(line: 268, column: 5, scope: !3570)
!3578 = !DILocation(line: 0, scope: !3392, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 269, column: 8, scope: !744)
!3580 = !DILocation(line: 0, scope: !3400, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 70, column: 25, scope: !3392, inlinedAt: !3579)
!3582 = !DILocation(line: 2059, column: 24, scope: !3400, inlinedAt: !3581)
!3583 = !DILocation(line: 2059, column: 10, scope: !3400, inlinedAt: !3581)
!3584 = !DILocation(line: 0, scope: !3325, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 70, column: 10, scope: !3392, inlinedAt: !3579)
!3586 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3585)
!3587 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3585)
!3588 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3585)
!3589 = !DILocation(line: 270, column: 7, scope: !744)
!3590 = !DILocation(line: 271, column: 3, scope: !744)
!3591 = distinct !DISubprogram(name: "xzalloc", scope: !729, file: !729, line: 279, type: !3345, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3592)
!3592 = !{!3593}
!3593 = !DILocalVariable(name: "s", arg: 1, scope: !3591, file: !729, line: 279, type: !108)
!3594 = !DILocation(line: 0, scope: !3591)
!3595 = !DILocalVariable(name: "n", arg: 1, scope: !3596, file: !729, line: 294, type: !108)
!3596 = distinct !DISubprogram(name: "xcalloc", scope: !729, file: !729, line: 294, type: !3461, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3597)
!3597 = !{!3595, !3598}
!3598 = !DILocalVariable(name: "s", arg: 2, scope: !3596, file: !729, line: 294, type: !108)
!3599 = !DILocation(line: 0, scope: !3596, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 281, column: 10, scope: !3591)
!3601 = !DILocation(line: 296, column: 25, scope: !3596, inlinedAt: !3600)
!3602 = !DILocation(line: 0, scope: !3325, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 296, column: 10, scope: !3596, inlinedAt: !3600)
!3604 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3603)
!3605 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3603)
!3606 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3603)
!3607 = !DILocation(line: 281, column: 3, scope: !3591)
!3608 = !DISubprogram(name: "calloc", scope: !987, file: !987, line: 543, type: !3461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!3609 = !DILocation(line: 0, scope: !3596)
!3610 = !DILocation(line: 296, column: 25, scope: !3596)
!3611 = !DILocation(line: 0, scope: !3325, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 296, column: 10, scope: !3596)
!3613 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3612)
!3614 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3612)
!3615 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3612)
!3616 = !DILocation(line: 296, column: 3, scope: !3596)
!3617 = distinct !DISubprogram(name: "xizalloc", scope: !729, file: !729, line: 285, type: !3359, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3618)
!3618 = !{!3619}
!3619 = !DILocalVariable(name: "s", arg: 1, scope: !3617, file: !729, line: 285, type: !748)
!3620 = !DILocation(line: 0, scope: !3617)
!3621 = !DILocalVariable(name: "n", arg: 1, scope: !3622, file: !729, line: 300, type: !748)
!3622 = distinct !DISubprogram(name: "xicalloc", scope: !729, file: !729, line: 300, type: !3477, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3623)
!3623 = !{!3621, !3624}
!3624 = !DILocalVariable(name: "s", arg: 2, scope: !3622, file: !729, line: 300, type: !748)
!3625 = !DILocation(line: 0, scope: !3622, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 287, column: 10, scope: !3617)
!3627 = !DILocalVariable(name: "n", arg: 1, scope: !3628, file: !3366, line: 77, type: !748)
!3628 = distinct !DISubprogram(name: "icalloc", scope: !3366, file: !3366, line: 77, type: !3477, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3629)
!3629 = !{!3627, !3630}
!3630 = !DILocalVariable(name: "s", arg: 2, scope: !3628, file: !3366, line: 77, type: !748)
!3631 = !DILocation(line: 0, scope: !3628, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 302, column: 25, scope: !3622, inlinedAt: !3626)
!3633 = !DILocation(line: 91, column: 10, scope: !3628, inlinedAt: !3632)
!3634 = !DILocation(line: 0, scope: !3325, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 302, column: 10, scope: !3622, inlinedAt: !3626)
!3636 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3635)
!3637 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3635)
!3638 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3635)
!3639 = !DILocation(line: 287, column: 3, scope: !3617)
!3640 = !DILocation(line: 0, scope: !3622)
!3641 = !DILocation(line: 0, scope: !3628, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 302, column: 25, scope: !3622)
!3643 = !DILocation(line: 91, column: 10, scope: !3628, inlinedAt: !3642)
!3644 = !DILocation(line: 0, scope: !3325, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 302, column: 10, scope: !3622)
!3646 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3645)
!3647 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3645)
!3648 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3645)
!3649 = !DILocation(line: 302, column: 3, scope: !3622)
!3650 = distinct !DISubprogram(name: "xmemdup", scope: !729, file: !729, line: 310, type: !3651, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!106, !1011, !108}
!3653 = !{!3654, !3655}
!3654 = !DILocalVariable(name: "p", arg: 1, scope: !3650, file: !729, line: 310, type: !1011)
!3655 = !DILocalVariable(name: "s", arg: 2, scope: !3650, file: !729, line: 310, type: !108)
!3656 = !DILocation(line: 0, scope: !3650)
!3657 = !DILocation(line: 0, scope: !3344, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 312, column: 18, scope: !3650)
!3659 = !DILocation(line: 49, column: 25, scope: !3344, inlinedAt: !3658)
!3660 = !DILocation(line: 0, scope: !3325, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 49, column: 10, scope: !3344, inlinedAt: !3658)
!3662 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3661)
!3663 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3661)
!3664 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3661)
!3665 = !DILocalVariable(name: "__dest", arg: 1, scope: !3666, file: !1838, line: 26, type: !3669)
!3666 = distinct !DISubprogram(name: "memcpy", scope: !1838, file: !1838, line: 26, type: !3667, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3670)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!106, !3669, !1010, !108}
!3669 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!3670 = !{!3665, !3671, !3672}
!3671 = !DILocalVariable(name: "__src", arg: 2, scope: !3666, file: !1838, line: 26, type: !1010)
!3672 = !DILocalVariable(name: "__len", arg: 3, scope: !3666, file: !1838, line: 26, type: !108)
!3673 = !DILocation(line: 0, scope: !3666, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 312, column: 10, scope: !3650)
!3675 = !DILocation(line: 29, column: 10, scope: !3666, inlinedAt: !3674)
!3676 = !DILocation(line: 312, column: 3, scope: !3650)
!3677 = distinct !DISubprogram(name: "ximemdup", scope: !729, file: !729, line: 316, type: !3678, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!106, !1011, !748}
!3680 = !{!3681, !3682}
!3681 = !DILocalVariable(name: "p", arg: 1, scope: !3677, file: !729, line: 316, type: !1011)
!3682 = !DILocalVariable(name: "s", arg: 2, scope: !3677, file: !729, line: 316, type: !748)
!3683 = !DILocation(line: 0, scope: !3677)
!3684 = !DILocation(line: 0, scope: !3358, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 318, column: 18, scope: !3677)
!3686 = !DILocation(line: 0, scope: !3365, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 55, column: 25, scope: !3358, inlinedAt: !3685)
!3688 = !DILocation(line: 57, column: 26, scope: !3365, inlinedAt: !3687)
!3689 = !DILocation(line: 0, scope: !3325, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 55, column: 10, scope: !3358, inlinedAt: !3685)
!3691 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3690)
!3692 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3690)
!3693 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3690)
!3694 = !DILocation(line: 0, scope: !3666, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 318, column: 10, scope: !3677)
!3696 = !DILocation(line: 29, column: 10, scope: !3666, inlinedAt: !3695)
!3697 = !DILocation(line: 318, column: 3, scope: !3677)
!3698 = distinct !DISubprogram(name: "ximemdup0", scope: !729, file: !729, line: 325, type: !3699, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!105, !1011, !748}
!3701 = !{!3702, !3703, !3704}
!3702 = !DILocalVariable(name: "p", arg: 1, scope: !3698, file: !729, line: 325, type: !1011)
!3703 = !DILocalVariable(name: "s", arg: 2, scope: !3698, file: !729, line: 325, type: !748)
!3704 = !DILocalVariable(name: "result", scope: !3698, file: !729, line: 327, type: !105)
!3705 = !DILocation(line: 0, scope: !3698)
!3706 = !DILocation(line: 327, column: 30, scope: !3698)
!3707 = !DILocation(line: 0, scope: !3358, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 327, column: 18, scope: !3698)
!3709 = !DILocation(line: 0, scope: !3365, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 55, column: 25, scope: !3358, inlinedAt: !3708)
!3711 = !DILocation(line: 57, column: 26, scope: !3365, inlinedAt: !3710)
!3712 = !DILocation(line: 0, scope: !3325, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 55, column: 10, scope: !3358, inlinedAt: !3708)
!3714 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3713)
!3715 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3713)
!3716 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3713)
!3717 = !DILocation(line: 328, column: 3, scope: !3698)
!3718 = !DILocation(line: 328, column: 13, scope: !3698)
!3719 = !DILocation(line: 0, scope: !3666, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 329, column: 10, scope: !3698)
!3721 = !DILocation(line: 29, column: 10, scope: !3666, inlinedAt: !3720)
!3722 = !DILocation(line: 329, column: 3, scope: !3698)
!3723 = distinct !DISubprogram(name: "xstrdup", scope: !729, file: !729, line: 335, type: !989, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3724)
!3724 = !{!3725}
!3725 = !DILocalVariable(name: "string", arg: 1, scope: !3723, file: !729, line: 335, type: !111)
!3726 = !DILocation(line: 0, scope: !3723)
!3727 = !DILocation(line: 337, column: 27, scope: !3723)
!3728 = !DILocation(line: 337, column: 43, scope: !3723)
!3729 = !DILocation(line: 0, scope: !3650, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 337, column: 10, scope: !3723)
!3731 = !DILocation(line: 0, scope: !3344, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 312, column: 18, scope: !3650, inlinedAt: !3730)
!3733 = !DILocation(line: 49, column: 25, scope: !3344, inlinedAt: !3732)
!3734 = !DILocation(line: 0, scope: !3325, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 49, column: 10, scope: !3344, inlinedAt: !3732)
!3736 = !DILocation(line: 39, column: 8, scope: !3332, inlinedAt: !3735)
!3737 = !DILocation(line: 39, column: 7, scope: !3325, inlinedAt: !3735)
!3738 = !DILocation(line: 40, column: 5, scope: !3332, inlinedAt: !3735)
!3739 = !DILocation(line: 0, scope: !3666, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 312, column: 10, scope: !3650, inlinedAt: !3730)
!3741 = !DILocation(line: 29, column: 10, scope: !3666, inlinedAt: !3740)
!3742 = !DILocation(line: 337, column: 3, scope: !3723)
!3743 = distinct !DISubprogram(name: "xalloc_die", scope: !680, file: !680, line: 32, type: !446, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !3744)
!3744 = !{!3745}
!3745 = !DILocalVariable(name: "__errstatus", scope: !3746, file: !680, line: 34, type: !3747)
!3746 = distinct !DILexicalBlock(scope: !3743, file: !680, line: 34, column: 3)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3748 = !DILocation(line: 34, column: 3, scope: !3746)
!3749 = !DILocation(line: 0, scope: !3746)
!3750 = !DILocation(line: 40, column: 3, scope: !3743)
!3751 = distinct !DISubprogram(name: "close_stream", scope: !765, file: !765, line: 55, type: !3752, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3788)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!70, !3754}
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3757)
!3757 = !{!3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3756, file: !188, line: 51, baseType: !70, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3756, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3756, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3756, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3756, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3756, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3756, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3756, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3756, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3756, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3756, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3756, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3756, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3756, file: !188, line: 70, baseType: !3772, size: 64, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3756, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3756, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3756, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3756, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3756, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3756, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3756, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3756, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3756, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3756, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3756, file: !188, line: 93, baseType: !3772, size: 64, offset: 1344)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3756, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3756, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3756, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3756, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3788 = !{!3789, !3790, !3792, !3793}
!3789 = !DILocalVariable(name: "stream", arg: 1, scope: !3751, file: !765, line: 55, type: !3754)
!3790 = !DILocalVariable(name: "some_pending", scope: !3751, file: !765, line: 57, type: !3791)
!3791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!3792 = !DILocalVariable(name: "prev_fail", scope: !3751, file: !765, line: 58, type: !3791)
!3793 = !DILocalVariable(name: "fclose_fail", scope: !3751, file: !765, line: 59, type: !3791)
!3794 = !DILocation(line: 0, scope: !3751)
!3795 = !DILocation(line: 57, column: 30, scope: !3751)
!3796 = !DILocalVariable(name: "__stream", arg: 1, scope: !3797, file: !1318, line: 135, type: !3754)
!3797 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1318, file: !1318, line: 135, type: !3752, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3798)
!3798 = !{!3796}
!3799 = !DILocation(line: 0, scope: !3797, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 58, column: 27, scope: !3751)
!3801 = !DILocation(line: 137, column: 10, scope: !3797, inlinedAt: !3800)
!3802 = !{!1327, !867, i64 0}
!3803 = !DILocation(line: 58, column: 43, scope: !3751)
!3804 = !DILocation(line: 59, column: 29, scope: !3751)
!3805 = !DILocation(line: 59, column: 45, scope: !3751)
!3806 = !DILocation(line: 69, column: 17, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3751, file: !765, line: 69, column: 7)
!3808 = !DILocation(line: 57, column: 50, scope: !3751)
!3809 = !DILocation(line: 69, column: 33, scope: !3807)
!3810 = !DILocation(line: 69, column: 53, scope: !3807)
!3811 = !DILocation(line: 69, column: 59, scope: !3807)
!3812 = !DILocation(line: 69, column: 7, scope: !3751)
!3813 = !DILocation(line: 71, column: 11, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3807, file: !765, line: 70, column: 5)
!3815 = !DILocation(line: 72, column: 9, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3814, file: !765, line: 71, column: 11)
!3817 = !DILocation(line: 72, column: 15, scope: !3816)
!3818 = !DILocation(line: 77, column: 1, scope: !3751)
!3819 = !DISubprogram(name: "__fpending", scope: !3820, file: !3820, line: 75, type: !3821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!3820 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!108, !3754}
!3823 = distinct !DISubprogram(name: "rpl_fclose", scope: !767, file: !767, line: 58, type: !3824, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3860)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!70, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3828)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3829)
!3829 = !{!3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3828, file: !188, line: 51, baseType: !70, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3828, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3828, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3828, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3828, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3828, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3828, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3828, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3828, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3828, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3828, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3828, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3828, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3828, file: !188, line: 70, baseType: !3844, size: 64, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3828, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3828, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3828, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3828, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3828, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3828, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3828, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3828, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3828, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3828, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3828, file: !188, line: 93, baseType: !3844, size: 64, offset: 1344)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3828, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3828, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3828, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3828, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3860 = !{!3861, !3862, !3863, !3864}
!3861 = !DILocalVariable(name: "fp", arg: 1, scope: !3823, file: !767, line: 58, type: !3826)
!3862 = !DILocalVariable(name: "saved_errno", scope: !3823, file: !767, line: 60, type: !70)
!3863 = !DILocalVariable(name: "fd", scope: !3823, file: !767, line: 63, type: !70)
!3864 = !DILocalVariable(name: "result", scope: !3823, file: !767, line: 74, type: !70)
!3865 = !DILocation(line: 0, scope: !3823)
!3866 = !DILocation(line: 63, column: 12, scope: !3823)
!3867 = !DILocation(line: 64, column: 10, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3823, file: !767, line: 64, column: 7)
!3869 = !DILocation(line: 64, column: 7, scope: !3823)
!3870 = !DILocation(line: 65, column: 12, scope: !3868)
!3871 = !DILocation(line: 65, column: 5, scope: !3868)
!3872 = !DILocation(line: 70, column: 9, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3823, file: !767, line: 70, column: 7)
!3874 = !DILocation(line: 70, column: 23, scope: !3873)
!3875 = !DILocation(line: 70, column: 33, scope: !3873)
!3876 = !DILocation(line: 70, column: 26, scope: !3873)
!3877 = !DILocation(line: 70, column: 59, scope: !3873)
!3878 = !DILocation(line: 71, column: 7, scope: !3873)
!3879 = !DILocation(line: 71, column: 10, scope: !3873)
!3880 = !DILocation(line: 70, column: 7, scope: !3823)
!3881 = !DILocation(line: 100, column: 12, scope: !3823)
!3882 = !DILocation(line: 105, column: 7, scope: !3823)
!3883 = !DILocation(line: 72, column: 19, scope: !3873)
!3884 = !DILocation(line: 105, column: 19, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3823, file: !767, line: 105, column: 7)
!3886 = !DILocation(line: 107, column: 13, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3885, file: !767, line: 106, column: 5)
!3888 = !DILocation(line: 109, column: 5, scope: !3887)
!3889 = !DILocation(line: 112, column: 1, scope: !3823)
!3890 = !DISubprogram(name: "fileno", scope: !405, file: !405, line: 809, type: !3824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!3891 = !DISubprogram(name: "fclose", scope: !405, file: !405, line: 178, type: !3824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!3892 = !DISubprogram(name: "__freading", scope: !3820, file: !3820, line: 51, type: !3824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!3893 = !DISubprogram(name: "lseek", scope: !1192, file: !1192, line: 339, type: !3894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!210, !70, !210, !70}
!3896 = distinct !DISubprogram(name: "rpl_fflush", scope: !769, file: !769, line: 130, type: !3897, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3933)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!70, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3901)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3902)
!3902 = !{!3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3901, file: !188, line: 51, baseType: !70, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3901, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3901, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3901, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3901, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3901, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3901, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3901, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3901, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3901, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3901, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3901, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3901, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3901, file: !188, line: 70, baseType: !3917, size: 64, offset: 832)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3901, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3901, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3901, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3901, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3901, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3901, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3901, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3901, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3901, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3901, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3901, file: !188, line: 93, baseType: !3917, size: 64, offset: 1344)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3901, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3901, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3901, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3901, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3933 = !{!3934}
!3934 = !DILocalVariable(name: "stream", arg: 1, scope: !3896, file: !769, line: 130, type: !3899)
!3935 = !DILocation(line: 0, scope: !3896)
!3936 = !DILocation(line: 151, column: 14, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3896, file: !769, line: 151, column: 7)
!3938 = !DILocation(line: 151, column: 22, scope: !3937)
!3939 = !DILocation(line: 151, column: 27, scope: !3937)
!3940 = !DILocation(line: 151, column: 7, scope: !3896)
!3941 = !DILocation(line: 152, column: 12, scope: !3937)
!3942 = !DILocation(line: 152, column: 5, scope: !3937)
!3943 = !DILocalVariable(name: "fp", arg: 1, scope: !3944, file: !769, line: 42, type: !3899)
!3944 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !769, file: !769, line: 42, type: !3945, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3899}
!3947 = !{!3943}
!3948 = !DILocation(line: 0, scope: !3944, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 157, column: 3, scope: !3896)
!3950 = !DILocation(line: 44, column: 12, scope: !3951, inlinedAt: !3949)
!3951 = distinct !DILexicalBlock(scope: !3944, file: !769, line: 44, column: 7)
!3952 = !DILocation(line: 44, column: 19, scope: !3951, inlinedAt: !3949)
!3953 = !DILocation(line: 44, column: 7, scope: !3944, inlinedAt: !3949)
!3954 = !DILocation(line: 46, column: 5, scope: !3951, inlinedAt: !3949)
!3955 = !DILocation(line: 159, column: 10, scope: !3896)
!3956 = !DILocation(line: 159, column: 3, scope: !3896)
!3957 = !DILocation(line: 236, column: 1, scope: !3896)
!3958 = !DISubprogram(name: "fflush", scope: !405, file: !405, line: 230, type: !3897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!3959 = distinct !DISubprogram(name: "rpl_fseeko", scope: !771, file: !771, line: 28, type: !3960, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3997)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!70, !3962, !3996, !70}
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3964)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3964, file: !188, line: 51, baseType: !70, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3964, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3964, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3964, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3964, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3964, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3964, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3964, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3964, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3964, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3964, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3964, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3964, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3964, file: !188, line: 70, baseType: !3980, size: 64, offset: 832)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3964, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3964, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3964, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3964, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3964, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3964, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3964, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3964, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3964, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3964, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3964, file: !188, line: 93, baseType: !3980, size: 64, offset: 1344)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3964, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3964, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3964, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3964, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3996 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !405, line: 63, baseType: !210)
!3997 = !{!3998, !3999, !4000, !4001}
!3998 = !DILocalVariable(name: "fp", arg: 1, scope: !3959, file: !771, line: 28, type: !3962)
!3999 = !DILocalVariable(name: "offset", arg: 2, scope: !3959, file: !771, line: 28, type: !3996)
!4000 = !DILocalVariable(name: "whence", arg: 3, scope: !3959, file: !771, line: 28, type: !70)
!4001 = !DILocalVariable(name: "pos", scope: !4002, file: !771, line: 123, type: !3996)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !771, line: 119, column: 5)
!4003 = distinct !DILexicalBlock(scope: !3959, file: !771, line: 55, column: 7)
!4004 = !DILocation(line: 0, scope: !3959)
!4005 = !DILocation(line: 55, column: 12, scope: !4003)
!4006 = !{!1327, !801, i64 16}
!4007 = !DILocation(line: 55, column: 33, scope: !4003)
!4008 = !{!1327, !801, i64 8}
!4009 = !DILocation(line: 55, column: 25, scope: !4003)
!4010 = !DILocation(line: 56, column: 7, scope: !4003)
!4011 = !DILocation(line: 56, column: 15, scope: !4003)
!4012 = !DILocation(line: 56, column: 37, scope: !4003)
!4013 = !{!1327, !801, i64 32}
!4014 = !DILocation(line: 56, column: 29, scope: !4003)
!4015 = !DILocation(line: 57, column: 7, scope: !4003)
!4016 = !DILocation(line: 57, column: 15, scope: !4003)
!4017 = !{!1327, !801, i64 72}
!4018 = !DILocation(line: 57, column: 29, scope: !4003)
!4019 = !DILocation(line: 55, column: 7, scope: !3959)
!4020 = !DILocation(line: 123, column: 26, scope: !4002)
!4021 = !DILocation(line: 123, column: 19, scope: !4002)
!4022 = !DILocation(line: 0, scope: !4002)
!4023 = !DILocation(line: 124, column: 15, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4002, file: !771, line: 124, column: 11)
!4025 = !DILocation(line: 124, column: 11, scope: !4002)
!4026 = !DILocation(line: 135, column: 19, scope: !4002)
!4027 = !DILocation(line: 136, column: 12, scope: !4002)
!4028 = !DILocation(line: 136, column: 20, scope: !4002)
!4029 = !{!1327, !1328, i64 144}
!4030 = !DILocation(line: 167, column: 7, scope: !4002)
!4031 = !DILocation(line: 169, column: 10, scope: !3959)
!4032 = !DILocation(line: 169, column: 3, scope: !3959)
!4033 = !DILocation(line: 170, column: 1, scope: !3959)
!4034 = !DISubprogram(name: "fseeko", scope: !405, file: !405, line: 736, type: !4035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!70, !3962, !210, !70}
!4037 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !687, file: !687, line: 100, type: !4038, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !4041)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!108, !1856, !111, !108, !4040}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!4041 = !{!4042, !4043, !4044, !4045, !4046}
!4042 = !DILocalVariable(name: "pwc", arg: 1, scope: !4037, file: !687, line: 100, type: !1856)
!4043 = !DILocalVariable(name: "s", arg: 2, scope: !4037, file: !687, line: 100, type: !111)
!4044 = !DILocalVariable(name: "n", arg: 3, scope: !4037, file: !687, line: 100, type: !108)
!4045 = !DILocalVariable(name: "ps", arg: 4, scope: !4037, file: !687, line: 100, type: !4040)
!4046 = !DILocalVariable(name: "ret", scope: !4037, file: !687, line: 130, type: !108)
!4047 = !DILocation(line: 0, scope: !4037)
!4048 = !DILocation(line: 105, column: 9, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4037, file: !687, line: 105, column: 7)
!4050 = !DILocation(line: 105, column: 7, scope: !4037)
!4051 = !DILocation(line: 117, column: 10, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4037, file: !687, line: 117, column: 7)
!4053 = !DILocation(line: 117, column: 7, scope: !4037)
!4054 = !DILocation(line: 130, column: 16, scope: !4037)
!4055 = !DILocation(line: 135, column: 11, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4037, file: !687, line: 135, column: 7)
!4057 = !DILocation(line: 135, column: 25, scope: !4056)
!4058 = !DILocation(line: 135, column: 30, scope: !4056)
!4059 = !DILocation(line: 135, column: 7, scope: !4037)
!4060 = !DILocalVariable(name: "ps", arg: 1, scope: !4061, file: !1829, line: 1135, type: !4040)
!4061 = distinct !DISubprogram(name: "mbszero", scope: !1829, file: !1829, line: 1135, type: !4062, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !4040}
!4064 = !{!4060}
!4065 = !DILocation(line: 0, scope: !4061, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 137, column: 5, scope: !4056)
!4067 = !DILocalVariable(name: "__dest", arg: 1, scope: !4068, file: !1838, line: 57, type: !106)
!4068 = distinct !DISubprogram(name: "memset", scope: !1838, file: !1838, line: 57, type: !1839, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !4069)
!4069 = !{!4067, !4070, !4071}
!4070 = !DILocalVariable(name: "__ch", arg: 2, scope: !4068, file: !1838, line: 57, type: !70)
!4071 = !DILocalVariable(name: "__len", arg: 3, scope: !4068, file: !1838, line: 57, type: !108)
!4072 = !DILocation(line: 0, scope: !4068, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 1137, column: 3, scope: !4061, inlinedAt: !4066)
!4074 = !DILocation(line: 59, column: 10, scope: !4068, inlinedAt: !4073)
!4075 = !DILocation(line: 137, column: 5, scope: !4056)
!4076 = !DILocation(line: 138, column: 11, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4037, file: !687, line: 138, column: 7)
!4078 = !DILocation(line: 138, column: 7, scope: !4037)
!4079 = !DILocation(line: 139, column: 5, scope: !4077)
!4080 = !DILocation(line: 143, column: 26, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4037, file: !687, line: 143, column: 7)
!4082 = !DILocation(line: 143, column: 41, scope: !4081)
!4083 = !DILocation(line: 143, column: 7, scope: !4037)
!4084 = !DILocation(line: 145, column: 15, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !687, line: 145, column: 11)
!4086 = distinct !DILexicalBlock(scope: !4081, file: !687, line: 144, column: 5)
!4087 = !DILocation(line: 145, column: 11, scope: !4086)
!4088 = !DILocation(line: 146, column: 32, scope: !4085)
!4089 = !DILocation(line: 146, column: 16, scope: !4085)
!4090 = !DILocation(line: 146, column: 14, scope: !4085)
!4091 = !DILocation(line: 146, column: 9, scope: !4085)
!4092 = !DILocation(line: 286, column: 1, scope: !4037)
!4093 = !DISubprogram(name: "mbsinit", scope: !4094, file: !4094, line: 293, type: !4095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !809)
!4094 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!70, !4097}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!4099 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !773, file: !773, line: 27, type: !3309, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4100)
!4100 = !{!4101, !4102, !4103, !4104}
!4101 = !DILocalVariable(name: "ptr", arg: 1, scope: !4099, file: !773, line: 27, type: !106)
!4102 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4099, file: !773, line: 27, type: !108)
!4103 = !DILocalVariable(name: "size", arg: 3, scope: !4099, file: !773, line: 27, type: !108)
!4104 = !DILocalVariable(name: "nbytes", scope: !4099, file: !773, line: 29, type: !108)
!4105 = !DILocation(line: 0, scope: !4099)
!4106 = !DILocation(line: 30, column: 7, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4099, file: !773, line: 30, column: 7)
!4108 = !DILocalVariable(name: "ptr", arg: 1, scope: !4109, file: !3401, line: 2057, type: !106)
!4109 = distinct !DISubprogram(name: "rpl_realloc", scope: !3401, file: !3401, line: 2057, type: !3393, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4110)
!4110 = !{!4108, !4111}
!4111 = !DILocalVariable(name: "size", arg: 2, scope: !4109, file: !3401, line: 2057, type: !108)
!4112 = !DILocation(line: 0, scope: !4109, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 37, column: 10, scope: !4099)
!4114 = !DILocation(line: 2059, column: 24, scope: !4109, inlinedAt: !4113)
!4115 = !DILocation(line: 2059, column: 10, scope: !4109, inlinedAt: !4113)
!4116 = !DILocation(line: 37, column: 3, scope: !4099)
!4117 = !DILocation(line: 32, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4107, file: !773, line: 31, column: 5)
!4119 = !DILocation(line: 32, column: 13, scope: !4118)
!4120 = !DILocation(line: 33, column: 7, scope: !4118)
!4121 = !DILocation(line: 38, column: 1, scope: !4099)
!4122 = distinct !DISubprogram(name: "hard_locale", scope: !705, file: !705, line: 28, type: !4123, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4125)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!171, !70}
!4125 = !{!4126, !4127}
!4126 = !DILocalVariable(name: "category", arg: 1, scope: !4122, file: !705, line: 28, type: !70)
!4127 = !DILocalVariable(name: "locale", scope: !4122, file: !705, line: 30, type: !4128)
!4128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4129)
!4129 = !{!4130}
!4130 = !DISubrange(count: 257)
!4131 = !DILocation(line: 0, scope: !4122)
!4132 = !DILocation(line: 30, column: 3, scope: !4122)
!4133 = !DILocation(line: 30, column: 8, scope: !4122)
!4134 = !DILocation(line: 32, column: 7, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4122, file: !705, line: 32, column: 7)
!4136 = !DILocation(line: 32, column: 7, scope: !4122)
!4137 = !DILocalVariable(name: "__s1", arg: 1, scope: !4138, file: !879, line: 1359, type: !111)
!4138 = distinct !DISubprogram(name: "streq", scope: !879, file: !879, line: 1359, type: !880, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4139)
!4139 = !{!4137, !4140}
!4140 = !DILocalVariable(name: "__s2", arg: 2, scope: !4138, file: !879, line: 1359, type: !111)
!4141 = !DILocation(line: 0, scope: !4138, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 35, column: 9, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4122, file: !705, line: 35, column: 7)
!4144 = !DILocation(line: 1361, column: 11, scope: !4138, inlinedAt: !4142)
!4145 = !DILocation(line: 1361, column: 10, scope: !4138, inlinedAt: !4142)
!4146 = !DILocation(line: 35, column: 29, scope: !4143)
!4147 = !DILocation(line: 0, scope: !4138, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 35, column: 32, scope: !4143)
!4149 = !DILocation(line: 1361, column: 11, scope: !4138, inlinedAt: !4148)
!4150 = !DILocation(line: 1361, column: 10, scope: !4138, inlinedAt: !4148)
!4151 = !DILocation(line: 35, column: 7, scope: !4122)
!4152 = !DILocation(line: 46, column: 3, scope: !4122)
!4153 = !DILocation(line: 47, column: 1, scope: !4122)
!4154 = distinct !DISubprogram(name: "setlocale_null_r", scope: !778, file: !778, line: 154, type: !4155, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4157)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!70, !70, !105, !108}
!4157 = !{!4158, !4159, !4160}
!4158 = !DILocalVariable(name: "category", arg: 1, scope: !4154, file: !778, line: 154, type: !70)
!4159 = !DILocalVariable(name: "buf", arg: 2, scope: !4154, file: !778, line: 154, type: !105)
!4160 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4154, file: !778, line: 154, type: !108)
!4161 = !DILocation(line: 0, scope: !4154)
!4162 = !DILocation(line: 159, column: 10, scope: !4154)
!4163 = !DILocation(line: 159, column: 3, scope: !4154)
!4164 = distinct !DISubprogram(name: "setlocale_null", scope: !778, file: !778, line: 186, type: !4165, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4167)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!111, !70}
!4167 = !{!4168}
!4168 = !DILocalVariable(name: "category", arg: 1, scope: !4164, file: !778, line: 186, type: !70)
!4169 = !DILocation(line: 0, scope: !4164)
!4170 = !DILocation(line: 189, column: 10, scope: !4164)
!4171 = !DILocation(line: 189, column: 3, scope: !4164)
!4172 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !780, file: !780, line: 35, type: !4165, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4173)
!4173 = !{!4174, !4175}
!4174 = !DILocalVariable(name: "category", arg: 1, scope: !4172, file: !780, line: 35, type: !70)
!4175 = !DILocalVariable(name: "result", scope: !4172, file: !780, line: 37, type: !111)
!4176 = !DILocation(line: 0, scope: !4172)
!4177 = !DILocation(line: 37, column: 24, scope: !4172)
!4178 = !DILocation(line: 62, column: 3, scope: !4172)
!4179 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !780, file: !780, line: 66, type: !4155, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4180)
!4180 = !{!4181, !4182, !4183, !4184, !4185}
!4181 = !DILocalVariable(name: "category", arg: 1, scope: !4179, file: !780, line: 66, type: !70)
!4182 = !DILocalVariable(name: "buf", arg: 2, scope: !4179, file: !780, line: 66, type: !105)
!4183 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4179, file: !780, line: 66, type: !108)
!4184 = !DILocalVariable(name: "result", scope: !4179, file: !780, line: 111, type: !111)
!4185 = !DILocalVariable(name: "length", scope: !4186, file: !780, line: 125, type: !108)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !780, line: 124, column: 5)
!4187 = distinct !DILexicalBlock(scope: !4179, file: !780, line: 113, column: 7)
!4188 = !DILocation(line: 0, scope: !4179)
!4189 = !DILocation(line: 0, scope: !4172, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 111, column: 24, scope: !4179)
!4191 = !DILocation(line: 37, column: 24, scope: !4172, inlinedAt: !4190)
!4192 = !DILocation(line: 113, column: 14, scope: !4187)
!4193 = !DILocation(line: 113, column: 7, scope: !4179)
!4194 = !DILocation(line: 116, column: 19, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4196, file: !780, line: 116, column: 11)
!4196 = distinct !DILexicalBlock(scope: !4187, file: !780, line: 114, column: 5)
!4197 = !DILocation(line: 116, column: 11, scope: !4196)
!4198 = !DILocation(line: 120, column: 16, scope: !4195)
!4199 = !DILocation(line: 120, column: 9, scope: !4195)
!4200 = !DILocation(line: 125, column: 23, scope: !4186)
!4201 = !DILocation(line: 0, scope: !4186)
!4202 = !DILocation(line: 126, column: 18, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4186, file: !780, line: 126, column: 11)
!4204 = !DILocation(line: 126, column: 11, scope: !4186)
!4205 = !DILocation(line: 128, column: 39, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4203, file: !780, line: 127, column: 9)
!4207 = !DILocalVariable(name: "__dest", arg: 1, scope: !4208, file: !1838, line: 26, type: !3669)
!4208 = distinct !DISubprogram(name: "memcpy", scope: !1838, file: !1838, line: 26, type: !3667, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4209)
!4209 = !{!4207, !4210, !4211}
!4210 = !DILocalVariable(name: "__src", arg: 2, scope: !4208, file: !1838, line: 26, type: !1010)
!4211 = !DILocalVariable(name: "__len", arg: 3, scope: !4208, file: !1838, line: 26, type: !108)
!4212 = !DILocation(line: 0, scope: !4208, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 128, column: 11, scope: !4206)
!4214 = !DILocation(line: 29, column: 10, scope: !4208, inlinedAt: !4213)
!4215 = !DILocation(line: 129, column: 11, scope: !4206)
!4216 = !DILocation(line: 133, column: 23, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !780, line: 133, column: 15)
!4218 = distinct !DILexicalBlock(scope: !4203, file: !780, line: 132, column: 9)
!4219 = !DILocation(line: 133, column: 15, scope: !4218)
!4220 = !DILocation(line: 138, column: 44, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4217, file: !780, line: 134, column: 13)
!4222 = !DILocation(line: 0, scope: !4208, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 138, column: 15, scope: !4221)
!4224 = !DILocation(line: 29, column: 10, scope: !4208, inlinedAt: !4223)
!4225 = !DILocation(line: 139, column: 15, scope: !4221)
!4226 = !DILocation(line: 139, column: 32, scope: !4221)
!4227 = !DILocation(line: 140, column: 13, scope: !4221)
!4228 = !DILocation(line: 0, scope: !4187)
!4229 = !DILocation(line: 145, column: 1, scope: !4179)
