; ModuleID = 'src/mkfifo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
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
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.58, i32 2, ptr null, i32 90 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !64
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !389
@.str.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !381
@.str.1.28 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !383
@.str.2.29 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !385
@.str.3.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !387
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !391
@stderr = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !397
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !429
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !399
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !419
@.str.1.37 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !421
@.str.2.39 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !423
@.str.3.38 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !425
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !427
@.str.4.32 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !431
@.str.5.33 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !433
@.str.6.34 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !438
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !443
@.str.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !449
@.str.1.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !451
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !453
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !484
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !487
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !489
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !491
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !493
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !495
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !497
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !499
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !501
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !503
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.62, ptr @.str.1.63, ptr @.str.2.64, ptr @.str.3.65, ptr @.str.4.66, ptr @.str.5.67, ptr @.str.6.68, ptr @.str.7.69, ptr @.str.8.70, ptr @.str.9.71, ptr null], align 16, !dbg !505
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !516
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !530
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !568
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !575
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !532
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !577
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !520
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !537
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !539
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !541
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !543
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !545
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !583
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !586
@.str.2.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !588
@.str.3.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !590
@.str.4.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !592
@.str.5.85 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !594
@.str.6.86 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !599
@.str.7.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !604
@.str.8.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !606
@.str.9.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !611
@.str.10.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !616
@.str.11.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !621
@.str.12.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !626
@.str.13.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !628
@.str.14.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !630
@.str.15.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !635
@.str.16.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !640
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.101 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !645
@.str.18.102 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !647
@.str.19.103 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !649
@.str.20.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !651
@.str.21.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !653
@.str.22.106 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !655
@.str.23.107 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !657
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !659
@exit_failure = dso_local global i32 1, align 4, !dbg !667
@.str.124 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !673
@.str.1.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !676
@.str.2.123 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !678
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !680
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !683
@.str.1.140 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !698

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !783 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !787, metadata !DIExpression()), !dbg !788
  %2 = icmp eq i32 %0, 0, !dbg !789
  br i1 %2, label %8, label %3, !dbg !791

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !792, !tbaa !794
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !792
  %6 = load ptr, ptr @program_name, align 8, !dbg !792, !tbaa !794
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !792
  br label %37, !dbg !792

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !798
  %10 = load ptr, ptr @program_name, align 8, !dbg !798, !tbaa !794
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !798
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !800
  %13 = load ptr, ptr @stdout, align 8, !dbg !800, !tbaa !794
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !800
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !801
  %16 = load ptr, ptr @stdout, align 8, !dbg !801, !tbaa !794
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !801
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !805
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !805
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !806
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !806
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !807
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !807
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #36, !dbg !808
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !808
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #36, !dbg !809
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !809
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !810, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !822, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr poison, metadata !822, metadata !DIExpression()), !dbg !827
  tail call void @emit_bug_reporting_address() #36, !dbg !829
  %23 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !830
  call void @llvm.dbg.value(metadata ptr %23, metadata !825, metadata !DIExpression()), !dbg !827
  %24 = icmp eq ptr %23, null, !dbg !831
  br i1 %24, label %32, label %25, !dbg !833

25:                                               ; preds = %8
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #37, !dbg !834
  %27 = icmp eq i32 %26, 0, !dbg !834
  br i1 %27, label %32, label %28, !dbg !835

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #36, !dbg !836
  %30 = load ptr, ptr @stdout, align 8, !dbg !836, !tbaa !794
  %31 = tail call i32 @fputs_unlocked(ptr noundef %29, ptr noundef %30), !dbg !836
  br label %32, !dbg !838

32:                                               ; preds = %8, %25, %28
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !822, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !827
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #36, !dbg !839
  %34 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %33, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #36, !dbg !839
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #36, !dbg !840
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #36, !dbg !840
  br label %37

37:                                               ; preds = %32, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !841
  unreachable, !dbg !841
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !842 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !846 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !852 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !855 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !161 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !165, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata ptr %0, metadata !166, metadata !DIExpression()), !dbg !859
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !860, !tbaa !861
  %3 = icmp eq i32 %2, -1, !dbg !863
  br i1 %3, label %4, label %16, !dbg !864

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.23) #36, !dbg !865
  call void @llvm.dbg.value(metadata ptr %5, metadata !167, metadata !DIExpression()), !dbg !866
  %6 = icmp eq ptr %5, null, !dbg !867
  br i1 %6, label %14, label %7, !dbg !868

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !869, !tbaa !870
  %9 = icmp eq i8 %8, 0, !dbg !869
  br i1 %9, label %14, label %10, !dbg !871

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !872, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata ptr @.str.24, metadata !878, metadata !DIExpression()), !dbg !879
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.24) #37, !dbg !881
  %12 = icmp eq i32 %11, 0, !dbg !882
  %13 = zext i1 %12 to i32, !dbg !871
  br label %14, !dbg !871

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !883, !tbaa !861
  br label %16, !dbg !884

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !885
  %18 = icmp eq i32 %17, 0, !dbg !885
  br i1 %18, label %22, label %19, !dbg !887

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !888, !tbaa !794
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !888
  br label %128, !dbg !890

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !170, metadata !DIExpression()), !dbg !859
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.25) #37, !dbg !891
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !892
  call void @llvm.dbg.value(metadata ptr %24, metadata !172, metadata !DIExpression()), !dbg !859
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !893
  call void @llvm.dbg.value(metadata ptr %25, metadata !173, metadata !DIExpression()), !dbg !859
  %26 = icmp eq ptr %25, null, !dbg !894
  br i1 %26, label %58, label %27, !dbg !895

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !896
  br i1 %28, label %58, label %29, !dbg !897

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !174, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !898
  %30 = icmp ult ptr %24, %25, !dbg !899
  br i1 %30, label %31, label %52, !dbg !900

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !859
  %33 = load ptr, ptr %32, align 8, !tbaa !794
  br label %34, !dbg !900

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !174, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i64 %36, metadata !178, metadata !DIExpression()), !dbg !898
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !901
  call void @llvm.dbg.value(metadata ptr %37, metadata !174, metadata !DIExpression()), !dbg !898
  %38 = load i8, ptr %35, align 1, !dbg !901, !tbaa !870
  %39 = sext i8 %38 to i64, !dbg !901
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !901
  %41 = load i16, ptr %40, align 2, !dbg !901, !tbaa !902
  %42 = freeze i16 %41, !dbg !904
  %43 = lshr i16 %42, 13, !dbg !904
  %44 = and i16 %43, 1, !dbg !904
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !905
  call void @llvm.dbg.value(metadata i64 %46, metadata !178, metadata !DIExpression()), !dbg !898
  %47 = icmp ult ptr %37, %25, !dbg !899
  %48 = icmp ult i64 %46, 2, !dbg !906
  %49 = select i1 %47, i1 %48, i1 false, !dbg !906
  br i1 %49, label %34, label %50, !dbg !900, !llvm.loop !907

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !909
  br i1 %51, label %52, label %54, !dbg !911

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !911

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !911
  call void @llvm.dbg.value(metadata i8 %57, metadata !170, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata ptr %56, metadata !173, metadata !DIExpression()), !dbg !859
  br label %58, !dbg !912

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !859
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !859
  call void @llvm.dbg.value(metadata i8 %60, metadata !170, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata ptr %59, metadata !173, metadata !DIExpression()), !dbg !859
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.26) #37, !dbg !913
  call void @llvm.dbg.value(metadata i64 %61, metadata !179, metadata !DIExpression()), !dbg !859
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !914
  call void @llvm.dbg.value(metadata ptr %62, metadata !180, metadata !DIExpression()), !dbg !859
  br label %63, !dbg !915

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !859
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !859
  call void @llvm.dbg.value(metadata i8 %65, metadata !170, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata ptr %64, metadata !180, metadata !DIExpression()), !dbg !859
  %66 = load i8, ptr %64, align 1, !dbg !916, !tbaa !870
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !917

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !918
  %69 = load i8, ptr %68, align 1, !dbg !921, !tbaa !870
  %70 = icmp eq i8 %69, 45, !dbg !922
  %71 = select i1 %70, i8 0, i8 %65, !dbg !923
  br label %72, !dbg !923

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !859
  call void @llvm.dbg.value(metadata i8 %73, metadata !170, metadata !DIExpression()), !dbg !859
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !924
  %75 = load ptr, ptr %74, align 8, !dbg !924, !tbaa !794
  %76 = sext i8 %66 to i64, !dbg !924
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !924
  %78 = load i16, ptr %77, align 2, !dbg !924, !tbaa !902
  %79 = and i16 %78, 8192, !dbg !924
  %80 = icmp eq i16 %79, 0, !dbg !924
  br i1 %80, label %96, label %81, !dbg !926

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !927
  br i1 %82, label %98, label %83, !dbg !930

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !931
  %85 = load i8, ptr %84, align 1, !dbg !931, !tbaa !870
  %86 = sext i8 %85 to i64, !dbg !931
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !931
  %88 = load i16, ptr %87, align 2, !dbg !931, !tbaa !902
  %89 = and i16 %88, 8192, !dbg !931
  %90 = icmp eq i16 %89, 0, !dbg !931
  br i1 %90, label %91, label %98, !dbg !932

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !933
  %93 = icmp ne i8 %92, 0, !dbg !933
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !935
  br i1 %95, label %96, label %98, !dbg !935

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !936
  call void @llvm.dbg.value(metadata ptr %97, metadata !180, metadata !DIExpression()), !dbg !859
  br label %63, !dbg !915, !llvm.loop !937

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !939
  %100 = load ptr, ptr @stdout, align 8, !dbg !939, !tbaa !794
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !237, metadata !DIExpression()), !dbg !859
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #37, !dbg !960
  %103 = icmp eq i32 %102, 0, !dbg !960
  br i1 %103, label %107, label %104, !dbg !962

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.41, i64 noundef 9) #37, !dbg !963
  %106 = icmp eq i32 %105, 0, !dbg !963
  br i1 %106, label %107, label %110, !dbg !964

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !965
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !965
  br label %113, !dbg !967

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !968
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !968
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !794
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %114), !dbg !970
  %116 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !794
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %116), !dbg !971
  %118 = ptrtoint ptr %64 to i64, !dbg !972
  %119 = sub i64 %118, %99, !dbg !972
  %120 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !794
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !972
  %122 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !794
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %122), !dbg !973
  %124 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !794
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %124), !dbg !974
  %126 = load ptr, ptr @stdout, align 8, !dbg !975, !tbaa !794
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !975
  br label %128, !dbg !976

128:                                              ; preds = %113, %19
  ret void, !dbg !976
}

; Function Attrs: nounwind
declare !dbg !977 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !981 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !985 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !987 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !990 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !993 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !996 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !999 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1005 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1006 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1012 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1017, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata ptr %1, metadata !1018, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata ptr null, metadata !1019, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata ptr null, metadata !1020, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata ptr null, metadata !1021, metadata !DIExpression()), !dbg !1041
  %3 = load ptr, ptr %1, align 8, !dbg !1042, !tbaa !794
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !1043
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #36, !dbg !1044
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #36, !dbg !1045
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #36, !dbg !1046
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1047
  br label %8, !dbg !1048

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !1048

10:                                               ; preds = %19, %8
  call void @llvm.dbg.value(metadata ptr %9, metadata !1019, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata ptr null, metadata !1020, metadata !DIExpression()), !dbg !1041
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %11, metadata !1025, metadata !DIExpression()), !dbg !1041
  switch i32 %11, label %25 [
    i32 -1, label %26
    i32 109, label %12
    i32 90, label %14
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !1048

12:                                               ; preds = %10
  %13 = load ptr, ptr @optarg, align 8, !dbg !1050, !tbaa !794
  call void @llvm.dbg.value(metadata ptr %13, metadata !1019, metadata !DIExpression()), !dbg !1041
  br label %8, !dbg !1053, !llvm.loop !1054

14:                                               ; preds = %10
  %15 = load ptr, ptr @optarg, align 8, !dbg !1056, !tbaa !794
  %16 = icmp eq ptr %15, null, !dbg !1056
  br i1 %16, label %19, label %17, !dbg !1060

17:                                               ; preds = %14
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !1061
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18) #36, !dbg !1061
  br label %19, !dbg !1063

19:                                               ; preds = %17, %14
  br label %10, !dbg !1041, !llvm.loop !1054

20:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #40, !dbg !1064
  unreachable, !dbg !1064

21:                                               ; preds = %10
  %22 = load ptr, ptr @stdout, align 8, !dbg !1065, !tbaa !794
  %23 = load ptr, ptr @Version, align 8, !dbg !1065, !tbaa !794
  %24 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #36, !dbg !1065
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %23, ptr noundef %24, ptr noundef null) #36, !dbg !1065
  tail call void @exit(i32 noundef 0) #38, !dbg !1065
  unreachable, !dbg !1065

25:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #40, !dbg !1066
  unreachable, !dbg !1066

26:                                               ; preds = %10
  %27 = load i32, ptr @optind, align 4, !dbg !1067, !tbaa !861
  %28 = icmp eq i32 %27, %0, !dbg !1069
  br i1 %28, label %29, label %31, !dbg !1070

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #36, !dbg !1071
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #36, !dbg !1071
  tail call void @usage(i32 noundef 1) #40, !dbg !1073
  unreachable, !dbg !1073

31:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 438, metadata !1029, metadata !DIExpression()), !dbg !1041
  %32 = icmp eq ptr %9, null, !dbg !1074
  br i1 %32, label %47, label %33, !dbg !1075

33:                                               ; preds = %31
  %34 = tail call noalias ptr @mode_compile(ptr noundef nonnull %9) #36, !dbg !1076
  call void @llvm.dbg.value(metadata ptr %34, metadata !1033, metadata !DIExpression()), !dbg !1077
  %35 = icmp eq ptr %34, null, !dbg !1078
  br i1 %35, label %36, label %38, !dbg !1080

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #36, !dbg !1081
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %37) #36, !dbg !1081
  unreachable, !dbg !1081

38:                                               ; preds = %33
  %39 = tail call i32 @umask(i32 noundef 0) #36, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %39, metadata !1039, metadata !DIExpression()), !dbg !1077
  %40 = tail call i32 @umask(i32 noundef %39) #36, !dbg !1083
  %41 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef zeroext false, i32 noundef %39, ptr noundef nonnull %34, ptr noundef null) #37, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %41, metadata !1029, metadata !DIExpression()), !dbg !1041
  tail call void @free(ptr noundef nonnull %34) #36, !dbg !1085
  %42 = icmp ult i32 %41, 512, !dbg !1086
  br i1 %42, label %43, label %45, !dbg !1088

43:                                               ; preds = %38
  %44 = load i32, ptr @optind, align 4, !dbg !1089, !tbaa !861
  br label %47, !dbg !1088

45:                                               ; preds = %38
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !1092
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #36, !dbg !1092
  unreachable, !dbg !1092

47:                                               ; preds = %43, %31
  %48 = phi i32 [ %27, %31 ], [ %44, %43 ], !dbg !1089
  %49 = phi i32 [ 438, %31 ], [ %41, %43 ], !dbg !1041
  call void @llvm.dbg.value(metadata i32 %49, metadata !1029, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 0, metadata !1040, metadata !DIExpression()), !dbg !1041
  %50 = icmp slt i32 %48, %0, !dbg !1093
  br i1 %50, label %51, label %82, !dbg !1094

51:                                               ; preds = %47, %77
  %52 = phi i32 [ %80, %77 ], [ %48, %47 ]
  %53 = phi i32 [ %78, %77 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !1040, metadata !DIExpression()), !dbg !1041
  %54 = sext i32 %52 to i64, !dbg !1095
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1095
  %56 = load ptr, ptr %55, align 8, !dbg !1095, !tbaa !794
  %57 = tail call i32 @mkfifo(ptr noundef %56, i32 noundef %49) #36, !dbg !1098
  %58 = icmp eq i32 %57, 0, !dbg !1099
  br i1 %58, label %59, label %67, !dbg !1100

59:                                               ; preds = %51
  br i1 %32, label %77, label %60, !dbg !1101

60:                                               ; preds = %59
  %61 = load i32, ptr @optind, align 4, !dbg !1103, !tbaa !861
  %62 = sext i32 %61 to i64, !dbg !1104
  %63 = getelementptr inbounds ptr, ptr %1, i64 %62, !dbg !1104
  %64 = load ptr, ptr %63, align 8, !dbg !1104, !tbaa !794
  %65 = tail call i32 @lchmod(ptr noundef %64, i32 noundef %49) #36, !dbg !1105
  %66 = icmp eq i32 %65, 0, !dbg !1106
  br i1 %66, label %77, label %67, !dbg !1107

67:                                               ; preds = %60, %51
  %68 = phi ptr [ @.str.20, %51 ], [ @.str.21, %60 ]
  %69 = tail call ptr @__errno_location() #39, !dbg !1108
  %70 = load i32, ptr %69, align 4, !dbg !1108, !tbaa !861
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %68, i32 noundef 5) #36, !dbg !1108
  %72 = load i32, ptr @optind, align 4, !dbg !1108, !tbaa !861
  %73 = sext i32 %72 to i64, !dbg !1108
  %74 = getelementptr inbounds ptr, ptr %1, i64 %73, !dbg !1108
  %75 = load ptr, ptr %74, align 8, !dbg !1108, !tbaa !794
  %76 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %75) #36, !dbg !1108
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %70, ptr noundef %71, ptr noundef %76) #36, !dbg !1108
  br label %77, !dbg !1109

77:                                               ; preds = %67, %60, %59
  %78 = phi i32 [ %53, %60 ], [ %53, %59 ], [ 1, %67 ], !dbg !1041
  call void @llvm.dbg.value(metadata i32 %78, metadata !1040, metadata !DIExpression()), !dbg !1041
  %79 = load i32, ptr @optind, align 4, !dbg !1109, !tbaa !861
  %80 = add nsw i32 %79, 1, !dbg !1109
  store i32 %80, ptr @optind, align 4, !dbg !1109, !tbaa !861
  %81 = icmp slt i32 %80, %0, !dbg !1093
  br i1 %81, label %51, label %82, !dbg !1094, !llvm.loop !1110

82:                                               ; preds = %77, %47
  %83 = phi i32 [ 0, %47 ], [ %78, %77 ], !dbg !1041
  ret i32 %83, !dbg !1112
}

; Function Attrs: nounwind
declare !dbg !1113 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1116 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1117 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1120 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1126 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1130 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1133 i32 @mkfifo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1136 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1137 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1141 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1143, metadata !DIExpression()), !dbg !1144
  store ptr %0, ptr @file_name, align 8, !dbg !1145, !tbaa !794
  ret void, !dbg !1146
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #12 !dbg !1147 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1151, metadata !DIExpression()), !dbg !1152
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1153, !tbaa !1154
  ret void, !dbg !1156
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1157 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1162, !tbaa !794
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1163
  %3 = icmp eq i32 %2, 0, !dbg !1164
  br i1 %3, label %22, label %4, !dbg !1165

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1166, !tbaa !1154, !range !1167, !noundef !803
  %6 = icmp eq i8 %5, 0, !dbg !1166
  br i1 %6, label %11, label %7, !dbg !1168

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1169
  %9 = load i32, ptr %8, align 4, !dbg !1169, !tbaa !861
  %10 = icmp eq i32 %9, 32, !dbg !1170
  br i1 %10, label %22, label %11, !dbg !1171

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1.28, i32 noundef 5) #36, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %12, metadata !1159, metadata !DIExpression()), !dbg !1173
  %13 = load ptr, ptr @file_name, align 8, !dbg !1174, !tbaa !794
  %14 = icmp eq ptr %13, null, !dbg !1174
  %15 = tail call ptr @__errno_location() #39, !dbg !1176
  %16 = load i32, ptr %15, align 4, !dbg !1176, !tbaa !861
  br i1 %14, label %19, label %17, !dbg !1177

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1178
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.29, ptr noundef %18, ptr noundef %12) #36, !dbg !1178
  br label %20, !dbg !1178

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.30, ptr noundef %12) #36, !dbg !1179
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1180, !tbaa !861
  tail call void @_exit(i32 noundef %21) #38, !dbg !1181
  unreachable, !dbg !1181

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1182, !tbaa !794
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1184
  %25 = icmp eq i32 %24, 0, !dbg !1185
  br i1 %25, label %28, label %26, !dbg !1186

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1187, !tbaa !861
  tail call void @_exit(i32 noundef %27) #38, !dbg !1188
  unreachable, !dbg !1188

28:                                               ; preds = %22
  ret void, !dbg !1189
}

; Function Attrs: noreturn
declare !dbg !1190 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !dbg !1192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1196, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i32 %1, metadata !1197, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr %2, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr %3, metadata !1199, metadata !DIExpression()), !dbg !1200
  tail call fastcc void @flush_stdout(), !dbg !1201
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1202, !tbaa !794
  %6 = icmp eq ptr %5, null, !dbg !1202
  br i1 %6, label %8, label %7, !dbg !1204

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1205
  br label %12, !dbg !1205

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1206, !tbaa !794
  %10 = tail call ptr @getprogname() #37, !dbg !1206
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef %10) #36, !dbg !1206
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1208
  ret void, !dbg !1209
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1210 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 1, metadata !1214, metadata !DIExpression()), !dbg !1219
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1222
  %2 = icmp slt i32 %1, 0, !dbg !1223
  br i1 %2, label %6, label %3, !dbg !1224

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1225, !tbaa !794
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1225
  br label %6, !dbg !1225

6:                                                ; preds = %3, %0
  ret void, !dbg !1226
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1227 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1229, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 %1, metadata !1230, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata ptr %2, metadata !1231, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata ptr %3, metadata !1232, metadata !DIExpression()), !dbg !1233
  %6 = load ptr, ptr @stderr, align 8, !dbg !1234, !tbaa !794
  call void @llvm.dbg.value(metadata ptr %6, metadata !1235, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata ptr %2, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata ptr %3, metadata !1276, metadata !DIExpression()), !dbg !1277
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1279
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1280, !tbaa !861
  %9 = add i32 %8, 1, !dbg !1280
  store i32 %9, ptr @error_message_count, align 4, !dbg !1280, !tbaa !861
  %10 = icmp eq i32 %1, 0, !dbg !1281
  br i1 %10, label %20, label %11, !dbg !1283

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1284, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1288, metadata !DIExpression()), !dbg !1295
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %12, metadata !1287, metadata !DIExpression()), !dbg !1292
  %13 = icmp eq ptr %12, null, !dbg !1297
  br i1 %13, label %14, label %16, !dbg !1299

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.32, ptr noundef nonnull @.str.5.33, i32 noundef 5) #36, !dbg !1300
  call void @llvm.dbg.value(metadata ptr %15, metadata !1287, metadata !DIExpression()), !dbg !1292
  br label %16, !dbg !1301

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1292
  call void @llvm.dbg.value(metadata ptr %17, metadata !1287, metadata !DIExpression()), !dbg !1292
  %18 = load ptr, ptr @stderr, align 8, !dbg !1302, !tbaa !794
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.34, ptr noundef %17) #36, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1303
  br label %20, !dbg !1304

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1305, !tbaa !794
  call void @llvm.dbg.value(metadata i32 10, metadata !1306, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %21, metadata !1312, metadata !DIExpression()), !dbg !1313
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1315
  %23 = load ptr, ptr %22, align 8, !dbg !1315, !tbaa !1316
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1315
  %25 = load ptr, ptr %24, align 8, !dbg !1315, !tbaa !1319
  %26 = icmp ult ptr %23, %25, !dbg !1315
  br i1 %26, label %29, label %27, !dbg !1315, !prof !1320

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1315
  br label %31, !dbg !1315

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1315
  store ptr %30, ptr %22, align 8, !dbg !1315, !tbaa !1316
  store i8 10, ptr %23, align 1, !dbg !1315, !tbaa !870
  br label %31, !dbg !1315

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1321, !tbaa !794
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1321
  %34 = icmp eq i32 %0, 0, !dbg !1322
  br i1 %34, label %36, label %35, !dbg !1324

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1325
  unreachable, !dbg !1325

36:                                               ; preds = %31
  ret void, !dbg !1326
}

declare !dbg !1327 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1330 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

declare !dbg !1333 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1336 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1339 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1343 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1347, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %1, metadata !1348, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata ptr %2, metadata !1349, metadata !DIExpression()), !dbg !1356
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1350, metadata !DIExpression()), !dbg !1358
  call void @llvm.va_start(ptr nonnull %4), !dbg !1359
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1360
  call void @llvm.va_end(ptr nonnull %4), !dbg !1361
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1362
  ret void, !dbg !1362
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !dbg !401 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !413, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i32 %1, metadata !414, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr %2, metadata !415, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i32 %3, metadata !416, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr %4, metadata !417, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr %5, metadata !418, metadata !DIExpression()), !dbg !1363
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1364, !tbaa !861
  %8 = icmp eq i32 %7, 0, !dbg !1364
  br i1 %8, label %23, label %9, !dbg !1366

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1367, !tbaa !861
  %11 = icmp eq i32 %10, %3, !dbg !1370
  br i1 %11, label %12, label %22, !dbg !1371

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1372, !tbaa !794
  %14 = icmp eq ptr %13, %2, !dbg !1373
  br i1 %14, label %36, label %15, !dbg !1374

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1375
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1376
  br i1 %18, label %19, label %22, !dbg !1376

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1377
  %21 = icmp eq i32 %20, 0, !dbg !1378
  br i1 %21, label %36, label %22, !dbg !1379

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1380, !tbaa !794
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1381, !tbaa !861
  br label %23, !dbg !1382

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1383
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1384, !tbaa !794
  %25 = icmp eq ptr %24, null, !dbg !1384
  br i1 %25, label %27, label %26, !dbg !1386

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1387
  br label %31, !dbg !1387

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1388, !tbaa !794
  %29 = tail call ptr @getprogname() #37, !dbg !1388
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.37, ptr noundef %29) #36, !dbg !1388
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1390, !tbaa !794
  %33 = icmp eq ptr %2, null, !dbg !1390
  %34 = select i1 %33, ptr @.str.3.38, ptr @.str.2.39, !dbg !1390
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1390
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1391
  br label %36, !dbg !1392

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1392
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1393 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1397, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i32 %1, metadata !1398, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata ptr %2, metadata !1399, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i32 %3, metadata !1400, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata ptr %4, metadata !1401, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1402, metadata !DIExpression()), !dbg !1405
  call void @llvm.va_start(ptr nonnull %6), !dbg !1406
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1407
  call void @llvm.va_end(ptr nonnull %6), !dbg !1408
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1409
  ret void, !dbg !1409
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1410 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1413, !tbaa !794
  ret ptr %1, !dbg !1414
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !1415 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1427, metadata !DIExpression()), !dbg !1457
  %2 = load i8, ptr %0, align 1, !dbg !1458, !tbaa !870
  %3 = and i8 %2, -8, !dbg !1459
  %4 = icmp eq i8 %3, 48, !dbg !1459
  br i1 %4, label %5, label %34, !dbg !1459

5:                                                ; preds = %1, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %1 ], !dbg !1460
  %7 = phi i32 [ %12, %14 ], [ 0, %1 ], !dbg !1462
  %8 = phi ptr [ %15, %14 ], [ %0, %1 ], !dbg !1462
  call void @llvm.dbg.value(metadata ptr %8, metadata !1428, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %7, metadata !1431, metadata !DIExpression()), !dbg !1462
  %9 = shl i32 %7, 3, !dbg !1463
  call void @llvm.dbg.value(metadata ptr %8, metadata !1428, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1462
  %10 = zext i8 %6 to i32, !dbg !1460
  %11 = add i32 %9, -48, !dbg !1464
  %12 = add i32 %11, %10, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %12, metadata !1431, metadata !DIExpression()), !dbg !1462
  %13 = icmp ugt i32 %12, 4095, !dbg !1466
  br i1 %13, label %142, label %14, !dbg !1468

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1469
  call void @llvm.dbg.value(metadata ptr %15, metadata !1428, metadata !DIExpression()), !dbg !1462
  %16 = load i8, ptr %15, align 1, !dbg !1470, !tbaa !870
  %17 = and i8 %16, -8, !dbg !1471
  %18 = icmp eq i8 %17, 48, !dbg !1471
  br i1 %18, label %5, label %19, !dbg !1471, !llvm.loop !1472

19:                                               ; preds = %14
  %20 = icmp eq i8 %16, 0, !dbg !1475
  br i1 %20, label %21, label %142, !dbg !1477

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %12, metadata !1432, metadata !DIExpression()), !dbg !1462
  %22 = ptrtoint ptr %15 to i64, !dbg !1478
  %23 = ptrtoint ptr %0 to i64, !dbg !1478
  %24 = sub i64 %22, %23, !dbg !1478
  %25 = icmp slt i64 %24, 5, !dbg !1479
  %26 = or i32 %12, 1023, !dbg !1480
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %27, metadata !1433, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %12, metadata !1481, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 %27, metadata !1486, metadata !DIExpression()), !dbg !1488
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #42, !dbg !1490
  call void @llvm.dbg.value(metadata ptr %28, metadata !1487, metadata !DIExpression()), !dbg !1488
  store i8 61, ptr %28, align 4, !dbg !1491, !tbaa !1492
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !1494
  store i8 1, ptr %29, align 1, !dbg !1495, !tbaa !1496
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !1497
  store i32 4095, ptr %30, align 4, !dbg !1498, !tbaa !1499
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !1500
  store i32 %12, ptr %31, align 4, !dbg !1501, !tbaa !1502
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !1503
  store i32 %27, ptr %32, align 4, !dbg !1504, !tbaa !1505
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !1506
  store i8 0, ptr %33, align 1, !dbg !1507, !tbaa !1496
  br label %142, !dbg !1508

34:                                               ; preds = %1, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %1 ], !dbg !1509
  %36 = phi i64 [ %43, %41 ], [ 1, %1 ], !dbg !1511
  %37 = phi ptr [ %44, %41 ], [ %0, %1 ], !dbg !1512
  call void @llvm.dbg.value(metadata ptr %37, metadata !1437, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i64 %36, metadata !1435, metadata !DIExpression()), !dbg !1511
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !1514

38:                                               ; preds = %34
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 16) #43, !dbg !1515
  call void @llvm.dbg.value(metadata ptr %39, metadata !1434, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 0, metadata !1439, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata ptr %0, metadata !1440, metadata !DIExpression()), !dbg !1457
  br label %46, !dbg !1516

40:                                               ; preds = %34
  br label %41, !dbg !1517

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %43, metadata !1435, metadata !DIExpression()), !dbg !1511
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1519
  call void @llvm.dbg.value(metadata ptr %44, metadata !1437, metadata !DIExpression()), !dbg !1513
  %45 = load i8, ptr %44, align 1, !dbg !1509, !tbaa !870
  br label %34, !dbg !1520, !llvm.loop !1521

46:                                               ; preds = %137, %38
  %47 = phi i64 [ 0, %38 ], [ %125, %137 ], !dbg !1523
  %48 = phi ptr [ %0, %38 ], [ %138, %137 ], !dbg !1524
  call void @llvm.dbg.value(metadata i32 poison, metadata !1447, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata ptr %48, metadata !1440, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %47, metadata !1439, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 0, metadata !1441, metadata !DIExpression()), !dbg !1526
  br label %49, !dbg !1527

49:                                               ; preds = %61, %46
  %50 = phi ptr [ %48, %46 ], [ %63, %61 ], !dbg !1528
  %51 = phi i32 [ 0, %46 ], [ %62, %61 ], !dbg !1526
  call void @llvm.dbg.value(metadata i32 %51, metadata !1441, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %50, metadata !1440, metadata !DIExpression()), !dbg !1457
  %52 = load i8, ptr %50, align 1, !dbg !1529, !tbaa !870
  %53 = sext i8 %52 to i32, !dbg !1529
  switch i32 %53, label %141 [
    i32 117, label %55
    i32 103, label %57
    i32 111, label %59
    i32 97, label %61
    i32 61, label %54
    i32 43, label %54
    i32 45, label %54
  ], !dbg !1532

54:                                               ; preds = %49, %49, %49
  br label %64, !dbg !1533

55:                                               ; preds = %49
  %56 = or i32 %51, 2496, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %56, metadata !1441, metadata !DIExpression()), !dbg !1526
  br label %61, !dbg !1536

57:                                               ; preds = %49
  %58 = or i32 %51, 1080, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %58, metadata !1441, metadata !DIExpression()), !dbg !1526
  br label %61, !dbg !1538

59:                                               ; preds = %49
  %60 = or i32 %51, 519, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %60, metadata !1441, metadata !DIExpression()), !dbg !1526
  br label %61, !dbg !1540

61:                                               ; preds = %49, %55, %57, %59
  %62 = phi i32 [ %60, %59 ], [ %58, %57 ], [ %56, %55 ], [ 4095, %49 ], !dbg !1541
  call void @llvm.dbg.value(metadata i32 %62, metadata !1441, metadata !DIExpression()), !dbg !1526
  %63 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1542
  call void @llvm.dbg.value(metadata ptr %63, metadata !1440, metadata !DIExpression()), !dbg !1457
  br label %49, !dbg !1543, !llvm.loop !1544

64:                                               ; preds = %136, %54
  %65 = phi i8 [ %52, %54 ], [ %135, %136 ], !dbg !1547
  %66 = phi i64 [ %47, %54 ], [ %125, %136 ], !dbg !1457
  %67 = phi ptr [ %50, %54 ], [ %118, %136 ], !dbg !1528
  %68 = phi i32 [ %51, %54 ], [ %124, %136 ], !dbg !1548
  call void @llvm.dbg.value(metadata i32 poison, metadata !1447, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %68, metadata !1441, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %67, metadata !1440, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %66, metadata !1439, metadata !DIExpression()), !dbg !1457
  %69 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %69, metadata !1440, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i8 %65, metadata !1445, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 0, metadata !1448, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 3, metadata !1449, metadata !DIExpression()), !dbg !1525
  %70 = load i8, ptr %69, align 1, !dbg !1550, !tbaa !870
  %71 = sext i8 %70 to i32, !dbg !1550
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
  ], !dbg !1533

72:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64
  br label %73, !dbg !1551

73:                                               ; preds = %72, %82
  %74 = phi i8 [ %84, %82 ], [ %70, %72 ], !dbg !1552
  %75 = phi ptr [ %83, %82 ], [ %69, %72 ], !dbg !1525
  %76 = phi i32 [ %80, %82 ], [ 0, %72 ], !dbg !1554
  call void @llvm.dbg.value(metadata i32 %76, metadata !1450, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata ptr %75, metadata !1440, metadata !DIExpression()), !dbg !1457
  %77 = shl i32 %76, 3, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %75, metadata !1440, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1457
  %78 = sext i8 %74 to i32, !dbg !1552
  %79 = add i32 %77, -48, !dbg !1556
  %80 = add i32 %79, %78, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %80, metadata !1450, metadata !DIExpression()), !dbg !1554
  %81 = icmp ugt i32 %80, 4095, !dbg !1558
  br i1 %81, label %141, label %82, !dbg !1560

82:                                               ; preds = %73
  %83 = getelementptr inbounds i8, ptr %75, i64 1, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %83, metadata !1440, metadata !DIExpression()), !dbg !1457
  %84 = load i8, ptr %83, align 1, !dbg !1562, !tbaa !870
  %85 = and i8 %84, -8, !dbg !1563
  %86 = icmp eq i8 %85, 48, !dbg !1563
  br i1 %86, label %73, label %87, !dbg !1563, !llvm.loop !1564

87:                                               ; preds = %82
  %88 = icmp eq i32 %68, 0, !dbg !1566
  br i1 %88, label %89, label %141, !dbg !1568

89:                                               ; preds = %87
  switch i8 %84, label %141 [
    i8 0, label %117
    i8 44, label %117
  ], !dbg !1569

90:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 448, metadata !1447, metadata !DIExpression()), !dbg !1525
  %91 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !1570
  call void @llvm.dbg.value(metadata ptr %91, metadata !1440, metadata !DIExpression()), !dbg !1457
  br label %117, !dbg !1571

92:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 56, metadata !1447, metadata !DIExpression()), !dbg !1525
  %93 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !1572
  call void @llvm.dbg.value(metadata ptr %93, metadata !1440, metadata !DIExpression()), !dbg !1457
  br label %117, !dbg !1573

94:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 7, metadata !1447, metadata !DIExpression()), !dbg !1525
  %95 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !1574
  call void @llvm.dbg.value(metadata ptr %95, metadata !1440, metadata !DIExpression()), !dbg !1457
  br label %117, !dbg !1575

96:                                               ; preds = %64, %112
  %97 = phi i8 [ %116, %112 ], [ %70, %64 ], !dbg !1576
  %98 = phi ptr [ %115, %112 ], [ %69, %64 ], !dbg !1525
  %99 = phi i32 [ %113, %112 ], [ 0, %64 ], !dbg !1579
  %100 = phi i8 [ %114, %112 ], [ 1, %64 ], !dbg !1580
  call void @llvm.dbg.value(metadata i8 %100, metadata !1449, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %99, metadata !1447, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata ptr %98, metadata !1440, metadata !DIExpression()), !dbg !1457
  %101 = sext i8 %97 to i32, !dbg !1576
  switch i32 %101, label %117 [
    i32 114, label %102
    i32 119, label %104
    i32 120, label %106
    i32 88, label %112
    i32 115, label %108
    i32 116, label %110
  ], !dbg !1581

102:                                              ; preds = %96
  %103 = or i32 %99, 292, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %103, metadata !1447, metadata !DIExpression()), !dbg !1525
  br label %112, !dbg !1584

104:                                              ; preds = %96
  %105 = or i32 %99, 146, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %105, metadata !1447, metadata !DIExpression()), !dbg !1525
  br label %112, !dbg !1586

106:                                              ; preds = %96
  %107 = or i32 %99, 73, !dbg !1587
  call void @llvm.dbg.value(metadata i32 %107, metadata !1447, metadata !DIExpression()), !dbg !1525
  br label %112, !dbg !1588

108:                                              ; preds = %96
  %109 = or i32 %99, 3072, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %109, metadata !1447, metadata !DIExpression()), !dbg !1525
  br label %112, !dbg !1590

110:                                              ; preds = %96
  %111 = or i32 %99, 512, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %111, metadata !1447, metadata !DIExpression()), !dbg !1525
  br label %112, !dbg !1592

112:                                              ; preds = %96, %102, %104, %106, %108, %110
  %113 = phi i32 [ %111, %110 ], [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %99, %96 ], !dbg !1579
  %114 = phi i8 [ %100, %110 ], [ %100, %108 ], [ %100, %106 ], [ %100, %104 ], [ %100, %102 ], [ 2, %96 ], !dbg !1579
  call void @llvm.dbg.value(metadata i8 %114, metadata !1449, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %113, metadata !1447, metadata !DIExpression()), !dbg !1525
  %115 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !1593
  call void @llvm.dbg.value(metadata ptr %115, metadata !1440, metadata !DIExpression()), !dbg !1457
  %116 = load i8, ptr %115, align 1, !dbg !1576, !tbaa !870
  br label %96, !dbg !1594, !llvm.loop !1595

117:                                              ; preds = %96, %89, %89, %94, %92, %90
  %118 = phi ptr [ %95, %94 ], [ %93, %92 ], [ %91, %90 ], [ %83, %89 ], [ %83, %89 ], [ %98, %96 ], !dbg !1525
  %119 = phi i32 [ %68, %94 ], [ %68, %92 ], [ %68, %90 ], [ 4095, %89 ], [ 4095, %89 ], [ %68, %96 ], !dbg !1548
  %120 = phi i32 [ 7, %94 ], [ 56, %92 ], [ 448, %90 ], [ %80, %89 ], [ %80, %89 ], [ %99, %96 ]
  %121 = phi i1 [ true, %94 ], [ true, %92 ], [ true, %90 ], [ false, %89 ], [ false, %89 ], [ true, %96 ], !dbg !1598
  %122 = phi i32 [ 0, %94 ], [ 0, %92 ], [ 0, %90 ], [ 4095, %89 ], [ 4095, %89 ], [ 0, %96 ], !dbg !1598
  %123 = phi i8 [ 3, %94 ], [ 3, %92 ], [ 3, %90 ], [ 1, %89 ], [ 1, %89 ], [ %100, %96 ], !dbg !1525
  %124 = freeze i32 %119, !dbg !1599
  call void @llvm.dbg.value(metadata i8 %123, metadata !1449, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %122, metadata !1448, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %120, metadata !1447, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %119, metadata !1441, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %118, metadata !1440, metadata !DIExpression()), !dbg !1457
  %125 = add i64 %66, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %125, metadata !1439, metadata !DIExpression()), !dbg !1457
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, !dbg !1601
  call void @llvm.dbg.value(metadata ptr %126, metadata !1453, metadata !DIExpression()), !dbg !1525
  store i8 %65, ptr %126, align 4, !dbg !1602, !tbaa !1492
  %127 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 1, !dbg !1603
  store i8 %123, ptr %127, align 1, !dbg !1604, !tbaa !1496
  %128 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 2, !dbg !1605
  store i32 %124, ptr %128, align 4, !dbg !1606, !tbaa !1499
  %129 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 3, !dbg !1607
  store i32 %120, ptr %129, align 4, !dbg !1608, !tbaa !1502
  %130 = icmp eq i32 %124, 0, !dbg !1599
  %131 = select i1 %130, i32 -1, i32 %124, !dbg !1599
  %132 = and i32 %131, %120, !dbg !1599
  %133 = select i1 %121, i32 %132, i32 %122, !dbg !1599
  %134 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 4, !dbg !1609
  store i32 %133, ptr %134, align 4, !dbg !1610, !tbaa !1505
  %135 = load i8, ptr %118, align 1, !dbg !1611, !tbaa !870
  switch i8 %135, label %141 [
    i8 61, label %136
    i8 43, label %136
    i8 45, label %136
    i8 44, label %137
    i8 0, label %139
  ], !dbg !1612

136:                                              ; preds = %117, %117, %117
  br label %64, !dbg !1525

137:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i32 poison, metadata !1447, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata ptr %118, metadata !1440, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %125, metadata !1439, metadata !DIExpression()), !dbg !1457
  %138 = getelementptr inbounds i8, ptr %118, i64 1, !dbg !1613
  call void @llvm.dbg.value(metadata ptr %138, metadata !1440, metadata !DIExpression()), !dbg !1457
  br label %46, !dbg !1614, !llvm.loop !1615

139:                                              ; preds = %117
  %140 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %125, i32 1, !dbg !1618
  store i8 0, ptr %140, align 1, !dbg !1621, !tbaa !1496
  br label %142, !dbg !1622

141:                                              ; preds = %49, %87, %89, %117, %73
  call void @llvm.dbg.label(metadata !1456), !dbg !1623
  tail call void @free(ptr noundef nonnull %39) #36, !dbg !1624
  br label %142, !dbg !1625

142:                                              ; preds = %5, %139, %141, %21, %19
  %143 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %141 ], [ %39, %139 ], [ null, %5 ]
  ret ptr %143, !dbg !1626
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !1627 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1629, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #36, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1630, metadata !DIExpression()), !dbg !1666
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #36, !dbg !1667
  %4 = icmp eq i32 %3, 0, !dbg !1669
  br i1 %4, label %5, label %14, !dbg !1670

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1671
  %7 = load i32, ptr %6, align 8, !dbg !1671, !tbaa !1672
  call void @llvm.dbg.value(metadata i32 %7, metadata !1481, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 4095, metadata !1486, metadata !DIExpression()), !dbg !1675
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #42, !dbg !1677
  call void @llvm.dbg.value(metadata ptr %8, metadata !1487, metadata !DIExpression()), !dbg !1675
  store i8 61, ptr %8, align 4, !dbg !1678, !tbaa !1492
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !1679
  store i8 1, ptr %9, align 1, !dbg !1680, !tbaa !1496
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !1681
  store i32 4095, ptr %10, align 4, !dbg !1682, !tbaa !1499
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !1683
  store i32 %7, ptr %11, align 4, !dbg !1684, !tbaa !1502
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !1685
  store i32 4095, ptr %12, align 4, !dbg !1686, !tbaa !1505
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !1687
  store i8 0, ptr %13, align 1, !dbg !1688, !tbaa !1496
  br label %14, !dbg !1689

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !1664
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #36, !dbg !1690
  ret ptr %15, !dbg !1690
}

; Function Attrs: nofree nounwind
declare !dbg !1691 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #18 !dbg !1696 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1703, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i1 %1, metadata !1704, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %2, metadata !1705, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata ptr %3, metadata !1706, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata ptr %4, metadata !1707, metadata !DIExpression()), !dbg !1719
  %6 = and i32 %0, 4095, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %6, metadata !1708, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 0, metadata !1709, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata ptr %3, metadata !1706, metadata !DIExpression()), !dbg !1719
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !1721
  %8 = load i8, ptr %7, align 1, !dbg !1721, !tbaa !1496
  %9 = icmp eq i8 %8, 0, !dbg !1722
  br i1 %9, label %80, label %10, !dbg !1723

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1723

14:                                               ; preds = %10, %73
  %15 = phi i8 [ %8, %10 ], [ %78, %73 ]
  %16 = phi ptr [ %3, %10 ], [ %76, %73 ]
  %17 = phi i32 [ %6, %10 ], [ %75, %73 ]
  %18 = phi i32 [ 0, %10 ], [ %74, %73 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !1706, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %17, metadata !1708, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %18, metadata !1709, metadata !DIExpression()), !dbg !1719
  %19 = sext i8 %15 to i32, !dbg !1724
  %20 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !1725
  %21 = load i32, ptr %20, align 4, !dbg !1725, !tbaa !1499
  call void @llvm.dbg.value(metadata i32 %21, metadata !1710, metadata !DIExpression()), !dbg !1726
  %22 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !1727
  %23 = load i32, ptr %22, align 4, !dbg !1727, !tbaa !1505
  %24 = xor i32 %23, -1, !dbg !1728
  %25 = and i32 %11, %24, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %25, metadata !1714, metadata !DIExpression()), !dbg !1726
  %26 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !1730
  %27 = load i32, ptr %26, align 4, !dbg !1730, !tbaa !1502
  call void @llvm.dbg.value(metadata i32 %27, metadata !1715, metadata !DIExpression()), !dbg !1726
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1731

28:                                               ; preds = %14
  %29 = and i32 %27, %17, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %29, metadata !1715, metadata !DIExpression()), !dbg !1726
  %30 = and i32 %29, 292, !dbg !1734
  %31 = icmp eq i32 %30, 0, !dbg !1735
  %32 = select i1 %31, i32 0, i32 292, !dbg !1735
  %33 = and i32 %29, 146, !dbg !1736
  %34 = icmp eq i32 %33, 0, !dbg !1737
  %35 = select i1 %34, i32 0, i32 146, !dbg !1737
  %36 = and i32 %29, 73, !dbg !1738
  %37 = icmp eq i32 %36, 0, !dbg !1739
  %38 = select i1 %37, i32 0, i32 73, !dbg !1739
  %39 = or i32 %35, %32, !dbg !1740
  %40 = or i32 %39, %38, !dbg !1741
  %41 = or i32 %40, %29, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %41, metadata !1715, metadata !DIExpression()), !dbg !1726
  br label %48, !dbg !1742

42:                                               ; preds = %14
  %43 = and i32 %17, 73, !dbg !1743
  %44 = or i32 %43, %12, !dbg !1745
  %45 = icmp eq i32 %44, 0, !dbg !1745
  %46 = or i32 %27, 73
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1746
  br label %48, !dbg !1746

48:                                               ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1726
  call void @llvm.dbg.value(metadata i32 %49, metadata !1715, metadata !DIExpression()), !dbg !1726
  %50 = icmp eq i32 %21, 0, !dbg !1747
  %51 = select i1 %50, i32 %13, i32 %21, !dbg !1747
  %52 = xor i32 %25, -1, !dbg !1748
  %53 = and i32 %51, %52, !dbg !1749
  %54 = and i32 %53, %49, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %54, metadata !1715, metadata !DIExpression()), !dbg !1726
  %55 = load i8, ptr %16, align 4, !dbg !1751, !tbaa !1492
  %56 = sext i8 %55 to i32, !dbg !1752
  switch i32 %56, label %73 [
    i32 61, label %57
    i32 43, label %66
    i32 45, label %69
  ], !dbg !1753

57:                                               ; preds = %48
  %58 = xor i32 %21, -1, !dbg !1754
  %59 = select i1 %50, i32 0, i32 %58, !dbg !1754
  %60 = or i32 %59, %25, !dbg !1755
  call void @llvm.dbg.value(metadata i32 %60, metadata !1716, metadata !DIExpression()), !dbg !1756
  %61 = and i32 %60, 4095, !dbg !1757
  %62 = xor i32 %61, 4095, !dbg !1757
  %63 = or i32 %62, %18, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %63, metadata !1709, metadata !DIExpression()), !dbg !1719
  %64 = and i32 %60, %17, !dbg !1759
  %65 = or i32 %54, %64, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %65, metadata !1708, metadata !DIExpression()), !dbg !1719
  br label %73

66:                                               ; preds = %48
  %67 = or i32 %54, %18, !dbg !1761
  call void @llvm.dbg.value(metadata i32 %67, metadata !1709, metadata !DIExpression()), !dbg !1719
  %68 = or i32 %54, %17, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %68, metadata !1708, metadata !DIExpression()), !dbg !1719
  br label %73, !dbg !1763

69:                                               ; preds = %48
  %70 = or i32 %54, %18, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %70, metadata !1709, metadata !DIExpression()), !dbg !1719
  %71 = xor i32 %54, -1, !dbg !1765
  %72 = and i32 %17, %71, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %72, metadata !1708, metadata !DIExpression()), !dbg !1719
  br label %73, !dbg !1767

73:                                               ; preds = %48, %69, %66, %57
  %74 = phi i32 [ %18, %48 ], [ %70, %69 ], [ %67, %66 ], [ %63, %57 ], !dbg !1719
  %75 = phi i32 [ %17, %48 ], [ %72, %69 ], [ %68, %66 ], [ %65, %57 ], !dbg !1719
  call void @llvm.dbg.value(metadata i32 %75, metadata !1708, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %74, metadata !1709, metadata !DIExpression()), !dbg !1719
  %76 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !1768
  call void @llvm.dbg.value(metadata ptr %76, metadata !1706, metadata !DIExpression()), !dbg !1719
  %77 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !1721
  %78 = load i8, ptr %77, align 1, !dbg !1721, !tbaa !1496
  %79 = icmp eq i8 %78, 0, !dbg !1722
  br i1 %79, label %80, label %14, !dbg !1723, !llvm.loop !1769

80:                                               ; preds = %73, %5
  %81 = phi i32 [ 0, %5 ], [ %74, %73 ], !dbg !1771
  %82 = phi i32 [ %6, %5 ], [ %75, %73 ], !dbg !1772
  %83 = icmp eq ptr %4, null, !dbg !1773
  br i1 %83, label %85, label %84, !dbg !1775

84:                                               ; preds = %80
  store i32 %81, ptr %4, align 4, !dbg !1776, !tbaa !861
  br label %85, !dbg !1777

85:                                               ; preds = %84, %80
  ret i32 %82, !dbg !1778
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1779 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1781, metadata !DIExpression()), !dbg !1784
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1785
  call void @llvm.dbg.value(metadata ptr %2, metadata !1782, metadata !DIExpression()), !dbg !1784
  %3 = icmp eq ptr %2, null, !dbg !1786
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1786
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1786
  call void @llvm.dbg.value(metadata ptr %5, metadata !1783, metadata !DIExpression()), !dbg !1784
  %6 = ptrtoint ptr %5 to i64, !dbg !1787
  %7 = ptrtoint ptr %0 to i64, !dbg !1787
  %8 = sub i64 %6, %7, !dbg !1787
  %9 = icmp sgt i64 %8, 6, !dbg !1789
  br i1 %9, label %10, label %19, !dbg !1790

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %11, metadata !1792, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1797, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 7, metadata !1798, metadata !DIExpression()), !dbg !1799
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1801
  %13 = icmp eq i32 %12, 0, !dbg !1802
  br i1 %13, label %14, label %19, !dbg !1803

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1781, metadata !DIExpression()), !dbg !1784
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #37, !dbg !1804
  %16 = icmp eq i32 %15, 0, !dbg !1807
  %17 = select i1 %16, i64 3, i64 0, !dbg !1808
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1808
  br label %19, !dbg !1808

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1784
  call void @llvm.dbg.value(metadata ptr %21, metadata !1783, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata ptr %20, metadata !1781, metadata !DIExpression()), !dbg !1784
  store ptr %20, ptr @program_name, align 8, !dbg !1809, !tbaa !794
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1810, !tbaa !794
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1811, !tbaa !794
  ret void, !dbg !1812
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1813 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !455 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !462, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata ptr %1, metadata !463, metadata !DIExpression()), !dbg !1814
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1815
  call void @llvm.dbg.value(metadata ptr %5, metadata !464, metadata !DIExpression()), !dbg !1814
  %6 = icmp eq ptr %5, %0, !dbg !1816
  br i1 %6, label %7, label %14, !dbg !1818

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1819
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1820
  call void @llvm.dbg.declare(metadata ptr %4, metadata !470, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %4, metadata !1822, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata ptr %4, metadata !1831, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 0, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 8, metadata !1838, metadata !DIExpression()), !dbg !1839
  store i64 0, ptr %4, align 8, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %3, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !1814
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1842
  %9 = icmp eq i64 %8, 2, !dbg !1844
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !465, metadata !DIExpression()), !dbg !1814
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1845
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1814
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1846
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1846
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1814
  ret ptr %15, !dbg !1846
}

; Function Attrs: nounwind
declare !dbg !1847 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1853 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1858, metadata !DIExpression()), !dbg !1861
  %2 = tail call ptr @__errno_location() #39, !dbg !1862
  %3 = load i32, ptr %2, align 4, !dbg !1862, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %3, metadata !1859, metadata !DIExpression()), !dbg !1861
  %4 = icmp eq ptr %0, null, !dbg !1863
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1863
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %6, metadata !1860, metadata !DIExpression()), !dbg !1861
  store i32 %3, ptr %2, align 4, !dbg !1865, !tbaa !861
  ret ptr %6, !dbg !1866
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #18 !dbg !1867 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1873, metadata !DIExpression()), !dbg !1874
  %2 = icmp eq ptr %0, null, !dbg !1875
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1875
  %4 = load i32, ptr %3, align 8, !dbg !1876, !tbaa !1877
  ret i32 %4, !dbg !1879
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1880 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i32 %1, metadata !1885, metadata !DIExpression()), !dbg !1886
  %3 = icmp eq ptr %0, null, !dbg !1887
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1887
  store i32 %1, ptr %4, align 8, !dbg !1888, !tbaa !1877
  ret void, !dbg !1889
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1890 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1894, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %1, metadata !1895, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %2, metadata !1896, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %1, metadata !1897, metadata !DIExpression()), !dbg !1902
  %4 = icmp eq ptr %0, null, !dbg !1903
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1903
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1904
  %7 = lshr i8 %1, 5, !dbg !1905
  %8 = zext i8 %7 to i64, !dbg !1905
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %9, metadata !1898, metadata !DIExpression()), !dbg !1902
  %10 = and i8 %1, 31, !dbg !1907
  %11 = zext i8 %10 to i32, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %11, metadata !1900, metadata !DIExpression()), !dbg !1902
  %12 = load i32, ptr %9, align 4, !dbg !1908, !tbaa !861
  %13 = lshr i32 %12, %11, !dbg !1909
  %14 = and i32 %13, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %14, metadata !1901, metadata !DIExpression()), !dbg !1902
  %15 = xor i32 %13, %2, !dbg !1911
  %16 = and i32 %15, 1, !dbg !1911
  %17 = shl nuw i32 %16, %11, !dbg !1912
  %18 = xor i32 %17, %12, !dbg !1913
  store i32 %18, ptr %9, align 4, !dbg !1913, !tbaa !861
  ret i32 %14, !dbg !1914
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1915 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 %1, metadata !1920, metadata !DIExpression()), !dbg !1922
  %3 = icmp eq ptr %0, null, !dbg !1923
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1925
  call void @llvm.dbg.value(metadata ptr %4, metadata !1919, metadata !DIExpression()), !dbg !1922
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1926
  %6 = load i32, ptr %5, align 4, !dbg !1926, !tbaa !1927
  call void @llvm.dbg.value(metadata i32 %6, metadata !1921, metadata !DIExpression()), !dbg !1922
  store i32 %1, ptr %5, align 4, !dbg !1928, !tbaa !1927
  ret i32 %6, !dbg !1929
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1930 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata ptr %1, metadata !1935, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata ptr %2, metadata !1936, metadata !DIExpression()), !dbg !1937
  %4 = icmp eq ptr %0, null, !dbg !1938
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1940
  call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !1937
  store i32 10, ptr %5, align 8, !dbg !1941, !tbaa !1877
  %6 = icmp ne ptr %1, null, !dbg !1942
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1944
  br i1 %8, label %10, label %9, !dbg !1944

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1945
  unreachable, !dbg !1945

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1946
  store ptr %1, ptr %11, align 8, !dbg !1947, !tbaa !1948
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1949
  store ptr %2, ptr %12, align 8, !dbg !1950, !tbaa !1951
  ret void, !dbg !1952
}

; Function Attrs: noreturn nounwind
declare !dbg !1953 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1954 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1958, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %1, metadata !1959, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %2, metadata !1960, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %3, metadata !1961, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %4, metadata !1962, metadata !DIExpression()), !dbg !1966
  %6 = icmp eq ptr %4, null, !dbg !1967
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1967
  call void @llvm.dbg.value(metadata ptr %7, metadata !1963, metadata !DIExpression()), !dbg !1966
  %8 = tail call ptr @__errno_location() #39, !dbg !1968
  %9 = load i32, ptr %8, align 4, !dbg !1968, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %9, metadata !1964, metadata !DIExpression()), !dbg !1966
  %10 = load i32, ptr %7, align 8, !dbg !1969, !tbaa !1877
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1970
  %12 = load i32, ptr %11, align 4, !dbg !1970, !tbaa !1927
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1971
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1972
  %15 = load ptr, ptr %14, align 8, !dbg !1972, !tbaa !1948
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1973
  %17 = load ptr, ptr %16, align 8, !dbg !1973, !tbaa !1951
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %18, metadata !1965, metadata !DIExpression()), !dbg !1966
  store i32 %9, ptr %8, align 4, !dbg !1975, !tbaa !861
  ret i64 %18, !dbg !1976
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1977 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1983, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %1, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %2, metadata !1985, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %3, metadata !1986, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %4, metadata !1987, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %5, metadata !1988, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %6, metadata !1989, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %7, metadata !1990, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %8, metadata !1991, metadata !DIExpression()), !dbg !2045
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !2046
  %17 = icmp eq i64 %16, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i1 %17, metadata !1992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, metadata !1994, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr null, metadata !1995, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, metadata !1996, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2045
  %18 = trunc i32 %5 to i8, !dbg !2048
  %19 = lshr i8 %18, 1, !dbg !2048
  %20 = and i8 %19, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i8 %20, metadata !1998, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 1, metadata !2000, metadata !DIExpression()), !dbg !2045
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2049

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2050
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2051
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2052
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2053
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2045
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2054
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2055
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %39, metadata !2000, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %38, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %37, metadata !1998, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %36, metadata !1997, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %35, metadata !1996, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %34, metadata !1995, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %33, metadata !1994, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %32, metadata !1986, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %31, metadata !1991, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %30, metadata !1990, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %29, metadata !1987, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.label(metadata !2038), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2045
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
  ], !dbg !2057

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1998, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 5, metadata !1987, metadata !DIExpression()), !dbg !2045
  br label %115, !dbg !2058

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1998, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 5, metadata !1987, metadata !DIExpression()), !dbg !2045
  %43 = and i8 %37, 1, !dbg !2059
  %44 = icmp eq i8 %43, 0, !dbg !2059
  br i1 %44, label %45, label %115, !dbg !2058

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2061
  br i1 %46, label %115, label %47, !dbg !2064

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2061, !tbaa !870
  br label %115, !dbg !2061

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.72, metadata !551, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %29, metadata !552, metadata !DIExpression()), !dbg !2065
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.11.72, i32 noundef 5) #36, !dbg !2069
  call void @llvm.dbg.value(metadata ptr %49, metadata !553, metadata !DIExpression()), !dbg !2065
  %50 = icmp eq ptr %49, @.str.11.72, !dbg !2070
  br i1 %50, label %51, label %60, !dbg !2072

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !2073
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !2074
  call void @llvm.dbg.declare(metadata ptr %13, metadata !555, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata ptr %13, metadata !2076, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %13, metadata !2084, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i64 8, metadata !2088, metadata !DIExpression()), !dbg !2089
  store i64 0, ptr %13, align 8, !dbg !2091
  call void @llvm.dbg.value(metadata ptr %12, metadata !554, metadata !DIExpression(DW_OP_deref)), !dbg !2065
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !2092
  %53 = icmp eq i64 %52, 3, !dbg !2094
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !554, metadata !DIExpression()), !dbg !2065
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2095
  %57 = icmp eq i32 %29, 9, !dbg !2095
  %58 = select i1 %57, ptr @.str.10.74, ptr @.str.12.75, !dbg !2095
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2095
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !2096
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !2096
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2065
  call void @llvm.dbg.value(metadata ptr %61, metadata !1990, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr @.str.12.75, metadata !551, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i32 %29, metadata !552, metadata !DIExpression()), !dbg !2097
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.12.75, i32 noundef 5) #36, !dbg !2099
  call void @llvm.dbg.value(metadata ptr %62, metadata !553, metadata !DIExpression()), !dbg !2097
  %63 = icmp eq ptr %62, @.str.12.75, !dbg !2100
  br i1 %63, label %64, label %73, !dbg !2101

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !2103
  call void @llvm.dbg.declare(metadata ptr %11, metadata !555, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %11, metadata !2076, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata ptr %11, metadata !2084, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 8, metadata !2088, metadata !DIExpression()), !dbg !2107
  store i64 0, ptr %11, align 8, !dbg !2109
  call void @llvm.dbg.value(metadata ptr %10, metadata !554, metadata !DIExpression(DW_OP_deref)), !dbg !2097
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !2110
  %66 = icmp eq i64 %65, 3, !dbg !2111
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !554, metadata !DIExpression()), !dbg !2097
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2112
  %70 = icmp eq i32 %29, 9, !dbg !2112
  %71 = select i1 %70, ptr @.str.10.74, ptr @.str.12.75, !dbg !2112
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !2113
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1991, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %74, metadata !1990, metadata !DIExpression()), !dbg !2045
  %76 = and i8 %37, 1, !dbg !2114
  %77 = icmp eq i8 %76, 0, !dbg !2114
  br i1 %77, label %78, label %93, !dbg !2115

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2002, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i64 0, metadata !1993, metadata !DIExpression()), !dbg !2045
  %79 = load i8, ptr %74, align 1, !dbg !2117, !tbaa !870
  %80 = icmp eq i8 %79, 0, !dbg !2119
  br i1 %80, label %93, label %81, !dbg !2119

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2002, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %84, metadata !1993, metadata !DIExpression()), !dbg !2045
  %85 = icmp ult i64 %84, %40, !dbg !2120
  br i1 %85, label %86, label %88, !dbg !2123

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2120
  store i8 %82, ptr %87, align 1, !dbg !2120, !tbaa !870
  br label %88, !dbg !2120

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %89, metadata !1993, metadata !DIExpression()), !dbg !2045
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2124
  call void @llvm.dbg.value(metadata ptr %90, metadata !2002, metadata !DIExpression()), !dbg !2116
  %91 = load i8, ptr %90, align 1, !dbg !2117, !tbaa !870
  %92 = icmp eq i8 %91, 0, !dbg !2119
  br i1 %92, label %93, label %81, !dbg !2119, !llvm.loop !2125

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2127
  call void @llvm.dbg.value(metadata i64 %94, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 1, metadata !1997, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %75, metadata !1995, metadata !DIExpression()), !dbg !2045
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %95, metadata !1996, metadata !DIExpression()), !dbg !2045
  br label %115, !dbg !2129

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1997, metadata !DIExpression()), !dbg !2045
  br label %97, !dbg !2130

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2045
  call void @llvm.dbg.value(metadata i8 %98, metadata !1997, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 1, metadata !1998, metadata !DIExpression()), !dbg !2045
  br label %99, !dbg !2131

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2053
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2045
  call void @llvm.dbg.value(metadata i8 %101, metadata !1998, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %100, metadata !1997, metadata !DIExpression()), !dbg !2045
  %102 = and i8 %101, 1, !dbg !2132
  %103 = icmp eq i8 %102, 0, !dbg !2132
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2134
  br label %105, !dbg !2134

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2045
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2048
  call void @llvm.dbg.value(metadata i8 %107, metadata !1998, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %106, metadata !1997, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 2, metadata !1987, metadata !DIExpression()), !dbg !2045
  %108 = and i8 %107, 1, !dbg !2135
  %109 = icmp eq i8 %108, 0, !dbg !2135
  br i1 %109, label %110, label %115, !dbg !2137

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2138
  br i1 %111, label %115, label %112, !dbg !2141

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2138, !tbaa !870
  br label %115, !dbg !2138

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2045
  br label %115, !dbg !2142

114:                                              ; preds = %28
  call void @abort() #38, !dbg !2143
  unreachable, !dbg !2143

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2127
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.74, %45 ], [ @.str.10.74, %47 ], [ @.str.10.74, %42 ], [ %34, %28 ], [ @.str.12.75, %110 ], [ @.str.12.75, %112 ], [ @.str.12.75, %105 ], [ @.str.10.74, %41 ], !dbg !2045
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2045
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2045
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2045
  call void @llvm.dbg.value(metadata i8 %123, metadata !1998, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %122, metadata !1997, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %121, metadata !1996, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %120, metadata !1995, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %119, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %118, metadata !1991, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %117, metadata !1990, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %116, metadata !1987, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, metadata !2007, metadata !DIExpression()), !dbg !2144
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
  br label %138, !dbg !2145

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2127
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2050
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2054
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2055
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2146
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2147
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %145, metadata !2007, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %144, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %143, metadata !2000, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %142, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %141, metadata !1994, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %140, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %139, metadata !1986, metadata !DIExpression()), !dbg !2045
  %147 = icmp eq i64 %139, -1, !dbg !2148
  br i1 %147, label %148, label %152, !dbg !2149

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2150
  %150 = load i8, ptr %149, align 1, !dbg !2150, !tbaa !870
  %151 = icmp eq i8 %150, 0, !dbg !2151
  br i1 %151, label %627, label %154, !dbg !2152

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2153
  br i1 %153, label %627, label %154, !dbg !2152

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2009, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2012, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2154
  br i1 %129, label %155, label %170, !dbg !2155

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2157
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2158
  br i1 %157, label %158, label %160, !dbg !2158

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %159, metadata !1986, metadata !DIExpression()), !dbg !2045
  br label %160, !dbg !2160

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2160
  call void @llvm.dbg.value(metadata i64 %161, metadata !1986, metadata !DIExpression()), !dbg !2045
  %162 = icmp ugt i64 %156, %161, !dbg !2161
  br i1 %162, label %170, label %163, !dbg !2162

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2163
  call void @llvm.dbg.value(metadata ptr %164, metadata !2164, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata ptr %120, metadata !2167, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %121, metadata !2168, metadata !DIExpression()), !dbg !2169
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2171
  %166 = icmp ne i32 %165, 0, !dbg !2172
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2173
  %168 = xor i1 %166, true, !dbg !2173
  %169 = zext i1 %168 to i8, !dbg !2173
  br i1 %167, label %170, label %688, !dbg !2173

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2154
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2154
  call void @llvm.dbg.value(metadata i8 %173, metadata !2009, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %171, metadata !1986, metadata !DIExpression()), !dbg !2045
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2174
  %175 = load i8, ptr %174, align 1, !dbg !2174, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %175, metadata !2014, metadata !DIExpression()), !dbg !2154
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
  ], !dbg !2175

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2176

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2177

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2012, metadata !DIExpression()), !dbg !2154
  %179 = and i8 %144, 1, !dbg !2181
  %180 = icmp eq i8 %179, 0, !dbg !2181
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2181
  br i1 %181, label %182, label %198, !dbg !2181

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2183
  br i1 %183, label %184, label %186, !dbg !2187

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2183
  store i8 39, ptr %185, align 1, !dbg !2183, !tbaa !870
  br label %186, !dbg !2183

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %187, metadata !1993, metadata !DIExpression()), !dbg !2045
  %188 = icmp ult i64 %187, %146, !dbg !2188
  br i1 %188, label %189, label %191, !dbg !2191

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2188
  store i8 36, ptr %190, align 1, !dbg !2188, !tbaa !870
  br label %191, !dbg !2188

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %192, metadata !1993, metadata !DIExpression()), !dbg !2045
  %193 = icmp ult i64 %192, %146, !dbg !2192
  br i1 %193, label %194, label %196, !dbg !2195

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2192
  store i8 39, ptr %195, align 1, !dbg !2192, !tbaa !870
  br label %196, !dbg !2192

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %197, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 1, metadata !2001, metadata !DIExpression()), !dbg !2045
  br label %198, !dbg !2196

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2045
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2045
  call void @llvm.dbg.value(metadata i8 %200, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %199, metadata !1993, metadata !DIExpression()), !dbg !2045
  %201 = icmp ult i64 %199, %146, !dbg !2197
  br i1 %201, label %202, label %204, !dbg !2200

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2197
  store i8 92, ptr %203, align 1, !dbg !2197, !tbaa !870
  br label %204, !dbg !2197

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %205, metadata !1993, metadata !DIExpression()), !dbg !2045
  br i1 %126, label %206, label %491, !dbg !2201

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2203
  %208 = icmp ult i64 %207, %171, !dbg !2204
  br i1 %208, label %209, label %480, !dbg !2205

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2206
  %211 = load i8, ptr %210, align 1, !dbg !2206, !tbaa !870
  %212 = add i8 %211, -48, !dbg !2207
  %213 = icmp ult i8 %212, 10, !dbg !2207
  br i1 %213, label %214, label %480, !dbg !2207

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2208
  br i1 %215, label %216, label %218, !dbg !2212

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2208
  store i8 48, ptr %217, align 1, !dbg !2208, !tbaa !870
  br label %218, !dbg !2208

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %219, metadata !1993, metadata !DIExpression()), !dbg !2045
  %220 = icmp ult i64 %219, %146, !dbg !2213
  br i1 %220, label %221, label %223, !dbg !2216

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2213
  store i8 48, ptr %222, align 1, !dbg !2213, !tbaa !870
  br label %223, !dbg !2213

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %224, metadata !1993, metadata !DIExpression()), !dbg !2045
  br label %480, !dbg !2217

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2218

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2219

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2220

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2222

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2224
  %231 = icmp ult i64 %230, %171, !dbg !2225
  br i1 %231, label %232, label %480, !dbg !2226

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2227
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2228
  %235 = load i8, ptr %234, align 1, !dbg !2228, !tbaa !870
  %236 = icmp eq i8 %235, 63, !dbg !2229
  br i1 %236, label %237, label %480, !dbg !2230

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2231
  %239 = load i8, ptr %238, align 1, !dbg !2231, !tbaa !870
  %240 = sext i8 %239 to i32, !dbg !2231
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
  ], !dbg !2232

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2233

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2014, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %230, metadata !2007, metadata !DIExpression()), !dbg !2144
  %243 = icmp ult i64 %140, %146, !dbg !2235
  br i1 %243, label %244, label %246, !dbg !2238

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2235
  store i8 63, ptr %245, align 1, !dbg !2235, !tbaa !870
  br label %246, !dbg !2235

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %247, metadata !1993, metadata !DIExpression()), !dbg !2045
  %248 = icmp ult i64 %247, %146, !dbg !2239
  br i1 %248, label %249, label %251, !dbg !2242

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2239
  store i8 34, ptr %250, align 1, !dbg !2239, !tbaa !870
  br label %251, !dbg !2239

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %252, metadata !1993, metadata !DIExpression()), !dbg !2045
  %253 = icmp ult i64 %252, %146, !dbg !2243
  br i1 %253, label %254, label %256, !dbg !2246

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2243
  store i8 34, ptr %255, align 1, !dbg !2243, !tbaa !870
  br label %256, !dbg !2243

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %257, metadata !1993, metadata !DIExpression()), !dbg !2045
  %258 = icmp ult i64 %257, %146, !dbg !2247
  br i1 %258, label %259, label %261, !dbg !2250

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2247
  store i8 63, ptr %260, align 1, !dbg !2247, !tbaa !870
  br label %261, !dbg !2247

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %262, metadata !1993, metadata !DIExpression()), !dbg !2045
  br label %480, !dbg !2251

263:                                              ; preds = %170
  br label %274, !dbg !2252

264:                                              ; preds = %170
  br label %274, !dbg !2253

265:                                              ; preds = %170
  br label %272, !dbg !2254

266:                                              ; preds = %170
  br label %272, !dbg !2255

267:                                              ; preds = %170
  br label %274, !dbg !2256

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2257

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2258

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2261

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2263

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2264
  call void @llvm.dbg.label(metadata !2039), !dbg !2265
  br i1 %134, label %274, label %670, !dbg !2266

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2264
  call void @llvm.dbg.label(metadata !2041), !dbg !2268
  br i1 %125, label %535, label %491, !dbg !2269

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2270

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2271, !tbaa !870
  %279 = icmp eq i8 %278, 0, !dbg !2273
  br i1 %279, label %280, label %480, !dbg !2274

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2275
  br i1 %281, label %282, label %480, !dbg !2277

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2154
  br label %283, !dbg !2278

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2154
  call void @llvm.dbg.value(metadata i8 %284, metadata !2013, metadata !DIExpression()), !dbg !2154
  br i1 %134, label %480, label %670, !dbg !2279

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2154
  br i1 %133, label %286, label %480, !dbg !2281

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2282

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2285
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2287
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2287
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %292, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %291, metadata !1994, metadata !DIExpression()), !dbg !2045
  %293 = icmp ult i64 %140, %292, !dbg !2288
  br i1 %293, label %294, label %296, !dbg !2291

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2288
  store i8 39, ptr %295, align 1, !dbg !2288, !tbaa !870
  br label %296, !dbg !2288

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %297, metadata !1993, metadata !DIExpression()), !dbg !2045
  %298 = icmp ult i64 %297, %292, !dbg !2292
  br i1 %298, label %299, label %301, !dbg !2295

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2292
  store i8 92, ptr %300, align 1, !dbg !2292, !tbaa !870
  br label %301, !dbg !2292

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %302, metadata !1993, metadata !DIExpression()), !dbg !2045
  %303 = icmp ult i64 %302, %292, !dbg !2296
  br i1 %303, label %304, label %306, !dbg !2299

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2296
  store i8 39, ptr %305, align 1, !dbg !2296, !tbaa !870
  br label %306, !dbg !2296

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %307, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2045
  br label %480, !dbg !2300

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2301

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2015, metadata !DIExpression()), !dbg !2302
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !2303
  %311 = load ptr, ptr %310, align 8, !dbg !2303, !tbaa !794
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2303
  %314 = load i16, ptr %313, align 2, !dbg !2303, !tbaa !902
  %315 = lshr i16 %314, 14, !dbg !2305
  %316 = trunc i16 %315 to i8, !dbg !2305
  %317 = and i8 %316, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i8 %317, metadata !2018, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %171, metadata !1986, metadata !DIExpression()), !dbg !2045
  %318 = icmp eq i8 %317, 0, !dbg !2306
  call void @llvm.dbg.value(metadata i1 %318, metadata !2013, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2154
  br label %368, !dbg !2307

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2308
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2019, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata ptr %14, metadata !2076, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata ptr %14, metadata !2084, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 8, metadata !2088, metadata !DIExpression()), !dbg !2312
  store i64 0, ptr %14, align 8, !dbg !2314
  call void @llvm.dbg.value(metadata i64 0, metadata !2015, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 1, metadata !2018, metadata !DIExpression()), !dbg !2302
  %320 = icmp eq i64 %171, -1, !dbg !2315
  br i1 %320, label %321, label %323, !dbg !2317

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %322, metadata !1986, metadata !DIExpression()), !dbg !2045
  br label %323, !dbg !2319

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2154
  call void @llvm.dbg.value(metadata i64 %324, metadata !1986, metadata !DIExpression()), !dbg !2045
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2320
  %325 = sub i64 %324, %145, !dbg !2321
  call void @llvm.dbg.value(metadata ptr %15, metadata !2022, metadata !DIExpression(DW_OP_deref)), !dbg !2322
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %326, metadata !2026, metadata !DIExpression()), !dbg !2322
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2324

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2015, metadata !DIExpression()), !dbg !2302
  %328 = icmp ugt i64 %324, %145, !dbg !2325
  br i1 %328, label %331, label %329, !dbg !2327

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2018, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 0, metadata !2015, metadata !DIExpression()), !dbg !2302
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %324, metadata !1986, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i1 true, metadata !2013, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2154
  br label %368, !dbg !2307

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2018, metadata !DIExpression()), !dbg !2302
  br label %360, !dbg !2330

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2015, metadata !DIExpression()), !dbg !2302
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2332
  %335 = load i8, ptr %334, align 1, !dbg !2332, !tbaa !870
  %336 = icmp eq i8 %335, 0, !dbg !2327
  br i1 %336, label %363, label %337, !dbg !2333

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %338, metadata !2015, metadata !DIExpression()), !dbg !2302
  %339 = add i64 %338, %145, !dbg !2335
  %340 = icmp eq i64 %338, %325, !dbg !2325
  br i1 %340, label %363, label %331, !dbg !2327, !llvm.loop !2336

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2337
  %344 = and i1 %343, %133, !dbg !2337
  call void @llvm.dbg.value(metadata i64 1, metadata !2027, metadata !DIExpression()), !dbg !2338
  br i1 %344, label %345, label %354, !dbg !2337

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2027, metadata !DIExpression()), !dbg !2338
  %347 = add i64 %346, %145, !dbg !2339
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2341
  %349 = load i8, ptr %348, align 1, !dbg !2341, !tbaa !870
  %350 = sext i8 %349 to i32, !dbg !2341
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2342

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %352, metadata !2027, metadata !DIExpression()), !dbg !2338
  %353 = icmp eq i64 %352, %326, !dbg !2344
  br i1 %353, label %354, label %345, !dbg !2345, !llvm.loop !2346

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2348, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %355, metadata !2022, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %355, metadata !2350, metadata !DIExpression()), !dbg !2358
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !2360
  %357 = icmp ne i32 %356, 0, !dbg !2361
  %358 = zext i1 %357 to i8, !dbg !2362
  call void @llvm.dbg.value(metadata i8 %358, metadata !2018, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %326, metadata !2015, metadata !DIExpression()), !dbg !2302
  br label %363, !dbg !2363

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2018, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 0, metadata !2015, metadata !DIExpression()), !dbg !2302
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2329
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2018, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 0, metadata !2015, metadata !DIExpression()), !dbg !2302
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %324, metadata !1986, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i1 %361, metadata !2013, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2154
  br label %368, !dbg !2307

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2018, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %364, metadata !2015, metadata !DIExpression()), !dbg !2302
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %324, metadata !1986, metadata !DIExpression()), !dbg !2045
  %366 = icmp eq i8 %365, 0, !dbg !2306
  call void @llvm.dbg.value(metadata i1 %366, metadata !2013, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2154
  %367 = icmp ugt i64 %364, 1, !dbg !2364
  br i1 %367, label %374, label %368, !dbg !2307

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2365
  br i1 %373, label %374, label %480, !dbg !2365

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %379, metadata !2035, metadata !DIExpression()), !dbg !2367
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2368

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2045
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2146
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2144
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2154
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2369
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2154
  call void @llvm.dbg.value(metadata i8 %387, metadata !2014, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %386, metadata !2012, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %385, metadata !2009, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %384, metadata !2007, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %383, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %382, metadata !1993, metadata !DIExpression()), !dbg !2045
  br i1 %380, label %388, label %434, !dbg !2370

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2375

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2012, metadata !DIExpression()), !dbg !2154
  %390 = and i8 %383, 1, !dbg !2378
  %391 = icmp eq i8 %390, 0, !dbg !2378
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2378
  br i1 %392, label %393, label %409, !dbg !2378

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2380
  br i1 %394, label %395, label %397, !dbg !2384

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2380
  store i8 39, ptr %396, align 1, !dbg !2380, !tbaa !870
  br label %397, !dbg !2380

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %398, metadata !1993, metadata !DIExpression()), !dbg !2045
  %399 = icmp ult i64 %398, %146, !dbg !2385
  br i1 %399, label %400, label %402, !dbg !2388

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2385
  store i8 36, ptr %401, align 1, !dbg !2385, !tbaa !870
  br label %402, !dbg !2385

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %403, metadata !1993, metadata !DIExpression()), !dbg !2045
  %404 = icmp ult i64 %403, %146, !dbg !2389
  br i1 %404, label %405, label %407, !dbg !2392

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2389
  store i8 39, ptr %406, align 1, !dbg !2389, !tbaa !870
  br label %407, !dbg !2389

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %408, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 1, metadata !2001, metadata !DIExpression()), !dbg !2045
  br label %409, !dbg !2393

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2045
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2045
  call void @llvm.dbg.value(metadata i8 %411, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %410, metadata !1993, metadata !DIExpression()), !dbg !2045
  %412 = icmp ult i64 %410, %146, !dbg !2394
  br i1 %412, label %413, label %415, !dbg !2397

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2394
  store i8 92, ptr %414, align 1, !dbg !2394, !tbaa !870
  br label %415, !dbg !2394

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %416, metadata !1993, metadata !DIExpression()), !dbg !2045
  %417 = icmp ult i64 %416, %146, !dbg !2398
  br i1 %417, label %418, label %422, !dbg !2401

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2398
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2398
  store i8 %420, ptr %421, align 1, !dbg !2398, !tbaa !870
  br label %422, !dbg !2398

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %423, metadata !1993, metadata !DIExpression()), !dbg !2045
  %424 = icmp ult i64 %423, %146, !dbg !2402
  br i1 %424, label %425, label %430, !dbg !2405

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2402
  %428 = or i8 %427, 48, !dbg !2402
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2402
  store i8 %428, ptr %429, align 1, !dbg !2402, !tbaa !870
  br label %430, !dbg !2402

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %431, metadata !1993, metadata !DIExpression()), !dbg !2045
  %432 = and i8 %387, 7, !dbg !2406
  %433 = or i8 %432, 48, !dbg !2407
  call void @llvm.dbg.value(metadata i8 %433, metadata !2014, metadata !DIExpression()), !dbg !2154
  br label %443, !dbg !2408

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2409
  %436 = icmp eq i8 %435, 0, !dbg !2409
  br i1 %436, label %443, label %437, !dbg !2411

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2412
  br i1 %438, label %439, label %441, !dbg !2416

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2412
  store i8 92, ptr %440, align 1, !dbg !2412, !tbaa !870
  br label %441, !dbg !2412

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %442, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 0, metadata !2009, metadata !DIExpression()), !dbg !2154
  br label %443, !dbg !2417

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2045
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2146
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2154
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2154
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2154
  call void @llvm.dbg.value(metadata i8 %448, metadata !2014, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %447, metadata !2012, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %446, metadata !2009, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %445, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %444, metadata !1993, metadata !DIExpression()), !dbg !2045
  %449 = add i64 %384, 1, !dbg !2418
  %450 = icmp ugt i64 %379, %449, !dbg !2420
  br i1 %450, label %451, label %478, !dbg !2421

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2422
  %453 = icmp ne i8 %452, 0, !dbg !2422
  %454 = and i8 %447, 1, !dbg !2422
  %455 = icmp eq i8 %454, 0, !dbg !2422
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2422
  br i1 %456, label %457, label %468, !dbg !2422

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2425
  br i1 %458, label %459, label %461, !dbg !2429

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2425
  store i8 39, ptr %460, align 1, !dbg !2425, !tbaa !870
  br label %461, !dbg !2425

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %462, metadata !1993, metadata !DIExpression()), !dbg !2045
  %463 = icmp ult i64 %462, %146, !dbg !2430
  br i1 %463, label %464, label %466, !dbg !2433

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2430
  store i8 39, ptr %465, align 1, !dbg !2430, !tbaa !870
  br label %466, !dbg !2430

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %467, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2045
  br label %468, !dbg !2434

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2435
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2045
  call void @llvm.dbg.value(metadata i8 %470, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %469, metadata !1993, metadata !DIExpression()), !dbg !2045
  %471 = icmp ult i64 %469, %146, !dbg !2436
  br i1 %471, label %472, label %474, !dbg !2439

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2436
  store i8 %448, ptr %473, align 1, !dbg !2436, !tbaa !870
  br label %474, !dbg !2436

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %475, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %449, metadata !2007, metadata !DIExpression()), !dbg !2144
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2440
  %477 = load i8, ptr %476, align 1, !dbg !2440, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %477, metadata !2014, metadata !DIExpression()), !dbg !2154
  br label %381, !dbg !2441, !llvm.loop !2442

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i8 %448, metadata !2014, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %479, metadata !2013, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %447, metadata !2012, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %446, metadata !2009, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %384, metadata !2007, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %445, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %444, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %378, metadata !1986, metadata !DIExpression()), !dbg !2045
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2445
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2045
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2050
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2045
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2045
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2144
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2154
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2154
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2154
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %489, metadata !2014, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %488, metadata !2013, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %487, metadata !2012, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %173, metadata !2009, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %486, metadata !2007, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %485, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %484, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %483, metadata !1994, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %482, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %481, metadata !1986, metadata !DIExpression()), !dbg !2045
  br i1 %127, label %502, label %491, !dbg !2446

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
  br i1 %137, label %503, label %524, !dbg !2448

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2449

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
  %514 = lshr i8 %505, 5, !dbg !2450
  %515 = zext i8 %514 to i64, !dbg !2450
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2451
  %517 = load i32, ptr %516, align 4, !dbg !2451, !tbaa !861
  %518 = and i8 %505, 31, !dbg !2452
  %519 = zext i8 %518 to i32, !dbg !2452
  %520 = shl nuw i32 1, %519, !dbg !2453
  %521 = and i32 %517, %520, !dbg !2453
  %522 = icmp eq i32 %521, 0, !dbg !2453
  %523 = and i1 %172, %522, !dbg !2454
  br i1 %523, label %573, label %535, !dbg !2454

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
  br i1 %172, label %573, label %535, !dbg !2455

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2445
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2045
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2050
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2054
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2146
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2456
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2154
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2154
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %543, metadata !2014, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %542, metadata !2013, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %541, metadata !2007, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %540, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %539, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %538, metadata !1994, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %537, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %536, metadata !1986, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.label(metadata !2042), !dbg !2457
  br i1 %132, label %545, label %674, !dbg !2458

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2012, metadata !DIExpression()), !dbg !2154
  %546 = and i8 %540, 1, !dbg !2460
  %547 = icmp eq i8 %546, 0, !dbg !2460
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2460
  br i1 %548, label %549, label %565, !dbg !2460

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2462
  br i1 %550, label %551, label %553, !dbg !2466

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2462
  store i8 39, ptr %552, align 1, !dbg !2462, !tbaa !870
  br label %553, !dbg !2462

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %554, metadata !1993, metadata !DIExpression()), !dbg !2045
  %555 = icmp ult i64 %554, %544, !dbg !2467
  br i1 %555, label %556, label %558, !dbg !2470

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2467
  store i8 36, ptr %557, align 1, !dbg !2467, !tbaa !870
  br label %558, !dbg !2467

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %559, metadata !1993, metadata !DIExpression()), !dbg !2045
  %560 = icmp ult i64 %559, %544, !dbg !2471
  br i1 %560, label %561, label %563, !dbg !2474

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2471
  store i8 39, ptr %562, align 1, !dbg !2471, !tbaa !870
  br label %563, !dbg !2471

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %564, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 1, metadata !2001, metadata !DIExpression()), !dbg !2045
  br label %565, !dbg !2475

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2154
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2045
  call void @llvm.dbg.value(metadata i8 %567, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %566, metadata !1993, metadata !DIExpression()), !dbg !2045
  %568 = icmp ult i64 %566, %544, !dbg !2476
  br i1 %568, label %569, label %571, !dbg !2479

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2476
  store i8 92, ptr %570, align 1, !dbg !2476, !tbaa !870
  br label %571, !dbg !2476

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %544, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %543, metadata !2014, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %542, metadata !2013, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 1, metadata !2012, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %541, metadata !2007, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %567, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %539, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %538, metadata !1994, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %572, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %536, metadata !1986, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.label(metadata !2043), !dbg !2480
  br label %600, !dbg !2481

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2445
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2045
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2050
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2054
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2146
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2456
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2154
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2154
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2484
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %582, metadata !2014, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %581, metadata !2013, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %580, metadata !2012, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %579, metadata !2007, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %578, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %577, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %576, metadata !1994, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %575, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %574, metadata !1986, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.label(metadata !2043), !dbg !2480
  %584 = and i8 %578, 1, !dbg !2481
  %585 = icmp ne i8 %584, 0, !dbg !2481
  %586 = and i8 %580, 1, !dbg !2481
  %587 = icmp eq i8 %586, 0, !dbg !2481
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2481
  br i1 %588, label %589, label %600, !dbg !2481

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2485
  br i1 %590, label %591, label %593, !dbg !2489

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2485
  store i8 39, ptr %592, align 1, !dbg !2485, !tbaa !870
  br label %593, !dbg !2485

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %594, metadata !1993, metadata !DIExpression()), !dbg !2045
  %595 = icmp ult i64 %594, %583, !dbg !2490
  br i1 %595, label %596, label %598, !dbg !2493

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2490
  store i8 39, ptr %597, align 1, !dbg !2490, !tbaa !870
  br label %598, !dbg !2490

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %599, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2045
  br label %600, !dbg !2494

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2154
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2045
  call void @llvm.dbg.value(metadata i8 %609, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %608, metadata !1993, metadata !DIExpression()), !dbg !2045
  %610 = icmp ult i64 %608, %601, !dbg !2495
  br i1 %610, label %611, label %613, !dbg !2498

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2495
  store i8 %602, ptr %612, align 1, !dbg !2495, !tbaa !870
  br label %613, !dbg !2495

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %614, metadata !1993, metadata !DIExpression()), !dbg !2045
  %615 = icmp eq i8 %603, 0, !dbg !2499
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2501
  call void @llvm.dbg.value(metadata i8 %616, metadata !2000, metadata !DIExpression()), !dbg !2045
  br label %617, !dbg !2502

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2445
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2045
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2050
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2054
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2055
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2146
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2456
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %624, metadata !2007, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %623, metadata !2001, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %622, metadata !2000, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %621, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %620, metadata !1994, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %619, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %618, metadata !1986, metadata !DIExpression()), !dbg !2045
  %626 = add i64 %624, 1, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %626, metadata !2007, metadata !DIExpression()), !dbg !2144
  br label %138, !dbg !2504, !llvm.loop !2505

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1984, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %143, metadata !2000, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %142, metadata !1999, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %141, metadata !1994, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %140, metadata !1993, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %139, metadata !1986, metadata !DIExpression()), !dbg !2045
  %628 = icmp eq i64 %140, 0, !dbg !2507
  %629 = and i1 %133, %628, !dbg !2509
  %630 = xor i1 %629, true, !dbg !2509
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2509
  br i1 %631, label %632, label %670, !dbg !2509

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2510
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2510
  br i1 %636, label %637, label %646, !dbg !2510

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2512
  %639 = icmp eq i8 %638, 0, !dbg !2512
  br i1 %639, label %642, label %640, !dbg !2515

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2516
  br label %694, !dbg !2517

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2518
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2520
  br i1 %645, label %28, label %646, !dbg !2520

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2521
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2523
  br i1 %649, label %650, label %665, !dbg !2523

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1995, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %140, metadata !1993, metadata !DIExpression()), !dbg !2045
  %651 = load i8, ptr %120, align 1, !dbg !2524, !tbaa !870
  %652 = icmp eq i8 %651, 0, !dbg !2527
  br i1 %652, label %665, label %653, !dbg !2527

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1995, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %656, metadata !1993, metadata !DIExpression()), !dbg !2045
  %657 = icmp ult i64 %656, %146, !dbg !2528
  br i1 %657, label %658, label %660, !dbg !2531

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2528
  store i8 %654, ptr %659, align 1, !dbg !2528, !tbaa !870
  br label %660, !dbg !2528

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %661, metadata !1993, metadata !DIExpression()), !dbg !2045
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2532
  call void @llvm.dbg.value(metadata ptr %662, metadata !1995, metadata !DIExpression()), !dbg !2045
  %663 = load i8, ptr %662, align 1, !dbg !2524, !tbaa !870
  %664 = icmp eq i8 %663, 0, !dbg !2527
  br i1 %664, label %665, label %653, !dbg !2527, !llvm.loop !2533

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2127
  call void @llvm.dbg.value(metadata i64 %666, metadata !1993, metadata !DIExpression()), !dbg !2045
  %667 = icmp ult i64 %666, %146, !dbg !2535
  br i1 %667, label %668, label %694, !dbg !2537

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2538
  store i8 0, ptr %669, align 1, !dbg !2539, !tbaa !870
  br label %694, !dbg !2538

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2044), !dbg !2540
  %672 = icmp eq i8 %124, 0, !dbg !2541
  %673 = select i1 %672, i32 2, i32 4, !dbg !2541
  br label %684, !dbg !2541

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2541
  %678 = select i1 %677, i32 2, i32 4, !dbg !2541
  br label %679, !dbg !2543

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2044), !dbg !2540
  %683 = icmp eq i32 %116, 2, !dbg !2543
  br i1 %683, label %684, label %688, !dbg !2541

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2541

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1987, metadata !DIExpression()), !dbg !2045
  %692 = and i32 %5, -3, !dbg !2544
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2545
  br label %694, !dbg !2546

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2547
}

; Function Attrs: nounwind
declare !dbg !2548 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2551 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2554 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2556 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %1, metadata !2561, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %2, metadata !2562, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %0, metadata !2564, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2569, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr null, metadata !2570, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %2, metadata !2571, metadata !DIExpression()), !dbg !2577
  %4 = icmp eq ptr %2, null, !dbg !2579
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2579
  call void @llvm.dbg.value(metadata ptr %5, metadata !2572, metadata !DIExpression()), !dbg !2577
  %6 = tail call ptr @__errno_location() #39, !dbg !2580
  %7 = load i32, ptr %6, align 4, !dbg !2580, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %7, metadata !2573, metadata !DIExpression()), !dbg !2577
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2581
  %9 = load i32, ptr %8, align 4, !dbg !2581, !tbaa !1927
  %10 = or i32 %9, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i32 %10, metadata !2574, metadata !DIExpression()), !dbg !2577
  %11 = load i32, ptr %5, align 8, !dbg !2583, !tbaa !1877
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2584
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2585
  %14 = load ptr, ptr %13, align 8, !dbg !2585, !tbaa !1948
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2586
  %16 = load ptr, ptr %15, align 8, !dbg !2586, !tbaa !1951
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2587
  %18 = add i64 %17, 1, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %18, metadata !2575, metadata !DIExpression()), !dbg !2577
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #42, !dbg !2589
  call void @llvm.dbg.value(metadata ptr %19, metadata !2576, metadata !DIExpression()), !dbg !2577
  %20 = load i32, ptr %5, align 8, !dbg !2590, !tbaa !1877
  %21 = load ptr, ptr %13, align 8, !dbg !2591, !tbaa !1948
  %22 = load ptr, ptr %15, align 8, !dbg !2592, !tbaa !1951
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2593
  store i32 %7, ptr %6, align 4, !dbg !2594, !tbaa !861
  ret ptr %19, !dbg !2595
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2565 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2564, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %1, metadata !2569, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %2, metadata !2570, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %3, metadata !2571, metadata !DIExpression()), !dbg !2596
  %5 = icmp eq ptr %3, null, !dbg !2597
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2597
  call void @llvm.dbg.value(metadata ptr %6, metadata !2572, metadata !DIExpression()), !dbg !2596
  %7 = tail call ptr @__errno_location() #39, !dbg !2598
  %8 = load i32, ptr %7, align 4, !dbg !2598, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %8, metadata !2573, metadata !DIExpression()), !dbg !2596
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2599
  %10 = load i32, ptr %9, align 4, !dbg !2599, !tbaa !1927
  %11 = icmp eq ptr %2, null, !dbg !2600
  %12 = zext i1 %11 to i32, !dbg !2600
  %13 = or i32 %10, %12, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %13, metadata !2574, metadata !DIExpression()), !dbg !2596
  %14 = load i32, ptr %6, align 8, !dbg !2602, !tbaa !1877
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2603
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2604
  %17 = load ptr, ptr %16, align 8, !dbg !2604, !tbaa !1948
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2605
  %19 = load ptr, ptr %18, align 8, !dbg !2605, !tbaa !1951
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2606
  %21 = add i64 %20, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %21, metadata !2575, metadata !DIExpression()), !dbg !2596
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #42, !dbg !2608
  call void @llvm.dbg.value(metadata ptr %22, metadata !2576, metadata !DIExpression()), !dbg !2596
  %23 = load i32, ptr %6, align 8, !dbg !2609, !tbaa !1877
  %24 = load ptr, ptr %16, align 8, !dbg !2610, !tbaa !1948
  %25 = load ptr, ptr %18, align 8, !dbg !2611, !tbaa !1951
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2612
  store i32 %8, ptr %7, align 4, !dbg !2613, !tbaa !861
  br i1 %11, label %28, label %27, !dbg !2614

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2615, !tbaa !2617
  br label %28, !dbg !2618

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2619
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2620 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2625, !tbaa !794
  call void @llvm.dbg.value(metadata ptr %1, metadata !2622, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 1, metadata !2623, metadata !DIExpression()), !dbg !2627
  %2 = load i32, ptr @nslots, align 4, !tbaa !861
  call void @llvm.dbg.value(metadata i32 1, metadata !2623, metadata !DIExpression()), !dbg !2627
  %3 = icmp sgt i32 %2, 1, !dbg !2628
  br i1 %3, label %4, label %6, !dbg !2630

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2628
  br label %10, !dbg !2630

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2631
  %8 = load ptr, ptr %7, align 8, !dbg !2631, !tbaa !2633
  %9 = icmp eq ptr %8, @slot0, !dbg !2635
  br i1 %9, label %17, label %16, !dbg !2636

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2623, metadata !DIExpression()), !dbg !2627
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2637
  %13 = load ptr, ptr %12, align 8, !dbg !2637, !tbaa !2633
  tail call void @free(ptr noundef %13) #36, !dbg !2638
  %14 = add nuw nsw i64 %11, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %14, metadata !2623, metadata !DIExpression()), !dbg !2627
  %15 = icmp eq i64 %14, %5, !dbg !2628
  br i1 %15, label %6, label %10, !dbg !2630, !llvm.loop !2640

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2642
  store i64 256, ptr @slotvec0, align 8, !dbg !2644, !tbaa !2645
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2646, !tbaa !2633
  br label %17, !dbg !2647

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2648
  br i1 %18, label %20, label %19, !dbg !2650

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2651
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2653, !tbaa !794
  br label %20, !dbg !2654

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2655, !tbaa !861
  ret void, !dbg !2656
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata ptr %1, metadata !2660, metadata !DIExpression()), !dbg !2661
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2662
  ret ptr %3, !dbg !2663
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2664 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2668, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %1, metadata !2669, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %2, metadata !2670, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %3, metadata !2671, metadata !DIExpression()), !dbg !2684
  %6 = tail call ptr @__errno_location() #39, !dbg !2685
  %7 = load i32, ptr %6, align 4, !dbg !2685, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %7, metadata !2672, metadata !DIExpression()), !dbg !2684
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2686, !tbaa !794
  call void @llvm.dbg.value(metadata ptr %8, metadata !2673, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2674, metadata !DIExpression()), !dbg !2684
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2687
  br i1 %9, label %10, label %11, !dbg !2687

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2689
  unreachable, !dbg !2689

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2690, !tbaa !861
  %13 = icmp sgt i32 %12, %0, !dbg !2691
  br i1 %13, label %32, label %14, !dbg !2692

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2693
  call void @llvm.dbg.value(metadata i1 %15, metadata !2675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2694
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2695
  %16 = sext i32 %12 to i64, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %16, metadata !2678, metadata !DIExpression()), !dbg !2694
  store i64 %16, ptr %5, align 8, !dbg !2697, !tbaa !2617
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2698
  %18 = add nuw nsw i32 %0, 1, !dbg !2699
  %19 = sub i32 %18, %12, !dbg !2700
  %20 = sext i32 %19 to i64, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %5, metadata !2678, metadata !DIExpression(DW_OP_deref)), !dbg !2694
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2702
  call void @llvm.dbg.value(metadata ptr %21, metadata !2673, metadata !DIExpression()), !dbg !2684
  store ptr %21, ptr @slotvec, align 8, !dbg !2703, !tbaa !794
  br i1 %15, label %22, label %23, !dbg !2704

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2705, !tbaa.struct !2707
  br label %23, !dbg !2708

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2709, !tbaa !861
  %25 = sext i32 %24 to i64, !dbg !2710
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2710
  %27 = load i64, ptr %5, align 8, !dbg !2711, !tbaa !2617
  call void @llvm.dbg.value(metadata i64 %27, metadata !2678, metadata !DIExpression()), !dbg !2694
  %28 = sub nsw i64 %27, %25, !dbg !2712
  %29 = shl i64 %28, 4, !dbg !2713
  call void @llvm.dbg.value(metadata ptr %26, metadata !2084, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %29, metadata !2088, metadata !DIExpression()), !dbg !2714
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2716
  %30 = load i64, ptr %5, align 8, !dbg !2717, !tbaa !2617
  call void @llvm.dbg.value(metadata i64 %30, metadata !2678, metadata !DIExpression()), !dbg !2694
  %31 = trunc i64 %30 to i32, !dbg !2717
  store i32 %31, ptr @nslots, align 4, !dbg !2718, !tbaa !861
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2719
  br label %32, !dbg !2720

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2684
  call void @llvm.dbg.value(metadata ptr %33, metadata !2673, metadata !DIExpression()), !dbg !2684
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2721
  %36 = load i64, ptr %35, align 8, !dbg !2722, !tbaa !2645
  call void @llvm.dbg.value(metadata i64 %36, metadata !2679, metadata !DIExpression()), !dbg !2723
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2724
  %38 = load ptr, ptr %37, align 8, !dbg !2724, !tbaa !2633
  call void @llvm.dbg.value(metadata ptr %38, metadata !2681, metadata !DIExpression()), !dbg !2723
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2725
  %40 = load i32, ptr %39, align 4, !dbg !2725, !tbaa !1927
  %41 = or i32 %40, 1, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %41, metadata !2682, metadata !DIExpression()), !dbg !2723
  %42 = load i32, ptr %3, align 8, !dbg !2727, !tbaa !1877
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2728
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2729
  %45 = load ptr, ptr %44, align 8, !dbg !2729, !tbaa !1948
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2730
  %47 = load ptr, ptr %46, align 8, !dbg !2730, !tbaa !1951
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %48, metadata !2683, metadata !DIExpression()), !dbg !2723
  %49 = icmp ugt i64 %36, %48, !dbg !2732
  br i1 %49, label %60, label %50, !dbg !2734

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %51, metadata !2679, metadata !DIExpression()), !dbg !2723
  store i64 %51, ptr %35, align 8, !dbg !2737, !tbaa !2645
  %52 = icmp eq ptr %38, @slot0, !dbg !2738
  br i1 %52, label %54, label %53, !dbg !2740

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2741
  br label %54, !dbg !2741

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #42, !dbg !2742
  call void @llvm.dbg.value(metadata ptr %55, metadata !2681, metadata !DIExpression()), !dbg !2723
  store ptr %55, ptr %37, align 8, !dbg !2743, !tbaa !2633
  %56 = load i32, ptr %3, align 8, !dbg !2744, !tbaa !1877
  %57 = load ptr, ptr %44, align 8, !dbg !2745, !tbaa !1948
  %58 = load ptr, ptr %46, align 8, !dbg !2746, !tbaa !1951
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2747
  br label %60, !dbg !2748

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2723
  call void @llvm.dbg.value(metadata ptr %61, metadata !2681, metadata !DIExpression()), !dbg !2723
  store i32 %7, ptr %6, align 4, !dbg !2749, !tbaa !861
  ret ptr %61, !dbg !2750
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %1, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %2, metadata !2757, metadata !DIExpression()), !dbg !2758
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2759
  ret ptr %4, !dbg !2760
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2761 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 0, metadata !2659, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata ptr %0, metadata !2660, metadata !DIExpression()), !dbg !2765
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2767
  ret ptr %2, !dbg !2768
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2769 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %1, metadata !2774, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 0, metadata !2755, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %0, metadata !2756, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %1, metadata !2757, metadata !DIExpression()), !dbg !2776
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2778
  ret ptr %3, !dbg !2779
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2780 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %1, metadata !2785, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata ptr %2, metadata !2786, metadata !DIExpression()), !dbg !2788
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2787, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791), !dbg !2794
  call void @llvm.dbg.value(metadata i32 %1, metadata !2795, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2800, metadata !DIExpression()), !dbg !2803
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2803, !alias.scope !2791
  %5 = icmp eq i32 %1, 10, !dbg !2804
  br i1 %5, label %6, label %7, !dbg !2806

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2807, !noalias !2791
  unreachable, !dbg !2807

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2808, !tbaa !1877, !alias.scope !2791
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2809
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2810
  ret ptr %8, !dbg !2811
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2812 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 %1, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %2, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %3, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2822
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2820, metadata !DIExpression()), !dbg !2823
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2824), !dbg !2827
  call void @llvm.dbg.value(metadata i32 %1, metadata !2795, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2800, metadata !DIExpression()), !dbg !2830
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2830, !alias.scope !2824
  %6 = icmp eq i32 %1, 10, !dbg !2831
  br i1 %6, label %7, label %8, !dbg !2832

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2833, !noalias !2824
  unreachable, !dbg !2833

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2834, !tbaa !1877, !alias.scope !2824
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2835
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2836
  ret ptr %9, !dbg !2837
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2838 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata ptr %1, metadata !2843, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 0, metadata !2784, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %0, metadata !2785, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata ptr %1, metadata !2786, metadata !DIExpression()), !dbg !2845
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2787, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2849), !dbg !2852
  call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2855, !alias.scope !2849
  %4 = icmp eq i32 %0, 10, !dbg !2856
  br i1 %4, label %5, label %6, !dbg !2857

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2858, !noalias !2849
  unreachable, !dbg !2858

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2859, !tbaa !1877, !alias.scope !2849
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2860
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2861
  ret ptr %7, !dbg !2862
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2863 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata ptr %1, metadata !2868, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %2, metadata !2869, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 0, metadata !2816, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 %0, metadata !2817, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %1, metadata !2818, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %2, metadata !2819, metadata !DIExpression()), !dbg !2871
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2873
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2820, metadata !DIExpression()), !dbg !2874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2875), !dbg !2878
  call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2800, metadata !DIExpression()), !dbg !2881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2881, !alias.scope !2875
  %5 = icmp eq i32 %0, 10, !dbg !2882
  br i1 %5, label %6, label %7, !dbg !2883

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2884, !noalias !2875
  unreachable, !dbg !2884

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2885, !tbaa !1877, !alias.scope !2875
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2886
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2887
  ret ptr %8, !dbg !2888
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2889 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8 %2, metadata !2895, metadata !DIExpression()), !dbg !2897
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2898
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2900, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata ptr %4, metadata !1894, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 %2, metadata !1895, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 %2, metadata !1897, metadata !DIExpression()), !dbg !2902
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2904
  %6 = lshr i8 %2, 5, !dbg !2905
  %7 = zext i8 %6 to i64, !dbg !2905
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2906
  call void @llvm.dbg.value(metadata ptr %8, metadata !1898, metadata !DIExpression()), !dbg !2902
  %9 = and i8 %2, 31, !dbg !2907
  %10 = zext i8 %9 to i32, !dbg !2907
  call void @llvm.dbg.value(metadata i32 %10, metadata !1900, metadata !DIExpression()), !dbg !2902
  %11 = load i32, ptr %8, align 4, !dbg !2908, !tbaa !861
  %12 = lshr i32 %11, %10, !dbg !2909
  call void @llvm.dbg.value(metadata i32 %12, metadata !1901, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2902
  %13 = and i32 %12, 1, !dbg !2910
  %14 = xor i32 %13, 1, !dbg !2910
  %15 = shl nuw i32 %14, %10, !dbg !2911
  %16 = xor i32 %15, %11, !dbg !2912
  store i32 %16, ptr %8, align 4, !dbg !2912, !tbaa !861
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2913
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2914
  ret ptr %17, !dbg !2915
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2916 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 %1, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i64 -1, metadata !2894, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 %1, metadata !2895, metadata !DIExpression()), !dbg !2923
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2925
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2896, metadata !DIExpression()), !dbg !2926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2927, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata ptr %3, metadata !1894, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8 %1, metadata !1895, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8 %1, metadata !1897, metadata !DIExpression()), !dbg !2928
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2930
  %5 = lshr i8 %1, 5, !dbg !2931
  %6 = zext i8 %5 to i64, !dbg !2931
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2932
  call void @llvm.dbg.value(metadata ptr %7, metadata !1898, metadata !DIExpression()), !dbg !2928
  %8 = and i8 %1, 31, !dbg !2933
  %9 = zext i8 %8 to i32, !dbg !2933
  call void @llvm.dbg.value(metadata i32 %9, metadata !1900, metadata !DIExpression()), !dbg !2928
  %10 = load i32, ptr %7, align 4, !dbg !2934, !tbaa !861
  %11 = lshr i32 %10, %9, !dbg !2935
  call void @llvm.dbg.value(metadata i32 %11, metadata !1901, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2928
  %12 = and i32 %11, 1, !dbg !2936
  %13 = xor i32 %12, 1, !dbg !2936
  %14 = shl nuw i32 %13, %9, !dbg !2937
  %15 = xor i32 %14, %10, !dbg !2938
  store i32 %15, ptr %7, align 4, !dbg !2938, !tbaa !861
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2939
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2940
  ret ptr %16, !dbg !2941
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2942 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2944, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata ptr %0, metadata !2920, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 58, metadata !2921, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 -1, metadata !2894, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 58, metadata !2895, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2950
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2896, metadata !DIExpression()), !dbg !2951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2952, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata ptr %2, metadata !1894, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8 58, metadata !1895, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8 58, metadata !1897, metadata !DIExpression()), !dbg !2953
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2955
  call void @llvm.dbg.value(metadata ptr %3, metadata !1898, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 26, metadata !1900, metadata !DIExpression()), !dbg !2953
  %4 = load i32, ptr %3, align 4, !dbg !2956, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %4, metadata !1901, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2953
  %5 = or i32 %4, 67108864, !dbg !2957
  store i32 %5, ptr %3, align 4, !dbg !2957, !tbaa !861
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2958
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2959
  ret ptr %6, !dbg !2960
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2961 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %1, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 58, metadata !2895, metadata !DIExpression()), !dbg !2966
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2968
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2896, metadata !DIExpression()), !dbg !2969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2970, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata ptr %3, metadata !1894, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8 58, metadata !1895, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8 58, metadata !1897, metadata !DIExpression()), !dbg !2971
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2973
  call void @llvm.dbg.value(metadata ptr %4, metadata !1898, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32 26, metadata !1900, metadata !DIExpression()), !dbg !2971
  %5 = load i32, ptr %4, align 4, !dbg !2974, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %5, metadata !1901, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2971
  %6 = or i32 %5, 67108864, !dbg !2975
  store i32 %6, ptr %4, align 4, !dbg !2975, !tbaa !861
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2976
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2977
  ret ptr %7, !dbg !2978
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2979 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2800, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2985
  call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 %1, metadata !2982, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata ptr %2, metadata !2983, metadata !DIExpression()), !dbg !2987
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2988
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2984, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i32 %1, metadata !2795, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2990
  %5 = icmp eq i32 %1, 10, !dbg !2991
  br i1 %5, label %6, label %7, !dbg !2992

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2993, !noalias !2994
  unreachable, !dbg !2993

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2800, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2990
  store i32 %1, ptr %4, align 8, !dbg !2997, !tbaa.struct !2901
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2997
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %4, metadata !1894, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 58, metadata !1895, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 58, metadata !1897, metadata !DIExpression()), !dbg !2998
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3000
  call void @llvm.dbg.value(metadata ptr %9, metadata !1898, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 26, metadata !1900, metadata !DIExpression()), !dbg !2998
  %10 = load i32, ptr %9, align 4, !dbg !3001, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %10, metadata !1901, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2998
  %11 = or i32 %10, 67108864, !dbg !3002
  store i32 %11, ptr %9, align 4, !dbg !3002, !tbaa !861
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3003
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3004
  ret ptr %12, !dbg !3005
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3006 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3010, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %1, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %2, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %3, metadata !3013, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i32 %0, metadata !3015, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %1, metadata !3020, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %3, metadata !3022, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 -1, metadata !3023, metadata !DIExpression()), !dbg !3025
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3027
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3024, metadata !DIExpression()), !dbg !3028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3029, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %1, metadata !1935, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %2, metadata !1936, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !3030
  store i32 10, ptr %5, align 8, !dbg !3032, !tbaa !1877
  %6 = icmp ne ptr %1, null, !dbg !3033
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3034
  br i1 %8, label %10, label %9, !dbg !3034

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3035
  unreachable, !dbg !3035

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3036
  store ptr %1, ptr %11, align 8, !dbg !3037, !tbaa !1948
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3038
  store ptr %2, ptr %12, align 8, !dbg !3039, !tbaa !1951
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3040
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3041
  ret ptr %13, !dbg !3042
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3016 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3015, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %1, metadata !3020, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %3, metadata !3022, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %4, metadata !3023, metadata !DIExpression()), !dbg !3043
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !3044
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3024, metadata !DIExpression()), !dbg !3045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3046, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata ptr %6, metadata !1934, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata ptr %1, metadata !1935, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata ptr %2, metadata !1936, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata ptr %6, metadata !1934, metadata !DIExpression()), !dbg !3047
  store i32 10, ptr %6, align 8, !dbg !3049, !tbaa !1877
  %7 = icmp ne ptr %1, null, !dbg !3050
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3051
  br i1 %9, label %11, label %10, !dbg !3051

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !3052
  unreachable, !dbg !3052

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3053
  store ptr %1, ptr %12, align 8, !dbg !3054, !tbaa !1948
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3055
  store ptr %2, ptr %13, align 8, !dbg !3056, !tbaa !1951
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3057
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !3058
  ret ptr %14, !dbg !3059
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3060 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3064, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %1, metadata !3065, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %2, metadata !3066, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 0, metadata !3010, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %0, metadata !3011, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %1, metadata !3012, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %2, metadata !3013, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 0, metadata !3015, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata ptr %1, metadata !3021, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata ptr %2, metadata !3022, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 -1, metadata !3023, metadata !DIExpression()), !dbg !3070
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3072
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3024, metadata !DIExpression()), !dbg !3073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3074, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata ptr %4, metadata !1934, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %1, metadata !1936, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %4, metadata !1934, metadata !DIExpression()), !dbg !3075
  store i32 10, ptr %4, align 8, !dbg !3077, !tbaa !1877
  %5 = icmp ne ptr %0, null, !dbg !3078
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3079
  br i1 %7, label %9, label %8, !dbg !3079

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3080
  unreachable, !dbg !3080

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3081
  store ptr %0, ptr %10, align 8, !dbg !3082, !tbaa !1948
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3083
  store ptr %1, ptr %11, align 8, !dbg !3084, !tbaa !1951
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3085
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3086
  ret ptr %12, !dbg !3087
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3088 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3092, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %1, metadata !3093, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %3, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3015, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %1, metadata !3021, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %2, metadata !3022, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i64 %3, metadata !3023, metadata !DIExpression()), !dbg !3097
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3099
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3024, metadata !DIExpression()), !dbg !3100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3101, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %1, metadata !1936, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !3102
  store i32 10, ptr %5, align 8, !dbg !3104, !tbaa !1877
  %6 = icmp ne ptr %0, null, !dbg !3105
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3106
  br i1 %8, label %10, label %9, !dbg !3106

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3107
  unreachable, !dbg !3107

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3108
  store ptr %0, ptr %11, align 8, !dbg !3109, !tbaa !1948
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3110
  store ptr %1, ptr %12, align 8, !dbg !3111, !tbaa !1951
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3112
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3113
  ret ptr %13, !dbg !3114
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3115 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %1, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %2, metadata !3121, metadata !DIExpression()), !dbg !3122
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3123
  ret ptr %4, !dbg !3124
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %1, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !3119, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3132
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3134
  ret ptr %3, !dbg !3135
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3136 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3140, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %1, metadata !3141, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %0, metadata !3119, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata ptr %1, metadata !3120, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i64 -1, metadata !3121, metadata !DIExpression()), !dbg !3143
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3145
  ret ptr %3, !dbg !3146
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3147 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3151, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i32 0, metadata !3140, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %0, metadata !3141, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 0, metadata !3119, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 -1, metadata !3121, metadata !DIExpression()), !dbg !3155
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3157
  ret ptr %2, !dbg !3158
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3159 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3198, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %1, metadata !3199, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %2, metadata !3200, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %3, metadata !3201, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %4, metadata !3202, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64 %5, metadata !3203, metadata !DIExpression()), !dbg !3204
  %7 = icmp eq ptr %1, null, !dbg !3205
  br i1 %7, label %10, label %8, !dbg !3207

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3208
  br label %12, !dbg !3208

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.81, ptr noundef %2, ptr noundef %3) #36, !dbg !3209
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.3.83, i32 noundef 5) #36, !dbg !3210
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3210
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %0), !dbg !3211
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.5.85, i32 noundef 5) #36, !dbg !3212
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.86) #36, !dbg !3212
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %0), !dbg !3213
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
  ], !dbg !3214

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.7.87, i32 noundef 5) #36, !dbg !3215
  %21 = load ptr, ptr %4, align 8, !dbg !3215, !tbaa !794
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3215
  br label %147, !dbg !3217

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.8.88, i32 noundef 5) #36, !dbg !3218
  %25 = load ptr, ptr %4, align 8, !dbg !3218, !tbaa !794
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3218
  %27 = load ptr, ptr %26, align 8, !dbg !3218, !tbaa !794
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3218
  br label %147, !dbg !3219

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.9.89, i32 noundef 5) #36, !dbg !3220
  %31 = load ptr, ptr %4, align 8, !dbg !3220, !tbaa !794
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3220
  %33 = load ptr, ptr %32, align 8, !dbg !3220, !tbaa !794
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3220
  %35 = load ptr, ptr %34, align 8, !dbg !3220, !tbaa !794
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3220
  br label %147, !dbg !3221

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.10.90, i32 noundef 5) #36, !dbg !3222
  %39 = load ptr, ptr %4, align 8, !dbg !3222, !tbaa !794
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3222
  %41 = load ptr, ptr %40, align 8, !dbg !3222, !tbaa !794
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3222
  %43 = load ptr, ptr %42, align 8, !dbg !3222, !tbaa !794
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3222
  %45 = load ptr, ptr %44, align 8, !dbg !3222, !tbaa !794
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3222
  br label %147, !dbg !3223

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.11.91, i32 noundef 5) #36, !dbg !3224
  %49 = load ptr, ptr %4, align 8, !dbg !3224, !tbaa !794
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3224
  %51 = load ptr, ptr %50, align 8, !dbg !3224, !tbaa !794
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3224
  %53 = load ptr, ptr %52, align 8, !dbg !3224, !tbaa !794
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3224
  %55 = load ptr, ptr %54, align 8, !dbg !3224, !tbaa !794
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3224
  %57 = load ptr, ptr %56, align 8, !dbg !3224, !tbaa !794
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3224
  br label %147, !dbg !3225

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.12.92, i32 noundef 5) #36, !dbg !3226
  %61 = load ptr, ptr %4, align 8, !dbg !3226, !tbaa !794
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3226
  %63 = load ptr, ptr %62, align 8, !dbg !3226, !tbaa !794
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3226
  %65 = load ptr, ptr %64, align 8, !dbg !3226, !tbaa !794
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3226
  %67 = load ptr, ptr %66, align 8, !dbg !3226, !tbaa !794
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3226
  %69 = load ptr, ptr %68, align 8, !dbg !3226, !tbaa !794
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3226
  %71 = load ptr, ptr %70, align 8, !dbg !3226, !tbaa !794
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3226
  br label %147, !dbg !3227

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.13.93, i32 noundef 5) #36, !dbg !3228
  %75 = load ptr, ptr %4, align 8, !dbg !3228, !tbaa !794
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3228
  %77 = load ptr, ptr %76, align 8, !dbg !3228, !tbaa !794
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3228
  %79 = load ptr, ptr %78, align 8, !dbg !3228, !tbaa !794
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3228
  %81 = load ptr, ptr %80, align 8, !dbg !3228, !tbaa !794
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3228
  %83 = load ptr, ptr %82, align 8, !dbg !3228, !tbaa !794
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3228
  %85 = load ptr, ptr %84, align 8, !dbg !3228, !tbaa !794
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3228
  %87 = load ptr, ptr %86, align 8, !dbg !3228, !tbaa !794
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3228
  br label %147, !dbg !3229

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.14.94, i32 noundef 5) #36, !dbg !3230
  %91 = load ptr, ptr %4, align 8, !dbg !3230, !tbaa !794
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3230
  %93 = load ptr, ptr %92, align 8, !dbg !3230, !tbaa !794
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3230
  %95 = load ptr, ptr %94, align 8, !dbg !3230, !tbaa !794
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3230
  %97 = load ptr, ptr %96, align 8, !dbg !3230, !tbaa !794
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3230
  %99 = load ptr, ptr %98, align 8, !dbg !3230, !tbaa !794
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3230
  %101 = load ptr, ptr %100, align 8, !dbg !3230, !tbaa !794
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3230
  %103 = load ptr, ptr %102, align 8, !dbg !3230, !tbaa !794
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3230
  %105 = load ptr, ptr %104, align 8, !dbg !3230, !tbaa !794
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3230
  br label %147, !dbg !3231

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.15.95, i32 noundef 5) #36, !dbg !3232
  %109 = load ptr, ptr %4, align 8, !dbg !3232, !tbaa !794
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3232
  %111 = load ptr, ptr %110, align 8, !dbg !3232, !tbaa !794
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3232
  %113 = load ptr, ptr %112, align 8, !dbg !3232, !tbaa !794
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3232
  %115 = load ptr, ptr %114, align 8, !dbg !3232, !tbaa !794
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3232
  %117 = load ptr, ptr %116, align 8, !dbg !3232, !tbaa !794
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3232
  %119 = load ptr, ptr %118, align 8, !dbg !3232, !tbaa !794
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3232
  %121 = load ptr, ptr %120, align 8, !dbg !3232, !tbaa !794
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3232
  %123 = load ptr, ptr %122, align 8, !dbg !3232, !tbaa !794
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3232
  %125 = load ptr, ptr %124, align 8, !dbg !3232, !tbaa !794
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3232
  br label %147, !dbg !3233

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.16.96, i32 noundef 5) #36, !dbg !3234
  %129 = load ptr, ptr %4, align 8, !dbg !3234, !tbaa !794
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3234
  %131 = load ptr, ptr %130, align 8, !dbg !3234, !tbaa !794
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3234
  %133 = load ptr, ptr %132, align 8, !dbg !3234, !tbaa !794
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3234
  %135 = load ptr, ptr %134, align 8, !dbg !3234, !tbaa !794
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3234
  %137 = load ptr, ptr %136, align 8, !dbg !3234, !tbaa !794
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3234
  %139 = load ptr, ptr %138, align 8, !dbg !3234, !tbaa !794
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3234
  %141 = load ptr, ptr %140, align 8, !dbg !3234, !tbaa !794
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3234
  %143 = load ptr, ptr %142, align 8, !dbg !3234, !tbaa !794
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3234
  %145 = load ptr, ptr %144, align 8, !dbg !3234, !tbaa !794
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3234
  br label %147, !dbg !3235

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3236
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3237 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3241, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata ptr %1, metadata !3242, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata ptr %2, metadata !3243, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata ptr %3, metadata !3244, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata ptr %4, metadata !3245, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 0, metadata !3246, metadata !DIExpression()), !dbg !3247
  br label %6, !dbg !3248

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3250
  call void @llvm.dbg.value(metadata i64 %7, metadata !3246, metadata !DIExpression()), !dbg !3247
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3251
  %9 = load ptr, ptr %8, align 8, !dbg !3251, !tbaa !794
  %10 = icmp eq ptr %9, null, !dbg !3253
  %11 = add i64 %7, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %11, metadata !3246, metadata !DIExpression()), !dbg !3247
  br i1 %10, label %12, label %6, !dbg !3253, !llvm.loop !3255

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3257
  ret void, !dbg !3258
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3259 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3271, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %1, metadata !3272, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %2, metadata !3273, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %3, metadata !3274, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %4, metadata !3275, metadata !DIExpression()), !dbg !3279
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3280
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 0, metadata !3276, metadata !DIExpression()), !dbg !3279
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3276, metadata !DIExpression()), !dbg !3279
  %10 = icmp ult i32 %9, 41, !dbg !3282
  br i1 %10, label %11, label %16, !dbg !3282

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3282
  %13 = zext i32 %9 to i64, !dbg !3282
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3282
  %15 = add nuw nsw i32 %9, 8, !dbg !3282
  store i32 %15, ptr %4, align 8, !dbg !3282
  br label %19, !dbg !3282

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3282
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3282
  store ptr %18, ptr %7, align 8, !dbg !3282
  br label %19, !dbg !3282

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3282
  %22 = load ptr, ptr %21, align 8, !dbg !3282
  store ptr %22, ptr %6, align 16, !dbg !3285, !tbaa !794
  %23 = icmp eq ptr %22, null, !dbg !3286
  br i1 %23, label %128, label %24, !dbg !3287

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3276, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 1, metadata !3276, metadata !DIExpression()), !dbg !3279
  %25 = icmp ult i32 %20, 41, !dbg !3282
  br i1 %25, label %29, label %26, !dbg !3282

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3282
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3282
  store ptr %28, ptr %7, align 8, !dbg !3282
  br label %34, !dbg !3282

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3282
  %31 = zext i32 %20 to i64, !dbg !3282
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3282
  %33 = add nuw nsw i32 %20, 8, !dbg !3282
  store i32 %33, ptr %4, align 8, !dbg !3282
  br label %34, !dbg !3282

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3282
  %37 = load ptr, ptr %36, align 8, !dbg !3282
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3288
  store ptr %37, ptr %38, align 8, !dbg !3285, !tbaa !794
  %39 = icmp eq ptr %37, null, !dbg !3286
  br i1 %39, label %128, label %40, !dbg !3287

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3276, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 2, metadata !3276, metadata !DIExpression()), !dbg !3279
  %41 = icmp ult i32 %35, 41, !dbg !3282
  br i1 %41, label %45, label %42, !dbg !3282

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3282
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3282
  store ptr %44, ptr %7, align 8, !dbg !3282
  br label %50, !dbg !3282

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3282
  %47 = zext i32 %35 to i64, !dbg !3282
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3282
  %49 = add nuw nsw i32 %35, 8, !dbg !3282
  store i32 %49, ptr %4, align 8, !dbg !3282
  br label %50, !dbg !3282

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3282
  %53 = load ptr, ptr %52, align 8, !dbg !3282
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3288
  store ptr %53, ptr %54, align 16, !dbg !3285, !tbaa !794
  %55 = icmp eq ptr %53, null, !dbg !3286
  br i1 %55, label %128, label %56, !dbg !3287

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3276, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 3, metadata !3276, metadata !DIExpression()), !dbg !3279
  %57 = icmp ult i32 %51, 41, !dbg !3282
  br i1 %57, label %61, label %58, !dbg !3282

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3282
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3282
  store ptr %60, ptr %7, align 8, !dbg !3282
  br label %66, !dbg !3282

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3282
  %63 = zext i32 %51 to i64, !dbg !3282
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3282
  %65 = add nuw nsw i32 %51, 8, !dbg !3282
  store i32 %65, ptr %4, align 8, !dbg !3282
  br label %66, !dbg !3282

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3282
  %69 = load ptr, ptr %68, align 8, !dbg !3282
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3288
  store ptr %69, ptr %70, align 8, !dbg !3285, !tbaa !794
  %71 = icmp eq ptr %69, null, !dbg !3286
  br i1 %71, label %128, label %72, !dbg !3287

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3276, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 4, metadata !3276, metadata !DIExpression()), !dbg !3279
  %73 = icmp ult i32 %67, 41, !dbg !3282
  br i1 %73, label %77, label %74, !dbg !3282

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3282
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3282
  store ptr %76, ptr %7, align 8, !dbg !3282
  br label %82, !dbg !3282

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3282
  %79 = zext i32 %67 to i64, !dbg !3282
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3282
  %81 = add nuw nsw i32 %67, 8, !dbg !3282
  store i32 %81, ptr %4, align 8, !dbg !3282
  br label %82, !dbg !3282

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3282
  %85 = load ptr, ptr %84, align 8, !dbg !3282
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3288
  store ptr %85, ptr %86, align 16, !dbg !3285, !tbaa !794
  %87 = icmp eq ptr %85, null, !dbg !3286
  br i1 %87, label %128, label %88, !dbg !3287

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3276, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 5, metadata !3276, metadata !DIExpression()), !dbg !3279
  %89 = icmp ult i32 %83, 41, !dbg !3282
  br i1 %89, label %93, label %90, !dbg !3282

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3282
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3282
  store ptr %92, ptr %7, align 8, !dbg !3282
  br label %98, !dbg !3282

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3282
  %95 = zext i32 %83 to i64, !dbg !3282
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3282
  %97 = add nuw nsw i32 %83, 8, !dbg !3282
  store i32 %97, ptr %4, align 8, !dbg !3282
  br label %98, !dbg !3282

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3282
  %100 = load ptr, ptr %99, align 8, !dbg !3282
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3288
  store ptr %100, ptr %101, align 8, !dbg !3285, !tbaa !794
  %102 = icmp eq ptr %100, null, !dbg !3286
  br i1 %102, label %128, label %103, !dbg !3287

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3276, metadata !DIExpression()), !dbg !3279
  %104 = load ptr, ptr %7, align 8, !dbg !3282
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3282
  store ptr %105, ptr %7, align 8, !dbg !3282
  %106 = load ptr, ptr %104, align 8, !dbg !3282
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3288
  store ptr %106, ptr %107, align 16, !dbg !3285, !tbaa !794
  %108 = icmp eq ptr %106, null, !dbg !3286
  br i1 %108, label %128, label %109, !dbg !3287

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3276, metadata !DIExpression()), !dbg !3279
  %110 = load ptr, ptr %7, align 8, !dbg !3282
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3282
  store ptr %111, ptr %7, align 8, !dbg !3282
  %112 = load ptr, ptr %110, align 8, !dbg !3282
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3288
  store ptr %112, ptr %113, align 8, !dbg !3285, !tbaa !794
  %114 = icmp eq ptr %112, null, !dbg !3286
  br i1 %114, label %128, label %115, !dbg !3287

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3276, metadata !DIExpression()), !dbg !3279
  %116 = load ptr, ptr %7, align 8, !dbg !3282
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3282
  store ptr %117, ptr %7, align 8, !dbg !3282
  %118 = load ptr, ptr %116, align 8, !dbg !3282
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3288
  store ptr %118, ptr %119, align 16, !dbg !3285, !tbaa !794
  %120 = icmp eq ptr %118, null, !dbg !3286
  br i1 %120, label %128, label %121, !dbg !3287

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3276, metadata !DIExpression()), !dbg !3279
  %122 = load ptr, ptr %7, align 8, !dbg !3282
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3282
  store ptr %123, ptr %7, align 8, !dbg !3282
  %124 = load ptr, ptr %122, align 8, !dbg !3282
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3288
  store ptr %124, ptr %125, align 8, !dbg !3285, !tbaa !794
  %126 = icmp eq ptr %124, null, !dbg !3286
  %127 = select i1 %126, i64 9, i64 10, !dbg !3287
  br label %128, !dbg !3287

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3289
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3290
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3291
  ret void, !dbg !3291
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3292 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %1, metadata !3297, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %2, metadata !3298, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %3, metadata !3299, metadata !DIExpression()), !dbg !3305
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !3306
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3300, metadata !DIExpression()), !dbg !3307
  call void @llvm.va_start(ptr nonnull %5), !dbg !3308
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3309
  call void @llvm.va_end(ptr nonnull %5), !dbg !3310
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !3311
  ret void, !dbg !3311
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3312 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3313, !tbaa !794
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %1), !dbg !3313
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.17.101, i32 noundef 5) #36, !dbg !3314
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.102) #36, !dbg !3314
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.19.103, i32 noundef 5) #36, !dbg !3315
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.104, ptr noundef nonnull @.str.21.105) #36, !dbg !3315
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.22.106, i32 noundef 5) #36, !dbg !3316
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.107) #36, !dbg !3316
  ret void, !dbg !3317
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3318 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3323, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %1, metadata !3324, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %2, metadata !3325, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 %1, metadata !3330, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 %2, metadata !3331, metadata !DIExpression()), !dbg !3332
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %4, metadata !3335, metadata !DIExpression()), !dbg !3340
  %5 = icmp eq ptr %4, null, !dbg !3342
  br i1 %5, label %6, label %7, !dbg !3344

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3345
  unreachable, !dbg !3345

7:                                                ; preds = %3
  ret ptr %4, !dbg !3346
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3328 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %1, metadata !3330, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %2, metadata !3331, metadata !DIExpression()), !dbg !3347
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3348
  call void @llvm.dbg.value(metadata ptr %4, metadata !3335, metadata !DIExpression()), !dbg !3349
  %5 = icmp eq ptr %4, null, !dbg !3351
  br i1 %5, label %6, label %7, !dbg !3352

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3353
  unreachable, !dbg !3353

7:                                                ; preds = %3
  ret ptr %4, !dbg !3354
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3355 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3359, metadata !DIExpression()), !dbg !3360
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3361
  call void @llvm.dbg.value(metadata ptr %2, metadata !3335, metadata !DIExpression()), !dbg !3362
  %3 = icmp eq ptr %2, null, !dbg !3364
  br i1 %3, label %4, label %5, !dbg !3365

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3366
  unreachable, !dbg !3366

5:                                                ; preds = %1
  ret ptr %2, !dbg !3367
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3368 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3369 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %0, metadata !3375, metadata !DIExpression()), !dbg !3379
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3381
  call void @llvm.dbg.value(metadata ptr %2, metadata !3335, metadata !DIExpression()), !dbg !3382
  %3 = icmp eq ptr %2, null, !dbg !3384
  br i1 %3, label %4, label %5, !dbg !3385

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3386
  unreachable, !dbg !3386

5:                                                ; preds = %1
  ret ptr %2, !dbg !3387
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3388 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %0, metadata !3359, metadata !DIExpression()), !dbg !3394
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3396
  call void @llvm.dbg.value(metadata ptr %2, metadata !3335, metadata !DIExpression()), !dbg !3397
  %3 = icmp eq ptr %2, null, !dbg !3399
  br i1 %3, label %4, label %5, !dbg !3400

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3401
  unreachable, !dbg !3401

5:                                                ; preds = %1
  ret ptr %2, !dbg !3402
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3403 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3407, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %1, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3415
  %3 = icmp eq i64 %1, 0, !dbg !3417
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3417
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3418
  call void @llvm.dbg.value(metadata ptr %5, metadata !3335, metadata !DIExpression()), !dbg !3419
  %6 = icmp eq ptr %5, null, !dbg !3421
  br i1 %6, label %7, label %8, !dbg !3422

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3423
  unreachable, !dbg !3423

8:                                                ; preds = %2
  ret ptr %5, !dbg !3424
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3425 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3426 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata ptr %0, metadata !3433, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3439
  %3 = icmp eq i64 %1, 0, !dbg !3441
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3441
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3442
  call void @llvm.dbg.value(metadata ptr %5, metadata !3335, metadata !DIExpression()), !dbg !3443
  %6 = icmp eq ptr %5, null, !dbg !3445
  br i1 %6, label %7, label %8, !dbg !3446

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3447
  unreachable, !dbg !3447

8:                                                ; preds = %2
  ret ptr %5, !dbg !3448
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3449 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3453, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %2, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata ptr %0, metadata !3457, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %1, metadata !3460, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %2, metadata !3461, metadata !DIExpression()), !dbg !3462
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3464
  call void @llvm.dbg.value(metadata ptr %4, metadata !3335, metadata !DIExpression()), !dbg !3465
  %5 = icmp eq ptr %4, null, !dbg !3467
  br i1 %5, label %6, label %7, !dbg !3468

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3469
  unreachable, !dbg !3469

7:                                                ; preds = %3
  ret ptr %4, !dbg !3470
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3471 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %1, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr null, metadata !3327, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %0, metadata !3330, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %1, metadata !3331, metadata !DIExpression()), !dbg !3478
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3480
  call void @llvm.dbg.value(metadata ptr %3, metadata !3335, metadata !DIExpression()), !dbg !3481
  %4 = icmp eq ptr %3, null, !dbg !3483
  br i1 %4, label %5, label %6, !dbg !3484

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3485
  unreachable, !dbg !3485

6:                                                ; preds = %2
  ret ptr %3, !dbg !3486
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3487 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3491, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata ptr null, metadata !3453, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %0, metadata !3454, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %1, metadata !3455, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr null, metadata !3457, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 %0, metadata !3460, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()), !dbg !3496
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3498
  call void @llvm.dbg.value(metadata ptr %3, metadata !3335, metadata !DIExpression()), !dbg !3499
  %4 = icmp eq ptr %3, null, !dbg !3501
  br i1 %4, label %5, label %6, !dbg !3502

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3503
  unreachable, !dbg !3503

6:                                                ; preds = %2
  ret ptr %3, !dbg !3504
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3505 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3509, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata ptr %1, metadata !3510, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata ptr %0, metadata !730, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata ptr %1, metadata !731, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 1, metadata !732, metadata !DIExpression()), !dbg !3512
  %3 = load i64, ptr %1, align 8, !dbg !3514, !tbaa !2617
  call void @llvm.dbg.value(metadata i64 %3, metadata !733, metadata !DIExpression()), !dbg !3512
  %4 = icmp eq ptr %0, null, !dbg !3515
  br i1 %4, label %5, label %8, !dbg !3517

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3518
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3521
  br label %15, !dbg !3521

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3522
  %10 = add nuw i64 %9, 1, !dbg !3522
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3522
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3522
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %13, metadata !733, metadata !DIExpression()), !dbg !3512
  br i1 %12, label %14, label %15, !dbg !3525

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3526
  unreachable, !dbg !3526

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3512
  call void @llvm.dbg.value(metadata i64 %16, metadata !733, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %16, metadata !3330, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 1, metadata !3331, metadata !DIExpression()), !dbg !3527
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3529
  call void @llvm.dbg.value(metadata ptr %17, metadata !3335, metadata !DIExpression()), !dbg !3530
  %18 = icmp eq ptr %17, null, !dbg !3532
  br i1 %18, label %19, label %20, !dbg !3533

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3534
  unreachable, !dbg !3534

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !730, metadata !DIExpression()), !dbg !3512
  store i64 %16, ptr %1, align 8, !dbg !3535, !tbaa !2617
  ret ptr %17, !dbg !3536
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !725 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !730, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %1, metadata !731, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 %2, metadata !732, metadata !DIExpression()), !dbg !3537
  %4 = load i64, ptr %1, align 8, !dbg !3538, !tbaa !2617
  call void @llvm.dbg.value(metadata i64 %4, metadata !733, metadata !DIExpression()), !dbg !3537
  %5 = icmp eq ptr %0, null, !dbg !3539
  br i1 %5, label %6, label %13, !dbg !3540

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3541
  br i1 %7, label %8, label %20, !dbg !3542

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %9, metadata !733, metadata !DIExpression()), !dbg !3537
  %10 = icmp ugt i64 %2, 128, !dbg !3545
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %12, metadata !733, metadata !DIExpression()), !dbg !3537
  br label %20, !dbg !3547

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3548
  %15 = add nuw i64 %14, 1, !dbg !3548
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3548
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3548
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %18, metadata !733, metadata !DIExpression()), !dbg !3537
  br i1 %17, label %19, label %20, !dbg !3549

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3550
  unreachable, !dbg !3550

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3537
  call void @llvm.dbg.value(metadata i64 %21, metadata !733, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %21, metadata !3330, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %2, metadata !3331, metadata !DIExpression()), !dbg !3551
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3553
  call void @llvm.dbg.value(metadata ptr %22, metadata !3335, metadata !DIExpression()), !dbg !3554
  %23 = icmp eq ptr %22, null, !dbg !3556
  br i1 %23, label %24, label %25, !dbg !3557

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3558
  unreachable, !dbg !3558

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !730, metadata !DIExpression()), !dbg !3537
  store i64 %21, ptr %1, align 8, !dbg !3559, !tbaa !2617
  ret ptr %22, !dbg !3560
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !745, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata ptr %1, metadata !746, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %2, metadata !747, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %3, metadata !748, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %4, metadata !749, metadata !DIExpression()), !dbg !3561
  %6 = load i64, ptr %1, align 8, !dbg !3562, !tbaa !2617
  call void @llvm.dbg.value(metadata i64 %6, metadata !750, metadata !DIExpression()), !dbg !3561
  %7 = ashr i64 %6, 1, !dbg !3563
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3563
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3563
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %10, metadata !751, metadata !DIExpression()), !dbg !3561
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %11, metadata !751, metadata !DIExpression()), !dbg !3561
  %12 = icmp sgt i64 %3, -1, !dbg !3566
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3568
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3568
  call void @llvm.dbg.value(metadata i64 %15, metadata !751, metadata !DIExpression()), !dbg !3561
  %16 = icmp slt i64 %4, 0, !dbg !3569
  br i1 %16, label %17, label %30, !dbg !3569

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3569
  br i1 %18, label %19, label %24, !dbg !3569

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3569
  %21 = udiv i64 9223372036854775807, %20, !dbg !3569
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3569
  br i1 %23, label %46, label %43, !dbg !3569

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3569
  br i1 %25, label %43, label %26, !dbg !3569

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3569
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3569
  %29 = icmp ult i64 %28, %15, !dbg !3569
  br i1 %29, label %46, label %43, !dbg !3569

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3569
  br i1 %31, label %43, label %32, !dbg !3569

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3569
  br i1 %33, label %34, label %40, !dbg !3569

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3569
  br i1 %35, label %43, label %36, !dbg !3569

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3569
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3569
  %39 = icmp ult i64 %38, %4, !dbg !3569
  br i1 %39, label %46, label %43, !dbg !3569

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3569
  br i1 %42, label %46, label %43, !dbg !3569

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !752, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3561
  %44 = mul i64 %15, %4, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %44, metadata !752, metadata !DIExpression()), !dbg !3561
  %45 = icmp slt i64 %44, 128, !dbg !3569
  br i1 %45, label %46, label %51, !dbg !3569

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !753, metadata !DIExpression()), !dbg !3561
  %48 = sdiv i64 %47, %4, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %48, metadata !751, metadata !DIExpression()), !dbg !3561
  %49 = srem i64 %47, %4, !dbg !3573
  %50 = sub nsw i64 %47, %49, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %50, metadata !752, metadata !DIExpression()), !dbg !3561
  br label %51, !dbg !3575

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3561
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3561
  call void @llvm.dbg.value(metadata i64 %53, metadata !752, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %52, metadata !751, metadata !DIExpression()), !dbg !3561
  %54 = icmp eq ptr %0, null, !dbg !3576
  br i1 %54, label %55, label %56, !dbg !3578

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3579, !tbaa !2617
  br label %56, !dbg !3580

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3581
  %58 = icmp slt i64 %57, %2, !dbg !3583
  br i1 %58, label %59, label %96, !dbg !3584

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3585
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3585
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %62, metadata !751, metadata !DIExpression()), !dbg !3561
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3586
  br i1 %65, label %95, label %66, !dbg !3586

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3587

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3587
  br i1 %68, label %69, label %74, !dbg !3587

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3587
  %71 = udiv i64 9223372036854775807, %70, !dbg !3587
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3587
  br i1 %73, label %95, label %93, !dbg !3587

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3587
  br i1 %75, label %93, label %76, !dbg !3587

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3587
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3587
  %79 = icmp ult i64 %78, %62, !dbg !3587
  br i1 %79, label %95, label %93, !dbg !3587

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3587
  br i1 %81, label %93, label %82, !dbg !3587

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3587
  br i1 %83, label %84, label %90, !dbg !3587

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3587
  br i1 %85, label %93, label %86, !dbg !3587

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3587
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3587
  %89 = icmp ult i64 %88, %4, !dbg !3587
  br i1 %89, label %95, label %93, !dbg !3587

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3587
  br i1 %92, label %95, label %93, !dbg !3587

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !752, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3561
  %94 = mul i64 %62, %4, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %94, metadata !752, metadata !DIExpression()), !dbg !3561
  br label %96, !dbg !3588

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3589
  unreachable, !dbg !3589

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3561
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3561
  call void @llvm.dbg.value(metadata i64 %98, metadata !752, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %97, metadata !751, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata ptr %0, metadata !3407, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i64 %98, metadata !3408, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %98, metadata !3414, metadata !DIExpression()), !dbg !3592
  %99 = icmp eq i64 %98, 0, !dbg !3594
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3594
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !3595
  call void @llvm.dbg.value(metadata ptr %101, metadata !3335, metadata !DIExpression()), !dbg !3596
  %102 = icmp eq ptr %101, null, !dbg !3598
  br i1 %102, label %103, label %104, !dbg !3599

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3600
  unreachable, !dbg !3600

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !745, metadata !DIExpression()), !dbg !3561
  store i64 %97, ptr %1, align 8, !dbg !3601, !tbaa !2617
  ret ptr %101, !dbg !3602
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3603 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %0, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 1, metadata !3610, metadata !DIExpression()), !dbg !3611
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3613
  call void @llvm.dbg.value(metadata ptr %2, metadata !3335, metadata !DIExpression()), !dbg !3614
  %3 = icmp eq ptr %2, null, !dbg !3616
  br i1 %3, label %4, label %5, !dbg !3617

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3618
  unreachable, !dbg !3618

5:                                                ; preds = %1
  ret ptr %2, !dbg !3619
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3620 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3608 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3607, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %1, metadata !3610, metadata !DIExpression()), !dbg !3621
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3622
  call void @llvm.dbg.value(metadata ptr %3, metadata !3335, metadata !DIExpression()), !dbg !3623
  %4 = icmp eq ptr %3, null, !dbg !3625
  br i1 %4, label %5, label %6, !dbg !3626

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3627
  unreachable, !dbg !3627

6:                                                ; preds = %2
  ret ptr %3, !dbg !3628
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3629 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %0, metadata !3633, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 1, metadata !3636, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 %0, metadata !3639, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 1, metadata !3642, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %0, metadata !3639, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 1, metadata !3642, metadata !DIExpression()), !dbg !3643
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3645
  call void @llvm.dbg.value(metadata ptr %2, metadata !3335, metadata !DIExpression()), !dbg !3646
  %3 = icmp eq ptr %2, null, !dbg !3648
  br i1 %3, label %4, label %5, !dbg !3649

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3650
  unreachable, !dbg !3650

5:                                                ; preds = %1
  ret ptr %2, !dbg !3651
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3634 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3633, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i64 %1, metadata !3636, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i64 %0, metadata !3639, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %1, metadata !3642, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %0, metadata !3639, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %1, metadata !3642, metadata !DIExpression()), !dbg !3653
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3655
  call void @llvm.dbg.value(metadata ptr %3, metadata !3335, metadata !DIExpression()), !dbg !3656
  %4 = icmp eq ptr %3, null, !dbg !3658
  br i1 %4, label %5, label %6, !dbg !3659

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3660
  unreachable, !dbg !3660

6:                                                ; preds = %2
  ret ptr %3, !dbg !3661
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3662 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3666, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %1, metadata !3667, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3669
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3671
  call void @llvm.dbg.value(metadata ptr %3, metadata !3335, metadata !DIExpression()), !dbg !3672
  %4 = icmp eq ptr %3, null, !dbg !3674
  br i1 %4, label %5, label %6, !dbg !3675

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3676
  unreachable, !dbg !3676

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3677, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 %1, metadata !3684, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3687
  ret ptr %3, !dbg !3688
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3689 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3693, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %1, metadata !3694, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %1, metadata !3373, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i64 %1, metadata !3375, metadata !DIExpression()), !dbg !3698
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3700
  call void @llvm.dbg.value(metadata ptr %3, metadata !3335, metadata !DIExpression()), !dbg !3701
  %4 = icmp eq ptr %3, null, !dbg !3703
  br i1 %4, label %5, label %6, !dbg !3704

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3705
  unreachable, !dbg !3705

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3677, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %1, metadata !3684, metadata !DIExpression()), !dbg !3706
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3708
  ret ptr %3, !dbg !3709
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3710 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3714, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3717
  %3 = add nsw i64 %1, 1, !dbg !3718
  call void @llvm.dbg.value(metadata i64 %3, metadata !3373, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %3, metadata !3375, metadata !DIExpression()), !dbg !3721
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3723
  call void @llvm.dbg.value(metadata ptr %4, metadata !3335, metadata !DIExpression()), !dbg !3724
  %5 = icmp eq ptr %4, null, !dbg !3726
  br i1 %5, label %6, label %7, !dbg !3727

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3728
  unreachable, !dbg !3728

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3716, metadata !DIExpression()), !dbg !3717
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3729
  store i8 0, ptr %8, align 1, !dbg !3730, !tbaa !870
  call void @llvm.dbg.value(metadata ptr %4, metadata !3677, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i64 %1, metadata !3684, metadata !DIExpression()), !dbg !3731
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3733
  ret ptr %4, !dbg !3734
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3738
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3739
  %3 = add i64 %2, 1, !dbg !3740
  call void @llvm.dbg.value(metadata ptr %0, metadata !3666, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %3, metadata !3667, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %3, metadata !3359, metadata !DIExpression()), !dbg !3743
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3745
  call void @llvm.dbg.value(metadata ptr %4, metadata !3335, metadata !DIExpression()), !dbg !3746
  %5 = icmp eq ptr %4, null, !dbg !3748
  br i1 %5, label %6, label %7, !dbg !3749

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3750
  unreachable, !dbg !3750

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3677, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %3, metadata !3684, metadata !DIExpression()), !dbg !3751
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3753
  ret ptr %4, !dbg !3754
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3755 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3760, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %1, metadata !3757, metadata !DIExpression()), !dbg !3761
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.122, ptr noundef nonnull @.str.2.123, i32 noundef 5) #36, !dbg !3760
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.124, ptr noundef %2) #36, !dbg !3760
  %3 = icmp eq i32 %1, 0, !dbg !3760
  tail call void @llvm.assume(i1 %3), !dbg !3760
  tail call void @abort() #38, !dbg !3762
  unreachable, !dbg !3762
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3763 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3801, metadata !DIExpression()), !dbg !3806
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3807
  call void @llvm.dbg.value(metadata i1 poison, metadata !3802, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3806
  call void @llvm.dbg.value(metadata ptr %0, metadata !3808, metadata !DIExpression()), !dbg !3811
  %3 = load i32, ptr %0, align 8, !dbg !3813, !tbaa !3814
  %4 = and i32 %3, 32, !dbg !3815
  %5 = icmp eq i32 %4, 0, !dbg !3815
  call void @llvm.dbg.value(metadata i1 %5, metadata !3804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3806
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3816
  %7 = icmp eq i32 %6, 0, !dbg !3817
  call void @llvm.dbg.value(metadata i1 %7, metadata !3805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3806
  br i1 %5, label %8, label %18, !dbg !3818

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3820
  call void @llvm.dbg.value(metadata i1 %9, metadata !3802, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3806
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3821
  %11 = xor i1 %7, true, !dbg !3821
  %12 = sext i1 %11 to i32, !dbg !3821
  br i1 %10, label %21, label %13, !dbg !3821

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3822
  %15 = load i32, ptr %14, align 4, !dbg !3822, !tbaa !861
  %16 = icmp ne i32 %15, 9, !dbg !3823
  %17 = sext i1 %16 to i32, !dbg !3824
  br label %21, !dbg !3824

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3825

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3827
  store i32 0, ptr %20, align 4, !dbg !3829, !tbaa !861
  br label %21, !dbg !3827

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3806
  ret i32 %22, !dbg !3830
}

; Function Attrs: nounwind
declare !dbg !3831 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3835 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3873, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 0, metadata !3874, metadata !DIExpression()), !dbg !3877
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3878
  call void @llvm.dbg.value(metadata i32 %2, metadata !3875, metadata !DIExpression()), !dbg !3877
  %3 = icmp slt i32 %2, 0, !dbg !3879
  br i1 %3, label %4, label %6, !dbg !3881

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3882
  br label %24, !dbg !3883

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3884
  %8 = icmp eq i32 %7, 0, !dbg !3884
  br i1 %8, label %13, label %9, !dbg !3886

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3887
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3888
  %12 = icmp eq i64 %11, -1, !dbg !3889
  br i1 %12, label %16, label %13, !dbg !3890

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3891
  %15 = icmp eq i32 %14, 0, !dbg !3891
  br i1 %15, label %16, label %18, !dbg !3892

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3874, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 0, metadata !3876, metadata !DIExpression()), !dbg !3877
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3893
  call void @llvm.dbg.value(metadata i32 %17, metadata !3876, metadata !DIExpression()), !dbg !3877
  br label %24, !dbg !3894

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3895
  %20 = load i32, ptr %19, align 4, !dbg !3895, !tbaa !861
  call void @llvm.dbg.value(metadata i32 %20, metadata !3874, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 0, metadata !3876, metadata !DIExpression()), !dbg !3877
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3893
  call void @llvm.dbg.value(metadata i32 %21, metadata !3876, metadata !DIExpression()), !dbg !3877
  %22 = icmp eq i32 %20, 0, !dbg !3896
  br i1 %22, label %24, label %23, !dbg !3894

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3898, !tbaa !861
  call void @llvm.dbg.value(metadata i32 -1, metadata !3876, metadata !DIExpression()), !dbg !3877
  br label %24, !dbg !3900

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3877
  ret i32 %25, !dbg !3901
}

; Function Attrs: nofree nounwind
declare !dbg !3902 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3903 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3904 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3905 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3908 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3946, metadata !DIExpression()), !dbg !3947
  %2 = icmp eq ptr %0, null, !dbg !3948
  br i1 %2, label %6, label %3, !dbg !3950

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3951
  %5 = icmp eq i32 %4, 0, !dbg !3951
  br i1 %5, label %6, label %8, !dbg !3952

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3953
  br label %16, !dbg !3954

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3960
  %9 = load i32, ptr %0, align 8, !dbg !3962, !tbaa !3814
  %10 = and i32 %9, 256, !dbg !3964
  %11 = icmp eq i32 %10, 0, !dbg !3964
  br i1 %11, label %14, label %12, !dbg !3965

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3966
  br label %14, !dbg !3966

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3967
  br label %16, !dbg !3968

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3947
  ret i32 %17, !dbg !3969
}

; Function Attrs: nofree nounwind
declare !dbg !3970 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3971 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4010, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 %1, metadata !4011, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %2, metadata !4012, metadata !DIExpression()), !dbg !4016
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4017
  %5 = load ptr, ptr %4, align 8, !dbg !4017, !tbaa !4018
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4019
  %7 = load ptr, ptr %6, align 8, !dbg !4019, !tbaa !4020
  %8 = icmp eq ptr %5, %7, !dbg !4021
  br i1 %8, label %9, label %27, !dbg !4022

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4023
  %11 = load ptr, ptr %10, align 8, !dbg !4023, !tbaa !1316
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4024
  %13 = load ptr, ptr %12, align 8, !dbg !4024, !tbaa !4025
  %14 = icmp eq ptr %11, %13, !dbg !4026
  br i1 %14, label %15, label %27, !dbg !4027

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4028
  %17 = load ptr, ptr %16, align 8, !dbg !4028, !tbaa !4029
  %18 = icmp eq ptr %17, null, !dbg !4030
  br i1 %18, label %19, label %27, !dbg !4031

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4032
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %21, metadata !4013, metadata !DIExpression()), !dbg !4034
  %22 = icmp eq i64 %21, -1, !dbg !4035
  br i1 %22, label %29, label %23, !dbg !4037

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4038, !tbaa !3814
  %25 = and i32 %24, -17, !dbg !4038
  store i32 %25, ptr %0, align 8, !dbg !4038, !tbaa !3814
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4039
  store i64 %21, ptr %26, align 8, !dbg !4040, !tbaa !4041
  br label %29, !dbg !4042

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4043
  br label %29, !dbg !4044

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4016
  ret i32 %30, !dbg !4045
}

; Function Attrs: nofree nounwind
declare !dbg !4046 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4049 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4054, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr %1, metadata !4055, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i64 %2, metadata !4056, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr %3, metadata !4057, metadata !DIExpression()), !dbg !4059
  %5 = icmp eq ptr %1, null, !dbg !4060
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4062
  %7 = select i1 %5, ptr @.str.135, ptr %1, !dbg !4062
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %8, metadata !4056, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr %7, metadata !4055, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr %6, metadata !4054, metadata !DIExpression()), !dbg !4059
  %9 = icmp eq ptr %3, null, !dbg !4063
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4065
  call void @llvm.dbg.value(metadata ptr %10, metadata !4057, metadata !DIExpression()), !dbg !4059
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !4066
  call void @llvm.dbg.value(metadata i64 %11, metadata !4058, metadata !DIExpression()), !dbg !4059
  %12 = icmp ult i64 %11, -3, !dbg !4067
  br i1 %12, label %13, label %17, !dbg !4069

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !4070
  %15 = icmp eq i32 %14, 0, !dbg !4070
  br i1 %15, label %16, label %29, !dbg !4071

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4072, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata ptr %10, metadata !4079, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 0, metadata !4082, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 8, metadata !4083, metadata !DIExpression()), !dbg !4084
  store i64 0, ptr %10, align 1, !dbg !4086
  br label %29, !dbg !4087

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4088
  br i1 %18, label %19, label %20, !dbg !4090

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !4091
  unreachable, !dbg !4091

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4092

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !4094
  br i1 %23, label %29, label %24, !dbg !4095

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4096
  br i1 %25, label %29, label %26, !dbg !4099

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4100, !tbaa !870
  %28 = zext i8 %27 to i32, !dbg !4101
  store i32 %28, ptr %6, align 4, !dbg !4102, !tbaa !861
  br label %29, !dbg !4103

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4059
  ret i64 %30, !dbg !4104
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4105 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !4111 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4113, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %1, metadata !4114, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %2, metadata !4115, metadata !DIExpression()), !dbg !4117
  %4 = icmp eq i64 %2, 0, !dbg !4118
  br i1 %4, label %8, label %5, !dbg !4118

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4118
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4118
  br i1 %7, label %13, label %8, !dbg !4118

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4117
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4117
  %9 = mul i64 %2, %1, !dbg !4118
  call void @llvm.dbg.value(metadata i64 %9, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %0, metadata !4120, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %9, metadata !4123, metadata !DIExpression()), !dbg !4124
  %10 = icmp eq i64 %9, 0, !dbg !4126
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4126
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4127
  br label %15, !dbg !4128

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4117
  %14 = tail call ptr @__errno_location() #39, !dbg !4129
  store i32 12, ptr %14, align 4, !dbg !4131, !tbaa !861
  br label %15, !dbg !4132

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4117
  ret ptr %16, !dbg !4133
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4134 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4138, metadata !DIExpression()), !dbg !4143
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4144
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4139, metadata !DIExpression()), !dbg !4145
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4146
  %4 = icmp eq i32 %3, 0, !dbg !4146
  br i1 %4, label %5, label %12, !dbg !4148

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4149, metadata !DIExpression()), !dbg !4153
  %6 = load i16, ptr %2, align 16, !dbg !4156
  %7 = icmp eq i16 %6, 67, !dbg !4156
  br i1 %7, label %11, label %8, !dbg !4157

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4149, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr @.str.1.140, metadata !4152, metadata !DIExpression()), !dbg !4158
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.140, i64 6), !dbg !4160
  %10 = icmp eq i32 %9, 0, !dbg !4161
  br i1 %10, label %11, label %12, !dbg !4162

11:                                               ; preds = %8, %5
  br label %12, !dbg !4163

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4143
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4164
  ret i1 %13, !dbg !4164
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4165 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4169, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %1, metadata !4170, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %2, metadata !4171, metadata !DIExpression()), !dbg !4172
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4173
  ret i32 %4, !dbg !4174
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4175 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4179, metadata !DIExpression()), !dbg !4180
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4181
  ret ptr %2, !dbg !4182
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4183 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4185, metadata !DIExpression()), !dbg !4187
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4188
  call void @llvm.dbg.value(metadata ptr %2, metadata !4186, metadata !DIExpression()), !dbg !4187
  ret ptr %2, !dbg !4189
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4192, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata ptr %1, metadata !4193, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i64 %2, metadata !4194, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i32 %0, metadata !4185, metadata !DIExpression()), !dbg !4200
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4202
  call void @llvm.dbg.value(metadata ptr %4, metadata !4186, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %4, metadata !4195, metadata !DIExpression()), !dbg !4199
  %5 = icmp eq ptr %4, null, !dbg !4203
  br i1 %5, label %6, label %9, !dbg !4204

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4205
  br i1 %7, label %19, label %8, !dbg !4208

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4209, !tbaa !870
  br label %19, !dbg !4210

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %10, metadata !4196, metadata !DIExpression()), !dbg !4212
  %11 = icmp ult i64 %10, %2, !dbg !4213
  br i1 %11, label %12, label %14, !dbg !4215

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4216
  call void @llvm.dbg.value(metadata ptr %1, metadata !4218, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata ptr %4, metadata !4221, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %13, metadata !4222, metadata !DIExpression()), !dbg !4223
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4225
  br label %19, !dbg !4226

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4227
  br i1 %15, label %19, label %16, !dbg !4230

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4231
  call void @llvm.dbg.value(metadata ptr %1, metadata !4218, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata ptr %4, metadata !4221, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i64 %17, metadata !4222, metadata !DIExpression()), !dbg !4233
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4235
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4236
  store i8 0, ptr %18, align 1, !dbg !4237, !tbaa !870
  br label %19, !dbg !4238

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4239
  ret i32 %20, !dbg !4240
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!66, !701, !374, !378, !393, !669, !703, !705, !445, !459, !507, !714, !661, !721, !755, !757, !759, !761, !763, !685, !765, !768, !772, !774}
!llvm.ident = !{!776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776}
!llvm.module.flags = !{!777, !778, !779, !780, !781, !782}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mkfifo.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0ee63ed749703cce6fd462844f0b7c3f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!72 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!73 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !189)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!392 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !393, file: !394, line: 66, type: !440, isLocal: false, isDefinition: true)
!393 = distinct !DICompileUnit(language: DW_LANG_C11, file: !394, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, globals: !396, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!395 = !{!106, !113}
!396 = !{!397, !399, !419, !421, !423, !425, !391, !427, !429, !431, !433, !438}
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !394, line: 272, type: !244, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "old_file_name", scope: !401, file: !394, line: 304, type: !111, isLocal: true, isDefinition: true)
!401 = distinct !DISubprogram(name: "verror_at_line", scope: !394, file: !394, line: 298, type: !402, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !412)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !70, !70, !111, !76, !111, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !406)
!406 = !{!407, !409, !410, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !405, file: !408, baseType: !76, size: 32)
!408 = !DIFile(filename: "lib/error.c", directory: "/src")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !405, file: !408, baseType: !76, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !405, file: !408, baseType: !106, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !405, file: !408, baseType: !106, size: 64, offset: 128)
!412 = !{!413, !414, !415, !416, !417, !418}
!413 = !DILocalVariable(name: "status", arg: 1, scope: !401, file: !394, line: 298, type: !70)
!414 = !DILocalVariable(name: "errnum", arg: 2, scope: !401, file: !394, line: 298, type: !70)
!415 = !DILocalVariable(name: "file_name", arg: 3, scope: !401, file: !394, line: 298, type: !111)
!416 = !DILocalVariable(name: "line_number", arg: 4, scope: !401, file: !394, line: 298, type: !76)
!417 = !DILocalVariable(name: "message", arg: 5, scope: !401, file: !394, line: 298, type: !111)
!418 = !DILocalVariable(name: "args", arg: 6, scope: !401, file: !394, line: 298, type: !404)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "old_line_number", scope: !401, file: !394, line: 305, type: !76, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !394, line: 338, type: !61, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !394, line: 346, type: !280, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !394, line: 346, type: !258, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "error_message_count", scope: !393, file: !394, line: 69, type: !76, isLocal: false, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !393, file: !394, line: 295, type: !70, isLocal: false, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !394, line: 208, type: !19, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !394, line: 208, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 21)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !394, line: 214, type: !244, isLocal: true, isDefinition: true)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null}
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "program_name", scope: !445, file: !446, line: 31, type: !111, isLocal: false, isDefinition: true)
!445 = distinct !DICompileUnit(language: DW_LANG_C11, file: !446, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !447, globals: !448, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!447 = !{!105}
!448 = !{!443, !449, !451}
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !446, line: 46, type: !280, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !446, line: 49, type: !61, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "utf07FF", scope: !455, file: !456, line: 46, type: !483, isLocal: true, isDefinition: true)
!455 = distinct !DISubprogram(name: "proper_name_lite", scope: !456, file: !456, line: 38, type: !457, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !461)
!456 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!457 = !DISubroutineType(types: !458)
!458 = !{!111, !111, !111}
!459 = distinct !DICompileUnit(language: DW_LANG_C11, file: !456, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !460, splitDebugInlining: false, nameTableKind: None)
!460 = !{!453}
!461 = !{!462, !463, !464, !465, !470}
!462 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !455, file: !456, line: 38, type: !111)
!463 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !455, file: !456, line: 38, type: !111)
!464 = !DILocalVariable(name: "translation", scope: !455, file: !456, line: 40, type: !111)
!465 = !DILocalVariable(name: "w", scope: !455, file: !456, line: 47, type: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !467, line: 37, baseType: !468)
!467 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !211, line: 57, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !211, line: 42, baseType: !76)
!470 = !DILocalVariable(name: "mbs", scope: !455, file: !456, line: 48, type: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !472, line: 6, baseType: !473)
!472 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !474, line: 21, baseType: !475)
!474 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 13, size: 64, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !475, file: !474, line: 15, baseType: !70, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !475, file: !474, line: 20, baseType: !479, size: 32, offset: 32)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !474, line: 16, size: 32, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !479, file: !474, line: 18, baseType: !76, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !479, file: !474, line: 19, baseType: !61, size: 32)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 16, elements: !259)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !486, line: 78, type: !280, isLocal: true, isDefinition: true)
!486 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !486, line: 79, type: !253, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !486, line: 80, type: !136, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !486, line: 81, type: !136, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !486, line: 82, type: !233, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !486, line: 83, type: !258, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !486, line: 84, type: !280, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !486, line: 85, type: !19, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !486, line: 86, type: !19, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !486, line: 87, type: !280, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !507, file: !486, line: 76, type: !579, isLocal: false, isDefinition: true)
!507 = distinct !DICompileUnit(language: DW_LANG_C11, file: !486, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !508, retainedTypes: !514, globals: !515, splitDebugInlining: false, nameTableKind: None)
!508 = !{!74, !509, !89}
!509 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !75, line: 254, baseType: !76, size: 32, elements: !510)
!510 = !{!511, !512, !513}
!511 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!512 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!513 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!514 = !{!70, !107, !108}
!515 = !{!484, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !516, !520, !530, !532, !537, !539, !541, !543, !545, !568, !575, !577}
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !507, file: !486, line: 92, type: !518, isLocal: false, isDefinition: true)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 320, elements: !52)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !507, file: !486, line: 1040, type: !522, isLocal: false, isDefinition: true)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !486, line: 56, size: 448, elements: !523)
!523 = !{!524, !525, !526, !528, !529}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !522, file: !486, line: 59, baseType: !74, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !486, line: 62, baseType: !70, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !522, file: !486, line: 66, baseType: !527, size: 256, offset: 64)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !281)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !522, file: !486, line: 69, baseType: !111, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !522, file: !486, line: 72, baseType: !111, size: 64, offset: 384)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !507, file: !486, line: 107, type: !522, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "slot0", scope: !507, file: !486, line: 831, type: !534, isLocal: true, isDefinition: true)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 256)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !486, line: 321, type: !258, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !486, line: 357, type: !258, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !486, line: 358, type: !258, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !486, line: 199, type: !19, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "quote", scope: !547, file: !486, line: 228, type: !566, isLocal: true, isDefinition: true)
!547 = distinct !DISubprogram(name: "gettext_quote", scope: !486, file: !486, line: 197, type: !548, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!111, !111, !74}
!550 = !{!551, !552, !553, !554, !555}
!551 = !DILocalVariable(name: "msgid", arg: 1, scope: !547, file: !486, line: 197, type: !111)
!552 = !DILocalVariable(name: "s", arg: 2, scope: !547, file: !486, line: 197, type: !74)
!553 = !DILocalVariable(name: "translation", scope: !547, file: !486, line: 199, type: !111)
!554 = !DILocalVariable(name: "w", scope: !547, file: !486, line: 229, type: !466)
!555 = !DILocalVariable(name: "mbs", scope: !547, file: !486, line: 230, type: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !472, line: 6, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !474, line: 21, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 13, size: 64, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !558, file: !474, line: 15, baseType: !70, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !558, file: !474, line: 20, baseType: !562, size: 32, offset: 32)
!562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !558, file: !474, line: 16, size: 32, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !562, file: !474, line: 18, baseType: !76, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !562, file: !474, line: 19, baseType: !61, size: 32)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !567)
!567 = !{!260, !63}
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "slotvec", scope: !507, file: !486, line: 834, type: !570, isLocal: true, isDefinition: true)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !486, line: 823, size: 128, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !571, file: !486, line: 825, baseType: !108, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !571, file: !486, line: 826, baseType: !105, size: 64, offset: 64)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "nslots", scope: !507, file: !486, line: 832, type: !70, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "slotvec0", scope: !507, file: !486, line: 833, type: !571, isLocal: true, isDefinition: true)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 704, elements: !581)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!581 = !{!582}
!582 = !DISubrange(count: 11)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !585, line: 67, type: !348, isLocal: true, isDefinition: true)
!585 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !585, line: 69, type: !19, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !585, line: 83, type: !19, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !585, line: 83, type: !61, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !585, line: 85, type: !258, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !585, line: 88, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 171)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !585, line: 88, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 34)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !585, line: 105, type: !127, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !585, line: 109, type: !608, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 23)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !585, line: 113, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 28)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !585, line: 120, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 32)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !585, line: 127, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 36)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !585, line: 134, type: !302, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !585, line: 142, type: !141, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !585, line: 150, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 48)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !585, line: 159, type: !637, isLocal: true, isDefinition: true)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 52)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !585, line: 170, type: !642, isLocal: true, isDefinition: true)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 60)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !585, line: 248, type: !233, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !585, line: 248, type: !146, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !585, line: 254, type: !233, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !585, line: 254, type: !122, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !585, line: 254, type: !302, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !585, line: 259, type: !3, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !585, line: 259, type: !151, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !661, file: !662, line: 26, type: !664, isLocal: false, isDefinition: true)
!661 = distinct !DICompileUnit(language: DW_LANG_C11, file: !662, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!663 = !{!659}
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 376, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 47)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(name: "exit_failure", scope: !669, file: !670, line: 24, type: !672, isLocal: false, isDefinition: true)
!669 = distinct !DICompileUnit(language: DW_LANG_C11, file: !670, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !671, splitDebugInlining: false, nameTableKind: None)
!670 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!671 = !{!667}
!672 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !675, line: 34, type: !267, isLocal: true, isDefinition: true)
!675 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !675, line: 34, type: !19, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !675, line: 34, type: !297, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !682, line: 108, type: !46, isLocal: true, isDefinition: true)
!682 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "internal_state", scope: !685, file: !682, line: 97, type: !688, isLocal: true, isDefinition: true)
!685 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !686, globals: !687, splitDebugInlining: false, nameTableKind: None)
!686 = !{!106, !108, !113}
!687 = !{!680, !683}
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !472, line: 6, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !474, line: 21, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 13, size: 64, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !690, file: !474, line: 15, baseType: !70, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !690, file: !474, line: 20, baseType: !694, size: 32, offset: 32)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !474, line: 16, size: 32, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !694, file: !474, line: 18, baseType: !76, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !694, file: !474, line: 19, baseType: !61, size: 32)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !700, line: 35, type: !253, isLocal: true, isDefinition: true)
!700 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!705 = distinct !DICompileUnit(language: DW_LANG_C11, file: !706, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !707, splitDebugInlining: false, nameTableKind: None)
!706 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!707 = !{!708}
!708 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !706, line: 78, baseType: !76, size: 32, elements: !709)
!709 = !{!710, !711, !712, !713}
!710 = !DIEnumerator(name: "MODE_DONE", value: 0)
!711 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!712 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!713 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !585, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !715, retainedTypes: !719, globals: !720, splitDebugInlining: false, nameTableKind: None)
!715 = !{!716}
!716 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !585, line: 40, baseType: !76, size: 32, elements: !717)
!717 = !{!718}
!718 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!719 = !{!106}
!720 = !{!583, !586, !588, !590, !592, !594, !599, !604, !606, !611, !616, !621, !626, !628, !630, !635, !640, !645, !647, !649, !651, !653, !655, !657}
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !723, retainedTypes: !754, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!723 = !{!724, !736}
!724 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !725, file: !722, line: 188, baseType: !76, size: 32, elements: !734)
!725 = distinct !DISubprogram(name: "x2nrealloc", scope: !722, file: !722, line: 176, type: !726, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !729)
!726 = !DISubroutineType(types: !727)
!727 = !{!106, !106, !728, !108}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!729 = !{!730, !731, !732, !733}
!730 = !DILocalVariable(name: "p", arg: 1, scope: !725, file: !722, line: 176, type: !106)
!731 = !DILocalVariable(name: "pn", arg: 2, scope: !725, file: !722, line: 176, type: !728)
!732 = !DILocalVariable(name: "s", arg: 3, scope: !725, file: !722, line: 176, type: !108)
!733 = !DILocalVariable(name: "n", scope: !725, file: !722, line: 178, type: !108)
!734 = !{!735}
!735 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!736 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !737, file: !722, line: 228, baseType: !76, size: 32, elements: !734)
!737 = distinct !DISubprogram(name: "xpalloc", scope: !722, file: !722, line: 223, type: !738, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !744)
!738 = !DISubroutineType(types: !739)
!739 = !{!106, !106, !740, !741, !743, !741}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !742, line: 130, baseType: !743)
!742 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !109, line: 35, baseType: !212)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !753}
!745 = !DILocalVariable(name: "pa", arg: 1, scope: !737, file: !722, line: 223, type: !106)
!746 = !DILocalVariable(name: "pn", arg: 2, scope: !737, file: !722, line: 223, type: !740)
!747 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !737, file: !722, line: 223, type: !741)
!748 = !DILocalVariable(name: "n_max", arg: 4, scope: !737, file: !722, line: 223, type: !743)
!749 = !DILocalVariable(name: "s", arg: 5, scope: !737, file: !722, line: 223, type: !741)
!750 = !DILocalVariable(name: "n0", scope: !737, file: !722, line: 230, type: !741)
!751 = !DILocalVariable(name: "n", scope: !737, file: !722, line: 237, type: !741)
!752 = !DILocalVariable(name: "nbytes", scope: !737, file: !722, line: 248, type: !741)
!753 = !DILocalVariable(name: "adjusted_nbytes", scope: !737, file: !722, line: 252, type: !741)
!754 = !{!105, !106, !171, !212, !110}
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !756, splitDebugInlining: false, nameTableKind: None)
!756 = !{!673, !676, !678}
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!767 = !{!171, !110, !106}
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !769, splitDebugInlining: false, nameTableKind: None)
!769 = !{!770, !698}
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !700, line: 35, type: !258, isLocal: true, isDefinition: true)
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!776 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!777 = !{i32 7, !"Dwarf Version", i32 5}
!778 = !{i32 2, !"Debug Info Version", i32 3}
!779 = !{i32 1, !"wchar_size", i32 4}
!780 = !{i32 8, !"PIC Level", i32 2}
!781 = !{i32 7, !"PIE Level", i32 2}
!782 = !{i32 7, !"uwtable", i32 2}
!783 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 46, type: !784, scopeLine: 47, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !70}
!786 = !{!787}
!787 = !DILocalVariable(name: "status", arg: 1, scope: !783, file: !2, line: 46, type: !70)
!788 = !DILocation(line: 0, scope: !783)
!789 = !DILocation(line: 48, column: 14, scope: !790)
!790 = distinct !DILexicalBlock(scope: !783, file: !2, line: 48, column: 7)
!791 = !DILocation(line: 48, column: 7, scope: !783)
!792 = !DILocation(line: 49, column: 5, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !2, line: 49, column: 5)
!794 = !{!795, !795, i64 0}
!795 = !{!"any pointer", !796, i64 0}
!796 = !{!"omnipotent char", !797, i64 0}
!797 = !{!"Simple C/C++ TBAA"}
!798 = !DILocation(line: 52, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !790, file: !2, line: 51, column: 5)
!800 = !DILocation(line: 53, column: 7, scope: !799)
!801 = !DILocation(line: 736, column: 3, scope: !802, inlinedAt: !804)
!802 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !69, file: !69, line: 734, type: !441, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !803)
!803 = !{}
!804 = distinct !DILocation(line: 57, column: 7, scope: !799)
!805 = !DILocation(line: 59, column: 7, scope: !799)
!806 = !DILocation(line: 63, column: 7, scope: !799)
!807 = !DILocation(line: 67, column: 7, scope: !799)
!808 = !DILocation(line: 72, column: 7, scope: !799)
!809 = !DILocation(line: 73, column: 7, scope: !799)
!810 = !DILocalVariable(name: "program", arg: 1, scope: !811, file: !69, line: 836, type: !111)
!811 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !812, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !111}
!814 = !{!810, !815, !822, !823, !825, !826}
!815 = !DILocalVariable(name: "infomap", scope: !811, file: !69, line: 838, type: !816)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 896, elements: !20)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !811, file: !69, line: 838, size: 128, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !818, file: !69, line: 838, baseType: !111, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !818, file: !69, line: 838, baseType: !111, size: 64, offset: 64)
!822 = !DILocalVariable(name: "node", scope: !811, file: !69, line: 848, type: !111)
!823 = !DILocalVariable(name: "map_prog", scope: !811, file: !69, line: 849, type: !824)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!825 = !DILocalVariable(name: "lc_messages", scope: !811, file: !69, line: 861, type: !111)
!826 = !DILocalVariable(name: "url_program", scope: !811, file: !69, line: 874, type: !111)
!827 = !DILocation(line: 0, scope: !811, inlinedAt: !828)
!828 = distinct !DILocation(line: 74, column: 7, scope: !799)
!829 = !DILocation(line: 857, column: 3, scope: !811, inlinedAt: !828)
!830 = !DILocation(line: 861, column: 29, scope: !811, inlinedAt: !828)
!831 = !DILocation(line: 862, column: 7, scope: !832, inlinedAt: !828)
!832 = distinct !DILexicalBlock(scope: !811, file: !69, line: 862, column: 7)
!833 = !DILocation(line: 862, column: 19, scope: !832, inlinedAt: !828)
!834 = !DILocation(line: 862, column: 22, scope: !832, inlinedAt: !828)
!835 = !DILocation(line: 862, column: 7, scope: !811, inlinedAt: !828)
!836 = !DILocation(line: 868, column: 7, scope: !837, inlinedAt: !828)
!837 = distinct !DILexicalBlock(scope: !832, file: !69, line: 863, column: 5)
!838 = !DILocation(line: 870, column: 5, scope: !837, inlinedAt: !828)
!839 = !DILocation(line: 875, column: 3, scope: !811, inlinedAt: !828)
!840 = !DILocation(line: 877, column: 3, scope: !811, inlinedAt: !828)
!841 = !DILocation(line: 76, column: 3, scope: !783)
!842 = !DISubprogram(name: "dcgettext", scope: !843, file: !843, line: 51, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!843 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!844 = !DISubroutineType(types: !845)
!845 = !{!105, !111, !111, !70}
!846 = !DISubprogram(name: "__fprintf_chk", scope: !847, file: !847, line: 93, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!847 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!848 = !DISubroutineType(types: !849)
!849 = !{!70, !850, !70, !851, null}
!850 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!851 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!852 = !DISubprogram(name: "__printf_chk", scope: !847, file: !847, line: 95, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!853 = !DISubroutineType(types: !854)
!854 = !{!70, !70, !851, null}
!855 = !DISubprogram(name: "fputs_unlocked", scope: !856, file: !856, line: 691, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!856 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!857 = !DISubroutineType(types: !858)
!858 = !{!70, !851, !850}
!859 = !DILocation(line: 0, scope: !161)
!860 = !DILocation(line: 581, column: 7, scope: !169)
!861 = !{!862, !862, i64 0}
!862 = !{!"int", !796, i64 0}
!863 = !DILocation(line: 581, column: 19, scope: !169)
!864 = !DILocation(line: 581, column: 7, scope: !161)
!865 = !DILocation(line: 585, column: 26, scope: !168)
!866 = !DILocation(line: 0, scope: !168)
!867 = !DILocation(line: 586, column: 23, scope: !168)
!868 = !DILocation(line: 586, column: 28, scope: !168)
!869 = !DILocation(line: 586, column: 32, scope: !168)
!870 = !{!796, !796, i64 0}
!871 = !DILocation(line: 586, column: 38, scope: !168)
!872 = !DILocalVariable(name: "__s1", arg: 1, scope: !873, file: !874, line: 1359, type: !111)
!873 = distinct !DISubprogram(name: "streq", scope: !874, file: !874, line: 1359, type: !875, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !877)
!874 = !DIFile(filename: "./lib/string.h", directory: "/src")
!875 = !DISubroutineType(types: !876)
!876 = !{!171, !111, !111}
!877 = !{!872, !878}
!878 = !DILocalVariable(name: "__s2", arg: 2, scope: !873, file: !874, line: 1359, type: !111)
!879 = !DILocation(line: 0, scope: !873, inlinedAt: !880)
!880 = distinct !DILocation(line: 586, column: 41, scope: !168)
!881 = !DILocation(line: 1361, column: 11, scope: !873, inlinedAt: !880)
!882 = !DILocation(line: 1361, column: 10, scope: !873, inlinedAt: !880)
!883 = !DILocation(line: 586, column: 19, scope: !168)
!884 = !DILocation(line: 587, column: 5, scope: !168)
!885 = !DILocation(line: 588, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !161, file: !69, line: 588, column: 7)
!887 = !DILocation(line: 588, column: 7, scope: !161)
!888 = !DILocation(line: 590, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !69, line: 589, column: 5)
!890 = !DILocation(line: 591, column: 7, scope: !889)
!891 = !DILocation(line: 595, column: 37, scope: !161)
!892 = !DILocation(line: 595, column: 35, scope: !161)
!893 = !DILocation(line: 596, column: 29, scope: !161)
!894 = !DILocation(line: 597, column: 8, scope: !177)
!895 = !DILocation(line: 597, column: 7, scope: !161)
!896 = !DILocation(line: 604, column: 24, scope: !176)
!897 = !DILocation(line: 604, column: 12, scope: !177)
!898 = !DILocation(line: 0, scope: !175)
!899 = !DILocation(line: 610, column: 16, scope: !175)
!900 = !DILocation(line: 610, column: 7, scope: !175)
!901 = !DILocation(line: 611, column: 21, scope: !175)
!902 = !{!903, !903, i64 0}
!903 = !{!"short", !796, i64 0}
!904 = !DILocation(line: 611, column: 19, scope: !175)
!905 = !DILocation(line: 611, column: 16, scope: !175)
!906 = !DILocation(line: 610, column: 30, scope: !175)
!907 = distinct !{!907, !900, !901, !908}
!908 = !{!"llvm.loop.mustprogress"}
!909 = !DILocation(line: 612, column: 18, scope: !910)
!910 = distinct !DILexicalBlock(scope: !175, file: !69, line: 612, column: 11)
!911 = !DILocation(line: 612, column: 11, scope: !175)
!912 = !DILocation(line: 618, column: 5, scope: !175)
!913 = !DILocation(line: 620, column: 23, scope: !161)
!914 = !DILocation(line: 625, column: 39, scope: !161)
!915 = !DILocation(line: 626, column: 3, scope: !161)
!916 = !DILocation(line: 626, column: 10, scope: !161)
!917 = !DILocation(line: 626, column: 21, scope: !161)
!918 = !DILocation(line: 628, column: 44, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !69, line: 628, column: 11)
!920 = distinct !DILexicalBlock(scope: !161, file: !69, line: 627, column: 5)
!921 = !DILocation(line: 628, column: 32, scope: !919)
!922 = !DILocation(line: 628, column: 49, scope: !919)
!923 = !DILocation(line: 628, column: 11, scope: !920)
!924 = !DILocation(line: 630, column: 11, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !69, line: 630, column: 11)
!926 = !DILocation(line: 630, column: 11, scope: !920)
!927 = !DILocation(line: 632, column: 26, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !69, line: 632, column: 15)
!929 = distinct !DILexicalBlock(scope: !925, file: !69, line: 631, column: 9)
!930 = !DILocation(line: 632, column: 34, scope: !928)
!931 = !DILocation(line: 632, column: 37, scope: !928)
!932 = !DILocation(line: 632, column: 15, scope: !929)
!933 = !DILocation(line: 636, column: 16, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !69, line: 636, column: 15)
!935 = !DILocation(line: 636, column: 29, scope: !934)
!936 = !DILocation(line: 640, column: 16, scope: !920)
!937 = distinct !{!937, !915, !938, !908}
!938 = !DILocation(line: 641, column: 5, scope: !161)
!939 = !DILocation(line: 644, column: 3, scope: !161)
!940 = !DILocation(line: 0, scope: !873, inlinedAt: !941)
!941 = distinct !DILocation(line: 648, column: 31, scope: !161)
!942 = !DILocation(line: 0, scope: !873, inlinedAt: !943)
!943 = distinct !DILocation(line: 649, column: 31, scope: !161)
!944 = !DILocation(line: 0, scope: !873, inlinedAt: !945)
!945 = distinct !DILocation(line: 650, column: 31, scope: !161)
!946 = !DILocation(line: 0, scope: !873, inlinedAt: !947)
!947 = distinct !DILocation(line: 651, column: 31, scope: !161)
!948 = !DILocation(line: 0, scope: !873, inlinedAt: !949)
!949 = distinct !DILocation(line: 652, column: 31, scope: !161)
!950 = !DILocation(line: 0, scope: !873, inlinedAt: !951)
!951 = distinct !DILocation(line: 653, column: 31, scope: !161)
!952 = !DILocation(line: 0, scope: !873, inlinedAt: !953)
!953 = distinct !DILocation(line: 654, column: 31, scope: !161)
!954 = !DILocation(line: 0, scope: !873, inlinedAt: !955)
!955 = distinct !DILocation(line: 655, column: 31, scope: !161)
!956 = !DILocation(line: 0, scope: !873, inlinedAt: !957)
!957 = distinct !DILocation(line: 656, column: 31, scope: !161)
!958 = !DILocation(line: 0, scope: !873, inlinedAt: !959)
!959 = distinct !DILocation(line: 657, column: 31, scope: !161)
!960 = !DILocation(line: 663, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !161, file: !69, line: 663, column: 7)
!962 = !DILocation(line: 664, column: 7, scope: !961)
!963 = !DILocation(line: 664, column: 10, scope: !961)
!964 = !DILocation(line: 663, column: 7, scope: !161)
!965 = !DILocation(line: 669, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !69, line: 665, column: 5)
!967 = !DILocation(line: 671, column: 5, scope: !966)
!968 = !DILocation(line: 676, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !961, file: !69, line: 673, column: 5)
!970 = !DILocation(line: 679, column: 3, scope: !161)
!971 = !DILocation(line: 683, column: 3, scope: !161)
!972 = !DILocation(line: 686, column: 3, scope: !161)
!973 = !DILocation(line: 688, column: 3, scope: !161)
!974 = !DILocation(line: 691, column: 3, scope: !161)
!975 = !DILocation(line: 695, column: 3, scope: !161)
!976 = !DILocation(line: 696, column: 1, scope: !161)
!977 = !DISubprogram(name: "setlocale", scope: !978, file: !978, line: 122, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!978 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!979 = !DISubroutineType(types: !980)
!980 = !{!105, !70, !111}
!981 = !DISubprogram(name: "strncmp", scope: !982, file: !982, line: 159, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!982 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!983 = !DISubroutineType(types: !984)
!984 = !{!70, !111, !111, !108}
!985 = !DISubprogram(name: "exit", scope: !986, file: !986, line: 624, type: !784, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !803)
!986 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!987 = !DISubprogram(name: "getenv", scope: !986, file: !986, line: 641, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!988 = !DISubroutineType(types: !989)
!989 = !{!105, !111}
!990 = !DISubprogram(name: "strcmp", scope: !982, file: !982, line: 156, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!991 = !DISubroutineType(types: !992)
!992 = !{!70, !111, !111}
!993 = !DISubprogram(name: "strspn", scope: !982, file: !982, line: 297, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!994 = !DISubroutineType(types: !995)
!995 = !{!110, !111, !111}
!996 = !DISubprogram(name: "strchr", scope: !982, file: !982, line: 246, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!997 = !DISubroutineType(types: !998)
!998 = !{!105, !111, !70}
!999 = !DISubprogram(name: "__ctype_b_loc", scope: !90, file: !90, line: 79, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1005 = !DISubprogram(name: "strcspn", scope: !982, file: !982, line: 293, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1006 = !DISubprogram(name: "fwrite_unlocked", scope: !856, file: !856, line: 704, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!108, !1009, !108, !108, !850}
!1009 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1012 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 80, type: !1013, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1016)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!70, !70, !1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1025, !1026, !1029, !1033, !1039, !1040}
!1017 = !DILocalVariable(name: "argc", arg: 1, scope: !1012, file: !2, line: 80, type: !70)
!1018 = !DILocalVariable(name: "argv", arg: 2, scope: !1012, file: !2, line: 80, type: !1015)
!1019 = !DILocalVariable(name: "specified_mode", scope: !1012, file: !2, line: 82, type: !111)
!1020 = !DILocalVariable(name: "scontext", scope: !1012, file: !2, line: 83, type: !111)
!1021 = !DILocalVariable(name: "set_security_context", scope: !1012, file: !2, line: 84, type: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1024, line: 53, flags: DIFlagFwdDecl)
!1024 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1025 = !DILocalVariable(name: "optc", scope: !1012, file: !2, line: 94, type: !70)
!1026 = !DILocalVariable(name: "ret", scope: !1027, file: !2, line: 142, type: !70)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 141, column: 5)
!1028 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 140, column: 7)
!1029 = !DILocalVariable(name: "newmode", scope: !1012, file: !2, line: 154, type: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1031, line: 69, baseType: !1032)
!1031 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !211, line: 150, baseType: !76)
!1033 = !DILocalVariable(name: "change", scope: !1034, file: !2, line: 157, type: !1036)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 156, column: 5)
!1035 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 155, column: 7)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1038, line: 35, flags: DIFlagFwdDecl)
!1038 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1039 = !DILocalVariable(name: "umask_value", scope: !1034, file: !2, line: 160, type: !1030)
!1040 = !DILocalVariable(name: "exit_status", scope: !1012, file: !2, line: 169, type: !70)
!1041 = !DILocation(line: 0, scope: !1012)
!1042 = !DILocation(line: 87, column: 21, scope: !1012)
!1043 = !DILocation(line: 87, column: 3, scope: !1012)
!1044 = !DILocation(line: 88, column: 3, scope: !1012)
!1045 = !DILocation(line: 89, column: 3, scope: !1012)
!1046 = !DILocation(line: 90, column: 3, scope: !1012)
!1047 = !DILocation(line: 92, column: 3, scope: !1012)
!1048 = !DILocation(line: 95, column: 3, scope: !1012)
!1049 = !DILocation(line: 95, column: 18, scope: !1012)
!1050 = !DILocation(line: 100, column: 28, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 98, column: 9)
!1052 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 96, column: 5)
!1053 = !DILocation(line: 101, column: 11, scope: !1051)
!1054 = distinct !{!1054, !1048, !1055, !908}
!1055 = !DILocation(line: 132, column: 5, scope: !1012)
!1056 = !DILocation(line: 120, column: 20, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 120, column: 20)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 108, column: 20)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 103, column: 15)
!1060 = !DILocation(line: 120, column: 20, scope: !1058)
!1061 = !DILocation(line: 122, column: 15, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 121, column: 13)
!1063 = !DILocation(line: 125, column: 13, scope: !1062)
!1064 = !DILocation(line: 127, column: 9, scope: !1051)
!1065 = !DILocation(line: 128, column: 9, scope: !1051)
!1066 = !DILocation(line: 130, column: 11, scope: !1051)
!1067 = !DILocation(line: 134, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 134, column: 7)
!1069 = !DILocation(line: 134, column: 14, scope: !1068)
!1070 = !DILocation(line: 134, column: 7, scope: !1012)
!1071 = !DILocation(line: 136, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 135, column: 5)
!1073 = !DILocation(line: 137, column: 7, scope: !1072)
!1074 = !DILocation(line: 155, column: 7, scope: !1035)
!1075 = !DILocation(line: 155, column: 7, scope: !1012)
!1076 = !DILocation(line: 157, column: 36, scope: !1034)
!1077 = !DILocation(line: 0, scope: !1034)
!1078 = !DILocation(line: 158, column: 12, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 158, column: 11)
!1080 = !DILocation(line: 158, column: 11, scope: !1034)
!1081 = !DILocation(line: 159, column: 9, scope: !1079)
!1082 = !DILocation(line: 160, column: 28, scope: !1034)
!1083 = !DILocation(line: 161, column: 7, scope: !1034)
!1084 = !DILocation(line: 162, column: 17, scope: !1034)
!1085 = !DILocation(line: 163, column: 7, scope: !1034)
!1086 = !DILocation(line: 164, column: 19, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 164, column: 11)
!1088 = !DILocation(line: 164, column: 11, scope: !1034)
!1089 = !DILocation(line: 170, column: 10, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 170, column: 3)
!1091 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 170, column: 3)
!1092 = !DILocation(line: 165, column: 9, scope: !1087)
!1093 = !DILocation(line: 170, column: 17, scope: !1090)
!1094 = !DILocation(line: 170, column: 3, scope: !1091)
!1095 = !DILocation(line: 174, column: 19, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 174, column: 11)
!1097 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 171, column: 5)
!1098 = !DILocation(line: 174, column: 11, scope: !1096)
!1099 = !DILocation(line: 174, column: 42, scope: !1096)
!1100 = !DILocation(line: 174, column: 11, scope: !1097)
!1101 = !DILocation(line: 179, column: 31, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 179, column: 16)
!1103 = !DILocation(line: 179, column: 47, scope: !1102)
!1104 = !DILocation(line: 179, column: 42, scope: !1102)
!1105 = !DILocation(line: 179, column: 34, scope: !1102)
!1106 = !DILocation(line: 179, column: 65, scope: !1102)
!1107 = !DILocation(line: 179, column: 16, scope: !1096)
!1108 = !DILocation(line: 0, scope: !1096)
!1109 = !DILocation(line: 170, column: 25, scope: !1090)
!1110 = distinct !{!1110, !1094, !1111, !908}
!1111 = !DILocation(line: 185, column: 5, scope: !1091)
!1112 = !DILocation(line: 187, column: 3, scope: !1012)
!1113 = !DISubprogram(name: "bindtextdomain", scope: !843, file: !843, line: 86, type: !1114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!105, !111, !111}
!1116 = !DISubprogram(name: "textdomain", scope: !843, file: !843, line: 82, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1117 = !DISubprogram(name: "atexit", scope: !986, file: !986, line: 602, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!70, !440}
!1120 = !DISubprogram(name: "getopt_long", scope: !362, file: !362, line: 66, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!70, !70, !1123, !111, !1125, !367}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1126 = !DISubprogram(name: "umask", scope: !1127, file: !1127, line: 380, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!1032, !1032}
!1130 = !DISubprogram(name: "free", scope: !986, file: !986, line: 555, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !106}
!1133 = !DISubprogram(name: "mkfifo", scope: !1127, file: !1127, line: 418, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!70, !111, !1032}
!1136 = !DISubprogram(name: "lchmod", scope: !1127, file: !1127, line: 359, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1137 = !DISubprogram(name: "__errno_location", scope: !1138, file: !1138, line: 37, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1138 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!367}
!1141 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !379, file: !379, line: 50, type: !812, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1142)
!1142 = !{!1143}
!1143 = !DILocalVariable(name: "file", arg: 1, scope: !1141, file: !379, line: 50, type: !111)
!1144 = !DILocation(line: 0, scope: !1141)
!1145 = !DILocation(line: 52, column: 13, scope: !1141)
!1146 = !DILocation(line: 53, column: 1, scope: !1141)
!1147 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !379, file: !379, line: 87, type: !1148, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !171}
!1150 = !{!1151}
!1151 = !DILocalVariable(name: "ignore", arg: 1, scope: !1147, file: !379, line: 87, type: !171)
!1152 = !DILocation(line: 0, scope: !1147)
!1153 = !DILocation(line: 89, column: 16, scope: !1147)
!1154 = !{!1155, !1155, i64 0}
!1155 = !{!"_Bool", !796, i64 0}
!1156 = !DILocation(line: 90, column: 1, scope: !1147)
!1157 = distinct !DISubprogram(name: "close_stdout", scope: !379, file: !379, line: 116, type: !441, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1158)
!1158 = !{!1159}
!1159 = !DILocalVariable(name: "write_error", scope: !1160, file: !379, line: 121, type: !111)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !379, line: 120, column: 5)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !379, line: 118, column: 7)
!1162 = !DILocation(line: 118, column: 21, scope: !1161)
!1163 = !DILocation(line: 118, column: 7, scope: !1161)
!1164 = !DILocation(line: 118, column: 29, scope: !1161)
!1165 = !DILocation(line: 119, column: 7, scope: !1161)
!1166 = !DILocation(line: 119, column: 12, scope: !1161)
!1167 = !{i8 0, i8 2}
!1168 = !DILocation(line: 119, column: 25, scope: !1161)
!1169 = !DILocation(line: 119, column: 28, scope: !1161)
!1170 = !DILocation(line: 119, column: 34, scope: !1161)
!1171 = !DILocation(line: 118, column: 7, scope: !1157)
!1172 = !DILocation(line: 121, column: 33, scope: !1160)
!1173 = !DILocation(line: 0, scope: !1160)
!1174 = !DILocation(line: 122, column: 11, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1160, file: !379, line: 122, column: 11)
!1176 = !DILocation(line: 0, scope: !1175)
!1177 = !DILocation(line: 122, column: 11, scope: !1160)
!1178 = !DILocation(line: 123, column: 9, scope: !1175)
!1179 = !DILocation(line: 126, column: 9, scope: !1175)
!1180 = !DILocation(line: 128, column: 14, scope: !1160)
!1181 = !DILocation(line: 128, column: 7, scope: !1160)
!1182 = !DILocation(line: 133, column: 42, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1157, file: !379, line: 133, column: 7)
!1184 = !DILocation(line: 133, column: 28, scope: !1183)
!1185 = !DILocation(line: 133, column: 50, scope: !1183)
!1186 = !DILocation(line: 133, column: 7, scope: !1157)
!1187 = !DILocation(line: 134, column: 12, scope: !1183)
!1188 = !DILocation(line: 134, column: 5, scope: !1183)
!1189 = !DILocation(line: 135, column: 1, scope: !1157)
!1190 = !DISubprogram(name: "_exit", scope: !1191, file: !1191, line: 624, type: !784, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1191 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1192 = distinct !DISubprogram(name: "verror", scope: !394, file: !394, line: 251, type: !1193, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !70, !70, !111, !404}
!1195 = !{!1196, !1197, !1198, !1199}
!1196 = !DILocalVariable(name: "status", arg: 1, scope: !1192, file: !394, line: 251, type: !70)
!1197 = !DILocalVariable(name: "errnum", arg: 2, scope: !1192, file: !394, line: 251, type: !70)
!1198 = !DILocalVariable(name: "message", arg: 3, scope: !1192, file: !394, line: 251, type: !111)
!1199 = !DILocalVariable(name: "args", arg: 4, scope: !1192, file: !394, line: 251, type: !404)
!1200 = !DILocation(line: 0, scope: !1192)
!1201 = !DILocation(line: 261, column: 3, scope: !1192)
!1202 = !DILocation(line: 265, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1192, file: !394, line: 265, column: 7)
!1204 = !DILocation(line: 265, column: 7, scope: !1192)
!1205 = !DILocation(line: 266, column: 5, scope: !1203)
!1206 = !DILocation(line: 272, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !394, line: 268, column: 5)
!1208 = !DILocation(line: 276, column: 3, scope: !1192)
!1209 = !DILocation(line: 282, column: 1, scope: !1192)
!1210 = distinct !DISubprogram(name: "flush_stdout", scope: !394, file: !394, line: 163, type: !441, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1211)
!1211 = !{!1212}
!1212 = !DILocalVariable(name: "stdout_fd", scope: !1210, file: !394, line: 166, type: !70)
!1213 = !DILocation(line: 0, scope: !1210)
!1214 = !DILocalVariable(name: "fd", arg: 1, scope: !1215, file: !394, line: 145, type: !70)
!1215 = distinct !DISubprogram(name: "is_open", scope: !394, file: !394, line: 145, type: !1216, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!70, !70}
!1218 = !{!1214}
!1219 = !DILocation(line: 0, scope: !1215, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 182, column: 25, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1210, file: !394, line: 182, column: 7)
!1222 = !DILocation(line: 157, column: 15, scope: !1215, inlinedAt: !1220)
!1223 = !DILocation(line: 157, column: 12, scope: !1215, inlinedAt: !1220)
!1224 = !DILocation(line: 182, column: 7, scope: !1210)
!1225 = !DILocation(line: 184, column: 5, scope: !1221)
!1226 = !DILocation(line: 185, column: 1, scope: !1210)
!1227 = distinct !DISubprogram(name: "error_tail", scope: !394, file: !394, line: 219, type: !1193, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1228)
!1228 = !{!1229, !1230, !1231, !1232}
!1229 = !DILocalVariable(name: "status", arg: 1, scope: !1227, file: !394, line: 219, type: !70)
!1230 = !DILocalVariable(name: "errnum", arg: 2, scope: !1227, file: !394, line: 219, type: !70)
!1231 = !DILocalVariable(name: "message", arg: 3, scope: !1227, file: !394, line: 219, type: !111)
!1232 = !DILocalVariable(name: "args", arg: 4, scope: !1227, file: !394, line: 219, type: !404)
!1233 = !DILocation(line: 0, scope: !1227)
!1234 = !DILocation(line: 229, column: 13, scope: !1227)
!1235 = !DILocalVariable(name: "__stream", arg: 1, scope: !1236, file: !847, line: 132, type: !1239)
!1236 = distinct !DISubprogram(name: "vfprintf", scope: !847, file: !847, line: 132, type: !1237, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1274)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!70, !1239, !851, !404}
!1239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1242, file: !188, line: 51, baseType: !70, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1242, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1242, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1242, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1242, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1242, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1242, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1242, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1242, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1242, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1242, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1242, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1242, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1242, file: !188, line: 70, baseType: !1258, size: 64, offset: 832)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1242, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1242, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1242, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1242, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1242, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1242, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1242, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1242, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1242, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1242, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1242, file: !188, line: 93, baseType: !1258, size: 64, offset: 1344)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1242, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1242, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1242, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1242, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!1274 = !{!1235, !1275, !1276}
!1275 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1236, file: !847, line: 133, type: !851)
!1276 = !DILocalVariable(name: "__ap", arg: 3, scope: !1236, file: !847, line: 133, type: !404)
!1277 = !DILocation(line: 0, scope: !1236, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 229, column: 3, scope: !1227)
!1279 = !DILocation(line: 135, column: 10, scope: !1236, inlinedAt: !1278)
!1280 = !DILocation(line: 232, column: 3, scope: !1227)
!1281 = !DILocation(line: 233, column: 7, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1227, file: !394, line: 233, column: 7)
!1283 = !DILocation(line: 233, column: 7, scope: !1227)
!1284 = !DILocalVariable(name: "errnum", arg: 1, scope: !1285, file: !394, line: 188, type: !70)
!1285 = distinct !DISubprogram(name: "print_errno_message", scope: !394, file: !394, line: 188, type: !784, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1286)
!1286 = !{!1284, !1287, !1288}
!1287 = !DILocalVariable(name: "s", scope: !1285, file: !394, line: 190, type: !111)
!1288 = !DILocalVariable(name: "errbuf", scope: !1285, file: !394, line: 193, type: !1289)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 1024)
!1292 = !DILocation(line: 0, scope: !1285, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 234, column: 5, scope: !1282)
!1294 = !DILocation(line: 193, column: 3, scope: !1285, inlinedAt: !1293)
!1295 = !DILocation(line: 193, column: 8, scope: !1285, inlinedAt: !1293)
!1296 = !DILocation(line: 195, column: 7, scope: !1285, inlinedAt: !1293)
!1297 = !DILocation(line: 207, column: 9, scope: !1298, inlinedAt: !1293)
!1298 = distinct !DILexicalBlock(scope: !1285, file: !394, line: 207, column: 7)
!1299 = !DILocation(line: 207, column: 7, scope: !1285, inlinedAt: !1293)
!1300 = !DILocation(line: 208, column: 9, scope: !1298, inlinedAt: !1293)
!1301 = !DILocation(line: 208, column: 5, scope: !1298, inlinedAt: !1293)
!1302 = !DILocation(line: 214, column: 3, scope: !1285, inlinedAt: !1293)
!1303 = !DILocation(line: 216, column: 1, scope: !1285, inlinedAt: !1293)
!1304 = !DILocation(line: 234, column: 5, scope: !1282)
!1305 = !DILocation(line: 238, column: 3, scope: !1227)
!1306 = !DILocalVariable(name: "__c", arg: 1, scope: !1307, file: !1308, line: 101, type: !70)
!1307 = distinct !DISubprogram(name: "putc_unlocked", scope: !1308, file: !1308, line: 101, type: !1309, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1311)
!1308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!70, !70, !1240}
!1311 = !{!1306, !1312}
!1312 = !DILocalVariable(name: "__stream", arg: 2, scope: !1307, file: !1308, line: 101, type: !1240)
!1313 = !DILocation(line: 0, scope: !1307, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 238, column: 3, scope: !1227)
!1315 = !DILocation(line: 103, column: 10, scope: !1307, inlinedAt: !1314)
!1316 = !{!1317, !795, i64 40}
!1317 = !{!"_IO_FILE", !862, i64 0, !795, i64 8, !795, i64 16, !795, i64 24, !795, i64 32, !795, i64 40, !795, i64 48, !795, i64 56, !795, i64 64, !795, i64 72, !795, i64 80, !795, i64 88, !795, i64 96, !795, i64 104, !862, i64 112, !862, i64 116, !1318, i64 120, !903, i64 128, !796, i64 130, !796, i64 131, !795, i64 136, !1318, i64 144, !795, i64 152, !795, i64 160, !795, i64 168, !795, i64 176, !1318, i64 184, !862, i64 192, !796, i64 196}
!1318 = !{!"long", !796, i64 0}
!1319 = !{!1317, !795, i64 48}
!1320 = !{!"branch_weights", i32 2000, i32 1}
!1321 = !DILocation(line: 240, column: 3, scope: !1227)
!1322 = !DILocation(line: 241, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1227, file: !394, line: 241, column: 7)
!1324 = !DILocation(line: 241, column: 7, scope: !1227)
!1325 = !DILocation(line: 242, column: 5, scope: !1323)
!1326 = !DILocation(line: 243, column: 1, scope: !1227)
!1327 = !DISubprogram(name: "__vfprintf_chk", scope: !847, file: !847, line: 96, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!70, !1239, !70, !851, !404}
!1330 = !DISubprogram(name: "strerror_r", scope: !982, file: !982, line: 444, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!105, !70, !105, !108}
!1333 = !DISubprogram(name: "__overflow", scope: !856, file: !856, line: 886, type: !1334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!70, !1240, !70}
!1336 = !DISubprogram(name: "fflush_unlocked", scope: !856, file: !856, line: 239, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!70, !1240}
!1339 = !DISubprogram(name: "fcntl", scope: !1340, file: !1340, line: 149, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1340 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!70, !70, !70, null}
!1343 = distinct !DISubprogram(name: "error", scope: !394, file: !394, line: 285, type: !1344, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !70, !70, !111, null}
!1346 = !{!1347, !1348, !1349, !1350}
!1347 = !DILocalVariable(name: "status", arg: 1, scope: !1343, file: !394, line: 285, type: !70)
!1348 = !DILocalVariable(name: "errnum", arg: 2, scope: !1343, file: !394, line: 285, type: !70)
!1349 = !DILocalVariable(name: "message", arg: 3, scope: !1343, file: !394, line: 285, type: !111)
!1350 = !DILocalVariable(name: "ap", scope: !1343, file: !394, line: 287, type: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !856, line: 52, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1353, line: 14, baseType: !1354)
!1353 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !408, baseType: !1355)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 192, elements: !47)
!1356 = !DILocation(line: 0, scope: !1343)
!1357 = !DILocation(line: 287, column: 3, scope: !1343)
!1358 = !DILocation(line: 287, column: 11, scope: !1343)
!1359 = !DILocation(line: 288, column: 3, scope: !1343)
!1360 = !DILocation(line: 289, column: 3, scope: !1343)
!1361 = !DILocation(line: 290, column: 3, scope: !1343)
!1362 = !DILocation(line: 291, column: 1, scope: !1343)
!1363 = !DILocation(line: 0, scope: !401)
!1364 = !DILocation(line: 302, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !401, file: !394, line: 302, column: 7)
!1366 = !DILocation(line: 302, column: 7, scope: !401)
!1367 = !DILocation(line: 307, column: 11, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !394, line: 307, column: 11)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !394, line: 303, column: 5)
!1370 = !DILocation(line: 307, column: 27, scope: !1368)
!1371 = !DILocation(line: 308, column: 11, scope: !1368)
!1372 = !DILocation(line: 308, column: 28, scope: !1368)
!1373 = !DILocation(line: 308, column: 25, scope: !1368)
!1374 = !DILocation(line: 309, column: 15, scope: !1368)
!1375 = !DILocation(line: 309, column: 33, scope: !1368)
!1376 = !DILocation(line: 310, column: 19, scope: !1368)
!1377 = !DILocation(line: 311, column: 22, scope: !1368)
!1378 = !DILocation(line: 311, column: 56, scope: !1368)
!1379 = !DILocation(line: 307, column: 11, scope: !1369)
!1380 = !DILocation(line: 316, column: 21, scope: !1369)
!1381 = !DILocation(line: 317, column: 23, scope: !1369)
!1382 = !DILocation(line: 318, column: 5, scope: !1369)
!1383 = !DILocation(line: 327, column: 3, scope: !401)
!1384 = !DILocation(line: 331, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !401, file: !394, line: 331, column: 7)
!1386 = !DILocation(line: 331, column: 7, scope: !401)
!1387 = !DILocation(line: 332, column: 5, scope: !1385)
!1388 = !DILocation(line: 338, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !394, line: 334, column: 5)
!1390 = !DILocation(line: 346, column: 3, scope: !401)
!1391 = !DILocation(line: 350, column: 3, scope: !401)
!1392 = !DILocation(line: 356, column: 1, scope: !401)
!1393 = distinct !DISubprogram(name: "error_at_line", scope: !394, file: !394, line: 359, type: !1394, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !70, !70, !111, !76, !111, null}
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402}
!1397 = !DILocalVariable(name: "status", arg: 1, scope: !1393, file: !394, line: 359, type: !70)
!1398 = !DILocalVariable(name: "errnum", arg: 2, scope: !1393, file: !394, line: 359, type: !70)
!1399 = !DILocalVariable(name: "file_name", arg: 3, scope: !1393, file: !394, line: 359, type: !111)
!1400 = !DILocalVariable(name: "line_number", arg: 4, scope: !1393, file: !394, line: 360, type: !76)
!1401 = !DILocalVariable(name: "message", arg: 5, scope: !1393, file: !394, line: 360, type: !111)
!1402 = !DILocalVariable(name: "ap", scope: !1393, file: !394, line: 362, type: !1351)
!1403 = !DILocation(line: 0, scope: !1393)
!1404 = !DILocation(line: 362, column: 3, scope: !1393)
!1405 = !DILocation(line: 362, column: 11, scope: !1393)
!1406 = !DILocation(line: 363, column: 3, scope: !1393)
!1407 = !DILocation(line: 364, column: 3, scope: !1393)
!1408 = !DILocation(line: 366, column: 3, scope: !1393)
!1409 = !DILocation(line: 367, column: 1, scope: !1393)
!1410 = distinct !DISubprogram(name: "getprogname", scope: !704, file: !704, line: 54, type: !1411, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !803)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!111}
!1413 = !DILocation(line: 58, column: 10, scope: !1410)
!1414 = !DILocation(line: 58, column: 3, scope: !1410)
!1415 = distinct !DISubprogram(name: "mode_compile", scope: !706, file: !706, line: 134, type: !1416, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !1426)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1418, !111}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !706, line: 98, size: 128, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1419, file: !706, line: 100, baseType: !4, size: 8)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1419, file: !706, line: 101, baseType: !4, size: 8, offset: 8)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1419, file: !706, line: 102, baseType: !1030, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1419, file: !706, line: 103, baseType: !1030, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1419, file: !706, line: 104, baseType: !1030, size: 32, offset: 96)
!1426 = !{!1427, !1428, !1431, !1432, !1433, !1434, !1435, !1437, !1439, !1440, !1441, !1445, !1447, !1448, !1449, !1450, !1453, !1454, !1455, !1456}
!1427 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1415, file: !706, line: 134, type: !111)
!1428 = !DILocalVariable(name: "p", scope: !1429, file: !706, line: 138, type: !111)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !706, line: 137, column: 5)
!1430 = distinct !DILexicalBlock(scope: !1415, file: !706, line: 136, column: 7)
!1431 = !DILocalVariable(name: "octal_mode", scope: !1429, file: !706, line: 139, type: !76)
!1432 = !DILocalVariable(name: "mode", scope: !1429, file: !706, line: 140, type: !1030)
!1433 = !DILocalVariable(name: "mentioned", scope: !1429, file: !706, line: 141, type: !1030)
!1434 = !DILocalVariable(name: "mc", scope: !1415, file: !706, line: 163, type: !1418)
!1435 = !DILocalVariable(name: "needed", scope: !1436, file: !706, line: 167, type: !108)
!1436 = distinct !DILexicalBlock(scope: !1415, file: !706, line: 166, column: 3)
!1437 = !DILocalVariable(name: "p", scope: !1438, file: !706, line: 168, type: !111)
!1438 = distinct !DILexicalBlock(scope: !1436, file: !706, line: 168, column: 5)
!1439 = !DILocalVariable(name: "used", scope: !1415, file: !706, line: 175, type: !108)
!1440 = !DILocalVariable(name: "p", scope: !1415, file: !706, line: 176, type: !111)
!1441 = !DILocalVariable(name: "affected", scope: !1442, file: !706, line: 180, type: !1030)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !706, line: 178, column: 5)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !706, line: 177, column: 3)
!1444 = distinct !DILexicalBlock(scope: !1415, file: !706, line: 177, column: 3)
!1445 = !DILocalVariable(name: "op", scope: !1446, file: !706, line: 207, type: !4)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !706, line: 206, column: 9)
!1447 = !DILocalVariable(name: "value", scope: !1446, file: !706, line: 208, type: !1030)
!1448 = !DILocalVariable(name: "mentioned", scope: !1446, file: !706, line: 209, type: !1030)
!1449 = !DILocalVariable(name: "flag", scope: !1446, file: !706, line: 210, type: !4)
!1450 = !DILocalVariable(name: "octal_mode", scope: !1451, file: !706, line: 217, type: !76)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !706, line: 216, column: 15)
!1452 = distinct !DILexicalBlock(scope: !1446, file: !706, line: 213, column: 13)
!1453 = !DILocalVariable(name: "change", scope: !1446, file: !706, line: 287, type: !1418)
!1454 = !DILabel(scope: !1442, name: "no_more_affected", file: !706, line: 203)
!1455 = !DILabel(scope: !1452, name: "no_more_values", file: !706, line: 284)
!1456 = !DILabel(scope: !1415, name: "invalid", file: !706, line: 308)
!1457 = !DILocation(line: 0, scope: !1415)
!1458 = !DILocation(line: 136, column: 14, scope: !1430)
!1459 = !DILocation(line: 136, column: 27, scope: !1430)
!1460 = !DILocation(line: 146, column: 41, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1429, file: !706, line: 145, column: 9)
!1462 = !DILocation(line: 0, scope: !1429)
!1463 = !DILocation(line: 146, column: 26, scope: !1461)
!1464 = !DILocation(line: 146, column: 39, scope: !1461)
!1465 = !DILocation(line: 146, column: 46, scope: !1461)
!1466 = !DILocation(line: 147, column: 20, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1461, file: !706, line: 147, column: 15)
!1468 = !DILocation(line: 147, column: 15, scope: !1461)
!1469 = !DILocation(line: 146, column: 43, scope: !1461)
!1470 = !DILocation(line: 150, column: 21, scope: !1429)
!1471 = !DILocation(line: 150, column: 24, scope: !1429)
!1472 = distinct !{!1472, !1473, !1474, !908}
!1473 = !DILocation(line: 144, column: 7, scope: !1429)
!1474 = !DILocation(line: 150, column: 35, scope: !1429)
!1475 = !DILocation(line: 152, column: 11, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1429, file: !706, line: 152, column: 11)
!1477 = !DILocation(line: 152, column: 11, scope: !1429)
!1478 = !DILocation(line: 156, column: 22, scope: !1429)
!1479 = !DILocation(line: 156, column: 36, scope: !1429)
!1480 = !DILocation(line: 156, column: 20, scope: !1429)
!1481 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1482, file: !706, line: 112, type: !1030)
!1482 = distinct !DISubprogram(name: "make_node_op_equals", scope: !706, file: !706, line: 112, type: !1483, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!1418, !1030, !1030}
!1485 = !{!1481, !1486, !1487}
!1486 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1482, file: !706, line: 112, type: !1030)
!1487 = !DILocalVariable(name: "p", scope: !1482, file: !706, line: 114, type: !1418)
!1488 = !DILocation(line: 0, scope: !1482, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 159, column: 14, scope: !1429)
!1490 = !DILocation(line: 114, column: 27, scope: !1482, inlinedAt: !1489)
!1491 = !DILocation(line: 115, column: 9, scope: !1482, inlinedAt: !1489)
!1492 = !{!1493, !796, i64 0}
!1493 = !{!"mode_change", !796, i64 0, !796, i64 1, !862, i64 4, !862, i64 8, !862, i64 12}
!1494 = !DILocation(line: 116, column: 6, scope: !1482, inlinedAt: !1489)
!1495 = !DILocation(line: 116, column: 11, scope: !1482, inlinedAt: !1489)
!1496 = !{!1493, !796, i64 1}
!1497 = !DILocation(line: 117, column: 6, scope: !1482, inlinedAt: !1489)
!1498 = !DILocation(line: 117, column: 15, scope: !1482, inlinedAt: !1489)
!1499 = !{!1493, !862, i64 4}
!1500 = !DILocation(line: 118, column: 6, scope: !1482, inlinedAt: !1489)
!1501 = !DILocation(line: 118, column: 12, scope: !1482, inlinedAt: !1489)
!1502 = !{!1493, !862, i64 8}
!1503 = !DILocation(line: 119, column: 6, scope: !1482, inlinedAt: !1489)
!1504 = !DILocation(line: 119, column: 16, scope: !1482, inlinedAt: !1489)
!1505 = !{!1493, !862, i64 12}
!1506 = !DILocation(line: 120, column: 8, scope: !1482, inlinedAt: !1489)
!1507 = !DILocation(line: 120, column: 13, scope: !1482, inlinedAt: !1489)
!1508 = !DILocation(line: 159, column: 7, scope: !1429)
!1509 = !DILocation(line: 168, column: 39, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1438, file: !706, line: 168, column: 5)
!1511 = !DILocation(line: 0, scope: !1436)
!1512 = !DILocation(line: 168, scope: !1438)
!1513 = !DILocation(line: 0, scope: !1438)
!1514 = !DILocation(line: 168, column: 5, scope: !1438)
!1515 = !DILocation(line: 170, column: 10, scope: !1436)
!1516 = !DILocation(line: 177, column: 8, scope: !1444)
!1517 = !DILocation(line: 169, column: 41, scope: !1510)
!1518 = !DILocation(line: 169, column: 14, scope: !1510)
!1519 = !DILocation(line: 168, column: 44, scope: !1510)
!1520 = !DILocation(line: 168, column: 5, scope: !1510)
!1521 = distinct !{!1521, !1514, !1522, !908}
!1522 = !DILocation(line: 169, column: 53, scope: !1438)
!1523 = !DILocation(line: 175, column: 10, scope: !1415)
!1524 = !DILocation(line: 177, scope: !1444)
!1525 = !DILocation(line: 0, scope: !1446)
!1526 = !DILocation(line: 0, scope: !1442)
!1527 = !DILocation(line: 183, column: 7, scope: !1442)
!1528 = !DILocation(line: 0, scope: !1444)
!1529 = !DILocation(line: 184, column: 17, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !706, line: 183, column: 7)
!1531 = distinct !DILexicalBlock(scope: !1442, file: !706, line: 183, column: 7)
!1532 = !DILocation(line: 184, column: 9, scope: !1530)
!1533 = !DILocation(line: 212, column: 11, scope: !1446)
!1534 = !DILocation(line: 189, column: 22, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !706, line: 185, column: 11)
!1536 = !DILocation(line: 190, column: 13, scope: !1535)
!1537 = !DILocation(line: 192, column: 22, scope: !1535)
!1538 = !DILocation(line: 193, column: 13, scope: !1535)
!1539 = !DILocation(line: 195, column: 22, scope: !1535)
!1540 = !DILocation(line: 196, column: 13, scope: !1535)
!1541 = !DILocation(line: 0, scope: !1535)
!1542 = !DILocation(line: 183, column: 16, scope: !1530)
!1543 = !DILocation(line: 183, column: 7, scope: !1530)
!1544 = distinct !{!1544, !1545, !1546}
!1545 = !DILocation(line: 183, column: 7, scope: !1531)
!1546 = !DILocation(line: 202, column: 11, scope: !1531)
!1547 = !DILocation(line: 207, column: 21, scope: !1446)
!1548 = !DILocation(line: 180, column: 14, scope: !1442)
!1549 = !DILocation(line: 207, column: 23, scope: !1446)
!1550 = !DILocation(line: 212, column: 19, scope: !1446)
!1551 = !DILocation(line: 219, column: 17, scope: !1451)
!1552 = !DILocation(line: 221, column: 51, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1451, file: !706, line: 220, column: 19)
!1554 = !DILocation(line: 0, scope: !1451)
!1555 = !DILocation(line: 221, column: 36, scope: !1553)
!1556 = !DILocation(line: 221, column: 49, scope: !1553)
!1557 = !DILocation(line: 221, column: 56, scope: !1553)
!1558 = !DILocation(line: 222, column: 30, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !706, line: 222, column: 25)
!1560 = !DILocation(line: 222, column: 25, scope: !1553)
!1561 = !DILocation(line: 221, column: 53, scope: !1553)
!1562 = !DILocation(line: 225, column: 31, scope: !1451)
!1563 = !DILocation(line: 225, column: 34, scope: !1451)
!1564 = distinct !{!1564, !1551, !1565, !908}
!1565 = !DILocation(line: 225, column: 45, scope: !1451)
!1566 = !DILocation(line: 227, column: 21, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1451, file: !706, line: 227, column: 21)
!1568 = !DILocation(line: 227, column: 30, scope: !1567)
!1569 = !DILocation(line: 227, column: 37, scope: !1567)
!1570 = !DILocation(line: 239, column: 16, scope: !1452)
!1571 = !DILocation(line: 240, column: 15, scope: !1452)
!1572 = !DILocation(line: 245, column: 16, scope: !1452)
!1573 = !DILocation(line: 246, column: 15, scope: !1452)
!1574 = !DILocation(line: 251, column: 16, scope: !1452)
!1575 = !DILocation(line: 252, column: 15, scope: !1452)
!1576 = !DILocation(line: 259, column: 25, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !706, line: 258, column: 15)
!1578 = distinct !DILexicalBlock(scope: !1452, file: !706, line: 258, column: 15)
!1579 = !DILocation(line: 0, scope: !1452)
!1580 = !DILocation(line: 256, column: 20, scope: !1452)
!1581 = !DILocation(line: 259, column: 17, scope: !1577)
!1582 = !DILocation(line: 262, column: 27, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1577, file: !706, line: 260, column: 19)
!1584 = !DILocation(line: 263, column: 21, scope: !1583)
!1585 = !DILocation(line: 265, column: 27, scope: !1583)
!1586 = !DILocation(line: 266, column: 21, scope: !1583)
!1587 = !DILocation(line: 268, column: 27, scope: !1583)
!1588 = !DILocation(line: 269, column: 21, scope: !1583)
!1589 = !DILocation(line: 275, column: 27, scope: !1583)
!1590 = !DILocation(line: 276, column: 21, scope: !1583)
!1591 = !DILocation(line: 279, column: 27, scope: !1583)
!1592 = !DILocation(line: 280, column: 21, scope: !1583)
!1593 = !DILocation(line: 258, column: 24, scope: !1577)
!1594 = !DILocation(line: 258, column: 15, scope: !1577)
!1595 = distinct !{!1595, !1596, !1597}
!1596 = !DILocation(line: 258, column: 15, scope: !1578)
!1597 = !DILocation(line: 283, column: 19, scope: !1578)
!1598 = !DILocation(line: 209, column: 18, scope: !1446)
!1599 = !DILocation(line: 294, column: 14, scope: !1446)
!1600 = !DILocation(line: 288, column: 28, scope: !1446)
!1601 = !DILocation(line: 288, column: 21, scope: !1446)
!1602 = !DILocation(line: 289, column: 22, scope: !1446)
!1603 = !DILocation(line: 290, column: 19, scope: !1446)
!1604 = !DILocation(line: 290, column: 24, scope: !1446)
!1605 = !DILocation(line: 291, column: 19, scope: !1446)
!1606 = !DILocation(line: 291, column: 28, scope: !1446)
!1607 = !DILocation(line: 292, column: 19, scope: !1446)
!1608 = !DILocation(line: 292, column: 25, scope: !1446)
!1609 = !DILocation(line: 293, column: 19, scope: !1446)
!1610 = !DILocation(line: 293, column: 29, scope: !1446)
!1611 = !DILocation(line: 296, column: 14, scope: !1442)
!1612 = !DILocation(line: 296, column: 24, scope: !1442)
!1613 = !DILocation(line: 177, column: 28, scope: !1443)
!1614 = !DILocation(line: 177, column: 3, scope: !1443)
!1615 = distinct !{!1615, !1616, !1617}
!1616 = !DILocation(line: 177, column: 3, scope: !1444)
!1617 = !DILocation(line: 300, column: 5, scope: !1444)
!1618 = !DILocation(line: 304, column: 16, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !706, line: 303, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1415, file: !706, line: 302, column: 7)
!1621 = !DILocation(line: 304, column: 21, scope: !1619)
!1622 = !DILocation(line: 305, column: 7, scope: !1619)
!1623 = !DILocation(line: 308, column: 1, scope: !1415)
!1624 = !DILocation(line: 309, column: 3, scope: !1415)
!1625 = !DILocation(line: 310, column: 3, scope: !1415)
!1626 = !DILocation(line: 311, column: 1, scope: !1415)
!1627 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !706, file: !706, line: 317, type: !1416, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !1628)
!1628 = !{!1629, !1630}
!1629 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1627, file: !706, line: 317, type: !111)
!1630 = !DILocalVariable(name: "ref_stats", scope: !1627, file: !706, line: 319, type: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1632, line: 26, size: 1152, elements: !1633)
!1632 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1633 = !{!1634, !1636, !1638, !1640, !1641, !1643, !1645, !1646, !1647, !1648, !1650, !1652, !1660, !1661, !1662}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1631, file: !1632, line: 31, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !211, line: 145, baseType: !110)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1631, file: !1632, line: 36, baseType: !1637, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !211, line: 148, baseType: !110)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1631, file: !1632, line: 44, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !211, line: 151, baseType: !110)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1631, file: !1632, line: 45, baseType: !1032, size: 32, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1631, file: !1632, line: 47, baseType: !1642, size: 32, offset: 224)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !211, line: 146, baseType: !76)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1631, file: !1632, line: 48, baseType: !1644, size: 32, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !211, line: 147, baseType: !76)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1631, file: !1632, line: 50, baseType: !70, size: 32, offset: 288)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1631, file: !1632, line: 52, baseType: !1635, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1631, file: !1632, line: 57, baseType: !210, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1631, file: !1632, line: 61, baseType: !1649, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !211, line: 175, baseType: !212)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1631, file: !1632, line: 63, baseType: !1651, size: 64, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !211, line: 180, baseType: !212)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1631, file: !1632, line: 74, baseType: !1653, size: 128, offset: 576)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1654, line: 11, size: 128, elements: !1655)
!1654 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1655 = !{!1656, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1653, file: !1654, line: 16, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !211, line: 160, baseType: !212)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1653, file: !1654, line: 21, baseType: !1659, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !211, line: 197, baseType: !212)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1631, file: !1632, line: 75, baseType: !1653, size: 128, offset: 704)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1631, file: !1632, line: 76, baseType: !1653, size: 128, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1631, file: !1632, line: 89, baseType: !1663, size: 192, offset: 960)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1659, size: 192, elements: !268)
!1664 = !DILocation(line: 0, scope: !1627)
!1665 = !DILocation(line: 319, column: 3, scope: !1627)
!1666 = !DILocation(line: 319, column: 15, scope: !1627)
!1667 = !DILocation(line: 321, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1627, file: !706, line: 321, column: 7)
!1669 = !DILocation(line: 321, column: 35, scope: !1668)
!1670 = !DILocation(line: 321, column: 7, scope: !1627)
!1671 = !DILocation(line: 323, column: 41, scope: !1627)
!1672 = !{!1673, !862, i64 24}
!1673 = !{!"stat", !1318, i64 0, !1318, i64 8, !1318, i64 16, !862, i64 24, !862, i64 28, !862, i64 32, !862, i64 36, !1318, i64 40, !1318, i64 48, !1318, i64 56, !1318, i64 64, !1674, i64 72, !1674, i64 88, !1674, i64 104, !796, i64 120}
!1674 = !{!"timespec", !1318, i64 0, !1318, i64 8}
!1675 = !DILocation(line: 0, scope: !1482, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 323, column: 10, scope: !1627)
!1677 = !DILocation(line: 114, column: 27, scope: !1482, inlinedAt: !1676)
!1678 = !DILocation(line: 115, column: 9, scope: !1482, inlinedAt: !1676)
!1679 = !DILocation(line: 116, column: 6, scope: !1482, inlinedAt: !1676)
!1680 = !DILocation(line: 116, column: 11, scope: !1482, inlinedAt: !1676)
!1681 = !DILocation(line: 117, column: 6, scope: !1482, inlinedAt: !1676)
!1682 = !DILocation(line: 117, column: 15, scope: !1482, inlinedAt: !1676)
!1683 = !DILocation(line: 118, column: 6, scope: !1482, inlinedAt: !1676)
!1684 = !DILocation(line: 118, column: 12, scope: !1482, inlinedAt: !1676)
!1685 = !DILocation(line: 119, column: 6, scope: !1482, inlinedAt: !1676)
!1686 = !DILocation(line: 119, column: 16, scope: !1482, inlinedAt: !1676)
!1687 = !DILocation(line: 120, column: 8, scope: !1482, inlinedAt: !1676)
!1688 = !DILocation(line: 120, column: 13, scope: !1482, inlinedAt: !1676)
!1689 = !DILocation(line: 323, column: 3, scope: !1627)
!1690 = !DILocation(line: 324, column: 1, scope: !1627)
!1691 = !DISubprogram(name: "stat", scope: !1127, file: !1127, line: 205, type: !1692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!70, !851, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1695)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1696 = distinct !DISubprogram(name: "mode_adjust", scope: !706, file: !706, line: 340, type: !1697, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !1702)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!1030, !1030, !171, !1030, !1699, !1701}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1714, !1715, !1716}
!1703 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1696, file: !706, line: 340, type: !1030)
!1704 = !DILocalVariable(name: "dir", arg: 2, scope: !1696, file: !706, line: 340, type: !171)
!1705 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1696, file: !706, line: 340, type: !1030)
!1706 = !DILocalVariable(name: "changes", arg: 4, scope: !1696, file: !706, line: 341, type: !1699)
!1707 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1696, file: !706, line: 341, type: !1701)
!1708 = !DILocalVariable(name: "newmode", scope: !1696, file: !706, line: 344, type: !1030)
!1709 = !DILocalVariable(name: "mode_bits", scope: !1696, file: !706, line: 347, type: !1030)
!1710 = !DILocalVariable(name: "affected", scope: !1711, file: !706, line: 351, type: !1030)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !706, line: 350, column: 5)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !706, line: 349, column: 3)
!1713 = distinct !DILexicalBlock(scope: !1696, file: !706, line: 349, column: 3)
!1714 = !DILocalVariable(name: "omit_change", scope: !1711, file: !706, line: 352, type: !1030)
!1715 = !DILocalVariable(name: "value", scope: !1711, file: !706, line: 354, type: !1030)
!1716 = !DILocalVariable(name: "preserved", scope: !1717, file: !706, line: 394, type: !1030)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !706, line: 393, column: 11)
!1718 = distinct !DILexicalBlock(scope: !1711, file: !706, line: 388, column: 9)
!1719 = !DILocation(line: 0, scope: !1696)
!1720 = !DILocation(line: 344, column: 28, scope: !1696)
!1721 = !DILocation(line: 349, column: 19, scope: !1712)
!1722 = !DILocation(line: 349, column: 24, scope: !1712)
!1723 = !DILocation(line: 349, column: 3, scope: !1713)
!1724 = !DILocation(line: 349, column: 10, scope: !1712)
!1725 = !DILocation(line: 351, column: 34, scope: !1711)
!1726 = !DILocation(line: 0, scope: !1711)
!1727 = !DILocation(line: 353, column: 52, scope: !1711)
!1728 = !DILocation(line: 353, column: 41, scope: !1711)
!1729 = !DILocation(line: 353, column: 39, scope: !1711)
!1730 = !DILocation(line: 354, column: 31, scope: !1711)
!1731 = !DILocation(line: 356, column: 7, scope: !1711)
!1732 = !DILocation(line: 363, column: 17, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1711, file: !706, line: 357, column: 9)
!1734 = !DILocation(line: 366, column: 28, scope: !1733)
!1735 = !DILocation(line: 366, column: 22, scope: !1733)
!1736 = !DILocation(line: 368, column: 30, scope: !1733)
!1737 = !DILocation(line: 368, column: 24, scope: !1733)
!1738 = !DILocation(line: 370, column: 30, scope: !1733)
!1739 = !DILocation(line: 370, column: 24, scope: !1733)
!1740 = !DILocation(line: 370, column: 21, scope: !1733)
!1741 = !DILocation(line: 366, column: 17, scope: !1733)
!1742 = !DILocation(line: 372, column: 11, scope: !1733)
!1743 = !DILocation(line: 377, column: 24, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1733, file: !706, line: 377, column: 15)
!1745 = !DILocation(line: 377, column: 57, scope: !1744)
!1746 = !DILocation(line: 377, column: 15, scope: !1733)
!1747 = !DILocation(line: 385, column: 17, scope: !1711)
!1748 = !DILocation(line: 385, column: 55, scope: !1711)
!1749 = !DILocation(line: 385, column: 53, scope: !1711)
!1750 = !DILocation(line: 385, column: 13, scope: !1711)
!1751 = !DILocation(line: 387, column: 24, scope: !1711)
!1752 = !DILocation(line: 387, column: 15, scope: !1711)
!1753 = !DILocation(line: 387, column: 7, scope: !1711)
!1754 = !DILocation(line: 394, column: 33, scope: !1717)
!1755 = !DILocation(line: 394, column: 59, scope: !1717)
!1756 = !DILocation(line: 0, scope: !1717)
!1757 = !DILocation(line: 395, column: 42, scope: !1717)
!1758 = !DILocation(line: 395, column: 23, scope: !1717)
!1759 = !DILocation(line: 396, column: 32, scope: !1717)
!1760 = !DILocation(line: 396, column: 45, scope: !1717)
!1761 = !DILocation(line: 401, column: 21, scope: !1718)
!1762 = !DILocation(line: 402, column: 19, scope: !1718)
!1763 = !DILocation(line: 403, column: 11, scope: !1718)
!1764 = !DILocation(line: 406, column: 21, scope: !1718)
!1765 = !DILocation(line: 407, column: 22, scope: !1718)
!1766 = !DILocation(line: 407, column: 19, scope: !1718)
!1767 = !DILocation(line: 408, column: 11, scope: !1718)
!1768 = !DILocation(line: 349, column: 45, scope: !1712)
!1769 = distinct !{!1769, !1723, !1770, !908}
!1770 = !DILocation(line: 410, column: 5, scope: !1713)
!1771 = !DILocation(line: 347, column: 10, scope: !1696)
!1772 = !DILocation(line: 344, column: 10, scope: !1696)
!1773 = !DILocation(line: 412, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1696, file: !706, line: 412, column: 7)
!1775 = !DILocation(line: 412, column: 7, scope: !1696)
!1776 = !DILocation(line: 413, column: 17, scope: !1774)
!1777 = !DILocation(line: 413, column: 5, scope: !1774)
!1778 = !DILocation(line: 414, column: 3, scope: !1696)
!1779 = distinct !DISubprogram(name: "set_program_name", scope: !446, file: !446, line: 37, type: !812, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !1780)
!1780 = !{!1781, !1782, !1783}
!1781 = !DILocalVariable(name: "argv0", arg: 1, scope: !1779, file: !446, line: 37, type: !111)
!1782 = !DILocalVariable(name: "slash", scope: !1779, file: !446, line: 44, type: !111)
!1783 = !DILocalVariable(name: "base", scope: !1779, file: !446, line: 45, type: !111)
!1784 = !DILocation(line: 0, scope: !1779)
!1785 = !DILocation(line: 44, column: 23, scope: !1779)
!1786 = !DILocation(line: 45, column: 22, scope: !1779)
!1787 = !DILocation(line: 46, column: 17, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1779, file: !446, line: 46, column: 7)
!1789 = !DILocation(line: 46, column: 9, scope: !1788)
!1790 = !DILocation(line: 46, column: 25, scope: !1788)
!1791 = !DILocation(line: 46, column: 40, scope: !1788)
!1792 = !DILocalVariable(name: "__s1", arg: 1, scope: !1793, file: !874, line: 974, type: !1010)
!1793 = distinct !DISubprogram(name: "memeq", scope: !874, file: !874, line: 974, type: !1794, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!171, !1010, !1010, !108}
!1796 = !{!1792, !1797, !1798}
!1797 = !DILocalVariable(name: "__s2", arg: 2, scope: !1793, file: !874, line: 974, type: !1010)
!1798 = !DILocalVariable(name: "__n", arg: 3, scope: !1793, file: !874, line: 974, type: !108)
!1799 = !DILocation(line: 0, scope: !1793, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 46, column: 28, scope: !1788)
!1801 = !DILocation(line: 976, column: 11, scope: !1793, inlinedAt: !1800)
!1802 = !DILocation(line: 976, column: 10, scope: !1793, inlinedAt: !1800)
!1803 = !DILocation(line: 46, column: 7, scope: !1779)
!1804 = !DILocation(line: 49, column: 11, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !446, line: 49, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1788, file: !446, line: 47, column: 5)
!1807 = !DILocation(line: 49, column: 36, scope: !1805)
!1808 = !DILocation(line: 49, column: 11, scope: !1806)
!1809 = !DILocation(line: 65, column: 16, scope: !1779)
!1810 = !DILocation(line: 71, column: 27, scope: !1779)
!1811 = !DILocation(line: 74, column: 33, scope: !1779)
!1812 = !DILocation(line: 76, column: 1, scope: !1779)
!1813 = !DISubprogram(name: "strrchr", scope: !982, file: !982, line: 273, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1814 = !DILocation(line: 0, scope: !455)
!1815 = !DILocation(line: 40, column: 29, scope: !455)
!1816 = !DILocation(line: 41, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !455, file: !456, line: 41, column: 7)
!1818 = !DILocation(line: 41, column: 7, scope: !455)
!1819 = !DILocation(line: 47, column: 3, scope: !455)
!1820 = !DILocation(line: 48, column: 3, scope: !455)
!1821 = !DILocation(line: 48, column: 13, scope: !455)
!1822 = !DILocalVariable(name: "ps", arg: 1, scope: !1823, file: !1824, line: 1135, type: !1827)
!1823 = distinct !DISubprogram(name: "mbszero", scope: !1824, file: !1824, line: 1135, type: !1825, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !1828)
!1824 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!1828 = !{!1822}
!1829 = !DILocation(line: 0, scope: !1823, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 48, column: 18, scope: !455)
!1831 = !DILocalVariable(name: "__dest", arg: 1, scope: !1832, file: !1833, line: 57, type: !106)
!1832 = distinct !DISubprogram(name: "memset", scope: !1833, file: !1833, line: 57, type: !1834, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !1836)
!1833 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!106, !106, !70, !108}
!1836 = !{!1831, !1837, !1838}
!1837 = !DILocalVariable(name: "__ch", arg: 2, scope: !1832, file: !1833, line: 57, type: !70)
!1838 = !DILocalVariable(name: "__len", arg: 3, scope: !1832, file: !1833, line: 57, type: !108)
!1839 = !DILocation(line: 0, scope: !1832, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 1137, column: 3, scope: !1823, inlinedAt: !1830)
!1841 = !DILocation(line: 59, column: 10, scope: !1832, inlinedAt: !1840)
!1842 = !DILocation(line: 49, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !455, file: !456, line: 49, column: 7)
!1844 = !DILocation(line: 49, column: 39, scope: !1843)
!1845 = !DILocation(line: 49, column: 44, scope: !1843)
!1846 = !DILocation(line: 54, column: 1, scope: !455)
!1847 = !DISubprogram(name: "mbrtoc32", scope: !467, file: !467, line: 57, type: !1848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!108, !1850, !851, !108, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1851)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1827)
!1853 = distinct !DISubprogram(name: "clone_quoting_options", scope: !486, file: !486, line: 113, type: !1854, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1857)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1856, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1857 = !{!1858, !1859, !1860}
!1858 = !DILocalVariable(name: "o", arg: 1, scope: !1853, file: !486, line: 113, type: !1856)
!1859 = !DILocalVariable(name: "saved_errno", scope: !1853, file: !486, line: 115, type: !70)
!1860 = !DILocalVariable(name: "p", scope: !1853, file: !486, line: 116, type: !1856)
!1861 = !DILocation(line: 0, scope: !1853)
!1862 = !DILocation(line: 115, column: 21, scope: !1853)
!1863 = !DILocation(line: 116, column: 40, scope: !1853)
!1864 = !DILocation(line: 116, column: 31, scope: !1853)
!1865 = !DILocation(line: 118, column: 9, scope: !1853)
!1866 = !DILocation(line: 119, column: 3, scope: !1853)
!1867 = distinct !DISubprogram(name: "get_quoting_style", scope: !486, file: !486, line: 124, type: !1868, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1872)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!74, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!1872 = !{!1873}
!1873 = !DILocalVariable(name: "o", arg: 1, scope: !1867, file: !486, line: 124, type: !1870)
!1874 = !DILocation(line: 0, scope: !1867)
!1875 = !DILocation(line: 126, column: 11, scope: !1867)
!1876 = !DILocation(line: 126, column: 46, scope: !1867)
!1877 = !{!1878, !796, i64 0}
!1878 = !{!"quoting_options", !796, i64 0, !862, i64 4, !796, i64 8, !795, i64 40, !795, i64 48}
!1879 = !DILocation(line: 126, column: 3, scope: !1867)
!1880 = distinct !DISubprogram(name: "set_quoting_style", scope: !486, file: !486, line: 132, type: !1881, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1856, !74}
!1883 = !{!1884, !1885}
!1884 = !DILocalVariable(name: "o", arg: 1, scope: !1880, file: !486, line: 132, type: !1856)
!1885 = !DILocalVariable(name: "s", arg: 2, scope: !1880, file: !486, line: 132, type: !74)
!1886 = !DILocation(line: 0, scope: !1880)
!1887 = !DILocation(line: 134, column: 4, scope: !1880)
!1888 = !DILocation(line: 134, column: 45, scope: !1880)
!1889 = !DILocation(line: 135, column: 1, scope: !1880)
!1890 = distinct !DISubprogram(name: "set_char_quoting", scope: !486, file: !486, line: 143, type: !1891, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1893)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!70, !1856, !4, !70}
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1900, !1901}
!1894 = !DILocalVariable(name: "o", arg: 1, scope: !1890, file: !486, line: 143, type: !1856)
!1895 = !DILocalVariable(name: "c", arg: 2, scope: !1890, file: !486, line: 143, type: !4)
!1896 = !DILocalVariable(name: "i", arg: 3, scope: !1890, file: !486, line: 143, type: !70)
!1897 = !DILocalVariable(name: "uc", scope: !1890, file: !486, line: 145, type: !113)
!1898 = !DILocalVariable(name: "p", scope: !1890, file: !486, line: 146, type: !1899)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1900 = !DILocalVariable(name: "shift", scope: !1890, file: !486, line: 148, type: !70)
!1901 = !DILocalVariable(name: "r", scope: !1890, file: !486, line: 149, type: !76)
!1902 = !DILocation(line: 0, scope: !1890)
!1903 = !DILocation(line: 147, column: 6, scope: !1890)
!1904 = !DILocation(line: 147, column: 41, scope: !1890)
!1905 = !DILocation(line: 147, column: 62, scope: !1890)
!1906 = !DILocation(line: 147, column: 57, scope: !1890)
!1907 = !DILocation(line: 148, column: 15, scope: !1890)
!1908 = !DILocation(line: 149, column: 21, scope: !1890)
!1909 = !DILocation(line: 149, column: 24, scope: !1890)
!1910 = !DILocation(line: 149, column: 34, scope: !1890)
!1911 = !DILocation(line: 150, column: 19, scope: !1890)
!1912 = !DILocation(line: 150, column: 24, scope: !1890)
!1913 = !DILocation(line: 150, column: 6, scope: !1890)
!1914 = !DILocation(line: 151, column: 3, scope: !1890)
!1915 = distinct !DISubprogram(name: "set_quoting_flags", scope: !486, file: !486, line: 159, type: !1916, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!70, !1856, !70}
!1918 = !{!1919, !1920, !1921}
!1919 = !DILocalVariable(name: "o", arg: 1, scope: !1915, file: !486, line: 159, type: !1856)
!1920 = !DILocalVariable(name: "i", arg: 2, scope: !1915, file: !486, line: 159, type: !70)
!1921 = !DILocalVariable(name: "r", scope: !1915, file: !486, line: 163, type: !70)
!1922 = !DILocation(line: 0, scope: !1915)
!1923 = !DILocation(line: 161, column: 8, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1915, file: !486, line: 161, column: 7)
!1925 = !DILocation(line: 161, column: 7, scope: !1915)
!1926 = !DILocation(line: 163, column: 14, scope: !1915)
!1927 = !{!1878, !862, i64 4}
!1928 = !DILocation(line: 164, column: 12, scope: !1915)
!1929 = !DILocation(line: 165, column: 3, scope: !1915)
!1930 = distinct !DISubprogram(name: "set_custom_quoting", scope: !486, file: !486, line: 169, type: !1931, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !1856, !111, !111}
!1933 = !{!1934, !1935, !1936}
!1934 = !DILocalVariable(name: "o", arg: 1, scope: !1930, file: !486, line: 169, type: !1856)
!1935 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1930, file: !486, line: 170, type: !111)
!1936 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1930, file: !486, line: 170, type: !111)
!1937 = !DILocation(line: 0, scope: !1930)
!1938 = !DILocation(line: 172, column: 8, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1930, file: !486, line: 172, column: 7)
!1940 = !DILocation(line: 172, column: 7, scope: !1930)
!1941 = !DILocation(line: 174, column: 12, scope: !1930)
!1942 = !DILocation(line: 175, column: 8, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1930, file: !486, line: 175, column: 7)
!1944 = !DILocation(line: 175, column: 19, scope: !1943)
!1945 = !DILocation(line: 176, column: 5, scope: !1943)
!1946 = !DILocation(line: 177, column: 6, scope: !1930)
!1947 = !DILocation(line: 177, column: 17, scope: !1930)
!1948 = !{!1878, !795, i64 40}
!1949 = !DILocation(line: 178, column: 6, scope: !1930)
!1950 = !DILocation(line: 178, column: 18, scope: !1930)
!1951 = !{!1878, !795, i64 48}
!1952 = !DILocation(line: 179, column: 1, scope: !1930)
!1953 = !DISubprogram(name: "abort", scope: !986, file: !986, line: 598, type: !441, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1954 = distinct !DISubprogram(name: "quotearg_buffer", scope: !486, file: !486, line: 774, type: !1955, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!108, !105, !108, !111, !108, !1870}
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!1958 = !DILocalVariable(name: "buffer", arg: 1, scope: !1954, file: !486, line: 774, type: !105)
!1959 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1954, file: !486, line: 774, type: !108)
!1960 = !DILocalVariable(name: "arg", arg: 3, scope: !1954, file: !486, line: 775, type: !111)
!1961 = !DILocalVariable(name: "argsize", arg: 4, scope: !1954, file: !486, line: 775, type: !108)
!1962 = !DILocalVariable(name: "o", arg: 5, scope: !1954, file: !486, line: 776, type: !1870)
!1963 = !DILocalVariable(name: "p", scope: !1954, file: !486, line: 778, type: !1870)
!1964 = !DILocalVariable(name: "saved_errno", scope: !1954, file: !486, line: 779, type: !70)
!1965 = !DILocalVariable(name: "r", scope: !1954, file: !486, line: 780, type: !108)
!1966 = !DILocation(line: 0, scope: !1954)
!1967 = !DILocation(line: 778, column: 37, scope: !1954)
!1968 = !DILocation(line: 779, column: 21, scope: !1954)
!1969 = !DILocation(line: 781, column: 43, scope: !1954)
!1970 = !DILocation(line: 781, column: 53, scope: !1954)
!1971 = !DILocation(line: 781, column: 63, scope: !1954)
!1972 = !DILocation(line: 782, column: 43, scope: !1954)
!1973 = !DILocation(line: 782, column: 58, scope: !1954)
!1974 = !DILocation(line: 780, column: 14, scope: !1954)
!1975 = !DILocation(line: 783, column: 9, scope: !1954)
!1976 = !DILocation(line: 784, column: 3, scope: !1954)
!1977 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !486, file: !486, line: 251, type: !1978, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1982)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!108, !105, !108, !111, !108, !74, !70, !1980, !111, !111}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1982 = !{!1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2007, !2009, !2012, !2013, !2014, !2015, !2018, !2019, !2022, !2026, !2027, !2035, !2038, !2039, !2041, !2042, !2043, !2044}
!1983 = !DILocalVariable(name: "buffer", arg: 1, scope: !1977, file: !486, line: 251, type: !105)
!1984 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1977, file: !486, line: 251, type: !108)
!1985 = !DILocalVariable(name: "arg", arg: 3, scope: !1977, file: !486, line: 252, type: !111)
!1986 = !DILocalVariable(name: "argsize", arg: 4, scope: !1977, file: !486, line: 252, type: !108)
!1987 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1977, file: !486, line: 253, type: !74)
!1988 = !DILocalVariable(name: "flags", arg: 6, scope: !1977, file: !486, line: 253, type: !70)
!1989 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1977, file: !486, line: 254, type: !1980)
!1990 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1977, file: !486, line: 255, type: !111)
!1991 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1977, file: !486, line: 256, type: !111)
!1992 = !DILocalVariable(name: "unibyte_locale", scope: !1977, file: !486, line: 258, type: !171)
!1993 = !DILocalVariable(name: "len", scope: !1977, file: !486, line: 260, type: !108)
!1994 = !DILocalVariable(name: "orig_buffersize", scope: !1977, file: !486, line: 261, type: !108)
!1995 = !DILocalVariable(name: "quote_string", scope: !1977, file: !486, line: 262, type: !111)
!1996 = !DILocalVariable(name: "quote_string_len", scope: !1977, file: !486, line: 263, type: !108)
!1997 = !DILocalVariable(name: "backslash_escapes", scope: !1977, file: !486, line: 264, type: !171)
!1998 = !DILocalVariable(name: "elide_outer_quotes", scope: !1977, file: !486, line: 265, type: !171)
!1999 = !DILocalVariable(name: "encountered_single_quote", scope: !1977, file: !486, line: 266, type: !171)
!2000 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1977, file: !486, line: 267, type: !171)
!2001 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1977, file: !486, line: 309, type: !171)
!2002 = !DILocalVariable(name: "lq", scope: !2003, file: !486, line: 361, type: !111)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !486, line: 361, column: 11)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !486, line: 360, column: 13)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !486, line: 333, column: 7)
!2006 = distinct !DILexicalBlock(scope: !1977, file: !486, line: 312, column: 5)
!2007 = !DILocalVariable(name: "i", scope: !2008, file: !486, line: 395, type: !108)
!2008 = distinct !DILexicalBlock(scope: !1977, file: !486, line: 395, column: 3)
!2009 = !DILocalVariable(name: "is_right_quote", scope: !2010, file: !486, line: 397, type: !171)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !486, line: 396, column: 5)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !486, line: 395, column: 3)
!2012 = !DILocalVariable(name: "escaping", scope: !2010, file: !486, line: 398, type: !171)
!2013 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2010, file: !486, line: 399, type: !171)
!2014 = !DILocalVariable(name: "c", scope: !2010, file: !486, line: 417, type: !113)
!2015 = !DILocalVariable(name: "m", scope: !2016, file: !486, line: 598, type: !108)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !486, line: 596, column: 11)
!2017 = distinct !DILexicalBlock(scope: !2010, file: !486, line: 419, column: 9)
!2018 = !DILocalVariable(name: "printable", scope: !2016, file: !486, line: 600, type: !171)
!2019 = !DILocalVariable(name: "mbs", scope: !2020, file: !486, line: 609, type: !556)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !486, line: 608, column: 15)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !486, line: 602, column: 17)
!2022 = !DILocalVariable(name: "w", scope: !2023, file: !486, line: 618, type: !466)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !486, line: 617, column: 19)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !486, line: 616, column: 17)
!2025 = distinct !DILexicalBlock(scope: !2020, file: !486, line: 616, column: 17)
!2026 = !DILocalVariable(name: "bytes", scope: !2023, file: !486, line: 619, type: !108)
!2027 = !DILocalVariable(name: "j", scope: !2028, file: !486, line: 648, type: !108)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !486, line: 648, column: 29)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !486, line: 647, column: 27)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !486, line: 645, column: 29)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !486, line: 636, column: 23)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !486, line: 628, column: 30)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !486, line: 623, column: 30)
!2034 = distinct !DILexicalBlock(scope: !2023, file: !486, line: 621, column: 25)
!2035 = !DILocalVariable(name: "ilim", scope: !2036, file: !486, line: 674, type: !108)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !486, line: 671, column: 15)
!2037 = distinct !DILexicalBlock(scope: !2016, file: !486, line: 670, column: 17)
!2038 = !DILabel(scope: !1977, name: "process_input", file: !486, line: 308)
!2039 = !DILabel(scope: !2040, name: "c_and_shell_escape", file: !486, line: 502)
!2040 = distinct !DILexicalBlock(scope: !2017, file: !486, line: 478, column: 9)
!2041 = !DILabel(scope: !2040, name: "c_escape", file: !486, line: 507)
!2042 = !DILabel(scope: !2010, name: "store_escape", file: !486, line: 709)
!2043 = !DILabel(scope: !2010, name: "store_c", file: !486, line: 712)
!2044 = !DILabel(scope: !1977, name: "force_outer_quoting_style", file: !486, line: 753)
!2045 = !DILocation(line: 0, scope: !1977)
!2046 = !DILocation(line: 258, column: 25, scope: !1977)
!2047 = !DILocation(line: 258, column: 36, scope: !1977)
!2048 = !DILocation(line: 265, column: 8, scope: !1977)
!2049 = !DILocation(line: 267, column: 3, scope: !1977)
!2050 = !DILocation(line: 261, column: 10, scope: !1977)
!2051 = !DILocation(line: 262, column: 15, scope: !1977)
!2052 = !DILocation(line: 263, column: 10, scope: !1977)
!2053 = !DILocation(line: 264, column: 8, scope: !1977)
!2054 = !DILocation(line: 266, column: 8, scope: !1977)
!2055 = !DILocation(line: 267, column: 8, scope: !1977)
!2056 = !DILocation(line: 308, column: 2, scope: !1977)
!2057 = !DILocation(line: 311, column: 3, scope: !1977)
!2058 = !DILocation(line: 318, column: 11, scope: !2006)
!2059 = !DILocation(line: 318, column: 12, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2006, file: !486, line: 318, column: 11)
!2061 = !DILocation(line: 319, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !486, line: 319, column: 9)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !486, line: 319, column: 9)
!2064 = !DILocation(line: 319, column: 9, scope: !2063)
!2065 = !DILocation(line: 0, scope: !547, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 357, column: 26, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !486, line: 335, column: 11)
!2068 = distinct !DILexicalBlock(scope: !2005, file: !486, line: 334, column: 13)
!2069 = !DILocation(line: 199, column: 29, scope: !547, inlinedAt: !2066)
!2070 = !DILocation(line: 201, column: 19, scope: !2071, inlinedAt: !2066)
!2071 = distinct !DILexicalBlock(scope: !547, file: !486, line: 201, column: 7)
!2072 = !DILocation(line: 201, column: 7, scope: !547, inlinedAt: !2066)
!2073 = !DILocation(line: 229, column: 3, scope: !547, inlinedAt: !2066)
!2074 = !DILocation(line: 230, column: 3, scope: !547, inlinedAt: !2066)
!2075 = !DILocation(line: 230, column: 13, scope: !547, inlinedAt: !2066)
!2076 = !DILocalVariable(name: "ps", arg: 1, scope: !2077, file: !1824, line: 1135, type: !2080)
!2077 = distinct !DISubprogram(name: "mbszero", scope: !1824, file: !1824, line: 1135, type: !2078, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2081)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !2080}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!2081 = !{!2076}
!2082 = !DILocation(line: 0, scope: !2077, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 230, column: 18, scope: !547, inlinedAt: !2066)
!2084 = !DILocalVariable(name: "__dest", arg: 1, scope: !2085, file: !1833, line: 57, type: !106)
!2085 = distinct !DISubprogram(name: "memset", scope: !1833, file: !1833, line: 57, type: !1834, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2086)
!2086 = !{!2084, !2087, !2088}
!2087 = !DILocalVariable(name: "__ch", arg: 2, scope: !2085, file: !1833, line: 57, type: !70)
!2088 = !DILocalVariable(name: "__len", arg: 3, scope: !2085, file: !1833, line: 57, type: !108)
!2089 = !DILocation(line: 0, scope: !2085, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 1137, column: 3, scope: !2077, inlinedAt: !2083)
!2091 = !DILocation(line: 59, column: 10, scope: !2085, inlinedAt: !2090)
!2092 = !DILocation(line: 231, column: 7, scope: !2093, inlinedAt: !2066)
!2093 = distinct !DILexicalBlock(scope: !547, file: !486, line: 231, column: 7)
!2094 = !DILocation(line: 231, column: 40, scope: !2093, inlinedAt: !2066)
!2095 = !DILocation(line: 231, column: 45, scope: !2093, inlinedAt: !2066)
!2096 = !DILocation(line: 235, column: 1, scope: !547, inlinedAt: !2066)
!2097 = !DILocation(line: 0, scope: !547, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 358, column: 27, scope: !2067)
!2099 = !DILocation(line: 199, column: 29, scope: !547, inlinedAt: !2098)
!2100 = !DILocation(line: 201, column: 19, scope: !2071, inlinedAt: !2098)
!2101 = !DILocation(line: 201, column: 7, scope: !547, inlinedAt: !2098)
!2102 = !DILocation(line: 229, column: 3, scope: !547, inlinedAt: !2098)
!2103 = !DILocation(line: 230, column: 3, scope: !547, inlinedAt: !2098)
!2104 = !DILocation(line: 230, column: 13, scope: !547, inlinedAt: !2098)
!2105 = !DILocation(line: 0, scope: !2077, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 230, column: 18, scope: !547, inlinedAt: !2098)
!2107 = !DILocation(line: 0, scope: !2085, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 1137, column: 3, scope: !2077, inlinedAt: !2106)
!2109 = !DILocation(line: 59, column: 10, scope: !2085, inlinedAt: !2108)
!2110 = !DILocation(line: 231, column: 7, scope: !2093, inlinedAt: !2098)
!2111 = !DILocation(line: 231, column: 40, scope: !2093, inlinedAt: !2098)
!2112 = !DILocation(line: 231, column: 45, scope: !2093, inlinedAt: !2098)
!2113 = !DILocation(line: 235, column: 1, scope: !547, inlinedAt: !2098)
!2114 = !DILocation(line: 360, column: 14, scope: !2004)
!2115 = !DILocation(line: 360, column: 13, scope: !2005)
!2116 = !DILocation(line: 0, scope: !2003)
!2117 = !DILocation(line: 361, column: 45, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2003, file: !486, line: 361, column: 11)
!2119 = !DILocation(line: 361, column: 11, scope: !2003)
!2120 = !DILocation(line: 362, column: 13, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !486, line: 362, column: 13)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !486, line: 362, column: 13)
!2123 = !DILocation(line: 362, column: 13, scope: !2122)
!2124 = !DILocation(line: 361, column: 52, scope: !2118)
!2125 = distinct !{!2125, !2119, !2126, !908}
!2126 = !DILocation(line: 362, column: 13, scope: !2003)
!2127 = !DILocation(line: 260, column: 10, scope: !1977)
!2128 = !DILocation(line: 365, column: 28, scope: !2005)
!2129 = !DILocation(line: 367, column: 7, scope: !2006)
!2130 = !DILocation(line: 370, column: 7, scope: !2006)
!2131 = !DILocation(line: 373, column: 7, scope: !2006)
!2132 = !DILocation(line: 376, column: 12, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2006, file: !486, line: 376, column: 11)
!2134 = !DILocation(line: 376, column: 11, scope: !2006)
!2135 = !DILocation(line: 381, column: 12, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2006, file: !486, line: 381, column: 11)
!2137 = !DILocation(line: 381, column: 11, scope: !2006)
!2138 = !DILocation(line: 382, column: 9, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !486, line: 382, column: 9)
!2140 = distinct !DILexicalBlock(scope: !2136, file: !486, line: 382, column: 9)
!2141 = !DILocation(line: 382, column: 9, scope: !2140)
!2142 = !DILocation(line: 389, column: 7, scope: !2006)
!2143 = !DILocation(line: 392, column: 7, scope: !2006)
!2144 = !DILocation(line: 0, scope: !2008)
!2145 = !DILocation(line: 395, column: 8, scope: !2008)
!2146 = !DILocation(line: 309, column: 8, scope: !1977)
!2147 = !DILocation(line: 395, scope: !2008)
!2148 = !DILocation(line: 395, column: 34, scope: !2011)
!2149 = !DILocation(line: 395, column: 26, scope: !2011)
!2150 = !DILocation(line: 395, column: 48, scope: !2011)
!2151 = !DILocation(line: 395, column: 55, scope: !2011)
!2152 = !DILocation(line: 395, column: 3, scope: !2008)
!2153 = !DILocation(line: 395, column: 67, scope: !2011)
!2154 = !DILocation(line: 0, scope: !2010)
!2155 = !DILocation(line: 402, column: 11, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2010, file: !486, line: 401, column: 11)
!2157 = !DILocation(line: 404, column: 17, scope: !2156)
!2158 = !DILocation(line: 405, column: 39, scope: !2156)
!2159 = !DILocation(line: 409, column: 32, scope: !2156)
!2160 = !DILocation(line: 405, column: 19, scope: !2156)
!2161 = !DILocation(line: 405, column: 15, scope: !2156)
!2162 = !DILocation(line: 410, column: 11, scope: !2156)
!2163 = !DILocation(line: 410, column: 25, scope: !2156)
!2164 = !DILocalVariable(name: "__s1", arg: 1, scope: !2165, file: !874, line: 974, type: !1010)
!2165 = distinct !DISubprogram(name: "memeq", scope: !874, file: !874, line: 974, type: !1794, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2166)
!2166 = !{!2164, !2167, !2168}
!2167 = !DILocalVariable(name: "__s2", arg: 2, scope: !2165, file: !874, line: 974, type: !1010)
!2168 = !DILocalVariable(name: "__n", arg: 3, scope: !2165, file: !874, line: 974, type: !108)
!2169 = !DILocation(line: 0, scope: !2165, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 410, column: 14, scope: !2156)
!2171 = !DILocation(line: 976, column: 11, scope: !2165, inlinedAt: !2170)
!2172 = !DILocation(line: 976, column: 10, scope: !2165, inlinedAt: !2170)
!2173 = !DILocation(line: 401, column: 11, scope: !2010)
!2174 = !DILocation(line: 417, column: 25, scope: !2010)
!2175 = !DILocation(line: 418, column: 7, scope: !2010)
!2176 = !DILocation(line: 421, column: 15, scope: !2017)
!2177 = !DILocation(line: 423, column: 15, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !486, line: 423, column: 15)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !486, line: 422, column: 13)
!2180 = distinct !DILexicalBlock(scope: !2017, file: !486, line: 421, column: 15)
!2181 = !DILocation(line: 423, column: 15, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !486, line: 423, column: 15)
!2183 = !DILocation(line: 423, column: 15, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !486, line: 423, column: 15)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !486, line: 423, column: 15)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !486, line: 423, column: 15)
!2187 = !DILocation(line: 423, column: 15, scope: !2185)
!2188 = !DILocation(line: 423, column: 15, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !486, line: 423, column: 15)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !486, line: 423, column: 15)
!2191 = !DILocation(line: 423, column: 15, scope: !2190)
!2192 = !DILocation(line: 423, column: 15, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !486, line: 423, column: 15)
!2194 = distinct !DILexicalBlock(scope: !2186, file: !486, line: 423, column: 15)
!2195 = !DILocation(line: 423, column: 15, scope: !2194)
!2196 = !DILocation(line: 423, column: 15, scope: !2186)
!2197 = !DILocation(line: 423, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !486, line: 423, column: 15)
!2199 = distinct !DILexicalBlock(scope: !2178, file: !486, line: 423, column: 15)
!2200 = !DILocation(line: 423, column: 15, scope: !2199)
!2201 = !DILocation(line: 431, column: 19, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2179, file: !486, line: 430, column: 19)
!2203 = !DILocation(line: 431, column: 24, scope: !2202)
!2204 = !DILocation(line: 431, column: 28, scope: !2202)
!2205 = !DILocation(line: 431, column: 38, scope: !2202)
!2206 = !DILocation(line: 431, column: 48, scope: !2202)
!2207 = !DILocation(line: 431, column: 59, scope: !2202)
!2208 = !DILocation(line: 433, column: 19, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !486, line: 433, column: 19)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !486, line: 433, column: 19)
!2211 = distinct !DILexicalBlock(scope: !2202, file: !486, line: 432, column: 17)
!2212 = !DILocation(line: 433, column: 19, scope: !2210)
!2213 = !DILocation(line: 434, column: 19, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !486, line: 434, column: 19)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !486, line: 434, column: 19)
!2216 = !DILocation(line: 434, column: 19, scope: !2215)
!2217 = !DILocation(line: 435, column: 17, scope: !2211)
!2218 = !DILocation(line: 442, column: 20, scope: !2180)
!2219 = !DILocation(line: 447, column: 11, scope: !2017)
!2220 = !DILocation(line: 450, column: 19, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2017, file: !486, line: 448, column: 13)
!2222 = !DILocation(line: 456, column: 19, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2221, file: !486, line: 455, column: 19)
!2224 = !DILocation(line: 456, column: 24, scope: !2223)
!2225 = !DILocation(line: 456, column: 28, scope: !2223)
!2226 = !DILocation(line: 456, column: 38, scope: !2223)
!2227 = !DILocation(line: 456, column: 47, scope: !2223)
!2228 = !DILocation(line: 456, column: 41, scope: !2223)
!2229 = !DILocation(line: 456, column: 52, scope: !2223)
!2230 = !DILocation(line: 455, column: 19, scope: !2221)
!2231 = !DILocation(line: 457, column: 25, scope: !2223)
!2232 = !DILocation(line: 457, column: 17, scope: !2223)
!2233 = !DILocation(line: 464, column: 25, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2223, file: !486, line: 458, column: 19)
!2235 = !DILocation(line: 468, column: 21, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !486, line: 468, column: 21)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !486, line: 468, column: 21)
!2238 = !DILocation(line: 468, column: 21, scope: !2237)
!2239 = !DILocation(line: 469, column: 21, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !486, line: 469, column: 21)
!2241 = distinct !DILexicalBlock(scope: !2234, file: !486, line: 469, column: 21)
!2242 = !DILocation(line: 469, column: 21, scope: !2241)
!2243 = !DILocation(line: 470, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !486, line: 470, column: 21)
!2245 = distinct !DILexicalBlock(scope: !2234, file: !486, line: 470, column: 21)
!2246 = !DILocation(line: 470, column: 21, scope: !2245)
!2247 = !DILocation(line: 471, column: 21, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !486, line: 471, column: 21)
!2249 = distinct !DILexicalBlock(scope: !2234, file: !486, line: 471, column: 21)
!2250 = !DILocation(line: 471, column: 21, scope: !2249)
!2251 = !DILocation(line: 472, column: 21, scope: !2234)
!2252 = !DILocation(line: 482, column: 33, scope: !2040)
!2253 = !DILocation(line: 483, column: 33, scope: !2040)
!2254 = !DILocation(line: 485, column: 33, scope: !2040)
!2255 = !DILocation(line: 486, column: 33, scope: !2040)
!2256 = !DILocation(line: 487, column: 33, scope: !2040)
!2257 = !DILocation(line: 490, column: 17, scope: !2040)
!2258 = !DILocation(line: 492, column: 21, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !486, line: 491, column: 15)
!2260 = distinct !DILexicalBlock(scope: !2040, file: !486, line: 490, column: 17)
!2261 = !DILocation(line: 499, column: 35, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2040, file: !486, line: 499, column: 17)
!2263 = !DILocation(line: 499, column: 57, scope: !2262)
!2264 = !DILocation(line: 0, scope: !2040)
!2265 = !DILocation(line: 502, column: 11, scope: !2040)
!2266 = !DILocation(line: 504, column: 17, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2040, file: !486, line: 503, column: 17)
!2268 = !DILocation(line: 507, column: 11, scope: !2040)
!2269 = !DILocation(line: 508, column: 17, scope: !2040)
!2270 = !DILocation(line: 517, column: 15, scope: !2017)
!2271 = !DILocation(line: 517, column: 40, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2017, file: !486, line: 517, column: 15)
!2273 = !DILocation(line: 517, column: 47, scope: !2272)
!2274 = !DILocation(line: 517, column: 18, scope: !2272)
!2275 = !DILocation(line: 521, column: 17, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2017, file: !486, line: 521, column: 15)
!2277 = !DILocation(line: 521, column: 15, scope: !2017)
!2278 = !DILocation(line: 525, column: 11, scope: !2017)
!2279 = !DILocation(line: 537, column: 15, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2017, file: !486, line: 536, column: 15)
!2281 = !DILocation(line: 544, column: 15, scope: !2017)
!2282 = !DILocation(line: 546, column: 19, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !486, line: 545, column: 13)
!2284 = distinct !DILexicalBlock(scope: !2017, file: !486, line: 544, column: 15)
!2285 = !DILocation(line: 549, column: 19, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2283, file: !486, line: 549, column: 19)
!2287 = !DILocation(line: 549, column: 30, scope: !2286)
!2288 = !DILocation(line: 558, column: 15, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !486, line: 558, column: 15)
!2290 = distinct !DILexicalBlock(scope: !2283, file: !486, line: 558, column: 15)
!2291 = !DILocation(line: 558, column: 15, scope: !2290)
!2292 = !DILocation(line: 559, column: 15, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !486, line: 559, column: 15)
!2294 = distinct !DILexicalBlock(scope: !2283, file: !486, line: 559, column: 15)
!2295 = !DILocation(line: 559, column: 15, scope: !2294)
!2296 = !DILocation(line: 560, column: 15, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !486, line: 560, column: 15)
!2298 = distinct !DILexicalBlock(scope: !2283, file: !486, line: 560, column: 15)
!2299 = !DILocation(line: 560, column: 15, scope: !2298)
!2300 = !DILocation(line: 562, column: 13, scope: !2283)
!2301 = !DILocation(line: 602, column: 17, scope: !2016)
!2302 = !DILocation(line: 0, scope: !2016)
!2303 = !DILocation(line: 605, column: 29, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2021, file: !486, line: 603, column: 15)
!2305 = !DILocation(line: 605, column: 27, scope: !2304)
!2306 = !DILocation(line: 668, column: 40, scope: !2016)
!2307 = !DILocation(line: 670, column: 23, scope: !2037)
!2308 = !DILocation(line: 609, column: 17, scope: !2020)
!2309 = !DILocation(line: 609, column: 27, scope: !2020)
!2310 = !DILocation(line: 0, scope: !2077, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 609, column: 32, scope: !2020)
!2312 = !DILocation(line: 0, scope: !2085, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 1137, column: 3, scope: !2077, inlinedAt: !2311)
!2314 = !DILocation(line: 59, column: 10, scope: !2085, inlinedAt: !2313)
!2315 = !DILocation(line: 613, column: 29, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2020, file: !486, line: 613, column: 21)
!2317 = !DILocation(line: 613, column: 21, scope: !2020)
!2318 = !DILocation(line: 614, column: 29, scope: !2316)
!2319 = !DILocation(line: 614, column: 19, scope: !2316)
!2320 = !DILocation(line: 618, column: 21, scope: !2023)
!2321 = !DILocation(line: 620, column: 54, scope: !2023)
!2322 = !DILocation(line: 0, scope: !2023)
!2323 = !DILocation(line: 619, column: 36, scope: !2023)
!2324 = !DILocation(line: 621, column: 25, scope: !2023)
!2325 = !DILocation(line: 631, column: 38, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2032, file: !486, line: 629, column: 23)
!2327 = !DILocation(line: 631, column: 48, scope: !2326)
!2328 = !DILocation(line: 665, column: 19, scope: !2024)
!2329 = !DILocation(line: 666, column: 15, scope: !2021)
!2330 = !DILocation(line: 626, column: 25, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2033, file: !486, line: 624, column: 23)
!2332 = !DILocation(line: 631, column: 51, scope: !2326)
!2333 = !DILocation(line: 631, column: 25, scope: !2326)
!2334 = !DILocation(line: 632, column: 28, scope: !2326)
!2335 = !DILocation(line: 631, column: 34, scope: !2326)
!2336 = distinct !{!2336, !2333, !2334, !908}
!2337 = !DILocation(line: 646, column: 29, scope: !2030)
!2338 = !DILocation(line: 0, scope: !2028)
!2339 = !DILocation(line: 649, column: 49, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2028, file: !486, line: 648, column: 29)
!2341 = !DILocation(line: 649, column: 39, scope: !2340)
!2342 = !DILocation(line: 649, column: 31, scope: !2340)
!2343 = !DILocation(line: 648, column: 60, scope: !2340)
!2344 = !DILocation(line: 648, column: 50, scope: !2340)
!2345 = !DILocation(line: 648, column: 29, scope: !2028)
!2346 = distinct !{!2346, !2345, !2347, !908}
!2347 = !DILocation(line: 654, column: 33, scope: !2028)
!2348 = !DILocation(line: 657, column: 43, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2031, file: !486, line: 657, column: 29)
!2350 = !DILocalVariable(name: "wc", arg: 1, scope: !2351, file: !2352, line: 865, type: !2355)
!2351 = distinct !DISubprogram(name: "c32isprint", scope: !2352, file: !2352, line: 865, type: !2353, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2357)
!2352 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!70, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2356, line: 20, baseType: !76)
!2356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2357 = !{!2350}
!2358 = !DILocation(line: 0, scope: !2351, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 657, column: 31, scope: !2349)
!2360 = !DILocation(line: 871, column: 10, scope: !2351, inlinedAt: !2359)
!2361 = !DILocation(line: 657, column: 31, scope: !2349)
!2362 = !DILocation(line: 657, column: 29, scope: !2031)
!2363 = !DILocation(line: 664, column: 23, scope: !2023)
!2364 = !DILocation(line: 670, column: 19, scope: !2037)
!2365 = !DILocation(line: 670, column: 45, scope: !2037)
!2366 = !DILocation(line: 674, column: 33, scope: !2036)
!2367 = !DILocation(line: 0, scope: !2036)
!2368 = !DILocation(line: 676, column: 17, scope: !2036)
!2369 = !DILocation(line: 398, column: 12, scope: !2010)
!2370 = !DILocation(line: 678, column: 43, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !486, line: 678, column: 25)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !486, line: 677, column: 19)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !486, line: 676, column: 17)
!2374 = distinct !DILexicalBlock(scope: !2036, file: !486, line: 676, column: 17)
!2375 = !DILocation(line: 680, column: 25, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !486, line: 680, column: 25)
!2377 = distinct !DILexicalBlock(scope: !2371, file: !486, line: 679, column: 23)
!2378 = !DILocation(line: 680, column: 25, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !486, line: 680, column: 25)
!2380 = !DILocation(line: 680, column: 25, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !486, line: 680, column: 25)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !486, line: 680, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !486, line: 680, column: 25)
!2384 = !DILocation(line: 680, column: 25, scope: !2382)
!2385 = !DILocation(line: 680, column: 25, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !486, line: 680, column: 25)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !486, line: 680, column: 25)
!2388 = !DILocation(line: 680, column: 25, scope: !2387)
!2389 = !DILocation(line: 680, column: 25, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !486, line: 680, column: 25)
!2391 = distinct !DILexicalBlock(scope: !2383, file: !486, line: 680, column: 25)
!2392 = !DILocation(line: 680, column: 25, scope: !2391)
!2393 = !DILocation(line: 680, column: 25, scope: !2383)
!2394 = !DILocation(line: 680, column: 25, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !486, line: 680, column: 25)
!2396 = distinct !DILexicalBlock(scope: !2376, file: !486, line: 680, column: 25)
!2397 = !DILocation(line: 680, column: 25, scope: !2396)
!2398 = !DILocation(line: 681, column: 25, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !486, line: 681, column: 25)
!2400 = distinct !DILexicalBlock(scope: !2377, file: !486, line: 681, column: 25)
!2401 = !DILocation(line: 681, column: 25, scope: !2400)
!2402 = !DILocation(line: 682, column: 25, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !486, line: 682, column: 25)
!2404 = distinct !DILexicalBlock(scope: !2377, file: !486, line: 682, column: 25)
!2405 = !DILocation(line: 682, column: 25, scope: !2404)
!2406 = !DILocation(line: 683, column: 38, scope: !2377)
!2407 = !DILocation(line: 683, column: 33, scope: !2377)
!2408 = !DILocation(line: 684, column: 23, scope: !2377)
!2409 = !DILocation(line: 685, column: 30, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2371, file: !486, line: 685, column: 30)
!2411 = !DILocation(line: 685, column: 30, scope: !2371)
!2412 = !DILocation(line: 687, column: 25, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !486, line: 687, column: 25)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !486, line: 687, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !486, line: 686, column: 23)
!2416 = !DILocation(line: 687, column: 25, scope: !2414)
!2417 = !DILocation(line: 689, column: 23, scope: !2415)
!2418 = !DILocation(line: 690, column: 35, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2372, file: !486, line: 690, column: 25)
!2420 = !DILocation(line: 690, column: 30, scope: !2419)
!2421 = !DILocation(line: 690, column: 25, scope: !2372)
!2422 = !DILocation(line: 692, column: 21, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !486, line: 692, column: 21)
!2424 = distinct !DILexicalBlock(scope: !2372, file: !486, line: 692, column: 21)
!2425 = !DILocation(line: 692, column: 21, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !486, line: 692, column: 21)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !486, line: 692, column: 21)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !486, line: 692, column: 21)
!2429 = !DILocation(line: 692, column: 21, scope: !2427)
!2430 = !DILocation(line: 692, column: 21, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !486, line: 692, column: 21)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !486, line: 692, column: 21)
!2433 = !DILocation(line: 692, column: 21, scope: !2432)
!2434 = !DILocation(line: 692, column: 21, scope: !2428)
!2435 = !DILocation(line: 0, scope: !2372)
!2436 = !DILocation(line: 693, column: 21, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !486, line: 693, column: 21)
!2438 = distinct !DILexicalBlock(scope: !2372, file: !486, line: 693, column: 21)
!2439 = !DILocation(line: 693, column: 21, scope: !2438)
!2440 = !DILocation(line: 694, column: 25, scope: !2372)
!2441 = !DILocation(line: 676, column: 17, scope: !2373)
!2442 = distinct !{!2442, !2443, !2444}
!2443 = !DILocation(line: 676, column: 17, scope: !2374)
!2444 = !DILocation(line: 695, column: 19, scope: !2374)
!2445 = !DILocation(line: 409, column: 30, scope: !2156)
!2446 = !DILocation(line: 702, column: 34, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2010, file: !486, line: 702, column: 11)
!2448 = !DILocation(line: 704, column: 14, scope: !2447)
!2449 = !DILocation(line: 705, column: 14, scope: !2447)
!2450 = !DILocation(line: 705, column: 35, scope: !2447)
!2451 = !DILocation(line: 705, column: 17, scope: !2447)
!2452 = !DILocation(line: 705, column: 47, scope: !2447)
!2453 = !DILocation(line: 705, column: 65, scope: !2447)
!2454 = !DILocation(line: 706, column: 11, scope: !2447)
!2455 = !DILocation(line: 702, column: 11, scope: !2010)
!2456 = !DILocation(line: 395, column: 15, scope: !2008)
!2457 = !DILocation(line: 709, column: 5, scope: !2010)
!2458 = !DILocation(line: 710, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2010, file: !486, line: 710, column: 7)
!2460 = !DILocation(line: 710, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2459, file: !486, line: 710, column: 7)
!2462 = !DILocation(line: 710, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !486, line: 710, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !486, line: 710, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !486, line: 710, column: 7)
!2466 = !DILocation(line: 710, column: 7, scope: !2464)
!2467 = !DILocation(line: 710, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !486, line: 710, column: 7)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !486, line: 710, column: 7)
!2470 = !DILocation(line: 710, column: 7, scope: !2469)
!2471 = !DILocation(line: 710, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !486, line: 710, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2465, file: !486, line: 710, column: 7)
!2474 = !DILocation(line: 710, column: 7, scope: !2473)
!2475 = !DILocation(line: 710, column: 7, scope: !2465)
!2476 = !DILocation(line: 710, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !486, line: 710, column: 7)
!2478 = distinct !DILexicalBlock(scope: !2459, file: !486, line: 710, column: 7)
!2479 = !DILocation(line: 710, column: 7, scope: !2478)
!2480 = !DILocation(line: 712, column: 5, scope: !2010)
!2481 = !DILocation(line: 713, column: 7, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !486, line: 713, column: 7)
!2483 = distinct !DILexicalBlock(scope: !2010, file: !486, line: 713, column: 7)
!2484 = !DILocation(line: 417, column: 21, scope: !2010)
!2485 = !DILocation(line: 713, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !486, line: 713, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !486, line: 713, column: 7)
!2488 = distinct !DILexicalBlock(scope: !2482, file: !486, line: 713, column: 7)
!2489 = !DILocation(line: 713, column: 7, scope: !2487)
!2490 = !DILocation(line: 713, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !486, line: 713, column: 7)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !486, line: 713, column: 7)
!2493 = !DILocation(line: 713, column: 7, scope: !2492)
!2494 = !DILocation(line: 713, column: 7, scope: !2488)
!2495 = !DILocation(line: 714, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !486, line: 714, column: 7)
!2497 = distinct !DILexicalBlock(scope: !2010, file: !486, line: 714, column: 7)
!2498 = !DILocation(line: 714, column: 7, scope: !2497)
!2499 = !DILocation(line: 716, column: 13, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2010, file: !486, line: 716, column: 11)
!2501 = !DILocation(line: 716, column: 11, scope: !2010)
!2502 = !DILocation(line: 718, column: 5, scope: !2011)
!2503 = !DILocation(line: 395, column: 82, scope: !2011)
!2504 = !DILocation(line: 395, column: 3, scope: !2011)
!2505 = distinct !{!2505, !2152, !2506, !908}
!2506 = !DILocation(line: 718, column: 5, scope: !2008)
!2507 = !DILocation(line: 720, column: 11, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !1977, file: !486, line: 720, column: 7)
!2509 = !DILocation(line: 720, column: 16, scope: !2508)
!2510 = !DILocation(line: 728, column: 51, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !1977, file: !486, line: 728, column: 7)
!2512 = !DILocation(line: 731, column: 11, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !486, line: 731, column: 11)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !486, line: 730, column: 5)
!2515 = !DILocation(line: 731, column: 11, scope: !2514)
!2516 = !DILocation(line: 732, column: 16, scope: !2513)
!2517 = !DILocation(line: 732, column: 9, scope: !2513)
!2518 = !DILocation(line: 736, column: 18, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2513, file: !486, line: 736, column: 16)
!2520 = !DILocation(line: 736, column: 29, scope: !2519)
!2521 = !DILocation(line: 745, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !1977, file: !486, line: 745, column: 7)
!2523 = !DILocation(line: 745, column: 20, scope: !2522)
!2524 = !DILocation(line: 746, column: 12, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !486, line: 746, column: 5)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !486, line: 746, column: 5)
!2527 = !DILocation(line: 746, column: 5, scope: !2526)
!2528 = !DILocation(line: 747, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !486, line: 747, column: 7)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !486, line: 747, column: 7)
!2531 = !DILocation(line: 747, column: 7, scope: !2530)
!2532 = !DILocation(line: 746, column: 39, scope: !2525)
!2533 = distinct !{!2533, !2527, !2534, !908}
!2534 = !DILocation(line: 747, column: 7, scope: !2526)
!2535 = !DILocation(line: 749, column: 11, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !1977, file: !486, line: 749, column: 7)
!2537 = !DILocation(line: 749, column: 7, scope: !1977)
!2538 = !DILocation(line: 750, column: 5, scope: !2536)
!2539 = !DILocation(line: 750, column: 17, scope: !2536)
!2540 = !DILocation(line: 753, column: 2, scope: !1977)
!2541 = !DILocation(line: 756, column: 51, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !1977, file: !486, line: 756, column: 7)
!2543 = !DILocation(line: 756, column: 21, scope: !2542)
!2544 = !DILocation(line: 760, column: 42, scope: !1977)
!2545 = !DILocation(line: 758, column: 10, scope: !1977)
!2546 = !DILocation(line: 758, column: 3, scope: !1977)
!2547 = !DILocation(line: 762, column: 1, scope: !1977)
!2548 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !986, file: !986, line: 98, type: !2549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!108}
!2551 = !DISubprogram(name: "strlen", scope: !982, file: !982, line: 407, type: !2552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!110, !111}
!2554 = !DISubprogram(name: "iswprint", scope: !2555, file: !2555, line: 120, type: !2353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!2555 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2556 = distinct !DISubprogram(name: "quotearg_alloc", scope: !486, file: !486, line: 788, type: !2557, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!105, !111, !108, !1870}
!2559 = !{!2560, !2561, !2562}
!2560 = !DILocalVariable(name: "arg", arg: 1, scope: !2556, file: !486, line: 788, type: !111)
!2561 = !DILocalVariable(name: "argsize", arg: 2, scope: !2556, file: !486, line: 788, type: !108)
!2562 = !DILocalVariable(name: "o", arg: 3, scope: !2556, file: !486, line: 789, type: !1870)
!2563 = !DILocation(line: 0, scope: !2556)
!2564 = !DILocalVariable(name: "arg", arg: 1, scope: !2565, file: !486, line: 801, type: !111)
!2565 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !486, file: !486, line: 801, type: !2566, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!105, !111, !108, !728, !1870}
!2568 = !{!2564, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576}
!2569 = !DILocalVariable(name: "argsize", arg: 2, scope: !2565, file: !486, line: 801, type: !108)
!2570 = !DILocalVariable(name: "size", arg: 3, scope: !2565, file: !486, line: 801, type: !728)
!2571 = !DILocalVariable(name: "o", arg: 4, scope: !2565, file: !486, line: 802, type: !1870)
!2572 = !DILocalVariable(name: "p", scope: !2565, file: !486, line: 804, type: !1870)
!2573 = !DILocalVariable(name: "saved_errno", scope: !2565, file: !486, line: 805, type: !70)
!2574 = !DILocalVariable(name: "flags", scope: !2565, file: !486, line: 807, type: !70)
!2575 = !DILocalVariable(name: "bufsize", scope: !2565, file: !486, line: 808, type: !108)
!2576 = !DILocalVariable(name: "buf", scope: !2565, file: !486, line: 812, type: !105)
!2577 = !DILocation(line: 0, scope: !2565, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 791, column: 10, scope: !2556)
!2579 = !DILocation(line: 804, column: 37, scope: !2565, inlinedAt: !2578)
!2580 = !DILocation(line: 805, column: 21, scope: !2565, inlinedAt: !2578)
!2581 = !DILocation(line: 807, column: 18, scope: !2565, inlinedAt: !2578)
!2582 = !DILocation(line: 807, column: 24, scope: !2565, inlinedAt: !2578)
!2583 = !DILocation(line: 808, column: 72, scope: !2565, inlinedAt: !2578)
!2584 = !DILocation(line: 809, column: 56, scope: !2565, inlinedAt: !2578)
!2585 = !DILocation(line: 810, column: 49, scope: !2565, inlinedAt: !2578)
!2586 = !DILocation(line: 811, column: 49, scope: !2565, inlinedAt: !2578)
!2587 = !DILocation(line: 808, column: 20, scope: !2565, inlinedAt: !2578)
!2588 = !DILocation(line: 811, column: 62, scope: !2565, inlinedAt: !2578)
!2589 = !DILocation(line: 812, column: 15, scope: !2565, inlinedAt: !2578)
!2590 = !DILocation(line: 813, column: 60, scope: !2565, inlinedAt: !2578)
!2591 = !DILocation(line: 815, column: 32, scope: !2565, inlinedAt: !2578)
!2592 = !DILocation(line: 815, column: 47, scope: !2565, inlinedAt: !2578)
!2593 = !DILocation(line: 813, column: 3, scope: !2565, inlinedAt: !2578)
!2594 = !DILocation(line: 816, column: 9, scope: !2565, inlinedAt: !2578)
!2595 = !DILocation(line: 791, column: 3, scope: !2556)
!2596 = !DILocation(line: 0, scope: !2565)
!2597 = !DILocation(line: 804, column: 37, scope: !2565)
!2598 = !DILocation(line: 805, column: 21, scope: !2565)
!2599 = !DILocation(line: 807, column: 18, scope: !2565)
!2600 = !DILocation(line: 807, column: 27, scope: !2565)
!2601 = !DILocation(line: 807, column: 24, scope: !2565)
!2602 = !DILocation(line: 808, column: 72, scope: !2565)
!2603 = !DILocation(line: 809, column: 56, scope: !2565)
!2604 = !DILocation(line: 810, column: 49, scope: !2565)
!2605 = !DILocation(line: 811, column: 49, scope: !2565)
!2606 = !DILocation(line: 808, column: 20, scope: !2565)
!2607 = !DILocation(line: 811, column: 62, scope: !2565)
!2608 = !DILocation(line: 812, column: 15, scope: !2565)
!2609 = !DILocation(line: 813, column: 60, scope: !2565)
!2610 = !DILocation(line: 815, column: 32, scope: !2565)
!2611 = !DILocation(line: 815, column: 47, scope: !2565)
!2612 = !DILocation(line: 813, column: 3, scope: !2565)
!2613 = !DILocation(line: 816, column: 9, scope: !2565)
!2614 = !DILocation(line: 817, column: 7, scope: !2565)
!2615 = !DILocation(line: 818, column: 11, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2565, file: !486, line: 817, column: 7)
!2617 = !{!1318, !1318, i64 0}
!2618 = !DILocation(line: 818, column: 5, scope: !2616)
!2619 = !DILocation(line: 819, column: 3, scope: !2565)
!2620 = distinct !DISubprogram(name: "quotearg_free", scope: !486, file: !486, line: 837, type: !441, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2621)
!2621 = !{!2622, !2623}
!2622 = !DILocalVariable(name: "sv", scope: !2620, file: !486, line: 839, type: !570)
!2623 = !DILocalVariable(name: "i", scope: !2624, file: !486, line: 840, type: !70)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !486, line: 840, column: 3)
!2625 = !DILocation(line: 839, column: 24, scope: !2620)
!2626 = !DILocation(line: 0, scope: !2620)
!2627 = !DILocation(line: 0, scope: !2624)
!2628 = !DILocation(line: 840, column: 21, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2624, file: !486, line: 840, column: 3)
!2630 = !DILocation(line: 840, column: 3, scope: !2624)
!2631 = !DILocation(line: 842, column: 13, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2620, file: !486, line: 842, column: 7)
!2633 = !{!2634, !795, i64 8}
!2634 = !{!"slotvec", !1318, i64 0, !795, i64 8}
!2635 = !DILocation(line: 842, column: 17, scope: !2632)
!2636 = !DILocation(line: 842, column: 7, scope: !2620)
!2637 = !DILocation(line: 841, column: 17, scope: !2629)
!2638 = !DILocation(line: 841, column: 5, scope: !2629)
!2639 = !DILocation(line: 840, column: 32, scope: !2629)
!2640 = distinct !{!2640, !2630, !2641, !908}
!2641 = !DILocation(line: 841, column: 20, scope: !2624)
!2642 = !DILocation(line: 844, column: 7, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2632, file: !486, line: 843, column: 5)
!2644 = !DILocation(line: 845, column: 21, scope: !2643)
!2645 = !{!2634, !1318, i64 0}
!2646 = !DILocation(line: 846, column: 20, scope: !2643)
!2647 = !DILocation(line: 847, column: 5, scope: !2643)
!2648 = !DILocation(line: 848, column: 10, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2620, file: !486, line: 848, column: 7)
!2650 = !DILocation(line: 848, column: 7, scope: !2620)
!2651 = !DILocation(line: 850, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !486, line: 849, column: 5)
!2653 = !DILocation(line: 851, column: 15, scope: !2652)
!2654 = !DILocation(line: 852, column: 5, scope: !2652)
!2655 = !DILocation(line: 853, column: 10, scope: !2620)
!2656 = !DILocation(line: 854, column: 1, scope: !2620)
!2657 = distinct !DISubprogram(name: "quotearg_n", scope: !486, file: !486, line: 919, type: !979, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2658)
!2658 = !{!2659, !2660}
!2659 = !DILocalVariable(name: "n", arg: 1, scope: !2657, file: !486, line: 919, type: !70)
!2660 = !DILocalVariable(name: "arg", arg: 2, scope: !2657, file: !486, line: 919, type: !111)
!2661 = !DILocation(line: 0, scope: !2657)
!2662 = !DILocation(line: 921, column: 10, scope: !2657)
!2663 = !DILocation(line: 921, column: 3, scope: !2657)
!2664 = distinct !DISubprogram(name: "quotearg_n_options", scope: !486, file: !486, line: 866, type: !2665, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!105, !70, !111, !108, !1870}
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2678, !2679, !2681, !2682, !2683}
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !486, line: 866, type: !70)
!2669 = !DILocalVariable(name: "arg", arg: 2, scope: !2664, file: !486, line: 866, type: !111)
!2670 = !DILocalVariable(name: "argsize", arg: 3, scope: !2664, file: !486, line: 866, type: !108)
!2671 = !DILocalVariable(name: "options", arg: 4, scope: !2664, file: !486, line: 867, type: !1870)
!2672 = !DILocalVariable(name: "saved_errno", scope: !2664, file: !486, line: 869, type: !70)
!2673 = !DILocalVariable(name: "sv", scope: !2664, file: !486, line: 871, type: !570)
!2674 = !DILocalVariable(name: "nslots_max", scope: !2664, file: !486, line: 873, type: !70)
!2675 = !DILocalVariable(name: "preallocated", scope: !2676, file: !486, line: 879, type: !171)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !486, line: 878, column: 5)
!2677 = distinct !DILexicalBlock(scope: !2664, file: !486, line: 877, column: 7)
!2678 = !DILocalVariable(name: "new_nslots", scope: !2676, file: !486, line: 880, type: !741)
!2679 = !DILocalVariable(name: "size", scope: !2680, file: !486, line: 891, type: !108)
!2680 = distinct !DILexicalBlock(scope: !2664, file: !486, line: 890, column: 3)
!2681 = !DILocalVariable(name: "val", scope: !2680, file: !486, line: 892, type: !105)
!2682 = !DILocalVariable(name: "flags", scope: !2680, file: !486, line: 894, type: !70)
!2683 = !DILocalVariable(name: "qsize", scope: !2680, file: !486, line: 895, type: !108)
!2684 = !DILocation(line: 0, scope: !2664)
!2685 = !DILocation(line: 869, column: 21, scope: !2664)
!2686 = !DILocation(line: 871, column: 24, scope: !2664)
!2687 = !DILocation(line: 874, column: 17, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2664, file: !486, line: 874, column: 7)
!2689 = !DILocation(line: 875, column: 5, scope: !2688)
!2690 = !DILocation(line: 877, column: 7, scope: !2677)
!2691 = !DILocation(line: 877, column: 14, scope: !2677)
!2692 = !DILocation(line: 877, column: 7, scope: !2664)
!2693 = !DILocation(line: 879, column: 31, scope: !2676)
!2694 = !DILocation(line: 0, scope: !2676)
!2695 = !DILocation(line: 880, column: 7, scope: !2676)
!2696 = !DILocation(line: 880, column: 26, scope: !2676)
!2697 = !DILocation(line: 880, column: 13, scope: !2676)
!2698 = !DILocation(line: 882, column: 31, scope: !2676)
!2699 = !DILocation(line: 883, column: 33, scope: !2676)
!2700 = !DILocation(line: 883, column: 42, scope: !2676)
!2701 = !DILocation(line: 883, column: 31, scope: !2676)
!2702 = !DILocation(line: 882, column: 22, scope: !2676)
!2703 = !DILocation(line: 882, column: 15, scope: !2676)
!2704 = !DILocation(line: 884, column: 11, scope: !2676)
!2705 = !DILocation(line: 885, column: 15, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2676, file: !486, line: 884, column: 11)
!2707 = !{i64 0, i64 8, !2617, i64 8, i64 8, !794}
!2708 = !DILocation(line: 885, column: 9, scope: !2706)
!2709 = !DILocation(line: 886, column: 20, scope: !2676)
!2710 = !DILocation(line: 886, column: 18, scope: !2676)
!2711 = !DILocation(line: 886, column: 32, scope: !2676)
!2712 = !DILocation(line: 886, column: 43, scope: !2676)
!2713 = !DILocation(line: 886, column: 53, scope: !2676)
!2714 = !DILocation(line: 0, scope: !2085, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 886, column: 7, scope: !2676)
!2716 = !DILocation(line: 59, column: 10, scope: !2085, inlinedAt: !2715)
!2717 = !DILocation(line: 887, column: 16, scope: !2676)
!2718 = !DILocation(line: 887, column: 14, scope: !2676)
!2719 = !DILocation(line: 888, column: 5, scope: !2677)
!2720 = !DILocation(line: 888, column: 5, scope: !2676)
!2721 = !DILocation(line: 891, column: 19, scope: !2680)
!2722 = !DILocation(line: 891, column: 25, scope: !2680)
!2723 = !DILocation(line: 0, scope: !2680)
!2724 = !DILocation(line: 892, column: 23, scope: !2680)
!2725 = !DILocation(line: 894, column: 26, scope: !2680)
!2726 = !DILocation(line: 894, column: 32, scope: !2680)
!2727 = !DILocation(line: 896, column: 55, scope: !2680)
!2728 = !DILocation(line: 897, column: 55, scope: !2680)
!2729 = !DILocation(line: 898, column: 55, scope: !2680)
!2730 = !DILocation(line: 899, column: 55, scope: !2680)
!2731 = !DILocation(line: 895, column: 20, scope: !2680)
!2732 = !DILocation(line: 901, column: 14, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2680, file: !486, line: 901, column: 9)
!2734 = !DILocation(line: 901, column: 9, scope: !2680)
!2735 = !DILocation(line: 903, column: 35, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2733, file: !486, line: 902, column: 7)
!2737 = !DILocation(line: 903, column: 20, scope: !2736)
!2738 = !DILocation(line: 904, column: 17, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !486, line: 904, column: 13)
!2740 = !DILocation(line: 904, column: 13, scope: !2736)
!2741 = !DILocation(line: 905, column: 11, scope: !2739)
!2742 = !DILocation(line: 906, column: 27, scope: !2736)
!2743 = !DILocation(line: 906, column: 19, scope: !2736)
!2744 = !DILocation(line: 907, column: 69, scope: !2736)
!2745 = !DILocation(line: 909, column: 44, scope: !2736)
!2746 = !DILocation(line: 910, column: 44, scope: !2736)
!2747 = !DILocation(line: 907, column: 9, scope: !2736)
!2748 = !DILocation(line: 911, column: 7, scope: !2736)
!2749 = !DILocation(line: 913, column: 11, scope: !2680)
!2750 = !DILocation(line: 914, column: 5, scope: !2680)
!2751 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !486, file: !486, line: 925, type: !2752, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!105, !70, !111, !108}
!2754 = !{!2755, !2756, !2757}
!2755 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !486, line: 925, type: !70)
!2756 = !DILocalVariable(name: "arg", arg: 2, scope: !2751, file: !486, line: 925, type: !111)
!2757 = !DILocalVariable(name: "argsize", arg: 3, scope: !2751, file: !486, line: 925, type: !108)
!2758 = !DILocation(line: 0, scope: !2751)
!2759 = !DILocation(line: 927, column: 10, scope: !2751)
!2760 = !DILocation(line: 927, column: 3, scope: !2751)
!2761 = distinct !DISubprogram(name: "quotearg", scope: !486, file: !486, line: 931, type: !988, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2762)
!2762 = !{!2763}
!2763 = !DILocalVariable(name: "arg", arg: 1, scope: !2761, file: !486, line: 931, type: !111)
!2764 = !DILocation(line: 0, scope: !2761)
!2765 = !DILocation(line: 0, scope: !2657, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 933, column: 10, scope: !2761)
!2767 = !DILocation(line: 921, column: 10, scope: !2657, inlinedAt: !2766)
!2768 = !DILocation(line: 933, column: 3, scope: !2761)
!2769 = distinct !DISubprogram(name: "quotearg_mem", scope: !486, file: !486, line: 937, type: !2770, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!105, !111, !108}
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "arg", arg: 1, scope: !2769, file: !486, line: 937, type: !111)
!2774 = !DILocalVariable(name: "argsize", arg: 2, scope: !2769, file: !486, line: 937, type: !108)
!2775 = !DILocation(line: 0, scope: !2769)
!2776 = !DILocation(line: 0, scope: !2751, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 939, column: 10, scope: !2769)
!2778 = !DILocation(line: 927, column: 10, scope: !2751, inlinedAt: !2777)
!2779 = !DILocation(line: 939, column: 3, scope: !2769)
!2780 = distinct !DISubprogram(name: "quotearg_n_style", scope: !486, file: !486, line: 943, type: !2781, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!105, !70, !74, !111}
!2783 = !{!2784, !2785, !2786, !2787}
!2784 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !486, line: 943, type: !70)
!2785 = !DILocalVariable(name: "s", arg: 2, scope: !2780, file: !486, line: 943, type: !74)
!2786 = !DILocalVariable(name: "arg", arg: 3, scope: !2780, file: !486, line: 943, type: !111)
!2787 = !DILocalVariable(name: "o", scope: !2780, file: !486, line: 945, type: !1871)
!2788 = !DILocation(line: 0, scope: !2780)
!2789 = !DILocation(line: 945, column: 3, scope: !2780)
!2790 = !DILocation(line: 945, column: 32, scope: !2780)
!2791 = !{!2792}
!2792 = distinct !{!2792, !2793, !"quoting_options_from_style: argument 0"}
!2793 = distinct !{!2793, !"quoting_options_from_style"}
!2794 = !DILocation(line: 945, column: 36, scope: !2780)
!2795 = !DILocalVariable(name: "style", arg: 1, scope: !2796, file: !486, line: 183, type: !74)
!2796 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !486, file: !486, line: 183, type: !2797, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!522, !74}
!2799 = !{!2795, !2800}
!2800 = !DILocalVariable(name: "o", scope: !2796, file: !486, line: 185, type: !522)
!2801 = !DILocation(line: 0, scope: !2796, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 945, column: 36, scope: !2780)
!2803 = !DILocation(line: 185, column: 26, scope: !2796, inlinedAt: !2802)
!2804 = !DILocation(line: 186, column: 13, scope: !2805, inlinedAt: !2802)
!2805 = distinct !DILexicalBlock(scope: !2796, file: !486, line: 186, column: 7)
!2806 = !DILocation(line: 186, column: 7, scope: !2796, inlinedAt: !2802)
!2807 = !DILocation(line: 187, column: 5, scope: !2805, inlinedAt: !2802)
!2808 = !DILocation(line: 188, column: 11, scope: !2796, inlinedAt: !2802)
!2809 = !DILocation(line: 946, column: 10, scope: !2780)
!2810 = !DILocation(line: 947, column: 1, scope: !2780)
!2811 = !DILocation(line: 946, column: 3, scope: !2780)
!2812 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !486, file: !486, line: 950, type: !2813, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!105, !70, !74, !111, !108}
!2815 = !{!2816, !2817, !2818, !2819, !2820}
!2816 = !DILocalVariable(name: "n", arg: 1, scope: !2812, file: !486, line: 950, type: !70)
!2817 = !DILocalVariable(name: "s", arg: 2, scope: !2812, file: !486, line: 950, type: !74)
!2818 = !DILocalVariable(name: "arg", arg: 3, scope: !2812, file: !486, line: 951, type: !111)
!2819 = !DILocalVariable(name: "argsize", arg: 4, scope: !2812, file: !486, line: 951, type: !108)
!2820 = !DILocalVariable(name: "o", scope: !2812, file: !486, line: 953, type: !1871)
!2821 = !DILocation(line: 0, scope: !2812)
!2822 = !DILocation(line: 953, column: 3, scope: !2812)
!2823 = !DILocation(line: 953, column: 32, scope: !2812)
!2824 = !{!2825}
!2825 = distinct !{!2825, !2826, !"quoting_options_from_style: argument 0"}
!2826 = distinct !{!2826, !"quoting_options_from_style"}
!2827 = !DILocation(line: 953, column: 36, scope: !2812)
!2828 = !DILocation(line: 0, scope: !2796, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 953, column: 36, scope: !2812)
!2830 = !DILocation(line: 185, column: 26, scope: !2796, inlinedAt: !2829)
!2831 = !DILocation(line: 186, column: 13, scope: !2805, inlinedAt: !2829)
!2832 = !DILocation(line: 186, column: 7, scope: !2796, inlinedAt: !2829)
!2833 = !DILocation(line: 187, column: 5, scope: !2805, inlinedAt: !2829)
!2834 = !DILocation(line: 188, column: 11, scope: !2796, inlinedAt: !2829)
!2835 = !DILocation(line: 954, column: 10, scope: !2812)
!2836 = !DILocation(line: 955, column: 1, scope: !2812)
!2837 = !DILocation(line: 954, column: 3, scope: !2812)
!2838 = distinct !DISubprogram(name: "quotearg_style", scope: !486, file: !486, line: 958, type: !2839, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!105, !74, !111}
!2841 = !{!2842, !2843}
!2842 = !DILocalVariable(name: "s", arg: 1, scope: !2838, file: !486, line: 958, type: !74)
!2843 = !DILocalVariable(name: "arg", arg: 2, scope: !2838, file: !486, line: 958, type: !111)
!2844 = !DILocation(line: 0, scope: !2838)
!2845 = !DILocation(line: 0, scope: !2780, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 960, column: 10, scope: !2838)
!2847 = !DILocation(line: 945, column: 3, scope: !2780, inlinedAt: !2846)
!2848 = !DILocation(line: 945, column: 32, scope: !2780, inlinedAt: !2846)
!2849 = !{!2850}
!2850 = distinct !{!2850, !2851, !"quoting_options_from_style: argument 0"}
!2851 = distinct !{!2851, !"quoting_options_from_style"}
!2852 = !DILocation(line: 945, column: 36, scope: !2780, inlinedAt: !2846)
!2853 = !DILocation(line: 0, scope: !2796, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 945, column: 36, scope: !2780, inlinedAt: !2846)
!2855 = !DILocation(line: 185, column: 26, scope: !2796, inlinedAt: !2854)
!2856 = !DILocation(line: 186, column: 13, scope: !2805, inlinedAt: !2854)
!2857 = !DILocation(line: 186, column: 7, scope: !2796, inlinedAt: !2854)
!2858 = !DILocation(line: 187, column: 5, scope: !2805, inlinedAt: !2854)
!2859 = !DILocation(line: 188, column: 11, scope: !2796, inlinedAt: !2854)
!2860 = !DILocation(line: 946, column: 10, scope: !2780, inlinedAt: !2846)
!2861 = !DILocation(line: 947, column: 1, scope: !2780, inlinedAt: !2846)
!2862 = !DILocation(line: 960, column: 3, scope: !2838)
!2863 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !486, file: !486, line: 964, type: !2864, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!105, !74, !111, !108}
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "s", arg: 1, scope: !2863, file: !486, line: 964, type: !74)
!2868 = !DILocalVariable(name: "arg", arg: 2, scope: !2863, file: !486, line: 964, type: !111)
!2869 = !DILocalVariable(name: "argsize", arg: 3, scope: !2863, file: !486, line: 964, type: !108)
!2870 = !DILocation(line: 0, scope: !2863)
!2871 = !DILocation(line: 0, scope: !2812, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 966, column: 10, scope: !2863)
!2873 = !DILocation(line: 953, column: 3, scope: !2812, inlinedAt: !2872)
!2874 = !DILocation(line: 953, column: 32, scope: !2812, inlinedAt: !2872)
!2875 = !{!2876}
!2876 = distinct !{!2876, !2877, !"quoting_options_from_style: argument 0"}
!2877 = distinct !{!2877, !"quoting_options_from_style"}
!2878 = !DILocation(line: 953, column: 36, scope: !2812, inlinedAt: !2872)
!2879 = !DILocation(line: 0, scope: !2796, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 953, column: 36, scope: !2812, inlinedAt: !2872)
!2881 = !DILocation(line: 185, column: 26, scope: !2796, inlinedAt: !2880)
!2882 = !DILocation(line: 186, column: 13, scope: !2805, inlinedAt: !2880)
!2883 = !DILocation(line: 186, column: 7, scope: !2796, inlinedAt: !2880)
!2884 = !DILocation(line: 187, column: 5, scope: !2805, inlinedAt: !2880)
!2885 = !DILocation(line: 188, column: 11, scope: !2796, inlinedAt: !2880)
!2886 = !DILocation(line: 954, column: 10, scope: !2812, inlinedAt: !2872)
!2887 = !DILocation(line: 955, column: 1, scope: !2812, inlinedAt: !2872)
!2888 = !DILocation(line: 966, column: 3, scope: !2863)
!2889 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !486, file: !486, line: 970, type: !2890, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!105, !111, !108, !4}
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DILocalVariable(name: "arg", arg: 1, scope: !2889, file: !486, line: 970, type: !111)
!2894 = !DILocalVariable(name: "argsize", arg: 2, scope: !2889, file: !486, line: 970, type: !108)
!2895 = !DILocalVariable(name: "ch", arg: 3, scope: !2889, file: !486, line: 970, type: !4)
!2896 = !DILocalVariable(name: "options", scope: !2889, file: !486, line: 972, type: !522)
!2897 = !DILocation(line: 0, scope: !2889)
!2898 = !DILocation(line: 972, column: 3, scope: !2889)
!2899 = !DILocation(line: 972, column: 26, scope: !2889)
!2900 = !DILocation(line: 973, column: 13, scope: !2889)
!2901 = !{i64 0, i64 4, !870, i64 4, i64 4, !861, i64 8, i64 32, !870, i64 40, i64 8, !794, i64 48, i64 8, !794}
!2902 = !DILocation(line: 0, scope: !1890, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 974, column: 3, scope: !2889)
!2904 = !DILocation(line: 147, column: 41, scope: !1890, inlinedAt: !2903)
!2905 = !DILocation(line: 147, column: 62, scope: !1890, inlinedAt: !2903)
!2906 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !2903)
!2907 = !DILocation(line: 148, column: 15, scope: !1890, inlinedAt: !2903)
!2908 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !2903)
!2909 = !DILocation(line: 149, column: 24, scope: !1890, inlinedAt: !2903)
!2910 = !DILocation(line: 150, column: 19, scope: !1890, inlinedAt: !2903)
!2911 = !DILocation(line: 150, column: 24, scope: !1890, inlinedAt: !2903)
!2912 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !2903)
!2913 = !DILocation(line: 975, column: 10, scope: !2889)
!2914 = !DILocation(line: 976, column: 1, scope: !2889)
!2915 = !DILocation(line: 975, column: 3, scope: !2889)
!2916 = distinct !DISubprogram(name: "quotearg_char", scope: !486, file: !486, line: 979, type: !2917, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!105, !111, !4}
!2919 = !{!2920, !2921}
!2920 = !DILocalVariable(name: "arg", arg: 1, scope: !2916, file: !486, line: 979, type: !111)
!2921 = !DILocalVariable(name: "ch", arg: 2, scope: !2916, file: !486, line: 979, type: !4)
!2922 = !DILocation(line: 0, scope: !2916)
!2923 = !DILocation(line: 0, scope: !2889, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 981, column: 10, scope: !2916)
!2925 = !DILocation(line: 972, column: 3, scope: !2889, inlinedAt: !2924)
!2926 = !DILocation(line: 972, column: 26, scope: !2889, inlinedAt: !2924)
!2927 = !DILocation(line: 973, column: 13, scope: !2889, inlinedAt: !2924)
!2928 = !DILocation(line: 0, scope: !1890, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 974, column: 3, scope: !2889, inlinedAt: !2924)
!2930 = !DILocation(line: 147, column: 41, scope: !1890, inlinedAt: !2929)
!2931 = !DILocation(line: 147, column: 62, scope: !1890, inlinedAt: !2929)
!2932 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !2929)
!2933 = !DILocation(line: 148, column: 15, scope: !1890, inlinedAt: !2929)
!2934 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !2929)
!2935 = !DILocation(line: 149, column: 24, scope: !1890, inlinedAt: !2929)
!2936 = !DILocation(line: 150, column: 19, scope: !1890, inlinedAt: !2929)
!2937 = !DILocation(line: 150, column: 24, scope: !1890, inlinedAt: !2929)
!2938 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !2929)
!2939 = !DILocation(line: 975, column: 10, scope: !2889, inlinedAt: !2924)
!2940 = !DILocation(line: 976, column: 1, scope: !2889, inlinedAt: !2924)
!2941 = !DILocation(line: 981, column: 3, scope: !2916)
!2942 = distinct !DISubprogram(name: "quotearg_colon", scope: !486, file: !486, line: 985, type: !988, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2943)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "arg", arg: 1, scope: !2942, file: !486, line: 985, type: !111)
!2945 = !DILocation(line: 0, scope: !2942)
!2946 = !DILocation(line: 0, scope: !2916, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 987, column: 10, scope: !2942)
!2948 = !DILocation(line: 0, scope: !2889, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 981, column: 10, scope: !2916, inlinedAt: !2947)
!2950 = !DILocation(line: 972, column: 3, scope: !2889, inlinedAt: !2949)
!2951 = !DILocation(line: 972, column: 26, scope: !2889, inlinedAt: !2949)
!2952 = !DILocation(line: 973, column: 13, scope: !2889, inlinedAt: !2949)
!2953 = !DILocation(line: 0, scope: !1890, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 974, column: 3, scope: !2889, inlinedAt: !2949)
!2955 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !2954)
!2956 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !2954)
!2957 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !2954)
!2958 = !DILocation(line: 975, column: 10, scope: !2889, inlinedAt: !2949)
!2959 = !DILocation(line: 976, column: 1, scope: !2889, inlinedAt: !2949)
!2960 = !DILocation(line: 987, column: 3, scope: !2942)
!2961 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !486, file: !486, line: 991, type: !2770, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2962)
!2962 = !{!2963, !2964}
!2963 = !DILocalVariable(name: "arg", arg: 1, scope: !2961, file: !486, line: 991, type: !111)
!2964 = !DILocalVariable(name: "argsize", arg: 2, scope: !2961, file: !486, line: 991, type: !108)
!2965 = !DILocation(line: 0, scope: !2961)
!2966 = !DILocation(line: 0, scope: !2889, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 993, column: 10, scope: !2961)
!2968 = !DILocation(line: 972, column: 3, scope: !2889, inlinedAt: !2967)
!2969 = !DILocation(line: 972, column: 26, scope: !2889, inlinedAt: !2967)
!2970 = !DILocation(line: 973, column: 13, scope: !2889, inlinedAt: !2967)
!2971 = !DILocation(line: 0, scope: !1890, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 974, column: 3, scope: !2889, inlinedAt: !2967)
!2973 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !2972)
!2974 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !2972)
!2975 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !2972)
!2976 = !DILocation(line: 975, column: 10, scope: !2889, inlinedAt: !2967)
!2977 = !DILocation(line: 976, column: 1, scope: !2889, inlinedAt: !2967)
!2978 = !DILocation(line: 993, column: 3, scope: !2961)
!2979 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !486, file: !486, line: 997, type: !2781, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2980)
!2980 = !{!2981, !2982, !2983, !2984}
!2981 = !DILocalVariable(name: "n", arg: 1, scope: !2979, file: !486, line: 997, type: !70)
!2982 = !DILocalVariable(name: "s", arg: 2, scope: !2979, file: !486, line: 997, type: !74)
!2983 = !DILocalVariable(name: "arg", arg: 3, scope: !2979, file: !486, line: 997, type: !111)
!2984 = !DILocalVariable(name: "options", scope: !2979, file: !486, line: 999, type: !522)
!2985 = !DILocation(line: 185, column: 26, scope: !2796, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 1000, column: 13, scope: !2979)
!2987 = !DILocation(line: 0, scope: !2979)
!2988 = !DILocation(line: 999, column: 3, scope: !2979)
!2989 = !DILocation(line: 999, column: 26, scope: !2979)
!2990 = !DILocation(line: 0, scope: !2796, inlinedAt: !2986)
!2991 = !DILocation(line: 186, column: 13, scope: !2805, inlinedAt: !2986)
!2992 = !DILocation(line: 186, column: 7, scope: !2796, inlinedAt: !2986)
!2993 = !DILocation(line: 187, column: 5, scope: !2805, inlinedAt: !2986)
!2994 = !{!2995}
!2995 = distinct !{!2995, !2996, !"quoting_options_from_style: argument 0"}
!2996 = distinct !{!2996, !"quoting_options_from_style"}
!2997 = !DILocation(line: 1000, column: 13, scope: !2979)
!2998 = !DILocation(line: 0, scope: !1890, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 1001, column: 3, scope: !2979)
!3000 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !2999)
!3001 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !2999)
!3002 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !2999)
!3003 = !DILocation(line: 1002, column: 10, scope: !2979)
!3004 = !DILocation(line: 1003, column: 1, scope: !2979)
!3005 = !DILocation(line: 1002, column: 3, scope: !2979)
!3006 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !486, file: !486, line: 1006, type: !3007, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!105, !70, !111, !111, !111}
!3009 = !{!3010, !3011, !3012, !3013}
!3010 = !DILocalVariable(name: "n", arg: 1, scope: !3006, file: !486, line: 1006, type: !70)
!3011 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3006, file: !486, line: 1006, type: !111)
!3012 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3006, file: !486, line: 1007, type: !111)
!3013 = !DILocalVariable(name: "arg", arg: 4, scope: !3006, file: !486, line: 1007, type: !111)
!3014 = !DILocation(line: 0, scope: !3006)
!3015 = !DILocalVariable(name: "n", arg: 1, scope: !3016, file: !486, line: 1014, type: !70)
!3016 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !486, file: !486, line: 1014, type: !3017, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!105, !70, !111, !111, !111, !108}
!3019 = !{!3015, !3020, !3021, !3022, !3023, !3024}
!3020 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3016, file: !486, line: 1014, type: !111)
!3021 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3016, file: !486, line: 1015, type: !111)
!3022 = !DILocalVariable(name: "arg", arg: 4, scope: !3016, file: !486, line: 1016, type: !111)
!3023 = !DILocalVariable(name: "argsize", arg: 5, scope: !3016, file: !486, line: 1016, type: !108)
!3024 = !DILocalVariable(name: "o", scope: !3016, file: !486, line: 1018, type: !522)
!3025 = !DILocation(line: 0, scope: !3016, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 1009, column: 10, scope: !3006)
!3027 = !DILocation(line: 1018, column: 3, scope: !3016, inlinedAt: !3026)
!3028 = !DILocation(line: 1018, column: 26, scope: !3016, inlinedAt: !3026)
!3029 = !DILocation(line: 1018, column: 30, scope: !3016, inlinedAt: !3026)
!3030 = !DILocation(line: 0, scope: !1930, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 1019, column: 3, scope: !3016, inlinedAt: !3026)
!3032 = !DILocation(line: 174, column: 12, scope: !1930, inlinedAt: !3031)
!3033 = !DILocation(line: 175, column: 8, scope: !1943, inlinedAt: !3031)
!3034 = !DILocation(line: 175, column: 19, scope: !1943, inlinedAt: !3031)
!3035 = !DILocation(line: 176, column: 5, scope: !1943, inlinedAt: !3031)
!3036 = !DILocation(line: 177, column: 6, scope: !1930, inlinedAt: !3031)
!3037 = !DILocation(line: 177, column: 17, scope: !1930, inlinedAt: !3031)
!3038 = !DILocation(line: 178, column: 6, scope: !1930, inlinedAt: !3031)
!3039 = !DILocation(line: 178, column: 18, scope: !1930, inlinedAt: !3031)
!3040 = !DILocation(line: 1020, column: 10, scope: !3016, inlinedAt: !3026)
!3041 = !DILocation(line: 1021, column: 1, scope: !3016, inlinedAt: !3026)
!3042 = !DILocation(line: 1009, column: 3, scope: !3006)
!3043 = !DILocation(line: 0, scope: !3016)
!3044 = !DILocation(line: 1018, column: 3, scope: !3016)
!3045 = !DILocation(line: 1018, column: 26, scope: !3016)
!3046 = !DILocation(line: 1018, column: 30, scope: !3016)
!3047 = !DILocation(line: 0, scope: !1930, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 1019, column: 3, scope: !3016)
!3049 = !DILocation(line: 174, column: 12, scope: !1930, inlinedAt: !3048)
!3050 = !DILocation(line: 175, column: 8, scope: !1943, inlinedAt: !3048)
!3051 = !DILocation(line: 175, column: 19, scope: !1943, inlinedAt: !3048)
!3052 = !DILocation(line: 176, column: 5, scope: !1943, inlinedAt: !3048)
!3053 = !DILocation(line: 177, column: 6, scope: !1930, inlinedAt: !3048)
!3054 = !DILocation(line: 177, column: 17, scope: !1930, inlinedAt: !3048)
!3055 = !DILocation(line: 178, column: 6, scope: !1930, inlinedAt: !3048)
!3056 = !DILocation(line: 178, column: 18, scope: !1930, inlinedAt: !3048)
!3057 = !DILocation(line: 1020, column: 10, scope: !3016)
!3058 = !DILocation(line: 1021, column: 1, scope: !3016)
!3059 = !DILocation(line: 1020, column: 3, scope: !3016)
!3060 = distinct !DISubprogram(name: "quotearg_custom", scope: !486, file: !486, line: 1024, type: !3061, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!105, !111, !111, !111}
!3063 = !{!3064, !3065, !3066}
!3064 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3060, file: !486, line: 1024, type: !111)
!3065 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3060, file: !486, line: 1024, type: !111)
!3066 = !DILocalVariable(name: "arg", arg: 3, scope: !3060, file: !486, line: 1025, type: !111)
!3067 = !DILocation(line: 0, scope: !3060)
!3068 = !DILocation(line: 0, scope: !3006, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1027, column: 10, scope: !3060)
!3070 = !DILocation(line: 0, scope: !3016, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 1009, column: 10, scope: !3006, inlinedAt: !3069)
!3072 = !DILocation(line: 1018, column: 3, scope: !3016, inlinedAt: !3071)
!3073 = !DILocation(line: 1018, column: 26, scope: !3016, inlinedAt: !3071)
!3074 = !DILocation(line: 1018, column: 30, scope: !3016, inlinedAt: !3071)
!3075 = !DILocation(line: 0, scope: !1930, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 1019, column: 3, scope: !3016, inlinedAt: !3071)
!3077 = !DILocation(line: 174, column: 12, scope: !1930, inlinedAt: !3076)
!3078 = !DILocation(line: 175, column: 8, scope: !1943, inlinedAt: !3076)
!3079 = !DILocation(line: 175, column: 19, scope: !1943, inlinedAt: !3076)
!3080 = !DILocation(line: 176, column: 5, scope: !1943, inlinedAt: !3076)
!3081 = !DILocation(line: 177, column: 6, scope: !1930, inlinedAt: !3076)
!3082 = !DILocation(line: 177, column: 17, scope: !1930, inlinedAt: !3076)
!3083 = !DILocation(line: 178, column: 6, scope: !1930, inlinedAt: !3076)
!3084 = !DILocation(line: 178, column: 18, scope: !1930, inlinedAt: !3076)
!3085 = !DILocation(line: 1020, column: 10, scope: !3016, inlinedAt: !3071)
!3086 = !DILocation(line: 1021, column: 1, scope: !3016, inlinedAt: !3071)
!3087 = !DILocation(line: 1027, column: 3, scope: !3060)
!3088 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !486, file: !486, line: 1031, type: !3089, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!105, !111, !111, !111, !108}
!3091 = !{!3092, !3093, !3094, !3095}
!3092 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3088, file: !486, line: 1031, type: !111)
!3093 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3088, file: !486, line: 1031, type: !111)
!3094 = !DILocalVariable(name: "arg", arg: 3, scope: !3088, file: !486, line: 1032, type: !111)
!3095 = !DILocalVariable(name: "argsize", arg: 4, scope: !3088, file: !486, line: 1032, type: !108)
!3096 = !DILocation(line: 0, scope: !3088)
!3097 = !DILocation(line: 0, scope: !3016, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 1034, column: 10, scope: !3088)
!3099 = !DILocation(line: 1018, column: 3, scope: !3016, inlinedAt: !3098)
!3100 = !DILocation(line: 1018, column: 26, scope: !3016, inlinedAt: !3098)
!3101 = !DILocation(line: 1018, column: 30, scope: !3016, inlinedAt: !3098)
!3102 = !DILocation(line: 0, scope: !1930, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 1019, column: 3, scope: !3016, inlinedAt: !3098)
!3104 = !DILocation(line: 174, column: 12, scope: !1930, inlinedAt: !3103)
!3105 = !DILocation(line: 175, column: 8, scope: !1943, inlinedAt: !3103)
!3106 = !DILocation(line: 175, column: 19, scope: !1943, inlinedAt: !3103)
!3107 = !DILocation(line: 176, column: 5, scope: !1943, inlinedAt: !3103)
!3108 = !DILocation(line: 177, column: 6, scope: !1930, inlinedAt: !3103)
!3109 = !DILocation(line: 177, column: 17, scope: !1930, inlinedAt: !3103)
!3110 = !DILocation(line: 178, column: 6, scope: !1930, inlinedAt: !3103)
!3111 = !DILocation(line: 178, column: 18, scope: !1930, inlinedAt: !3103)
!3112 = !DILocation(line: 1020, column: 10, scope: !3016, inlinedAt: !3098)
!3113 = !DILocation(line: 1021, column: 1, scope: !3016, inlinedAt: !3098)
!3114 = !DILocation(line: 1034, column: 3, scope: !3088)
!3115 = distinct !DISubprogram(name: "quote_n_mem", scope: !486, file: !486, line: 1049, type: !3116, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!111, !70, !111, !108}
!3118 = !{!3119, !3120, !3121}
!3119 = !DILocalVariable(name: "n", arg: 1, scope: !3115, file: !486, line: 1049, type: !70)
!3120 = !DILocalVariable(name: "arg", arg: 2, scope: !3115, file: !486, line: 1049, type: !111)
!3121 = !DILocalVariable(name: "argsize", arg: 3, scope: !3115, file: !486, line: 1049, type: !108)
!3122 = !DILocation(line: 0, scope: !3115)
!3123 = !DILocation(line: 1051, column: 10, scope: !3115)
!3124 = !DILocation(line: 1051, column: 3, scope: !3115)
!3125 = distinct !DISubprogram(name: "quote_mem", scope: !486, file: !486, line: 1055, type: !3126, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!111, !111, !108}
!3128 = !{!3129, !3130}
!3129 = !DILocalVariable(name: "arg", arg: 1, scope: !3125, file: !486, line: 1055, type: !111)
!3130 = !DILocalVariable(name: "argsize", arg: 2, scope: !3125, file: !486, line: 1055, type: !108)
!3131 = !DILocation(line: 0, scope: !3125)
!3132 = !DILocation(line: 0, scope: !3115, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 1057, column: 10, scope: !3125)
!3134 = !DILocation(line: 1051, column: 10, scope: !3115, inlinedAt: !3133)
!3135 = !DILocation(line: 1057, column: 3, scope: !3125)
!3136 = distinct !DISubprogram(name: "quote_n", scope: !486, file: !486, line: 1061, type: !3137, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!111, !70, !111}
!3139 = !{!3140, !3141}
!3140 = !DILocalVariable(name: "n", arg: 1, scope: !3136, file: !486, line: 1061, type: !70)
!3141 = !DILocalVariable(name: "arg", arg: 2, scope: !3136, file: !486, line: 1061, type: !111)
!3142 = !DILocation(line: 0, scope: !3136)
!3143 = !DILocation(line: 0, scope: !3115, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 1063, column: 10, scope: !3136)
!3145 = !DILocation(line: 1051, column: 10, scope: !3115, inlinedAt: !3144)
!3146 = !DILocation(line: 1063, column: 3, scope: !3136)
!3147 = distinct !DISubprogram(name: "quote", scope: !486, file: !486, line: 1067, type: !3148, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!111, !111}
!3150 = !{!3151}
!3151 = !DILocalVariable(name: "arg", arg: 1, scope: !3147, file: !486, line: 1067, type: !111)
!3152 = !DILocation(line: 0, scope: !3147)
!3153 = !DILocation(line: 0, scope: !3136, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1069, column: 10, scope: !3147)
!3155 = !DILocation(line: 0, scope: !3115, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 1063, column: 10, scope: !3136, inlinedAt: !3154)
!3157 = !DILocation(line: 1051, column: 10, scope: !3115, inlinedAt: !3156)
!3158 = !DILocation(line: 1069, column: 3, scope: !3147)
!3159 = distinct !DISubprogram(name: "version_etc_arn", scope: !585, file: !585, line: 61, type: !3160, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3197)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !3162, !111, !111, !111, !3196, !108}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3164, file: !188, line: 51, baseType: !70, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3164, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3164, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3164, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3164, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3164, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3164, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3164, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3164, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3164, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3164, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3164, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3164, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3164, file: !188, line: 70, baseType: !3180, size: 64, offset: 832)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3164, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3164, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3164, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3164, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3164, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3164, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3164, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3164, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3164, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3164, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3164, file: !188, line: 93, baseType: !3180, size: 64, offset: 1344)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3164, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3164, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3164, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3164, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203}
!3198 = !DILocalVariable(name: "stream", arg: 1, scope: !3159, file: !585, line: 61, type: !3162)
!3199 = !DILocalVariable(name: "command_name", arg: 2, scope: !3159, file: !585, line: 62, type: !111)
!3200 = !DILocalVariable(name: "package", arg: 3, scope: !3159, file: !585, line: 62, type: !111)
!3201 = !DILocalVariable(name: "version", arg: 4, scope: !3159, file: !585, line: 63, type: !111)
!3202 = !DILocalVariable(name: "authors", arg: 5, scope: !3159, file: !585, line: 64, type: !3196)
!3203 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3159, file: !585, line: 64, type: !108)
!3204 = !DILocation(line: 0, scope: !3159)
!3205 = !DILocation(line: 66, column: 7, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3159, file: !585, line: 66, column: 7)
!3207 = !DILocation(line: 66, column: 7, scope: !3159)
!3208 = !DILocation(line: 67, column: 5, scope: !3206)
!3209 = !DILocation(line: 69, column: 5, scope: !3206)
!3210 = !DILocation(line: 83, column: 3, scope: !3159)
!3211 = !DILocation(line: 85, column: 3, scope: !3159)
!3212 = !DILocation(line: 88, column: 3, scope: !3159)
!3213 = !DILocation(line: 95, column: 3, scope: !3159)
!3214 = !DILocation(line: 97, column: 3, scope: !3159)
!3215 = !DILocation(line: 105, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3159, file: !585, line: 98, column: 5)
!3217 = !DILocation(line: 106, column: 7, scope: !3216)
!3218 = !DILocation(line: 109, column: 7, scope: !3216)
!3219 = !DILocation(line: 110, column: 7, scope: !3216)
!3220 = !DILocation(line: 113, column: 7, scope: !3216)
!3221 = !DILocation(line: 115, column: 7, scope: !3216)
!3222 = !DILocation(line: 120, column: 7, scope: !3216)
!3223 = !DILocation(line: 122, column: 7, scope: !3216)
!3224 = !DILocation(line: 127, column: 7, scope: !3216)
!3225 = !DILocation(line: 129, column: 7, scope: !3216)
!3226 = !DILocation(line: 134, column: 7, scope: !3216)
!3227 = !DILocation(line: 137, column: 7, scope: !3216)
!3228 = !DILocation(line: 142, column: 7, scope: !3216)
!3229 = !DILocation(line: 145, column: 7, scope: !3216)
!3230 = !DILocation(line: 150, column: 7, scope: !3216)
!3231 = !DILocation(line: 154, column: 7, scope: !3216)
!3232 = !DILocation(line: 159, column: 7, scope: !3216)
!3233 = !DILocation(line: 163, column: 7, scope: !3216)
!3234 = !DILocation(line: 170, column: 7, scope: !3216)
!3235 = !DILocation(line: 174, column: 7, scope: !3216)
!3236 = !DILocation(line: 176, column: 1, scope: !3159)
!3237 = distinct !DISubprogram(name: "version_etc_ar", scope: !585, file: !585, line: 183, type: !3238, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !3162, !111, !111, !111, !3196}
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246}
!3241 = !DILocalVariable(name: "stream", arg: 1, scope: !3237, file: !585, line: 183, type: !3162)
!3242 = !DILocalVariable(name: "command_name", arg: 2, scope: !3237, file: !585, line: 184, type: !111)
!3243 = !DILocalVariable(name: "package", arg: 3, scope: !3237, file: !585, line: 184, type: !111)
!3244 = !DILocalVariable(name: "version", arg: 4, scope: !3237, file: !585, line: 185, type: !111)
!3245 = !DILocalVariable(name: "authors", arg: 5, scope: !3237, file: !585, line: 185, type: !3196)
!3246 = !DILocalVariable(name: "n_authors", scope: !3237, file: !585, line: 187, type: !108)
!3247 = !DILocation(line: 0, scope: !3237)
!3248 = !DILocation(line: 189, column: 8, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3237, file: !585, line: 189, column: 3)
!3250 = !DILocation(line: 189, scope: !3249)
!3251 = !DILocation(line: 189, column: 23, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3249, file: !585, line: 189, column: 3)
!3253 = !DILocation(line: 189, column: 3, scope: !3249)
!3254 = !DILocation(line: 189, column: 52, scope: !3252)
!3255 = distinct !{!3255, !3253, !3256, !908}
!3256 = !DILocation(line: 190, column: 5, scope: !3249)
!3257 = !DILocation(line: 191, column: 3, scope: !3237)
!3258 = !DILocation(line: 192, column: 1, scope: !3237)
!3259 = distinct !DISubprogram(name: "version_etc_va", scope: !585, file: !585, line: 199, type: !3260, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3270)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !3162, !111, !111, !111, !3262}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3264)
!3264 = !{!3265, !3267, !3268, !3269}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3263, file: !3266, line: 192, baseType: !76, size: 32)
!3266 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3263, file: !3266, line: 192, baseType: !76, size: 32, offset: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3263, file: !3266, line: 192, baseType: !106, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3263, file: !3266, line: 192, baseType: !106, size: 64, offset: 128)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277}
!3271 = !DILocalVariable(name: "stream", arg: 1, scope: !3259, file: !585, line: 199, type: !3162)
!3272 = !DILocalVariable(name: "command_name", arg: 2, scope: !3259, file: !585, line: 200, type: !111)
!3273 = !DILocalVariable(name: "package", arg: 3, scope: !3259, file: !585, line: 200, type: !111)
!3274 = !DILocalVariable(name: "version", arg: 4, scope: !3259, file: !585, line: 201, type: !111)
!3275 = !DILocalVariable(name: "authors", arg: 5, scope: !3259, file: !585, line: 201, type: !3262)
!3276 = !DILocalVariable(name: "n_authors", scope: !3259, file: !585, line: 203, type: !108)
!3277 = !DILocalVariable(name: "authtab", scope: !3259, file: !585, line: 204, type: !3278)
!3278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 640, elements: !52)
!3279 = !DILocation(line: 0, scope: !3259)
!3280 = !DILocation(line: 204, column: 3, scope: !3259)
!3281 = !DILocation(line: 204, column: 15, scope: !3259)
!3282 = !DILocation(line: 208, column: 35, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !585, line: 206, column: 3)
!3284 = distinct !DILexicalBlock(scope: !3259, file: !585, line: 206, column: 3)
!3285 = !DILocation(line: 208, column: 33, scope: !3283)
!3286 = !DILocation(line: 208, column: 67, scope: !3283)
!3287 = !DILocation(line: 206, column: 3, scope: !3284)
!3288 = !DILocation(line: 208, column: 14, scope: !3283)
!3289 = !DILocation(line: 0, scope: !3284)
!3290 = !DILocation(line: 211, column: 3, scope: !3259)
!3291 = !DILocation(line: 213, column: 1, scope: !3259)
!3292 = distinct !DISubprogram(name: "version_etc", scope: !585, file: !585, line: 230, type: !3293, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{null, !3162, !111, !111, !111, null}
!3295 = !{!3296, !3297, !3298, !3299, !3300}
!3296 = !DILocalVariable(name: "stream", arg: 1, scope: !3292, file: !585, line: 230, type: !3162)
!3297 = !DILocalVariable(name: "command_name", arg: 2, scope: !3292, file: !585, line: 231, type: !111)
!3298 = !DILocalVariable(name: "package", arg: 3, scope: !3292, file: !585, line: 231, type: !111)
!3299 = !DILocalVariable(name: "version", arg: 4, scope: !3292, file: !585, line: 232, type: !111)
!3300 = !DILocalVariable(name: "authors", scope: !3292, file: !585, line: 234, type: !3301)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !856, line: 52, baseType: !3302)
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1353, line: 14, baseType: !3303)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3266, baseType: !3304)
!3304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3263, size: 192, elements: !47)
!3305 = !DILocation(line: 0, scope: !3292)
!3306 = !DILocation(line: 234, column: 3, scope: !3292)
!3307 = !DILocation(line: 234, column: 11, scope: !3292)
!3308 = !DILocation(line: 235, column: 3, scope: !3292)
!3309 = !DILocation(line: 236, column: 3, scope: !3292)
!3310 = !DILocation(line: 237, column: 3, scope: !3292)
!3311 = !DILocation(line: 238, column: 1, scope: !3292)
!3312 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !585, file: !585, line: 241, type: !441, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !803)
!3313 = !DILocation(line: 243, column: 3, scope: !3312)
!3314 = !DILocation(line: 248, column: 3, scope: !3312)
!3315 = !DILocation(line: 254, column: 3, scope: !3312)
!3316 = !DILocation(line: 259, column: 3, scope: !3312)
!3317 = !DILocation(line: 261, column: 1, scope: !3312)
!3318 = distinct !DISubprogram(name: "xnrealloc", scope: !3319, file: !3319, line: 147, type: !3320, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3322)
!3319 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!106, !106, !108, !108}
!3322 = !{!3323, !3324, !3325}
!3323 = !DILocalVariable(name: "p", arg: 1, scope: !3318, file: !3319, line: 147, type: !106)
!3324 = !DILocalVariable(name: "n", arg: 2, scope: !3318, file: !3319, line: 147, type: !108)
!3325 = !DILocalVariable(name: "s", arg: 3, scope: !3318, file: !3319, line: 147, type: !108)
!3326 = !DILocation(line: 0, scope: !3318)
!3327 = !DILocalVariable(name: "p", arg: 1, scope: !3328, file: !722, line: 83, type: !106)
!3328 = distinct !DISubprogram(name: "xreallocarray", scope: !722, file: !722, line: 83, type: !3320, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3329)
!3329 = !{!3327, !3330, !3331}
!3330 = !DILocalVariable(name: "n", arg: 2, scope: !3328, file: !722, line: 83, type: !108)
!3331 = !DILocalVariable(name: "s", arg: 3, scope: !3328, file: !722, line: 83, type: !108)
!3332 = !DILocation(line: 0, scope: !3328, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 149, column: 10, scope: !3318)
!3334 = !DILocation(line: 85, column: 25, scope: !3328, inlinedAt: !3333)
!3335 = !DILocalVariable(name: "p", arg: 1, scope: !3336, file: !722, line: 37, type: !106)
!3336 = distinct !DISubprogram(name: "check_nonnull", scope: !722, file: !722, line: 37, type: !3337, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!106, !106}
!3339 = !{!3335}
!3340 = !DILocation(line: 0, scope: !3336, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 85, column: 10, scope: !3328, inlinedAt: !3333)
!3342 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3341)
!3343 = distinct !DILexicalBlock(scope: !3336, file: !722, line: 39, column: 7)
!3344 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3341)
!3345 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3341)
!3346 = !DILocation(line: 149, column: 3, scope: !3318)
!3347 = !DILocation(line: 0, scope: !3328)
!3348 = !DILocation(line: 85, column: 25, scope: !3328)
!3349 = !DILocation(line: 0, scope: !3336, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 85, column: 10, scope: !3328)
!3351 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3350)
!3352 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3350)
!3353 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3350)
!3354 = !DILocation(line: 85, column: 3, scope: !3328)
!3355 = distinct !DISubprogram(name: "xmalloc", scope: !722, file: !722, line: 47, type: !3356, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!106, !108}
!3358 = !{!3359}
!3359 = !DILocalVariable(name: "s", arg: 1, scope: !3355, file: !722, line: 47, type: !108)
!3360 = !DILocation(line: 0, scope: !3355)
!3361 = !DILocation(line: 49, column: 25, scope: !3355)
!3362 = !DILocation(line: 0, scope: !3336, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 49, column: 10, scope: !3355)
!3364 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3363)
!3365 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3363)
!3366 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3363)
!3367 = !DILocation(line: 49, column: 3, scope: !3355)
!3368 = !DISubprogram(name: "malloc", scope: !986, file: !986, line: 540, type: !3356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3369 = distinct !DISubprogram(name: "ximalloc", scope: !722, file: !722, line: 53, type: !3370, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!106, !741}
!3372 = !{!3373}
!3373 = !DILocalVariable(name: "s", arg: 1, scope: !3369, file: !722, line: 53, type: !741)
!3374 = !DILocation(line: 0, scope: !3369)
!3375 = !DILocalVariable(name: "s", arg: 1, scope: !3376, file: !3377, line: 55, type: !741)
!3376 = distinct !DISubprogram(name: "imalloc", scope: !3377, file: !3377, line: 55, type: !3370, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3378)
!3377 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3378 = !{!3375}
!3379 = !DILocation(line: 0, scope: !3376, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 55, column: 25, scope: !3369)
!3381 = !DILocation(line: 57, column: 26, scope: !3376, inlinedAt: !3380)
!3382 = !DILocation(line: 0, scope: !3336, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 55, column: 10, scope: !3369)
!3384 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3383)
!3385 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3383)
!3386 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3383)
!3387 = !DILocation(line: 55, column: 3, scope: !3369)
!3388 = distinct !DISubprogram(name: "xcharalloc", scope: !722, file: !722, line: 59, type: !3389, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!105, !108}
!3391 = !{!3392}
!3392 = !DILocalVariable(name: "n", arg: 1, scope: !3388, file: !722, line: 59, type: !108)
!3393 = !DILocation(line: 0, scope: !3388)
!3394 = !DILocation(line: 0, scope: !3355, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 61, column: 10, scope: !3388)
!3396 = !DILocation(line: 49, column: 25, scope: !3355, inlinedAt: !3395)
!3397 = !DILocation(line: 0, scope: !3336, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 49, column: 10, scope: !3355, inlinedAt: !3395)
!3399 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3398)
!3400 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3398)
!3401 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3398)
!3402 = !DILocation(line: 61, column: 3, scope: !3388)
!3403 = distinct !DISubprogram(name: "xrealloc", scope: !722, file: !722, line: 68, type: !3404, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!106, !106, !108}
!3406 = !{!3407, !3408}
!3407 = !DILocalVariable(name: "p", arg: 1, scope: !3403, file: !722, line: 68, type: !106)
!3408 = !DILocalVariable(name: "s", arg: 2, scope: !3403, file: !722, line: 68, type: !108)
!3409 = !DILocation(line: 0, scope: !3403)
!3410 = !DILocalVariable(name: "ptr", arg: 1, scope: !3411, file: !3412, line: 2057, type: !106)
!3411 = distinct !DISubprogram(name: "rpl_realloc", scope: !3412, file: !3412, line: 2057, type: !3404, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3413)
!3412 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3413 = !{!3410, !3414}
!3414 = !DILocalVariable(name: "size", arg: 2, scope: !3411, file: !3412, line: 2057, type: !108)
!3415 = !DILocation(line: 0, scope: !3411, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 70, column: 25, scope: !3403)
!3417 = !DILocation(line: 2059, column: 24, scope: !3411, inlinedAt: !3416)
!3418 = !DILocation(line: 2059, column: 10, scope: !3411, inlinedAt: !3416)
!3419 = !DILocation(line: 0, scope: !3336, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 70, column: 10, scope: !3403)
!3421 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3420)
!3422 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3420)
!3423 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3420)
!3424 = !DILocation(line: 70, column: 3, scope: !3403)
!3425 = !DISubprogram(name: "realloc", scope: !986, file: !986, line: 551, type: !3404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3426 = distinct !DISubprogram(name: "xirealloc", scope: !722, file: !722, line: 74, type: !3427, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!106, !106, !741}
!3429 = !{!3430, !3431}
!3430 = !DILocalVariable(name: "p", arg: 1, scope: !3426, file: !722, line: 74, type: !106)
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3426, file: !722, line: 74, type: !741)
!3432 = !DILocation(line: 0, scope: !3426)
!3433 = !DILocalVariable(name: "p", arg: 1, scope: !3434, file: !3377, line: 66, type: !106)
!3434 = distinct !DISubprogram(name: "irealloc", scope: !3377, file: !3377, line: 66, type: !3427, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3435)
!3435 = !{!3433, !3436}
!3436 = !DILocalVariable(name: "s", arg: 2, scope: !3434, file: !3377, line: 66, type: !741)
!3437 = !DILocation(line: 0, scope: !3434, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 76, column: 25, scope: !3426)
!3439 = !DILocation(line: 0, scope: !3411, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 68, column: 26, scope: !3434, inlinedAt: !3438)
!3441 = !DILocation(line: 2059, column: 24, scope: !3411, inlinedAt: !3440)
!3442 = !DILocation(line: 2059, column: 10, scope: !3411, inlinedAt: !3440)
!3443 = !DILocation(line: 0, scope: !3336, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 76, column: 10, scope: !3426)
!3445 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3444)
!3446 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3444)
!3447 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3444)
!3448 = !DILocation(line: 76, column: 3, scope: !3426)
!3449 = distinct !DISubprogram(name: "xireallocarray", scope: !722, file: !722, line: 89, type: !3450, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!106, !106, !741, !741}
!3452 = !{!3453, !3454, !3455}
!3453 = !DILocalVariable(name: "p", arg: 1, scope: !3449, file: !722, line: 89, type: !106)
!3454 = !DILocalVariable(name: "n", arg: 2, scope: !3449, file: !722, line: 89, type: !741)
!3455 = !DILocalVariable(name: "s", arg: 3, scope: !3449, file: !722, line: 89, type: !741)
!3456 = !DILocation(line: 0, scope: !3449)
!3457 = !DILocalVariable(name: "p", arg: 1, scope: !3458, file: !3377, line: 98, type: !106)
!3458 = distinct !DISubprogram(name: "ireallocarray", scope: !3377, file: !3377, line: 98, type: !3450, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3459)
!3459 = !{!3457, !3460, !3461}
!3460 = !DILocalVariable(name: "n", arg: 2, scope: !3458, file: !3377, line: 98, type: !741)
!3461 = !DILocalVariable(name: "s", arg: 3, scope: !3458, file: !3377, line: 98, type: !741)
!3462 = !DILocation(line: 0, scope: !3458, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 91, column: 25, scope: !3449)
!3464 = !DILocation(line: 101, column: 13, scope: !3458, inlinedAt: !3463)
!3465 = !DILocation(line: 0, scope: !3336, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 91, column: 10, scope: !3449)
!3467 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3466)
!3468 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3466)
!3469 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3466)
!3470 = !DILocation(line: 91, column: 3, scope: !3449)
!3471 = distinct !DISubprogram(name: "xnmalloc", scope: !722, file: !722, line: 98, type: !3472, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!106, !108, !108}
!3474 = !{!3475, !3476}
!3475 = !DILocalVariable(name: "n", arg: 1, scope: !3471, file: !722, line: 98, type: !108)
!3476 = !DILocalVariable(name: "s", arg: 2, scope: !3471, file: !722, line: 98, type: !108)
!3477 = !DILocation(line: 0, scope: !3471)
!3478 = !DILocation(line: 0, scope: !3328, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 100, column: 10, scope: !3471)
!3480 = !DILocation(line: 85, column: 25, scope: !3328, inlinedAt: !3479)
!3481 = !DILocation(line: 0, scope: !3336, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 85, column: 10, scope: !3328, inlinedAt: !3479)
!3483 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3482)
!3484 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3482)
!3485 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3482)
!3486 = !DILocation(line: 100, column: 3, scope: !3471)
!3487 = distinct !DISubprogram(name: "xinmalloc", scope: !722, file: !722, line: 104, type: !3488, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!106, !741, !741}
!3490 = !{!3491, !3492}
!3491 = !DILocalVariable(name: "n", arg: 1, scope: !3487, file: !722, line: 104, type: !741)
!3492 = !DILocalVariable(name: "s", arg: 2, scope: !3487, file: !722, line: 104, type: !741)
!3493 = !DILocation(line: 0, scope: !3487)
!3494 = !DILocation(line: 0, scope: !3449, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 106, column: 10, scope: !3487)
!3496 = !DILocation(line: 0, scope: !3458, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 91, column: 25, scope: !3449, inlinedAt: !3495)
!3498 = !DILocation(line: 101, column: 13, scope: !3458, inlinedAt: !3497)
!3499 = !DILocation(line: 0, scope: !3336, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 91, column: 10, scope: !3449, inlinedAt: !3495)
!3501 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3500)
!3502 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3500)
!3503 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3500)
!3504 = !DILocation(line: 106, column: 3, scope: !3487)
!3505 = distinct !DISubprogram(name: "x2realloc", scope: !722, file: !722, line: 116, type: !3506, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!106, !106, !728}
!3508 = !{!3509, !3510}
!3509 = !DILocalVariable(name: "p", arg: 1, scope: !3505, file: !722, line: 116, type: !106)
!3510 = !DILocalVariable(name: "ps", arg: 2, scope: !3505, file: !722, line: 116, type: !728)
!3511 = !DILocation(line: 0, scope: !3505)
!3512 = !DILocation(line: 0, scope: !725, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 118, column: 10, scope: !3505)
!3514 = !DILocation(line: 178, column: 14, scope: !725, inlinedAt: !3513)
!3515 = !DILocation(line: 180, column: 9, scope: !3516, inlinedAt: !3513)
!3516 = distinct !DILexicalBlock(scope: !725, file: !722, line: 180, column: 7)
!3517 = !DILocation(line: 180, column: 7, scope: !725, inlinedAt: !3513)
!3518 = !DILocation(line: 182, column: 13, scope: !3519, inlinedAt: !3513)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !722, line: 182, column: 11)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !722, line: 181, column: 5)
!3521 = !DILocation(line: 182, column: 11, scope: !3520, inlinedAt: !3513)
!3522 = !DILocation(line: 197, column: 11, scope: !3523, inlinedAt: !3513)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !722, line: 197, column: 11)
!3524 = distinct !DILexicalBlock(scope: !3516, file: !722, line: 195, column: 5)
!3525 = !DILocation(line: 197, column: 11, scope: !3524, inlinedAt: !3513)
!3526 = !DILocation(line: 198, column: 9, scope: !3523, inlinedAt: !3513)
!3527 = !DILocation(line: 0, scope: !3328, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 201, column: 7, scope: !725, inlinedAt: !3513)
!3529 = !DILocation(line: 85, column: 25, scope: !3328, inlinedAt: !3528)
!3530 = !DILocation(line: 0, scope: !3336, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 85, column: 10, scope: !3328, inlinedAt: !3528)
!3532 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3531)
!3533 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3531)
!3534 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3531)
!3535 = !DILocation(line: 202, column: 7, scope: !725, inlinedAt: !3513)
!3536 = !DILocation(line: 118, column: 3, scope: !3505)
!3537 = !DILocation(line: 0, scope: !725)
!3538 = !DILocation(line: 178, column: 14, scope: !725)
!3539 = !DILocation(line: 180, column: 9, scope: !3516)
!3540 = !DILocation(line: 180, column: 7, scope: !725)
!3541 = !DILocation(line: 182, column: 13, scope: !3519)
!3542 = !DILocation(line: 182, column: 11, scope: !3520)
!3543 = !DILocation(line: 190, column: 30, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3519, file: !722, line: 183, column: 9)
!3545 = !DILocation(line: 191, column: 16, scope: !3544)
!3546 = !DILocation(line: 191, column: 13, scope: !3544)
!3547 = !DILocation(line: 192, column: 9, scope: !3544)
!3548 = !DILocation(line: 197, column: 11, scope: !3523)
!3549 = !DILocation(line: 197, column: 11, scope: !3524)
!3550 = !DILocation(line: 198, column: 9, scope: !3523)
!3551 = !DILocation(line: 0, scope: !3328, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 201, column: 7, scope: !725)
!3553 = !DILocation(line: 85, column: 25, scope: !3328, inlinedAt: !3552)
!3554 = !DILocation(line: 0, scope: !3336, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 85, column: 10, scope: !3328, inlinedAt: !3552)
!3556 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3555)
!3557 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3555)
!3558 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3555)
!3559 = !DILocation(line: 202, column: 7, scope: !725)
!3560 = !DILocation(line: 203, column: 3, scope: !725)
!3561 = !DILocation(line: 0, scope: !737)
!3562 = !DILocation(line: 230, column: 14, scope: !737)
!3563 = !DILocation(line: 238, column: 7, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !737, file: !722, line: 238, column: 7)
!3565 = !DILocation(line: 238, column: 7, scope: !737)
!3566 = !DILocation(line: 240, column: 9, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !737, file: !722, line: 240, column: 7)
!3568 = !DILocation(line: 240, column: 18, scope: !3567)
!3569 = !DILocation(line: 253, column: 8, scope: !737)
!3570 = !DILocation(line: 258, column: 27, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !722, line: 257, column: 5)
!3572 = distinct !DILexicalBlock(scope: !737, file: !722, line: 256, column: 7)
!3573 = !DILocation(line: 259, column: 50, scope: !3571)
!3574 = !DILocation(line: 259, column: 32, scope: !3571)
!3575 = !DILocation(line: 260, column: 5, scope: !3571)
!3576 = !DILocation(line: 262, column: 9, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !737, file: !722, line: 262, column: 7)
!3578 = !DILocation(line: 262, column: 7, scope: !737)
!3579 = !DILocation(line: 263, column: 9, scope: !3577)
!3580 = !DILocation(line: 263, column: 5, scope: !3577)
!3581 = !DILocation(line: 264, column: 9, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !737, file: !722, line: 264, column: 7)
!3583 = !DILocation(line: 264, column: 14, scope: !3582)
!3584 = !DILocation(line: 265, column: 7, scope: !3582)
!3585 = !DILocation(line: 265, column: 11, scope: !3582)
!3586 = !DILocation(line: 266, column: 11, scope: !3582)
!3587 = !DILocation(line: 267, column: 14, scope: !3582)
!3588 = !DILocation(line: 264, column: 7, scope: !737)
!3589 = !DILocation(line: 268, column: 5, scope: !3582)
!3590 = !DILocation(line: 0, scope: !3403, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 269, column: 8, scope: !737)
!3592 = !DILocation(line: 0, scope: !3411, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 70, column: 25, scope: !3403, inlinedAt: !3591)
!3594 = !DILocation(line: 2059, column: 24, scope: !3411, inlinedAt: !3593)
!3595 = !DILocation(line: 2059, column: 10, scope: !3411, inlinedAt: !3593)
!3596 = !DILocation(line: 0, scope: !3336, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 70, column: 10, scope: !3403, inlinedAt: !3591)
!3598 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3597)
!3599 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3597)
!3600 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3597)
!3601 = !DILocation(line: 270, column: 7, scope: !737)
!3602 = !DILocation(line: 271, column: 3, scope: !737)
!3603 = distinct !DISubprogram(name: "xzalloc", scope: !722, file: !722, line: 279, type: !3356, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3604)
!3604 = !{!3605}
!3605 = !DILocalVariable(name: "s", arg: 1, scope: !3603, file: !722, line: 279, type: !108)
!3606 = !DILocation(line: 0, scope: !3603)
!3607 = !DILocalVariable(name: "n", arg: 1, scope: !3608, file: !722, line: 294, type: !108)
!3608 = distinct !DISubprogram(name: "xcalloc", scope: !722, file: !722, line: 294, type: !3472, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3609)
!3609 = !{!3607, !3610}
!3610 = !DILocalVariable(name: "s", arg: 2, scope: !3608, file: !722, line: 294, type: !108)
!3611 = !DILocation(line: 0, scope: !3608, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 281, column: 10, scope: !3603)
!3613 = !DILocation(line: 296, column: 25, scope: !3608, inlinedAt: !3612)
!3614 = !DILocation(line: 0, scope: !3336, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 296, column: 10, scope: !3608, inlinedAt: !3612)
!3616 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3615)
!3617 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3615)
!3618 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3615)
!3619 = !DILocation(line: 281, column: 3, scope: !3603)
!3620 = !DISubprogram(name: "calloc", scope: !986, file: !986, line: 543, type: !3472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3621 = !DILocation(line: 0, scope: !3608)
!3622 = !DILocation(line: 296, column: 25, scope: !3608)
!3623 = !DILocation(line: 0, scope: !3336, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 296, column: 10, scope: !3608)
!3625 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3624)
!3626 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3624)
!3627 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3624)
!3628 = !DILocation(line: 296, column: 3, scope: !3608)
!3629 = distinct !DISubprogram(name: "xizalloc", scope: !722, file: !722, line: 285, type: !3370, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3630)
!3630 = !{!3631}
!3631 = !DILocalVariable(name: "s", arg: 1, scope: !3629, file: !722, line: 285, type: !741)
!3632 = !DILocation(line: 0, scope: !3629)
!3633 = !DILocalVariable(name: "n", arg: 1, scope: !3634, file: !722, line: 300, type: !741)
!3634 = distinct !DISubprogram(name: "xicalloc", scope: !722, file: !722, line: 300, type: !3488, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3635)
!3635 = !{!3633, !3636}
!3636 = !DILocalVariable(name: "s", arg: 2, scope: !3634, file: !722, line: 300, type: !741)
!3637 = !DILocation(line: 0, scope: !3634, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 287, column: 10, scope: !3629)
!3639 = !DILocalVariable(name: "n", arg: 1, scope: !3640, file: !3377, line: 77, type: !741)
!3640 = distinct !DISubprogram(name: "icalloc", scope: !3377, file: !3377, line: 77, type: !3488, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3641)
!3641 = !{!3639, !3642}
!3642 = !DILocalVariable(name: "s", arg: 2, scope: !3640, file: !3377, line: 77, type: !741)
!3643 = !DILocation(line: 0, scope: !3640, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 302, column: 25, scope: !3634, inlinedAt: !3638)
!3645 = !DILocation(line: 91, column: 10, scope: !3640, inlinedAt: !3644)
!3646 = !DILocation(line: 0, scope: !3336, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 302, column: 10, scope: !3634, inlinedAt: !3638)
!3648 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3647)
!3649 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3647)
!3650 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3647)
!3651 = !DILocation(line: 287, column: 3, scope: !3629)
!3652 = !DILocation(line: 0, scope: !3634)
!3653 = !DILocation(line: 0, scope: !3640, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 302, column: 25, scope: !3634)
!3655 = !DILocation(line: 91, column: 10, scope: !3640, inlinedAt: !3654)
!3656 = !DILocation(line: 0, scope: !3336, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 302, column: 10, scope: !3634)
!3658 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3657)
!3659 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3657)
!3660 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3657)
!3661 = !DILocation(line: 302, column: 3, scope: !3634)
!3662 = distinct !DISubprogram(name: "xmemdup", scope: !722, file: !722, line: 310, type: !3663, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!106, !1010, !108}
!3665 = !{!3666, !3667}
!3666 = !DILocalVariable(name: "p", arg: 1, scope: !3662, file: !722, line: 310, type: !1010)
!3667 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !722, line: 310, type: !108)
!3668 = !DILocation(line: 0, scope: !3662)
!3669 = !DILocation(line: 0, scope: !3355, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 312, column: 18, scope: !3662)
!3671 = !DILocation(line: 49, column: 25, scope: !3355, inlinedAt: !3670)
!3672 = !DILocation(line: 0, scope: !3336, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 49, column: 10, scope: !3355, inlinedAt: !3670)
!3674 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3673)
!3675 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3673)
!3676 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3673)
!3677 = !DILocalVariable(name: "__dest", arg: 1, scope: !3678, file: !1833, line: 26, type: !3681)
!3678 = distinct !DISubprogram(name: "memcpy", scope: !1833, file: !1833, line: 26, type: !3679, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3682)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!106, !3681, !1009, !108}
!3681 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!3682 = !{!3677, !3683, !3684}
!3683 = !DILocalVariable(name: "__src", arg: 2, scope: !3678, file: !1833, line: 26, type: !1009)
!3684 = !DILocalVariable(name: "__len", arg: 3, scope: !3678, file: !1833, line: 26, type: !108)
!3685 = !DILocation(line: 0, scope: !3678, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 312, column: 10, scope: !3662)
!3687 = !DILocation(line: 29, column: 10, scope: !3678, inlinedAt: !3686)
!3688 = !DILocation(line: 312, column: 3, scope: !3662)
!3689 = distinct !DISubprogram(name: "ximemdup", scope: !722, file: !722, line: 316, type: !3690, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!106, !1010, !741}
!3692 = !{!3693, !3694}
!3693 = !DILocalVariable(name: "p", arg: 1, scope: !3689, file: !722, line: 316, type: !1010)
!3694 = !DILocalVariable(name: "s", arg: 2, scope: !3689, file: !722, line: 316, type: !741)
!3695 = !DILocation(line: 0, scope: !3689)
!3696 = !DILocation(line: 0, scope: !3369, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 318, column: 18, scope: !3689)
!3698 = !DILocation(line: 0, scope: !3376, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 55, column: 25, scope: !3369, inlinedAt: !3697)
!3700 = !DILocation(line: 57, column: 26, scope: !3376, inlinedAt: !3699)
!3701 = !DILocation(line: 0, scope: !3336, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 55, column: 10, scope: !3369, inlinedAt: !3697)
!3703 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3702)
!3704 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3702)
!3705 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3702)
!3706 = !DILocation(line: 0, scope: !3678, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 318, column: 10, scope: !3689)
!3708 = !DILocation(line: 29, column: 10, scope: !3678, inlinedAt: !3707)
!3709 = !DILocation(line: 318, column: 3, scope: !3689)
!3710 = distinct !DISubprogram(name: "ximemdup0", scope: !722, file: !722, line: 325, type: !3711, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!105, !1010, !741}
!3713 = !{!3714, !3715, !3716}
!3714 = !DILocalVariable(name: "p", arg: 1, scope: !3710, file: !722, line: 325, type: !1010)
!3715 = !DILocalVariable(name: "s", arg: 2, scope: !3710, file: !722, line: 325, type: !741)
!3716 = !DILocalVariable(name: "result", scope: !3710, file: !722, line: 327, type: !105)
!3717 = !DILocation(line: 0, scope: !3710)
!3718 = !DILocation(line: 327, column: 30, scope: !3710)
!3719 = !DILocation(line: 0, scope: !3369, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 327, column: 18, scope: !3710)
!3721 = !DILocation(line: 0, scope: !3376, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 55, column: 25, scope: !3369, inlinedAt: !3720)
!3723 = !DILocation(line: 57, column: 26, scope: !3376, inlinedAt: !3722)
!3724 = !DILocation(line: 0, scope: !3336, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 55, column: 10, scope: !3369, inlinedAt: !3720)
!3726 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3725)
!3727 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3725)
!3728 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3725)
!3729 = !DILocation(line: 328, column: 3, scope: !3710)
!3730 = !DILocation(line: 328, column: 13, scope: !3710)
!3731 = !DILocation(line: 0, scope: !3678, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 329, column: 10, scope: !3710)
!3733 = !DILocation(line: 29, column: 10, scope: !3678, inlinedAt: !3732)
!3734 = !DILocation(line: 329, column: 3, scope: !3710)
!3735 = distinct !DISubprogram(name: "xstrdup", scope: !722, file: !722, line: 335, type: !988, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3736)
!3736 = !{!3737}
!3737 = !DILocalVariable(name: "string", arg: 1, scope: !3735, file: !722, line: 335, type: !111)
!3738 = !DILocation(line: 0, scope: !3735)
!3739 = !DILocation(line: 337, column: 27, scope: !3735)
!3740 = !DILocation(line: 337, column: 43, scope: !3735)
!3741 = !DILocation(line: 0, scope: !3662, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 337, column: 10, scope: !3735)
!3743 = !DILocation(line: 0, scope: !3355, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 312, column: 18, scope: !3662, inlinedAt: !3742)
!3745 = !DILocation(line: 49, column: 25, scope: !3355, inlinedAt: !3744)
!3746 = !DILocation(line: 0, scope: !3336, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 49, column: 10, scope: !3355, inlinedAt: !3744)
!3748 = !DILocation(line: 39, column: 8, scope: !3343, inlinedAt: !3747)
!3749 = !DILocation(line: 39, column: 7, scope: !3336, inlinedAt: !3747)
!3750 = !DILocation(line: 40, column: 5, scope: !3343, inlinedAt: !3747)
!3751 = !DILocation(line: 0, scope: !3678, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 312, column: 10, scope: !3662, inlinedAt: !3742)
!3753 = !DILocation(line: 29, column: 10, scope: !3678, inlinedAt: !3752)
!3754 = !DILocation(line: 337, column: 3, scope: !3735)
!3755 = distinct !DISubprogram(name: "xalloc_die", scope: !675, file: !675, line: 32, type: !441, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3756)
!3756 = !{!3757}
!3757 = !DILocalVariable(name: "__errstatus", scope: !3758, file: !675, line: 34, type: !3759)
!3758 = distinct !DILexicalBlock(scope: !3755, file: !675, line: 34, column: 3)
!3759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3760 = !DILocation(line: 34, column: 3, scope: !3758)
!3761 = !DILocation(line: 0, scope: !3758)
!3762 = !DILocation(line: 40, column: 3, scope: !3755)
!3763 = distinct !DISubprogram(name: "close_stream", scope: !758, file: !758, line: 55, type: !3764, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3800)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!70, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3768)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3768, file: !188, line: 51, baseType: !70, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3768, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3768, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3768, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3768, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3768, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3768, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3768, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3768, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3768, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3768, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3768, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3768, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3768, file: !188, line: 70, baseType: !3784, size: 64, offset: 832)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3768, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3768, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3768, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3768, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3768, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3768, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3768, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3768, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3768, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3768, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3768, file: !188, line: 93, baseType: !3784, size: 64, offset: 1344)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3768, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3768, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3768, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3768, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3800 = !{!3801, !3802, !3804, !3805}
!3801 = !DILocalVariable(name: "stream", arg: 1, scope: !3763, file: !758, line: 55, type: !3766)
!3802 = !DILocalVariable(name: "some_pending", scope: !3763, file: !758, line: 57, type: !3803)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!3804 = !DILocalVariable(name: "prev_fail", scope: !3763, file: !758, line: 58, type: !3803)
!3805 = !DILocalVariable(name: "fclose_fail", scope: !3763, file: !758, line: 59, type: !3803)
!3806 = !DILocation(line: 0, scope: !3763)
!3807 = !DILocation(line: 57, column: 30, scope: !3763)
!3808 = !DILocalVariable(name: "__stream", arg: 1, scope: !3809, file: !1308, line: 135, type: !3766)
!3809 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1308, file: !1308, line: 135, type: !3764, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3810)
!3810 = !{!3808}
!3811 = !DILocation(line: 0, scope: !3809, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 58, column: 27, scope: !3763)
!3813 = !DILocation(line: 137, column: 10, scope: !3809, inlinedAt: !3812)
!3814 = !{!1317, !862, i64 0}
!3815 = !DILocation(line: 58, column: 43, scope: !3763)
!3816 = !DILocation(line: 59, column: 29, scope: !3763)
!3817 = !DILocation(line: 59, column: 45, scope: !3763)
!3818 = !DILocation(line: 69, column: 17, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3763, file: !758, line: 69, column: 7)
!3820 = !DILocation(line: 57, column: 50, scope: !3763)
!3821 = !DILocation(line: 69, column: 33, scope: !3819)
!3822 = !DILocation(line: 69, column: 53, scope: !3819)
!3823 = !DILocation(line: 69, column: 59, scope: !3819)
!3824 = !DILocation(line: 69, column: 7, scope: !3763)
!3825 = !DILocation(line: 71, column: 11, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3819, file: !758, line: 70, column: 5)
!3827 = !DILocation(line: 72, column: 9, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3826, file: !758, line: 71, column: 11)
!3829 = !DILocation(line: 72, column: 15, scope: !3828)
!3830 = !DILocation(line: 77, column: 1, scope: !3763)
!3831 = !DISubprogram(name: "__fpending", scope: !3832, file: !3832, line: 75, type: !3833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3832 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!108, !3766}
!3835 = distinct !DISubprogram(name: "rpl_fclose", scope: !760, file: !760, line: 58, type: !3836, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3872)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!70, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3840)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3840, file: !188, line: 51, baseType: !70, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3840, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3840, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3840, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3840, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3840, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3840, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3840, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3840, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3840, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3840, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3840, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3840, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3840, file: !188, line: 70, baseType: !3856, size: 64, offset: 832)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3840, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3840, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3840, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3840, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3840, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3840, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3840, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3840, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3840, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3840, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3840, file: !188, line: 93, baseType: !3856, size: 64, offset: 1344)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3840, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3840, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3840, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3840, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3872 = !{!3873, !3874, !3875, !3876}
!3873 = !DILocalVariable(name: "fp", arg: 1, scope: !3835, file: !760, line: 58, type: !3838)
!3874 = !DILocalVariable(name: "saved_errno", scope: !3835, file: !760, line: 60, type: !70)
!3875 = !DILocalVariable(name: "fd", scope: !3835, file: !760, line: 63, type: !70)
!3876 = !DILocalVariable(name: "result", scope: !3835, file: !760, line: 74, type: !70)
!3877 = !DILocation(line: 0, scope: !3835)
!3878 = !DILocation(line: 63, column: 12, scope: !3835)
!3879 = !DILocation(line: 64, column: 10, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3835, file: !760, line: 64, column: 7)
!3881 = !DILocation(line: 64, column: 7, scope: !3835)
!3882 = !DILocation(line: 65, column: 12, scope: !3880)
!3883 = !DILocation(line: 65, column: 5, scope: !3880)
!3884 = !DILocation(line: 70, column: 9, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3835, file: !760, line: 70, column: 7)
!3886 = !DILocation(line: 70, column: 23, scope: !3885)
!3887 = !DILocation(line: 70, column: 33, scope: !3885)
!3888 = !DILocation(line: 70, column: 26, scope: !3885)
!3889 = !DILocation(line: 70, column: 59, scope: !3885)
!3890 = !DILocation(line: 71, column: 7, scope: !3885)
!3891 = !DILocation(line: 71, column: 10, scope: !3885)
!3892 = !DILocation(line: 70, column: 7, scope: !3835)
!3893 = !DILocation(line: 100, column: 12, scope: !3835)
!3894 = !DILocation(line: 105, column: 7, scope: !3835)
!3895 = !DILocation(line: 72, column: 19, scope: !3885)
!3896 = !DILocation(line: 105, column: 19, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3835, file: !760, line: 105, column: 7)
!3898 = !DILocation(line: 107, column: 13, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3897, file: !760, line: 106, column: 5)
!3900 = !DILocation(line: 109, column: 5, scope: !3899)
!3901 = !DILocation(line: 112, column: 1, scope: !3835)
!3902 = !DISubprogram(name: "fileno", scope: !856, file: !856, line: 809, type: !3836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3903 = !DISubprogram(name: "fclose", scope: !856, file: !856, line: 178, type: !3836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3904 = !DISubprogram(name: "__freading", scope: !3832, file: !3832, line: 51, type: !3836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3905 = !DISubprogram(name: "lseek", scope: !1191, file: !1191, line: 339, type: !3906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!210, !70, !210, !70}
!3908 = distinct !DISubprogram(name: "rpl_fflush", scope: !762, file: !762, line: 130, type: !3909, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3945)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!70, !3911}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3913)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3913, file: !188, line: 51, baseType: !70, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3913, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3913, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3913, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3913, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3913, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3913, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3913, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3913, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3913, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3913, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3913, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3913, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3913, file: !188, line: 70, baseType: !3929, size: 64, offset: 832)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3913, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3913, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3913, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3913, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3913, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3913, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3913, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3913, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3913, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3913, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3913, file: !188, line: 93, baseType: !3929, size: 64, offset: 1344)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3913, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3913, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3913, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3913, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3945 = !{!3946}
!3946 = !DILocalVariable(name: "stream", arg: 1, scope: !3908, file: !762, line: 130, type: !3911)
!3947 = !DILocation(line: 0, scope: !3908)
!3948 = !DILocation(line: 151, column: 14, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3908, file: !762, line: 151, column: 7)
!3950 = !DILocation(line: 151, column: 22, scope: !3949)
!3951 = !DILocation(line: 151, column: 27, scope: !3949)
!3952 = !DILocation(line: 151, column: 7, scope: !3908)
!3953 = !DILocation(line: 152, column: 12, scope: !3949)
!3954 = !DILocation(line: 152, column: 5, scope: !3949)
!3955 = !DILocalVariable(name: "fp", arg: 1, scope: !3956, file: !762, line: 42, type: !3911)
!3956 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !762, file: !762, line: 42, type: !3957, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3959)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !3911}
!3959 = !{!3955}
!3960 = !DILocation(line: 0, scope: !3956, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 157, column: 3, scope: !3908)
!3962 = !DILocation(line: 44, column: 12, scope: !3963, inlinedAt: !3961)
!3963 = distinct !DILexicalBlock(scope: !3956, file: !762, line: 44, column: 7)
!3964 = !DILocation(line: 44, column: 19, scope: !3963, inlinedAt: !3961)
!3965 = !DILocation(line: 44, column: 7, scope: !3956, inlinedAt: !3961)
!3966 = !DILocation(line: 46, column: 5, scope: !3963, inlinedAt: !3961)
!3967 = !DILocation(line: 159, column: 10, scope: !3908)
!3968 = !DILocation(line: 159, column: 3, scope: !3908)
!3969 = !DILocation(line: 236, column: 1, scope: !3908)
!3970 = !DISubprogram(name: "fflush", scope: !856, file: !856, line: 230, type: !3909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3971 = distinct !DISubprogram(name: "rpl_fseeko", scope: !764, file: !764, line: 28, type: !3972, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4009)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!70, !3974, !4008, !70}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3976)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3977)
!3977 = !{!3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3976, file: !188, line: 51, baseType: !70, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3976, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3976, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3976, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3976, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3976, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3976, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3976, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3976, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3976, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3976, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3976, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3976, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3976, file: !188, line: 70, baseType: !3992, size: 64, offset: 832)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3976, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3976, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3976, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3976, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3976, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3976, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3976, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3976, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3976, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3976, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3976, file: !188, line: 93, baseType: !3992, size: 64, offset: 1344)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3976, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3976, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3976, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3976, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!4008 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !856, line: 63, baseType: !210)
!4009 = !{!4010, !4011, !4012, !4013}
!4010 = !DILocalVariable(name: "fp", arg: 1, scope: !3971, file: !764, line: 28, type: !3974)
!4011 = !DILocalVariable(name: "offset", arg: 2, scope: !3971, file: !764, line: 28, type: !4008)
!4012 = !DILocalVariable(name: "whence", arg: 3, scope: !3971, file: !764, line: 28, type: !70)
!4013 = !DILocalVariable(name: "pos", scope: !4014, file: !764, line: 123, type: !4008)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !764, line: 119, column: 5)
!4015 = distinct !DILexicalBlock(scope: !3971, file: !764, line: 55, column: 7)
!4016 = !DILocation(line: 0, scope: !3971)
!4017 = !DILocation(line: 55, column: 12, scope: !4015)
!4018 = !{!1317, !795, i64 16}
!4019 = !DILocation(line: 55, column: 33, scope: !4015)
!4020 = !{!1317, !795, i64 8}
!4021 = !DILocation(line: 55, column: 25, scope: !4015)
!4022 = !DILocation(line: 56, column: 7, scope: !4015)
!4023 = !DILocation(line: 56, column: 15, scope: !4015)
!4024 = !DILocation(line: 56, column: 37, scope: !4015)
!4025 = !{!1317, !795, i64 32}
!4026 = !DILocation(line: 56, column: 29, scope: !4015)
!4027 = !DILocation(line: 57, column: 7, scope: !4015)
!4028 = !DILocation(line: 57, column: 15, scope: !4015)
!4029 = !{!1317, !795, i64 72}
!4030 = !DILocation(line: 57, column: 29, scope: !4015)
!4031 = !DILocation(line: 55, column: 7, scope: !3971)
!4032 = !DILocation(line: 123, column: 26, scope: !4014)
!4033 = !DILocation(line: 123, column: 19, scope: !4014)
!4034 = !DILocation(line: 0, scope: !4014)
!4035 = !DILocation(line: 124, column: 15, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4014, file: !764, line: 124, column: 11)
!4037 = !DILocation(line: 124, column: 11, scope: !4014)
!4038 = !DILocation(line: 135, column: 19, scope: !4014)
!4039 = !DILocation(line: 136, column: 12, scope: !4014)
!4040 = !DILocation(line: 136, column: 20, scope: !4014)
!4041 = !{!1317, !1318, i64 144}
!4042 = !DILocation(line: 167, column: 7, scope: !4014)
!4043 = !DILocation(line: 169, column: 10, scope: !3971)
!4044 = !DILocation(line: 169, column: 3, scope: !3971)
!4045 = !DILocation(line: 170, column: 1, scope: !3971)
!4046 = !DISubprogram(name: "fseeko", scope: !856, file: !856, line: 736, type: !4047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!70, !3974, !210, !70}
!4049 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !682, file: !682, line: 100, type: !4050, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !4053)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!108, !1851, !111, !108, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!4053 = !{!4054, !4055, !4056, !4057, !4058}
!4054 = !DILocalVariable(name: "pwc", arg: 1, scope: !4049, file: !682, line: 100, type: !1851)
!4055 = !DILocalVariable(name: "s", arg: 2, scope: !4049, file: !682, line: 100, type: !111)
!4056 = !DILocalVariable(name: "n", arg: 3, scope: !4049, file: !682, line: 100, type: !108)
!4057 = !DILocalVariable(name: "ps", arg: 4, scope: !4049, file: !682, line: 100, type: !4052)
!4058 = !DILocalVariable(name: "ret", scope: !4049, file: !682, line: 130, type: !108)
!4059 = !DILocation(line: 0, scope: !4049)
!4060 = !DILocation(line: 105, column: 9, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4049, file: !682, line: 105, column: 7)
!4062 = !DILocation(line: 105, column: 7, scope: !4049)
!4063 = !DILocation(line: 117, column: 10, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4049, file: !682, line: 117, column: 7)
!4065 = !DILocation(line: 117, column: 7, scope: !4049)
!4066 = !DILocation(line: 130, column: 16, scope: !4049)
!4067 = !DILocation(line: 135, column: 11, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4049, file: !682, line: 135, column: 7)
!4069 = !DILocation(line: 135, column: 25, scope: !4068)
!4070 = !DILocation(line: 135, column: 30, scope: !4068)
!4071 = !DILocation(line: 135, column: 7, scope: !4049)
!4072 = !DILocalVariable(name: "ps", arg: 1, scope: !4073, file: !1824, line: 1135, type: !4052)
!4073 = distinct !DISubprogram(name: "mbszero", scope: !1824, file: !1824, line: 1135, type: !4074, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !4076)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !4052}
!4076 = !{!4072}
!4077 = !DILocation(line: 0, scope: !4073, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 137, column: 5, scope: !4068)
!4079 = !DILocalVariable(name: "__dest", arg: 1, scope: !4080, file: !1833, line: 57, type: !106)
!4080 = distinct !DISubprogram(name: "memset", scope: !1833, file: !1833, line: 57, type: !1834, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !4081)
!4081 = !{!4079, !4082, !4083}
!4082 = !DILocalVariable(name: "__ch", arg: 2, scope: !4080, file: !1833, line: 57, type: !70)
!4083 = !DILocalVariable(name: "__len", arg: 3, scope: !4080, file: !1833, line: 57, type: !108)
!4084 = !DILocation(line: 0, scope: !4080, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 1137, column: 3, scope: !4073, inlinedAt: !4078)
!4086 = !DILocation(line: 59, column: 10, scope: !4080, inlinedAt: !4085)
!4087 = !DILocation(line: 137, column: 5, scope: !4068)
!4088 = !DILocation(line: 138, column: 11, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4049, file: !682, line: 138, column: 7)
!4090 = !DILocation(line: 138, column: 7, scope: !4049)
!4091 = !DILocation(line: 139, column: 5, scope: !4089)
!4092 = !DILocation(line: 143, column: 26, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4049, file: !682, line: 143, column: 7)
!4094 = !DILocation(line: 143, column: 41, scope: !4093)
!4095 = !DILocation(line: 143, column: 7, scope: !4049)
!4096 = !DILocation(line: 145, column: 15, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !682, line: 145, column: 11)
!4098 = distinct !DILexicalBlock(scope: !4093, file: !682, line: 144, column: 5)
!4099 = !DILocation(line: 145, column: 11, scope: !4098)
!4100 = !DILocation(line: 146, column: 32, scope: !4097)
!4101 = !DILocation(line: 146, column: 16, scope: !4097)
!4102 = !DILocation(line: 146, column: 14, scope: !4097)
!4103 = !DILocation(line: 146, column: 9, scope: !4097)
!4104 = !DILocation(line: 286, column: 1, scope: !4049)
!4105 = !DISubprogram(name: "mbsinit", scope: !4106, file: !4106, line: 293, type: !4107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!4106 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!70, !4109}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!4111 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !766, file: !766, line: 27, type: !3320, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !4112)
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DILocalVariable(name: "ptr", arg: 1, scope: !4111, file: !766, line: 27, type: !106)
!4114 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4111, file: !766, line: 27, type: !108)
!4115 = !DILocalVariable(name: "size", arg: 3, scope: !4111, file: !766, line: 27, type: !108)
!4116 = !DILocalVariable(name: "nbytes", scope: !4111, file: !766, line: 29, type: !108)
!4117 = !DILocation(line: 0, scope: !4111)
!4118 = !DILocation(line: 30, column: 7, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4111, file: !766, line: 30, column: 7)
!4120 = !DILocalVariable(name: "ptr", arg: 1, scope: !4121, file: !3412, line: 2057, type: !106)
!4121 = distinct !DISubprogram(name: "rpl_realloc", scope: !3412, file: !3412, line: 2057, type: !3404, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !4122)
!4122 = !{!4120, !4123}
!4123 = !DILocalVariable(name: "size", arg: 2, scope: !4121, file: !3412, line: 2057, type: !108)
!4124 = !DILocation(line: 0, scope: !4121, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 37, column: 10, scope: !4111)
!4126 = !DILocation(line: 2059, column: 24, scope: !4121, inlinedAt: !4125)
!4127 = !DILocation(line: 2059, column: 10, scope: !4121, inlinedAt: !4125)
!4128 = !DILocation(line: 37, column: 3, scope: !4111)
!4129 = !DILocation(line: 32, column: 7, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4119, file: !766, line: 31, column: 5)
!4131 = !DILocation(line: 32, column: 13, scope: !4130)
!4132 = !DILocation(line: 33, column: 7, scope: !4130)
!4133 = !DILocation(line: 38, column: 1, scope: !4111)
!4134 = distinct !DISubprogram(name: "hard_locale", scope: !700, file: !700, line: 28, type: !4135, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4137)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!171, !70}
!4137 = !{!4138, !4139}
!4138 = !DILocalVariable(name: "category", arg: 1, scope: !4134, file: !700, line: 28, type: !70)
!4139 = !DILocalVariable(name: "locale", scope: !4134, file: !700, line: 30, type: !4140)
!4140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4141)
!4141 = !{!4142}
!4142 = !DISubrange(count: 257)
!4143 = !DILocation(line: 0, scope: !4134)
!4144 = !DILocation(line: 30, column: 3, scope: !4134)
!4145 = !DILocation(line: 30, column: 8, scope: !4134)
!4146 = !DILocation(line: 32, column: 7, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4134, file: !700, line: 32, column: 7)
!4148 = !DILocation(line: 32, column: 7, scope: !4134)
!4149 = !DILocalVariable(name: "__s1", arg: 1, scope: !4150, file: !874, line: 1359, type: !111)
!4150 = distinct !DISubprogram(name: "streq", scope: !874, file: !874, line: 1359, type: !875, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4151)
!4151 = !{!4149, !4152}
!4152 = !DILocalVariable(name: "__s2", arg: 2, scope: !4150, file: !874, line: 1359, type: !111)
!4153 = !DILocation(line: 0, scope: !4150, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 35, column: 9, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4134, file: !700, line: 35, column: 7)
!4156 = !DILocation(line: 1361, column: 11, scope: !4150, inlinedAt: !4154)
!4157 = !DILocation(line: 35, column: 29, scope: !4155)
!4158 = !DILocation(line: 0, scope: !4150, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 35, column: 32, scope: !4155)
!4160 = !DILocation(line: 1361, column: 11, scope: !4150, inlinedAt: !4159)
!4161 = !DILocation(line: 1361, column: 10, scope: !4150, inlinedAt: !4159)
!4162 = !DILocation(line: 35, column: 7, scope: !4134)
!4163 = !DILocation(line: 46, column: 3, scope: !4134)
!4164 = !DILocation(line: 47, column: 1, scope: !4134)
!4165 = distinct !DISubprogram(name: "setlocale_null_r", scope: !773, file: !773, line: 154, type: !4166, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4168)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!70, !70, !105, !108}
!4168 = !{!4169, !4170, !4171}
!4169 = !DILocalVariable(name: "category", arg: 1, scope: !4165, file: !773, line: 154, type: !70)
!4170 = !DILocalVariable(name: "buf", arg: 2, scope: !4165, file: !773, line: 154, type: !105)
!4171 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4165, file: !773, line: 154, type: !108)
!4172 = !DILocation(line: 0, scope: !4165)
!4173 = !DILocation(line: 159, column: 10, scope: !4165)
!4174 = !DILocation(line: 159, column: 3, scope: !4165)
!4175 = distinct !DISubprogram(name: "setlocale_null", scope: !773, file: !773, line: 186, type: !4176, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4178)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!111, !70}
!4178 = !{!4179}
!4179 = !DILocalVariable(name: "category", arg: 1, scope: !4175, file: !773, line: 186, type: !70)
!4180 = !DILocation(line: 0, scope: !4175)
!4181 = !DILocation(line: 189, column: 10, scope: !4175)
!4182 = !DILocation(line: 189, column: 3, scope: !4175)
!4183 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !775, file: !775, line: 35, type: !4176, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4184)
!4184 = !{!4185, !4186}
!4185 = !DILocalVariable(name: "category", arg: 1, scope: !4183, file: !775, line: 35, type: !70)
!4186 = !DILocalVariable(name: "result", scope: !4183, file: !775, line: 37, type: !111)
!4187 = !DILocation(line: 0, scope: !4183)
!4188 = !DILocation(line: 37, column: 24, scope: !4183)
!4189 = !DILocation(line: 62, column: 3, scope: !4183)
!4190 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !775, file: !775, line: 66, type: !4166, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4191)
!4191 = !{!4192, !4193, !4194, !4195, !4196}
!4192 = !DILocalVariable(name: "category", arg: 1, scope: !4190, file: !775, line: 66, type: !70)
!4193 = !DILocalVariable(name: "buf", arg: 2, scope: !4190, file: !775, line: 66, type: !105)
!4194 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4190, file: !775, line: 66, type: !108)
!4195 = !DILocalVariable(name: "result", scope: !4190, file: !775, line: 111, type: !111)
!4196 = !DILocalVariable(name: "length", scope: !4197, file: !775, line: 125, type: !108)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !775, line: 124, column: 5)
!4198 = distinct !DILexicalBlock(scope: !4190, file: !775, line: 113, column: 7)
!4199 = !DILocation(line: 0, scope: !4190)
!4200 = !DILocation(line: 0, scope: !4183, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 111, column: 24, scope: !4190)
!4202 = !DILocation(line: 37, column: 24, scope: !4183, inlinedAt: !4201)
!4203 = !DILocation(line: 113, column: 14, scope: !4198)
!4204 = !DILocation(line: 113, column: 7, scope: !4190)
!4205 = !DILocation(line: 116, column: 19, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !775, line: 116, column: 11)
!4207 = distinct !DILexicalBlock(scope: !4198, file: !775, line: 114, column: 5)
!4208 = !DILocation(line: 116, column: 11, scope: !4207)
!4209 = !DILocation(line: 120, column: 16, scope: !4206)
!4210 = !DILocation(line: 120, column: 9, scope: !4206)
!4211 = !DILocation(line: 125, column: 23, scope: !4197)
!4212 = !DILocation(line: 0, scope: !4197)
!4213 = !DILocation(line: 126, column: 18, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4197, file: !775, line: 126, column: 11)
!4215 = !DILocation(line: 126, column: 11, scope: !4197)
!4216 = !DILocation(line: 128, column: 39, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !775, line: 127, column: 9)
!4218 = !DILocalVariable(name: "__dest", arg: 1, scope: !4219, file: !1833, line: 26, type: !3681)
!4219 = distinct !DISubprogram(name: "memcpy", scope: !1833, file: !1833, line: 26, type: !3679, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4220)
!4220 = !{!4218, !4221, !4222}
!4221 = !DILocalVariable(name: "__src", arg: 2, scope: !4219, file: !1833, line: 26, type: !1009)
!4222 = !DILocalVariable(name: "__len", arg: 3, scope: !4219, file: !1833, line: 26, type: !108)
!4223 = !DILocation(line: 0, scope: !4219, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 128, column: 11, scope: !4217)
!4225 = !DILocation(line: 29, column: 10, scope: !4219, inlinedAt: !4224)
!4226 = !DILocation(line: 129, column: 11, scope: !4217)
!4227 = !DILocation(line: 133, column: 23, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !775, line: 133, column: 15)
!4229 = distinct !DILexicalBlock(scope: !4214, file: !775, line: 132, column: 9)
!4230 = !DILocation(line: 133, column: 15, scope: !4229)
!4231 = !DILocation(line: 138, column: 44, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4228, file: !775, line: 134, column: 13)
!4233 = !DILocation(line: 0, scope: !4219, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 138, column: 15, scope: !4232)
!4235 = !DILocation(line: 29, column: 10, scope: !4219, inlinedAt: !4234)
!4236 = !DILocation(line: 139, column: 15, scope: !4232)
!4237 = !DILocation(line: 139, column: 32, scope: !4232)
!4238 = !DILocation(line: 140, column: 13, scope: !4232)
!4239 = !DILocation(line: 0, scope: !4198)
!4240 = !DILocation(line: 145, column: 1, scope: !4190)
