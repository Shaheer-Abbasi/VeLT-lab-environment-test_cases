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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !433
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !399
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !423
@.str.1.37 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !425
@.str.2.39 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !427
@.str.3.38 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !429
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !431
@.str.4.32 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !435
@.str.5.33 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !437
@.str.6.34 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !442
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !447
@.str.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !453
@.str.1.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !455
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !457
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !488
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !491
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !493
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !495
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !497
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !499
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !501
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !503
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !505
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !507
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.62, ptr @.str.1.63, ptr @.str.2.64, ptr @.str.3.65, ptr @.str.4.66, ptr @.str.5.67, ptr @.str.6.68, ptr @.str.7.69, ptr @.str.8.70, ptr @.str.9.71, ptr null], align 8, !dbg !509
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !522
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !536
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !574
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !581
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !538
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !583
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !526
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !543
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !545
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !547
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !549
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !551
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !589
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !592
@.str.2.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !594
@.str.3.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !596
@.str.4.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !598
@.str.5.85 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !600
@.str.6.86 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !605
@.str.7.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !610
@.str.8.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !612
@.str.9.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !617
@.str.10.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !622
@.str.11.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !627
@.str.12.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !632
@.str.13.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !634
@.str.14.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !636
@.str.15.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !641
@.str.16.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !646
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.101 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !651
@.str.18.102 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !653
@.str.19.103 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !655
@.str.20.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !657
@.str.21.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !659
@.str.22.106 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !661
@.str.23.107 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !663
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !665
@exit_failure = dso_local global i32 1, align 4, !dbg !673
@.str.124 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !679
@.str.1.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !682
@.str.2.123 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !684
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !686
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !689
@.str.140 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !704
@.str.1.141 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !707

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !791 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !795, metadata !DIExpression()), !dbg !796
  %2 = icmp eq i32 %0, 0, !dbg !797
  br i1 %2, label %8, label %3, !dbg !799

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !800, !tbaa !802
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !800
  %6 = load ptr, ptr @program_name, align 8, !dbg !800, !tbaa !802
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !800
  br label %37, !dbg !800

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !806
  %10 = load ptr, ptr @program_name, align 8, !dbg !806, !tbaa !802
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !806
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !808
  %13 = load ptr, ptr @stdout, align 8, !dbg !808, !tbaa !802
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !808
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !809
  %16 = load ptr, ptr @stdout, align 8, !dbg !809, !tbaa !802
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !809
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !812
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !812
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !813
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !813
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !814
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !814
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !815
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !815
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !816
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !816
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !817, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata !836, metadata !830, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr poison, metadata !829, metadata !DIExpression()), !dbg !834
  tail call void @emit_bug_reporting_address() #37, !dbg !837
  %23 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !838
  call void @llvm.dbg.value(metadata ptr %23, metadata !832, metadata !DIExpression()), !dbg !834
  %24 = icmp eq ptr %23, null, !dbg !839
  br i1 %24, label %32, label %25, !dbg !841

25:                                               ; preds = %8
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #38, !dbg !842
  %27 = icmp eq i32 %26, 0, !dbg !842
  br i1 %27, label %32, label %28, !dbg !843

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !844
  %30 = load ptr, ptr @stdout, align 8, !dbg !844, !tbaa !802
  %31 = tail call i32 @fputs_unlocked(ptr noundef %29, ptr noundef %30), !dbg !844
  br label %32, !dbg !846

32:                                               ; preds = %8, %25, %28
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !834
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !847
  %34 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %33, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #37, !dbg !847
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #37, !dbg !848
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #37, !dbg !848
  br label %37

37:                                               ; preds = %32, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !849
  unreachable, !dbg !849
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !850 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !854 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !860 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !863 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !161 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !165, metadata !DIExpression()), !dbg !866
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !166, metadata !DIExpression()), !dbg !866
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !867, !tbaa !868
  %3 = icmp eq i32 %2, -1, !dbg !870
  br i1 %3, label %4, label %16, !dbg !871

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.23) #37, !dbg !872
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !167, metadata !DIExpression()), !dbg !873
  %6 = icmp eq ptr %5, null, !dbg !874
  br i1 %6, label %14, label %7, !dbg !875

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !876, !tbaa !877
  %9 = icmp eq i8 %8, 0, !dbg !876
  br i1 %9, label %14, label %10, !dbg !878

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !879, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata ptr @.str.24, metadata !885, metadata !DIExpression()), !dbg !886
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.24) #38, !dbg !888
  %12 = icmp eq i32 %11, 0, !dbg !889
  %13 = zext i1 %12 to i32, !dbg !878
  br label %14, !dbg !878

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !890, !tbaa !868
  br label %16, !dbg !891

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !892
  %18 = icmp eq i32 %17, 0, !dbg !892
  br i1 %18, label %22, label %19, !dbg !894

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !895, !tbaa !802
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !895
  br label %121, !dbg !897

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !170, metadata !DIExpression()), !dbg !866
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.25) #38, !dbg !898
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !899
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !172, metadata !DIExpression()), !dbg !866
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !900
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !173, metadata !DIExpression()), !dbg !866
  %26 = icmp eq ptr %25, null, !dbg !901
  br i1 %26, label %53, label %27, !dbg !902

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !903
  br i1 %28, label %53, label %29, !dbg !904

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !174, metadata !DIExpression()), !dbg !905
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !905
  %30 = icmp ult ptr %24, %25, !dbg !906
  br i1 %30, label %31, label %53, !dbg !907

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !866
  %33 = load ptr, ptr %32, align 8, !tbaa !802
  br label %34, !dbg !907

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !174, metadata !DIExpression()), !dbg !905
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !178, metadata !DIExpression()), !dbg !905
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !908
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !174, metadata !DIExpression()), !dbg !905
  %38 = load i8, ptr %35, align 1, !dbg !908, !tbaa !877
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !908
  %41 = load i16, ptr %40, align 2, !dbg !908, !tbaa !909
  %42 = freeze i16 %41, !dbg !911
  %43 = lshr i16 %42, 13, !dbg !911
  %44 = and i16 %43, 1, !dbg !911
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !912
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !178, metadata !DIExpression()), !dbg !905
  %47 = icmp ult ptr %37, %25, !dbg !906
  %48 = icmp ult i64 %46, 2, !dbg !913
  %49 = select i1 %47, i1 %48, i1 false, !dbg !913
  br i1 %49, label %34, label %50, !dbg !907, !llvm.loop !914

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !912
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !916
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !918
  br label %53, !dbg !918

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !866
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !866
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !173, metadata !DIExpression()), !dbg !866
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.26) #38, !dbg !919
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !179, metadata !DIExpression()), !dbg !866
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !920
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !180, metadata !DIExpression()), !dbg !866
  br label %58, !dbg !921

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !866
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !866
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !180, metadata !DIExpression()), !dbg !866
  %61 = load i8, ptr %59, align 1, !dbg !922, !tbaa !877
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !923

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !924
  %64 = load i8, ptr %63, align 1, !dbg !927, !tbaa !877
  %65 = icmp ne i8 %64, 45, !dbg !928
  %66 = select i1 %65, i1 %60, i1 false, !dbg !929
  br label %67, !dbg !929

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !866
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !930
  %70 = load ptr, ptr %69, align 8, !dbg !930, !tbaa !802
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !930
  %73 = load i16, ptr %72, align 2, !dbg !930, !tbaa !909
  %74 = and i16 %73, 8192, !dbg !930
  %75 = icmp eq i16 %74, 0, !dbg !930
  br i1 %75, label %89, label %76, !dbg !932

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !933
  br i1 %77, label %91, label %78, !dbg !936

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !937
  %80 = load i8, ptr %79, align 1, !dbg !937, !tbaa !877
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !937
  %83 = load i16, ptr %82, align 2, !dbg !937, !tbaa !909
  %84 = and i16 %83, 8192, !dbg !937
  %85 = icmp eq i16 %84, 0, !dbg !937
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !938
  br i1 %88, label %89, label %91, !dbg !938

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !939
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !180, metadata !DIExpression()), !dbg !866
  br label %58, !dbg !921, !llvm.loop !940

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !866
  %92 = ptrtoint ptr %24 to i64, !dbg !942
  %93 = load ptr, ptr @stdout, align 8, !dbg !942, !tbaa !802
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !942
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata !836, metadata !885, metadata !DIExpression()), !dbg !961
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !237, metadata !DIExpression()), !dbg !866
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #38, !dbg !963
  %96 = icmp eq i32 %95, 0, !dbg !963
  br i1 %96, label %100, label %97, !dbg !965

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.41, i64 noundef 9) #38, !dbg !966
  %99 = icmp eq i32 %98, 0, !dbg !966
  br i1 %99, label %100, label %103, !dbg !967

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !968
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !968
  br label %106, !dbg !970

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !971
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !971
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !802
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %107), !dbg !973
  %109 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !802
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %109), !dbg !974
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !975
  %112 = sub i64 %111, %92, !dbg !975
  %113 = load ptr, ptr @stdout, align 8, !dbg !975, !tbaa !802
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !975
  %115 = load ptr, ptr @stdout, align 8, !dbg !976, !tbaa !802
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %115), !dbg !976
  %117 = load ptr, ptr @stdout, align 8, !dbg !977, !tbaa !802
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %117), !dbg !977
  %119 = load ptr, ptr @stdout, align 8, !dbg !978, !tbaa !802
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !978
  br label %121, !dbg !979

121:                                              ; preds = %106, %19
  ret void, !dbg !979
}

; Function Attrs: nounwind
declare !dbg !980 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !984 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !988 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !990 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !993 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !996 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !999 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1002 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1008 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1009 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1015 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1020, metadata !DIExpression()), !dbg !1044
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1021, metadata !DIExpression()), !dbg !1044
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1022, metadata !DIExpression()), !dbg !1044
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1023, metadata !DIExpression()), !dbg !1044
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1024, metadata !DIExpression()), !dbg !1044
  %3 = load ptr, ptr %1, align 8, !dbg !1045, !tbaa !802
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !1046
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #37, !dbg !1047
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #37, !dbg !1048
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #37, !dbg !1049
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1050
  br label %8, !dbg !1051

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !1051

10:                                               ; preds = %19, %8
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1022, metadata !DIExpression()), !dbg !1044
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1023, metadata !DIExpression()), !dbg !1044
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1028, metadata !DIExpression()), !dbg !1044
  switch i32 %11, label %25 [
    i32 -1, label %26
    i32 109, label %12
    i32 90, label %14
    i32 -2, label %20
    i32 -3, label %21
  ], !dbg !1051

12:                                               ; preds = %10
  %13 = load ptr, ptr @optarg, align 8, !dbg !1053, !tbaa !802
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !1022, metadata !DIExpression()), !dbg !1044
  br label %8, !dbg !1056, !llvm.loop !1057

14:                                               ; preds = %10
  %15 = load ptr, ptr @optarg, align 8, !dbg !1059, !tbaa !802
  %16 = icmp eq ptr %15, null, !dbg !1059
  br i1 %16, label %19, label %17, !dbg !1063

17:                                               ; preds = %14
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1064
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18) #37, !dbg !1064
  br label %19, !dbg !1066

19:                                               ; preds = %17, %14
  br label %10, !dbg !1044, !llvm.loop !1057

20:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #41, !dbg !1067
  unreachable, !dbg !1067

21:                                               ; preds = %10
  %22 = load ptr, ptr @stdout, align 8, !dbg !1068, !tbaa !802
  %23 = load ptr, ptr @Version, align 8, !dbg !1068, !tbaa !802
  %24 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #37, !dbg !1068
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %23, ptr noundef %24, ptr noundef null) #37, !dbg !1068
  tail call void @exit(i32 noundef 0) #39, !dbg !1068
  unreachable, !dbg !1068

25:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #41, !dbg !1069
  unreachable, !dbg !1069

26:                                               ; preds = %10
  %.lcssa2 = phi ptr [ %9, %10 ]
  %27 = load i32, ptr @optind, align 4, !dbg !1070, !tbaa !868
  %28 = icmp eq i32 %27, %0, !dbg !1072
  br i1 %28, label %29, label %31, !dbg !1073

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !1074
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #37, !dbg !1074
  tail call void @usage(i32 noundef 1) #41, !dbg !1076
  unreachable, !dbg !1076

31:                                               ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 438, metadata !1032, metadata !DIExpression()), !dbg !1044
  %32 = icmp eq ptr %.lcssa2, null, !dbg !1077
  br i1 %32, label %47, label %33, !dbg !1078

33:                                               ; preds = %31
  %34 = tail call noalias ptr @mode_compile(ptr noundef nonnull %.lcssa2) #37, !dbg !1079
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1036, metadata !DIExpression()), !dbg !1080
  %35 = icmp eq ptr %34, null, !dbg !1081
  br i1 %35, label %36, label %38, !dbg !1083

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #37, !dbg !1084
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %37) #37, !dbg !1084
  unreachable, !dbg !1084

38:                                               ; preds = %33
  %39 = tail call i32 @umask(i32 noundef 0) #37, !dbg !1085
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1042, metadata !DIExpression()), !dbg !1080
  %40 = tail call i32 @umask(i32 noundef %39) #37, !dbg !1086
  %41 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef false, i32 noundef %39, ptr noundef nonnull %34, ptr noundef null) #38, !dbg !1087
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !1032, metadata !DIExpression()), !dbg !1044
  tail call void @free(ptr noundef nonnull %34) #37, !dbg !1088
  %42 = icmp ult i32 %41, 512, !dbg !1089
  br i1 %42, label %43, label %45, !dbg !1091

43:                                               ; preds = %38
  %44 = load i32, ptr @optind, align 4, !dbg !1092, !tbaa !868
  br label %47, !dbg !1091

45:                                               ; preds = %38
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !1095
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #37, !dbg !1095
  unreachable, !dbg !1095

47:                                               ; preds = %43, %31
  %48 = phi i32 [ %27, %31 ], [ %44, %43 ], !dbg !1092
  %49 = phi i32 [ 438, %31 ], [ %41, %43 ], !dbg !1044
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1032, metadata !DIExpression()), !dbg !1044
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1043, metadata !DIExpression()), !dbg !1044
  %50 = icmp slt i32 %48, %0, !dbg !1096
  br i1 %50, label %.preheader, label %82, !dbg !1097

.preheader:                                       ; preds = %47
  br label %51, !dbg !1097

51:                                               ; preds = %.preheader, %77
  %52 = phi i32 [ %80, %77 ], [ %48, %.preheader ]
  %53 = phi i32 [ %78, %77 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1043, metadata !DIExpression()), !dbg !1044
  %54 = sext i32 %52 to i64, !dbg !1098
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1098
  %56 = load ptr, ptr %55, align 8, !dbg !1098, !tbaa !802
  %57 = tail call i32 @mkfifo(ptr noundef %56, i32 noundef %49) #37, !dbg !1101
  %58 = icmp eq i32 %57, 0, !dbg !1102
  br i1 %58, label %59, label %67, !dbg !1103

59:                                               ; preds = %51
  br i1 %32, label %77, label %60, !dbg !1104

60:                                               ; preds = %59
  %61 = load i32, ptr @optind, align 4, !dbg !1106, !tbaa !868
  %62 = sext i32 %61 to i64, !dbg !1107
  %63 = getelementptr inbounds ptr, ptr %1, i64 %62, !dbg !1107
  %64 = load ptr, ptr %63, align 8, !dbg !1107, !tbaa !802
  %65 = tail call i32 @lchmod(ptr noundef %64, i32 noundef %49) #37, !dbg !1108
  %66 = icmp eq i32 %65, 0, !dbg !1109
  br i1 %66, label %77, label %67, !dbg !1110

67:                                               ; preds = %60, %51
  %68 = phi ptr [ @.str.20, %51 ], [ @.str.21, %60 ]
  %69 = tail call ptr @__errno_location() #40, !dbg !1111
  %70 = load i32, ptr %69, align 4, !dbg !1111, !tbaa !868
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %68, i32 noundef 5) #37, !dbg !1111
  %72 = load i32, ptr @optind, align 4, !dbg !1111, !tbaa !868
  %73 = sext i32 %72 to i64, !dbg !1111
  %74 = getelementptr inbounds ptr, ptr %1, i64 %73, !dbg !1111
  %75 = load ptr, ptr %74, align 8, !dbg !1111, !tbaa !802
  %76 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %75) #37, !dbg !1111
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %70, ptr noundef %71, ptr noundef %76) #37, !dbg !1111
  br label %77, !dbg !1112

77:                                               ; preds = %67, %60, %59
  %78 = phi i32 [ %53, %60 ], [ %53, %59 ], [ 1, %67 ], !dbg !1044
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1043, metadata !DIExpression()), !dbg !1044
  %79 = load i32, ptr @optind, align 4, !dbg !1112, !tbaa !868
  %80 = add nsw i32 %79, 1, !dbg !1112
  store i32 %80, ptr @optind, align 4, !dbg !1112, !tbaa !868
  %81 = icmp slt i32 %80, %0, !dbg !1096
  br i1 %81, label %51, label %.loopexit, !dbg !1097, !llvm.loop !1113

.loopexit:                                        ; preds = %77
  %.lcssa = phi i32 [ %78, %77 ], !dbg !1044
  br label %82, !dbg !1115

82:                                               ; preds = %.loopexit, %47
  %83 = phi i32 [ 0, %47 ], [ %.lcssa, %.loopexit ], !dbg !1044
  ret i32 %83, !dbg !1115
}

; Function Attrs: nounwind
declare !dbg !1116 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1119 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1120 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1123 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1129 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1133 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1136 i32 @mkfifo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1139 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1140 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1144 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1146, metadata !DIExpression()), !dbg !1147
  store ptr %0, ptr @file_name, align 8, !dbg !1148, !tbaa !802
  ret void, !dbg !1149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #12 !dbg !1150 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1154, metadata !DIExpression()), !dbg !1155
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1156, !tbaa !1157
  ret void, !dbg !1159
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1160 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1165, !tbaa !802
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1166
  %3 = icmp eq i32 %2, 0, !dbg !1167
  br i1 %3, label %22, label %4, !dbg !1168

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1169, !tbaa !1157, !range !1170, !noundef !836
  %6 = icmp eq i8 %5, 0, !dbg !1169
  br i1 %6, label %11, label %7, !dbg !1171

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1172
  %9 = load i32, ptr %8, align 4, !dbg !1172, !tbaa !868
  %10 = icmp eq i32 %9, 32, !dbg !1173
  br i1 %10, label %22, label %11, !dbg !1174

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1.28, i32 noundef 5) #37, !dbg !1175
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1162, metadata !DIExpression()), !dbg !1176
  %13 = load ptr, ptr @file_name, align 8, !dbg !1177, !tbaa !802
  %14 = icmp eq ptr %13, null, !dbg !1177
  %15 = tail call ptr @__errno_location() #40, !dbg !1179
  %16 = load i32, ptr %15, align 4, !dbg !1179, !tbaa !868
  br i1 %14, label %19, label %17, !dbg !1180

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1181
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.29, ptr noundef %18, ptr noundef %12) #37, !dbg !1181
  br label %20, !dbg !1181

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.30, ptr noundef %12) #37, !dbg !1182
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1183, !tbaa !868
  tail call void @_exit(i32 noundef %21) #39, !dbg !1184
  unreachable, !dbg !1184

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1185, !tbaa !802
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1187
  %25 = icmp eq i32 %24, 0, !dbg !1188
  br i1 %25, label %28, label %26, !dbg !1189

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1190, !tbaa !868
  tail call void @_exit(i32 noundef %27) #39, !dbg !1191
  unreachable, !dbg !1191

28:                                               ; preds = %22
  ret void, !dbg !1192
}

; Function Attrs: noreturn
declare !dbg !1193 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #14 !dbg !1195 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1199, metadata !DIExpression()), !dbg !1203
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1200, metadata !DIExpression()), !dbg !1203
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1201, metadata !DIExpression()), !dbg !1203
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1202, metadata !DIExpression(DW_OP_deref)), !dbg !1203
  tail call fastcc void @flush_stdout(), !dbg !1204
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1205, !tbaa !802
  %7 = icmp eq ptr %6, null, !dbg !1205
  br i1 %7, label %9, label %8, !dbg !1207

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1208
  br label %13, !dbg !1208

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1209, !tbaa !802
  %11 = tail call ptr @getprogname() #38, !dbg !1209
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef %11) #37, !dbg !1209
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1211, !tbaa.struct !1212
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1211
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1211
  ret void, !dbg !1213
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1214 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1216, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i32 1, metadata !1218, metadata !DIExpression()), !dbg !1223
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1226
  %2 = icmp slt i32 %1, 0, !dbg !1227
  br i1 %2, label %6, label %3, !dbg !1228

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1229, !tbaa !802
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1229
  br label %6, !dbg !1229

6:                                                ; preds = %3, %0
  ret void, !dbg !1230
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1231 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1237
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1233, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1234, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1235, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1236, metadata !DIExpression(DW_OP_deref)), !dbg !1238
  %7 = load ptr, ptr @stderr, align 8, !dbg !1239, !tbaa !802
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1240, !noalias !1284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1288
  call void @llvm.dbg.value(metadata ptr %7, metadata !1280, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %2, metadata !1281, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata ptr poison, metadata !1282, metadata !DIExpression(DW_OP_deref)), !dbg !1289
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1240, !noalias !1284
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1290, !tbaa !868
  %10 = add i32 %9, 1, !dbg !1290
  store i32 %10, ptr @error_message_count, align 4, !dbg !1290, !tbaa !868
  %11 = icmp eq i32 %1, 0, !dbg !1291
  br i1 %11, label %21, label %12, !dbg !1293

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1294, metadata !DIExpression(), metadata !1237, metadata ptr %5, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i32 %1, metadata !1297, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1304
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1305
  call void @llvm.dbg.value(metadata ptr %13, metadata !1298, metadata !DIExpression()), !dbg !1302
  %14 = icmp eq ptr %13, null, !dbg !1306
  br i1 %14, label %15, label %17, !dbg !1308

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.32, ptr noundef nonnull @.str.5.33, i32 noundef 5) #37, !dbg !1309
  call void @llvm.dbg.value(metadata ptr %16, metadata !1298, metadata !DIExpression()), !dbg !1302
  br label %17, !dbg !1310

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1302
  call void @llvm.dbg.value(metadata ptr %18, metadata !1298, metadata !DIExpression()), !dbg !1302
  %19 = load ptr, ptr @stderr, align 8, !dbg !1311, !tbaa !802
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.34, ptr noundef %18) #37, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1312
  br label %21, !dbg !1313

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1314, !tbaa !802
  call void @llvm.dbg.value(metadata i32 10, metadata !1315, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata ptr %22, metadata !1321, metadata !DIExpression()), !dbg !1322
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1324
  %24 = load ptr, ptr %23, align 8, !dbg !1324, !tbaa !1325
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1324
  %26 = load ptr, ptr %25, align 8, !dbg !1324, !tbaa !1328
  %27 = icmp ult ptr %24, %26, !dbg !1324
  br i1 %27, label %30, label %28, !dbg !1324, !prof !1329

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1324
  br label %32, !dbg !1324

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1324
  store ptr %31, ptr %23, align 8, !dbg !1324, !tbaa !1325
  store i8 10, ptr %24, align 1, !dbg !1324, !tbaa !877
  br label %32, !dbg !1324

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1330, !tbaa !802
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1330
  %35 = icmp eq i32 %0, 0, !dbg !1331
  br i1 %35, label %37, label %36, !dbg !1333

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1334
  unreachable, !dbg !1334

37:                                               ; preds = %32
  ret void, !dbg !1335
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

declare !dbg !1336 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1339 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1342 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1345 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1348 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1352 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1360
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1359, metadata !DIExpression(), metadata !1360, metadata ptr %4, metadata !DIExpression()), !dbg !1361
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1356, metadata !DIExpression()), !dbg !1361
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1357, metadata !DIExpression()), !dbg !1361
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1358, metadata !DIExpression()), !dbg !1361
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1362
  call void @llvm.va_start(ptr nonnull %4), !dbg !1363
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1364, !tbaa.struct !1212
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1364
  call void @llvm.va_end(ptr nonnull %4), !dbg !1365
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1366
  ret void, !dbg !1366
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #14 !dbg !401 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !417, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !418, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !419, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !420, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !421, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !422, metadata !DIExpression(DW_OP_deref)), !dbg !1367
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1368, !tbaa !868
  %9 = icmp eq i32 %8, 0, !dbg !1368
  br i1 %9, label %24, label %10, !dbg !1370

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1371, !tbaa !868
  %12 = icmp eq i32 %11, %3, !dbg !1374
  br i1 %12, label %13, label %23, !dbg !1375

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1376, !tbaa !802
  %15 = icmp eq ptr %14, %2, !dbg !1377
  br i1 %15, label %37, label %16, !dbg !1378

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1379
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1380
  br i1 %19, label %20, label %23, !dbg !1380

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1381
  %22 = icmp eq i32 %21, 0, !dbg !1382
  br i1 %22, label %37, label %23, !dbg !1383

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1384, !tbaa !802
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1385, !tbaa !868
  br label %24, !dbg !1386

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1387
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1388, !tbaa !802
  %26 = icmp eq ptr %25, null, !dbg !1388
  br i1 %26, label %28, label %27, !dbg !1390

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1391
  br label %32, !dbg !1391

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1392, !tbaa !802
  %30 = tail call ptr @getprogname() #38, !dbg !1392
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.37, ptr noundef %30) #37, !dbg !1392
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1394, !tbaa !802
  %34 = icmp eq ptr %2, null, !dbg !1394
  %35 = select i1 %34, ptr @.str.3.38, ptr @.str.2.39, !dbg !1394
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1394
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1395, !tbaa.struct !1212
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1395
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1395
  br label %37, !dbg !1396

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1396
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1397 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1407
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1406, metadata !DIExpression(), metadata !1407, metadata ptr %6, metadata !DIExpression()), !dbg !1408
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1401, metadata !DIExpression()), !dbg !1408
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1402, metadata !DIExpression()), !dbg !1408
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1403, metadata !DIExpression()), !dbg !1408
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1404, metadata !DIExpression()), !dbg !1408
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1405, metadata !DIExpression()), !dbg !1408
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1409
  call void @llvm.va_start(ptr nonnull %6), !dbg !1410
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1411, !tbaa.struct !1212
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1411
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1411
  call void @llvm.va_end(ptr nonnull %6), !dbg !1412
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1413
  ret void, !dbg !1413
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1414 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1417, !tbaa !802
  ret ptr %1, !dbg !1418
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !1419 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1431, metadata !DIExpression()), !dbg !1461
  %2 = load i8, ptr %0, align 1, !dbg !1462, !tbaa !877
  %3 = and i8 %2, -8, !dbg !1463
  %4 = icmp eq i8 %3, 48, !dbg !1463
  br i1 %4, label %.preheader, label %.preheader6, !dbg !1463

.preheader6:                                      ; preds = %1
  br label %34, !dbg !1464

.preheader:                                       ; preds = %1
  br label %5, !dbg !1465

5:                                                ; preds = %.preheader, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %.preheader ], !dbg !1466
  %7 = phi i32 [ %12, %14 ], [ 0, %.preheader ], !dbg !1468
  %8 = phi ptr [ %15, %14 ], [ %0, %.preheader ], !dbg !1468
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1432, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1435, metadata !DIExpression()), !dbg !1468
  %9 = shl i32 %7, 3, !dbg !1469
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1432, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1468
  %10 = zext nneg i8 %6 to i32, !dbg !1466
  %11 = add i32 %9, -48, !dbg !1470
  %12 = add nsw i32 %11, %10, !dbg !1471
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1435, metadata !DIExpression()), !dbg !1468
  %13 = icmp ugt i32 %12, 4095, !dbg !1472
  br i1 %13, label %.loopexit, label %14, !dbg !1474

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1475
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !1432, metadata !DIExpression()), !dbg !1468
  %16 = load i8, ptr %15, align 1, !dbg !1476, !tbaa !877
  %17 = and i8 %16, -8, !dbg !1477
  %18 = icmp eq i8 %17, 48, !dbg !1477
  br i1 %18, label %5, label %19, !dbg !1477, !llvm.loop !1478

19:                                               ; preds = %14
  %.lcssa9 = phi ptr [ %15, %14 ], !dbg !1475
  %.lcssa8 = phi i8 [ %16, %14 ], !dbg !1476
  %.lcssa7 = phi i32 [ %12, %14 ], !dbg !1471
  %20 = icmp eq i8 %.lcssa8, 0, !dbg !1480
  br i1 %20, label %21, label %139, !dbg !1482

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 %.lcssa7, metadata !1436, metadata !DIExpression()), !dbg !1468
  %22 = ptrtoint ptr %.lcssa9 to i64, !dbg !1483
  %23 = ptrtoint ptr %0 to i64, !dbg !1483
  %24 = sub i64 %22, %23, !dbg !1483
  %25 = icmp slt i64 %24, 5, !dbg !1484
  %26 = or i32 %.lcssa7, 1023, !dbg !1485
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1437, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %.lcssa7, metadata !1486, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %27, metadata !1491, metadata !DIExpression()), !dbg !1493
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #43, !dbg !1495
  call void @llvm.dbg.value(metadata ptr %28, metadata !1492, metadata !DIExpression()), !dbg !1493
  store i8 61, ptr %28, align 4, !dbg !1496, !tbaa !1497
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !1499
  store i8 1, ptr %29, align 1, !dbg !1500, !tbaa !1501
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !1502
  store i32 4095, ptr %30, align 4, !dbg !1503, !tbaa !1504
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !1505
  store i32 %.lcssa7, ptr %31, align 4, !dbg !1506, !tbaa !1507
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !1508
  store i32 %27, ptr %32, align 4, !dbg !1509, !tbaa !1510
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !1511
  store i8 0, ptr %33, align 1, !dbg !1512, !tbaa !1501
  br label %139, !dbg !1513

34:                                               ; preds = %.preheader6, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %.preheader6 ], !dbg !1514
  %36 = phi i64 [ %43, %41 ], [ 1, %.preheader6 ], !dbg !1516
  %37 = phi ptr [ %44, %41 ], [ %0, %.preheader6 ], !dbg !1517
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !1441, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1439, metadata !DIExpression()), !dbg !1516
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !1464

38:                                               ; preds = %34
  %.lcssa24 = phi i64 [ %36, %34 ], !dbg !1516
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %.lcssa24, i64 noundef 16) #44, !dbg !1519
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !1438, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1443, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1444, metadata !DIExpression()), !dbg !1461
  br label %46, !dbg !1520

40:                                               ; preds = %34
  br label %41, !dbg !1521

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !1522
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !1439, metadata !DIExpression()), !dbg !1516
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1523
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1441, metadata !DIExpression()), !dbg !1518
  %45 = load i8, ptr %44, align 1, !dbg !1514, !tbaa !877
  br label %34, !dbg !1524, !llvm.loop !1525

46:                                               ; preds = %134, %38
  %47 = phi i64 [ 0, %38 ], [ %.lcssa20, %134 ], !dbg !1527
  %48 = phi ptr [ %0, %38 ], [ %135, %134 ], !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1452, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !1444, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1443, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1445, metadata !DIExpression()), !dbg !1530
  br label %49, !dbg !1531

49:                                               ; preds = %60, %46
  %50 = phi ptr [ %48, %46 ], [ %62, %60 ], !dbg !1532
  %51 = phi i32 [ 0, %46 ], [ %61, %60 ], !dbg !1530
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1445, metadata !DIExpression()), !dbg !1530
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1444, metadata !DIExpression()), !dbg !1461
  %52 = load i8, ptr %50, align 1, !dbg !1533, !tbaa !877
  switch i8 %52, label %.loopexit5 [
    i8 117, label %54
    i8 103, label %56
    i8 111, label %58
    i8 97, label %60
    i8 61, label %53
    i8 43, label %53
    i8 45, label %53
  ], !dbg !1536

53:                                               ; preds = %49, %49, %49
  %.lcssa14 = phi ptr [ %50, %49 ], [ %50, %49 ], [ %50, %49 ], !dbg !1532
  %.lcssa12 = phi i32 [ %51, %49 ], [ %51, %49 ], [ %51, %49 ], !dbg !1530
  %.lcssa10 = phi i8 [ %52, %49 ], [ %52, %49 ], [ %52, %49 ], !dbg !1533
  br label %63, !dbg !1537

54:                                               ; preds = %49
  %55 = or i32 %51, 2496, !dbg !1538
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1445, metadata !DIExpression()), !dbg !1530
  br label %60, !dbg !1540

56:                                               ; preds = %49
  %57 = or i32 %51, 1080, !dbg !1541
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !1445, metadata !DIExpression()), !dbg !1530
  br label %60, !dbg !1542

58:                                               ; preds = %49
  %59 = or i32 %51, 519, !dbg !1543
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1445, metadata !DIExpression()), !dbg !1530
  br label %60, !dbg !1544

60:                                               ; preds = %49, %54, %56, %58
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ 4095, %49 ], !dbg !1545
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1445, metadata !DIExpression()), !dbg !1530
  %62 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1546
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !1444, metadata !DIExpression()), !dbg !1461
  br label %49, !dbg !1547, !llvm.loop !1548

63:                                               ; preds = %133, %53
  %64 = phi i8 [ %.lcssa10, %53 ], [ %132, %133 ], !dbg !1551
  %65 = phi i64 [ %47, %53 ], [ %122, %133 ], !dbg !1461
  %66 = phi ptr [ %.lcssa14, %53 ], [ %115, %133 ], !dbg !1532
  %67 = phi i32 [ %.lcssa12, %53 ], [ %121, %133 ], !dbg !1552
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1452, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !1445, metadata !DIExpression()), !dbg !1530
  tail call void @llvm.dbg.value(metadata ptr %66, metadata !1444, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !1443, metadata !DIExpression()), !dbg !1461
  %68 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !1553
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !1444, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata i8 %64, metadata !1450, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1453, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 3, metadata !1454, metadata !DIExpression()), !dbg !1529
  %69 = load i8, ptr %68, align 1, !dbg !1554, !tbaa !877
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
  ], !dbg !1537

.preheader1:                                      ; preds = %63
  br label %94, !dbg !1555

70:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %71, !dbg !1557

71:                                               ; preds = %70, %80
  %72 = phi i8 [ %82, %80 ], [ %69, %70 ], !dbg !1558
  %73 = phi ptr [ %81, %80 ], [ %68, %70 ], !dbg !1529
  %74 = phi i32 [ %78, %80 ], [ 0, %70 ], !dbg !1560
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !1455, metadata !DIExpression()), !dbg !1560
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !1444, metadata !DIExpression()), !dbg !1461
  %75 = shl i32 %74, 3, !dbg !1561
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !1444, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1461
  %76 = zext nneg i8 %72 to i32, !dbg !1558
  %77 = add i32 %75, -48, !dbg !1562
  %78 = add nsw i32 %77, %76, !dbg !1563
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1455, metadata !DIExpression()), !dbg !1560
  %79 = icmp ugt i32 %78, 4095, !dbg !1564
  br i1 %79, label %.loopexit3, label %80, !dbg !1566

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1567
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !1444, metadata !DIExpression()), !dbg !1461
  %82 = load i8, ptr %81, align 1, !dbg !1568, !tbaa !877
  %83 = and i8 %82, -8, !dbg !1569
  %84 = icmp eq i8 %83, 48, !dbg !1569
  br i1 %84, label %71, label %85, !dbg !1569, !llvm.loop !1570

85:                                               ; preds = %80
  %.lcssa17 = phi ptr [ %81, %80 ], !dbg !1567
  %.lcssa16 = phi i8 [ %82, %80 ], !dbg !1568
  %.lcssa15 = phi i32 [ %78, %80 ], !dbg !1563
  %86 = icmp eq i32 %67, 0, !dbg !1572
  br i1 %86, label %87, label %.loopexit4, !dbg !1574

87:                                               ; preds = %85
  switch i8 %.lcssa16, label %.loopexit4 [
    i8 0, label %114
    i8 44, label %114
  ], !dbg !1575

88:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 448, metadata !1452, metadata !DIExpression()), !dbg !1529
  %89 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1576
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !1444, metadata !DIExpression()), !dbg !1461
  br label %114, !dbg !1577

90:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 56, metadata !1452, metadata !DIExpression()), !dbg !1529
  %91 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !1444, metadata !DIExpression()), !dbg !1461
  br label %114, !dbg !1579

92:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 7, metadata !1452, metadata !DIExpression()), !dbg !1529
  %93 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !1444, metadata !DIExpression()), !dbg !1461
  br label %114, !dbg !1581

94:                                               ; preds = %.preheader1, %109
  %95 = phi i8 [ %113, %109 ], [ %69, %.preheader1 ], !dbg !1582
  %96 = phi ptr [ %112, %109 ], [ %68, %.preheader1 ], !dbg !1529
  %97 = phi i32 [ %110, %109 ], [ 0, %.preheader1 ], !dbg !1584
  %98 = phi i8 [ %111, %109 ], [ 1, %.preheader1 ], !dbg !1585
  tail call void @llvm.dbg.value(metadata i8 %98, metadata !1454, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !1452, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !1444, metadata !DIExpression()), !dbg !1461
  switch i8 %95, label %.loopexit2 [
    i8 114, label %99
    i8 119, label %101
    i8 120, label %103
    i8 88, label %109
    i8 115, label %105
    i8 116, label %107
  ], !dbg !1586

99:                                               ; preds = %94
  %100 = or i32 %97, 292, !dbg !1587
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !1452, metadata !DIExpression()), !dbg !1529
  br label %109, !dbg !1589

101:                                              ; preds = %94
  %102 = or i32 %97, 146, !dbg !1590
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1452, metadata !DIExpression()), !dbg !1529
  br label %109, !dbg !1591

103:                                              ; preds = %94
  %104 = or i32 %97, 73, !dbg !1592
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !1452, metadata !DIExpression()), !dbg !1529
  br label %109, !dbg !1593

105:                                              ; preds = %94
  %106 = or i32 %97, 3072, !dbg !1594
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !1452, metadata !DIExpression()), !dbg !1529
  br label %109, !dbg !1595

107:                                              ; preds = %94
  %108 = or i32 %97, 512, !dbg !1596
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1452, metadata !DIExpression()), !dbg !1529
  br label %109, !dbg !1597

109:                                              ; preds = %94, %99, %101, %103, %105, %107
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %97, %94 ], !dbg !1584
  %111 = phi i8 [ %98, %107 ], [ %98, %105 ], [ %98, %103 ], [ %98, %101 ], [ %98, %99 ], [ 2, %94 ], !dbg !1584
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !1454, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !1452, metadata !DIExpression()), !dbg !1529
  %112 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1598
  tail call void @llvm.dbg.value(metadata ptr %112, metadata !1444, metadata !DIExpression()), !dbg !1461
  %113 = load i8, ptr %112, align 1, !dbg !1582, !tbaa !877
  br label %94, !dbg !1599, !llvm.loop !1600

.loopexit2:                                       ; preds = %94
  %.lcssa19 = phi ptr [ %96, %94 ], !dbg !1529
  %.lcssa18 = phi i32 [ %97, %94 ], !dbg !1584
  %.lcssa = phi i8 [ %98, %94 ], !dbg !1585
  br label %114, !dbg !1602

114:                                              ; preds = %.loopexit2, %87, %87, %92, %90, %88
  %115 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %.lcssa17, %87 ], [ %.lcssa17, %87 ], [ %.lcssa19, %.loopexit2 ], !dbg !1529
  %116 = phi i32 [ %67, %92 ], [ %67, %90 ], [ %67, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ %67, %.loopexit2 ], !dbg !1552
  %117 = phi i32 [ 7, %92 ], [ 56, %90 ], [ 448, %88 ], [ %.lcssa15, %87 ], [ %.lcssa15, %87 ], [ %.lcssa18, %.loopexit2 ]
  %118 = phi i1 [ true, %92 ], [ true, %90 ], [ true, %88 ], [ false, %87 ], [ false, %87 ], [ true, %.loopexit2 ], !dbg !1603
  %119 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ 0, %.loopexit2 ], !dbg !1603
  %120 = phi i8 [ 3, %92 ], [ 3, %90 ], [ 3, %88 ], [ 1, %87 ], [ 1, %87 ], [ %.lcssa, %.loopexit2 ], !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %120, metadata !1454, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1453, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !1452, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1445, metadata !DIExpression()), !dbg !1530
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !1444, metadata !DIExpression()), !dbg !1461
  %121 = freeze i32 %116, !dbg !1602
  %122 = add i64 %65, 1, !dbg !1604
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1443, metadata !DIExpression()), !dbg !1461
  %123 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, !dbg !1605
  tail call void @llvm.dbg.value(metadata ptr %123, metadata !1459, metadata !DIExpression()), !dbg !1529
  store i8 %64, ptr %123, align 4, !dbg !1606, !tbaa !1497
  %124 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 1, !dbg !1607
  store i8 %120, ptr %124, align 1, !dbg !1608, !tbaa !1501
  %125 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 2, !dbg !1609
  store i32 %121, ptr %125, align 4, !dbg !1610, !tbaa !1504
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 3, !dbg !1611
  store i32 %117, ptr %126, align 4, !dbg !1612, !tbaa !1507
  %127 = icmp eq i32 %121, 0, !dbg !1602
  %128 = select i1 %127, i32 -1, i32 %121, !dbg !1602
  %129 = and i32 %128, %117, !dbg !1602
  %130 = select i1 %118, i32 %129, i32 %119, !dbg !1602
  %131 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 4, !dbg !1613
  store i32 %130, ptr %131, align 4, !dbg !1614, !tbaa !1510
  %132 = load i8, ptr %115, align 1, !dbg !1615, !tbaa !877
  switch i8 %132, label %.loopexit4 [
    i8 61, label %133
    i8 43, label %133
    i8 45, label %133
    i8 44, label %134
    i8 0, label %136
  ], !dbg !1616

133:                                              ; preds = %114, %114, %114
  br label %63, !dbg !1529

134:                                              ; preds = %114
  %.lcssa22 = phi ptr [ %115, %114 ], !dbg !1529
  %.lcssa20 = phi i64 [ %122, %114 ], !dbg !1604
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1452, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %.lcssa22, metadata !1444, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata i64 %.lcssa20, metadata !1443, metadata !DIExpression()), !dbg !1461
  %135 = getelementptr inbounds i8, ptr %.lcssa22, i64 1, !dbg !1617
  tail call void @llvm.dbg.value(metadata ptr %135, metadata !1444, metadata !DIExpression()), !dbg !1461
  br label %46, !dbg !1618, !llvm.loop !1619

136:                                              ; preds = %114
  %.lcssa21 = phi i64 [ %122, %114 ], !dbg !1604
  %137 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %.lcssa21, i32 1, !dbg !1622
  store i8 0, ptr %137, align 1, !dbg !1625, !tbaa !1501
  br label %139, !dbg !1626

.loopexit3:                                       ; preds = %71
  br label %138, !dbg !1627

.loopexit4:                                       ; preds = %114, %87, %85
  br label %138, !dbg !1627

.loopexit5:                                       ; preds = %49
  br label %138, !dbg !1627

138:                                              ; preds = %.loopexit5, %.loopexit4, %.loopexit3
  call void @llvm.dbg.label(metadata !1460), !dbg !1628
  tail call void @free(ptr noundef nonnull %39) #37, !dbg !1627
  br label %139, !dbg !1629

.loopexit:                                        ; preds = %5
  br label %139, !dbg !1630

139:                                              ; preds = %.loopexit, %136, %138, %21, %19
  %140 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %138 ], [ %39, %136 ], [ null, %.loopexit ]
  ret ptr %140, !dbg !1630
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !1631 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !1669
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1634, metadata !DIExpression(), metadata !1669, metadata ptr %2, metadata !DIExpression()), !dbg !1670
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1633, metadata !DIExpression()), !dbg !1670
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #37, !dbg !1671
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #37, !dbg !1672
  %4 = icmp eq i32 %3, 0, !dbg !1674
  br i1 %4, label %5, label %14, !dbg !1675

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1676
  %7 = load i32, ptr %6, align 8, !dbg !1676, !tbaa !1677
  call void @llvm.dbg.value(metadata i32 %7, metadata !1486, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i32 4095, metadata !1491, metadata !DIExpression()), !dbg !1680
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #43, !dbg !1682
  call void @llvm.dbg.value(metadata ptr %8, metadata !1492, metadata !DIExpression()), !dbg !1680
  store i8 61, ptr %8, align 4, !dbg !1683, !tbaa !1497
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !1684
  store i8 1, ptr %9, align 1, !dbg !1685, !tbaa !1501
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !1686
  store i32 4095, ptr %10, align 4, !dbg !1687, !tbaa !1504
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !1688
  store i32 %7, ptr %11, align 4, !dbg !1689, !tbaa !1507
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !1690
  store i32 4095, ptr %12, align 4, !dbg !1691, !tbaa !1510
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !1692
  store i8 0, ptr %13, align 1, !dbg !1693, !tbaa !1501
  br label %14, !dbg !1694

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !1670
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #37, !dbg !1695
  ret ptr %15, !dbg !1695
}

; Function Attrs: nofree nounwind
declare !dbg !1696 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #19 !dbg !1701 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1708, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1709, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1710, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1711, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1712, metadata !DIExpression()), !dbg !1724
  %6 = and i32 %0, 4095, !dbg !1725
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1713, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1714, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1711, metadata !DIExpression()), !dbg !1724
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !1726
  %8 = load i8, ptr %7, align 1, !dbg !1726, !tbaa !1501
  %9 = icmp eq i8 %8, 0, !dbg !1727
  br i1 %9, label %78, label %10, !dbg !1728

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1728

14:                                               ; preds = %10, %71
  %15 = phi i8 [ %8, %10 ], [ %76, %71 ]
  %16 = phi ptr [ %3, %10 ], [ %74, %71 ]
  %17 = phi i32 [ %6, %10 ], [ %73, %71 ]
  %18 = phi i32 [ 0, %10 ], [ %72, %71 ]
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1711, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1713, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1714, metadata !DIExpression()), !dbg !1724
  %19 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !1729
  %20 = load i32, ptr %19, align 4, !dbg !1729, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1715, metadata !DIExpression()), !dbg !1730
  %21 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !1731
  %22 = load i32, ptr %21, align 4, !dbg !1731, !tbaa !1510
  %23 = xor i32 %22, -1, !dbg !1732
  %24 = and i32 %11, %23, !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !1719, metadata !DIExpression()), !dbg !1730
  %25 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !1734
  %26 = load i32, ptr %25, align 4, !dbg !1734, !tbaa !1507
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1720, metadata !DIExpression()), !dbg !1730
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1735

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1736
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1720, metadata !DIExpression()), !dbg !1730
  %29 = and i32 %28, 292, !dbg !1738
  %30 = icmp eq i32 %29, 0, !dbg !1739
  %31 = select i1 %30, i32 0, i32 292, !dbg !1739
  %32 = and i32 %28, 146, !dbg !1740
  %33 = icmp eq i32 %32, 0, !dbg !1741
  %34 = select i1 %33, i32 0, i32 146, !dbg !1741
  %35 = and i32 %28, 73, !dbg !1742
  %36 = icmp eq i32 %35, 0, !dbg !1743
  %37 = select i1 %36, i32 0, i32 73, !dbg !1743
  %38 = or disjoint i32 %34, %31, !dbg !1744
  %39 = or disjoint i32 %38, %37, !dbg !1745
  %40 = or i32 %39, %28, !dbg !1745
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1720, metadata !DIExpression()), !dbg !1730
  br label %47, !dbg !1746

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1747
  %43 = or i32 %42, %12, !dbg !1749
  %44 = icmp eq i32 %43, 0, !dbg !1749
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1750
  br label %47, !dbg !1750

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1730
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1720, metadata !DIExpression()), !dbg !1730
  %49 = icmp eq i32 %20, 0, !dbg !1751
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1751
  %51 = xor i32 %24, -1, !dbg !1752
  %52 = and i32 %50, %51, !dbg !1753
  %53 = and i32 %52, %48, !dbg !1754
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1720, metadata !DIExpression()), !dbg !1730
  %54 = load i8, ptr %16, align 4, !dbg !1755, !tbaa !1497
  switch i8 %54, label %71 [
    i8 61, label %55
    i8 43, label %64
    i8 45, label %67
  ], !dbg !1756

55:                                               ; preds = %47
  %56 = xor i32 %20, -1, !dbg !1757
  %57 = select i1 %49, i32 0, i32 %56, !dbg !1757
  %58 = or i32 %57, %24, !dbg !1758
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !1721, metadata !DIExpression()), !dbg !1759
  %59 = and i32 %58, 4095, !dbg !1760
  %60 = xor i32 %59, 4095, !dbg !1760
  %61 = or i32 %60, %18, !dbg !1761
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1714, metadata !DIExpression()), !dbg !1724
  %62 = and i32 %58, %17, !dbg !1762
  %63 = or i32 %53, %62, !dbg !1763
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !1713, metadata !DIExpression()), !dbg !1724
  br label %71

64:                                               ; preds = %47
  %65 = or i32 %53, %18, !dbg !1764
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !1714, metadata !DIExpression()), !dbg !1724
  %66 = or i32 %53, %17, !dbg !1765
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1713, metadata !DIExpression()), !dbg !1724
  br label %71, !dbg !1766

67:                                               ; preds = %47
  %68 = or i32 %53, %18, !dbg !1767
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1714, metadata !DIExpression()), !dbg !1724
  %69 = xor i32 %53, -1, !dbg !1768
  %70 = and i32 %17, %69, !dbg !1769
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !1713, metadata !DIExpression()), !dbg !1724
  br label %71, !dbg !1770

71:                                               ; preds = %47, %67, %64, %55
  %72 = phi i32 [ %18, %47 ], [ %68, %67 ], [ %65, %64 ], [ %61, %55 ], !dbg !1724
  %73 = phi i32 [ %17, %47 ], [ %70, %67 ], [ %66, %64 ], [ %63, %55 ], !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !1713, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1714, metadata !DIExpression()), !dbg !1724
  %74 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !1771
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1711, metadata !DIExpression()), !dbg !1724
  %75 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !1726
  %76 = load i8, ptr %75, align 1, !dbg !1726, !tbaa !1501
  %77 = icmp eq i8 %76, 0, !dbg !1727
  br i1 %77, label %.loopexit, label %14, !dbg !1728, !llvm.loop !1772

.loopexit:                                        ; preds = %71
  %.lcssa1 = phi i32 [ %72, %71 ], !dbg !1724
  %.lcssa = phi i32 [ %73, %71 ], !dbg !1724
  br label %78, !dbg !1774

78:                                               ; preds = %.loopexit, %5
  %79 = phi i32 [ 0, %5 ], [ %.lcssa1, %.loopexit ], !dbg !1776
  %80 = phi i32 [ %6, %5 ], [ %.lcssa, %.loopexit ], !dbg !1777
  %81 = icmp eq ptr %4, null, !dbg !1774
  br i1 %81, label %83, label %82, !dbg !1778

82:                                               ; preds = %78
  store i32 %79, ptr %4, align 4, !dbg !1779, !tbaa !868
  br label %83, !dbg !1780

83:                                               ; preds = %82, %78
  ret i32 %80, !dbg !1781
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1782 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1784, metadata !DIExpression()), !dbg !1787
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1788
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1785, metadata !DIExpression()), !dbg !1787
  %3 = icmp eq ptr %2, null, !dbg !1789
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1789
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1789
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1786, metadata !DIExpression()), !dbg !1787
  %6 = ptrtoint ptr %5 to i64, !dbg !1790
  %7 = ptrtoint ptr %0 to i64, !dbg !1790
  %8 = sub i64 %6, %7, !dbg !1790
  %9 = icmp sgt i64 %8, 6, !dbg !1792
  br i1 %9, label %10, label %19, !dbg !1793

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1794
  call void @llvm.dbg.value(metadata ptr %11, metadata !1795, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1800, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i64 7, metadata !1801, metadata !DIExpression()), !dbg !1802
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1804
  %13 = icmp eq i32 %12, 0, !dbg !1805
  br i1 %13, label %14, label %19, !dbg !1806

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1784, metadata !DIExpression()), !dbg !1787
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #38, !dbg !1807
  %16 = icmp eq i32 %15, 0, !dbg !1810
  %17 = select i1 %16, i64 3, i64 0, !dbg !1811
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1811
  br label %19, !dbg !1811

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1787
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1786, metadata !DIExpression()), !dbg !1787
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1784, metadata !DIExpression()), !dbg !1787
  store ptr %20, ptr @program_name, align 8, !dbg !1812, !tbaa !802
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1813, !tbaa !802
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1814, !tbaa !802
  ret void, !dbg !1815
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1816 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !459 {
  %3 = alloca i32, align 4, !DIAssignID !1817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !469, metadata !DIExpression(), metadata !1817, metadata ptr %3, metadata !DIExpression()), !dbg !1818
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !474, metadata !DIExpression(), metadata !1819, metadata ptr %4, metadata !DIExpression()), !dbg !1818
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !466, metadata !DIExpression()), !dbg !1818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !467, metadata !DIExpression()), !dbg !1818
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1820
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !468, metadata !DIExpression()), !dbg !1818
  %6 = icmp eq ptr %5, %0, !dbg !1821
  br i1 %6, label %7, label %14, !dbg !1823

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1824
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1825
  call void @llvm.dbg.value(metadata ptr %4, metadata !1826, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %4, metadata !1835, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1841, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 8, metadata !1842, metadata !DIExpression()), !dbg !1843
  store i64 0, ptr %4, align 8, !dbg !1845
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1846
  %9 = icmp eq i64 %8, 2, !dbg !1848
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1849
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1818
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1850
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1850
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1818
  ret ptr %15, !dbg !1850
}

; Function Attrs: nounwind
declare !dbg !1851 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1857 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1862, metadata !DIExpression()), !dbg !1865
  %2 = tail call ptr @__errno_location() #40, !dbg !1866
  %3 = load i32, ptr %2, align 4, !dbg !1866, !tbaa !868
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1863, metadata !DIExpression()), !dbg !1865
  %4 = icmp eq ptr %0, null, !dbg !1867
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1867
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1864, metadata !DIExpression()), !dbg !1865
  store i32 %3, ptr %2, align 4, !dbg !1869, !tbaa !868
  ret ptr %6, !dbg !1870
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1871 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1877, metadata !DIExpression()), !dbg !1878
  %2 = icmp eq ptr %0, null, !dbg !1879
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1879
  %4 = load i32, ptr %3, align 8, !dbg !1880, !tbaa !1881
  ret i32 %4, !dbg !1883
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1884 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1888, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1889, metadata !DIExpression()), !dbg !1890
  %3 = icmp eq ptr %0, null, !dbg !1891
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1891
  store i32 %1, ptr %4, align 8, !dbg !1892, !tbaa !1881
  ret void, !dbg !1893
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1894 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1898, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1899, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1900, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1901, metadata !DIExpression()), !dbg !1906
  %4 = icmp eq ptr %0, null, !dbg !1907
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1907
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1908
  %7 = lshr i8 %1, 5, !dbg !1909
  %8 = zext nneg i8 %7 to i64, !dbg !1909
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1910
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1902, metadata !DIExpression()), !dbg !1906
  %10 = and i8 %1, 31, !dbg !1911
  %11 = zext nneg i8 %10 to i32, !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1904, metadata !DIExpression()), !dbg !1906
  %12 = load i32, ptr %9, align 4, !dbg !1912, !tbaa !868
  %13 = lshr i32 %12, %11, !dbg !1913
  %14 = and i32 %13, 1, !dbg !1914
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1905, metadata !DIExpression()), !dbg !1906
  %15 = xor i32 %13, %2, !dbg !1915
  %16 = and i32 %15, 1, !dbg !1915
  %17 = shl nuw i32 %16, %11, !dbg !1916
  %18 = xor i32 %17, %12, !dbg !1917
  store i32 %18, ptr %9, align 4, !dbg !1917, !tbaa !868
  ret i32 %14, !dbg !1918
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1919 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1923, metadata !DIExpression()), !dbg !1926
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1924, metadata !DIExpression()), !dbg !1926
  %3 = icmp eq ptr %0, null, !dbg !1927
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1929
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1923, metadata !DIExpression()), !dbg !1926
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1930
  %6 = load i32, ptr %5, align 4, !dbg !1930, !tbaa !1931
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1925, metadata !DIExpression()), !dbg !1926
  store i32 %1, ptr %5, align 4, !dbg !1932, !tbaa !1931
  ret i32 %6, !dbg !1933
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1934 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1938, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1939, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1940, metadata !DIExpression()), !dbg !1941
  %4 = icmp eq ptr %0, null, !dbg !1942
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1944
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1938, metadata !DIExpression()), !dbg !1941
  store i32 10, ptr %5, align 8, !dbg !1945, !tbaa !1881
  %6 = icmp ne ptr %1, null, !dbg !1946
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1948
  br i1 %8, label %10, label %9, !dbg !1948

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1949
  unreachable, !dbg !1949

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1950
  store ptr %1, ptr %11, align 8, !dbg !1951, !tbaa !1952
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1953
  store ptr %2, ptr %12, align 8, !dbg !1954, !tbaa !1955
  ret void, !dbg !1956
}

; Function Attrs: noreturn nounwind
declare !dbg !1957 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1958 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1962, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1963, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1964, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1965, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1966, metadata !DIExpression()), !dbg !1970
  %6 = icmp eq ptr %4, null, !dbg !1971
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1971
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1967, metadata !DIExpression()), !dbg !1970
  %8 = tail call ptr @__errno_location() #40, !dbg !1972
  %9 = load i32, ptr %8, align 4, !dbg !1972, !tbaa !868
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1968, metadata !DIExpression()), !dbg !1970
  %10 = load i32, ptr %7, align 8, !dbg !1973, !tbaa !1881
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1974
  %12 = load i32, ptr %11, align 4, !dbg !1974, !tbaa !1931
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1975
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1976
  %15 = load ptr, ptr %14, align 8, !dbg !1976, !tbaa !1952
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1977
  %17 = load ptr, ptr %16, align 8, !dbg !1977, !tbaa !1955
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1978
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1969, metadata !DIExpression()), !dbg !1970
  store i32 %9, ptr %8, align 4, !dbg !1979, !tbaa !868
  ret i64 %18, !dbg !1980
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1981 {
  %10 = alloca i32, align 4, !DIAssignID !2049
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2050
  %12 = alloca i32, align 4, !DIAssignID !2051
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2052
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2053
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2027, metadata !DIExpression(), metadata !2053, metadata ptr %14, metadata !DIExpression()), !dbg !2054
  %15 = alloca i32, align 4, !DIAssignID !2055
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2030, metadata !DIExpression(), metadata !2055, metadata ptr %15, metadata !DIExpression()), !dbg !2056
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1987, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1989, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1990, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1991, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1992, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1993, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1994, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1995, metadata !DIExpression()), !dbg !2057
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2058
  %17 = icmp eq i64 %16, 1, !dbg !2059
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1996, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1998, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1999, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2000, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2004, metadata !DIExpression()), !dbg !2057
  %18 = and i32 %5, 2, !dbg !2060
  %19 = icmp ne i32 %18, 0, !dbg !2060
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2060

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2061
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2062
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2063
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2000, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1999, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1998, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1990, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1995, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1994, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1991, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.label(metadata !2005), !dbg !2064
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2057
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
  ], !dbg !2065

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1991, metadata !DIExpression()), !dbg !2057
  br label %101, !dbg !2066

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1991, metadata !DIExpression()), !dbg !2057
  br i1 %36, label %101, label %42, !dbg !2066

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2067
  br i1 %43, label %101, label %44, !dbg !2071

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2067, !tbaa !877
  br label %101, !dbg !2067

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !560, metadata !DIExpression(), metadata !2051, metadata ptr %12, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.assign(metadata i1 undef, metadata !561, metadata !DIExpression(), metadata !2052, metadata ptr %13, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata ptr @.str.11.72, metadata !557, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %28, metadata !558, metadata !DIExpression()), !dbg !2072
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.11.72, i32 noundef 5) #37, !dbg !2076
  call void @llvm.dbg.value(metadata ptr %46, metadata !559, metadata !DIExpression()), !dbg !2072
  %47 = icmp eq ptr %46, @.str.11.72, !dbg !2077
  br i1 %47, label %48, label %57, !dbg !2079

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2080
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %13, metadata !2082, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %13, metadata !2090, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i32 0, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 8, metadata !2094, metadata !DIExpression()), !dbg !2095
  store i64 0, ptr %13, align 8, !dbg !2097
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2098
  %50 = icmp eq i64 %49, 3, !dbg !2100
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2101
  %54 = icmp eq i32 %28, 9, !dbg !2101
  %55 = select i1 %54, ptr @.str.10.74, ptr @.str.12.75, !dbg !2101
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2102
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2072
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1994, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.assign(metadata i1 undef, metadata !560, metadata !DIExpression(), metadata !2049, metadata ptr %10, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !561, metadata !DIExpression(), metadata !2050, metadata ptr %11, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata ptr @.str.12.75, metadata !557, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 %28, metadata !558, metadata !DIExpression()), !dbg !2103
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.12.75, i32 noundef 5) #37, !dbg !2105
  call void @llvm.dbg.value(metadata ptr %59, metadata !559, metadata !DIExpression()), !dbg !2103
  %60 = icmp eq ptr %59, @.str.12.75, !dbg !2106
  br i1 %60, label %61, label %70, !dbg !2107

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2109
  call void @llvm.dbg.value(metadata ptr %11, metadata !2082, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata ptr %11, metadata !2090, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i32 0, metadata !2093, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i64 8, metadata !2094, metadata !DIExpression()), !dbg !2112
  store i64 0, ptr %11, align 8, !dbg !2114
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2115
  %63 = icmp eq i64 %62, 3, !dbg !2116
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2117
  %67 = icmp eq i32 %28, 9, !dbg !2117
  %68 = select i1 %67, ptr @.str.10.74, ptr @.str.12.75, !dbg !2117
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2118
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1995, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1994, metadata !DIExpression()), !dbg !2057
  br i1 %36, label %88, label %73, !dbg !2119

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2007, metadata !DIExpression()), !dbg !2120
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1997, metadata !DIExpression()), !dbg !2057
  %74 = load i8, ptr %71, align 1, !dbg !2121, !tbaa !877
  %75 = icmp eq i8 %74, 0, !dbg !2123
  br i1 %75, label %88, label %.preheader11, !dbg !2123

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2123

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2007, metadata !DIExpression()), !dbg !2120
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1997, metadata !DIExpression()), !dbg !2057
  %80 = icmp ult i64 %79, %39, !dbg !2124
  br i1 %80, label %81, label %83, !dbg !2127

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2124
  store i8 %77, ptr %82, align 1, !dbg !2124, !tbaa !877
  br label %83, !dbg !2124

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2127
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1997, metadata !DIExpression()), !dbg !2057
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2128
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2007, metadata !DIExpression()), !dbg !2120
  %86 = load i8, ptr %85, align 1, !dbg !2121, !tbaa !877
  %87 = icmp eq i8 %86, 0, !dbg !2123
  br i1 %87, label %.loopexit12, label %76, !dbg !2123, !llvm.loop !2129

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2127
  br label %88, !dbg !2131

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2132
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2001, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1999, metadata !DIExpression()), !dbg !2057
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !2131
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2000, metadata !DIExpression()), !dbg !2057
  br label %101, !dbg !2133

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2002, metadata !DIExpression()), !dbg !2057
  br label %101, !dbg !2134

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1991, metadata !DIExpression()), !dbg !2057
  br label %101, !dbg !2135

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2057
  br i1 %36, label %101, label %95, !dbg !2136

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1991, metadata !DIExpression()), !dbg !2057
  br i1 %36, label %101, label %95, !dbg !2135

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2137
  br i1 %97, label %101, label %98, !dbg !2141

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2137, !tbaa !877
  br label %101, !dbg !2137

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2057
  br label %101, !dbg !2142

100:                                              ; preds = %27
  call void @abort() #39, !dbg !2143
  unreachable, !dbg !2143

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2132
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.74, %42 ], [ @.str.10.74, %44 ], [ @.str.10.74, %41 ], [ %33, %27 ], [ @.str.12.75, %95 ], [ @.str.12.75, %98 ], [ @.str.12.75, %94 ], [ @.str.10.74, %40 ], [ @.str.12.75, %91 ], [ @.str.12.75, %92 ], [ @.str.12.75, %93 ], !dbg !2057
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2057
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2000, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1999, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1995, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1994, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1991, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2012, metadata !DIExpression()), !dbg !2144
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
  br label %121, !dbg !2145

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2132
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2061
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2146
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2012, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1998, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1990, metadata !DIExpression()), !dbg !2057
  %130 = icmp eq i64 %122, -1, !dbg !2147
  br i1 %130, label %131, label %135, !dbg !2148

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2149
  %133 = load i8, ptr %132, align 1, !dbg !2149, !tbaa !877
  %134 = icmp eq i8 %133, 0, !dbg !2150
  br i1 %134, label %573, label %137, !dbg !2151

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2152
  br i1 %136, label %573, label %137, !dbg !2151

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2017, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2018, metadata !DIExpression()), !dbg !2153
  br i1 %113, label %138, label %151, !dbg !2154

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2156
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2157
  br i1 %140, label %141, label %143, !dbg !2157

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1990, metadata !DIExpression()), !dbg !2057
  br label %143, !dbg !2159

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1990, metadata !DIExpression()), !dbg !2057
  %145 = icmp ugt i64 %139, %144, !dbg !2160
  br i1 %145, label %151, label %146, !dbg !2161

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2162
  call void @llvm.dbg.value(metadata ptr %147, metadata !2163, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata ptr %106, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %107, metadata !2167, metadata !DIExpression()), !dbg !2168
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2170
  %149 = icmp eq i32 %148, 0, !dbg !2171
  %150 = and i1 %149, %109, !dbg !2172
  br i1 %150, label %.loopexit7, label %151, !dbg !2172

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2014, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1990, metadata !DIExpression()), !dbg !2057
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2173
  %155 = load i8, ptr %154, align 1, !dbg !2173, !tbaa !877
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2019, metadata !DIExpression()), !dbg !2153
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
  ], !dbg !2174

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2175

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2176

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2017, metadata !DIExpression()), !dbg !2153
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2180
  br i1 %159, label %176, label %160, !dbg !2180

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2182
  br i1 %161, label %162, label %164, !dbg !2186

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2182
  store i8 39, ptr %163, align 1, !dbg !2182, !tbaa !877
  br label %164, !dbg !2182

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1997, metadata !DIExpression()), !dbg !2057
  %166 = icmp ult i64 %165, %129, !dbg !2187
  br i1 %166, label %167, label %169, !dbg !2190

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2187
  store i8 36, ptr %168, align 1, !dbg !2187, !tbaa !877
  br label %169, !dbg !2187

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1997, metadata !DIExpression()), !dbg !2057
  %171 = icmp ult i64 %170, %129, !dbg !2191
  br i1 %171, label %172, label %174, !dbg !2194

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2191
  store i8 39, ptr %173, align 1, !dbg !2191, !tbaa !877
  br label %174, !dbg !2191

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2194
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2057
  br label %176, !dbg !2195

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2057
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1997, metadata !DIExpression()), !dbg !2057
  %179 = icmp ult i64 %177, %129, !dbg !2196
  br i1 %179, label %180, label %182, !dbg !2199

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2196
  store i8 92, ptr %181, align 1, !dbg !2196, !tbaa !877
  br label %182, !dbg !2196

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2199
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1997, metadata !DIExpression()), !dbg !2057
  br i1 %110, label %184, label %476, !dbg !2200

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2202
  %186 = icmp ult i64 %185, %152, !dbg !2203
  br i1 %186, label %187, label %433, !dbg !2204

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2205
  %189 = load i8, ptr %188, align 1, !dbg !2205, !tbaa !877
  %190 = add i8 %189, -48, !dbg !2206
  %191 = icmp ult i8 %190, 10, !dbg !2206
  br i1 %191, label %192, label %433, !dbg !2206

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2207
  br i1 %193, label %194, label %196, !dbg !2211

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2207
  store i8 48, ptr %195, align 1, !dbg !2207, !tbaa !877
  br label %196, !dbg !2207

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2211
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1997, metadata !DIExpression()), !dbg !2057
  %198 = icmp ult i64 %197, %129, !dbg !2212
  br i1 %198, label %199, label %201, !dbg !2215

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2212
  store i8 48, ptr %200, align 1, !dbg !2212, !tbaa !877
  br label %201, !dbg !2212

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2215
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1997, metadata !DIExpression()), !dbg !2057
  br label %433, !dbg !2216

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2217

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2218

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2219

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2221

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2223
  %209 = icmp ult i64 %208, %152, !dbg !2224
  br i1 %209, label %210, label %433, !dbg !2225

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2226
  %212 = load i8, ptr %211, align 1, !dbg !2226, !tbaa !877
  %213 = icmp eq i8 %212, 63, !dbg !2227
  br i1 %213, label %214, label %433, !dbg !2228

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2229
  %216 = load i8, ptr %215, align 1, !dbg !2229, !tbaa !877
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
  ], !dbg !2230

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2231

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2019, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2012, metadata !DIExpression()), !dbg !2144
  %219 = icmp ult i64 %123, %129, !dbg !2233
  br i1 %219, label %220, label %222, !dbg !2236

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2233
  store i8 63, ptr %221, align 1, !dbg !2233, !tbaa !877
  br label %222, !dbg !2233

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2236
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1997, metadata !DIExpression()), !dbg !2057
  %224 = icmp ult i64 %223, %129, !dbg !2237
  br i1 %224, label %225, label %227, !dbg !2240

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2237
  store i8 34, ptr %226, align 1, !dbg !2237, !tbaa !877
  br label %227, !dbg !2237

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1997, metadata !DIExpression()), !dbg !2057
  %229 = icmp ult i64 %228, %129, !dbg !2241
  br i1 %229, label %230, label %232, !dbg !2244

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2241
  store i8 34, ptr %231, align 1, !dbg !2241, !tbaa !877
  br label %232, !dbg !2241

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1997, metadata !DIExpression()), !dbg !2057
  %234 = icmp ult i64 %233, %129, !dbg !2245
  br i1 %234, label %235, label %237, !dbg !2248

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2245
  store i8 63, ptr %236, align 1, !dbg !2245, !tbaa !877
  br label %237, !dbg !2245

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2248
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1997, metadata !DIExpression()), !dbg !2057
  br label %433, !dbg !2249

239:                                              ; preds = %151
  br label %249, !dbg !2250

240:                                              ; preds = %151
  br label %249, !dbg !2251

241:                                              ; preds = %151
  br label %247, !dbg !2252

242:                                              ; preds = %151
  br label %247, !dbg !2253

243:                                              ; preds = %151
  br label %249, !dbg !2254

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2255

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2256

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2259

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2261
  call void @llvm.dbg.label(metadata !2020), !dbg !2262
  br i1 %118, label %.loopexit8, label %249, !dbg !2263

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2261
  call void @llvm.dbg.label(metadata !2023), !dbg !2265
  br i1 %108, label %487, label %444, !dbg !2266

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2267

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2268, !tbaa !877
  %254 = icmp eq i8 %253, 0, !dbg !2270
  br i1 %254, label %255, label %433, !dbg !2271

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2272
  br i1 %256, label %257, label %433, !dbg !2274

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2018, metadata !DIExpression()), !dbg !2153
  br label %258, !dbg !2275

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2153
  br i1 %115, label %260, label %433, !dbg !2276

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2278

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2018, metadata !DIExpression()), !dbg !2153
  br i1 %115, label %262, label %433, !dbg !2279

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2280

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2283
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2285
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2285
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2285
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1998, metadata !DIExpression()), !dbg !2057
  %269 = icmp ult i64 %123, %268, !dbg !2286
  br i1 %269, label %270, label %272, !dbg !2289

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2286
  store i8 39, ptr %271, align 1, !dbg !2286, !tbaa !877
  br label %272, !dbg !2286

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1997, metadata !DIExpression()), !dbg !2057
  %274 = icmp ult i64 %273, %268, !dbg !2290
  br i1 %274, label %275, label %277, !dbg !2293

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2290
  store i8 92, ptr %276, align 1, !dbg !2290, !tbaa !877
  br label %277, !dbg !2290

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1997, metadata !DIExpression()), !dbg !2057
  %279 = icmp ult i64 %278, %268, !dbg !2294
  br i1 %279, label %280, label %282, !dbg !2297

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2294
  store i8 39, ptr %281, align 1, !dbg !2294, !tbaa !877
  br label %282, !dbg !2294

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2297
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2057
  br label %433, !dbg !2298

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2299

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2024, metadata !DIExpression()), !dbg !2300
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !2301
  %287 = load ptr, ptr %286, align 8, !dbg !2301, !tbaa !802
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2301
  %290 = load i16, ptr %289, align 2, !dbg !2301, !tbaa !909
  %291 = and i16 %290, 16384, !dbg !2301
  %292 = icmp ne i16 %291, 0, !dbg !2303
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2026, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2300
  br label %334, !dbg !2304

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2305
  call void @llvm.dbg.value(metadata ptr %14, metadata !2082, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %14, metadata !2090, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 0, metadata !2093, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 8, metadata !2094, metadata !DIExpression()), !dbg !2308
  store i64 0, ptr %14, align 8, !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2024, metadata !DIExpression()), !dbg !2300
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2300
  %294 = icmp eq i64 %152, -1, !dbg !2311
  br i1 %294, label %295, label %297, !dbg !2313

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2314
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1990, metadata !DIExpression()), !dbg !2057
  br label %297, !dbg !2315

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1990, metadata !DIExpression()), !dbg !2057
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2316
  %299 = sub i64 %298, %128, !dbg !2317
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !2318
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2034, metadata !DIExpression()), !dbg !2056
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2319

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2024, metadata !DIExpression()), !dbg !2300
  %302 = icmp ult i64 %128, %298, !dbg !2320
  br i1 %302, label %.preheader5, label %329, !dbg !2322

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2323

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2300
  br label %329, !dbg !2324

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2024, metadata !DIExpression()), !dbg !2300
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2326
  %308 = load i8, ptr %307, align 1, !dbg !2326, !tbaa !877
  %309 = icmp eq i8 %308, 0, !dbg !2322
  br i1 %309, label %.loopexit6, label %310, !dbg !2323

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2024, metadata !DIExpression()), !dbg !2300
  %312 = add i64 %311, %128, !dbg !2328
  %313 = icmp eq i64 %311, %299, !dbg !2320
  br i1 %313, label %.loopexit6, label %304, !dbg !2322, !llvm.loop !2329

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2035, metadata !DIExpression()), !dbg !2330
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2331
  %317 = and i1 %316, %109, !dbg !2331
  br i1 %317, label %.preheader3, label %325, !dbg !2331

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2332

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2035, metadata !DIExpression()), !dbg !2330
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2333
  %321 = load i8, ptr %320, align 1, !dbg !2333, !tbaa !877
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2335

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2035, metadata !DIExpression()), !dbg !2330
  %324 = icmp eq i64 %323, %300, !dbg !2337
  br i1 %324, label %.loopexit4, label %318, !dbg !2332, !llvm.loop !2338

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2340

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2340, !tbaa !868
  call void @llvm.dbg.value(metadata i32 %326, metadata !2342, metadata !DIExpression()), !dbg !2350
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !2352
  %328 = icmp ne i32 %327, 0, !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2026, metadata !DIExpression()), !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2024, metadata !DIExpression()), !dbg !2300
  br label %329, !dbg !2354

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2355

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2026, metadata !DIExpression()), !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2024, metadata !DIExpression()), !dbg !2300
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2355
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2356
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2026, metadata !DIExpression()), !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2024, metadata !DIExpression()), !dbg !2300
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2355
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2356
  call void @llvm.dbg.label(metadata !2048), !dbg !2357
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2358
  br label %624, !dbg !2358

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2153
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2360
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2026, metadata !DIExpression()), !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2024, metadata !DIExpression()), !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1990, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2018, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2153
  %338 = icmp ult i64 %336, 2, !dbg !2361
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2362
  br i1 %340, label %433, label %341, !dbg !2362

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2363
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2043, metadata !DIExpression()), !dbg !2364
  br label %343, !dbg !2365

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2057
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2144
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2019, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2017, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2014, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2012, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1997, metadata !DIExpression()), !dbg !2057
  br i1 %339, label %394, label %350, !dbg !2366

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2371

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2017, metadata !DIExpression()), !dbg !2153
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2374
  br i1 %352, label %369, label %353, !dbg !2374

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2376
  br i1 %354, label %355, label %357, !dbg !2380

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2376
  store i8 39, ptr %356, align 1, !dbg !2376, !tbaa !877
  br label %357, !dbg !2376

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2380
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1997, metadata !DIExpression()), !dbg !2057
  %359 = icmp ult i64 %358, %129, !dbg !2381
  br i1 %359, label %360, label %362, !dbg !2384

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2381
  store i8 36, ptr %361, align 1, !dbg !2381, !tbaa !877
  br label %362, !dbg !2381

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1997, metadata !DIExpression()), !dbg !2057
  %364 = icmp ult i64 %363, %129, !dbg !2385
  br i1 %364, label %365, label %367, !dbg !2388

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2385
  store i8 39, ptr %366, align 1, !dbg !2385, !tbaa !877
  br label %367, !dbg !2385

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2057
  br label %369, !dbg !2389

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2057
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1997, metadata !DIExpression()), !dbg !2057
  %372 = icmp ult i64 %370, %129, !dbg !2390
  br i1 %372, label %373, label %375, !dbg !2393

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2390
  store i8 92, ptr %374, align 1, !dbg !2390, !tbaa !877
  br label %375, !dbg !2390

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1997, metadata !DIExpression()), !dbg !2057
  %377 = icmp ult i64 %376, %129, !dbg !2394
  br i1 %377, label %378, label %382, !dbg !2397

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2394
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2394
  store i8 %380, ptr %381, align 1, !dbg !2394, !tbaa !877
  br label %382, !dbg !2394

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2397
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1997, metadata !DIExpression()), !dbg !2057
  %384 = icmp ult i64 %383, %129, !dbg !2398
  br i1 %384, label %385, label %390, !dbg !2401

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2398
  %388 = or disjoint i8 %387, 48, !dbg !2398
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2398
  store i8 %388, ptr %389, align 1, !dbg !2398, !tbaa !877
  br label %390, !dbg !2398

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2401
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1997, metadata !DIExpression()), !dbg !2057
  %392 = and i8 %349, 7, !dbg !2402
  %393 = or disjoint i8 %392, 48, !dbg !2403
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2019, metadata !DIExpression()), !dbg !2153
  br label %401, !dbg !2404

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2405

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2406
  br i1 %396, label %397, label %399, !dbg !2411

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2406
  store i8 92, ptr %398, align 1, !dbg !2406, !tbaa !877
  br label %399, !dbg !2406

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2411
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2153
  br label %401, !dbg !2412

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2057
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2019, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2017, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2014, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1997, metadata !DIExpression()), !dbg !2057
  %407 = add i64 %346, 1, !dbg !2413
  %408 = icmp ugt i64 %342, %407, !dbg !2415
  br i1 %408, label %409, label %.loopexit2, !dbg !2416

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2417
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2417
  br i1 %411, label %423, label %412, !dbg !2417

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2420
  br i1 %413, label %414, label %416, !dbg !2424

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2420
  store i8 39, ptr %415, align 1, !dbg !2420, !tbaa !877
  br label %416, !dbg !2420

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2424
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1997, metadata !DIExpression()), !dbg !2057
  %418 = icmp ult i64 %417, %129, !dbg !2425
  br i1 %418, label %419, label %421, !dbg !2428

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2425
  store i8 39, ptr %420, align 1, !dbg !2425, !tbaa !877
  br label %421, !dbg !2425

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2428
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2057
  br label %423, !dbg !2429

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2430
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1997, metadata !DIExpression()), !dbg !2057
  %426 = icmp ult i64 %424, %129, !dbg !2431
  br i1 %426, label %427, label %429, !dbg !2434

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2431
  store i8 %406, ptr %428, align 1, !dbg !2431, !tbaa !877
  br label %429, !dbg !2431

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2434
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2012, metadata !DIExpression()), !dbg !2144
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2435
  %432 = load i8, ptr %431, align 1, !dbg !2435, !tbaa !877
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2019, metadata !DIExpression()), !dbg !2153
  br label %343, !dbg !2436, !llvm.loop !2437

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2440
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2057
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2061
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2144
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2153
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2019, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2017, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2014, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2012, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1998, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1990, metadata !DIExpression()), !dbg !2057
  br i1 %111, label %455, label %444, !dbg !2441

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
  br i1 %120, label %456, label %476, !dbg !2443

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2444

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
  %467 = lshr i8 %458, 5, !dbg !2445
  %468 = zext nneg i8 %467 to i64, !dbg !2445
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2446
  %470 = load i32, ptr %469, align 4, !dbg !2446, !tbaa !868
  %471 = and i8 %458, 31, !dbg !2447
  %472 = zext nneg i8 %471 to i32, !dbg !2447
  %473 = shl nuw i32 1, %472, !dbg !2448
  %474 = and i32 %470, %473, !dbg !2448
  %475 = icmp eq i32 %474, 0, !dbg !2448
  br i1 %475, label %476, label %487, !dbg !2449

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
  br i1 %153, label %487, label %523, !dbg !2450

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2440
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2057
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2061
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2451
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2153
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2019, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2012, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1998, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1990, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.label(metadata !2046), !dbg !2452
  br i1 %109, label %.loopexit8, label %497, !dbg !2453

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2017, metadata !DIExpression()), !dbg !2153
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2455
  br i1 %498, label %515, label %499, !dbg !2455

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2457
  br i1 %500, label %501, label %503, !dbg !2461

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2457
  store i8 39, ptr %502, align 1, !dbg !2457, !tbaa !877
  br label %503, !dbg !2457

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1997, metadata !DIExpression()), !dbg !2057
  %505 = icmp ult i64 %504, %496, !dbg !2462
  br i1 %505, label %506, label %508, !dbg !2465

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2462
  store i8 36, ptr %507, align 1, !dbg !2462, !tbaa !877
  br label %508, !dbg !2462

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2465
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1997, metadata !DIExpression()), !dbg !2057
  %510 = icmp ult i64 %509, %496, !dbg !2466
  br i1 %510, label %511, label %513, !dbg !2469

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2466
  store i8 39, ptr %512, align 1, !dbg !2466, !tbaa !877
  br label %513, !dbg !2466

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2469
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2057
  br label %515, !dbg !2470

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2153
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1997, metadata !DIExpression()), !dbg !2057
  %518 = icmp ult i64 %516, %496, !dbg !2471
  br i1 %518, label %519, label %521, !dbg !2474

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2471
  store i8 92, ptr %520, align 1, !dbg !2471, !tbaa !877
  br label %521, !dbg !2471

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2474
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2019, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2017, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2012, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1998, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1990, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.label(metadata !2047), !dbg !2475
  br label %547, !dbg !2476

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2057
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2153
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2144
  br label %523, !dbg !2476

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2440
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2057
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2061
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2451
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2479
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2019, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2018, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2017, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2012, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1998, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1990, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.label(metadata !2047), !dbg !2475
  %534 = xor i1 %528, true, !dbg !2476
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2476
  br i1 %535, label %547, label %536, !dbg !2476

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2480
  br i1 %537, label %538, label %540, !dbg !2484

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2480
  store i8 39, ptr %539, align 1, !dbg !2480, !tbaa !877
  br label %540, !dbg !2480

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2484
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1997, metadata !DIExpression()), !dbg !2057
  %542 = icmp ult i64 %541, %533, !dbg !2485
  br i1 %542, label %543, label %545, !dbg !2488

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2485
  store i8 39, ptr %544, align 1, !dbg !2485, !tbaa !877
  br label %545, !dbg !2485

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2488
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2057
  br label %547, !dbg !2489

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2153
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1997, metadata !DIExpression()), !dbg !2057
  %557 = icmp ult i64 %555, %548, !dbg !2490
  br i1 %557, label %558, label %560, !dbg !2493

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2490
  store i8 %549, ptr %559, align 1, !dbg !2490, !tbaa !877
  br label %560, !dbg !2490

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2493
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1997, metadata !DIExpression()), !dbg !2057
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2494
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2057
  br label %563, !dbg !2495

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2440
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2057
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2061
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2451
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2012, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2006, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1998, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1990, metadata !DIExpression()), !dbg !2057
  %572 = add i64 %570, 1, !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2012, metadata !DIExpression()), !dbg !2144
  br label %121, !dbg !2497, !llvm.loop !2498

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2132
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2061
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1988, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2003, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1998, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1997, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1990, metadata !DIExpression()), !dbg !2057
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2500
  %575 = xor i1 %109, true, !dbg !2502
  %576 = or i1 %574, %575, !dbg !2502
  %577 = or i1 %576, %110, !dbg !2502
  br i1 %577, label %578, label %.loopexit13, !dbg !2502

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2503
  %580 = xor i1 %.lcssa38, true, !dbg !2503
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2503
  br i1 %581, label %589, label %582, !dbg !2503

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2505

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2061
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2507
  br label %638, !dbg !2509

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2510
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2512
  br i1 %588, label %27, label %589, !dbg !2512

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2057
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2132
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2513
  %592 = or i1 %591, %590, !dbg !2515
  br i1 %592, label %608, label %593, !dbg !2515

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1999, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1997, metadata !DIExpression()), !dbg !2057
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2516, !tbaa !877
  %595 = icmp eq i8 %594, 0, !dbg !2519
  br i1 %595, label %608, label %.preheader, !dbg !2519

.preheader:                                       ; preds = %593
  br label %596, !dbg !2519

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1999, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1997, metadata !DIExpression()), !dbg !2057
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2520
  br i1 %600, label %601, label %603, !dbg !2523

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2520
  store i8 %597, ptr %602, align 1, !dbg !2520, !tbaa !877
  br label %603, !dbg !2520

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2523
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1997, metadata !DIExpression()), !dbg !2057
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2524
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1999, metadata !DIExpression()), !dbg !2057
  %606 = load i8, ptr %605, align 1, !dbg !2516, !tbaa !877
  %607 = icmp eq i8 %606, 0, !dbg !2519
  br i1 %607, label %.loopexit, label %596, !dbg !2519, !llvm.loop !2525

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2523
  br label %608, !dbg !2527

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2132
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1997, metadata !DIExpression()), !dbg !2057
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2527
  br i1 %610, label %611, label %638, !dbg !2529

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2530
  store i8 0, ptr %612, align 1, !dbg !2531, !tbaa !877
  br label %638, !dbg !2530

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2048), !dbg !2357
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2532
  br i1 %614, label %624, label %630, !dbg !2358

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2153
  br label %615, !dbg !2532

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2532

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2532

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2048), !dbg !2357
  %622 = icmp eq i32 %616, 2, !dbg !2532
  %623 = select i1 %619, i32 4, i32 2, !dbg !2358
  br i1 %622, label %624, label %630, !dbg !2358

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2358

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2159
  br label %630, !dbg !2533

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1991, metadata !DIExpression()), !dbg !2057
  %636 = and i32 %5, -3, !dbg !2533
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2534
  br label %638, !dbg !2535

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2536
}

; Function Attrs: nounwind
declare !dbg !2537 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2540 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2543 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2545 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2549, metadata !DIExpression()), !dbg !2552
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2550, metadata !DIExpression()), !dbg !2552
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2551, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %1, metadata !2558, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata ptr null, metadata !2559, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata ptr %2, metadata !2560, metadata !DIExpression()), !dbg !2566
  %4 = icmp eq ptr %2, null, !dbg !2568
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2568
  call void @llvm.dbg.value(metadata ptr %5, metadata !2561, metadata !DIExpression()), !dbg !2566
  %6 = tail call ptr @__errno_location() #40, !dbg !2569
  %7 = load i32, ptr %6, align 4, !dbg !2569, !tbaa !868
  call void @llvm.dbg.value(metadata i32 %7, metadata !2562, metadata !DIExpression()), !dbg !2566
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2570
  %9 = load i32, ptr %8, align 4, !dbg !2570, !tbaa !1931
  %10 = or i32 %9, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %10, metadata !2563, metadata !DIExpression()), !dbg !2566
  %11 = load i32, ptr %5, align 8, !dbg !2572, !tbaa !1881
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2573
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2574
  %14 = load ptr, ptr %13, align 8, !dbg !2574, !tbaa !1952
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2575
  %16 = load ptr, ptr %15, align 8, !dbg !2575, !tbaa !1955
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2576
  %18 = add i64 %17, 1, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %18, metadata !2564, metadata !DIExpression()), !dbg !2566
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %19, metadata !2565, metadata !DIExpression()), !dbg !2566
  %20 = load i32, ptr %5, align 8, !dbg !2579, !tbaa !1881
  %21 = load ptr, ptr %13, align 8, !dbg !2580, !tbaa !1952
  %22 = load ptr, ptr %15, align 8, !dbg !2581, !tbaa !1955
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2582
  store i32 %7, ptr %6, align 4, !dbg !2583, !tbaa !868
  ret ptr %19, !dbg !2584
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2554 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2585
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2558, metadata !DIExpression()), !dbg !2585
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2559, metadata !DIExpression()), !dbg !2585
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2560, metadata !DIExpression()), !dbg !2585
  %5 = icmp eq ptr %3, null, !dbg !2586
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2586
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2561, metadata !DIExpression()), !dbg !2585
  %7 = tail call ptr @__errno_location() #40, !dbg !2587
  %8 = load i32, ptr %7, align 4, !dbg !2587, !tbaa !868
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2562, metadata !DIExpression()), !dbg !2585
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2588
  %10 = load i32, ptr %9, align 4, !dbg !2588, !tbaa !1931
  %11 = icmp eq ptr %2, null, !dbg !2589
  %12 = zext i1 %11 to i32, !dbg !2589
  %13 = or i32 %10, %12, !dbg !2590
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2563, metadata !DIExpression()), !dbg !2585
  %14 = load i32, ptr %6, align 8, !dbg !2591, !tbaa !1881
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2592
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2593
  %17 = load ptr, ptr %16, align 8, !dbg !2593, !tbaa !1952
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2594
  %19 = load ptr, ptr %18, align 8, !dbg !2594, !tbaa !1955
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2595
  %21 = add i64 %20, 1, !dbg !2596
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2564, metadata !DIExpression()), !dbg !2585
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2597
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2565, metadata !DIExpression()), !dbg !2585
  %23 = load i32, ptr %6, align 8, !dbg !2598, !tbaa !1881
  %24 = load ptr, ptr %16, align 8, !dbg !2599, !tbaa !1952
  %25 = load ptr, ptr %18, align 8, !dbg !2600, !tbaa !1955
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2601
  store i32 %8, ptr %7, align 4, !dbg !2602, !tbaa !868
  br i1 %11, label %28, label %27, !dbg !2603

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2604, !tbaa !2606
  br label %28, !dbg !2607

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2608
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2609 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2614, !tbaa !802
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2611, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2612, metadata !DIExpression()), !dbg !2616
  %2 = load i32, ptr @nslots, align 4, !tbaa !868
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2612, metadata !DIExpression()), !dbg !2616
  %3 = icmp sgt i32 %2, 1, !dbg !2617
  br i1 %3, label %4, label %6, !dbg !2619

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2617
  br label %10, !dbg !2619

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2620

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2620
  %8 = load ptr, ptr %7, align 8, !dbg !2620, !tbaa !2622
  %9 = icmp eq ptr %8, @slot0, !dbg !2624
  br i1 %9, label %17, label %16, !dbg !2625

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2612, metadata !DIExpression()), !dbg !2616
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2626
  %13 = load ptr, ptr %12, align 8, !dbg !2626, !tbaa !2622
  tail call void @free(ptr noundef %13) #37, !dbg !2627
  %14 = add nuw nsw i64 %11, 1, !dbg !2628
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2612, metadata !DIExpression()), !dbg !2616
  %15 = icmp eq i64 %14, %5, !dbg !2617
  br i1 %15, label %.loopexit, label %10, !dbg !2619, !llvm.loop !2629

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2631
  store i64 256, ptr @slotvec0, align 8, !dbg !2633, !tbaa !2634
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2635, !tbaa !2622
  br label %17, !dbg !2636

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2637
  br i1 %18, label %20, label %19, !dbg !2639

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2640
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2642, !tbaa !802
  br label %20, !dbg !2643

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2644, !tbaa !868
  ret void, !dbg !2645
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2646 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2648, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2649, metadata !DIExpression()), !dbg !2650
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2651
  ret ptr %3, !dbg !2652
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2653 {
  %5 = alloca i64, align 8, !DIAssignID !2673
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(), metadata !2673, metadata ptr %5, metadata !DIExpression()), !dbg !2674
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2657, metadata !DIExpression()), !dbg !2675
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2658, metadata !DIExpression()), !dbg !2675
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2659, metadata !DIExpression()), !dbg !2675
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2660, metadata !DIExpression()), !dbg !2675
  %6 = tail call ptr @__errno_location() #40, !dbg !2676
  %7 = load i32, ptr %6, align 4, !dbg !2676, !tbaa !868
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2661, metadata !DIExpression()), !dbg !2675
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2677, !tbaa !802
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2662, metadata !DIExpression()), !dbg !2675
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2663, metadata !DIExpression()), !dbg !2675
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2678
  br i1 %9, label %10, label %11, !dbg !2678

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2680
  unreachable, !dbg !2680

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2681, !tbaa !868
  %13 = icmp sgt i32 %12, %0, !dbg !2682
  br i1 %13, label %32, label %14, !dbg !2683

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2684
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2664, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2674
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2685
  %16 = sext i32 %12 to i64, !dbg !2686
  store i64 %16, ptr %5, align 8, !dbg !2687, !tbaa !2606, !DIAssignID !2688
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2667, metadata !DIExpression(), metadata !2688, metadata ptr %5, metadata !DIExpression()), !dbg !2674
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2689
  %18 = add nuw nsw i32 %0, 1, !dbg !2690
  %19 = sub i32 %18, %12, !dbg !2691
  %20 = sext i32 %19 to i64, !dbg !2692
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2693
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2662, metadata !DIExpression()), !dbg !2675
  store ptr %21, ptr @slotvec, align 8, !dbg !2694, !tbaa !802
  br i1 %15, label %22, label %23, !dbg !2695

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2696, !tbaa.struct !2698
  br label %23, !dbg !2699

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2700, !tbaa !868
  %25 = sext i32 %24 to i64, !dbg !2701
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2701
  %27 = load i64, ptr %5, align 8, !dbg !2702, !tbaa !2606
  %28 = sub nsw i64 %27, %25, !dbg !2703
  %29 = shl i64 %28, 4, !dbg !2704
  call void @llvm.dbg.value(metadata ptr %26, metadata !2090, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2093, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %29, metadata !2094, metadata !DIExpression()), !dbg !2705
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2707
  %30 = load i64, ptr %5, align 8, !dbg !2708, !tbaa !2606
  %31 = trunc i64 %30 to i32, !dbg !2708
  store i32 %31, ptr @nslots, align 4, !dbg !2709, !tbaa !868
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2710
  br label %32, !dbg !2711

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2675
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2662, metadata !DIExpression()), !dbg !2675
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2712
  %36 = load i64, ptr %35, align 8, !dbg !2713, !tbaa !2634
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2668, metadata !DIExpression()), !dbg !2714
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2715
  %38 = load ptr, ptr %37, align 8, !dbg !2715, !tbaa !2622
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2670, metadata !DIExpression()), !dbg !2714
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2716
  %40 = load i32, ptr %39, align 4, !dbg !2716, !tbaa !1931
  %41 = or i32 %40, 1, !dbg !2717
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2671, metadata !DIExpression()), !dbg !2714
  %42 = load i32, ptr %3, align 8, !dbg !2718, !tbaa !1881
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2719
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2720
  %45 = load ptr, ptr %44, align 8, !dbg !2720, !tbaa !1952
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2721
  %47 = load ptr, ptr %46, align 8, !dbg !2721, !tbaa !1955
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2672, metadata !DIExpression()), !dbg !2714
  %49 = icmp ugt i64 %36, %48, !dbg !2723
  br i1 %49, label %60, label %50, !dbg !2725

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2668, metadata !DIExpression()), !dbg !2714
  store i64 %51, ptr %35, align 8, !dbg !2728, !tbaa !2634
  %52 = icmp eq ptr %38, @slot0, !dbg !2729
  br i1 %52, label %54, label %53, !dbg !2731

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2732
  br label %54, !dbg !2732

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2733
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2670, metadata !DIExpression()), !dbg !2714
  store ptr %55, ptr %37, align 8, !dbg !2734, !tbaa !2622
  %56 = load i32, ptr %3, align 8, !dbg !2735, !tbaa !1881
  %57 = load ptr, ptr %44, align 8, !dbg !2736, !tbaa !1952
  %58 = load ptr, ptr %46, align 8, !dbg !2737, !tbaa !1955
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2738
  br label %60, !dbg !2739

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2714
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2670, metadata !DIExpression()), !dbg !2714
  store i32 %7, ptr %6, align 4, !dbg !2740, !tbaa !868
  ret ptr %61, !dbg !2741
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2742 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2749
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2747, metadata !DIExpression()), !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2748, metadata !DIExpression()), !dbg !2749
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2750
  ret ptr %4, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2752 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2754, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 0, metadata !2648, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %0, metadata !2649, metadata !DIExpression()), !dbg !2756
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2758
  ret ptr %2, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2760 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2764, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 0, metadata !2746, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %0, metadata !2747, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %1, metadata !2748, metadata !DIExpression()), !dbg !2767
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2769
  ret ptr %3, !dbg !2770
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2771 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2779
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2778, metadata !DIExpression(), metadata !2779, metadata ptr %4, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2775, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2776, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2777, metadata !DIExpression()), !dbg !2780
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2781
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2782), !dbg !2785
  call void @llvm.dbg.value(metadata i32 %1, metadata !2786, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2791, metadata !DIExpression()), !dbg !2794
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2794, !alias.scope !2782, !DIAssignID !2795
  call void @llvm.dbg.assign(metadata i8 0, metadata !2778, metadata !DIExpression(), metadata !2795, metadata ptr %4, metadata !DIExpression()), !dbg !2780
  %5 = icmp eq i32 %1, 10, !dbg !2796
  br i1 %5, label %6, label %7, !dbg !2798

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2799, !noalias !2782
  unreachable, !dbg !2799

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2800, !tbaa !1881, !alias.scope !2782, !DIAssignID !2801
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2801, metadata ptr %4, metadata !DIExpression()), !dbg !2780
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2802
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2803
  ret ptr %8, !dbg !2804
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2805 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2814
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2813, metadata !DIExpression(), metadata !2814, metadata ptr %5, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2809, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2810, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2811, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2812, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2816
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2817), !dbg !2820
  call void @llvm.dbg.value(metadata i32 %1, metadata !2786, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2791, metadata !DIExpression()), !dbg !2823
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2823, !alias.scope !2817, !DIAssignID !2824
  call void @llvm.dbg.assign(metadata i8 0, metadata !2813, metadata !DIExpression(), metadata !2824, metadata ptr %5, metadata !DIExpression()), !dbg !2815
  %6 = icmp eq i32 %1, 10, !dbg !2825
  br i1 %6, label %7, label %8, !dbg !2826

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2827, !noalias !2817
  unreachable, !dbg !2827

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2828, !tbaa !1881, !alias.scope !2817, !DIAssignID !2829
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2829, metadata ptr %5, metadata !DIExpression()), !dbg !2815
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2830
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2831
  ret ptr %9, !dbg !2832
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2833 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2839
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression()), !dbg !2840
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2778, metadata !DIExpression(), metadata !2839, metadata ptr %3, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 0, metadata !2775, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 %0, metadata !2776, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %1, metadata !2777, metadata !DIExpression()), !dbg !2841
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2843
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844), !dbg !2847
  call void @llvm.dbg.value(metadata i32 %0, metadata !2786, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2791, metadata !DIExpression()), !dbg !2850
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2850, !alias.scope !2844, !DIAssignID !2851
  call void @llvm.dbg.assign(metadata i8 0, metadata !2778, metadata !DIExpression(), metadata !2851, metadata ptr %3, metadata !DIExpression()), !dbg !2841
  %4 = icmp eq i32 %0, 10, !dbg !2852
  br i1 %4, label %5, label %6, !dbg !2853

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2854, !noalias !2844
  unreachable, !dbg !2854

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2855, !tbaa !1881, !alias.scope !2844, !DIAssignID !2856
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2856, metadata ptr %3, metadata !DIExpression()), !dbg !2841
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2857
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2858
  ret ptr %7, !dbg !2859
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2860 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2867
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2864, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2865, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2866, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2813, metadata !DIExpression(), metadata !2867, metadata ptr %4, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 0, metadata !2809, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 %0, metadata !2810, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %1, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %2, metadata !2812, metadata !DIExpression()), !dbg !2869
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872), !dbg !2875
  call void @llvm.dbg.value(metadata i32 %0, metadata !2786, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2791, metadata !DIExpression()), !dbg !2878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2878, !alias.scope !2872, !DIAssignID !2879
  call void @llvm.dbg.assign(metadata i8 0, metadata !2813, metadata !DIExpression(), metadata !2879, metadata ptr %4, metadata !DIExpression()), !dbg !2869
  %5 = icmp eq i32 %0, 10, !dbg !2880
  br i1 %5, label %6, label %7, !dbg !2881

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2882, !noalias !2872
  unreachable, !dbg !2882

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2883, !tbaa !1881, !alias.scope !2872, !DIAssignID !2884
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2884, metadata ptr %4, metadata !DIExpression()), !dbg !2869
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2885
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2886
  ret ptr %8, !dbg !2887
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2888 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2896
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2895, metadata !DIExpression(), metadata !2896, metadata ptr %4, metadata !DIExpression()), !dbg !2897
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2892, metadata !DIExpression()), !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2893, metadata !DIExpression()), !dbg !2897
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2894, metadata !DIExpression()), !dbg !2897
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2899, !tbaa.struct !2900, !DIAssignID !2901
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2895, metadata !DIExpression(), metadata !2901, metadata ptr %4, metadata !DIExpression()), !dbg !2897
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1898, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1899, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1900, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1901, metadata !DIExpression()), !dbg !2902
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2904
  %6 = lshr i8 %2, 5, !dbg !2905
  %7 = zext nneg i8 %6 to i64, !dbg !2905
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1902, metadata !DIExpression()), !dbg !2902
  %9 = and i8 %2, 31, !dbg !2907
  %10 = zext nneg i8 %9 to i32, !dbg !2907
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1904, metadata !DIExpression()), !dbg !2902
  %11 = load i32, ptr %8, align 4, !dbg !2908, !tbaa !868
  %12 = lshr i32 %11, %10, !dbg !2909
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1905, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2902
  %13 = and i32 %12, 1, !dbg !2910
  %14 = xor i32 %13, 1, !dbg !2910
  %15 = shl nuw i32 %14, %10, !dbg !2911
  %16 = xor i32 %15, %11, !dbg !2912
  store i32 %16, ptr %8, align 4, !dbg !2912, !tbaa !868
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2913
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2914
  ret ptr %17, !dbg !2915
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2916 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2922
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2920, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2921, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2895, metadata !DIExpression(), metadata !2922, metadata ptr %3, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata ptr %0, metadata !2892, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64 -1, metadata !2893, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8 %1, metadata !2894, metadata !DIExpression()), !dbg !2924
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2927, !tbaa.struct !2900, !DIAssignID !2928
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2895, metadata !DIExpression(), metadata !2928, metadata ptr %3, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata ptr %3, metadata !1898, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 %1, metadata !1899, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i32 1, metadata !1900, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 %1, metadata !1901, metadata !DIExpression()), !dbg !2929
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2931
  %5 = lshr i8 %1, 5, !dbg !2932
  %6 = zext nneg i8 %5 to i64, !dbg !2932
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2933
  call void @llvm.dbg.value(metadata ptr %7, metadata !1902, metadata !DIExpression()), !dbg !2929
  %8 = and i8 %1, 31, !dbg !2934
  %9 = zext nneg i8 %8 to i32, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %9, metadata !1904, metadata !DIExpression()), !dbg !2929
  %10 = load i32, ptr %7, align 4, !dbg !2935, !tbaa !868
  %11 = lshr i32 %10, %9, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %11, metadata !1905, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2929
  %12 = and i32 %11, 1, !dbg !2937
  %13 = xor i32 %12, 1, !dbg !2937
  %14 = shl nuw i32 %13, %9, !dbg !2938
  %15 = xor i32 %14, %10, !dbg !2939
  store i32 %15, ptr %7, align 4, !dbg !2939, !tbaa !868
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2940
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2941
  ret ptr %16, !dbg !2942
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2943 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2946
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2945, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %0, metadata !2920, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 58, metadata !2921, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2895, metadata !DIExpression(), metadata !2946, metadata ptr %2, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata ptr %0, metadata !2892, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 -1, metadata !2893, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 58, metadata !2894, metadata !DIExpression()), !dbg !2950
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2953, !tbaa.struct !2900, !DIAssignID !2954
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2895, metadata !DIExpression(), metadata !2954, metadata ptr %2, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata ptr %2, metadata !1898, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 58, metadata !1899, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 1, metadata !1900, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 58, metadata !1901, metadata !DIExpression()), !dbg !2955
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2957
  call void @llvm.dbg.value(metadata ptr %3, metadata !1902, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 26, metadata !1904, metadata !DIExpression()), !dbg !2955
  %4 = load i32, ptr %3, align 4, !dbg !2958, !tbaa !868
  call void @llvm.dbg.value(metadata i32 %4, metadata !1905, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2955
  %5 = or i32 %4, 67108864, !dbg !2959
  store i32 %5, ptr %3, align 4, !dbg !2959, !tbaa !868
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2960
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2961
  ret ptr %6, !dbg !2962
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2963 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2967
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2965, metadata !DIExpression()), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2895, metadata !DIExpression(), metadata !2967, metadata ptr %3, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata ptr %0, metadata !2892, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %1, metadata !2893, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8 58, metadata !2894, metadata !DIExpression()), !dbg !2969
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2972, !tbaa.struct !2900, !DIAssignID !2973
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2895, metadata !DIExpression(), metadata !2973, metadata ptr %3, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata ptr %3, metadata !1898, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 58, metadata !1899, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i32 1, metadata !1900, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 58, metadata !1901, metadata !DIExpression()), !dbg !2974
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2976
  call void @llvm.dbg.value(metadata ptr %4, metadata !1902, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i32 26, metadata !1904, metadata !DIExpression()), !dbg !2974
  %5 = load i32, ptr %4, align 4, !dbg !2977, !tbaa !868
  call void @llvm.dbg.value(metadata i32 %5, metadata !1905, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2974
  %6 = or i32 %5, 67108864, !dbg !2978
  store i32 %6, ptr %4, align 4, !dbg !2978, !tbaa !868
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2979
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2980
  ret ptr %7, !dbg !2981
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2982 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2988
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2987, metadata !DIExpression(), metadata !2988, metadata ptr %4, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2990
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2984, metadata !DIExpression()), !dbg !2989
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2985, metadata !DIExpression()), !dbg !2989
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2986, metadata !DIExpression()), !dbg !2989
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2992
  call void @llvm.dbg.value(metadata i32 %1, metadata !2786, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2993
  %5 = icmp eq i32 %1, 10, !dbg !2994
  br i1 %5, label %6, label %7, !dbg !2995

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2996, !noalias !2997
  unreachable, !dbg !2996

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2993
  store i32 %1, ptr %4, align 8, !dbg !3000, !tbaa.struct !2900, !DIAssignID !3001
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3000
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2987, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3001, metadata ptr %4, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2987, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3002, metadata ptr %8, metadata !DIExpression()), !dbg !2989
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1898, metadata !DIExpression()), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1899, metadata !DIExpression()), !dbg !3003
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1900, metadata !DIExpression()), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1901, metadata !DIExpression()), !dbg !3003
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3005
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1902, metadata !DIExpression()), !dbg !3003
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1904, metadata !DIExpression()), !dbg !3003
  %10 = load i32, ptr %9, align 4, !dbg !3006, !tbaa !868
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1905, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3003
  %11 = or i32 %10, 67108864, !dbg !3007
  store i32 %11, ptr %9, align 4, !dbg !3007, !tbaa !868, !DIAssignID !3008
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2987, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3008, metadata ptr %9, metadata !DIExpression()), !dbg !2989
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3009
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3010
  ret ptr %12, !dbg !3011
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3012 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3020
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3016, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3017, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3018, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(), metadata !3020, metadata ptr %5, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 %0, metadata !3027, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %1, metadata !3028, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %2, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %3, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 -1, metadata !3031, metadata !DIExpression()), !dbg !3032
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3035, !tbaa.struct !2900, !DIAssignID !3036
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(), metadata !3036, metadata ptr %5, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3037, metadata ptr undef, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %5, metadata !1938, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %1, metadata !1939, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %2, metadata !1940, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %5, metadata !1938, metadata !DIExpression()), !dbg !3038
  store i32 10, ptr %5, align 8, !dbg !3040, !tbaa !1881, !DIAssignID !3041
  call void @llvm.dbg.assign(metadata i32 10, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3041, metadata ptr %5, metadata !DIExpression()), !dbg !3032
  %6 = icmp ne ptr %1, null, !dbg !3042
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3043
  br i1 %8, label %10, label %9, !dbg !3043

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3044
  unreachable, !dbg !3044

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3045
  store ptr %1, ptr %11, align 8, !dbg !3046, !tbaa !1952, !DIAssignID !3047
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3047, metadata ptr %11, metadata !DIExpression()), !dbg !3032
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3048
  store ptr %2, ptr %12, align 8, !dbg !3049, !tbaa !1955, !DIAssignID !3050
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3050, metadata ptr %12, metadata !DIExpression()), !dbg !3032
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3051
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3052
  ret ptr %13, !dbg !3053
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3023 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3054
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(), metadata !3054, metadata ptr %6, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3027, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3028, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3029, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3030, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3031, metadata !DIExpression()), !dbg !3055
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3057, !tbaa.struct !2900, !DIAssignID !3058
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(), metadata !3058, metadata ptr %6, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3059, metadata ptr undef, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %6, metadata !1938, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata ptr %1, metadata !1939, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata ptr %2, metadata !1940, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata ptr %6, metadata !1938, metadata !DIExpression()), !dbg !3060
  store i32 10, ptr %6, align 8, !dbg !3062, !tbaa !1881, !DIAssignID !3063
  call void @llvm.dbg.assign(metadata i32 10, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3063, metadata ptr %6, metadata !DIExpression()), !dbg !3055
  %7 = icmp ne ptr %1, null, !dbg !3064
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3065
  br i1 %9, label %11, label %10, !dbg !3065

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3066
  unreachable, !dbg !3066

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3067
  store ptr %1, ptr %12, align 8, !dbg !3068, !tbaa !1952, !DIAssignID !3069
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3069, metadata ptr %12, metadata !DIExpression()), !dbg !3055
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3070
  store ptr %2, ptr %13, align 8, !dbg !3071, !tbaa !1955, !DIAssignID !3072
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3072, metadata ptr %13, metadata !DIExpression()), !dbg !3055
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3073
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3074
  ret ptr %14, !dbg !3075
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3076 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3083
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3080, metadata !DIExpression()), !dbg !3084
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3081, metadata !DIExpression()), !dbg !3084
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3082, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %0, metadata !3017, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %1, metadata !3018, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %2, metadata !3019, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(), metadata !3083, metadata ptr %4, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 0, metadata !3027, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %0, metadata !3028, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %1, metadata !3029, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %2, metadata !3030, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 -1, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3090, !tbaa.struct !2900, !DIAssignID !3091
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(), metadata !3091, metadata ptr %4, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3092, metadata ptr undef, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %4, metadata !1938, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %0, metadata !1939, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %1, metadata !1940, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %4, metadata !1938, metadata !DIExpression()), !dbg !3093
  store i32 10, ptr %4, align 8, !dbg !3095, !tbaa !1881, !DIAssignID !3096
  call void @llvm.dbg.assign(metadata i32 10, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3096, metadata ptr %4, metadata !DIExpression()), !dbg !3087
  %5 = icmp ne ptr %0, null, !dbg !3097
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3098
  br i1 %7, label %9, label %8, !dbg !3098

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3099
  unreachable, !dbg !3099

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3100
  store ptr %0, ptr %10, align 8, !dbg !3101, !tbaa !1952, !DIAssignID !3102
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3102, metadata ptr %10, metadata !DIExpression()), !dbg !3087
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3103
  store ptr %1, ptr %11, align 8, !dbg !3104, !tbaa !1955, !DIAssignID !3105
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3105, metadata ptr %11, metadata !DIExpression()), !dbg !3087
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3106
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3107
  ret ptr %12, !dbg !3108
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3109 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3117
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3113, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3114, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3115, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(), metadata !3117, metadata ptr %5, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 0, metadata !3027, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %0, metadata !3028, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %1, metadata !3029, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %2, metadata !3030, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %3, metadata !3031, metadata !DIExpression()), !dbg !3119
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3122, !tbaa.struct !2900, !DIAssignID !3123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(), metadata !3123, metadata ptr %5, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3124, metadata ptr undef, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %5, metadata !1938, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %0, metadata !1939, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %1, metadata !1940, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %5, metadata !1938, metadata !DIExpression()), !dbg !3125
  store i32 10, ptr %5, align 8, !dbg !3127, !tbaa !1881, !DIAssignID !3128
  call void @llvm.dbg.assign(metadata i32 10, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3128, metadata ptr %5, metadata !DIExpression()), !dbg !3119
  %6 = icmp ne ptr %0, null, !dbg !3129
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3130
  br i1 %8, label %10, label %9, !dbg !3130

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3131
  unreachable, !dbg !3131

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3132
  store ptr %0, ptr %11, align 8, !dbg !3133, !tbaa !1952, !DIAssignID !3134
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3134, metadata ptr %11, metadata !DIExpression()), !dbg !3119
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3135
  store ptr %1, ptr %12, align 8, !dbg !3136, !tbaa !1955, !DIAssignID !3137
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3022, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3137, metadata ptr %12, metadata !DIExpression()), !dbg !3119
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3138
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3139
  ret ptr %13, !dbg !3140
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3141 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3145, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3146, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3147, metadata !DIExpression()), !dbg !3148
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3149
  ret ptr %4, !dbg !3150
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3151 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3155, metadata !DIExpression()), !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32 0, metadata !3145, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %1, metadata !3147, metadata !DIExpression()), !dbg !3158
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3160
  ret ptr %3, !dbg !3161
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3162 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3166, metadata !DIExpression()), !dbg !3168
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i32 %0, metadata !3145, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata ptr %1, metadata !3146, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 -1, metadata !3147, metadata !DIExpression()), !dbg !3169
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3171
  ret ptr %3, !dbg !3172
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3173 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3177, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i32 0, metadata !3166, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata ptr %0, metadata !3167, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32 0, metadata !3145, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 -1, metadata !3147, metadata !DIExpression()), !dbg !3181
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3183
  ret ptr %2, !dbg !3184
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3185 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3224, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3225, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3226, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3227, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3228, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3229, metadata !DIExpression()), !dbg !3230
  %7 = icmp eq ptr %1, null, !dbg !3231
  br i1 %7, label %10, label %8, !dbg !3233

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3234
  br label %12, !dbg !3234

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.81, ptr noundef %2, ptr noundef %3) #37, !dbg !3235
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.3.83, i32 noundef 5) #37, !dbg !3236
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3236
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %0), !dbg !3237
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.5.85, i32 noundef 5) #37, !dbg !3238
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.86) #37, !dbg !3238
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %0), !dbg !3239
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
  ], !dbg !3240

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.7.87, i32 noundef 5) #37, !dbg !3241
  %21 = load ptr, ptr %4, align 8, !dbg !3241, !tbaa !802
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3241
  br label %147, !dbg !3243

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.8.88, i32 noundef 5) #37, !dbg !3244
  %25 = load ptr, ptr %4, align 8, !dbg !3244, !tbaa !802
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3244
  %27 = load ptr, ptr %26, align 8, !dbg !3244, !tbaa !802
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3244
  br label %147, !dbg !3245

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.9.89, i32 noundef 5) #37, !dbg !3246
  %31 = load ptr, ptr %4, align 8, !dbg !3246, !tbaa !802
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3246
  %33 = load ptr, ptr %32, align 8, !dbg !3246, !tbaa !802
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3246
  %35 = load ptr, ptr %34, align 8, !dbg !3246, !tbaa !802
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3246
  br label %147, !dbg !3247

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.10.90, i32 noundef 5) #37, !dbg !3248
  %39 = load ptr, ptr %4, align 8, !dbg !3248, !tbaa !802
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3248
  %41 = load ptr, ptr %40, align 8, !dbg !3248, !tbaa !802
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3248
  %43 = load ptr, ptr %42, align 8, !dbg !3248, !tbaa !802
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3248
  %45 = load ptr, ptr %44, align 8, !dbg !3248, !tbaa !802
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3248
  br label %147, !dbg !3249

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.11.91, i32 noundef 5) #37, !dbg !3250
  %49 = load ptr, ptr %4, align 8, !dbg !3250, !tbaa !802
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3250
  %51 = load ptr, ptr %50, align 8, !dbg !3250, !tbaa !802
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3250
  %53 = load ptr, ptr %52, align 8, !dbg !3250, !tbaa !802
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3250
  %55 = load ptr, ptr %54, align 8, !dbg !3250, !tbaa !802
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3250
  %57 = load ptr, ptr %56, align 8, !dbg !3250, !tbaa !802
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3250
  br label %147, !dbg !3251

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.12.92, i32 noundef 5) #37, !dbg !3252
  %61 = load ptr, ptr %4, align 8, !dbg !3252, !tbaa !802
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3252
  %63 = load ptr, ptr %62, align 8, !dbg !3252, !tbaa !802
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3252
  %65 = load ptr, ptr %64, align 8, !dbg !3252, !tbaa !802
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3252
  %67 = load ptr, ptr %66, align 8, !dbg !3252, !tbaa !802
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3252
  %69 = load ptr, ptr %68, align 8, !dbg !3252, !tbaa !802
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3252
  %71 = load ptr, ptr %70, align 8, !dbg !3252, !tbaa !802
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3252
  br label %147, !dbg !3253

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.13.93, i32 noundef 5) #37, !dbg !3254
  %75 = load ptr, ptr %4, align 8, !dbg !3254, !tbaa !802
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3254
  %77 = load ptr, ptr %76, align 8, !dbg !3254, !tbaa !802
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3254
  %79 = load ptr, ptr %78, align 8, !dbg !3254, !tbaa !802
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3254
  %81 = load ptr, ptr %80, align 8, !dbg !3254, !tbaa !802
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3254
  %83 = load ptr, ptr %82, align 8, !dbg !3254, !tbaa !802
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3254
  %85 = load ptr, ptr %84, align 8, !dbg !3254, !tbaa !802
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3254
  %87 = load ptr, ptr %86, align 8, !dbg !3254, !tbaa !802
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3254
  br label %147, !dbg !3255

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.14.94, i32 noundef 5) #37, !dbg !3256
  %91 = load ptr, ptr %4, align 8, !dbg !3256, !tbaa !802
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3256
  %93 = load ptr, ptr %92, align 8, !dbg !3256, !tbaa !802
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3256
  %95 = load ptr, ptr %94, align 8, !dbg !3256, !tbaa !802
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3256
  %97 = load ptr, ptr %96, align 8, !dbg !3256, !tbaa !802
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3256
  %99 = load ptr, ptr %98, align 8, !dbg !3256, !tbaa !802
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3256
  %101 = load ptr, ptr %100, align 8, !dbg !3256, !tbaa !802
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3256
  %103 = load ptr, ptr %102, align 8, !dbg !3256, !tbaa !802
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3256
  %105 = load ptr, ptr %104, align 8, !dbg !3256, !tbaa !802
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3256
  br label %147, !dbg !3257

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.15.95, i32 noundef 5) #37, !dbg !3258
  %109 = load ptr, ptr %4, align 8, !dbg !3258, !tbaa !802
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3258
  %111 = load ptr, ptr %110, align 8, !dbg !3258, !tbaa !802
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3258
  %113 = load ptr, ptr %112, align 8, !dbg !3258, !tbaa !802
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3258
  %115 = load ptr, ptr %114, align 8, !dbg !3258, !tbaa !802
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3258
  %117 = load ptr, ptr %116, align 8, !dbg !3258, !tbaa !802
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3258
  %119 = load ptr, ptr %118, align 8, !dbg !3258, !tbaa !802
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3258
  %121 = load ptr, ptr %120, align 8, !dbg !3258, !tbaa !802
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3258
  %123 = load ptr, ptr %122, align 8, !dbg !3258, !tbaa !802
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3258
  %125 = load ptr, ptr %124, align 8, !dbg !3258, !tbaa !802
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3258
  br label %147, !dbg !3259

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.16.96, i32 noundef 5) #37, !dbg !3260
  %129 = load ptr, ptr %4, align 8, !dbg !3260, !tbaa !802
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3260
  %131 = load ptr, ptr %130, align 8, !dbg !3260, !tbaa !802
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3260
  %133 = load ptr, ptr %132, align 8, !dbg !3260, !tbaa !802
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3260
  %135 = load ptr, ptr %134, align 8, !dbg !3260, !tbaa !802
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3260
  %137 = load ptr, ptr %136, align 8, !dbg !3260, !tbaa !802
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3260
  %139 = load ptr, ptr %138, align 8, !dbg !3260, !tbaa !802
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3260
  %141 = load ptr, ptr %140, align 8, !dbg !3260, !tbaa !802
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3260
  %143 = load ptr, ptr %142, align 8, !dbg !3260, !tbaa !802
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3260
  %145 = load ptr, ptr %144, align 8, !dbg !3260, !tbaa !802
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3260
  br label %147, !dbg !3261

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3262
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3263 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3267, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3268, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3269, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3270, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3271, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3272, metadata !DIExpression()), !dbg !3273
  br label %6, !dbg !3274

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3272, metadata !DIExpression()), !dbg !3273
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3277
  %9 = load ptr, ptr %8, align 8, !dbg !3277, !tbaa !802
  %10 = icmp eq ptr %9, null, !dbg !3279
  %11 = add i64 %7, 1, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3272, metadata !DIExpression()), !dbg !3273
  br i1 %10, label %12, label %6, !dbg !3279, !llvm.loop !3281

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3276
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3283
  ret void, !dbg !3284
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3285 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3307
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3305, metadata !DIExpression(), metadata !3307, metadata ptr %6, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3299, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3300, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3301, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3302, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3303, metadata !DIExpression(DW_OP_deref)), !dbg !3308
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3304, metadata !DIExpression()), !dbg !3308
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3304, metadata !DIExpression()), !dbg !3308
  %10 = icmp sgt i32 %9, -1, !dbg !3310
  br i1 %10, label %18, label %11, !dbg !3310

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3310
  store i32 %12, ptr %7, align 8, !dbg !3310
  %13 = icmp ult i32 %9, -7, !dbg !3310
  br i1 %13, label %14, label %18, !dbg !3310

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3310
  %16 = sext i32 %9 to i64, !dbg !3310
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3310
  br label %22, !dbg !3310

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3310
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3310
  store ptr %21, ptr %4, align 8, !dbg !3310
  br label %22, !dbg !3310

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3310
  %25 = load ptr, ptr %24, align 8, !dbg !3310
  store ptr %25, ptr %6, align 8, !dbg !3313, !tbaa !802
  %26 = icmp eq ptr %25, null, !dbg !3314
  br i1 %26, label %197, label %27, !dbg !3315

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3304, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3304, metadata !DIExpression()), !dbg !3308
  %28 = icmp sgt i32 %23, -1, !dbg !3310
  br i1 %28, label %36, label %29, !dbg !3310

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3310
  store i32 %30, ptr %7, align 8, !dbg !3310
  %31 = icmp ult i32 %23, -7, !dbg !3310
  br i1 %31, label %32, label %36, !dbg !3310

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3310
  %34 = sext i32 %23 to i64, !dbg !3310
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3310
  br label %40, !dbg !3310

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3310
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3310
  store ptr %39, ptr %4, align 8, !dbg !3310
  br label %40, !dbg !3310

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3310
  %43 = load ptr, ptr %42, align 8, !dbg !3310
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3316
  store ptr %43, ptr %44, align 8, !dbg !3313, !tbaa !802
  %45 = icmp eq ptr %43, null, !dbg !3314
  br i1 %45, label %197, label %46, !dbg !3315

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3304, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3304, metadata !DIExpression()), !dbg !3308
  %47 = icmp sgt i32 %41, -1, !dbg !3310
  br i1 %47, label %55, label %48, !dbg !3310

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3310
  store i32 %49, ptr %7, align 8, !dbg !3310
  %50 = icmp ult i32 %41, -7, !dbg !3310
  br i1 %50, label %51, label %55, !dbg !3310

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3310
  %53 = sext i32 %41 to i64, !dbg !3310
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3310
  br label %59, !dbg !3310

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3310
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3310
  store ptr %58, ptr %4, align 8, !dbg !3310
  br label %59, !dbg !3310

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3310
  %62 = load ptr, ptr %61, align 8, !dbg !3310
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3316
  store ptr %62, ptr %63, align 8, !dbg !3313, !tbaa !802
  %64 = icmp eq ptr %62, null, !dbg !3314
  br i1 %64, label %197, label %65, !dbg !3315

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3304, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3304, metadata !DIExpression()), !dbg !3308
  %66 = icmp sgt i32 %60, -1, !dbg !3310
  br i1 %66, label %74, label %67, !dbg !3310

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3310
  store i32 %68, ptr %7, align 8, !dbg !3310
  %69 = icmp ult i32 %60, -7, !dbg !3310
  br i1 %69, label %70, label %74, !dbg !3310

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3310
  %72 = sext i32 %60 to i64, !dbg !3310
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3310
  br label %78, !dbg !3310

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3310
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3310
  store ptr %77, ptr %4, align 8, !dbg !3310
  br label %78, !dbg !3310

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3310
  %81 = load ptr, ptr %80, align 8, !dbg !3310
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3316
  store ptr %81, ptr %82, align 8, !dbg !3313, !tbaa !802
  %83 = icmp eq ptr %81, null, !dbg !3314
  br i1 %83, label %197, label %84, !dbg !3315

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3304, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3304, metadata !DIExpression()), !dbg !3308
  %85 = icmp sgt i32 %79, -1, !dbg !3310
  br i1 %85, label %93, label %86, !dbg !3310

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3310
  store i32 %87, ptr %7, align 8, !dbg !3310
  %88 = icmp ult i32 %79, -7, !dbg !3310
  br i1 %88, label %89, label %93, !dbg !3310

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3310
  %91 = sext i32 %79 to i64, !dbg !3310
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3310
  br label %97, !dbg !3310

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3310
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3310
  store ptr %96, ptr %4, align 8, !dbg !3310
  br label %97, !dbg !3310

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3310
  %100 = load ptr, ptr %99, align 8, !dbg !3310
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3316
  store ptr %100, ptr %101, align 8, !dbg !3313, !tbaa !802
  %102 = icmp eq ptr %100, null, !dbg !3314
  br i1 %102, label %197, label %103, !dbg !3315

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3304, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3304, metadata !DIExpression()), !dbg !3308
  %104 = icmp sgt i32 %98, -1, !dbg !3310
  br i1 %104, label %112, label %105, !dbg !3310

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3310
  store i32 %106, ptr %7, align 8, !dbg !3310
  %107 = icmp ult i32 %98, -7, !dbg !3310
  br i1 %107, label %108, label %112, !dbg !3310

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3310
  %110 = sext i32 %98 to i64, !dbg !3310
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3310
  br label %116, !dbg !3310

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3310
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3310
  store ptr %115, ptr %4, align 8, !dbg !3310
  br label %116, !dbg !3310

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3310
  %119 = load ptr, ptr %118, align 8, !dbg !3310
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3316
  store ptr %119, ptr %120, align 8, !dbg !3313, !tbaa !802
  %121 = icmp eq ptr %119, null, !dbg !3314
  br i1 %121, label %197, label %122, !dbg !3315

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3304, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3304, metadata !DIExpression()), !dbg !3308
  %123 = icmp sgt i32 %117, -1, !dbg !3310
  br i1 %123, label %131, label %124, !dbg !3310

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3310
  store i32 %125, ptr %7, align 8, !dbg !3310
  %126 = icmp ult i32 %117, -7, !dbg !3310
  br i1 %126, label %127, label %131, !dbg !3310

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3310
  %129 = sext i32 %117 to i64, !dbg !3310
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3310
  br label %135, !dbg !3310

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3310
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3310
  store ptr %134, ptr %4, align 8, !dbg !3310
  br label %135, !dbg !3310

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3310
  %138 = load ptr, ptr %137, align 8, !dbg !3310
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3316
  store ptr %138, ptr %139, align 8, !dbg !3313, !tbaa !802
  %140 = icmp eq ptr %138, null, !dbg !3314
  br i1 %140, label %197, label %141, !dbg !3315

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3304, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3304, metadata !DIExpression()), !dbg !3308
  %142 = icmp sgt i32 %136, -1, !dbg !3310
  br i1 %142, label %150, label %143, !dbg !3310

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3310
  store i32 %144, ptr %7, align 8, !dbg !3310
  %145 = icmp ult i32 %136, -7, !dbg !3310
  br i1 %145, label %146, label %150, !dbg !3310

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3310
  %148 = sext i32 %136 to i64, !dbg !3310
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3310
  br label %154, !dbg !3310

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3310
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3310
  store ptr %153, ptr %4, align 8, !dbg !3310
  br label %154, !dbg !3310

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3310
  %157 = load ptr, ptr %156, align 8, !dbg !3310
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3316
  store ptr %157, ptr %158, align 8, !dbg !3313, !tbaa !802
  %159 = icmp eq ptr %157, null, !dbg !3314
  br i1 %159, label %197, label %160, !dbg !3315

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3304, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3304, metadata !DIExpression()), !dbg !3308
  %161 = icmp sgt i32 %155, -1, !dbg !3310
  br i1 %161, label %169, label %162, !dbg !3310

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3310
  store i32 %163, ptr %7, align 8, !dbg !3310
  %164 = icmp ult i32 %155, -7, !dbg !3310
  br i1 %164, label %165, label %169, !dbg !3310

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3310
  %167 = sext i32 %155 to i64, !dbg !3310
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3310
  br label %173, !dbg !3310

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3310
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3310
  store ptr %172, ptr %4, align 8, !dbg !3310
  br label %173, !dbg !3310

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3310
  %176 = load ptr, ptr %175, align 8, !dbg !3310
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3316
  store ptr %176, ptr %177, align 8, !dbg !3313, !tbaa !802
  %178 = icmp eq ptr %176, null, !dbg !3314
  br i1 %178, label %197, label %179, !dbg !3315

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3304, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3304, metadata !DIExpression()), !dbg !3308
  %180 = icmp sgt i32 %174, -1, !dbg !3310
  br i1 %180, label %188, label %181, !dbg !3310

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3310
  store i32 %182, ptr %7, align 8, !dbg !3310
  %183 = icmp ult i32 %174, -7, !dbg !3310
  br i1 %183, label %184, label %188, !dbg !3310

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3310
  %186 = sext i32 %174 to i64, !dbg !3310
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3310
  br label %191, !dbg !3310

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3310
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3310
  store ptr %190, ptr %4, align 8, !dbg !3310
  br label %191, !dbg !3310

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3310
  %193 = load ptr, ptr %192, align 8, !dbg !3310
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3316
  store ptr %193, ptr %194, align 8, !dbg !3313, !tbaa !802
  %195 = icmp eq ptr %193, null, !dbg !3314
  %196 = select i1 %195, i64 9, i64 10, !dbg !3315
  br label %197, !dbg !3315

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3317
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3318
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3319
  ret void, !dbg !3319
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3320 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3329
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3328, metadata !DIExpression(), metadata !3329, metadata ptr %5, metadata !DIExpression()), !dbg !3330
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3324, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3325, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3326, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3327, metadata !DIExpression()), !dbg !3330
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3331
  call void @llvm.va_start(ptr nonnull %5), !dbg !3332
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3333, !tbaa.struct !1212
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3333
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3333
  call void @llvm.va_end(ptr nonnull %5), !dbg !3334
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3335
  ret void, !dbg !3335
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3336 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3337, !tbaa !802
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %1), !dbg !3337
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.17.101, i32 noundef 5) #37, !dbg !3338
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.102) #37, !dbg !3338
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.19.103, i32 noundef 5) #37, !dbg !3339
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.104, ptr noundef nonnull @.str.21.105) #37, !dbg !3339
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.22.106, i32 noundef 5) #37, !dbg !3340
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.107) #37, !dbg !3340
  ret void, !dbg !3341
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3342 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3347, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3348, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3349, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %0, metadata !3351, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %2, metadata !3355, metadata !DIExpression()), !dbg !3356
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3358
  call void @llvm.dbg.value(metadata ptr %4, metadata !3359, metadata !DIExpression()), !dbg !3364
  %5 = icmp eq ptr %4, null, !dbg !3366
  br i1 %5, label %6, label %7, !dbg !3368

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3369
  unreachable, !dbg !3369

7:                                                ; preds = %3
  ret ptr %4, !dbg !3370
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3352 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3351, metadata !DIExpression()), !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()), !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3355, metadata !DIExpression()), !dbg !3371
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3372
  call void @llvm.dbg.value(metadata ptr %4, metadata !3359, metadata !DIExpression()), !dbg !3373
  %5 = icmp eq ptr %4, null, !dbg !3375
  br i1 %5, label %6, label %7, !dbg !3376

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3377
  unreachable, !dbg !3377

7:                                                ; preds = %3
  ret ptr %4, !dbg !3378
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3379 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3383, metadata !DIExpression()), !dbg !3384
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3385
  call void @llvm.dbg.value(metadata ptr %2, metadata !3359, metadata !DIExpression()), !dbg !3386
  %3 = icmp eq ptr %2, null, !dbg !3388
  br i1 %3, label %4, label %5, !dbg !3389

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3390
  unreachable, !dbg !3390

5:                                                ; preds = %1
  ret ptr %2, !dbg !3391
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3392 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3393 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %0, metadata !3399, metadata !DIExpression()), !dbg !3403
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3405
  call void @llvm.dbg.value(metadata ptr %2, metadata !3359, metadata !DIExpression()), !dbg !3406
  %3 = icmp eq ptr %2, null, !dbg !3408
  br i1 %3, label %4, label %5, !dbg !3409

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3410
  unreachable, !dbg !3410

5:                                                ; preds = %1
  ret ptr %2, !dbg !3411
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3412 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %0, metadata !3383, metadata !DIExpression()), !dbg !3418
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3420
  call void @llvm.dbg.value(metadata ptr %2, metadata !3359, metadata !DIExpression()), !dbg !3421
  %3 = icmp eq ptr %2, null, !dbg !3423
  br i1 %3, label %4, label %5, !dbg !3424

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3425
  unreachable, !dbg !3425

5:                                                ; preds = %1
  ret ptr %2, !dbg !3426
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3427 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3433
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %1, metadata !3438, metadata !DIExpression()), !dbg !3439
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3441
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3442
  call void @llvm.dbg.value(metadata ptr %4, metadata !3359, metadata !DIExpression()), !dbg !3443
  %5 = icmp eq ptr %4, null, !dbg !3445
  br i1 %5, label %6, label %7, !dbg !3446

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3447
  unreachable, !dbg !3447

7:                                                ; preds = %2
  ret ptr %4, !dbg !3448
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3449 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3454, metadata !DIExpression()), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata ptr %0, metadata !3457, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %1, metadata !3460, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %1, metadata !3438, metadata !DIExpression()), !dbg !3463
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3465
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3466
  call void @llvm.dbg.value(metadata ptr %4, metadata !3359, metadata !DIExpression()), !dbg !3467
  %5 = icmp eq ptr %4, null, !dbg !3469
  br i1 %5, label %6, label %7, !dbg !3470

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3471
  unreachable, !dbg !3471

7:                                                ; preds = %2
  ret ptr %4, !dbg !3472
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()), !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3479, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata ptr %0, metadata !3481, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %1, metadata !3484, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %2, metadata !3485, metadata !DIExpression()), !dbg !3486
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3488
  call void @llvm.dbg.value(metadata ptr %4, metadata !3359, metadata !DIExpression()), !dbg !3489
  %5 = icmp eq ptr %4, null, !dbg !3491
  br i1 %5, label %6, label %7, !dbg !3492

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3493
  unreachable, !dbg !3493

7:                                                ; preds = %3
  ret ptr %4, !dbg !3494
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3495 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3499, metadata !DIExpression()), !dbg !3501
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3500, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata ptr null, metadata !3351, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %0, metadata !3354, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %1, metadata !3355, metadata !DIExpression()), !dbg !3502
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3504
  call void @llvm.dbg.value(metadata ptr %3, metadata !3359, metadata !DIExpression()), !dbg !3505
  %4 = icmp eq ptr %3, null, !dbg !3507
  br i1 %4, label %5, label %6, !dbg !3508

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3509
  unreachable, !dbg !3509

6:                                                ; preds = %2
  ret ptr %3, !dbg !3510
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3511 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3515, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3516, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata ptr null, metadata !3477, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %0, metadata !3478, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata ptr null, metadata !3481, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %0, metadata !3484, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %1, metadata !3485, metadata !DIExpression()), !dbg !3520
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3522
  call void @llvm.dbg.value(metadata ptr %3, metadata !3359, metadata !DIExpression()), !dbg !3523
  %4 = icmp eq ptr %3, null, !dbg !3525
  br i1 %4, label %5, label %6, !dbg !3526

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3527
  unreachable, !dbg !3527

6:                                                ; preds = %2
  ret ptr %3, !dbg !3528
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3535
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3534, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata ptr %0, metadata !738, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %1, metadata !739, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 1, metadata !740, metadata !DIExpression()), !dbg !3536
  %3 = load i64, ptr %1, align 8, !dbg !3538, !tbaa !2606
  call void @llvm.dbg.value(metadata i64 %3, metadata !741, metadata !DIExpression()), !dbg !3536
  %4 = icmp eq ptr %0, null, !dbg !3539
  br i1 %4, label %5, label %8, !dbg !3541

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3542
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3545
  br label %15, !dbg !3545

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3546
  %10 = add nuw i64 %9, 1, !dbg !3546
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3546
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3546
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %13, metadata !741, metadata !DIExpression()), !dbg !3536
  br i1 %12, label %14, label %15, !dbg !3549

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3550
  unreachable, !dbg !3550

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3536
  call void @llvm.dbg.value(metadata i64 %16, metadata !741, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %0, metadata !3351, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %16, metadata !3354, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 1, metadata !3355, metadata !DIExpression()), !dbg !3551
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3553
  call void @llvm.dbg.value(metadata ptr %17, metadata !3359, metadata !DIExpression()), !dbg !3554
  %18 = icmp eq ptr %17, null, !dbg !3556
  br i1 %18, label %19, label %20, !dbg !3557

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3558
  unreachable, !dbg !3558

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !738, metadata !DIExpression()), !dbg !3536
  store i64 %16, ptr %1, align 8, !dbg !3559, !tbaa !2606
  ret ptr %17, !dbg !3560
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !733 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !738, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !739, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !740, metadata !DIExpression()), !dbg !3561
  %4 = load i64, ptr %1, align 8, !dbg !3562, !tbaa !2606
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !741, metadata !DIExpression()), !dbg !3561
  %5 = icmp eq ptr %0, null, !dbg !3563
  br i1 %5, label %6, label %13, !dbg !3564

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3565
  br i1 %7, label %8, label %20, !dbg !3566

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !741, metadata !DIExpression()), !dbg !3561
  %10 = icmp ugt i64 %2, 128, !dbg !3569
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3570
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !741, metadata !DIExpression()), !dbg !3561
  br label %20, !dbg !3571

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3572
  %15 = add nuw i64 %14, 1, !dbg !3572
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3572
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3572
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3572
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !741, metadata !DIExpression()), !dbg !3561
  br i1 %17, label %19, label %20, !dbg !3573

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3574
  unreachable, !dbg !3574

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !741, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata ptr %0, metadata !3351, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %21, metadata !3354, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %2, metadata !3355, metadata !DIExpression()), !dbg !3575
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3577
  call void @llvm.dbg.value(metadata ptr %22, metadata !3359, metadata !DIExpression()), !dbg !3578
  %23 = icmp eq ptr %22, null, !dbg !3580
  br i1 %23, label %24, label %25, !dbg !3581

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3582
  unreachable, !dbg !3582

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !738, metadata !DIExpression()), !dbg !3561
  store i64 %21, ptr %1, align 8, !dbg !3583, !tbaa !2606
  ret ptr %22, !dbg !3584
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !745 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !754, metadata !DIExpression()), !dbg !3585
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !755, metadata !DIExpression()), !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !756, metadata !DIExpression()), !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !757, metadata !DIExpression()), !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !758, metadata !DIExpression()), !dbg !3585
  %6 = load i64, ptr %1, align 8, !dbg !3586, !tbaa !2606
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !759, metadata !DIExpression()), !dbg !3585
  %7 = ashr i64 %6, 1, !dbg !3587
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3587
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3587
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !760, metadata !DIExpression()), !dbg !3585
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3589
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !760, metadata !DIExpression()), !dbg !3585
  %12 = icmp sgt i64 %3, -1, !dbg !3590
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3592
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3592
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !760, metadata !DIExpression()), !dbg !3585
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3593
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3593
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3593
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !761, metadata !DIExpression()), !dbg !3585
  %18 = icmp slt i64 %17, 128, !dbg !3593
  %19 = select i1 %18, i64 128, i64 0, !dbg !3593
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3593
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !762, metadata !DIExpression()), !dbg !3585
  %21 = icmp eq i64 %20, 0, !dbg !3594
  br i1 %21, label %28, label %22, !dbg !3596

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3597
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !760, metadata !DIExpression()), !dbg !3585
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !761, metadata !DIExpression()), !dbg !3585
  br label %28, !dbg !3600

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3585
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !761, metadata !DIExpression()), !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !760, metadata !DIExpression()), !dbg !3585
  %31 = icmp eq ptr %0, null, !dbg !3601
  br i1 %31, label %32, label %33, !dbg !3603

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3604, !tbaa !2606
  br label %33, !dbg !3605

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3606
  %35 = icmp slt i64 %34, %2, !dbg !3608
  br i1 %35, label %36, label %48, !dbg !3609

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3610
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3610
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !760, metadata !DIExpression()), !dbg !3585
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3611
  br i1 %42, label %47, label %43, !dbg !3611

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3612
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3612
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3612
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !761, metadata !DIExpression()), !dbg !3585
  br i1 %45, label %47, label %48, !dbg !3613

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3614
  unreachable, !dbg !3614

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3585
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !761, metadata !DIExpression()), !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !760, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 %50, metadata !3432, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %50, metadata !3438, metadata !DIExpression()), !dbg !3617
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3619
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !3620
  call void @llvm.dbg.value(metadata ptr %52, metadata !3359, metadata !DIExpression()), !dbg !3621
  %53 = icmp eq ptr %52, null, !dbg !3623
  br i1 %53, label %54, label %55, !dbg !3624

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3625
  unreachable, !dbg !3625

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !754, metadata !DIExpression()), !dbg !3585
  store i64 %49, ptr %1, align 8, !dbg !3626, !tbaa !2606
  ret ptr %52, !dbg !3627
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3628 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3630, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %0, metadata !3632, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i64 1, metadata !3635, metadata !DIExpression()), !dbg !3636
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3638
  call void @llvm.dbg.value(metadata ptr %2, metadata !3359, metadata !DIExpression()), !dbg !3639
  %3 = icmp eq ptr %2, null, !dbg !3641
  br i1 %3, label %4, label %5, !dbg !3642

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3643
  unreachable, !dbg !3643

5:                                                ; preds = %1
  ret ptr %2, !dbg !3644
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3645 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3633 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3632, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3635, metadata !DIExpression()), !dbg !3646
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3647
  call void @llvm.dbg.value(metadata ptr %3, metadata !3359, metadata !DIExpression()), !dbg !3648
  %4 = icmp eq ptr %3, null, !dbg !3650
  br i1 %4, label %5, label %6, !dbg !3651

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3652
  unreachable, !dbg !3652

6:                                                ; preds = %2
  ret ptr %3, !dbg !3653
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3654 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3656, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %0, metadata !3658, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 1, metadata !3661, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %0, metadata !3664, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 1, metadata !3667, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %0, metadata !3664, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 1, metadata !3667, metadata !DIExpression()), !dbg !3668
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3670
  call void @llvm.dbg.value(metadata ptr %2, metadata !3359, metadata !DIExpression()), !dbg !3671
  %3 = icmp eq ptr %2, null, !dbg !3673
  br i1 %3, label %4, label %5, !dbg !3674

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3675
  unreachable, !dbg !3675

5:                                                ; preds = %1
  ret ptr %2, !dbg !3676
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3659 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3658, metadata !DIExpression()), !dbg !3677
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3661, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %0, metadata !3664, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %1, metadata !3667, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %0, metadata !3664, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %1, metadata !3667, metadata !DIExpression()), !dbg !3678
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3680
  call void @llvm.dbg.value(metadata ptr %3, metadata !3359, metadata !DIExpression()), !dbg !3681
  %4 = icmp eq ptr %3, null, !dbg !3683
  br i1 %4, label %5, label %6, !dbg !3684

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3685
  unreachable, !dbg !3685

6:                                                ; preds = %2
  ret ptr %3, !dbg !3686
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3687 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3691, metadata !DIExpression()), !dbg !3693
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3692, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %1, metadata !3383, metadata !DIExpression()), !dbg !3694
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3696
  call void @llvm.dbg.value(metadata ptr %3, metadata !3359, metadata !DIExpression()), !dbg !3697
  %4 = icmp eq ptr %3, null, !dbg !3699
  br i1 %4, label %5, label %6, !dbg !3700

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3701
  unreachable, !dbg !3701

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3702, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %1, metadata !3709, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3712
  ret ptr %3, !dbg !3713
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3714 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3718, metadata !DIExpression()), !dbg !3720
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3719, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i64 %1, metadata !3399, metadata !DIExpression()), !dbg !3723
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3725
  call void @llvm.dbg.value(metadata ptr %3, metadata !3359, metadata !DIExpression()), !dbg !3726
  %4 = icmp eq ptr %3, null, !dbg !3728
  br i1 %4, label %5, label %6, !dbg !3729

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3730
  unreachable, !dbg !3730

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3702, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i64 %1, metadata !3709, metadata !DIExpression()), !dbg !3731
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3733
  ret ptr %3, !dbg !3734
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3735 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3739, metadata !DIExpression()), !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3740, metadata !DIExpression()), !dbg !3742
  %3 = add nsw i64 %1, 1, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %3, metadata !3397, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %3, metadata !3399, metadata !DIExpression()), !dbg !3746
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3748
  call void @llvm.dbg.value(metadata ptr %4, metadata !3359, metadata !DIExpression()), !dbg !3749
  %5 = icmp eq ptr %4, null, !dbg !3751
  br i1 %5, label %6, label %7, !dbg !3752

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3753
  unreachable, !dbg !3753

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3741, metadata !DIExpression()), !dbg !3742
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3754
  store i8 0, ptr %8, align 1, !dbg !3755, !tbaa !877
  call void @llvm.dbg.value(metadata ptr %4, metadata !3702, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %1, metadata !3709, metadata !DIExpression()), !dbg !3756
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3758
  ret ptr %4, !dbg !3759
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3760 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3762, metadata !DIExpression()), !dbg !3763
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3764
  %3 = add i64 %2, 1, !dbg !3765
  call void @llvm.dbg.value(metadata ptr %0, metadata !3691, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %3, metadata !3692, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %3, metadata !3383, metadata !DIExpression()), !dbg !3768
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3770
  call void @llvm.dbg.value(metadata ptr %4, metadata !3359, metadata !DIExpression()), !dbg !3771
  %5 = icmp eq ptr %4, null, !dbg !3773
  br i1 %5, label %6, label %7, !dbg !3774

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3775
  unreachable, !dbg !3775

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3702, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 %3, metadata !3709, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3778
  ret ptr %4, !dbg !3779
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3780 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3785, !tbaa !868
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3782, metadata !DIExpression()), !dbg !3786
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.122, ptr noundef nonnull @.str.2.123, i32 noundef 5) #37, !dbg !3785
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.124, ptr noundef %2) #37, !dbg !3785
  %3 = icmp eq i32 %1, 0, !dbg !3785
  tail call void @llvm.assume(i1 %3), !dbg !3785
  tail call void @abort() #39, !dbg !3787
  unreachable, !dbg !3787
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3788 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3826, metadata !DIExpression()), !dbg !3831
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3832
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3827, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3831
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3836
  %3 = load i32, ptr %0, align 8, !dbg !3838, !tbaa !3839
  %4 = and i32 %3, 32, !dbg !3840
  %5 = icmp eq i32 %4, 0, !dbg !3840
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3829, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3831
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3841
  %7 = icmp eq i32 %6, 0, !dbg !3842
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3830, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3831
  br i1 %5, label %8, label %18, !dbg !3843

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3845
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3827, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3831
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3846
  %11 = xor i1 %7, true, !dbg !3846
  %12 = sext i1 %11 to i32, !dbg !3846
  br i1 %10, label %21, label %13, !dbg !3846

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3847
  %15 = load i32, ptr %14, align 4, !dbg !3847, !tbaa !868
  %16 = icmp ne i32 %15, 9, !dbg !3848
  %17 = sext i1 %16 to i32, !dbg !3849
  br label %21, !dbg !3849

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3850

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3852
  store i32 0, ptr %20, align 4, !dbg !3854, !tbaa !868
  br label %21, !dbg !3852

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3831
  ret i32 %22, !dbg !3855
}

; Function Attrs: nounwind
declare !dbg !3856 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3860 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3898, metadata !DIExpression()), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3899, metadata !DIExpression()), !dbg !3902
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3903
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3900, metadata !DIExpression()), !dbg !3902
  %3 = icmp slt i32 %2, 0, !dbg !3904
  br i1 %3, label %4, label %6, !dbg !3906

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3907
  br label %24, !dbg !3908

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3909
  %8 = icmp eq i32 %7, 0, !dbg !3909
  br i1 %8, label %13, label %9, !dbg !3911

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3912
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3913
  %12 = icmp eq i64 %11, -1, !dbg !3914
  br i1 %12, label %16, label %13, !dbg !3915

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3916
  %15 = icmp eq i32 %14, 0, !dbg !3916
  br i1 %15, label %16, label %18, !dbg !3917

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3899, metadata !DIExpression()), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3901, metadata !DIExpression()), !dbg !3902
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3918
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3901, metadata !DIExpression()), !dbg !3902
  br label %24, !dbg !3919

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3920
  %20 = load i32, ptr %19, align 4, !dbg !3920, !tbaa !868
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3899, metadata !DIExpression()), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3901, metadata !DIExpression()), !dbg !3902
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3918
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3901, metadata !DIExpression()), !dbg !3902
  %22 = icmp eq i32 %20, 0, !dbg !3921
  br i1 %22, label %24, label %23, !dbg !3919

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3923, !tbaa !868
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3901, metadata !DIExpression()), !dbg !3902
  br label %24, !dbg !3925

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3902
  ret i32 %25, !dbg !3926
}

; Function Attrs: nofree nounwind
declare !dbg !3927 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3928 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3929 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3930 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3933 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3971, metadata !DIExpression()), !dbg !3972
  %2 = icmp eq ptr %0, null, !dbg !3973
  br i1 %2, label %6, label %3, !dbg !3975

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3976
  %5 = icmp eq i32 %4, 0, !dbg !3976
  br i1 %5, label %6, label %8, !dbg !3977

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3978
  br label %16, !dbg !3979

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3980, metadata !DIExpression()), !dbg !3985
  %9 = load i32, ptr %0, align 8, !dbg !3987, !tbaa !3839
  %10 = and i32 %9, 256, !dbg !3989
  %11 = icmp eq i32 %10, 0, !dbg !3989
  br i1 %11, label %14, label %12, !dbg !3990

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3991
  br label %14, !dbg !3991

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3992
  br label %16, !dbg !3993

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3972
  ret i32 %17, !dbg !3994
}

; Function Attrs: nofree nounwind
declare !dbg !3995 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3996 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4035, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4036, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4037, metadata !DIExpression()), !dbg !4041
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4042
  %5 = load ptr, ptr %4, align 8, !dbg !4042, !tbaa !4043
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4044
  %7 = load ptr, ptr %6, align 8, !dbg !4044, !tbaa !4045
  %8 = icmp eq ptr %5, %7, !dbg !4046
  br i1 %8, label %9, label %27, !dbg !4047

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4048
  %11 = load ptr, ptr %10, align 8, !dbg !4048, !tbaa !1325
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4049
  %13 = load ptr, ptr %12, align 8, !dbg !4049, !tbaa !4050
  %14 = icmp eq ptr %11, %13, !dbg !4051
  br i1 %14, label %15, label %27, !dbg !4052

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4053
  %17 = load ptr, ptr %16, align 8, !dbg !4053, !tbaa !4054
  %18 = icmp eq ptr %17, null, !dbg !4055
  br i1 %18, label %19, label %27, !dbg !4056

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4057
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4058
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4038, metadata !DIExpression()), !dbg !4059
  %22 = icmp eq i64 %21, -1, !dbg !4060
  br i1 %22, label %29, label %23, !dbg !4062

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4063, !tbaa !3839
  %25 = and i32 %24, -17, !dbg !4063
  store i32 %25, ptr %0, align 8, !dbg !4063, !tbaa !3839
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4064
  store i64 %21, ptr %26, align 8, !dbg !4065, !tbaa !4066
  br label %29, !dbg !4067

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4068
  br label %29, !dbg !4069

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4041
  ret i32 %30, !dbg !4070
}

; Function Attrs: nofree nounwind
declare !dbg !4071 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4074 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4080, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4081, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4082, metadata !DIExpression()), !dbg !4084
  %5 = icmp eq ptr %1, null, !dbg !4085
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4087
  %7 = select i1 %5, ptr @.str.135, ptr %1, !dbg !4087
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4087
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4081, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4080, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4079, metadata !DIExpression()), !dbg !4084
  %9 = icmp eq ptr %3, null, !dbg !4088
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4082, metadata !DIExpression()), !dbg !4084
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !4091
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4083, metadata !DIExpression()), !dbg !4084
  %12 = icmp ult i64 %11, -3, !dbg !4092
  br i1 %12, label %13, label %17, !dbg !4094

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !4095
  %15 = icmp eq i32 %14, 0, !dbg !4095
  br i1 %15, label %16, label %29, !dbg !4096

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4097, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata ptr %10, metadata !4104, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i32 0, metadata !4107, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 8, metadata !4108, metadata !DIExpression()), !dbg !4109
  store i64 0, ptr %10, align 1, !dbg !4111
  br label %29, !dbg !4112

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4113
  br i1 %18, label %19, label %20, !dbg !4115

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4116
  unreachable, !dbg !4116

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4117

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !4119
  br i1 %23, label %29, label %24, !dbg !4120

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4121
  br i1 %25, label %29, label %26, !dbg !4124

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4125, !tbaa !877
  %28 = zext i8 %27 to i32, !dbg !4126
  store i32 %28, ptr %6, align 4, !dbg !4127, !tbaa !868
  br label %29, !dbg !4128

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4084
  ret i64 %30, !dbg !4129
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4130 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4136 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4142
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4139, metadata !DIExpression()), !dbg !4142
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4140, metadata !DIExpression()), !dbg !4142
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4143
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4143
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4141, metadata !DIExpression()), !dbg !4142
  br i1 %5, label %6, label %8, !dbg !4145

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4146
  store i32 12, ptr %7, align 4, !dbg !4148, !tbaa !868
  br label %12, !dbg !4149

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4143
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4141, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata ptr %0, metadata !4150, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %9, metadata !4153, metadata !DIExpression()), !dbg !4154
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4156
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4157
  br label %12, !dbg !4158

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4142
  ret ptr %13, !dbg !4159
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4160 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4169
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4165, metadata !DIExpression(), metadata !4169, metadata ptr %2, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4164, metadata !DIExpression()), !dbg !4170
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4171
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4172
  %4 = icmp eq i32 %3, 0, !dbg !4172
  br i1 %4, label %5, label %12, !dbg !4174

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4175, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr @.str.140, metadata !4178, metadata !DIExpression()), !dbg !4179
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.140, i64 2), !dbg !4182
  %7 = icmp eq i32 %6, 0, !dbg !4183
  br i1 %7, label %11, label %8, !dbg !4184

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4175, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata ptr @.str.1.141, metadata !4178, metadata !DIExpression()), !dbg !4185
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.141, i64 6), !dbg !4187
  %10 = icmp eq i32 %9, 0, !dbg !4188
  br i1 %10, label %11, label %12, !dbg !4189

11:                                               ; preds = %8, %5
  br label %12, !dbg !4190

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4170
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4191
  ret i1 %13, !dbg !4191
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4192 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4196, metadata !DIExpression()), !dbg !4199
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4197, metadata !DIExpression()), !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4198, metadata !DIExpression()), !dbg !4199
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4200
  ret i32 %4, !dbg !4201
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4202 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4206, metadata !DIExpression()), !dbg !4207
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4208
  ret ptr %2, !dbg !4209
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4210 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4212, metadata !DIExpression()), !dbg !4214
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4215
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4213, metadata !DIExpression()), !dbg !4214
  ret ptr %2, !dbg !4216
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4217 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4219, metadata !DIExpression()), !dbg !4226
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4220, metadata !DIExpression()), !dbg !4226
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4221, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i32 %0, metadata !4212, metadata !DIExpression()), !dbg !4227
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4229
  call void @llvm.dbg.value(metadata ptr %4, metadata !4213, metadata !DIExpression()), !dbg !4227
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4222, metadata !DIExpression()), !dbg !4226
  %5 = icmp eq ptr %4, null, !dbg !4230
  br i1 %5, label %6, label %9, !dbg !4231

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4232
  br i1 %7, label %19, label %8, !dbg !4235

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4236, !tbaa !877
  br label %19, !dbg !4237

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4238
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4223, metadata !DIExpression()), !dbg !4239
  %11 = icmp ult i64 %10, %2, !dbg !4240
  br i1 %11, label %12, label %14, !dbg !4242

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4243
  call void @llvm.dbg.value(metadata ptr %1, metadata !4245, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %4, metadata !4248, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i64 %13, metadata !4249, metadata !DIExpression()), !dbg !4250
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4252
  br label %19, !dbg !4253

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4254
  br i1 %15, label %19, label %16, !dbg !4257

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4258
  call void @llvm.dbg.value(metadata ptr %1, metadata !4245, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata ptr %4, metadata !4248, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata i64 %17, metadata !4249, metadata !DIExpression()), !dbg !4260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4262
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4263
  store i8 0, ptr %18, align 1, !dbg !4264, !tbaa !877
  br label %19, !dbg !4265

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4266
  ret i32 %20, !dbg !4267
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
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }
attributes #45 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!66, !709, !374, !378, !393, !675, !711, !713, !449, !463, !511, !722, !667, !729, !764, !766, !768, !770, !772, !691, !774, !776, !778, !780}
!llvm.ident = !{!782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782, !782}
!llvm.module.flags = !{!783, !784, !785, !786, !787, !788, !789, !790}

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
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/mkfifo.o -MD -MP -MF src/.deps/mkfifo.Tpo -c src/mkfifo.c -o src/.mkfifo.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !104, globals: !114, splitDebugInlining: false, nameTableKind: None)
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
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 18, baseType: !110)
!109 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!374 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !375, splitDebugInlining: false, nameTableKind: None)
!375 = !{!369, !372}
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "file_name", scope: !378, file: !379, line: 45, type: !111, isLocal: true, isDefinition: true)
!378 = distinct !DICompileUnit(language: DW_LANG_C11, file: !379, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !380, splitDebugInlining: false, nameTableKind: None)
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
!392 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !393, file: !394, line: 66, type: !444, isLocal: false, isDefinition: true)
!393 = distinct !DICompileUnit(language: DW_LANG_C11, file: !394, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, globals: !396, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!395 = !{!106, !113}
!396 = !{!397, !399, !423, !425, !427, !429, !391, !431, !433, !435, !437, !442}
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !394, line: 272, type: !244, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "old_file_name", scope: !401, file: !394, line: 304, type: !111, isLocal: true, isDefinition: true)
!401 = distinct !DISubprogram(name: "verror_at_line", scope: !394, file: !394, line: 298, type: !402, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !416)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !70, !70, !111, !76, !111, !404}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !405, line: 52, baseType: !406)
!405 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !407, line: 12, baseType: !408)
!407 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !394, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !410)
!410 = !{!411, !412, !413, !414, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !409, file: !394, baseType: !106, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !409, file: !394, baseType: !106, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !409, file: !394, baseType: !106, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !409, file: !394, baseType: !70, size: 32, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !409, file: !394, baseType: !70, size: 32, offset: 224)
!416 = !{!417, !418, !419, !420, !421, !422}
!417 = !DILocalVariable(name: "status", arg: 1, scope: !401, file: !394, line: 298, type: !70)
!418 = !DILocalVariable(name: "errnum", arg: 2, scope: !401, file: !394, line: 298, type: !70)
!419 = !DILocalVariable(name: "file_name", arg: 3, scope: !401, file: !394, line: 298, type: !111)
!420 = !DILocalVariable(name: "line_number", arg: 4, scope: !401, file: !394, line: 298, type: !76)
!421 = !DILocalVariable(name: "message", arg: 5, scope: !401, file: !394, line: 298, type: !111)
!422 = !DILocalVariable(name: "args", arg: 6, scope: !401, file: !394, line: 298, type: !404)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "old_line_number", scope: !401, file: !394, line: 305, type: !76, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !394, line: 338, type: !61, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !394, line: 346, type: !280, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !394, line: 346, type: !258, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "error_message_count", scope: !393, file: !394, line: 69, type: !76, isLocal: false, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !393, file: !394, line: 295, type: !70, isLocal: false, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !394, line: 208, type: !19, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !394, line: 208, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 21)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !394, line: 214, type: !244, isLocal: true, isDefinition: true)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null}
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "program_name", scope: !449, file: !450, line: 31, type: !111, isLocal: false, isDefinition: true)
!449 = distinct !DICompileUnit(language: DW_LANG_C11, file: !450, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !451, globals: !452, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!451 = !{!106, !105}
!452 = !{!447, !453, !455}
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !450, line: 46, type: !280, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !450, line: 49, type: !61, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "utf07FF", scope: !459, file: !460, line: 46, type: !487, isLocal: true, isDefinition: true)
!459 = distinct !DISubprogram(name: "proper_name_lite", scope: !460, file: !460, line: 38, type: !461, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !465)
!460 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!461 = !DISubroutineType(types: !462)
!462 = !{!111, !111, !111}
!463 = distinct !DICompileUnit(language: DW_LANG_C11, file: !460, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !464, splitDebugInlining: false, nameTableKind: None)
!464 = !{!457}
!465 = !{!466, !467, !468, !469, !474}
!466 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !459, file: !460, line: 38, type: !111)
!467 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !459, file: !460, line: 38, type: !111)
!468 = !DILocalVariable(name: "translation", scope: !459, file: !460, line: 40, type: !111)
!469 = !DILocalVariable(name: "w", scope: !459, file: !460, line: 47, type: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !471, line: 37, baseType: !472)
!471 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !211, line: 57, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !211, line: 42, baseType: !76)
!474 = !DILocalVariable(name: "mbs", scope: !459, file: !460, line: 48, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !476, line: 6, baseType: !477)
!476 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !478, line: 21, baseType: !479)
!478 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !478, line: 13, size: 64, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !479, file: !478, line: 15, baseType: !70, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !479, file: !478, line: 20, baseType: !483, size: 32, offset: 32)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !478, line: 16, size: 32, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !483, file: !478, line: 18, baseType: !76, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !483, file: !478, line: 19, baseType: !61, size: 32)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 16, elements: !259)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !490, line: 78, type: !280, isLocal: true, isDefinition: true)
!490 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !490, line: 79, type: !253, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !490, line: 80, type: !136, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !490, line: 81, type: !136, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !490, line: 82, type: !233, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !490, line: 83, type: !258, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !490, line: 84, type: !280, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !490, line: 85, type: !19, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !490, line: 86, type: !19, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !490, line: 87, type: !280, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !511, file: !490, line: 76, type: !585, isLocal: false, isDefinition: true)
!511 = distinct !DICompileUnit(language: DW_LANG_C11, file: !490, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !512, retainedTypes: !520, globals: !521, splitDebugInlining: false, nameTableKind: None)
!512 = !{!513, !515, !89}
!513 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !514, line: 42, baseType: !76, size: 32, elements: !77)
!514 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!515 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !514, line: 254, baseType: !76, size: 32, elements: !516)
!516 = !{!517, !518, !519}
!517 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!518 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!519 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!520 = !{!106, !70, !107, !108}
!521 = !{!488, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !522, !526, !536, !538, !543, !545, !547, !549, !551, !574, !581, !583}
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !511, file: !490, line: 92, type: !524, isLocal: false, isDefinition: true)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 320, elements: !52)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !511, file: !490, line: 1040, type: !528, isLocal: false, isDefinition: true)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !490, line: 56, size: 448, elements: !529)
!529 = !{!530, !531, !532, !534, !535}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !528, file: !490, line: 59, baseType: !513, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !490, line: 62, baseType: !70, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !528, file: !490, line: 66, baseType: !533, size: 256, offset: 64)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !281)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !528, file: !490, line: 69, baseType: !111, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !528, file: !490, line: 72, baseType: !111, size: 64, offset: 384)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !511, file: !490, line: 107, type: !528, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "slot0", scope: !511, file: !490, line: 831, type: !540, isLocal: true, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 256)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !490, line: 321, type: !258, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !490, line: 357, type: !258, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !490, line: 358, type: !258, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !490, line: 199, type: !19, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "quote", scope: !553, file: !490, line: 228, type: !572, isLocal: true, isDefinition: true)
!553 = distinct !DISubprogram(name: "gettext_quote", scope: !490, file: !490, line: 197, type: !554, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{!111, !111, !513}
!556 = !{!557, !558, !559, !560, !561}
!557 = !DILocalVariable(name: "msgid", arg: 1, scope: !553, file: !490, line: 197, type: !111)
!558 = !DILocalVariable(name: "s", arg: 2, scope: !553, file: !490, line: 197, type: !513)
!559 = !DILocalVariable(name: "translation", scope: !553, file: !490, line: 199, type: !111)
!560 = !DILocalVariable(name: "w", scope: !553, file: !490, line: 229, type: !470)
!561 = !DILocalVariable(name: "mbs", scope: !553, file: !490, line: 230, type: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !476, line: 6, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !478, line: 21, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !478, line: 13, size: 64, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !564, file: !478, line: 15, baseType: !70, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !564, file: !478, line: 20, baseType: !568, size: 32, offset: 32)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !564, file: !478, line: 16, size: 32, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !568, file: !478, line: 18, baseType: !76, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !568, file: !478, line: 19, baseType: !61, size: 32)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !573)
!573 = !{!260, !63}
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "slotvec", scope: !511, file: !490, line: 834, type: !576, isLocal: true, isDefinition: true)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !490, line: 823, size: 128, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !577, file: !490, line: 825, baseType: !108, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !577, file: !490, line: 826, baseType: !105, size: 64, offset: 64)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "nslots", scope: !511, file: !490, line: 832, type: !70, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "slotvec0", scope: !511, file: !490, line: 833, type: !577, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 704, elements: !587)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!587 = !{!588}
!588 = !DISubrange(count: 11)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !591, line: 67, type: !348, isLocal: true, isDefinition: true)
!591 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !591, line: 69, type: !19, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !591, line: 83, type: !19, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !591, line: 83, type: !61, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !591, line: 85, type: !258, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !591, line: 88, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 171)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !591, line: 88, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 34)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !591, line: 105, type: !127, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !591, line: 109, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 23)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !591, line: 113, type: !619, isLocal: true, isDefinition: true)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 28)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !591, line: 120, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 32)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !591, line: 127, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 36)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !591, line: 134, type: !302, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !591, line: 142, type: !141, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !591, line: 150, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 48)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !591, line: 159, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 52)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !591, line: 170, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 60)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !591, line: 248, type: !233, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !591, line: 248, type: !146, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !591, line: 254, type: !233, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !591, line: 254, type: !122, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !591, line: 254, type: !302, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !591, line: 259, type: !3, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !591, line: 259, type: !151, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !667, file: !668, line: 26, type: !670, isLocal: false, isDefinition: true)
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !668, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !669, splitDebugInlining: false, nameTableKind: None)
!668 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!669 = !{!665}
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 376, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 47)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "exit_failure", scope: !675, file: !676, line: 24, type: !678, isLocal: false, isDefinition: true)
!675 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !677, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!677 = !{!673}
!678 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !681, line: 34, type: !267, isLocal: true, isDefinition: true)
!681 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !681, line: 34, type: !19, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !681, line: 34, type: !297, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !688, line: 108, type: !46, isLocal: true, isDefinition: true)
!688 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(name: "internal_state", scope: !691, file: !688, line: 97, type: !694, isLocal: true, isDefinition: true)
!691 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !692, globals: !693, splitDebugInlining: false, nameTableKind: None)
!692 = !{!106, !108, !113}
!693 = !{!686, !689}
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !476, line: 6, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !478, line: 21, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !478, line: 13, size: 64, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !696, file: !478, line: 15, baseType: !70, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !696, file: !478, line: 20, baseType: !700, size: 32, offset: 32)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !478, line: 16, size: 32, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !700, file: !478, line: 18, baseType: !76, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !700, file: !478, line: 19, baseType: !61, size: 32)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !706, line: 35, type: !258, isLocal: true, isDefinition: true)
!706 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !706, line: 35, type: !253, isLocal: true, isDefinition: true)
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !710, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/selinux.o -MD -MP -MF src/.deps/selinux.Tpo -c src/selinux.c -o src/.selinux.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !712, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!712 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!713 = distinct !DICompileUnit(language: DW_LANG_C11, file: !714, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-modechange.o -MD -MP -MF lib/.deps/libcoreutils_a-modechange.Tpo -c lib/modechange.c -o lib/.libcoreutils_a-modechange.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !715, splitDebugInlining: false, nameTableKind: None)
!714 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!715 = !{!716}
!716 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !714, line: 78, baseType: !76, size: 32, elements: !717)
!717 = !{!718, !719, !720, !721}
!718 = !DIEnumerator(name: "MODE_DONE", value: 0)
!719 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!720 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!721 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !591, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !723, retainedTypes: !727, globals: !728, splitDebugInlining: false, nameTableKind: None)
!723 = !{!724}
!724 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !591, line: 40, baseType: !76, size: 32, elements: !725)
!725 = !{!726}
!726 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!727 = !{!106}
!728 = !{!589, !592, !594, !596, !598, !600, !605, !610, !612, !617, !622, !627, !632, !634, !636, !641, !646, !651, !653, !655, !657, !659, !661, !663}
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !731, retainedTypes: !763, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!731 = !{!732, !744}
!732 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !733, file: !730, line: 188, baseType: !76, size: 32, elements: !742)
!733 = distinct !DISubprogram(name: "x2nrealloc", scope: !730, file: !730, line: 176, type: !734, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !737)
!734 = !DISubroutineType(types: !735)
!735 = !{!106, !106, !736, !108}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!737 = !{!738, !739, !740, !741}
!738 = !DILocalVariable(name: "p", arg: 1, scope: !733, file: !730, line: 176, type: !106)
!739 = !DILocalVariable(name: "pn", arg: 2, scope: !733, file: !730, line: 176, type: !736)
!740 = !DILocalVariable(name: "s", arg: 3, scope: !733, file: !730, line: 176, type: !108)
!741 = !DILocalVariable(name: "n", scope: !733, file: !730, line: 178, type: !108)
!742 = !{!743}
!743 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!744 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !745, file: !730, line: 228, baseType: !76, size: 32, elements: !742)
!745 = distinct !DISubprogram(name: "xpalloc", scope: !730, file: !730, line: 223, type: !746, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !753)
!746 = !DISubroutineType(types: !747)
!747 = !{!106, !106, !748, !749, !751, !749}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !750, line: 130, baseType: !751)
!750 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !752, line: 18, baseType: !212)
!752 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762}
!754 = !DILocalVariable(name: "pa", arg: 1, scope: !745, file: !730, line: 223, type: !106)
!755 = !DILocalVariable(name: "pn", arg: 2, scope: !745, file: !730, line: 223, type: !748)
!756 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !745, file: !730, line: 223, type: !749)
!757 = !DILocalVariable(name: "n_max", arg: 4, scope: !745, file: !730, line: 223, type: !751)
!758 = !DILocalVariable(name: "s", arg: 5, scope: !745, file: !730, line: 223, type: !749)
!759 = !DILocalVariable(name: "n0", scope: !745, file: !730, line: 230, type: !749)
!760 = !DILocalVariable(name: "n", scope: !745, file: !730, line: 237, type: !749)
!761 = !DILocalVariable(name: "nbytes", scope: !745, file: !730, line: 248, type: !749)
!762 = !DILocalVariable(name: "adjusted_nbytes", scope: !745, file: !730, line: 252, type: !749)
!763 = !{!105, !106}
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !765, splitDebugInlining: false, nameTableKind: None)
!765 = !{!679, !682, !684}
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !727, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !727, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !727, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !706, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !777, splitDebugInlining: false, nameTableKind: None)
!777 = !{!704, !707}
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !727, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!782 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!783 = !{i32 7, !"Dwarf Version", i32 5}
!784 = !{i32 2, !"Debug Info Version", i32 3}
!785 = !{i32 1, !"wchar_size", i32 4}
!786 = !{i32 8, !"PIC Level", i32 2}
!787 = !{i32 7, !"PIE Level", i32 2}
!788 = !{i32 7, !"uwtable", i32 2}
!789 = !{i32 7, !"frame-pointer", i32 1}
!790 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!791 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 46, type: !792, scopeLine: 47, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !70}
!794 = !{!795}
!795 = !DILocalVariable(name: "status", arg: 1, scope: !791, file: !2, line: 46, type: !70)
!796 = !DILocation(line: 0, scope: !791)
!797 = !DILocation(line: 48, column: 14, scope: !798)
!798 = distinct !DILexicalBlock(scope: !791, file: !2, line: 48, column: 7)
!799 = !DILocation(line: 48, column: 7, scope: !791)
!800 = !DILocation(line: 49, column: 5, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !2, line: 49, column: 5)
!802 = !{!803, !803, i64 0}
!803 = !{!"any pointer", !804, i64 0}
!804 = !{!"omnipotent char", !805, i64 0}
!805 = !{!"Simple C/C++ TBAA"}
!806 = !DILocation(line: 52, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !798, file: !2, line: 51, column: 5)
!808 = !DILocation(line: 53, column: 7, scope: !807)
!809 = !DILocation(line: 736, column: 3, scope: !810, inlinedAt: !811)
!810 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !69, file: !69, line: 734, type: !445, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!811 = distinct !DILocation(line: 57, column: 7, scope: !807)
!812 = !DILocation(line: 59, column: 7, scope: !807)
!813 = !DILocation(line: 63, column: 7, scope: !807)
!814 = !DILocation(line: 67, column: 7, scope: !807)
!815 = !DILocation(line: 72, column: 7, scope: !807)
!816 = !DILocation(line: 73, column: 7, scope: !807)
!817 = !DILocalVariable(name: "program", arg: 1, scope: !818, file: !69, line: 836, type: !111)
!818 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !819, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !111}
!821 = !{!817, !822, !829, !830, !832, !833}
!822 = !DILocalVariable(name: "infomap", scope: !818, file: !69, line: 838, type: !823)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 896, elements: !20)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !818, file: !69, line: 838, size: 128, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !825, file: !69, line: 838, baseType: !111, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !825, file: !69, line: 838, baseType: !111, size: 64, offset: 64)
!829 = !DILocalVariable(name: "node", scope: !818, file: !69, line: 848, type: !111)
!830 = !DILocalVariable(name: "map_prog", scope: !818, file: !69, line: 849, type: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!832 = !DILocalVariable(name: "lc_messages", scope: !818, file: !69, line: 861, type: !111)
!833 = !DILocalVariable(name: "url_program", scope: !818, file: !69, line: 874, type: !111)
!834 = !DILocation(line: 0, scope: !818, inlinedAt: !835)
!835 = distinct !DILocation(line: 74, column: 7, scope: !807)
!836 = !{}
!837 = !DILocation(line: 857, column: 3, scope: !818, inlinedAt: !835)
!838 = !DILocation(line: 861, column: 29, scope: !818, inlinedAt: !835)
!839 = !DILocation(line: 862, column: 7, scope: !840, inlinedAt: !835)
!840 = distinct !DILexicalBlock(scope: !818, file: !69, line: 862, column: 7)
!841 = !DILocation(line: 862, column: 19, scope: !840, inlinedAt: !835)
!842 = !DILocation(line: 862, column: 22, scope: !840, inlinedAt: !835)
!843 = !DILocation(line: 862, column: 7, scope: !818, inlinedAt: !835)
!844 = !DILocation(line: 868, column: 7, scope: !845, inlinedAt: !835)
!845 = distinct !DILexicalBlock(scope: !840, file: !69, line: 863, column: 5)
!846 = !DILocation(line: 870, column: 5, scope: !845, inlinedAt: !835)
!847 = !DILocation(line: 875, column: 3, scope: !818, inlinedAt: !835)
!848 = !DILocation(line: 877, column: 3, scope: !818, inlinedAt: !835)
!849 = !DILocation(line: 76, column: 3, scope: !791)
!850 = !DISubprogram(name: "dcgettext", scope: !851, file: !851, line: 51, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!851 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!852 = !DISubroutineType(types: !853)
!853 = !{!105, !111, !111, !70}
!854 = !DISubprogram(name: "__fprintf_chk", scope: !855, file: !855, line: 93, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!855 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!856 = !DISubroutineType(types: !857)
!857 = !{!70, !858, !70, !859, null}
!858 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!859 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!860 = !DISubprogram(name: "__printf_chk", scope: !855, file: !855, line: 95, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!861 = !DISubroutineType(types: !862)
!862 = !{!70, !70, !859, null}
!863 = !DISubprogram(name: "fputs_unlocked", scope: !405, file: !405, line: 691, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DISubroutineType(types: !865)
!865 = !{!70, !859, !858}
!866 = !DILocation(line: 0, scope: !161)
!867 = !DILocation(line: 581, column: 7, scope: !169)
!868 = !{!869, !869, i64 0}
!869 = !{!"int", !804, i64 0}
!870 = !DILocation(line: 581, column: 19, scope: !169)
!871 = !DILocation(line: 581, column: 7, scope: !161)
!872 = !DILocation(line: 585, column: 26, scope: !168)
!873 = !DILocation(line: 0, scope: !168)
!874 = !DILocation(line: 586, column: 23, scope: !168)
!875 = !DILocation(line: 586, column: 28, scope: !168)
!876 = !DILocation(line: 586, column: 32, scope: !168)
!877 = !{!804, !804, i64 0}
!878 = !DILocation(line: 586, column: 38, scope: !168)
!879 = !DILocalVariable(name: "__s1", arg: 1, scope: !880, file: !881, line: 1359, type: !111)
!880 = distinct !DISubprogram(name: "streq", scope: !881, file: !881, line: 1359, type: !882, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !884)
!881 = !DIFile(filename: "./lib/string.h", directory: "/src")
!882 = !DISubroutineType(types: !883)
!883 = !{!171, !111, !111}
!884 = !{!879, !885}
!885 = !DILocalVariable(name: "__s2", arg: 2, scope: !880, file: !881, line: 1359, type: !111)
!886 = !DILocation(line: 0, scope: !880, inlinedAt: !887)
!887 = distinct !DILocation(line: 586, column: 41, scope: !168)
!888 = !DILocation(line: 1361, column: 11, scope: !880, inlinedAt: !887)
!889 = !DILocation(line: 1361, column: 10, scope: !880, inlinedAt: !887)
!890 = !DILocation(line: 586, column: 19, scope: !168)
!891 = !DILocation(line: 587, column: 5, scope: !168)
!892 = !DILocation(line: 588, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !161, file: !69, line: 588, column: 7)
!894 = !DILocation(line: 588, column: 7, scope: !161)
!895 = !DILocation(line: 590, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !69, line: 589, column: 5)
!897 = !DILocation(line: 591, column: 7, scope: !896)
!898 = !DILocation(line: 595, column: 37, scope: !161)
!899 = !DILocation(line: 595, column: 35, scope: !161)
!900 = !DILocation(line: 596, column: 29, scope: !161)
!901 = !DILocation(line: 597, column: 8, scope: !177)
!902 = !DILocation(line: 597, column: 7, scope: !161)
!903 = !DILocation(line: 604, column: 24, scope: !176)
!904 = !DILocation(line: 604, column: 12, scope: !177)
!905 = !DILocation(line: 0, scope: !175)
!906 = !DILocation(line: 610, column: 16, scope: !175)
!907 = !DILocation(line: 610, column: 7, scope: !175)
!908 = !DILocation(line: 611, column: 21, scope: !175)
!909 = !{!910, !910, i64 0}
!910 = !{!"short", !804, i64 0}
!911 = !DILocation(line: 611, column: 19, scope: !175)
!912 = !DILocation(line: 611, column: 16, scope: !175)
!913 = !DILocation(line: 610, column: 30, scope: !175)
!914 = distinct !{!914, !907, !908, !915}
!915 = !{!"llvm.loop.mustprogress"}
!916 = !DILocation(line: 612, column: 18, scope: !917)
!917 = distinct !DILexicalBlock(scope: !175, file: !69, line: 612, column: 11)
!918 = !DILocation(line: 612, column: 11, scope: !175)
!919 = !DILocation(line: 620, column: 23, scope: !161)
!920 = !DILocation(line: 625, column: 39, scope: !161)
!921 = !DILocation(line: 626, column: 3, scope: !161)
!922 = !DILocation(line: 626, column: 10, scope: !161)
!923 = !DILocation(line: 626, column: 21, scope: !161)
!924 = !DILocation(line: 628, column: 44, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !69, line: 628, column: 11)
!926 = distinct !DILexicalBlock(scope: !161, file: !69, line: 627, column: 5)
!927 = !DILocation(line: 628, column: 32, scope: !925)
!928 = !DILocation(line: 628, column: 49, scope: !925)
!929 = !DILocation(line: 628, column: 11, scope: !926)
!930 = !DILocation(line: 630, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !926, file: !69, line: 630, column: 11)
!932 = !DILocation(line: 630, column: 11, scope: !926)
!933 = !DILocation(line: 632, column: 26, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !69, line: 632, column: 15)
!935 = distinct !DILexicalBlock(scope: !931, file: !69, line: 631, column: 9)
!936 = !DILocation(line: 632, column: 34, scope: !934)
!937 = !DILocation(line: 632, column: 37, scope: !934)
!938 = !DILocation(line: 632, column: 15, scope: !935)
!939 = !DILocation(line: 640, column: 16, scope: !926)
!940 = distinct !{!940, !921, !941, !915}
!941 = !DILocation(line: 641, column: 5, scope: !161)
!942 = !DILocation(line: 644, column: 3, scope: !161)
!943 = !DILocation(line: 0, scope: !880, inlinedAt: !944)
!944 = distinct !DILocation(line: 648, column: 31, scope: !161)
!945 = !DILocation(line: 0, scope: !880, inlinedAt: !946)
!946 = distinct !DILocation(line: 649, column: 31, scope: !161)
!947 = !DILocation(line: 0, scope: !880, inlinedAt: !948)
!948 = distinct !DILocation(line: 650, column: 31, scope: !161)
!949 = !DILocation(line: 0, scope: !880, inlinedAt: !950)
!950 = distinct !DILocation(line: 651, column: 31, scope: !161)
!951 = !DILocation(line: 0, scope: !880, inlinedAt: !952)
!952 = distinct !DILocation(line: 652, column: 31, scope: !161)
!953 = !DILocation(line: 0, scope: !880, inlinedAt: !954)
!954 = distinct !DILocation(line: 653, column: 31, scope: !161)
!955 = !DILocation(line: 0, scope: !880, inlinedAt: !956)
!956 = distinct !DILocation(line: 654, column: 31, scope: !161)
!957 = !DILocation(line: 0, scope: !880, inlinedAt: !958)
!958 = distinct !DILocation(line: 655, column: 31, scope: !161)
!959 = !DILocation(line: 0, scope: !880, inlinedAt: !960)
!960 = distinct !DILocation(line: 656, column: 31, scope: !161)
!961 = !DILocation(line: 0, scope: !880, inlinedAt: !962)
!962 = distinct !DILocation(line: 657, column: 31, scope: !161)
!963 = !DILocation(line: 663, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !161, file: !69, line: 663, column: 7)
!965 = !DILocation(line: 664, column: 7, scope: !964)
!966 = !DILocation(line: 664, column: 10, scope: !964)
!967 = !DILocation(line: 663, column: 7, scope: !161)
!968 = !DILocation(line: 669, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !69, line: 665, column: 5)
!970 = !DILocation(line: 671, column: 5, scope: !969)
!971 = !DILocation(line: 676, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !964, file: !69, line: 673, column: 5)
!973 = !DILocation(line: 679, column: 3, scope: !161)
!974 = !DILocation(line: 683, column: 3, scope: !161)
!975 = !DILocation(line: 686, column: 3, scope: !161)
!976 = !DILocation(line: 688, column: 3, scope: !161)
!977 = !DILocation(line: 691, column: 3, scope: !161)
!978 = !DILocation(line: 695, column: 3, scope: !161)
!979 = !DILocation(line: 696, column: 1, scope: !161)
!980 = !DISubprogram(name: "setlocale", scope: !981, file: !981, line: 122, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!982 = !DISubroutineType(types: !983)
!983 = !{!105, !70, !111}
!984 = !DISubprogram(name: "strncmp", scope: !985, file: !985, line: 159, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!985 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!986 = !DISubroutineType(types: !987)
!987 = !{!70, !111, !111, !108}
!988 = !DISubprogram(name: "exit", scope: !989, file: !989, line: 624, type: !792, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!989 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!990 = !DISubprogram(name: "getenv", scope: !989, file: !989, line: 641, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!105, !111}
!993 = !DISubprogram(name: "strcmp", scope: !985, file: !985, line: 156, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{!70, !111, !111}
!996 = !DISubprogram(name: "strspn", scope: !985, file: !985, line: 297, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DISubroutineType(types: !998)
!998 = !{!110, !111, !111}
!999 = !DISubprogram(name: "strchr", scope: !985, file: !985, line: 246, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!105, !111, !70}
!1002 = !DISubprogram(name: "__ctype_b_loc", scope: !90, file: !90, line: 79, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1008 = !DISubprogram(name: "strcspn", scope: !985, file: !985, line: 293, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubprogram(name: "fwrite_unlocked", scope: !405, file: !405, line: 704, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!108, !1012, !108, !108, !858}
!1012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1015 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 80, type: !1016, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1019)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!70, !70, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1028, !1029, !1032, !1036, !1042, !1043}
!1020 = !DILocalVariable(name: "argc", arg: 1, scope: !1015, file: !2, line: 80, type: !70)
!1021 = !DILocalVariable(name: "argv", arg: 2, scope: !1015, file: !2, line: 80, type: !1018)
!1022 = !DILocalVariable(name: "specified_mode", scope: !1015, file: !2, line: 82, type: !111)
!1023 = !DILocalVariable(name: "scontext", scope: !1015, file: !2, line: 83, type: !111)
!1024 = !DILocalVariable(name: "set_security_context", scope: !1015, file: !2, line: 84, type: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1027, line: 53, flags: DIFlagFwdDecl)
!1027 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1028 = !DILocalVariable(name: "optc", scope: !1015, file: !2, line: 94, type: !70)
!1029 = !DILocalVariable(name: "ret", scope: !1030, file: !2, line: 142, type: !70)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 141, column: 5)
!1031 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 140, column: 7)
!1032 = !DILocalVariable(name: "newmode", scope: !1015, file: !2, line: 154, type: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1034, line: 69, baseType: !1035)
!1034 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !211, line: 150, baseType: !76)
!1036 = !DILocalVariable(name: "change", scope: !1037, file: !2, line: 157, type: !1039)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 156, column: 5)
!1038 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 155, column: 7)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1041, line: 35, flags: DIFlagFwdDecl)
!1041 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1042 = !DILocalVariable(name: "umask_value", scope: !1037, file: !2, line: 160, type: !1033)
!1043 = !DILocalVariable(name: "exit_status", scope: !1015, file: !2, line: 169, type: !70)
!1044 = !DILocation(line: 0, scope: !1015)
!1045 = !DILocation(line: 87, column: 21, scope: !1015)
!1046 = !DILocation(line: 87, column: 3, scope: !1015)
!1047 = !DILocation(line: 88, column: 3, scope: !1015)
!1048 = !DILocation(line: 89, column: 3, scope: !1015)
!1049 = !DILocation(line: 90, column: 3, scope: !1015)
!1050 = !DILocation(line: 92, column: 3, scope: !1015)
!1051 = !DILocation(line: 95, column: 3, scope: !1015)
!1052 = !DILocation(line: 95, column: 18, scope: !1015)
!1053 = !DILocation(line: 100, column: 28, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 98, column: 9)
!1055 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 96, column: 5)
!1056 = !DILocation(line: 101, column: 11, scope: !1054)
!1057 = distinct !{!1057, !1051, !1058, !915}
!1058 = !DILocation(line: 132, column: 5, scope: !1015)
!1059 = !DILocation(line: 120, column: 20, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 120, column: 20)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 108, column: 20)
!1062 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 103, column: 15)
!1063 = !DILocation(line: 120, column: 20, scope: !1061)
!1064 = !DILocation(line: 122, column: 15, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 121, column: 13)
!1066 = !DILocation(line: 125, column: 13, scope: !1065)
!1067 = !DILocation(line: 127, column: 9, scope: !1054)
!1068 = !DILocation(line: 128, column: 9, scope: !1054)
!1069 = !DILocation(line: 130, column: 11, scope: !1054)
!1070 = !DILocation(line: 134, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 134, column: 7)
!1072 = !DILocation(line: 134, column: 14, scope: !1071)
!1073 = !DILocation(line: 134, column: 7, scope: !1015)
!1074 = !DILocation(line: 136, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 135, column: 5)
!1076 = !DILocation(line: 137, column: 7, scope: !1075)
!1077 = !DILocation(line: 155, column: 7, scope: !1038)
!1078 = !DILocation(line: 155, column: 7, scope: !1015)
!1079 = !DILocation(line: 157, column: 36, scope: !1037)
!1080 = !DILocation(line: 0, scope: !1037)
!1081 = !DILocation(line: 158, column: 12, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 158, column: 11)
!1083 = !DILocation(line: 158, column: 11, scope: !1037)
!1084 = !DILocation(line: 159, column: 9, scope: !1082)
!1085 = !DILocation(line: 160, column: 28, scope: !1037)
!1086 = !DILocation(line: 161, column: 7, scope: !1037)
!1087 = !DILocation(line: 162, column: 17, scope: !1037)
!1088 = !DILocation(line: 163, column: 7, scope: !1037)
!1089 = !DILocation(line: 164, column: 19, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 164, column: 11)
!1091 = !DILocation(line: 164, column: 11, scope: !1037)
!1092 = !DILocation(line: 170, column: 10, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 170, column: 3)
!1094 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 170, column: 3)
!1095 = !DILocation(line: 165, column: 9, scope: !1090)
!1096 = !DILocation(line: 170, column: 17, scope: !1093)
!1097 = !DILocation(line: 170, column: 3, scope: !1094)
!1098 = !DILocation(line: 174, column: 19, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 174, column: 11)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 171, column: 5)
!1101 = !DILocation(line: 174, column: 11, scope: !1099)
!1102 = !DILocation(line: 174, column: 42, scope: !1099)
!1103 = !DILocation(line: 174, column: 11, scope: !1100)
!1104 = !DILocation(line: 179, column: 31, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 179, column: 16)
!1106 = !DILocation(line: 179, column: 47, scope: !1105)
!1107 = !DILocation(line: 179, column: 42, scope: !1105)
!1108 = !DILocation(line: 179, column: 34, scope: !1105)
!1109 = !DILocation(line: 179, column: 65, scope: !1105)
!1110 = !DILocation(line: 179, column: 16, scope: !1099)
!1111 = !DILocation(line: 0, scope: !1099)
!1112 = !DILocation(line: 170, column: 25, scope: !1093)
!1113 = distinct !{!1113, !1097, !1114, !915}
!1114 = !DILocation(line: 185, column: 5, scope: !1094)
!1115 = !DILocation(line: 187, column: 3, scope: !1015)
!1116 = !DISubprogram(name: "bindtextdomain", scope: !851, file: !851, line: 86, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!105, !111, !111}
!1119 = !DISubprogram(name: "textdomain", scope: !851, file: !851, line: 82, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1120 = !DISubprogram(name: "atexit", scope: !989, file: !989, line: 602, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!70, !444}
!1123 = !DISubprogram(name: "getopt_long", scope: !362, file: !362, line: 66, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!70, !70, !1126, !111, !1128, !367}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1129 = !DISubprogram(name: "umask", scope: !1130, file: !1130, line: 380, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!1035, !1035}
!1133 = !DISubprogram(name: "free", scope: !989, file: !989, line: 555, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !106}
!1136 = !DISubprogram(name: "mkfifo", scope: !1130, file: !1130, line: 418, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!70, !111, !1035}
!1139 = !DISubprogram(name: "lchmod", scope: !1130, file: !1130, line: 359, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1140 = !DISubprogram(name: "__errno_location", scope: !1141, file: !1141, line: 37, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1141 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!367}
!1144 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !379, file: !379, line: 50, type: !819, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1145)
!1145 = !{!1146}
!1146 = !DILocalVariable(name: "file", arg: 1, scope: !1144, file: !379, line: 50, type: !111)
!1147 = !DILocation(line: 0, scope: !1144)
!1148 = !DILocation(line: 52, column: 13, scope: !1144)
!1149 = !DILocation(line: 53, column: 1, scope: !1144)
!1150 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !379, file: !379, line: 87, type: !1151, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !171}
!1153 = !{!1154}
!1154 = !DILocalVariable(name: "ignore", arg: 1, scope: !1150, file: !379, line: 87, type: !171)
!1155 = !DILocation(line: 0, scope: !1150)
!1156 = !DILocation(line: 89, column: 16, scope: !1150)
!1157 = !{!1158, !1158, i64 0}
!1158 = !{!"_Bool", !804, i64 0}
!1159 = !DILocation(line: 90, column: 1, scope: !1150)
!1160 = distinct !DISubprogram(name: "close_stdout", scope: !379, file: !379, line: 116, type: !445, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1161)
!1161 = !{!1162}
!1162 = !DILocalVariable(name: "write_error", scope: !1163, file: !379, line: 121, type: !111)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !379, line: 120, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !379, line: 118, column: 7)
!1165 = !DILocation(line: 118, column: 21, scope: !1164)
!1166 = !DILocation(line: 118, column: 7, scope: !1164)
!1167 = !DILocation(line: 118, column: 29, scope: !1164)
!1168 = !DILocation(line: 119, column: 7, scope: !1164)
!1169 = !DILocation(line: 119, column: 12, scope: !1164)
!1170 = !{i8 0, i8 2}
!1171 = !DILocation(line: 119, column: 25, scope: !1164)
!1172 = !DILocation(line: 119, column: 28, scope: !1164)
!1173 = !DILocation(line: 119, column: 34, scope: !1164)
!1174 = !DILocation(line: 118, column: 7, scope: !1160)
!1175 = !DILocation(line: 121, column: 33, scope: !1163)
!1176 = !DILocation(line: 0, scope: !1163)
!1177 = !DILocation(line: 122, column: 11, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1163, file: !379, line: 122, column: 11)
!1179 = !DILocation(line: 0, scope: !1178)
!1180 = !DILocation(line: 122, column: 11, scope: !1163)
!1181 = !DILocation(line: 123, column: 9, scope: !1178)
!1182 = !DILocation(line: 126, column: 9, scope: !1178)
!1183 = !DILocation(line: 128, column: 14, scope: !1163)
!1184 = !DILocation(line: 128, column: 7, scope: !1163)
!1185 = !DILocation(line: 133, column: 42, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1160, file: !379, line: 133, column: 7)
!1187 = !DILocation(line: 133, column: 28, scope: !1186)
!1188 = !DILocation(line: 133, column: 50, scope: !1186)
!1189 = !DILocation(line: 133, column: 7, scope: !1160)
!1190 = !DILocation(line: 134, column: 12, scope: !1186)
!1191 = !DILocation(line: 134, column: 5, scope: !1186)
!1192 = !DILocation(line: 135, column: 1, scope: !1160)
!1193 = !DISubprogram(name: "_exit", scope: !1194, file: !1194, line: 624, type: !792, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1194 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1195 = distinct !DISubprogram(name: "verror", scope: !394, file: !394, line: 251, type: !1196, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !70, !70, !111, !404}
!1198 = !{!1199, !1200, !1201, !1202}
!1199 = !DILocalVariable(name: "status", arg: 1, scope: !1195, file: !394, line: 251, type: !70)
!1200 = !DILocalVariable(name: "errnum", arg: 2, scope: !1195, file: !394, line: 251, type: !70)
!1201 = !DILocalVariable(name: "message", arg: 3, scope: !1195, file: !394, line: 251, type: !111)
!1202 = !DILocalVariable(name: "args", arg: 4, scope: !1195, file: !394, line: 251, type: !404)
!1203 = !DILocation(line: 0, scope: !1195)
!1204 = !DILocation(line: 261, column: 3, scope: !1195)
!1205 = !DILocation(line: 265, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1195, file: !394, line: 265, column: 7)
!1207 = !DILocation(line: 265, column: 7, scope: !1195)
!1208 = !DILocation(line: 266, column: 5, scope: !1206)
!1209 = !DILocation(line: 272, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !394, line: 268, column: 5)
!1211 = !DILocation(line: 276, column: 3, scope: !1195)
!1212 = !{i64 0, i64 8, !802, i64 8, i64 8, !802, i64 16, i64 8, !802, i64 24, i64 4, !868, i64 28, i64 4, !868}
!1213 = !DILocation(line: 282, column: 1, scope: !1195)
!1214 = distinct !DISubprogram(name: "flush_stdout", scope: !394, file: !394, line: 163, type: !445, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1215)
!1215 = !{!1216}
!1216 = !DILocalVariable(name: "stdout_fd", scope: !1214, file: !394, line: 166, type: !70)
!1217 = !DILocation(line: 0, scope: !1214)
!1218 = !DILocalVariable(name: "fd", arg: 1, scope: !1219, file: !394, line: 145, type: !70)
!1219 = distinct !DISubprogram(name: "is_open", scope: !394, file: !394, line: 145, type: !1220, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!70, !70}
!1222 = !{!1218}
!1223 = !DILocation(line: 0, scope: !1219, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 182, column: 25, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1214, file: !394, line: 182, column: 7)
!1226 = !DILocation(line: 157, column: 15, scope: !1219, inlinedAt: !1224)
!1227 = !DILocation(line: 157, column: 12, scope: !1219, inlinedAt: !1224)
!1228 = !DILocation(line: 182, column: 7, scope: !1214)
!1229 = !DILocation(line: 184, column: 5, scope: !1225)
!1230 = !DILocation(line: 185, column: 1, scope: !1214)
!1231 = distinct !DISubprogram(name: "error_tail", scope: !394, file: !394, line: 219, type: !1196, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1232)
!1232 = !{!1233, !1234, !1235, !1236}
!1233 = !DILocalVariable(name: "status", arg: 1, scope: !1231, file: !394, line: 219, type: !70)
!1234 = !DILocalVariable(name: "errnum", arg: 2, scope: !1231, file: !394, line: 219, type: !70)
!1235 = !DILocalVariable(name: "message", arg: 3, scope: !1231, file: !394, line: 219, type: !111)
!1236 = !DILocalVariable(name: "args", arg: 4, scope: !1231, file: !394, line: 219, type: !404)
!1237 = distinct !DIAssignID()
!1238 = !DILocation(line: 0, scope: !1231)
!1239 = !DILocation(line: 229, column: 13, scope: !1231)
!1240 = !DILocation(line: 135, column: 10, scope: !1241, inlinedAt: !1283)
!1241 = distinct !DISubprogram(name: "vfprintf", scope: !855, file: !855, line: 132, type: !1242, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1279)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!70, !1244, !859, !406}
!1244 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1247, file: !188, line: 51, baseType: !70, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1247, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1247, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1247, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1247, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1247, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1247, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1247, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1247, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1247, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1247, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1247, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1247, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1247, file: !188, line: 70, baseType: !1263, size: 64, offset: 832)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1247, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1247, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1247, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1247, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1247, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1247, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1247, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1247, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1247, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1247, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1247, file: !188, line: 93, baseType: !1263, size: 64, offset: 1344)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1247, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1247, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1247, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1247, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!1279 = !{!1280, !1281, !1282}
!1280 = !DILocalVariable(name: "__stream", arg: 1, scope: !1241, file: !855, line: 132, type: !1244)
!1281 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1241, file: !855, line: 133, type: !859)
!1282 = !DILocalVariable(name: "__ap", arg: 3, scope: !1241, file: !855, line: 133, type: !406)
!1283 = distinct !DILocation(line: 229, column: 3, scope: !1231)
!1284 = !{!1285, !1287}
!1285 = distinct !{!1285, !1286, !"vfprintf.inline: argument 0"}
!1286 = distinct !{!1286, !"vfprintf.inline"}
!1287 = distinct !{!1287, !1286, !"vfprintf.inline: argument 1"}
!1288 = !DILocation(line: 229, column: 3, scope: !1231)
!1289 = !DILocation(line: 0, scope: !1241, inlinedAt: !1283)
!1290 = !DILocation(line: 232, column: 3, scope: !1231)
!1291 = !DILocation(line: 233, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1231, file: !394, line: 233, column: 7)
!1293 = !DILocation(line: 233, column: 7, scope: !1231)
!1294 = !DILocalVariable(name: "errbuf", scope: !1295, file: !394, line: 193, type: !1299)
!1295 = distinct !DISubprogram(name: "print_errno_message", scope: !394, file: !394, line: 188, type: !792, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1296)
!1296 = !{!1297, !1298, !1294}
!1297 = !DILocalVariable(name: "errnum", arg: 1, scope: !1295, file: !394, line: 188, type: !70)
!1298 = !DILocalVariable(name: "s", scope: !1295, file: !394, line: 190, type: !111)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 1024)
!1302 = !DILocation(line: 0, scope: !1295, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 234, column: 5, scope: !1292)
!1304 = !DILocation(line: 193, column: 3, scope: !1295, inlinedAt: !1303)
!1305 = !DILocation(line: 195, column: 7, scope: !1295, inlinedAt: !1303)
!1306 = !DILocation(line: 207, column: 9, scope: !1307, inlinedAt: !1303)
!1307 = distinct !DILexicalBlock(scope: !1295, file: !394, line: 207, column: 7)
!1308 = !DILocation(line: 207, column: 7, scope: !1295, inlinedAt: !1303)
!1309 = !DILocation(line: 208, column: 9, scope: !1307, inlinedAt: !1303)
!1310 = !DILocation(line: 208, column: 5, scope: !1307, inlinedAt: !1303)
!1311 = !DILocation(line: 214, column: 3, scope: !1295, inlinedAt: !1303)
!1312 = !DILocation(line: 216, column: 1, scope: !1295, inlinedAt: !1303)
!1313 = !DILocation(line: 234, column: 5, scope: !1292)
!1314 = !DILocation(line: 238, column: 3, scope: !1231)
!1315 = !DILocalVariable(name: "__c", arg: 1, scope: !1316, file: !1317, line: 101, type: !70)
!1316 = distinct !DISubprogram(name: "putc_unlocked", scope: !1317, file: !1317, line: 101, type: !1318, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1320)
!1317 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!70, !70, !1245}
!1320 = !{!1315, !1321}
!1321 = !DILocalVariable(name: "__stream", arg: 2, scope: !1316, file: !1317, line: 101, type: !1245)
!1322 = !DILocation(line: 0, scope: !1316, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 238, column: 3, scope: !1231)
!1324 = !DILocation(line: 103, column: 10, scope: !1316, inlinedAt: !1323)
!1325 = !{!1326, !803, i64 40}
!1326 = !{!"_IO_FILE", !869, i64 0, !803, i64 8, !803, i64 16, !803, i64 24, !803, i64 32, !803, i64 40, !803, i64 48, !803, i64 56, !803, i64 64, !803, i64 72, !803, i64 80, !803, i64 88, !803, i64 96, !803, i64 104, !869, i64 112, !869, i64 116, !1327, i64 120, !910, i64 128, !804, i64 130, !804, i64 131, !803, i64 136, !1327, i64 144, !803, i64 152, !803, i64 160, !803, i64 168, !803, i64 176, !1327, i64 184, !869, i64 192, !804, i64 196}
!1327 = !{!"long", !804, i64 0}
!1328 = !{!1326, !803, i64 48}
!1329 = !{!"branch_weights", i32 2000, i32 1}
!1330 = !DILocation(line: 240, column: 3, scope: !1231)
!1331 = !DILocation(line: 241, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1231, file: !394, line: 241, column: 7)
!1333 = !DILocation(line: 241, column: 7, scope: !1231)
!1334 = !DILocation(line: 242, column: 5, scope: !1332)
!1335 = !DILocation(line: 243, column: 1, scope: !1231)
!1336 = !DISubprogram(name: "__vfprintf_chk", scope: !855, file: !855, line: 96, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!70, !1244, !70, !859, !406}
!1339 = !DISubprogram(name: "strerror_r", scope: !985, file: !985, line: 444, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!105, !70, !105, !108}
!1342 = !DISubprogram(name: "__overflow", scope: !405, file: !405, line: 886, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!70, !1245, !70}
!1345 = !DISubprogram(name: "fflush_unlocked", scope: !405, file: !405, line: 239, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!70, !1245}
!1348 = !DISubprogram(name: "fcntl", scope: !1349, file: !1349, line: 149, type: !1350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1349 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!70, !70, !70, null}
!1352 = distinct !DISubprogram(name: "error", scope: !394, file: !394, line: 285, type: !1353, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !70, !70, !111, null}
!1355 = !{!1356, !1357, !1358, !1359}
!1356 = !DILocalVariable(name: "status", arg: 1, scope: !1352, file: !394, line: 285, type: !70)
!1357 = !DILocalVariable(name: "errnum", arg: 2, scope: !1352, file: !394, line: 285, type: !70)
!1358 = !DILocalVariable(name: "message", arg: 3, scope: !1352, file: !394, line: 285, type: !111)
!1359 = !DILocalVariable(name: "ap", scope: !1352, file: !394, line: 287, type: !404)
!1360 = distinct !DIAssignID()
!1361 = !DILocation(line: 0, scope: !1352)
!1362 = !DILocation(line: 287, column: 3, scope: !1352)
!1363 = !DILocation(line: 288, column: 3, scope: !1352)
!1364 = !DILocation(line: 289, column: 3, scope: !1352)
!1365 = !DILocation(line: 290, column: 3, scope: !1352)
!1366 = !DILocation(line: 291, column: 1, scope: !1352)
!1367 = !DILocation(line: 0, scope: !401)
!1368 = !DILocation(line: 302, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !401, file: !394, line: 302, column: 7)
!1370 = !DILocation(line: 302, column: 7, scope: !401)
!1371 = !DILocation(line: 307, column: 11, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !394, line: 307, column: 11)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !394, line: 303, column: 5)
!1374 = !DILocation(line: 307, column: 27, scope: !1372)
!1375 = !DILocation(line: 308, column: 11, scope: !1372)
!1376 = !DILocation(line: 308, column: 28, scope: !1372)
!1377 = !DILocation(line: 308, column: 25, scope: !1372)
!1378 = !DILocation(line: 309, column: 15, scope: !1372)
!1379 = !DILocation(line: 309, column: 33, scope: !1372)
!1380 = !DILocation(line: 310, column: 19, scope: !1372)
!1381 = !DILocation(line: 311, column: 22, scope: !1372)
!1382 = !DILocation(line: 311, column: 56, scope: !1372)
!1383 = !DILocation(line: 307, column: 11, scope: !1373)
!1384 = !DILocation(line: 316, column: 21, scope: !1373)
!1385 = !DILocation(line: 317, column: 23, scope: !1373)
!1386 = !DILocation(line: 318, column: 5, scope: !1373)
!1387 = !DILocation(line: 327, column: 3, scope: !401)
!1388 = !DILocation(line: 331, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !401, file: !394, line: 331, column: 7)
!1390 = !DILocation(line: 331, column: 7, scope: !401)
!1391 = !DILocation(line: 332, column: 5, scope: !1389)
!1392 = !DILocation(line: 338, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !394, line: 334, column: 5)
!1394 = !DILocation(line: 346, column: 3, scope: !401)
!1395 = !DILocation(line: 350, column: 3, scope: !401)
!1396 = !DILocation(line: 356, column: 1, scope: !401)
!1397 = distinct !DISubprogram(name: "error_at_line", scope: !394, file: !394, line: 359, type: !1398, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !70, !70, !111, !76, !111, null}
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406}
!1401 = !DILocalVariable(name: "status", arg: 1, scope: !1397, file: !394, line: 359, type: !70)
!1402 = !DILocalVariable(name: "errnum", arg: 2, scope: !1397, file: !394, line: 359, type: !70)
!1403 = !DILocalVariable(name: "file_name", arg: 3, scope: !1397, file: !394, line: 359, type: !111)
!1404 = !DILocalVariable(name: "line_number", arg: 4, scope: !1397, file: !394, line: 360, type: !76)
!1405 = !DILocalVariable(name: "message", arg: 5, scope: !1397, file: !394, line: 360, type: !111)
!1406 = !DILocalVariable(name: "ap", scope: !1397, file: !394, line: 362, type: !404)
!1407 = distinct !DIAssignID()
!1408 = !DILocation(line: 0, scope: !1397)
!1409 = !DILocation(line: 362, column: 3, scope: !1397)
!1410 = !DILocation(line: 363, column: 3, scope: !1397)
!1411 = !DILocation(line: 364, column: 3, scope: !1397)
!1412 = !DILocation(line: 366, column: 3, scope: !1397)
!1413 = !DILocation(line: 367, column: 1, scope: !1397)
!1414 = distinct !DISubprogram(name: "getprogname", scope: !712, file: !712, line: 54, type: !1415, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!111}
!1417 = !DILocation(line: 58, column: 10, scope: !1414)
!1418 = !DILocation(line: 58, column: 3, scope: !1414)
!1419 = distinct !DISubprogram(name: "mode_compile", scope: !714, file: !714, line: 134, type: !1420, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !1430)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1422, !111}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !714, line: 98, size: 128, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1423, file: !714, line: 100, baseType: !4, size: 8)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1423, file: !714, line: 101, baseType: !4, size: 8, offset: 8)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1423, file: !714, line: 102, baseType: !1033, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1423, file: !714, line: 103, baseType: !1033, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1423, file: !714, line: 104, baseType: !1033, size: 32, offset: 96)
!1430 = !{!1431, !1432, !1435, !1436, !1437, !1438, !1439, !1441, !1443, !1444, !1445, !1449, !1450, !1452, !1453, !1454, !1455, !1458, !1459, !1460}
!1431 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1419, file: !714, line: 134, type: !111)
!1432 = !DILocalVariable(name: "p", scope: !1433, file: !714, line: 138, type: !111)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !714, line: 137, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1419, file: !714, line: 136, column: 7)
!1435 = !DILocalVariable(name: "octal_mode", scope: !1433, file: !714, line: 139, type: !76)
!1436 = !DILocalVariable(name: "mode", scope: !1433, file: !714, line: 140, type: !1033)
!1437 = !DILocalVariable(name: "mentioned", scope: !1433, file: !714, line: 141, type: !1033)
!1438 = !DILocalVariable(name: "mc", scope: !1419, file: !714, line: 163, type: !1422)
!1439 = !DILocalVariable(name: "needed", scope: !1440, file: !714, line: 167, type: !108)
!1440 = distinct !DILexicalBlock(scope: !1419, file: !714, line: 166, column: 3)
!1441 = !DILocalVariable(name: "p", scope: !1442, file: !714, line: 168, type: !111)
!1442 = distinct !DILexicalBlock(scope: !1440, file: !714, line: 168, column: 5)
!1443 = !DILocalVariable(name: "used", scope: !1419, file: !714, line: 175, type: !108)
!1444 = !DILocalVariable(name: "p", scope: !1419, file: !714, line: 176, type: !111)
!1445 = !DILocalVariable(name: "affected", scope: !1446, file: !714, line: 180, type: !1033)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !714, line: 178, column: 5)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !714, line: 177, column: 3)
!1448 = distinct !DILexicalBlock(scope: !1419, file: !714, line: 177, column: 3)
!1449 = !DILabel(scope: !1446, name: "no_more_affected", file: !714, line: 203)
!1450 = !DILocalVariable(name: "op", scope: !1451, file: !714, line: 207, type: !4)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !714, line: 206, column: 9)
!1452 = !DILocalVariable(name: "value", scope: !1451, file: !714, line: 208, type: !1033)
!1453 = !DILocalVariable(name: "mentioned", scope: !1451, file: !714, line: 209, type: !1033)
!1454 = !DILocalVariable(name: "flag", scope: !1451, file: !714, line: 210, type: !4)
!1455 = !DILocalVariable(name: "octal_mode", scope: !1456, file: !714, line: 217, type: !76)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !714, line: 216, column: 15)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !714, line: 213, column: 13)
!1458 = !DILabel(scope: !1457, name: "no_more_values", file: !714, line: 284)
!1459 = !DILocalVariable(name: "change", scope: !1451, file: !714, line: 287, type: !1422)
!1460 = !DILabel(scope: !1419, name: "invalid", file: !714, line: 308)
!1461 = !DILocation(line: 0, scope: !1419)
!1462 = !DILocation(line: 136, column: 14, scope: !1434)
!1463 = !DILocation(line: 136, column: 27, scope: !1434)
!1464 = !DILocation(line: 168, column: 5, scope: !1442)
!1465 = !DILocation(line: 144, column: 7, scope: !1433)
!1466 = !DILocation(line: 146, column: 41, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1433, file: !714, line: 145, column: 9)
!1468 = !DILocation(line: 0, scope: !1433)
!1469 = !DILocation(line: 146, column: 26, scope: !1467)
!1470 = !DILocation(line: 146, column: 39, scope: !1467)
!1471 = !DILocation(line: 146, column: 46, scope: !1467)
!1472 = !DILocation(line: 147, column: 20, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1467, file: !714, line: 147, column: 15)
!1474 = !DILocation(line: 147, column: 15, scope: !1467)
!1475 = !DILocation(line: 146, column: 43, scope: !1467)
!1476 = !DILocation(line: 150, column: 21, scope: !1433)
!1477 = !DILocation(line: 150, column: 24, scope: !1433)
!1478 = distinct !{!1478, !1465, !1479, !915}
!1479 = !DILocation(line: 150, column: 35, scope: !1433)
!1480 = !DILocation(line: 152, column: 11, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1433, file: !714, line: 152, column: 11)
!1482 = !DILocation(line: 152, column: 11, scope: !1433)
!1483 = !DILocation(line: 156, column: 22, scope: !1433)
!1484 = !DILocation(line: 156, column: 36, scope: !1433)
!1485 = !DILocation(line: 156, column: 20, scope: !1433)
!1486 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1487, file: !714, line: 112, type: !1033)
!1487 = distinct !DISubprogram(name: "make_node_op_equals", scope: !714, file: !714, line: 112, type: !1488, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1422, !1033, !1033}
!1490 = !{!1486, !1491, !1492}
!1491 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1487, file: !714, line: 112, type: !1033)
!1492 = !DILocalVariable(name: "p", scope: !1487, file: !714, line: 114, type: !1422)
!1493 = !DILocation(line: 0, scope: !1487, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 159, column: 14, scope: !1433)
!1495 = !DILocation(line: 114, column: 27, scope: !1487, inlinedAt: !1494)
!1496 = !DILocation(line: 115, column: 9, scope: !1487, inlinedAt: !1494)
!1497 = !{!1498, !804, i64 0}
!1498 = !{!"mode_change", !804, i64 0, !804, i64 1, !869, i64 4, !869, i64 8, !869, i64 12}
!1499 = !DILocation(line: 116, column: 6, scope: !1487, inlinedAt: !1494)
!1500 = !DILocation(line: 116, column: 11, scope: !1487, inlinedAt: !1494)
!1501 = !{!1498, !804, i64 1}
!1502 = !DILocation(line: 117, column: 6, scope: !1487, inlinedAt: !1494)
!1503 = !DILocation(line: 117, column: 15, scope: !1487, inlinedAt: !1494)
!1504 = !{!1498, !869, i64 4}
!1505 = !DILocation(line: 118, column: 6, scope: !1487, inlinedAt: !1494)
!1506 = !DILocation(line: 118, column: 12, scope: !1487, inlinedAt: !1494)
!1507 = !{!1498, !869, i64 8}
!1508 = !DILocation(line: 119, column: 6, scope: !1487, inlinedAt: !1494)
!1509 = !DILocation(line: 119, column: 16, scope: !1487, inlinedAt: !1494)
!1510 = !{!1498, !869, i64 12}
!1511 = !DILocation(line: 120, column: 8, scope: !1487, inlinedAt: !1494)
!1512 = !DILocation(line: 120, column: 13, scope: !1487, inlinedAt: !1494)
!1513 = !DILocation(line: 159, column: 7, scope: !1433)
!1514 = !DILocation(line: 168, column: 39, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1442, file: !714, line: 168, column: 5)
!1516 = !DILocation(line: 0, scope: !1440)
!1517 = !DILocation(line: 168, scope: !1442)
!1518 = !DILocation(line: 0, scope: !1442)
!1519 = !DILocation(line: 170, column: 10, scope: !1440)
!1520 = !DILocation(line: 177, column: 8, scope: !1448)
!1521 = !DILocation(line: 169, column: 41, scope: !1515)
!1522 = !DILocation(line: 169, column: 14, scope: !1515)
!1523 = !DILocation(line: 168, column: 44, scope: !1515)
!1524 = !DILocation(line: 168, column: 5, scope: !1515)
!1525 = distinct !{!1525, !1464, !1526, !915}
!1526 = !DILocation(line: 169, column: 53, scope: !1442)
!1527 = !DILocation(line: 175, column: 10, scope: !1419)
!1528 = !DILocation(line: 177, scope: !1448)
!1529 = !DILocation(line: 0, scope: !1451)
!1530 = !DILocation(line: 0, scope: !1446)
!1531 = !DILocation(line: 183, column: 7, scope: !1446)
!1532 = !DILocation(line: 0, scope: !1448)
!1533 = !DILocation(line: 184, column: 17, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !714, line: 183, column: 7)
!1535 = distinct !DILexicalBlock(scope: !1446, file: !714, line: 183, column: 7)
!1536 = !DILocation(line: 184, column: 9, scope: !1534)
!1537 = !DILocation(line: 212, column: 11, scope: !1451)
!1538 = !DILocation(line: 189, column: 22, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1534, file: !714, line: 185, column: 11)
!1540 = !DILocation(line: 190, column: 13, scope: !1539)
!1541 = !DILocation(line: 192, column: 22, scope: !1539)
!1542 = !DILocation(line: 193, column: 13, scope: !1539)
!1543 = !DILocation(line: 195, column: 22, scope: !1539)
!1544 = !DILocation(line: 196, column: 13, scope: !1539)
!1545 = !DILocation(line: 0, scope: !1539)
!1546 = !DILocation(line: 183, column: 16, scope: !1534)
!1547 = !DILocation(line: 183, column: 7, scope: !1534)
!1548 = distinct !{!1548, !1549, !1550}
!1549 = !DILocation(line: 183, column: 7, scope: !1535)
!1550 = !DILocation(line: 202, column: 11, scope: !1535)
!1551 = !DILocation(line: 207, column: 21, scope: !1451)
!1552 = !DILocation(line: 180, column: 14, scope: !1446)
!1553 = !DILocation(line: 207, column: 23, scope: !1451)
!1554 = !DILocation(line: 212, column: 19, scope: !1451)
!1555 = !DILocation(line: 258, column: 15, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1457, file: !714, line: 258, column: 15)
!1557 = !DILocation(line: 219, column: 17, scope: !1456)
!1558 = !DILocation(line: 221, column: 51, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1456, file: !714, line: 220, column: 19)
!1560 = !DILocation(line: 0, scope: !1456)
!1561 = !DILocation(line: 221, column: 36, scope: !1559)
!1562 = !DILocation(line: 221, column: 49, scope: !1559)
!1563 = !DILocation(line: 221, column: 56, scope: !1559)
!1564 = !DILocation(line: 222, column: 30, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1559, file: !714, line: 222, column: 25)
!1566 = !DILocation(line: 222, column: 25, scope: !1559)
!1567 = !DILocation(line: 221, column: 53, scope: !1559)
!1568 = !DILocation(line: 225, column: 31, scope: !1456)
!1569 = !DILocation(line: 225, column: 34, scope: !1456)
!1570 = distinct !{!1570, !1557, !1571, !915}
!1571 = !DILocation(line: 225, column: 45, scope: !1456)
!1572 = !DILocation(line: 227, column: 21, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1456, file: !714, line: 227, column: 21)
!1574 = !DILocation(line: 227, column: 30, scope: !1573)
!1575 = !DILocation(line: 227, column: 37, scope: !1573)
!1576 = !DILocation(line: 239, column: 16, scope: !1457)
!1577 = !DILocation(line: 240, column: 15, scope: !1457)
!1578 = !DILocation(line: 245, column: 16, scope: !1457)
!1579 = !DILocation(line: 246, column: 15, scope: !1457)
!1580 = !DILocation(line: 251, column: 16, scope: !1457)
!1581 = !DILocation(line: 252, column: 15, scope: !1457)
!1582 = !DILocation(line: 259, column: 25, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1556, file: !714, line: 258, column: 15)
!1584 = !DILocation(line: 0, scope: !1457)
!1585 = !DILocation(line: 256, column: 20, scope: !1457)
!1586 = !DILocation(line: 259, column: 17, scope: !1583)
!1587 = !DILocation(line: 262, column: 27, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !714, line: 260, column: 19)
!1589 = !DILocation(line: 263, column: 21, scope: !1588)
!1590 = !DILocation(line: 265, column: 27, scope: !1588)
!1591 = !DILocation(line: 266, column: 21, scope: !1588)
!1592 = !DILocation(line: 268, column: 27, scope: !1588)
!1593 = !DILocation(line: 269, column: 21, scope: !1588)
!1594 = !DILocation(line: 275, column: 27, scope: !1588)
!1595 = !DILocation(line: 276, column: 21, scope: !1588)
!1596 = !DILocation(line: 279, column: 27, scope: !1588)
!1597 = !DILocation(line: 280, column: 21, scope: !1588)
!1598 = !DILocation(line: 258, column: 24, scope: !1583)
!1599 = !DILocation(line: 258, column: 15, scope: !1583)
!1600 = distinct !{!1600, !1555, !1601}
!1601 = !DILocation(line: 283, column: 19, scope: !1556)
!1602 = !DILocation(line: 294, column: 14, scope: !1451)
!1603 = !DILocation(line: 209, column: 18, scope: !1451)
!1604 = !DILocation(line: 288, column: 28, scope: !1451)
!1605 = !DILocation(line: 288, column: 21, scope: !1451)
!1606 = !DILocation(line: 289, column: 22, scope: !1451)
!1607 = !DILocation(line: 290, column: 19, scope: !1451)
!1608 = !DILocation(line: 290, column: 24, scope: !1451)
!1609 = !DILocation(line: 291, column: 19, scope: !1451)
!1610 = !DILocation(line: 291, column: 28, scope: !1451)
!1611 = !DILocation(line: 292, column: 19, scope: !1451)
!1612 = !DILocation(line: 292, column: 25, scope: !1451)
!1613 = !DILocation(line: 293, column: 19, scope: !1451)
!1614 = !DILocation(line: 293, column: 29, scope: !1451)
!1615 = !DILocation(line: 296, column: 14, scope: !1446)
!1616 = !DILocation(line: 296, column: 24, scope: !1446)
!1617 = !DILocation(line: 177, column: 28, scope: !1447)
!1618 = !DILocation(line: 177, column: 3, scope: !1447)
!1619 = distinct !{!1619, !1620, !1621}
!1620 = !DILocation(line: 177, column: 3, scope: !1448)
!1621 = !DILocation(line: 300, column: 5, scope: !1448)
!1622 = !DILocation(line: 304, column: 16, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !714, line: 303, column: 5)
!1624 = distinct !DILexicalBlock(scope: !1419, file: !714, line: 302, column: 7)
!1625 = !DILocation(line: 304, column: 21, scope: !1623)
!1626 = !DILocation(line: 305, column: 7, scope: !1623)
!1627 = !DILocation(line: 309, column: 3, scope: !1419)
!1628 = !DILocation(line: 308, column: 1, scope: !1419)
!1629 = !DILocation(line: 310, column: 3, scope: !1419)
!1630 = !DILocation(line: 311, column: 1, scope: !1419)
!1631 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !714, file: !714, line: 317, type: !1420, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !1632)
!1632 = !{!1633, !1634}
!1633 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1631, file: !714, line: 317, type: !111)
!1634 = !DILocalVariable(name: "ref_stats", scope: !1631, file: !714, line: 319, type: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1636, line: 44, size: 1024, elements: !1637)
!1636 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1637 = !{!1638, !1640, !1642, !1643, !1645, !1647, !1649, !1650, !1651, !1652, !1654, !1655, !1657, !1665, !1666, !1667}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1635, file: !1636, line: 46, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !211, line: 145, baseType: !110)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1635, file: !1636, line: 47, baseType: !1641, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !211, line: 148, baseType: !110)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1635, file: !1636, line: 48, baseType: !1035, size: 32, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1635, file: !1636, line: 49, baseType: !1644, size: 32, offset: 160)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !211, line: 151, baseType: !76)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1635, file: !1636, line: 50, baseType: !1646, size: 32, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !211, line: 146, baseType: !76)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1635, file: !1636, line: 51, baseType: !1648, size: 32, offset: 224)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !211, line: 147, baseType: !76)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1635, file: !1636, line: 52, baseType: !1639, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1635, file: !1636, line: 53, baseType: !1639, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1635, file: !1636, line: 54, baseType: !210, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1635, file: !1636, line: 55, baseType: !1653, size: 32, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !211, line: 175, baseType: !70)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1635, file: !1636, line: 56, baseType: !70, size: 32, offset: 480)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1635, file: !1636, line: 57, baseType: !1656, size: 64, offset: 512)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !211, line: 180, baseType: !212)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1635, file: !1636, line: 65, baseType: !1658, size: 128, offset: 576)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1659, line: 11, size: 128, elements: !1660)
!1659 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1660 = !{!1661, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1658, file: !1659, line: 16, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !211, line: 160, baseType: !212)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1658, file: !1659, line: 21, baseType: !1664, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !211, line: 197, baseType: !212)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1635, file: !1636, line: 66, baseType: !1658, size: 128, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1635, file: !1636, line: 67, baseType: !1658, size: 128, offset: 832)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1635, file: !1636, line: 79, baseType: !1668, size: 64, offset: 960)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !259)
!1669 = distinct !DIAssignID()
!1670 = !DILocation(line: 0, scope: !1631)
!1671 = !DILocation(line: 319, column: 3, scope: !1631)
!1672 = !DILocation(line: 321, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1631, file: !714, line: 321, column: 7)
!1674 = !DILocation(line: 321, column: 35, scope: !1673)
!1675 = !DILocation(line: 321, column: 7, scope: !1631)
!1676 = !DILocation(line: 323, column: 41, scope: !1631)
!1677 = !{!1678, !869, i64 16}
!1678 = !{!"stat", !1327, i64 0, !1327, i64 8, !869, i64 16, !869, i64 20, !869, i64 24, !869, i64 28, !1327, i64 32, !1327, i64 40, !1327, i64 48, !869, i64 56, !869, i64 60, !1327, i64 64, !1679, i64 72, !1679, i64 88, !1679, i64 104, !804, i64 120}
!1679 = !{!"timespec", !1327, i64 0, !1327, i64 8}
!1680 = !DILocation(line: 0, scope: !1487, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 323, column: 10, scope: !1631)
!1682 = !DILocation(line: 114, column: 27, scope: !1487, inlinedAt: !1681)
!1683 = !DILocation(line: 115, column: 9, scope: !1487, inlinedAt: !1681)
!1684 = !DILocation(line: 116, column: 6, scope: !1487, inlinedAt: !1681)
!1685 = !DILocation(line: 116, column: 11, scope: !1487, inlinedAt: !1681)
!1686 = !DILocation(line: 117, column: 6, scope: !1487, inlinedAt: !1681)
!1687 = !DILocation(line: 117, column: 15, scope: !1487, inlinedAt: !1681)
!1688 = !DILocation(line: 118, column: 6, scope: !1487, inlinedAt: !1681)
!1689 = !DILocation(line: 118, column: 12, scope: !1487, inlinedAt: !1681)
!1690 = !DILocation(line: 119, column: 6, scope: !1487, inlinedAt: !1681)
!1691 = !DILocation(line: 119, column: 16, scope: !1487, inlinedAt: !1681)
!1692 = !DILocation(line: 120, column: 8, scope: !1487, inlinedAt: !1681)
!1693 = !DILocation(line: 120, column: 13, scope: !1487, inlinedAt: !1681)
!1694 = !DILocation(line: 323, column: 3, scope: !1631)
!1695 = !DILocation(line: 324, column: 1, scope: !1631)
!1696 = !DISubprogram(name: "stat", scope: !1130, file: !1130, line: 205, type: !1697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!70, !859, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1700)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1701 = distinct !DISubprogram(name: "mode_adjust", scope: !714, file: !714, line: 340, type: !1702, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !1707)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1033, !1033, !171, !1033, !1704, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1719, !1720, !1721}
!1708 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1701, file: !714, line: 340, type: !1033)
!1709 = !DILocalVariable(name: "dir", arg: 2, scope: !1701, file: !714, line: 340, type: !171)
!1710 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1701, file: !714, line: 340, type: !1033)
!1711 = !DILocalVariable(name: "changes", arg: 4, scope: !1701, file: !714, line: 341, type: !1704)
!1712 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1701, file: !714, line: 341, type: !1706)
!1713 = !DILocalVariable(name: "newmode", scope: !1701, file: !714, line: 344, type: !1033)
!1714 = !DILocalVariable(name: "mode_bits", scope: !1701, file: !714, line: 347, type: !1033)
!1715 = !DILocalVariable(name: "affected", scope: !1716, file: !714, line: 351, type: !1033)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !714, line: 350, column: 5)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !714, line: 349, column: 3)
!1718 = distinct !DILexicalBlock(scope: !1701, file: !714, line: 349, column: 3)
!1719 = !DILocalVariable(name: "omit_change", scope: !1716, file: !714, line: 352, type: !1033)
!1720 = !DILocalVariable(name: "value", scope: !1716, file: !714, line: 354, type: !1033)
!1721 = !DILocalVariable(name: "preserved", scope: !1722, file: !714, line: 394, type: !1033)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !714, line: 393, column: 11)
!1723 = distinct !DILexicalBlock(scope: !1716, file: !714, line: 388, column: 9)
!1724 = !DILocation(line: 0, scope: !1701)
!1725 = !DILocation(line: 344, column: 28, scope: !1701)
!1726 = !DILocation(line: 349, column: 19, scope: !1717)
!1727 = !DILocation(line: 349, column: 24, scope: !1717)
!1728 = !DILocation(line: 349, column: 3, scope: !1718)
!1729 = !DILocation(line: 351, column: 34, scope: !1716)
!1730 = !DILocation(line: 0, scope: !1716)
!1731 = !DILocation(line: 353, column: 52, scope: !1716)
!1732 = !DILocation(line: 353, column: 41, scope: !1716)
!1733 = !DILocation(line: 353, column: 39, scope: !1716)
!1734 = !DILocation(line: 354, column: 31, scope: !1716)
!1735 = !DILocation(line: 356, column: 7, scope: !1716)
!1736 = !DILocation(line: 363, column: 17, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1716, file: !714, line: 357, column: 9)
!1738 = !DILocation(line: 366, column: 28, scope: !1737)
!1739 = !DILocation(line: 366, column: 22, scope: !1737)
!1740 = !DILocation(line: 368, column: 30, scope: !1737)
!1741 = !DILocation(line: 368, column: 24, scope: !1737)
!1742 = !DILocation(line: 370, column: 30, scope: !1737)
!1743 = !DILocation(line: 370, column: 24, scope: !1737)
!1744 = !DILocation(line: 370, column: 21, scope: !1737)
!1745 = !DILocation(line: 366, column: 17, scope: !1737)
!1746 = !DILocation(line: 372, column: 11, scope: !1737)
!1747 = !DILocation(line: 377, column: 24, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1737, file: !714, line: 377, column: 15)
!1749 = !DILocation(line: 377, column: 57, scope: !1748)
!1750 = !DILocation(line: 377, column: 15, scope: !1737)
!1751 = !DILocation(line: 385, column: 17, scope: !1716)
!1752 = !DILocation(line: 385, column: 55, scope: !1716)
!1753 = !DILocation(line: 385, column: 53, scope: !1716)
!1754 = !DILocation(line: 385, column: 13, scope: !1716)
!1755 = !DILocation(line: 387, column: 24, scope: !1716)
!1756 = !DILocation(line: 387, column: 7, scope: !1716)
!1757 = !DILocation(line: 394, column: 33, scope: !1722)
!1758 = !DILocation(line: 394, column: 59, scope: !1722)
!1759 = !DILocation(line: 0, scope: !1722)
!1760 = !DILocation(line: 395, column: 42, scope: !1722)
!1761 = !DILocation(line: 395, column: 23, scope: !1722)
!1762 = !DILocation(line: 396, column: 32, scope: !1722)
!1763 = !DILocation(line: 396, column: 45, scope: !1722)
!1764 = !DILocation(line: 401, column: 21, scope: !1723)
!1765 = !DILocation(line: 402, column: 19, scope: !1723)
!1766 = !DILocation(line: 403, column: 11, scope: !1723)
!1767 = !DILocation(line: 406, column: 21, scope: !1723)
!1768 = !DILocation(line: 407, column: 22, scope: !1723)
!1769 = !DILocation(line: 407, column: 19, scope: !1723)
!1770 = !DILocation(line: 408, column: 11, scope: !1723)
!1771 = !DILocation(line: 349, column: 45, scope: !1717)
!1772 = distinct !{!1772, !1728, !1773, !915}
!1773 = !DILocation(line: 410, column: 5, scope: !1718)
!1774 = !DILocation(line: 412, column: 7, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1701, file: !714, line: 412, column: 7)
!1776 = !DILocation(line: 347, column: 10, scope: !1701)
!1777 = !DILocation(line: 344, column: 10, scope: !1701)
!1778 = !DILocation(line: 412, column: 7, scope: !1701)
!1779 = !DILocation(line: 413, column: 17, scope: !1775)
!1780 = !DILocation(line: 413, column: 5, scope: !1775)
!1781 = !DILocation(line: 414, column: 3, scope: !1701)
!1782 = distinct !DISubprogram(name: "set_program_name", scope: !450, file: !450, line: 37, type: !819, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DILocalVariable(name: "argv0", arg: 1, scope: !1782, file: !450, line: 37, type: !111)
!1785 = !DILocalVariable(name: "slash", scope: !1782, file: !450, line: 44, type: !111)
!1786 = !DILocalVariable(name: "base", scope: !1782, file: !450, line: 45, type: !111)
!1787 = !DILocation(line: 0, scope: !1782)
!1788 = !DILocation(line: 44, column: 23, scope: !1782)
!1789 = !DILocation(line: 45, column: 22, scope: !1782)
!1790 = !DILocation(line: 46, column: 17, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1782, file: !450, line: 46, column: 7)
!1792 = !DILocation(line: 46, column: 9, scope: !1791)
!1793 = !DILocation(line: 46, column: 25, scope: !1791)
!1794 = !DILocation(line: 46, column: 40, scope: !1791)
!1795 = !DILocalVariable(name: "__s1", arg: 1, scope: !1796, file: !881, line: 974, type: !1013)
!1796 = distinct !DISubprogram(name: "memeq", scope: !881, file: !881, line: 974, type: !1797, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!171, !1013, !1013, !108}
!1799 = !{!1795, !1800, !1801}
!1800 = !DILocalVariable(name: "__s2", arg: 2, scope: !1796, file: !881, line: 974, type: !1013)
!1801 = !DILocalVariable(name: "__n", arg: 3, scope: !1796, file: !881, line: 974, type: !108)
!1802 = !DILocation(line: 0, scope: !1796, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 46, column: 28, scope: !1791)
!1804 = !DILocation(line: 976, column: 11, scope: !1796, inlinedAt: !1803)
!1805 = !DILocation(line: 976, column: 10, scope: !1796, inlinedAt: !1803)
!1806 = !DILocation(line: 46, column: 7, scope: !1782)
!1807 = !DILocation(line: 49, column: 11, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !450, line: 49, column: 11)
!1809 = distinct !DILexicalBlock(scope: !1791, file: !450, line: 47, column: 5)
!1810 = !DILocation(line: 49, column: 36, scope: !1808)
!1811 = !DILocation(line: 49, column: 11, scope: !1809)
!1812 = !DILocation(line: 65, column: 16, scope: !1782)
!1813 = !DILocation(line: 71, column: 27, scope: !1782)
!1814 = !DILocation(line: 74, column: 33, scope: !1782)
!1815 = !DILocation(line: 76, column: 1, scope: !1782)
!1816 = !DISubprogram(name: "strrchr", scope: !985, file: !985, line: 273, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1817 = distinct !DIAssignID()
!1818 = !DILocation(line: 0, scope: !459)
!1819 = distinct !DIAssignID()
!1820 = !DILocation(line: 40, column: 29, scope: !459)
!1821 = !DILocation(line: 41, column: 19, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !459, file: !460, line: 41, column: 7)
!1823 = !DILocation(line: 41, column: 7, scope: !459)
!1824 = !DILocation(line: 47, column: 3, scope: !459)
!1825 = !DILocation(line: 48, column: 3, scope: !459)
!1826 = !DILocalVariable(name: "ps", arg: 1, scope: !1827, file: !1828, line: 1135, type: !1831)
!1827 = distinct !DISubprogram(name: "mbszero", scope: !1828, file: !1828, line: 1135, type: !1829, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !1832)
!1828 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!1832 = !{!1826}
!1833 = !DILocation(line: 0, scope: !1827, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 48, column: 18, scope: !459)
!1835 = !DILocalVariable(name: "__dest", arg: 1, scope: !1836, file: !1837, line: 57, type: !106)
!1836 = distinct !DISubprogram(name: "memset", scope: !1837, file: !1837, line: 57, type: !1838, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !1840)
!1837 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!106, !106, !70, !108}
!1840 = !{!1835, !1841, !1842}
!1841 = !DILocalVariable(name: "__ch", arg: 2, scope: !1836, file: !1837, line: 57, type: !70)
!1842 = !DILocalVariable(name: "__len", arg: 3, scope: !1836, file: !1837, line: 57, type: !108)
!1843 = !DILocation(line: 0, scope: !1836, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 1137, column: 3, scope: !1827, inlinedAt: !1834)
!1845 = !DILocation(line: 59, column: 10, scope: !1836, inlinedAt: !1844)
!1846 = !DILocation(line: 49, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !459, file: !460, line: 49, column: 7)
!1848 = !DILocation(line: 49, column: 39, scope: !1847)
!1849 = !DILocation(line: 49, column: 44, scope: !1847)
!1850 = !DILocation(line: 54, column: 1, scope: !459)
!1851 = !DISubprogram(name: "mbrtoc32", scope: !471, file: !471, line: 57, type: !1852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!108, !1854, !859, !108, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1855)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1831)
!1857 = distinct !DISubprogram(name: "clone_quoting_options", scope: !490, file: !490, line: 113, type: !1858, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1861)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1860, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1861 = !{!1862, !1863, !1864}
!1862 = !DILocalVariable(name: "o", arg: 1, scope: !1857, file: !490, line: 113, type: !1860)
!1863 = !DILocalVariable(name: "saved_errno", scope: !1857, file: !490, line: 115, type: !70)
!1864 = !DILocalVariable(name: "p", scope: !1857, file: !490, line: 116, type: !1860)
!1865 = !DILocation(line: 0, scope: !1857)
!1866 = !DILocation(line: 115, column: 21, scope: !1857)
!1867 = !DILocation(line: 116, column: 40, scope: !1857)
!1868 = !DILocation(line: 116, column: 31, scope: !1857)
!1869 = !DILocation(line: 118, column: 9, scope: !1857)
!1870 = !DILocation(line: 119, column: 3, scope: !1857)
!1871 = distinct !DISubprogram(name: "get_quoting_style", scope: !490, file: !490, line: 124, type: !1872, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1876)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!513, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "o", arg: 1, scope: !1871, file: !490, line: 124, type: !1874)
!1878 = !DILocation(line: 0, scope: !1871)
!1879 = !DILocation(line: 126, column: 11, scope: !1871)
!1880 = !DILocation(line: 126, column: 46, scope: !1871)
!1881 = !{!1882, !869, i64 0}
!1882 = !{!"quoting_options", !869, i64 0, !869, i64 4, !804, i64 8, !803, i64 40, !803, i64 48}
!1883 = !DILocation(line: 126, column: 3, scope: !1871)
!1884 = distinct !DISubprogram(name: "set_quoting_style", scope: !490, file: !490, line: 132, type: !1885, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1887)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !1860, !513}
!1887 = !{!1888, !1889}
!1888 = !DILocalVariable(name: "o", arg: 1, scope: !1884, file: !490, line: 132, type: !1860)
!1889 = !DILocalVariable(name: "s", arg: 2, scope: !1884, file: !490, line: 132, type: !513)
!1890 = !DILocation(line: 0, scope: !1884)
!1891 = !DILocation(line: 134, column: 4, scope: !1884)
!1892 = !DILocation(line: 134, column: 45, scope: !1884)
!1893 = !DILocation(line: 135, column: 1, scope: !1884)
!1894 = distinct !DISubprogram(name: "set_char_quoting", scope: !490, file: !490, line: 143, type: !1895, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!70, !1860, !4, !70}
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1904, !1905}
!1898 = !DILocalVariable(name: "o", arg: 1, scope: !1894, file: !490, line: 143, type: !1860)
!1899 = !DILocalVariable(name: "c", arg: 2, scope: !1894, file: !490, line: 143, type: !4)
!1900 = !DILocalVariable(name: "i", arg: 3, scope: !1894, file: !490, line: 143, type: !70)
!1901 = !DILocalVariable(name: "uc", scope: !1894, file: !490, line: 145, type: !113)
!1902 = !DILocalVariable(name: "p", scope: !1894, file: !490, line: 146, type: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1904 = !DILocalVariable(name: "shift", scope: !1894, file: !490, line: 148, type: !70)
!1905 = !DILocalVariable(name: "r", scope: !1894, file: !490, line: 149, type: !76)
!1906 = !DILocation(line: 0, scope: !1894)
!1907 = !DILocation(line: 147, column: 6, scope: !1894)
!1908 = !DILocation(line: 147, column: 41, scope: !1894)
!1909 = !DILocation(line: 147, column: 62, scope: !1894)
!1910 = !DILocation(line: 147, column: 57, scope: !1894)
!1911 = !DILocation(line: 148, column: 15, scope: !1894)
!1912 = !DILocation(line: 149, column: 21, scope: !1894)
!1913 = !DILocation(line: 149, column: 24, scope: !1894)
!1914 = !DILocation(line: 149, column: 34, scope: !1894)
!1915 = !DILocation(line: 150, column: 19, scope: !1894)
!1916 = !DILocation(line: 150, column: 24, scope: !1894)
!1917 = !DILocation(line: 150, column: 6, scope: !1894)
!1918 = !DILocation(line: 151, column: 3, scope: !1894)
!1919 = distinct !DISubprogram(name: "set_quoting_flags", scope: !490, file: !490, line: 159, type: !1920, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!70, !1860, !70}
!1922 = !{!1923, !1924, !1925}
!1923 = !DILocalVariable(name: "o", arg: 1, scope: !1919, file: !490, line: 159, type: !1860)
!1924 = !DILocalVariable(name: "i", arg: 2, scope: !1919, file: !490, line: 159, type: !70)
!1925 = !DILocalVariable(name: "r", scope: !1919, file: !490, line: 163, type: !70)
!1926 = !DILocation(line: 0, scope: !1919)
!1927 = !DILocation(line: 161, column: 8, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !490, line: 161, column: 7)
!1929 = !DILocation(line: 161, column: 7, scope: !1919)
!1930 = !DILocation(line: 163, column: 14, scope: !1919)
!1931 = !{!1882, !869, i64 4}
!1932 = !DILocation(line: 164, column: 12, scope: !1919)
!1933 = !DILocation(line: 165, column: 3, scope: !1919)
!1934 = distinct !DISubprogram(name: "set_custom_quoting", scope: !490, file: !490, line: 169, type: !1935, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1860, !111, !111}
!1937 = !{!1938, !1939, !1940}
!1938 = !DILocalVariable(name: "o", arg: 1, scope: !1934, file: !490, line: 169, type: !1860)
!1939 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1934, file: !490, line: 170, type: !111)
!1940 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1934, file: !490, line: 170, type: !111)
!1941 = !DILocation(line: 0, scope: !1934)
!1942 = !DILocation(line: 172, column: 8, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1934, file: !490, line: 172, column: 7)
!1944 = !DILocation(line: 172, column: 7, scope: !1934)
!1945 = !DILocation(line: 174, column: 12, scope: !1934)
!1946 = !DILocation(line: 175, column: 8, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1934, file: !490, line: 175, column: 7)
!1948 = !DILocation(line: 175, column: 19, scope: !1947)
!1949 = !DILocation(line: 176, column: 5, scope: !1947)
!1950 = !DILocation(line: 177, column: 6, scope: !1934)
!1951 = !DILocation(line: 177, column: 17, scope: !1934)
!1952 = !{!1882, !803, i64 40}
!1953 = !DILocation(line: 178, column: 6, scope: !1934)
!1954 = !DILocation(line: 178, column: 18, scope: !1934)
!1955 = !{!1882, !803, i64 48}
!1956 = !DILocation(line: 179, column: 1, scope: !1934)
!1957 = !DISubprogram(name: "abort", scope: !989, file: !989, line: 598, type: !445, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1958 = distinct !DISubprogram(name: "quotearg_buffer", scope: !490, file: !490, line: 774, type: !1959, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!108, !105, !108, !111, !108, !1874}
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969}
!1962 = !DILocalVariable(name: "buffer", arg: 1, scope: !1958, file: !490, line: 774, type: !105)
!1963 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1958, file: !490, line: 774, type: !108)
!1964 = !DILocalVariable(name: "arg", arg: 3, scope: !1958, file: !490, line: 775, type: !111)
!1965 = !DILocalVariable(name: "argsize", arg: 4, scope: !1958, file: !490, line: 775, type: !108)
!1966 = !DILocalVariable(name: "o", arg: 5, scope: !1958, file: !490, line: 776, type: !1874)
!1967 = !DILocalVariable(name: "p", scope: !1958, file: !490, line: 778, type: !1874)
!1968 = !DILocalVariable(name: "saved_errno", scope: !1958, file: !490, line: 779, type: !70)
!1969 = !DILocalVariable(name: "r", scope: !1958, file: !490, line: 780, type: !108)
!1970 = !DILocation(line: 0, scope: !1958)
!1971 = !DILocation(line: 778, column: 37, scope: !1958)
!1972 = !DILocation(line: 779, column: 21, scope: !1958)
!1973 = !DILocation(line: 781, column: 43, scope: !1958)
!1974 = !DILocation(line: 781, column: 53, scope: !1958)
!1975 = !DILocation(line: 781, column: 63, scope: !1958)
!1976 = !DILocation(line: 782, column: 43, scope: !1958)
!1977 = !DILocation(line: 782, column: 58, scope: !1958)
!1978 = !DILocation(line: 780, column: 14, scope: !1958)
!1979 = !DILocation(line: 783, column: 9, scope: !1958)
!1980 = !DILocation(line: 784, column: 3, scope: !1958)
!1981 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !490, file: !490, line: 251, type: !1982, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1986)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!108, !105, !108, !111, !108, !513, !70, !1984, !111, !111}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2012, !2014, !2017, !2018, !2019, !2020, !2023, !2024, !2026, !2027, !2030, !2034, !2035, !2043, !2046, !2047, !2048}
!1987 = !DILocalVariable(name: "buffer", arg: 1, scope: !1981, file: !490, line: 251, type: !105)
!1988 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1981, file: !490, line: 251, type: !108)
!1989 = !DILocalVariable(name: "arg", arg: 3, scope: !1981, file: !490, line: 252, type: !111)
!1990 = !DILocalVariable(name: "argsize", arg: 4, scope: !1981, file: !490, line: 252, type: !108)
!1991 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1981, file: !490, line: 253, type: !513)
!1992 = !DILocalVariable(name: "flags", arg: 6, scope: !1981, file: !490, line: 253, type: !70)
!1993 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1981, file: !490, line: 254, type: !1984)
!1994 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1981, file: !490, line: 255, type: !111)
!1995 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1981, file: !490, line: 256, type: !111)
!1996 = !DILocalVariable(name: "unibyte_locale", scope: !1981, file: !490, line: 258, type: !171)
!1997 = !DILocalVariable(name: "len", scope: !1981, file: !490, line: 260, type: !108)
!1998 = !DILocalVariable(name: "orig_buffersize", scope: !1981, file: !490, line: 261, type: !108)
!1999 = !DILocalVariable(name: "quote_string", scope: !1981, file: !490, line: 262, type: !111)
!2000 = !DILocalVariable(name: "quote_string_len", scope: !1981, file: !490, line: 263, type: !108)
!2001 = !DILocalVariable(name: "backslash_escapes", scope: !1981, file: !490, line: 264, type: !171)
!2002 = !DILocalVariable(name: "elide_outer_quotes", scope: !1981, file: !490, line: 265, type: !171)
!2003 = !DILocalVariable(name: "encountered_single_quote", scope: !1981, file: !490, line: 266, type: !171)
!2004 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1981, file: !490, line: 267, type: !171)
!2005 = !DILabel(scope: !1981, name: "process_input", file: !490, line: 308)
!2006 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1981, file: !490, line: 309, type: !171)
!2007 = !DILocalVariable(name: "lq", scope: !2008, file: !490, line: 361, type: !111)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !490, line: 361, column: 11)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !490, line: 360, column: 13)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !490, line: 333, column: 7)
!2011 = distinct !DILexicalBlock(scope: !1981, file: !490, line: 312, column: 5)
!2012 = !DILocalVariable(name: "i", scope: !2013, file: !490, line: 395, type: !108)
!2013 = distinct !DILexicalBlock(scope: !1981, file: !490, line: 395, column: 3)
!2014 = !DILocalVariable(name: "is_right_quote", scope: !2015, file: !490, line: 397, type: !171)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !490, line: 396, column: 5)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !490, line: 395, column: 3)
!2017 = !DILocalVariable(name: "escaping", scope: !2015, file: !490, line: 398, type: !171)
!2018 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2015, file: !490, line: 399, type: !171)
!2019 = !DILocalVariable(name: "c", scope: !2015, file: !490, line: 417, type: !113)
!2020 = !DILabel(scope: !2021, name: "c_and_shell_escape", file: !490, line: 502)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !490, line: 478, column: 9)
!2022 = distinct !DILexicalBlock(scope: !2015, file: !490, line: 419, column: 9)
!2023 = !DILabel(scope: !2021, name: "c_escape", file: !490, line: 507)
!2024 = !DILocalVariable(name: "m", scope: !2025, file: !490, line: 598, type: !108)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !490, line: 596, column: 11)
!2026 = !DILocalVariable(name: "printable", scope: !2025, file: !490, line: 600, type: !171)
!2027 = !DILocalVariable(name: "mbs", scope: !2028, file: !490, line: 609, type: !562)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !490, line: 608, column: 15)
!2029 = distinct !DILexicalBlock(scope: !2025, file: !490, line: 602, column: 17)
!2030 = !DILocalVariable(name: "w", scope: !2031, file: !490, line: 618, type: !470)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !490, line: 617, column: 19)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !490, line: 616, column: 17)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !490, line: 616, column: 17)
!2034 = !DILocalVariable(name: "bytes", scope: !2031, file: !490, line: 619, type: !108)
!2035 = !DILocalVariable(name: "j", scope: !2036, file: !490, line: 648, type: !108)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !490, line: 648, column: 29)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !490, line: 647, column: 27)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !490, line: 645, column: 29)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !490, line: 636, column: 23)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !490, line: 628, column: 30)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !490, line: 623, column: 30)
!2042 = distinct !DILexicalBlock(scope: !2031, file: !490, line: 621, column: 25)
!2043 = !DILocalVariable(name: "ilim", scope: !2044, file: !490, line: 674, type: !108)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !490, line: 671, column: 15)
!2045 = distinct !DILexicalBlock(scope: !2025, file: !490, line: 670, column: 17)
!2046 = !DILabel(scope: !2015, name: "store_escape", file: !490, line: 709)
!2047 = !DILabel(scope: !2015, name: "store_c", file: !490, line: 712)
!2048 = !DILabel(scope: !1981, name: "force_outer_quoting_style", file: !490, line: 753)
!2049 = distinct !DIAssignID()
!2050 = distinct !DIAssignID()
!2051 = distinct !DIAssignID()
!2052 = distinct !DIAssignID()
!2053 = distinct !DIAssignID()
!2054 = !DILocation(line: 0, scope: !2028)
!2055 = distinct !DIAssignID()
!2056 = !DILocation(line: 0, scope: !2031)
!2057 = !DILocation(line: 0, scope: !1981)
!2058 = !DILocation(line: 258, column: 25, scope: !1981)
!2059 = !DILocation(line: 258, column: 36, scope: !1981)
!2060 = !DILocation(line: 267, column: 3, scope: !1981)
!2061 = !DILocation(line: 261, column: 10, scope: !1981)
!2062 = !DILocation(line: 262, column: 15, scope: !1981)
!2063 = !DILocation(line: 263, column: 10, scope: !1981)
!2064 = !DILocation(line: 308, column: 2, scope: !1981)
!2065 = !DILocation(line: 311, column: 3, scope: !1981)
!2066 = !DILocation(line: 318, column: 11, scope: !2011)
!2067 = !DILocation(line: 319, column: 9, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !490, line: 319, column: 9)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !490, line: 319, column: 9)
!2070 = distinct !DILexicalBlock(scope: !2011, file: !490, line: 318, column: 11)
!2071 = !DILocation(line: 319, column: 9, scope: !2069)
!2072 = !DILocation(line: 0, scope: !553, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 357, column: 26, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !490, line: 335, column: 11)
!2075 = distinct !DILexicalBlock(scope: !2010, file: !490, line: 334, column: 13)
!2076 = !DILocation(line: 199, column: 29, scope: !553, inlinedAt: !2073)
!2077 = !DILocation(line: 201, column: 19, scope: !2078, inlinedAt: !2073)
!2078 = distinct !DILexicalBlock(scope: !553, file: !490, line: 201, column: 7)
!2079 = !DILocation(line: 201, column: 7, scope: !553, inlinedAt: !2073)
!2080 = !DILocation(line: 229, column: 3, scope: !553, inlinedAt: !2073)
!2081 = !DILocation(line: 230, column: 3, scope: !553, inlinedAt: !2073)
!2082 = !DILocalVariable(name: "ps", arg: 1, scope: !2083, file: !1828, line: 1135, type: !2086)
!2083 = distinct !DISubprogram(name: "mbszero", scope: !1828, file: !1828, line: 1135, type: !2084, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2087)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !2086}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!2087 = !{!2082}
!2088 = !DILocation(line: 0, scope: !2083, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 230, column: 18, scope: !553, inlinedAt: !2073)
!2090 = !DILocalVariable(name: "__dest", arg: 1, scope: !2091, file: !1837, line: 57, type: !106)
!2091 = distinct !DISubprogram(name: "memset", scope: !1837, file: !1837, line: 57, type: !1838, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2092)
!2092 = !{!2090, !2093, !2094}
!2093 = !DILocalVariable(name: "__ch", arg: 2, scope: !2091, file: !1837, line: 57, type: !70)
!2094 = !DILocalVariable(name: "__len", arg: 3, scope: !2091, file: !1837, line: 57, type: !108)
!2095 = !DILocation(line: 0, scope: !2091, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 1137, column: 3, scope: !2083, inlinedAt: !2089)
!2097 = !DILocation(line: 59, column: 10, scope: !2091, inlinedAt: !2096)
!2098 = !DILocation(line: 231, column: 7, scope: !2099, inlinedAt: !2073)
!2099 = distinct !DILexicalBlock(scope: !553, file: !490, line: 231, column: 7)
!2100 = !DILocation(line: 231, column: 40, scope: !2099, inlinedAt: !2073)
!2101 = !DILocation(line: 231, column: 45, scope: !2099, inlinedAt: !2073)
!2102 = !DILocation(line: 235, column: 1, scope: !553, inlinedAt: !2073)
!2103 = !DILocation(line: 0, scope: !553, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 358, column: 27, scope: !2074)
!2105 = !DILocation(line: 199, column: 29, scope: !553, inlinedAt: !2104)
!2106 = !DILocation(line: 201, column: 19, scope: !2078, inlinedAt: !2104)
!2107 = !DILocation(line: 201, column: 7, scope: !553, inlinedAt: !2104)
!2108 = !DILocation(line: 229, column: 3, scope: !553, inlinedAt: !2104)
!2109 = !DILocation(line: 230, column: 3, scope: !553, inlinedAt: !2104)
!2110 = !DILocation(line: 0, scope: !2083, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 230, column: 18, scope: !553, inlinedAt: !2104)
!2112 = !DILocation(line: 0, scope: !2091, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 1137, column: 3, scope: !2083, inlinedAt: !2111)
!2114 = !DILocation(line: 59, column: 10, scope: !2091, inlinedAt: !2113)
!2115 = !DILocation(line: 231, column: 7, scope: !2099, inlinedAt: !2104)
!2116 = !DILocation(line: 231, column: 40, scope: !2099, inlinedAt: !2104)
!2117 = !DILocation(line: 231, column: 45, scope: !2099, inlinedAt: !2104)
!2118 = !DILocation(line: 235, column: 1, scope: !553, inlinedAt: !2104)
!2119 = !DILocation(line: 360, column: 13, scope: !2010)
!2120 = !DILocation(line: 0, scope: !2008)
!2121 = !DILocation(line: 361, column: 45, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2008, file: !490, line: 361, column: 11)
!2123 = !DILocation(line: 361, column: 11, scope: !2008)
!2124 = !DILocation(line: 362, column: 13, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !490, line: 362, column: 13)
!2126 = distinct !DILexicalBlock(scope: !2122, file: !490, line: 362, column: 13)
!2127 = !DILocation(line: 362, column: 13, scope: !2126)
!2128 = !DILocation(line: 361, column: 52, scope: !2122)
!2129 = distinct !{!2129, !2123, !2130, !915}
!2130 = !DILocation(line: 362, column: 13, scope: !2008)
!2131 = !DILocation(line: 365, column: 28, scope: !2010)
!2132 = !DILocation(line: 260, column: 10, scope: !1981)
!2133 = !DILocation(line: 367, column: 7, scope: !2011)
!2134 = !DILocation(line: 373, column: 7, scope: !2011)
!2135 = !DILocation(line: 381, column: 11, scope: !2011)
!2136 = !DILocation(line: 376, column: 11, scope: !2011)
!2137 = !DILocation(line: 382, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !490, line: 382, column: 9)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !490, line: 382, column: 9)
!2140 = distinct !DILexicalBlock(scope: !2011, file: !490, line: 381, column: 11)
!2141 = !DILocation(line: 382, column: 9, scope: !2139)
!2142 = !DILocation(line: 389, column: 7, scope: !2011)
!2143 = !DILocation(line: 392, column: 7, scope: !2011)
!2144 = !DILocation(line: 0, scope: !2013)
!2145 = !DILocation(line: 395, column: 8, scope: !2013)
!2146 = !DILocation(line: 395, scope: !2013)
!2147 = !DILocation(line: 395, column: 34, scope: !2016)
!2148 = !DILocation(line: 395, column: 26, scope: !2016)
!2149 = !DILocation(line: 395, column: 48, scope: !2016)
!2150 = !DILocation(line: 395, column: 55, scope: !2016)
!2151 = !DILocation(line: 395, column: 3, scope: !2013)
!2152 = !DILocation(line: 395, column: 67, scope: !2016)
!2153 = !DILocation(line: 0, scope: !2015)
!2154 = !DILocation(line: 402, column: 11, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2015, file: !490, line: 401, column: 11)
!2156 = !DILocation(line: 404, column: 17, scope: !2155)
!2157 = !DILocation(line: 405, column: 39, scope: !2155)
!2158 = !DILocation(line: 409, column: 32, scope: !2155)
!2159 = !DILocation(line: 405, column: 19, scope: !2155)
!2160 = !DILocation(line: 405, column: 15, scope: !2155)
!2161 = !DILocation(line: 410, column: 11, scope: !2155)
!2162 = !DILocation(line: 410, column: 25, scope: !2155)
!2163 = !DILocalVariable(name: "__s1", arg: 1, scope: !2164, file: !881, line: 974, type: !1013)
!2164 = distinct !DISubprogram(name: "memeq", scope: !881, file: !881, line: 974, type: !1797, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2165)
!2165 = !{!2163, !2166, !2167}
!2166 = !DILocalVariable(name: "__s2", arg: 2, scope: !2164, file: !881, line: 974, type: !1013)
!2167 = !DILocalVariable(name: "__n", arg: 3, scope: !2164, file: !881, line: 974, type: !108)
!2168 = !DILocation(line: 0, scope: !2164, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 410, column: 14, scope: !2155)
!2170 = !DILocation(line: 976, column: 11, scope: !2164, inlinedAt: !2169)
!2171 = !DILocation(line: 976, column: 10, scope: !2164, inlinedAt: !2169)
!2172 = !DILocation(line: 401, column: 11, scope: !2015)
!2173 = !DILocation(line: 417, column: 25, scope: !2015)
!2174 = !DILocation(line: 418, column: 7, scope: !2015)
!2175 = !DILocation(line: 421, column: 15, scope: !2022)
!2176 = !DILocation(line: 423, column: 15, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !490, line: 423, column: 15)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !490, line: 422, column: 13)
!2179 = distinct !DILexicalBlock(scope: !2022, file: !490, line: 421, column: 15)
!2180 = !DILocation(line: 423, column: 15, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !490, line: 423, column: 15)
!2182 = !DILocation(line: 423, column: 15, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !490, line: 423, column: 15)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !490, line: 423, column: 15)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !490, line: 423, column: 15)
!2186 = !DILocation(line: 423, column: 15, scope: !2184)
!2187 = !DILocation(line: 423, column: 15, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !490, line: 423, column: 15)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !490, line: 423, column: 15)
!2190 = !DILocation(line: 423, column: 15, scope: !2189)
!2191 = !DILocation(line: 423, column: 15, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !490, line: 423, column: 15)
!2193 = distinct !DILexicalBlock(scope: !2185, file: !490, line: 423, column: 15)
!2194 = !DILocation(line: 423, column: 15, scope: !2193)
!2195 = !DILocation(line: 423, column: 15, scope: !2185)
!2196 = !DILocation(line: 423, column: 15, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !490, line: 423, column: 15)
!2198 = distinct !DILexicalBlock(scope: !2177, file: !490, line: 423, column: 15)
!2199 = !DILocation(line: 423, column: 15, scope: !2198)
!2200 = !DILocation(line: 431, column: 19, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2178, file: !490, line: 430, column: 19)
!2202 = !DILocation(line: 431, column: 24, scope: !2201)
!2203 = !DILocation(line: 431, column: 28, scope: !2201)
!2204 = !DILocation(line: 431, column: 38, scope: !2201)
!2205 = !DILocation(line: 431, column: 48, scope: !2201)
!2206 = !DILocation(line: 431, column: 59, scope: !2201)
!2207 = !DILocation(line: 433, column: 19, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !490, line: 433, column: 19)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !490, line: 433, column: 19)
!2210 = distinct !DILexicalBlock(scope: !2201, file: !490, line: 432, column: 17)
!2211 = !DILocation(line: 433, column: 19, scope: !2209)
!2212 = !DILocation(line: 434, column: 19, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !490, line: 434, column: 19)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !490, line: 434, column: 19)
!2215 = !DILocation(line: 434, column: 19, scope: !2214)
!2216 = !DILocation(line: 435, column: 17, scope: !2210)
!2217 = !DILocation(line: 442, column: 20, scope: !2179)
!2218 = !DILocation(line: 447, column: 11, scope: !2022)
!2219 = !DILocation(line: 450, column: 19, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2022, file: !490, line: 448, column: 13)
!2221 = !DILocation(line: 456, column: 19, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2220, file: !490, line: 455, column: 19)
!2223 = !DILocation(line: 456, column: 24, scope: !2222)
!2224 = !DILocation(line: 456, column: 28, scope: !2222)
!2225 = !DILocation(line: 456, column: 38, scope: !2222)
!2226 = !DILocation(line: 456, column: 41, scope: !2222)
!2227 = !DILocation(line: 456, column: 52, scope: !2222)
!2228 = !DILocation(line: 455, column: 19, scope: !2220)
!2229 = !DILocation(line: 457, column: 25, scope: !2222)
!2230 = !DILocation(line: 457, column: 17, scope: !2222)
!2231 = !DILocation(line: 464, column: 25, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2222, file: !490, line: 458, column: 19)
!2233 = !DILocation(line: 468, column: 21, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !490, line: 468, column: 21)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !490, line: 468, column: 21)
!2236 = !DILocation(line: 468, column: 21, scope: !2235)
!2237 = !DILocation(line: 469, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !490, line: 469, column: 21)
!2239 = distinct !DILexicalBlock(scope: !2232, file: !490, line: 469, column: 21)
!2240 = !DILocation(line: 469, column: 21, scope: !2239)
!2241 = !DILocation(line: 470, column: 21, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !490, line: 470, column: 21)
!2243 = distinct !DILexicalBlock(scope: !2232, file: !490, line: 470, column: 21)
!2244 = !DILocation(line: 470, column: 21, scope: !2243)
!2245 = !DILocation(line: 471, column: 21, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !490, line: 471, column: 21)
!2247 = distinct !DILexicalBlock(scope: !2232, file: !490, line: 471, column: 21)
!2248 = !DILocation(line: 471, column: 21, scope: !2247)
!2249 = !DILocation(line: 472, column: 21, scope: !2232)
!2250 = !DILocation(line: 482, column: 33, scope: !2021)
!2251 = !DILocation(line: 483, column: 33, scope: !2021)
!2252 = !DILocation(line: 485, column: 33, scope: !2021)
!2253 = !DILocation(line: 486, column: 33, scope: !2021)
!2254 = !DILocation(line: 487, column: 33, scope: !2021)
!2255 = !DILocation(line: 490, column: 17, scope: !2021)
!2256 = !DILocation(line: 492, column: 21, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !490, line: 491, column: 15)
!2258 = distinct !DILexicalBlock(scope: !2021, file: !490, line: 490, column: 17)
!2259 = !DILocation(line: 499, column: 35, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2021, file: !490, line: 499, column: 17)
!2261 = !DILocation(line: 0, scope: !2021)
!2262 = !DILocation(line: 502, column: 11, scope: !2021)
!2263 = !DILocation(line: 504, column: 17, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2021, file: !490, line: 503, column: 17)
!2265 = !DILocation(line: 507, column: 11, scope: !2021)
!2266 = !DILocation(line: 508, column: 17, scope: !2021)
!2267 = !DILocation(line: 517, column: 15, scope: !2022)
!2268 = !DILocation(line: 517, column: 40, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2022, file: !490, line: 517, column: 15)
!2270 = !DILocation(line: 517, column: 47, scope: !2269)
!2271 = !DILocation(line: 517, column: 18, scope: !2269)
!2272 = !DILocation(line: 521, column: 17, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2022, file: !490, line: 521, column: 15)
!2274 = !DILocation(line: 521, column: 15, scope: !2022)
!2275 = !DILocation(line: 525, column: 11, scope: !2022)
!2276 = !DILocation(line: 537, column: 15, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2022, file: !490, line: 536, column: 15)
!2278 = !DILocation(line: 536, column: 15, scope: !2022)
!2279 = !DILocation(line: 544, column: 15, scope: !2022)
!2280 = !DILocation(line: 546, column: 19, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !490, line: 545, column: 13)
!2282 = distinct !DILexicalBlock(scope: !2022, file: !490, line: 544, column: 15)
!2283 = !DILocation(line: 549, column: 19, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2281, file: !490, line: 549, column: 19)
!2285 = !DILocation(line: 549, column: 30, scope: !2284)
!2286 = !DILocation(line: 558, column: 15, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !490, line: 558, column: 15)
!2288 = distinct !DILexicalBlock(scope: !2281, file: !490, line: 558, column: 15)
!2289 = !DILocation(line: 558, column: 15, scope: !2288)
!2290 = !DILocation(line: 559, column: 15, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !490, line: 559, column: 15)
!2292 = distinct !DILexicalBlock(scope: !2281, file: !490, line: 559, column: 15)
!2293 = !DILocation(line: 559, column: 15, scope: !2292)
!2294 = !DILocation(line: 560, column: 15, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !490, line: 560, column: 15)
!2296 = distinct !DILexicalBlock(scope: !2281, file: !490, line: 560, column: 15)
!2297 = !DILocation(line: 560, column: 15, scope: !2296)
!2298 = !DILocation(line: 562, column: 13, scope: !2281)
!2299 = !DILocation(line: 602, column: 17, scope: !2025)
!2300 = !DILocation(line: 0, scope: !2025)
!2301 = !DILocation(line: 605, column: 29, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2029, file: !490, line: 603, column: 15)
!2303 = !DILocation(line: 605, column: 41, scope: !2302)
!2304 = !DILocation(line: 606, column: 15, scope: !2302)
!2305 = !DILocation(line: 609, column: 17, scope: !2028)
!2306 = !DILocation(line: 0, scope: !2083, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 609, column: 32, scope: !2028)
!2308 = !DILocation(line: 0, scope: !2091, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 1137, column: 3, scope: !2083, inlinedAt: !2307)
!2310 = !DILocation(line: 59, column: 10, scope: !2091, inlinedAt: !2309)
!2311 = !DILocation(line: 613, column: 29, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2028, file: !490, line: 613, column: 21)
!2313 = !DILocation(line: 613, column: 21, scope: !2028)
!2314 = !DILocation(line: 614, column: 29, scope: !2312)
!2315 = !DILocation(line: 614, column: 19, scope: !2312)
!2316 = !DILocation(line: 618, column: 21, scope: !2031)
!2317 = !DILocation(line: 620, column: 54, scope: !2031)
!2318 = !DILocation(line: 619, column: 36, scope: !2031)
!2319 = !DILocation(line: 621, column: 25, scope: !2031)
!2320 = !DILocation(line: 631, column: 38, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2040, file: !490, line: 629, column: 23)
!2322 = !DILocation(line: 631, column: 48, scope: !2321)
!2323 = !DILocation(line: 631, column: 25, scope: !2321)
!2324 = !DILocation(line: 626, column: 25, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2041, file: !490, line: 624, column: 23)
!2326 = !DILocation(line: 631, column: 51, scope: !2321)
!2327 = !DILocation(line: 632, column: 28, scope: !2321)
!2328 = !DILocation(line: 631, column: 34, scope: !2321)
!2329 = distinct !{!2329, !2323, !2327, !915}
!2330 = !DILocation(line: 0, scope: !2036)
!2331 = !DILocation(line: 646, column: 29, scope: !2038)
!2332 = !DILocation(line: 648, column: 29, scope: !2036)
!2333 = !DILocation(line: 649, column: 39, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2036, file: !490, line: 648, column: 29)
!2335 = !DILocation(line: 649, column: 31, scope: !2334)
!2336 = !DILocation(line: 648, column: 60, scope: !2334)
!2337 = !DILocation(line: 648, column: 50, scope: !2334)
!2338 = distinct !{!2338, !2332, !2339, !915}
!2339 = !DILocation(line: 654, column: 33, scope: !2036)
!2340 = !DILocation(line: 657, column: 43, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2039, file: !490, line: 657, column: 29)
!2342 = !DILocalVariable(name: "wc", arg: 1, scope: !2343, file: !2344, line: 865, type: !2347)
!2343 = distinct !DISubprogram(name: "c32isprint", scope: !2344, file: !2344, line: 865, type: !2345, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2349)
!2344 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!70, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2348, line: 20, baseType: !76)
!2348 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2349 = !{!2342}
!2350 = !DILocation(line: 0, scope: !2343, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 657, column: 31, scope: !2341)
!2352 = !DILocation(line: 871, column: 10, scope: !2343, inlinedAt: !2351)
!2353 = !DILocation(line: 657, column: 31, scope: !2341)
!2354 = !DILocation(line: 664, column: 23, scope: !2031)
!2355 = !DILocation(line: 665, column: 19, scope: !2032)
!2356 = !DILocation(line: 666, column: 15, scope: !2029)
!2357 = !DILocation(line: 753, column: 2, scope: !1981)
!2358 = !DILocation(line: 756, column: 51, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !1981, file: !490, line: 756, column: 7)
!2360 = !DILocation(line: 0, scope: !2029)
!2361 = !DILocation(line: 670, column: 19, scope: !2045)
!2362 = !DILocation(line: 670, column: 23, scope: !2045)
!2363 = !DILocation(line: 674, column: 33, scope: !2044)
!2364 = !DILocation(line: 0, scope: !2044)
!2365 = !DILocation(line: 676, column: 17, scope: !2044)
!2366 = !DILocation(line: 678, column: 43, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !490, line: 678, column: 25)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !490, line: 677, column: 19)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !490, line: 676, column: 17)
!2370 = distinct !DILexicalBlock(scope: !2044, file: !490, line: 676, column: 17)
!2371 = !DILocation(line: 680, column: 25, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !490, line: 680, column: 25)
!2373 = distinct !DILexicalBlock(scope: !2367, file: !490, line: 679, column: 23)
!2374 = !DILocation(line: 680, column: 25, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2372, file: !490, line: 680, column: 25)
!2376 = !DILocation(line: 680, column: 25, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !490, line: 680, column: 25)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !490, line: 680, column: 25)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !490, line: 680, column: 25)
!2380 = !DILocation(line: 680, column: 25, scope: !2378)
!2381 = !DILocation(line: 680, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !490, line: 680, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !490, line: 680, column: 25)
!2384 = !DILocation(line: 680, column: 25, scope: !2383)
!2385 = !DILocation(line: 680, column: 25, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !490, line: 680, column: 25)
!2387 = distinct !DILexicalBlock(scope: !2379, file: !490, line: 680, column: 25)
!2388 = !DILocation(line: 680, column: 25, scope: !2387)
!2389 = !DILocation(line: 680, column: 25, scope: !2379)
!2390 = !DILocation(line: 680, column: 25, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !490, line: 680, column: 25)
!2392 = distinct !DILexicalBlock(scope: !2372, file: !490, line: 680, column: 25)
!2393 = !DILocation(line: 680, column: 25, scope: !2392)
!2394 = !DILocation(line: 681, column: 25, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !490, line: 681, column: 25)
!2396 = distinct !DILexicalBlock(scope: !2373, file: !490, line: 681, column: 25)
!2397 = !DILocation(line: 681, column: 25, scope: !2396)
!2398 = !DILocation(line: 682, column: 25, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !490, line: 682, column: 25)
!2400 = distinct !DILexicalBlock(scope: !2373, file: !490, line: 682, column: 25)
!2401 = !DILocation(line: 682, column: 25, scope: !2400)
!2402 = !DILocation(line: 683, column: 38, scope: !2373)
!2403 = !DILocation(line: 683, column: 33, scope: !2373)
!2404 = !DILocation(line: 684, column: 23, scope: !2373)
!2405 = !DILocation(line: 685, column: 30, scope: !2367)
!2406 = !DILocation(line: 687, column: 25, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !490, line: 687, column: 25)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !490, line: 687, column: 25)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !490, line: 686, column: 23)
!2410 = distinct !DILexicalBlock(scope: !2367, file: !490, line: 685, column: 30)
!2411 = !DILocation(line: 687, column: 25, scope: !2408)
!2412 = !DILocation(line: 689, column: 23, scope: !2409)
!2413 = !DILocation(line: 690, column: 35, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2368, file: !490, line: 690, column: 25)
!2415 = !DILocation(line: 690, column: 30, scope: !2414)
!2416 = !DILocation(line: 690, column: 25, scope: !2368)
!2417 = !DILocation(line: 692, column: 21, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !490, line: 692, column: 21)
!2419 = distinct !DILexicalBlock(scope: !2368, file: !490, line: 692, column: 21)
!2420 = !DILocation(line: 692, column: 21, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !490, line: 692, column: 21)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !490, line: 692, column: 21)
!2423 = distinct !DILexicalBlock(scope: !2418, file: !490, line: 692, column: 21)
!2424 = !DILocation(line: 692, column: 21, scope: !2422)
!2425 = !DILocation(line: 692, column: 21, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !490, line: 692, column: 21)
!2427 = distinct !DILexicalBlock(scope: !2423, file: !490, line: 692, column: 21)
!2428 = !DILocation(line: 692, column: 21, scope: !2427)
!2429 = !DILocation(line: 692, column: 21, scope: !2423)
!2430 = !DILocation(line: 0, scope: !2368)
!2431 = !DILocation(line: 693, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !490, line: 693, column: 21)
!2433 = distinct !DILexicalBlock(scope: !2368, file: !490, line: 693, column: 21)
!2434 = !DILocation(line: 693, column: 21, scope: !2433)
!2435 = !DILocation(line: 694, column: 25, scope: !2368)
!2436 = !DILocation(line: 676, column: 17, scope: !2369)
!2437 = distinct !{!2437, !2438, !2439}
!2438 = !DILocation(line: 676, column: 17, scope: !2370)
!2439 = !DILocation(line: 695, column: 19, scope: !2370)
!2440 = !DILocation(line: 409, column: 30, scope: !2155)
!2441 = !DILocation(line: 702, column: 34, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2015, file: !490, line: 702, column: 11)
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
!2454 = distinct !DILexicalBlock(scope: !2015, file: !490, line: 710, column: 7)
!2455 = !DILocation(line: 710, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2454, file: !490, line: 710, column: 7)
!2457 = !DILocation(line: 710, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !490, line: 710, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !490, line: 710, column: 7)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !490, line: 710, column: 7)
!2461 = !DILocation(line: 710, column: 7, scope: !2459)
!2462 = !DILocation(line: 710, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !490, line: 710, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !490, line: 710, column: 7)
!2465 = !DILocation(line: 710, column: 7, scope: !2464)
!2466 = !DILocation(line: 710, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !490, line: 710, column: 7)
!2468 = distinct !DILexicalBlock(scope: !2460, file: !490, line: 710, column: 7)
!2469 = !DILocation(line: 710, column: 7, scope: !2468)
!2470 = !DILocation(line: 710, column: 7, scope: !2460)
!2471 = !DILocation(line: 710, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !490, line: 710, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2454, file: !490, line: 710, column: 7)
!2474 = !DILocation(line: 710, column: 7, scope: !2473)
!2475 = !DILocation(line: 712, column: 5, scope: !2015)
!2476 = !DILocation(line: 713, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !490, line: 713, column: 7)
!2478 = distinct !DILexicalBlock(scope: !2015, file: !490, line: 713, column: 7)
!2479 = !DILocation(line: 417, column: 21, scope: !2015)
!2480 = !DILocation(line: 713, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !490, line: 713, column: 7)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !490, line: 713, column: 7)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !490, line: 713, column: 7)
!2484 = !DILocation(line: 713, column: 7, scope: !2482)
!2485 = !DILocation(line: 713, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !490, line: 713, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !490, line: 713, column: 7)
!2488 = !DILocation(line: 713, column: 7, scope: !2487)
!2489 = !DILocation(line: 713, column: 7, scope: !2483)
!2490 = !DILocation(line: 714, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !490, line: 714, column: 7)
!2492 = distinct !DILexicalBlock(scope: !2015, file: !490, line: 714, column: 7)
!2493 = !DILocation(line: 714, column: 7, scope: !2492)
!2494 = !DILocation(line: 716, column: 11, scope: !2015)
!2495 = !DILocation(line: 718, column: 5, scope: !2016)
!2496 = !DILocation(line: 395, column: 82, scope: !2016)
!2497 = !DILocation(line: 395, column: 3, scope: !2016)
!2498 = distinct !{!2498, !2151, !2499, !915}
!2499 = !DILocation(line: 718, column: 5, scope: !2013)
!2500 = !DILocation(line: 720, column: 11, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !1981, file: !490, line: 720, column: 7)
!2502 = !DILocation(line: 720, column: 16, scope: !2501)
!2503 = !DILocation(line: 728, column: 51, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !1981, file: !490, line: 728, column: 7)
!2505 = !DILocation(line: 731, column: 11, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2504, file: !490, line: 730, column: 5)
!2507 = !DILocation(line: 732, column: 16, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2506, file: !490, line: 731, column: 11)
!2509 = !DILocation(line: 732, column: 9, scope: !2508)
!2510 = !DILocation(line: 736, column: 18, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !490, line: 736, column: 16)
!2512 = !DILocation(line: 736, column: 29, scope: !2511)
!2513 = !DILocation(line: 745, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !1981, file: !490, line: 745, column: 7)
!2515 = !DILocation(line: 745, column: 20, scope: !2514)
!2516 = !DILocation(line: 746, column: 12, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !490, line: 746, column: 5)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !490, line: 746, column: 5)
!2519 = !DILocation(line: 746, column: 5, scope: !2518)
!2520 = !DILocation(line: 747, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !490, line: 747, column: 7)
!2522 = distinct !DILexicalBlock(scope: !2517, file: !490, line: 747, column: 7)
!2523 = !DILocation(line: 747, column: 7, scope: !2522)
!2524 = !DILocation(line: 746, column: 39, scope: !2517)
!2525 = distinct !{!2525, !2519, !2526, !915}
!2526 = !DILocation(line: 747, column: 7, scope: !2518)
!2527 = !DILocation(line: 749, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !1981, file: !490, line: 749, column: 7)
!2529 = !DILocation(line: 749, column: 7, scope: !1981)
!2530 = !DILocation(line: 750, column: 5, scope: !2528)
!2531 = !DILocation(line: 750, column: 17, scope: !2528)
!2532 = !DILocation(line: 756, column: 21, scope: !2359)
!2533 = !DILocation(line: 760, column: 42, scope: !1981)
!2534 = !DILocation(line: 758, column: 10, scope: !1981)
!2535 = !DILocation(line: 758, column: 3, scope: !1981)
!2536 = !DILocation(line: 762, column: 1, scope: !1981)
!2537 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !989, file: !989, line: 98, type: !2538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!108}
!2540 = !DISubprogram(name: "strlen", scope: !985, file: !985, line: 407, type: !2541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!110, !111}
!2543 = !DISubprogram(name: "iswprint", scope: !2544, file: !2544, line: 120, type: !2345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2544 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2545 = distinct !DISubprogram(name: "quotearg_alloc", scope: !490, file: !490, line: 788, type: !2546, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!105, !111, !108, !1874}
!2548 = !{!2549, !2550, !2551}
!2549 = !DILocalVariable(name: "arg", arg: 1, scope: !2545, file: !490, line: 788, type: !111)
!2550 = !DILocalVariable(name: "argsize", arg: 2, scope: !2545, file: !490, line: 788, type: !108)
!2551 = !DILocalVariable(name: "o", arg: 3, scope: !2545, file: !490, line: 789, type: !1874)
!2552 = !DILocation(line: 0, scope: !2545)
!2553 = !DILocalVariable(name: "arg", arg: 1, scope: !2554, file: !490, line: 801, type: !111)
!2554 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !490, file: !490, line: 801, type: !2555, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!105, !111, !108, !736, !1874}
!2557 = !{!2553, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565}
!2558 = !DILocalVariable(name: "argsize", arg: 2, scope: !2554, file: !490, line: 801, type: !108)
!2559 = !DILocalVariable(name: "size", arg: 3, scope: !2554, file: !490, line: 801, type: !736)
!2560 = !DILocalVariable(name: "o", arg: 4, scope: !2554, file: !490, line: 802, type: !1874)
!2561 = !DILocalVariable(name: "p", scope: !2554, file: !490, line: 804, type: !1874)
!2562 = !DILocalVariable(name: "saved_errno", scope: !2554, file: !490, line: 805, type: !70)
!2563 = !DILocalVariable(name: "flags", scope: !2554, file: !490, line: 807, type: !70)
!2564 = !DILocalVariable(name: "bufsize", scope: !2554, file: !490, line: 808, type: !108)
!2565 = !DILocalVariable(name: "buf", scope: !2554, file: !490, line: 812, type: !105)
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
!2605 = distinct !DILexicalBlock(scope: !2554, file: !490, line: 817, column: 7)
!2606 = !{!1327, !1327, i64 0}
!2607 = !DILocation(line: 818, column: 5, scope: !2605)
!2608 = !DILocation(line: 819, column: 3, scope: !2554)
!2609 = distinct !DISubprogram(name: "quotearg_free", scope: !490, file: !490, line: 837, type: !445, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2610)
!2610 = !{!2611, !2612}
!2611 = !DILocalVariable(name: "sv", scope: !2609, file: !490, line: 839, type: !576)
!2612 = !DILocalVariable(name: "i", scope: !2613, file: !490, line: 840, type: !70)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !490, line: 840, column: 3)
!2614 = !DILocation(line: 839, column: 24, scope: !2609)
!2615 = !DILocation(line: 0, scope: !2609)
!2616 = !DILocation(line: 0, scope: !2613)
!2617 = !DILocation(line: 840, column: 21, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2613, file: !490, line: 840, column: 3)
!2619 = !DILocation(line: 840, column: 3, scope: !2613)
!2620 = !DILocation(line: 842, column: 13, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2609, file: !490, line: 842, column: 7)
!2622 = !{!2623, !803, i64 8}
!2623 = !{!"slotvec", !1327, i64 0, !803, i64 8}
!2624 = !DILocation(line: 842, column: 17, scope: !2621)
!2625 = !DILocation(line: 842, column: 7, scope: !2609)
!2626 = !DILocation(line: 841, column: 17, scope: !2618)
!2627 = !DILocation(line: 841, column: 5, scope: !2618)
!2628 = !DILocation(line: 840, column: 32, scope: !2618)
!2629 = distinct !{!2629, !2619, !2630, !915}
!2630 = !DILocation(line: 841, column: 20, scope: !2613)
!2631 = !DILocation(line: 844, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2621, file: !490, line: 843, column: 5)
!2633 = !DILocation(line: 845, column: 21, scope: !2632)
!2634 = !{!2623, !1327, i64 0}
!2635 = !DILocation(line: 846, column: 20, scope: !2632)
!2636 = !DILocation(line: 847, column: 5, scope: !2632)
!2637 = !DILocation(line: 848, column: 10, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2609, file: !490, line: 848, column: 7)
!2639 = !DILocation(line: 848, column: 7, scope: !2609)
!2640 = !DILocation(line: 850, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !490, line: 849, column: 5)
!2642 = !DILocation(line: 851, column: 15, scope: !2641)
!2643 = !DILocation(line: 852, column: 5, scope: !2641)
!2644 = !DILocation(line: 853, column: 10, scope: !2609)
!2645 = !DILocation(line: 854, column: 1, scope: !2609)
!2646 = distinct !DISubprogram(name: "quotearg_n", scope: !490, file: !490, line: 919, type: !982, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2647)
!2647 = !{!2648, !2649}
!2648 = !DILocalVariable(name: "n", arg: 1, scope: !2646, file: !490, line: 919, type: !70)
!2649 = !DILocalVariable(name: "arg", arg: 2, scope: !2646, file: !490, line: 919, type: !111)
!2650 = !DILocation(line: 0, scope: !2646)
!2651 = !DILocation(line: 921, column: 10, scope: !2646)
!2652 = !DILocation(line: 921, column: 3, scope: !2646)
!2653 = distinct !DISubprogram(name: "quotearg_n_options", scope: !490, file: !490, line: 866, type: !2654, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!105, !70, !111, !108, !1874}
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2667, !2668, !2670, !2671, !2672}
!2657 = !DILocalVariable(name: "n", arg: 1, scope: !2653, file: !490, line: 866, type: !70)
!2658 = !DILocalVariable(name: "arg", arg: 2, scope: !2653, file: !490, line: 866, type: !111)
!2659 = !DILocalVariable(name: "argsize", arg: 3, scope: !2653, file: !490, line: 866, type: !108)
!2660 = !DILocalVariable(name: "options", arg: 4, scope: !2653, file: !490, line: 867, type: !1874)
!2661 = !DILocalVariable(name: "saved_errno", scope: !2653, file: !490, line: 869, type: !70)
!2662 = !DILocalVariable(name: "sv", scope: !2653, file: !490, line: 871, type: !576)
!2663 = !DILocalVariable(name: "nslots_max", scope: !2653, file: !490, line: 873, type: !70)
!2664 = !DILocalVariable(name: "preallocated", scope: !2665, file: !490, line: 879, type: !171)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !490, line: 878, column: 5)
!2666 = distinct !DILexicalBlock(scope: !2653, file: !490, line: 877, column: 7)
!2667 = !DILocalVariable(name: "new_nslots", scope: !2665, file: !490, line: 880, type: !749)
!2668 = !DILocalVariable(name: "size", scope: !2669, file: !490, line: 891, type: !108)
!2669 = distinct !DILexicalBlock(scope: !2653, file: !490, line: 890, column: 3)
!2670 = !DILocalVariable(name: "val", scope: !2669, file: !490, line: 892, type: !105)
!2671 = !DILocalVariable(name: "flags", scope: !2669, file: !490, line: 894, type: !70)
!2672 = !DILocalVariable(name: "qsize", scope: !2669, file: !490, line: 895, type: !108)
!2673 = distinct !DIAssignID()
!2674 = !DILocation(line: 0, scope: !2665)
!2675 = !DILocation(line: 0, scope: !2653)
!2676 = !DILocation(line: 869, column: 21, scope: !2653)
!2677 = !DILocation(line: 871, column: 24, scope: !2653)
!2678 = !DILocation(line: 874, column: 17, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2653, file: !490, line: 874, column: 7)
!2680 = !DILocation(line: 875, column: 5, scope: !2679)
!2681 = !DILocation(line: 877, column: 7, scope: !2666)
!2682 = !DILocation(line: 877, column: 14, scope: !2666)
!2683 = !DILocation(line: 877, column: 7, scope: !2653)
!2684 = !DILocation(line: 879, column: 31, scope: !2665)
!2685 = !DILocation(line: 880, column: 7, scope: !2665)
!2686 = !DILocation(line: 880, column: 26, scope: !2665)
!2687 = !DILocation(line: 880, column: 13, scope: !2665)
!2688 = distinct !DIAssignID()
!2689 = !DILocation(line: 882, column: 31, scope: !2665)
!2690 = !DILocation(line: 883, column: 33, scope: !2665)
!2691 = !DILocation(line: 883, column: 42, scope: !2665)
!2692 = !DILocation(line: 883, column: 31, scope: !2665)
!2693 = !DILocation(line: 882, column: 22, scope: !2665)
!2694 = !DILocation(line: 882, column: 15, scope: !2665)
!2695 = !DILocation(line: 884, column: 11, scope: !2665)
!2696 = !DILocation(line: 885, column: 15, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2665, file: !490, line: 884, column: 11)
!2698 = !{i64 0, i64 8, !2606, i64 8, i64 8, !802}
!2699 = !DILocation(line: 885, column: 9, scope: !2697)
!2700 = !DILocation(line: 886, column: 20, scope: !2665)
!2701 = !DILocation(line: 886, column: 18, scope: !2665)
!2702 = !DILocation(line: 886, column: 32, scope: !2665)
!2703 = !DILocation(line: 886, column: 43, scope: !2665)
!2704 = !DILocation(line: 886, column: 53, scope: !2665)
!2705 = !DILocation(line: 0, scope: !2091, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 886, column: 7, scope: !2665)
!2707 = !DILocation(line: 59, column: 10, scope: !2091, inlinedAt: !2706)
!2708 = !DILocation(line: 887, column: 16, scope: !2665)
!2709 = !DILocation(line: 887, column: 14, scope: !2665)
!2710 = !DILocation(line: 888, column: 5, scope: !2666)
!2711 = !DILocation(line: 888, column: 5, scope: !2665)
!2712 = !DILocation(line: 891, column: 19, scope: !2669)
!2713 = !DILocation(line: 891, column: 25, scope: !2669)
!2714 = !DILocation(line: 0, scope: !2669)
!2715 = !DILocation(line: 892, column: 23, scope: !2669)
!2716 = !DILocation(line: 894, column: 26, scope: !2669)
!2717 = !DILocation(line: 894, column: 32, scope: !2669)
!2718 = !DILocation(line: 896, column: 55, scope: !2669)
!2719 = !DILocation(line: 897, column: 55, scope: !2669)
!2720 = !DILocation(line: 898, column: 55, scope: !2669)
!2721 = !DILocation(line: 899, column: 55, scope: !2669)
!2722 = !DILocation(line: 895, column: 20, scope: !2669)
!2723 = !DILocation(line: 901, column: 14, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2669, file: !490, line: 901, column: 9)
!2725 = !DILocation(line: 901, column: 9, scope: !2669)
!2726 = !DILocation(line: 903, column: 35, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2724, file: !490, line: 902, column: 7)
!2728 = !DILocation(line: 903, column: 20, scope: !2727)
!2729 = !DILocation(line: 904, column: 17, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !490, line: 904, column: 13)
!2731 = !DILocation(line: 904, column: 13, scope: !2727)
!2732 = !DILocation(line: 905, column: 11, scope: !2730)
!2733 = !DILocation(line: 906, column: 27, scope: !2727)
!2734 = !DILocation(line: 906, column: 19, scope: !2727)
!2735 = !DILocation(line: 907, column: 69, scope: !2727)
!2736 = !DILocation(line: 909, column: 44, scope: !2727)
!2737 = !DILocation(line: 910, column: 44, scope: !2727)
!2738 = !DILocation(line: 907, column: 9, scope: !2727)
!2739 = !DILocation(line: 911, column: 7, scope: !2727)
!2740 = !DILocation(line: 913, column: 11, scope: !2669)
!2741 = !DILocation(line: 914, column: 5, scope: !2669)
!2742 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !490, file: !490, line: 925, type: !2743, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!105, !70, !111, !108}
!2745 = !{!2746, !2747, !2748}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !490, line: 925, type: !70)
!2747 = !DILocalVariable(name: "arg", arg: 2, scope: !2742, file: !490, line: 925, type: !111)
!2748 = !DILocalVariable(name: "argsize", arg: 3, scope: !2742, file: !490, line: 925, type: !108)
!2749 = !DILocation(line: 0, scope: !2742)
!2750 = !DILocation(line: 927, column: 10, scope: !2742)
!2751 = !DILocation(line: 927, column: 3, scope: !2742)
!2752 = distinct !DISubprogram(name: "quotearg", scope: !490, file: !490, line: 931, type: !991, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2753)
!2753 = !{!2754}
!2754 = !DILocalVariable(name: "arg", arg: 1, scope: !2752, file: !490, line: 931, type: !111)
!2755 = !DILocation(line: 0, scope: !2752)
!2756 = !DILocation(line: 0, scope: !2646, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 933, column: 10, scope: !2752)
!2758 = !DILocation(line: 921, column: 10, scope: !2646, inlinedAt: !2757)
!2759 = !DILocation(line: 933, column: 3, scope: !2752)
!2760 = distinct !DISubprogram(name: "quotearg_mem", scope: !490, file: !490, line: 937, type: !2761, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!105, !111, !108}
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "arg", arg: 1, scope: !2760, file: !490, line: 937, type: !111)
!2765 = !DILocalVariable(name: "argsize", arg: 2, scope: !2760, file: !490, line: 937, type: !108)
!2766 = !DILocation(line: 0, scope: !2760)
!2767 = !DILocation(line: 0, scope: !2742, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 939, column: 10, scope: !2760)
!2769 = !DILocation(line: 927, column: 10, scope: !2742, inlinedAt: !2768)
!2770 = !DILocation(line: 939, column: 3, scope: !2760)
!2771 = distinct !DISubprogram(name: "quotearg_n_style", scope: !490, file: !490, line: 943, type: !2772, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!105, !70, !513, !111}
!2774 = !{!2775, !2776, !2777, !2778}
!2775 = !DILocalVariable(name: "n", arg: 1, scope: !2771, file: !490, line: 943, type: !70)
!2776 = !DILocalVariable(name: "s", arg: 2, scope: !2771, file: !490, line: 943, type: !513)
!2777 = !DILocalVariable(name: "arg", arg: 3, scope: !2771, file: !490, line: 943, type: !111)
!2778 = !DILocalVariable(name: "o", scope: !2771, file: !490, line: 945, type: !1875)
!2779 = distinct !DIAssignID()
!2780 = !DILocation(line: 0, scope: !2771)
!2781 = !DILocation(line: 945, column: 3, scope: !2771)
!2782 = !{!2783}
!2783 = distinct !{!2783, !2784, !"quoting_options_from_style: argument 0"}
!2784 = distinct !{!2784, !"quoting_options_from_style"}
!2785 = !DILocation(line: 945, column: 36, scope: !2771)
!2786 = !DILocalVariable(name: "style", arg: 1, scope: !2787, file: !490, line: 183, type: !513)
!2787 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !490, file: !490, line: 183, type: !2788, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!528, !513}
!2790 = !{!2786, !2791}
!2791 = !DILocalVariable(name: "o", scope: !2787, file: !490, line: 185, type: !528)
!2792 = !DILocation(line: 0, scope: !2787, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 945, column: 36, scope: !2771)
!2794 = !DILocation(line: 185, column: 26, scope: !2787, inlinedAt: !2793)
!2795 = distinct !DIAssignID()
!2796 = !DILocation(line: 186, column: 13, scope: !2797, inlinedAt: !2793)
!2797 = distinct !DILexicalBlock(scope: !2787, file: !490, line: 186, column: 7)
!2798 = !DILocation(line: 186, column: 7, scope: !2787, inlinedAt: !2793)
!2799 = !DILocation(line: 187, column: 5, scope: !2797, inlinedAt: !2793)
!2800 = !DILocation(line: 188, column: 11, scope: !2787, inlinedAt: !2793)
!2801 = distinct !DIAssignID()
!2802 = !DILocation(line: 946, column: 10, scope: !2771)
!2803 = !DILocation(line: 947, column: 1, scope: !2771)
!2804 = !DILocation(line: 946, column: 3, scope: !2771)
!2805 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !490, file: !490, line: 950, type: !2806, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!105, !70, !513, !111, !108}
!2808 = !{!2809, !2810, !2811, !2812, !2813}
!2809 = !DILocalVariable(name: "n", arg: 1, scope: !2805, file: !490, line: 950, type: !70)
!2810 = !DILocalVariable(name: "s", arg: 2, scope: !2805, file: !490, line: 950, type: !513)
!2811 = !DILocalVariable(name: "arg", arg: 3, scope: !2805, file: !490, line: 951, type: !111)
!2812 = !DILocalVariable(name: "argsize", arg: 4, scope: !2805, file: !490, line: 951, type: !108)
!2813 = !DILocalVariable(name: "o", scope: !2805, file: !490, line: 953, type: !1875)
!2814 = distinct !DIAssignID()
!2815 = !DILocation(line: 0, scope: !2805)
!2816 = !DILocation(line: 953, column: 3, scope: !2805)
!2817 = !{!2818}
!2818 = distinct !{!2818, !2819, !"quoting_options_from_style: argument 0"}
!2819 = distinct !{!2819, !"quoting_options_from_style"}
!2820 = !DILocation(line: 953, column: 36, scope: !2805)
!2821 = !DILocation(line: 0, scope: !2787, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 953, column: 36, scope: !2805)
!2823 = !DILocation(line: 185, column: 26, scope: !2787, inlinedAt: !2822)
!2824 = distinct !DIAssignID()
!2825 = !DILocation(line: 186, column: 13, scope: !2797, inlinedAt: !2822)
!2826 = !DILocation(line: 186, column: 7, scope: !2787, inlinedAt: !2822)
!2827 = !DILocation(line: 187, column: 5, scope: !2797, inlinedAt: !2822)
!2828 = !DILocation(line: 188, column: 11, scope: !2787, inlinedAt: !2822)
!2829 = distinct !DIAssignID()
!2830 = !DILocation(line: 954, column: 10, scope: !2805)
!2831 = !DILocation(line: 955, column: 1, scope: !2805)
!2832 = !DILocation(line: 954, column: 3, scope: !2805)
!2833 = distinct !DISubprogram(name: "quotearg_style", scope: !490, file: !490, line: 958, type: !2834, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!105, !513, !111}
!2836 = !{!2837, !2838}
!2837 = !DILocalVariable(name: "s", arg: 1, scope: !2833, file: !490, line: 958, type: !513)
!2838 = !DILocalVariable(name: "arg", arg: 2, scope: !2833, file: !490, line: 958, type: !111)
!2839 = distinct !DIAssignID()
!2840 = !DILocation(line: 0, scope: !2833)
!2841 = !DILocation(line: 0, scope: !2771, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 960, column: 10, scope: !2833)
!2843 = !DILocation(line: 945, column: 3, scope: !2771, inlinedAt: !2842)
!2844 = !{!2845}
!2845 = distinct !{!2845, !2846, !"quoting_options_from_style: argument 0"}
!2846 = distinct !{!2846, !"quoting_options_from_style"}
!2847 = !DILocation(line: 945, column: 36, scope: !2771, inlinedAt: !2842)
!2848 = !DILocation(line: 0, scope: !2787, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 945, column: 36, scope: !2771, inlinedAt: !2842)
!2850 = !DILocation(line: 185, column: 26, scope: !2787, inlinedAt: !2849)
!2851 = distinct !DIAssignID()
!2852 = !DILocation(line: 186, column: 13, scope: !2797, inlinedAt: !2849)
!2853 = !DILocation(line: 186, column: 7, scope: !2787, inlinedAt: !2849)
!2854 = !DILocation(line: 187, column: 5, scope: !2797, inlinedAt: !2849)
!2855 = !DILocation(line: 188, column: 11, scope: !2787, inlinedAt: !2849)
!2856 = distinct !DIAssignID()
!2857 = !DILocation(line: 946, column: 10, scope: !2771, inlinedAt: !2842)
!2858 = !DILocation(line: 947, column: 1, scope: !2771, inlinedAt: !2842)
!2859 = !DILocation(line: 960, column: 3, scope: !2833)
!2860 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !490, file: !490, line: 964, type: !2861, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2863)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!105, !513, !111, !108}
!2863 = !{!2864, !2865, !2866}
!2864 = !DILocalVariable(name: "s", arg: 1, scope: !2860, file: !490, line: 964, type: !513)
!2865 = !DILocalVariable(name: "arg", arg: 2, scope: !2860, file: !490, line: 964, type: !111)
!2866 = !DILocalVariable(name: "argsize", arg: 3, scope: !2860, file: !490, line: 964, type: !108)
!2867 = distinct !DIAssignID()
!2868 = !DILocation(line: 0, scope: !2860)
!2869 = !DILocation(line: 0, scope: !2805, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 966, column: 10, scope: !2860)
!2871 = !DILocation(line: 953, column: 3, scope: !2805, inlinedAt: !2870)
!2872 = !{!2873}
!2873 = distinct !{!2873, !2874, !"quoting_options_from_style: argument 0"}
!2874 = distinct !{!2874, !"quoting_options_from_style"}
!2875 = !DILocation(line: 953, column: 36, scope: !2805, inlinedAt: !2870)
!2876 = !DILocation(line: 0, scope: !2787, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 953, column: 36, scope: !2805, inlinedAt: !2870)
!2878 = !DILocation(line: 185, column: 26, scope: !2787, inlinedAt: !2877)
!2879 = distinct !DIAssignID()
!2880 = !DILocation(line: 186, column: 13, scope: !2797, inlinedAt: !2877)
!2881 = !DILocation(line: 186, column: 7, scope: !2787, inlinedAt: !2877)
!2882 = !DILocation(line: 187, column: 5, scope: !2797, inlinedAt: !2877)
!2883 = !DILocation(line: 188, column: 11, scope: !2787, inlinedAt: !2877)
!2884 = distinct !DIAssignID()
!2885 = !DILocation(line: 954, column: 10, scope: !2805, inlinedAt: !2870)
!2886 = !DILocation(line: 955, column: 1, scope: !2805, inlinedAt: !2870)
!2887 = !DILocation(line: 966, column: 3, scope: !2860)
!2888 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !490, file: !490, line: 970, type: !2889, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2891)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!105, !111, !108, !4}
!2891 = !{!2892, !2893, !2894, !2895}
!2892 = !DILocalVariable(name: "arg", arg: 1, scope: !2888, file: !490, line: 970, type: !111)
!2893 = !DILocalVariable(name: "argsize", arg: 2, scope: !2888, file: !490, line: 970, type: !108)
!2894 = !DILocalVariable(name: "ch", arg: 3, scope: !2888, file: !490, line: 970, type: !4)
!2895 = !DILocalVariable(name: "options", scope: !2888, file: !490, line: 972, type: !528)
!2896 = distinct !DIAssignID()
!2897 = !DILocation(line: 0, scope: !2888)
!2898 = !DILocation(line: 972, column: 3, scope: !2888)
!2899 = !DILocation(line: 973, column: 13, scope: !2888)
!2900 = !{i64 0, i64 4, !868, i64 4, i64 4, !868, i64 8, i64 32, !877, i64 40, i64 8, !802, i64 48, i64 8, !802}
!2901 = distinct !DIAssignID()
!2902 = !DILocation(line: 0, scope: !1894, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 974, column: 3, scope: !2888)
!2904 = !DILocation(line: 147, column: 41, scope: !1894, inlinedAt: !2903)
!2905 = !DILocation(line: 147, column: 62, scope: !1894, inlinedAt: !2903)
!2906 = !DILocation(line: 147, column: 57, scope: !1894, inlinedAt: !2903)
!2907 = !DILocation(line: 148, column: 15, scope: !1894, inlinedAt: !2903)
!2908 = !DILocation(line: 149, column: 21, scope: !1894, inlinedAt: !2903)
!2909 = !DILocation(line: 149, column: 24, scope: !1894, inlinedAt: !2903)
!2910 = !DILocation(line: 150, column: 19, scope: !1894, inlinedAt: !2903)
!2911 = !DILocation(line: 150, column: 24, scope: !1894, inlinedAt: !2903)
!2912 = !DILocation(line: 150, column: 6, scope: !1894, inlinedAt: !2903)
!2913 = !DILocation(line: 975, column: 10, scope: !2888)
!2914 = !DILocation(line: 976, column: 1, scope: !2888)
!2915 = !DILocation(line: 975, column: 3, scope: !2888)
!2916 = distinct !DISubprogram(name: "quotearg_char", scope: !490, file: !490, line: 979, type: !2917, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!105, !111, !4}
!2919 = !{!2920, !2921}
!2920 = !DILocalVariable(name: "arg", arg: 1, scope: !2916, file: !490, line: 979, type: !111)
!2921 = !DILocalVariable(name: "ch", arg: 2, scope: !2916, file: !490, line: 979, type: !4)
!2922 = distinct !DIAssignID()
!2923 = !DILocation(line: 0, scope: !2916)
!2924 = !DILocation(line: 0, scope: !2888, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 981, column: 10, scope: !2916)
!2926 = !DILocation(line: 972, column: 3, scope: !2888, inlinedAt: !2925)
!2927 = !DILocation(line: 973, column: 13, scope: !2888, inlinedAt: !2925)
!2928 = distinct !DIAssignID()
!2929 = !DILocation(line: 0, scope: !1894, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 974, column: 3, scope: !2888, inlinedAt: !2925)
!2931 = !DILocation(line: 147, column: 41, scope: !1894, inlinedAt: !2930)
!2932 = !DILocation(line: 147, column: 62, scope: !1894, inlinedAt: !2930)
!2933 = !DILocation(line: 147, column: 57, scope: !1894, inlinedAt: !2930)
!2934 = !DILocation(line: 148, column: 15, scope: !1894, inlinedAt: !2930)
!2935 = !DILocation(line: 149, column: 21, scope: !1894, inlinedAt: !2930)
!2936 = !DILocation(line: 149, column: 24, scope: !1894, inlinedAt: !2930)
!2937 = !DILocation(line: 150, column: 19, scope: !1894, inlinedAt: !2930)
!2938 = !DILocation(line: 150, column: 24, scope: !1894, inlinedAt: !2930)
!2939 = !DILocation(line: 150, column: 6, scope: !1894, inlinedAt: !2930)
!2940 = !DILocation(line: 975, column: 10, scope: !2888, inlinedAt: !2925)
!2941 = !DILocation(line: 976, column: 1, scope: !2888, inlinedAt: !2925)
!2942 = !DILocation(line: 981, column: 3, scope: !2916)
!2943 = distinct !DISubprogram(name: "quotearg_colon", scope: !490, file: !490, line: 985, type: !991, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2944)
!2944 = !{!2945}
!2945 = !DILocalVariable(name: "arg", arg: 1, scope: !2943, file: !490, line: 985, type: !111)
!2946 = distinct !DIAssignID()
!2947 = !DILocation(line: 0, scope: !2943)
!2948 = !DILocation(line: 0, scope: !2916, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 987, column: 10, scope: !2943)
!2950 = !DILocation(line: 0, scope: !2888, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 981, column: 10, scope: !2916, inlinedAt: !2949)
!2952 = !DILocation(line: 972, column: 3, scope: !2888, inlinedAt: !2951)
!2953 = !DILocation(line: 973, column: 13, scope: !2888, inlinedAt: !2951)
!2954 = distinct !DIAssignID()
!2955 = !DILocation(line: 0, scope: !1894, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 974, column: 3, scope: !2888, inlinedAt: !2951)
!2957 = !DILocation(line: 147, column: 57, scope: !1894, inlinedAt: !2956)
!2958 = !DILocation(line: 149, column: 21, scope: !1894, inlinedAt: !2956)
!2959 = !DILocation(line: 150, column: 6, scope: !1894, inlinedAt: !2956)
!2960 = !DILocation(line: 975, column: 10, scope: !2888, inlinedAt: !2951)
!2961 = !DILocation(line: 976, column: 1, scope: !2888, inlinedAt: !2951)
!2962 = !DILocation(line: 987, column: 3, scope: !2943)
!2963 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !490, file: !490, line: 991, type: !2761, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2964)
!2964 = !{!2965, !2966}
!2965 = !DILocalVariable(name: "arg", arg: 1, scope: !2963, file: !490, line: 991, type: !111)
!2966 = !DILocalVariable(name: "argsize", arg: 2, scope: !2963, file: !490, line: 991, type: !108)
!2967 = distinct !DIAssignID()
!2968 = !DILocation(line: 0, scope: !2963)
!2969 = !DILocation(line: 0, scope: !2888, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 993, column: 10, scope: !2963)
!2971 = !DILocation(line: 972, column: 3, scope: !2888, inlinedAt: !2970)
!2972 = !DILocation(line: 973, column: 13, scope: !2888, inlinedAt: !2970)
!2973 = distinct !DIAssignID()
!2974 = !DILocation(line: 0, scope: !1894, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 974, column: 3, scope: !2888, inlinedAt: !2970)
!2976 = !DILocation(line: 147, column: 57, scope: !1894, inlinedAt: !2975)
!2977 = !DILocation(line: 149, column: 21, scope: !1894, inlinedAt: !2975)
!2978 = !DILocation(line: 150, column: 6, scope: !1894, inlinedAt: !2975)
!2979 = !DILocation(line: 975, column: 10, scope: !2888, inlinedAt: !2970)
!2980 = !DILocation(line: 976, column: 1, scope: !2888, inlinedAt: !2970)
!2981 = !DILocation(line: 993, column: 3, scope: !2963)
!2982 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !490, file: !490, line: 997, type: !2772, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2983)
!2983 = !{!2984, !2985, !2986, !2987}
!2984 = !DILocalVariable(name: "n", arg: 1, scope: !2982, file: !490, line: 997, type: !70)
!2985 = !DILocalVariable(name: "s", arg: 2, scope: !2982, file: !490, line: 997, type: !513)
!2986 = !DILocalVariable(name: "arg", arg: 3, scope: !2982, file: !490, line: 997, type: !111)
!2987 = !DILocalVariable(name: "options", scope: !2982, file: !490, line: 999, type: !528)
!2988 = distinct !DIAssignID()
!2989 = !DILocation(line: 0, scope: !2982)
!2990 = !DILocation(line: 185, column: 26, scope: !2787, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 1000, column: 13, scope: !2982)
!2992 = !DILocation(line: 999, column: 3, scope: !2982)
!2993 = !DILocation(line: 0, scope: !2787, inlinedAt: !2991)
!2994 = !DILocation(line: 186, column: 13, scope: !2797, inlinedAt: !2991)
!2995 = !DILocation(line: 186, column: 7, scope: !2787, inlinedAt: !2991)
!2996 = !DILocation(line: 187, column: 5, scope: !2797, inlinedAt: !2991)
!2997 = !{!2998}
!2998 = distinct !{!2998, !2999, !"quoting_options_from_style: argument 0"}
!2999 = distinct !{!2999, !"quoting_options_from_style"}
!3000 = !DILocation(line: 1000, column: 13, scope: !2982)
!3001 = distinct !DIAssignID()
!3002 = distinct !DIAssignID()
!3003 = !DILocation(line: 0, scope: !1894, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 1001, column: 3, scope: !2982)
!3005 = !DILocation(line: 147, column: 57, scope: !1894, inlinedAt: !3004)
!3006 = !DILocation(line: 149, column: 21, scope: !1894, inlinedAt: !3004)
!3007 = !DILocation(line: 150, column: 6, scope: !1894, inlinedAt: !3004)
!3008 = distinct !DIAssignID()
!3009 = !DILocation(line: 1002, column: 10, scope: !2982)
!3010 = !DILocation(line: 1003, column: 1, scope: !2982)
!3011 = !DILocation(line: 1002, column: 3, scope: !2982)
!3012 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !490, file: !490, line: 1006, type: !3013, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!105, !70, !111, !111, !111}
!3015 = !{!3016, !3017, !3018, !3019}
!3016 = !DILocalVariable(name: "n", arg: 1, scope: !3012, file: !490, line: 1006, type: !70)
!3017 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3012, file: !490, line: 1006, type: !111)
!3018 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3012, file: !490, line: 1007, type: !111)
!3019 = !DILocalVariable(name: "arg", arg: 4, scope: !3012, file: !490, line: 1007, type: !111)
!3020 = distinct !DIAssignID()
!3021 = !DILocation(line: 0, scope: !3012)
!3022 = !DILocalVariable(name: "o", scope: !3023, file: !490, line: 1018, type: !528)
!3023 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !490, file: !490, line: 1014, type: !3024, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!105, !70, !111, !111, !111, !108}
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3022}
!3027 = !DILocalVariable(name: "n", arg: 1, scope: !3023, file: !490, line: 1014, type: !70)
!3028 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3023, file: !490, line: 1014, type: !111)
!3029 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3023, file: !490, line: 1015, type: !111)
!3030 = !DILocalVariable(name: "arg", arg: 4, scope: !3023, file: !490, line: 1016, type: !111)
!3031 = !DILocalVariable(name: "argsize", arg: 5, scope: !3023, file: !490, line: 1016, type: !108)
!3032 = !DILocation(line: 0, scope: !3023, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 1009, column: 10, scope: !3012)
!3034 = !DILocation(line: 1018, column: 3, scope: !3023, inlinedAt: !3033)
!3035 = !DILocation(line: 1018, column: 30, scope: !3023, inlinedAt: !3033)
!3036 = distinct !DIAssignID()
!3037 = distinct !DIAssignID()
!3038 = !DILocation(line: 0, scope: !1934, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1019, column: 3, scope: !3023, inlinedAt: !3033)
!3040 = !DILocation(line: 174, column: 12, scope: !1934, inlinedAt: !3039)
!3041 = distinct !DIAssignID()
!3042 = !DILocation(line: 175, column: 8, scope: !1947, inlinedAt: !3039)
!3043 = !DILocation(line: 175, column: 19, scope: !1947, inlinedAt: !3039)
!3044 = !DILocation(line: 176, column: 5, scope: !1947, inlinedAt: !3039)
!3045 = !DILocation(line: 177, column: 6, scope: !1934, inlinedAt: !3039)
!3046 = !DILocation(line: 177, column: 17, scope: !1934, inlinedAt: !3039)
!3047 = distinct !DIAssignID()
!3048 = !DILocation(line: 178, column: 6, scope: !1934, inlinedAt: !3039)
!3049 = !DILocation(line: 178, column: 18, scope: !1934, inlinedAt: !3039)
!3050 = distinct !DIAssignID()
!3051 = !DILocation(line: 1020, column: 10, scope: !3023, inlinedAt: !3033)
!3052 = !DILocation(line: 1021, column: 1, scope: !3023, inlinedAt: !3033)
!3053 = !DILocation(line: 1009, column: 3, scope: !3012)
!3054 = distinct !DIAssignID()
!3055 = !DILocation(line: 0, scope: !3023)
!3056 = !DILocation(line: 1018, column: 3, scope: !3023)
!3057 = !DILocation(line: 1018, column: 30, scope: !3023)
!3058 = distinct !DIAssignID()
!3059 = distinct !DIAssignID()
!3060 = !DILocation(line: 0, scope: !1934, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 1019, column: 3, scope: !3023)
!3062 = !DILocation(line: 174, column: 12, scope: !1934, inlinedAt: !3061)
!3063 = distinct !DIAssignID()
!3064 = !DILocation(line: 175, column: 8, scope: !1947, inlinedAt: !3061)
!3065 = !DILocation(line: 175, column: 19, scope: !1947, inlinedAt: !3061)
!3066 = !DILocation(line: 176, column: 5, scope: !1947, inlinedAt: !3061)
!3067 = !DILocation(line: 177, column: 6, scope: !1934, inlinedAt: !3061)
!3068 = !DILocation(line: 177, column: 17, scope: !1934, inlinedAt: !3061)
!3069 = distinct !DIAssignID()
!3070 = !DILocation(line: 178, column: 6, scope: !1934, inlinedAt: !3061)
!3071 = !DILocation(line: 178, column: 18, scope: !1934, inlinedAt: !3061)
!3072 = distinct !DIAssignID()
!3073 = !DILocation(line: 1020, column: 10, scope: !3023)
!3074 = !DILocation(line: 1021, column: 1, scope: !3023)
!3075 = !DILocation(line: 1020, column: 3, scope: !3023)
!3076 = distinct !DISubprogram(name: "quotearg_custom", scope: !490, file: !490, line: 1024, type: !3077, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!105, !111, !111, !111}
!3079 = !{!3080, !3081, !3082}
!3080 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3076, file: !490, line: 1024, type: !111)
!3081 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3076, file: !490, line: 1024, type: !111)
!3082 = !DILocalVariable(name: "arg", arg: 3, scope: !3076, file: !490, line: 1025, type: !111)
!3083 = distinct !DIAssignID()
!3084 = !DILocation(line: 0, scope: !3076)
!3085 = !DILocation(line: 0, scope: !3012, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 1027, column: 10, scope: !3076)
!3087 = !DILocation(line: 0, scope: !3023, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 1009, column: 10, scope: !3012, inlinedAt: !3086)
!3089 = !DILocation(line: 1018, column: 3, scope: !3023, inlinedAt: !3088)
!3090 = !DILocation(line: 1018, column: 30, scope: !3023, inlinedAt: !3088)
!3091 = distinct !DIAssignID()
!3092 = distinct !DIAssignID()
!3093 = !DILocation(line: 0, scope: !1934, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 1019, column: 3, scope: !3023, inlinedAt: !3088)
!3095 = !DILocation(line: 174, column: 12, scope: !1934, inlinedAt: !3094)
!3096 = distinct !DIAssignID()
!3097 = !DILocation(line: 175, column: 8, scope: !1947, inlinedAt: !3094)
!3098 = !DILocation(line: 175, column: 19, scope: !1947, inlinedAt: !3094)
!3099 = !DILocation(line: 176, column: 5, scope: !1947, inlinedAt: !3094)
!3100 = !DILocation(line: 177, column: 6, scope: !1934, inlinedAt: !3094)
!3101 = !DILocation(line: 177, column: 17, scope: !1934, inlinedAt: !3094)
!3102 = distinct !DIAssignID()
!3103 = !DILocation(line: 178, column: 6, scope: !1934, inlinedAt: !3094)
!3104 = !DILocation(line: 178, column: 18, scope: !1934, inlinedAt: !3094)
!3105 = distinct !DIAssignID()
!3106 = !DILocation(line: 1020, column: 10, scope: !3023, inlinedAt: !3088)
!3107 = !DILocation(line: 1021, column: 1, scope: !3023, inlinedAt: !3088)
!3108 = !DILocation(line: 1027, column: 3, scope: !3076)
!3109 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !490, file: !490, line: 1031, type: !3110, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!105, !111, !111, !111, !108}
!3112 = !{!3113, !3114, !3115, !3116}
!3113 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3109, file: !490, line: 1031, type: !111)
!3114 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3109, file: !490, line: 1031, type: !111)
!3115 = !DILocalVariable(name: "arg", arg: 3, scope: !3109, file: !490, line: 1032, type: !111)
!3116 = !DILocalVariable(name: "argsize", arg: 4, scope: !3109, file: !490, line: 1032, type: !108)
!3117 = distinct !DIAssignID()
!3118 = !DILocation(line: 0, scope: !3109)
!3119 = !DILocation(line: 0, scope: !3023, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1034, column: 10, scope: !3109)
!3121 = !DILocation(line: 1018, column: 3, scope: !3023, inlinedAt: !3120)
!3122 = !DILocation(line: 1018, column: 30, scope: !3023, inlinedAt: !3120)
!3123 = distinct !DIAssignID()
!3124 = distinct !DIAssignID()
!3125 = !DILocation(line: 0, scope: !1934, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 1019, column: 3, scope: !3023, inlinedAt: !3120)
!3127 = !DILocation(line: 174, column: 12, scope: !1934, inlinedAt: !3126)
!3128 = distinct !DIAssignID()
!3129 = !DILocation(line: 175, column: 8, scope: !1947, inlinedAt: !3126)
!3130 = !DILocation(line: 175, column: 19, scope: !1947, inlinedAt: !3126)
!3131 = !DILocation(line: 176, column: 5, scope: !1947, inlinedAt: !3126)
!3132 = !DILocation(line: 177, column: 6, scope: !1934, inlinedAt: !3126)
!3133 = !DILocation(line: 177, column: 17, scope: !1934, inlinedAt: !3126)
!3134 = distinct !DIAssignID()
!3135 = !DILocation(line: 178, column: 6, scope: !1934, inlinedAt: !3126)
!3136 = !DILocation(line: 178, column: 18, scope: !1934, inlinedAt: !3126)
!3137 = distinct !DIAssignID()
!3138 = !DILocation(line: 1020, column: 10, scope: !3023, inlinedAt: !3120)
!3139 = !DILocation(line: 1021, column: 1, scope: !3023, inlinedAt: !3120)
!3140 = !DILocation(line: 1034, column: 3, scope: !3109)
!3141 = distinct !DISubprogram(name: "quote_n_mem", scope: !490, file: !490, line: 1049, type: !3142, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!111, !70, !111, !108}
!3144 = !{!3145, !3146, !3147}
!3145 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !490, line: 1049, type: !70)
!3146 = !DILocalVariable(name: "arg", arg: 2, scope: !3141, file: !490, line: 1049, type: !111)
!3147 = !DILocalVariable(name: "argsize", arg: 3, scope: !3141, file: !490, line: 1049, type: !108)
!3148 = !DILocation(line: 0, scope: !3141)
!3149 = !DILocation(line: 1051, column: 10, scope: !3141)
!3150 = !DILocation(line: 1051, column: 3, scope: !3141)
!3151 = distinct !DISubprogram(name: "quote_mem", scope: !490, file: !490, line: 1055, type: !3152, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!111, !111, !108}
!3154 = !{!3155, !3156}
!3155 = !DILocalVariable(name: "arg", arg: 1, scope: !3151, file: !490, line: 1055, type: !111)
!3156 = !DILocalVariable(name: "argsize", arg: 2, scope: !3151, file: !490, line: 1055, type: !108)
!3157 = !DILocation(line: 0, scope: !3151)
!3158 = !DILocation(line: 0, scope: !3141, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 1057, column: 10, scope: !3151)
!3160 = !DILocation(line: 1051, column: 10, scope: !3141, inlinedAt: !3159)
!3161 = !DILocation(line: 1057, column: 3, scope: !3151)
!3162 = distinct !DISubprogram(name: "quote_n", scope: !490, file: !490, line: 1061, type: !3163, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!111, !70, !111}
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "n", arg: 1, scope: !3162, file: !490, line: 1061, type: !70)
!3167 = !DILocalVariable(name: "arg", arg: 2, scope: !3162, file: !490, line: 1061, type: !111)
!3168 = !DILocation(line: 0, scope: !3162)
!3169 = !DILocation(line: 0, scope: !3141, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 1063, column: 10, scope: !3162)
!3171 = !DILocation(line: 1051, column: 10, scope: !3141, inlinedAt: !3170)
!3172 = !DILocation(line: 1063, column: 3, scope: !3162)
!3173 = distinct !DISubprogram(name: "quote", scope: !490, file: !490, line: 1067, type: !3174, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!111, !111}
!3176 = !{!3177}
!3177 = !DILocalVariable(name: "arg", arg: 1, scope: !3173, file: !490, line: 1067, type: !111)
!3178 = !DILocation(line: 0, scope: !3173)
!3179 = !DILocation(line: 0, scope: !3162, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 1069, column: 10, scope: !3173)
!3181 = !DILocation(line: 0, scope: !3141, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1063, column: 10, scope: !3162, inlinedAt: !3180)
!3183 = !DILocation(line: 1051, column: 10, scope: !3141, inlinedAt: !3182)
!3184 = !DILocation(line: 1069, column: 3, scope: !3173)
!3185 = distinct !DISubprogram(name: "version_etc_arn", scope: !591, file: !591, line: 61, type: !3186, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3223)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{null, !3188, !111, !111, !111, !3222, !108}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3190)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3190, file: !188, line: 51, baseType: !70, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3190, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3190, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3190, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3190, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3190, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3190, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3190, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3190, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3190, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3190, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3190, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3190, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3190, file: !188, line: 70, baseType: !3206, size: 64, offset: 832)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3190, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3190, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3190, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3190, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3190, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3190, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3190, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3190, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3190, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3190, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3190, file: !188, line: 93, baseType: !3206, size: 64, offset: 1344)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3190, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3190, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3190, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3190, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229}
!3224 = !DILocalVariable(name: "stream", arg: 1, scope: !3185, file: !591, line: 61, type: !3188)
!3225 = !DILocalVariable(name: "command_name", arg: 2, scope: !3185, file: !591, line: 62, type: !111)
!3226 = !DILocalVariable(name: "package", arg: 3, scope: !3185, file: !591, line: 62, type: !111)
!3227 = !DILocalVariable(name: "version", arg: 4, scope: !3185, file: !591, line: 63, type: !111)
!3228 = !DILocalVariable(name: "authors", arg: 5, scope: !3185, file: !591, line: 64, type: !3222)
!3229 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3185, file: !591, line: 64, type: !108)
!3230 = !DILocation(line: 0, scope: !3185)
!3231 = !DILocation(line: 66, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3185, file: !591, line: 66, column: 7)
!3233 = !DILocation(line: 66, column: 7, scope: !3185)
!3234 = !DILocation(line: 67, column: 5, scope: !3232)
!3235 = !DILocation(line: 69, column: 5, scope: !3232)
!3236 = !DILocation(line: 83, column: 3, scope: !3185)
!3237 = !DILocation(line: 85, column: 3, scope: !3185)
!3238 = !DILocation(line: 88, column: 3, scope: !3185)
!3239 = !DILocation(line: 95, column: 3, scope: !3185)
!3240 = !DILocation(line: 97, column: 3, scope: !3185)
!3241 = !DILocation(line: 105, column: 7, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3185, file: !591, line: 98, column: 5)
!3243 = !DILocation(line: 106, column: 7, scope: !3242)
!3244 = !DILocation(line: 109, column: 7, scope: !3242)
!3245 = !DILocation(line: 110, column: 7, scope: !3242)
!3246 = !DILocation(line: 113, column: 7, scope: !3242)
!3247 = !DILocation(line: 115, column: 7, scope: !3242)
!3248 = !DILocation(line: 120, column: 7, scope: !3242)
!3249 = !DILocation(line: 122, column: 7, scope: !3242)
!3250 = !DILocation(line: 127, column: 7, scope: !3242)
!3251 = !DILocation(line: 129, column: 7, scope: !3242)
!3252 = !DILocation(line: 134, column: 7, scope: !3242)
!3253 = !DILocation(line: 137, column: 7, scope: !3242)
!3254 = !DILocation(line: 142, column: 7, scope: !3242)
!3255 = !DILocation(line: 145, column: 7, scope: !3242)
!3256 = !DILocation(line: 150, column: 7, scope: !3242)
!3257 = !DILocation(line: 154, column: 7, scope: !3242)
!3258 = !DILocation(line: 159, column: 7, scope: !3242)
!3259 = !DILocation(line: 163, column: 7, scope: !3242)
!3260 = !DILocation(line: 170, column: 7, scope: !3242)
!3261 = !DILocation(line: 174, column: 7, scope: !3242)
!3262 = !DILocation(line: 176, column: 1, scope: !3185)
!3263 = distinct !DISubprogram(name: "version_etc_ar", scope: !591, file: !591, line: 183, type: !3264, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{null, !3188, !111, !111, !111, !3222}
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272}
!3267 = !DILocalVariable(name: "stream", arg: 1, scope: !3263, file: !591, line: 183, type: !3188)
!3268 = !DILocalVariable(name: "command_name", arg: 2, scope: !3263, file: !591, line: 184, type: !111)
!3269 = !DILocalVariable(name: "package", arg: 3, scope: !3263, file: !591, line: 184, type: !111)
!3270 = !DILocalVariable(name: "version", arg: 4, scope: !3263, file: !591, line: 185, type: !111)
!3271 = !DILocalVariable(name: "authors", arg: 5, scope: !3263, file: !591, line: 185, type: !3222)
!3272 = !DILocalVariable(name: "n_authors", scope: !3263, file: !591, line: 187, type: !108)
!3273 = !DILocation(line: 0, scope: !3263)
!3274 = !DILocation(line: 189, column: 8, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3263, file: !591, line: 189, column: 3)
!3276 = !DILocation(line: 189, scope: !3275)
!3277 = !DILocation(line: 189, column: 23, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3275, file: !591, line: 189, column: 3)
!3279 = !DILocation(line: 189, column: 3, scope: !3275)
!3280 = !DILocation(line: 189, column: 52, scope: !3278)
!3281 = distinct !{!3281, !3279, !3282, !915}
!3282 = !DILocation(line: 190, column: 5, scope: !3275)
!3283 = !DILocation(line: 191, column: 3, scope: !3263)
!3284 = !DILocation(line: 192, column: 1, scope: !3263)
!3285 = distinct !DISubprogram(name: "version_etc_va", scope: !591, file: !591, line: 199, type: !3286, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3298)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !3188, !111, !111, !111, !3288}
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !405, line: 52, baseType: !3289)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !407, line: 12, baseType: !3290)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !591, baseType: !3291)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3291, file: !591, line: 192, baseType: !106, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3291, file: !591, line: 192, baseType: !106, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3291, file: !591, line: 192, baseType: !106, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3291, file: !591, line: 192, baseType: !70, size: 32, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3291, file: !591, line: 192, baseType: !70, size: 32, offset: 224)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305}
!3299 = !DILocalVariable(name: "stream", arg: 1, scope: !3285, file: !591, line: 199, type: !3188)
!3300 = !DILocalVariable(name: "command_name", arg: 2, scope: !3285, file: !591, line: 200, type: !111)
!3301 = !DILocalVariable(name: "package", arg: 3, scope: !3285, file: !591, line: 200, type: !111)
!3302 = !DILocalVariable(name: "version", arg: 4, scope: !3285, file: !591, line: 201, type: !111)
!3303 = !DILocalVariable(name: "authors", arg: 5, scope: !3285, file: !591, line: 201, type: !3288)
!3304 = !DILocalVariable(name: "n_authors", scope: !3285, file: !591, line: 203, type: !108)
!3305 = !DILocalVariable(name: "authtab", scope: !3285, file: !591, line: 204, type: !3306)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 640, elements: !52)
!3307 = distinct !DIAssignID()
!3308 = !DILocation(line: 0, scope: !3285)
!3309 = !DILocation(line: 204, column: 3, scope: !3285)
!3310 = !DILocation(line: 208, column: 35, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !591, line: 206, column: 3)
!3312 = distinct !DILexicalBlock(scope: !3285, file: !591, line: 206, column: 3)
!3313 = !DILocation(line: 208, column: 33, scope: !3311)
!3314 = !DILocation(line: 208, column: 67, scope: !3311)
!3315 = !DILocation(line: 206, column: 3, scope: !3312)
!3316 = !DILocation(line: 208, column: 14, scope: !3311)
!3317 = !DILocation(line: 0, scope: !3312)
!3318 = !DILocation(line: 211, column: 3, scope: !3285)
!3319 = !DILocation(line: 213, column: 1, scope: !3285)
!3320 = distinct !DISubprogram(name: "version_etc", scope: !591, file: !591, line: 230, type: !3321, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !3188, !111, !111, !111, null}
!3323 = !{!3324, !3325, !3326, !3327, !3328}
!3324 = !DILocalVariable(name: "stream", arg: 1, scope: !3320, file: !591, line: 230, type: !3188)
!3325 = !DILocalVariable(name: "command_name", arg: 2, scope: !3320, file: !591, line: 231, type: !111)
!3326 = !DILocalVariable(name: "package", arg: 3, scope: !3320, file: !591, line: 231, type: !111)
!3327 = !DILocalVariable(name: "version", arg: 4, scope: !3320, file: !591, line: 232, type: !111)
!3328 = !DILocalVariable(name: "authors", scope: !3320, file: !591, line: 234, type: !3288)
!3329 = distinct !DIAssignID()
!3330 = !DILocation(line: 0, scope: !3320)
!3331 = !DILocation(line: 234, column: 3, scope: !3320)
!3332 = !DILocation(line: 235, column: 3, scope: !3320)
!3333 = !DILocation(line: 236, column: 3, scope: !3320)
!3334 = !DILocation(line: 237, column: 3, scope: !3320)
!3335 = !DILocation(line: 238, column: 1, scope: !3320)
!3336 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !591, file: !591, line: 241, type: !445, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722)
!3337 = !DILocation(line: 243, column: 3, scope: !3336)
!3338 = !DILocation(line: 248, column: 3, scope: !3336)
!3339 = !DILocation(line: 254, column: 3, scope: !3336)
!3340 = !DILocation(line: 259, column: 3, scope: !3336)
!3341 = !DILocation(line: 261, column: 1, scope: !3336)
!3342 = distinct !DISubprogram(name: "xnrealloc", scope: !3343, file: !3343, line: 147, type: !3344, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3346)
!3343 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!106, !106, !108, !108}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "p", arg: 1, scope: !3342, file: !3343, line: 147, type: !106)
!3348 = !DILocalVariable(name: "n", arg: 2, scope: !3342, file: !3343, line: 147, type: !108)
!3349 = !DILocalVariable(name: "s", arg: 3, scope: !3342, file: !3343, line: 147, type: !108)
!3350 = !DILocation(line: 0, scope: !3342)
!3351 = !DILocalVariable(name: "p", arg: 1, scope: !3352, file: !730, line: 83, type: !106)
!3352 = distinct !DISubprogram(name: "xreallocarray", scope: !730, file: !730, line: 83, type: !3344, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3353)
!3353 = !{!3351, !3354, !3355}
!3354 = !DILocalVariable(name: "n", arg: 2, scope: !3352, file: !730, line: 83, type: !108)
!3355 = !DILocalVariable(name: "s", arg: 3, scope: !3352, file: !730, line: 83, type: !108)
!3356 = !DILocation(line: 0, scope: !3352, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 149, column: 10, scope: !3342)
!3358 = !DILocation(line: 85, column: 25, scope: !3352, inlinedAt: !3357)
!3359 = !DILocalVariable(name: "p", arg: 1, scope: !3360, file: !730, line: 37, type: !106)
!3360 = distinct !DISubprogram(name: "check_nonnull", scope: !730, file: !730, line: 37, type: !3361, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!106, !106}
!3363 = !{!3359}
!3364 = !DILocation(line: 0, scope: !3360, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 85, column: 10, scope: !3352, inlinedAt: !3357)
!3366 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3365)
!3367 = distinct !DILexicalBlock(scope: !3360, file: !730, line: 39, column: 7)
!3368 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3365)
!3369 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3365)
!3370 = !DILocation(line: 149, column: 3, scope: !3342)
!3371 = !DILocation(line: 0, scope: !3352)
!3372 = !DILocation(line: 85, column: 25, scope: !3352)
!3373 = !DILocation(line: 0, scope: !3360, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 85, column: 10, scope: !3352)
!3375 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3374)
!3376 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3374)
!3377 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3374)
!3378 = !DILocation(line: 85, column: 3, scope: !3352)
!3379 = distinct !DISubprogram(name: "xmalloc", scope: !730, file: !730, line: 47, type: !3380, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!106, !108}
!3382 = !{!3383}
!3383 = !DILocalVariable(name: "s", arg: 1, scope: !3379, file: !730, line: 47, type: !108)
!3384 = !DILocation(line: 0, scope: !3379)
!3385 = !DILocation(line: 49, column: 25, scope: !3379)
!3386 = !DILocation(line: 0, scope: !3360, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 49, column: 10, scope: !3379)
!3388 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3387)
!3389 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3387)
!3390 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3387)
!3391 = !DILocation(line: 49, column: 3, scope: !3379)
!3392 = !DISubprogram(name: "malloc", scope: !989, file: !989, line: 540, type: !3380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3393 = distinct !DISubprogram(name: "ximalloc", scope: !730, file: !730, line: 53, type: !3394, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!106, !749}
!3396 = !{!3397}
!3397 = !DILocalVariable(name: "s", arg: 1, scope: !3393, file: !730, line: 53, type: !749)
!3398 = !DILocation(line: 0, scope: !3393)
!3399 = !DILocalVariable(name: "s", arg: 1, scope: !3400, file: !3401, line: 55, type: !749)
!3400 = distinct !DISubprogram(name: "imalloc", scope: !3401, file: !3401, line: 55, type: !3394, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3402)
!3401 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3402 = !{!3399}
!3403 = !DILocation(line: 0, scope: !3400, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 55, column: 25, scope: !3393)
!3405 = !DILocation(line: 57, column: 26, scope: !3400, inlinedAt: !3404)
!3406 = !DILocation(line: 0, scope: !3360, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 55, column: 10, scope: !3393)
!3408 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3407)
!3409 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3407)
!3410 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3407)
!3411 = !DILocation(line: 55, column: 3, scope: !3393)
!3412 = distinct !DISubprogram(name: "xcharalloc", scope: !730, file: !730, line: 59, type: !3413, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3415)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!105, !108}
!3415 = !{!3416}
!3416 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !730, line: 59, type: !108)
!3417 = !DILocation(line: 0, scope: !3412)
!3418 = !DILocation(line: 0, scope: !3379, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 61, column: 10, scope: !3412)
!3420 = !DILocation(line: 49, column: 25, scope: !3379, inlinedAt: !3419)
!3421 = !DILocation(line: 0, scope: !3360, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 49, column: 10, scope: !3379, inlinedAt: !3419)
!3423 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3422)
!3424 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3422)
!3425 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3422)
!3426 = !DILocation(line: 61, column: 3, scope: !3412)
!3427 = distinct !DISubprogram(name: "xrealloc", scope: !730, file: !730, line: 68, type: !3428, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!106, !106, !108}
!3430 = !{!3431, !3432}
!3431 = !DILocalVariable(name: "p", arg: 1, scope: !3427, file: !730, line: 68, type: !106)
!3432 = !DILocalVariable(name: "s", arg: 2, scope: !3427, file: !730, line: 68, type: !108)
!3433 = !DILocation(line: 0, scope: !3427)
!3434 = !DILocalVariable(name: "ptr", arg: 1, scope: !3435, file: !3436, line: 2057, type: !106)
!3435 = distinct !DISubprogram(name: "rpl_realloc", scope: !3436, file: !3436, line: 2057, type: !3428, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3437)
!3436 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3437 = !{!3434, !3438}
!3438 = !DILocalVariable(name: "size", arg: 2, scope: !3435, file: !3436, line: 2057, type: !108)
!3439 = !DILocation(line: 0, scope: !3435, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 70, column: 25, scope: !3427)
!3441 = !DILocation(line: 2059, column: 24, scope: !3435, inlinedAt: !3440)
!3442 = !DILocation(line: 2059, column: 10, scope: !3435, inlinedAt: !3440)
!3443 = !DILocation(line: 0, scope: !3360, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 70, column: 10, scope: !3427)
!3445 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3444)
!3446 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3444)
!3447 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3444)
!3448 = !DILocation(line: 70, column: 3, scope: !3427)
!3449 = !DISubprogram(name: "realloc", scope: !989, file: !989, line: 551, type: !3428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3450 = distinct !DISubprogram(name: "xirealloc", scope: !730, file: !730, line: 74, type: !3451, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!106, !106, !749}
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "p", arg: 1, scope: !3450, file: !730, line: 74, type: !106)
!3455 = !DILocalVariable(name: "s", arg: 2, scope: !3450, file: !730, line: 74, type: !749)
!3456 = !DILocation(line: 0, scope: !3450)
!3457 = !DILocalVariable(name: "p", arg: 1, scope: !3458, file: !3401, line: 66, type: !106)
!3458 = distinct !DISubprogram(name: "irealloc", scope: !3401, file: !3401, line: 66, type: !3451, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3459)
!3459 = !{!3457, !3460}
!3460 = !DILocalVariable(name: "s", arg: 2, scope: !3458, file: !3401, line: 66, type: !749)
!3461 = !DILocation(line: 0, scope: !3458, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 76, column: 25, scope: !3450)
!3463 = !DILocation(line: 0, scope: !3435, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 68, column: 26, scope: !3458, inlinedAt: !3462)
!3465 = !DILocation(line: 2059, column: 24, scope: !3435, inlinedAt: !3464)
!3466 = !DILocation(line: 2059, column: 10, scope: !3435, inlinedAt: !3464)
!3467 = !DILocation(line: 0, scope: !3360, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 76, column: 10, scope: !3450)
!3469 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3468)
!3470 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3468)
!3471 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3468)
!3472 = !DILocation(line: 76, column: 3, scope: !3450)
!3473 = distinct !DISubprogram(name: "xireallocarray", scope: !730, file: !730, line: 89, type: !3474, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!106, !106, !749, !749}
!3476 = !{!3477, !3478, !3479}
!3477 = !DILocalVariable(name: "p", arg: 1, scope: !3473, file: !730, line: 89, type: !106)
!3478 = !DILocalVariable(name: "n", arg: 2, scope: !3473, file: !730, line: 89, type: !749)
!3479 = !DILocalVariable(name: "s", arg: 3, scope: !3473, file: !730, line: 89, type: !749)
!3480 = !DILocation(line: 0, scope: !3473)
!3481 = !DILocalVariable(name: "p", arg: 1, scope: !3482, file: !3401, line: 98, type: !106)
!3482 = distinct !DISubprogram(name: "ireallocarray", scope: !3401, file: !3401, line: 98, type: !3474, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3483)
!3483 = !{!3481, !3484, !3485}
!3484 = !DILocalVariable(name: "n", arg: 2, scope: !3482, file: !3401, line: 98, type: !749)
!3485 = !DILocalVariable(name: "s", arg: 3, scope: !3482, file: !3401, line: 98, type: !749)
!3486 = !DILocation(line: 0, scope: !3482, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 91, column: 25, scope: !3473)
!3488 = !DILocation(line: 101, column: 13, scope: !3482, inlinedAt: !3487)
!3489 = !DILocation(line: 0, scope: !3360, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 91, column: 10, scope: !3473)
!3491 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3490)
!3492 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3490)
!3493 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3490)
!3494 = !DILocation(line: 91, column: 3, scope: !3473)
!3495 = distinct !DISubprogram(name: "xnmalloc", scope: !730, file: !730, line: 98, type: !3496, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!106, !108, !108}
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "n", arg: 1, scope: !3495, file: !730, line: 98, type: !108)
!3500 = !DILocalVariable(name: "s", arg: 2, scope: !3495, file: !730, line: 98, type: !108)
!3501 = !DILocation(line: 0, scope: !3495)
!3502 = !DILocation(line: 0, scope: !3352, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 100, column: 10, scope: !3495)
!3504 = !DILocation(line: 85, column: 25, scope: !3352, inlinedAt: !3503)
!3505 = !DILocation(line: 0, scope: !3360, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 85, column: 10, scope: !3352, inlinedAt: !3503)
!3507 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3506)
!3508 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3506)
!3509 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3506)
!3510 = !DILocation(line: 100, column: 3, scope: !3495)
!3511 = distinct !DISubprogram(name: "xinmalloc", scope: !730, file: !730, line: 104, type: !3512, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!106, !749, !749}
!3514 = !{!3515, !3516}
!3515 = !DILocalVariable(name: "n", arg: 1, scope: !3511, file: !730, line: 104, type: !749)
!3516 = !DILocalVariable(name: "s", arg: 2, scope: !3511, file: !730, line: 104, type: !749)
!3517 = !DILocation(line: 0, scope: !3511)
!3518 = !DILocation(line: 0, scope: !3473, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 106, column: 10, scope: !3511)
!3520 = !DILocation(line: 0, scope: !3482, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 91, column: 25, scope: !3473, inlinedAt: !3519)
!3522 = !DILocation(line: 101, column: 13, scope: !3482, inlinedAt: !3521)
!3523 = !DILocation(line: 0, scope: !3360, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 91, column: 10, scope: !3473, inlinedAt: !3519)
!3525 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3524)
!3526 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3524)
!3527 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3524)
!3528 = !DILocation(line: 106, column: 3, scope: !3511)
!3529 = distinct !DISubprogram(name: "x2realloc", scope: !730, file: !730, line: 116, type: !3530, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!106, !106, !736}
!3532 = !{!3533, !3534}
!3533 = !DILocalVariable(name: "p", arg: 1, scope: !3529, file: !730, line: 116, type: !106)
!3534 = !DILocalVariable(name: "ps", arg: 2, scope: !3529, file: !730, line: 116, type: !736)
!3535 = !DILocation(line: 0, scope: !3529)
!3536 = !DILocation(line: 0, scope: !733, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 118, column: 10, scope: !3529)
!3538 = !DILocation(line: 178, column: 14, scope: !733, inlinedAt: !3537)
!3539 = !DILocation(line: 180, column: 9, scope: !3540, inlinedAt: !3537)
!3540 = distinct !DILexicalBlock(scope: !733, file: !730, line: 180, column: 7)
!3541 = !DILocation(line: 180, column: 7, scope: !733, inlinedAt: !3537)
!3542 = !DILocation(line: 182, column: 13, scope: !3543, inlinedAt: !3537)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !730, line: 182, column: 11)
!3544 = distinct !DILexicalBlock(scope: !3540, file: !730, line: 181, column: 5)
!3545 = !DILocation(line: 182, column: 11, scope: !3544, inlinedAt: !3537)
!3546 = !DILocation(line: 197, column: 11, scope: !3547, inlinedAt: !3537)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !730, line: 197, column: 11)
!3548 = distinct !DILexicalBlock(scope: !3540, file: !730, line: 195, column: 5)
!3549 = !DILocation(line: 197, column: 11, scope: !3548, inlinedAt: !3537)
!3550 = !DILocation(line: 198, column: 9, scope: !3547, inlinedAt: !3537)
!3551 = !DILocation(line: 0, scope: !3352, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 201, column: 7, scope: !733, inlinedAt: !3537)
!3553 = !DILocation(line: 85, column: 25, scope: !3352, inlinedAt: !3552)
!3554 = !DILocation(line: 0, scope: !3360, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 85, column: 10, scope: !3352, inlinedAt: !3552)
!3556 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3555)
!3557 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3555)
!3558 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3555)
!3559 = !DILocation(line: 202, column: 7, scope: !733, inlinedAt: !3537)
!3560 = !DILocation(line: 118, column: 3, scope: !3529)
!3561 = !DILocation(line: 0, scope: !733)
!3562 = !DILocation(line: 178, column: 14, scope: !733)
!3563 = !DILocation(line: 180, column: 9, scope: !3540)
!3564 = !DILocation(line: 180, column: 7, scope: !733)
!3565 = !DILocation(line: 182, column: 13, scope: !3543)
!3566 = !DILocation(line: 182, column: 11, scope: !3544)
!3567 = !DILocation(line: 190, column: 30, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3543, file: !730, line: 183, column: 9)
!3569 = !DILocation(line: 191, column: 16, scope: !3568)
!3570 = !DILocation(line: 191, column: 13, scope: !3568)
!3571 = !DILocation(line: 192, column: 9, scope: !3568)
!3572 = !DILocation(line: 197, column: 11, scope: !3547)
!3573 = !DILocation(line: 197, column: 11, scope: !3548)
!3574 = !DILocation(line: 198, column: 9, scope: !3547)
!3575 = !DILocation(line: 0, scope: !3352, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 201, column: 7, scope: !733)
!3577 = !DILocation(line: 85, column: 25, scope: !3352, inlinedAt: !3576)
!3578 = !DILocation(line: 0, scope: !3360, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 85, column: 10, scope: !3352, inlinedAt: !3576)
!3580 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3579)
!3581 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3579)
!3582 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3579)
!3583 = !DILocation(line: 202, column: 7, scope: !733)
!3584 = !DILocation(line: 203, column: 3, scope: !733)
!3585 = !DILocation(line: 0, scope: !745)
!3586 = !DILocation(line: 230, column: 14, scope: !745)
!3587 = !DILocation(line: 238, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !745, file: !730, line: 238, column: 7)
!3589 = !DILocation(line: 238, column: 7, scope: !745)
!3590 = !DILocation(line: 240, column: 9, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !745, file: !730, line: 240, column: 7)
!3592 = !DILocation(line: 240, column: 18, scope: !3591)
!3593 = !DILocation(line: 253, column: 8, scope: !745)
!3594 = !DILocation(line: 256, column: 7, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !745, file: !730, line: 256, column: 7)
!3596 = !DILocation(line: 256, column: 7, scope: !745)
!3597 = !DILocation(line: 258, column: 27, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3595, file: !730, line: 257, column: 5)
!3599 = !DILocation(line: 259, column: 32, scope: !3598)
!3600 = !DILocation(line: 260, column: 5, scope: !3598)
!3601 = !DILocation(line: 262, column: 9, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !745, file: !730, line: 262, column: 7)
!3603 = !DILocation(line: 262, column: 7, scope: !745)
!3604 = !DILocation(line: 263, column: 9, scope: !3602)
!3605 = !DILocation(line: 263, column: 5, scope: !3602)
!3606 = !DILocation(line: 264, column: 9, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !745, file: !730, line: 264, column: 7)
!3608 = !DILocation(line: 264, column: 14, scope: !3607)
!3609 = !DILocation(line: 265, column: 7, scope: !3607)
!3610 = !DILocation(line: 265, column: 11, scope: !3607)
!3611 = !DILocation(line: 266, column: 11, scope: !3607)
!3612 = !DILocation(line: 267, column: 14, scope: !3607)
!3613 = !DILocation(line: 264, column: 7, scope: !745)
!3614 = !DILocation(line: 268, column: 5, scope: !3607)
!3615 = !DILocation(line: 0, scope: !3427, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 269, column: 8, scope: !745)
!3617 = !DILocation(line: 0, scope: !3435, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 70, column: 25, scope: !3427, inlinedAt: !3616)
!3619 = !DILocation(line: 2059, column: 24, scope: !3435, inlinedAt: !3618)
!3620 = !DILocation(line: 2059, column: 10, scope: !3435, inlinedAt: !3618)
!3621 = !DILocation(line: 0, scope: !3360, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 70, column: 10, scope: !3427, inlinedAt: !3616)
!3623 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3622)
!3624 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3622)
!3625 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3622)
!3626 = !DILocation(line: 270, column: 7, scope: !745)
!3627 = !DILocation(line: 271, column: 3, scope: !745)
!3628 = distinct !DISubprogram(name: "xzalloc", scope: !730, file: !730, line: 279, type: !3380, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3629)
!3629 = !{!3630}
!3630 = !DILocalVariable(name: "s", arg: 1, scope: !3628, file: !730, line: 279, type: !108)
!3631 = !DILocation(line: 0, scope: !3628)
!3632 = !DILocalVariable(name: "n", arg: 1, scope: !3633, file: !730, line: 294, type: !108)
!3633 = distinct !DISubprogram(name: "xcalloc", scope: !730, file: !730, line: 294, type: !3496, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3634)
!3634 = !{!3632, !3635}
!3635 = !DILocalVariable(name: "s", arg: 2, scope: !3633, file: !730, line: 294, type: !108)
!3636 = !DILocation(line: 0, scope: !3633, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 281, column: 10, scope: !3628)
!3638 = !DILocation(line: 296, column: 25, scope: !3633, inlinedAt: !3637)
!3639 = !DILocation(line: 0, scope: !3360, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 296, column: 10, scope: !3633, inlinedAt: !3637)
!3641 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3640)
!3642 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3640)
!3643 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3640)
!3644 = !DILocation(line: 281, column: 3, scope: !3628)
!3645 = !DISubprogram(name: "calloc", scope: !989, file: !989, line: 543, type: !3496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3646 = !DILocation(line: 0, scope: !3633)
!3647 = !DILocation(line: 296, column: 25, scope: !3633)
!3648 = !DILocation(line: 0, scope: !3360, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 296, column: 10, scope: !3633)
!3650 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3649)
!3651 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3649)
!3652 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3649)
!3653 = !DILocation(line: 296, column: 3, scope: !3633)
!3654 = distinct !DISubprogram(name: "xizalloc", scope: !730, file: !730, line: 285, type: !3394, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3655)
!3655 = !{!3656}
!3656 = !DILocalVariable(name: "s", arg: 1, scope: !3654, file: !730, line: 285, type: !749)
!3657 = !DILocation(line: 0, scope: !3654)
!3658 = !DILocalVariable(name: "n", arg: 1, scope: !3659, file: !730, line: 300, type: !749)
!3659 = distinct !DISubprogram(name: "xicalloc", scope: !730, file: !730, line: 300, type: !3512, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3660)
!3660 = !{!3658, !3661}
!3661 = !DILocalVariable(name: "s", arg: 2, scope: !3659, file: !730, line: 300, type: !749)
!3662 = !DILocation(line: 0, scope: !3659, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 287, column: 10, scope: !3654)
!3664 = !DILocalVariable(name: "n", arg: 1, scope: !3665, file: !3401, line: 77, type: !749)
!3665 = distinct !DISubprogram(name: "icalloc", scope: !3401, file: !3401, line: 77, type: !3512, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3666)
!3666 = !{!3664, !3667}
!3667 = !DILocalVariable(name: "s", arg: 2, scope: !3665, file: !3401, line: 77, type: !749)
!3668 = !DILocation(line: 0, scope: !3665, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 302, column: 25, scope: !3659, inlinedAt: !3663)
!3670 = !DILocation(line: 91, column: 10, scope: !3665, inlinedAt: !3669)
!3671 = !DILocation(line: 0, scope: !3360, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 302, column: 10, scope: !3659, inlinedAt: !3663)
!3673 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3672)
!3674 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3672)
!3675 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3672)
!3676 = !DILocation(line: 287, column: 3, scope: !3654)
!3677 = !DILocation(line: 0, scope: !3659)
!3678 = !DILocation(line: 0, scope: !3665, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 302, column: 25, scope: !3659)
!3680 = !DILocation(line: 91, column: 10, scope: !3665, inlinedAt: !3679)
!3681 = !DILocation(line: 0, scope: !3360, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 302, column: 10, scope: !3659)
!3683 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3682)
!3684 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3682)
!3685 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3682)
!3686 = !DILocation(line: 302, column: 3, scope: !3659)
!3687 = distinct !DISubprogram(name: "xmemdup", scope: !730, file: !730, line: 310, type: !3688, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!106, !1013, !108}
!3690 = !{!3691, !3692}
!3691 = !DILocalVariable(name: "p", arg: 1, scope: !3687, file: !730, line: 310, type: !1013)
!3692 = !DILocalVariable(name: "s", arg: 2, scope: !3687, file: !730, line: 310, type: !108)
!3693 = !DILocation(line: 0, scope: !3687)
!3694 = !DILocation(line: 0, scope: !3379, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 312, column: 18, scope: !3687)
!3696 = !DILocation(line: 49, column: 25, scope: !3379, inlinedAt: !3695)
!3697 = !DILocation(line: 0, scope: !3360, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 49, column: 10, scope: !3379, inlinedAt: !3695)
!3699 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3698)
!3700 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3698)
!3701 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3698)
!3702 = !DILocalVariable(name: "__dest", arg: 1, scope: !3703, file: !1837, line: 26, type: !3706)
!3703 = distinct !DISubprogram(name: "memcpy", scope: !1837, file: !1837, line: 26, type: !3704, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3707)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!106, !3706, !1012, !108}
!3706 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!3707 = !{!3702, !3708, !3709}
!3708 = !DILocalVariable(name: "__src", arg: 2, scope: !3703, file: !1837, line: 26, type: !1012)
!3709 = !DILocalVariable(name: "__len", arg: 3, scope: !3703, file: !1837, line: 26, type: !108)
!3710 = !DILocation(line: 0, scope: !3703, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 312, column: 10, scope: !3687)
!3712 = !DILocation(line: 29, column: 10, scope: !3703, inlinedAt: !3711)
!3713 = !DILocation(line: 312, column: 3, scope: !3687)
!3714 = distinct !DISubprogram(name: "ximemdup", scope: !730, file: !730, line: 316, type: !3715, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!106, !1013, !749}
!3717 = !{!3718, !3719}
!3718 = !DILocalVariable(name: "p", arg: 1, scope: !3714, file: !730, line: 316, type: !1013)
!3719 = !DILocalVariable(name: "s", arg: 2, scope: !3714, file: !730, line: 316, type: !749)
!3720 = !DILocation(line: 0, scope: !3714)
!3721 = !DILocation(line: 0, scope: !3393, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 318, column: 18, scope: !3714)
!3723 = !DILocation(line: 0, scope: !3400, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 55, column: 25, scope: !3393, inlinedAt: !3722)
!3725 = !DILocation(line: 57, column: 26, scope: !3400, inlinedAt: !3724)
!3726 = !DILocation(line: 0, scope: !3360, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 55, column: 10, scope: !3393, inlinedAt: !3722)
!3728 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3727)
!3729 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3727)
!3730 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3727)
!3731 = !DILocation(line: 0, scope: !3703, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 318, column: 10, scope: !3714)
!3733 = !DILocation(line: 29, column: 10, scope: !3703, inlinedAt: !3732)
!3734 = !DILocation(line: 318, column: 3, scope: !3714)
!3735 = distinct !DISubprogram(name: "ximemdup0", scope: !730, file: !730, line: 325, type: !3736, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!105, !1013, !749}
!3738 = !{!3739, !3740, !3741}
!3739 = !DILocalVariable(name: "p", arg: 1, scope: !3735, file: !730, line: 325, type: !1013)
!3740 = !DILocalVariable(name: "s", arg: 2, scope: !3735, file: !730, line: 325, type: !749)
!3741 = !DILocalVariable(name: "result", scope: !3735, file: !730, line: 327, type: !105)
!3742 = !DILocation(line: 0, scope: !3735)
!3743 = !DILocation(line: 327, column: 30, scope: !3735)
!3744 = !DILocation(line: 0, scope: !3393, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 327, column: 18, scope: !3735)
!3746 = !DILocation(line: 0, scope: !3400, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 55, column: 25, scope: !3393, inlinedAt: !3745)
!3748 = !DILocation(line: 57, column: 26, scope: !3400, inlinedAt: !3747)
!3749 = !DILocation(line: 0, scope: !3360, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 55, column: 10, scope: !3393, inlinedAt: !3745)
!3751 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3750)
!3752 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3750)
!3753 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3750)
!3754 = !DILocation(line: 328, column: 3, scope: !3735)
!3755 = !DILocation(line: 328, column: 13, scope: !3735)
!3756 = !DILocation(line: 0, scope: !3703, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 329, column: 10, scope: !3735)
!3758 = !DILocation(line: 29, column: 10, scope: !3703, inlinedAt: !3757)
!3759 = !DILocation(line: 329, column: 3, scope: !3735)
!3760 = distinct !DISubprogram(name: "xstrdup", scope: !730, file: !730, line: 335, type: !991, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3761)
!3761 = !{!3762}
!3762 = !DILocalVariable(name: "string", arg: 1, scope: !3760, file: !730, line: 335, type: !111)
!3763 = !DILocation(line: 0, scope: !3760)
!3764 = !DILocation(line: 337, column: 27, scope: !3760)
!3765 = !DILocation(line: 337, column: 43, scope: !3760)
!3766 = !DILocation(line: 0, scope: !3687, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 337, column: 10, scope: !3760)
!3768 = !DILocation(line: 0, scope: !3379, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 312, column: 18, scope: !3687, inlinedAt: !3767)
!3770 = !DILocation(line: 49, column: 25, scope: !3379, inlinedAt: !3769)
!3771 = !DILocation(line: 0, scope: !3360, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 49, column: 10, scope: !3379, inlinedAt: !3769)
!3773 = !DILocation(line: 39, column: 8, scope: !3367, inlinedAt: !3772)
!3774 = !DILocation(line: 39, column: 7, scope: !3360, inlinedAt: !3772)
!3775 = !DILocation(line: 40, column: 5, scope: !3367, inlinedAt: !3772)
!3776 = !DILocation(line: 0, scope: !3703, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 312, column: 10, scope: !3687, inlinedAt: !3767)
!3778 = !DILocation(line: 29, column: 10, scope: !3703, inlinedAt: !3777)
!3779 = !DILocation(line: 337, column: 3, scope: !3760)
!3780 = distinct !DISubprogram(name: "xalloc_die", scope: !681, file: !681, line: 32, type: !445, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3781)
!3781 = !{!3782}
!3782 = !DILocalVariable(name: "__errstatus", scope: !3783, file: !681, line: 34, type: !3784)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !681, line: 34, column: 3)
!3784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3785 = !DILocation(line: 34, column: 3, scope: !3783)
!3786 = !DILocation(line: 0, scope: !3783)
!3787 = !DILocation(line: 40, column: 3, scope: !3780)
!3788 = distinct !DISubprogram(name: "close_stream", scope: !767, file: !767, line: 55, type: !3789, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3825)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!70, !3791}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3793)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3793, file: !188, line: 51, baseType: !70, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3793, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3793, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3793, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3793, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3793, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3793, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3793, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3793, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3793, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3793, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3793, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3793, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3793, file: !188, line: 70, baseType: !3809, size: 64, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3793, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3793, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3793, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3793, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3793, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3793, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3793, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3793, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3793, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3793, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3793, file: !188, line: 93, baseType: !3809, size: 64, offset: 1344)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3793, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3793, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3793, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3793, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3825 = !{!3826, !3827, !3829, !3830}
!3826 = !DILocalVariable(name: "stream", arg: 1, scope: !3788, file: !767, line: 55, type: !3791)
!3827 = !DILocalVariable(name: "some_pending", scope: !3788, file: !767, line: 57, type: !3828)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!3829 = !DILocalVariable(name: "prev_fail", scope: !3788, file: !767, line: 58, type: !3828)
!3830 = !DILocalVariable(name: "fclose_fail", scope: !3788, file: !767, line: 59, type: !3828)
!3831 = !DILocation(line: 0, scope: !3788)
!3832 = !DILocation(line: 57, column: 30, scope: !3788)
!3833 = !DILocalVariable(name: "__stream", arg: 1, scope: !3834, file: !1317, line: 135, type: !3791)
!3834 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1317, file: !1317, line: 135, type: !3789, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3835)
!3835 = !{!3833}
!3836 = !DILocation(line: 0, scope: !3834, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 58, column: 27, scope: !3788)
!3838 = !DILocation(line: 137, column: 10, scope: !3834, inlinedAt: !3837)
!3839 = !{!1326, !869, i64 0}
!3840 = !DILocation(line: 58, column: 43, scope: !3788)
!3841 = !DILocation(line: 59, column: 29, scope: !3788)
!3842 = !DILocation(line: 59, column: 45, scope: !3788)
!3843 = !DILocation(line: 69, column: 17, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3788, file: !767, line: 69, column: 7)
!3845 = !DILocation(line: 57, column: 50, scope: !3788)
!3846 = !DILocation(line: 69, column: 33, scope: !3844)
!3847 = !DILocation(line: 69, column: 53, scope: !3844)
!3848 = !DILocation(line: 69, column: 59, scope: !3844)
!3849 = !DILocation(line: 69, column: 7, scope: !3788)
!3850 = !DILocation(line: 71, column: 11, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3844, file: !767, line: 70, column: 5)
!3852 = !DILocation(line: 72, column: 9, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3851, file: !767, line: 71, column: 11)
!3854 = !DILocation(line: 72, column: 15, scope: !3853)
!3855 = !DILocation(line: 77, column: 1, scope: !3788)
!3856 = !DISubprogram(name: "__fpending", scope: !3857, file: !3857, line: 75, type: !3858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3857 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!108, !3791}
!3860 = distinct !DISubprogram(name: "rpl_fclose", scope: !769, file: !769, line: 58, type: !3861, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3897)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!70, !3863}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3865)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3865, file: !188, line: 51, baseType: !70, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3865, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3865, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3865, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3865, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3865, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3865, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3865, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3865, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3865, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3865, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3865, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3865, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3865, file: !188, line: 70, baseType: !3881, size: 64, offset: 832)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3865, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3865, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3865, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3865, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3865, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3865, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3865, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3865, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3865, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3865, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3865, file: !188, line: 93, baseType: !3881, size: 64, offset: 1344)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3865, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3865, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3865, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3865, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3897 = !{!3898, !3899, !3900, !3901}
!3898 = !DILocalVariable(name: "fp", arg: 1, scope: !3860, file: !769, line: 58, type: !3863)
!3899 = !DILocalVariable(name: "saved_errno", scope: !3860, file: !769, line: 60, type: !70)
!3900 = !DILocalVariable(name: "fd", scope: !3860, file: !769, line: 63, type: !70)
!3901 = !DILocalVariable(name: "result", scope: !3860, file: !769, line: 74, type: !70)
!3902 = !DILocation(line: 0, scope: !3860)
!3903 = !DILocation(line: 63, column: 12, scope: !3860)
!3904 = !DILocation(line: 64, column: 10, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3860, file: !769, line: 64, column: 7)
!3906 = !DILocation(line: 64, column: 7, scope: !3860)
!3907 = !DILocation(line: 65, column: 12, scope: !3905)
!3908 = !DILocation(line: 65, column: 5, scope: !3905)
!3909 = !DILocation(line: 70, column: 9, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3860, file: !769, line: 70, column: 7)
!3911 = !DILocation(line: 70, column: 23, scope: !3910)
!3912 = !DILocation(line: 70, column: 33, scope: !3910)
!3913 = !DILocation(line: 70, column: 26, scope: !3910)
!3914 = !DILocation(line: 70, column: 59, scope: !3910)
!3915 = !DILocation(line: 71, column: 7, scope: !3910)
!3916 = !DILocation(line: 71, column: 10, scope: !3910)
!3917 = !DILocation(line: 70, column: 7, scope: !3860)
!3918 = !DILocation(line: 100, column: 12, scope: !3860)
!3919 = !DILocation(line: 105, column: 7, scope: !3860)
!3920 = !DILocation(line: 72, column: 19, scope: !3910)
!3921 = !DILocation(line: 105, column: 19, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3860, file: !769, line: 105, column: 7)
!3923 = !DILocation(line: 107, column: 13, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3922, file: !769, line: 106, column: 5)
!3925 = !DILocation(line: 109, column: 5, scope: !3924)
!3926 = !DILocation(line: 112, column: 1, scope: !3860)
!3927 = !DISubprogram(name: "fileno", scope: !405, file: !405, line: 809, type: !3861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3928 = !DISubprogram(name: "fclose", scope: !405, file: !405, line: 178, type: !3861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3929 = !DISubprogram(name: "__freading", scope: !3857, file: !3857, line: 51, type: !3861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3930 = !DISubprogram(name: "lseek", scope: !1194, file: !1194, line: 339, type: !3931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!210, !70, !210, !70}
!3933 = distinct !DISubprogram(name: "rpl_fflush", scope: !771, file: !771, line: 130, type: !3934, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3970)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!70, !3936}
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3938)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3939)
!3939 = !{!3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3938, file: !188, line: 51, baseType: !70, size: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3938, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3938, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3938, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3938, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3938, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3938, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3938, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3938, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3938, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3938, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3938, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3938, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3938, file: !188, line: 70, baseType: !3954, size: 64, offset: 832)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3938, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3938, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3938, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3938, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3938, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3938, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3938, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3938, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3938, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3938, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3938, file: !188, line: 93, baseType: !3954, size: 64, offset: 1344)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3938, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3938, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3938, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3938, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3970 = !{!3971}
!3971 = !DILocalVariable(name: "stream", arg: 1, scope: !3933, file: !771, line: 130, type: !3936)
!3972 = !DILocation(line: 0, scope: !3933)
!3973 = !DILocation(line: 151, column: 14, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3933, file: !771, line: 151, column: 7)
!3975 = !DILocation(line: 151, column: 22, scope: !3974)
!3976 = !DILocation(line: 151, column: 27, scope: !3974)
!3977 = !DILocation(line: 151, column: 7, scope: !3933)
!3978 = !DILocation(line: 152, column: 12, scope: !3974)
!3979 = !DILocation(line: 152, column: 5, scope: !3974)
!3980 = !DILocalVariable(name: "fp", arg: 1, scope: !3981, file: !771, line: 42, type: !3936)
!3981 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !771, file: !771, line: 42, type: !3982, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3984)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3936}
!3984 = !{!3980}
!3985 = !DILocation(line: 0, scope: !3981, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 157, column: 3, scope: !3933)
!3987 = !DILocation(line: 44, column: 12, scope: !3988, inlinedAt: !3986)
!3988 = distinct !DILexicalBlock(scope: !3981, file: !771, line: 44, column: 7)
!3989 = !DILocation(line: 44, column: 19, scope: !3988, inlinedAt: !3986)
!3990 = !DILocation(line: 44, column: 7, scope: !3981, inlinedAt: !3986)
!3991 = !DILocation(line: 46, column: 5, scope: !3988, inlinedAt: !3986)
!3992 = !DILocation(line: 159, column: 10, scope: !3933)
!3993 = !DILocation(line: 159, column: 3, scope: !3933)
!3994 = !DILocation(line: 236, column: 1, scope: !3933)
!3995 = !DISubprogram(name: "fflush", scope: !405, file: !405, line: 230, type: !3934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3996 = distinct !DISubprogram(name: "rpl_fseeko", scope: !773, file: !773, line: 28, type: !3997, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4034)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!70, !3999, !4033, !70}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !4001)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4001, file: !188, line: 51, baseType: !70, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4001, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4001, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4001, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4001, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4001, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4001, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4001, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4001, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4001, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4001, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4001, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4001, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4001, file: !188, line: 70, baseType: !4017, size: 64, offset: 832)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4001, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4001, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4001, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4001, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4001, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4001, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4001, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4001, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4001, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4001, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4001, file: !188, line: 93, baseType: !4017, size: 64, offset: 1344)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4001, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4001, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4001, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4001, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!4033 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !405, line: 63, baseType: !210)
!4034 = !{!4035, !4036, !4037, !4038}
!4035 = !DILocalVariable(name: "fp", arg: 1, scope: !3996, file: !773, line: 28, type: !3999)
!4036 = !DILocalVariable(name: "offset", arg: 2, scope: !3996, file: !773, line: 28, type: !4033)
!4037 = !DILocalVariable(name: "whence", arg: 3, scope: !3996, file: !773, line: 28, type: !70)
!4038 = !DILocalVariable(name: "pos", scope: !4039, file: !773, line: 123, type: !4033)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !773, line: 119, column: 5)
!4040 = distinct !DILexicalBlock(scope: !3996, file: !773, line: 55, column: 7)
!4041 = !DILocation(line: 0, scope: !3996)
!4042 = !DILocation(line: 55, column: 12, scope: !4040)
!4043 = !{!1326, !803, i64 16}
!4044 = !DILocation(line: 55, column: 33, scope: !4040)
!4045 = !{!1326, !803, i64 8}
!4046 = !DILocation(line: 55, column: 25, scope: !4040)
!4047 = !DILocation(line: 56, column: 7, scope: !4040)
!4048 = !DILocation(line: 56, column: 15, scope: !4040)
!4049 = !DILocation(line: 56, column: 37, scope: !4040)
!4050 = !{!1326, !803, i64 32}
!4051 = !DILocation(line: 56, column: 29, scope: !4040)
!4052 = !DILocation(line: 57, column: 7, scope: !4040)
!4053 = !DILocation(line: 57, column: 15, scope: !4040)
!4054 = !{!1326, !803, i64 72}
!4055 = !DILocation(line: 57, column: 29, scope: !4040)
!4056 = !DILocation(line: 55, column: 7, scope: !3996)
!4057 = !DILocation(line: 123, column: 26, scope: !4039)
!4058 = !DILocation(line: 123, column: 19, scope: !4039)
!4059 = !DILocation(line: 0, scope: !4039)
!4060 = !DILocation(line: 124, column: 15, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4039, file: !773, line: 124, column: 11)
!4062 = !DILocation(line: 124, column: 11, scope: !4039)
!4063 = !DILocation(line: 135, column: 19, scope: !4039)
!4064 = !DILocation(line: 136, column: 12, scope: !4039)
!4065 = !DILocation(line: 136, column: 20, scope: !4039)
!4066 = !{!1326, !1327, i64 144}
!4067 = !DILocation(line: 167, column: 7, scope: !4039)
!4068 = !DILocation(line: 169, column: 10, scope: !3996)
!4069 = !DILocation(line: 169, column: 3, scope: !3996)
!4070 = !DILocation(line: 170, column: 1, scope: !3996)
!4071 = !DISubprogram(name: "fseeko", scope: !405, file: !405, line: 736, type: !4072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!70, !3999, !210, !70}
!4074 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !688, file: !688, line: 100, type: !4075, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4078)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!108, !1855, !111, !108, !4077}
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!4078 = !{!4079, !4080, !4081, !4082, !4083}
!4079 = !DILocalVariable(name: "pwc", arg: 1, scope: !4074, file: !688, line: 100, type: !1855)
!4080 = !DILocalVariable(name: "s", arg: 2, scope: !4074, file: !688, line: 100, type: !111)
!4081 = !DILocalVariable(name: "n", arg: 3, scope: !4074, file: !688, line: 100, type: !108)
!4082 = !DILocalVariable(name: "ps", arg: 4, scope: !4074, file: !688, line: 100, type: !4077)
!4083 = !DILocalVariable(name: "ret", scope: !4074, file: !688, line: 130, type: !108)
!4084 = !DILocation(line: 0, scope: !4074)
!4085 = !DILocation(line: 105, column: 9, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4074, file: !688, line: 105, column: 7)
!4087 = !DILocation(line: 105, column: 7, scope: !4074)
!4088 = !DILocation(line: 117, column: 10, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4074, file: !688, line: 117, column: 7)
!4090 = !DILocation(line: 117, column: 7, scope: !4074)
!4091 = !DILocation(line: 130, column: 16, scope: !4074)
!4092 = !DILocation(line: 135, column: 11, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4074, file: !688, line: 135, column: 7)
!4094 = !DILocation(line: 135, column: 25, scope: !4093)
!4095 = !DILocation(line: 135, column: 30, scope: !4093)
!4096 = !DILocation(line: 135, column: 7, scope: !4074)
!4097 = !DILocalVariable(name: "ps", arg: 1, scope: !4098, file: !1828, line: 1135, type: !4077)
!4098 = distinct !DISubprogram(name: "mbszero", scope: !1828, file: !1828, line: 1135, type: !4099, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4077}
!4101 = !{!4097}
!4102 = !DILocation(line: 0, scope: !4098, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 137, column: 5, scope: !4093)
!4104 = !DILocalVariable(name: "__dest", arg: 1, scope: !4105, file: !1837, line: 57, type: !106)
!4105 = distinct !DISubprogram(name: "memset", scope: !1837, file: !1837, line: 57, type: !1838, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4106)
!4106 = !{!4104, !4107, !4108}
!4107 = !DILocalVariable(name: "__ch", arg: 2, scope: !4105, file: !1837, line: 57, type: !70)
!4108 = !DILocalVariable(name: "__len", arg: 3, scope: !4105, file: !1837, line: 57, type: !108)
!4109 = !DILocation(line: 0, scope: !4105, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 1137, column: 3, scope: !4098, inlinedAt: !4103)
!4111 = !DILocation(line: 59, column: 10, scope: !4105, inlinedAt: !4110)
!4112 = !DILocation(line: 137, column: 5, scope: !4093)
!4113 = !DILocation(line: 138, column: 11, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4074, file: !688, line: 138, column: 7)
!4115 = !DILocation(line: 138, column: 7, scope: !4074)
!4116 = !DILocation(line: 139, column: 5, scope: !4114)
!4117 = !DILocation(line: 143, column: 26, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4074, file: !688, line: 143, column: 7)
!4119 = !DILocation(line: 143, column: 41, scope: !4118)
!4120 = !DILocation(line: 143, column: 7, scope: !4074)
!4121 = !DILocation(line: 145, column: 15, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4123, file: !688, line: 145, column: 11)
!4123 = distinct !DILexicalBlock(scope: !4118, file: !688, line: 144, column: 5)
!4124 = !DILocation(line: 145, column: 11, scope: !4123)
!4125 = !DILocation(line: 146, column: 32, scope: !4122)
!4126 = !DILocation(line: 146, column: 16, scope: !4122)
!4127 = !DILocation(line: 146, column: 14, scope: !4122)
!4128 = !DILocation(line: 146, column: 9, scope: !4122)
!4129 = !DILocation(line: 286, column: 1, scope: !4074)
!4130 = !DISubprogram(name: "mbsinit", scope: !4131, file: !4131, line: 293, type: !4132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4131 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!70, !4134}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!4136 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !775, file: !775, line: 27, type: !3344, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4137)
!4137 = !{!4138, !4139, !4140, !4141}
!4138 = !DILocalVariable(name: "ptr", arg: 1, scope: !4136, file: !775, line: 27, type: !106)
!4139 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4136, file: !775, line: 27, type: !108)
!4140 = !DILocalVariable(name: "size", arg: 3, scope: !4136, file: !775, line: 27, type: !108)
!4141 = !DILocalVariable(name: "nbytes", scope: !4136, file: !775, line: 29, type: !108)
!4142 = !DILocation(line: 0, scope: !4136)
!4143 = !DILocation(line: 30, column: 7, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4136, file: !775, line: 30, column: 7)
!4145 = !DILocation(line: 30, column: 7, scope: !4136)
!4146 = !DILocation(line: 32, column: 7, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4144, file: !775, line: 31, column: 5)
!4148 = !DILocation(line: 32, column: 13, scope: !4147)
!4149 = !DILocation(line: 33, column: 7, scope: !4147)
!4150 = !DILocalVariable(name: "ptr", arg: 1, scope: !4151, file: !3436, line: 2057, type: !106)
!4151 = distinct !DISubprogram(name: "rpl_realloc", scope: !3436, file: !3436, line: 2057, type: !3428, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4152)
!4152 = !{!4150, !4153}
!4153 = !DILocalVariable(name: "size", arg: 2, scope: !4151, file: !3436, line: 2057, type: !108)
!4154 = !DILocation(line: 0, scope: !4151, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 37, column: 10, scope: !4136)
!4156 = !DILocation(line: 2059, column: 24, scope: !4151, inlinedAt: !4155)
!4157 = !DILocation(line: 2059, column: 10, scope: !4151, inlinedAt: !4155)
!4158 = !DILocation(line: 37, column: 3, scope: !4136)
!4159 = !DILocation(line: 38, column: 1, scope: !4136)
!4160 = distinct !DISubprogram(name: "hard_locale", scope: !706, file: !706, line: 28, type: !4161, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!171, !70}
!4163 = !{!4164, !4165}
!4164 = !DILocalVariable(name: "category", arg: 1, scope: !4160, file: !706, line: 28, type: !70)
!4165 = !DILocalVariable(name: "locale", scope: !4160, file: !706, line: 30, type: !4166)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4167)
!4167 = !{!4168}
!4168 = !DISubrange(count: 257)
!4169 = distinct !DIAssignID()
!4170 = !DILocation(line: 0, scope: !4160)
!4171 = !DILocation(line: 30, column: 3, scope: !4160)
!4172 = !DILocation(line: 32, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4160, file: !706, line: 32, column: 7)
!4174 = !DILocation(line: 32, column: 7, scope: !4160)
!4175 = !DILocalVariable(name: "__s1", arg: 1, scope: !4176, file: !881, line: 1359, type: !111)
!4176 = distinct !DISubprogram(name: "streq", scope: !881, file: !881, line: 1359, type: !882, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4177)
!4177 = !{!4175, !4178}
!4178 = !DILocalVariable(name: "__s2", arg: 2, scope: !4176, file: !881, line: 1359, type: !111)
!4179 = !DILocation(line: 0, scope: !4176, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 35, column: 9, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4160, file: !706, line: 35, column: 7)
!4182 = !DILocation(line: 1361, column: 11, scope: !4176, inlinedAt: !4180)
!4183 = !DILocation(line: 1361, column: 10, scope: !4176, inlinedAt: !4180)
!4184 = !DILocation(line: 35, column: 29, scope: !4181)
!4185 = !DILocation(line: 0, scope: !4176, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 35, column: 32, scope: !4181)
!4187 = !DILocation(line: 1361, column: 11, scope: !4176, inlinedAt: !4186)
!4188 = !DILocation(line: 1361, column: 10, scope: !4176, inlinedAt: !4186)
!4189 = !DILocation(line: 35, column: 7, scope: !4160)
!4190 = !DILocation(line: 46, column: 3, scope: !4160)
!4191 = !DILocation(line: 47, column: 1, scope: !4160)
!4192 = distinct !DISubprogram(name: "setlocale_null_r", scope: !779, file: !779, line: 154, type: !4193, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4195)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!70, !70, !105, !108}
!4195 = !{!4196, !4197, !4198}
!4196 = !DILocalVariable(name: "category", arg: 1, scope: !4192, file: !779, line: 154, type: !70)
!4197 = !DILocalVariable(name: "buf", arg: 2, scope: !4192, file: !779, line: 154, type: !105)
!4198 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4192, file: !779, line: 154, type: !108)
!4199 = !DILocation(line: 0, scope: !4192)
!4200 = !DILocation(line: 159, column: 10, scope: !4192)
!4201 = !DILocation(line: 159, column: 3, scope: !4192)
!4202 = distinct !DISubprogram(name: "setlocale_null", scope: !779, file: !779, line: 186, type: !4203, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!111, !70}
!4205 = !{!4206}
!4206 = !DILocalVariable(name: "category", arg: 1, scope: !4202, file: !779, line: 186, type: !70)
!4207 = !DILocation(line: 0, scope: !4202)
!4208 = !DILocation(line: 189, column: 10, scope: !4202)
!4209 = !DILocation(line: 189, column: 3, scope: !4202)
!4210 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !781, file: !781, line: 35, type: !4203, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4211)
!4211 = !{!4212, !4213}
!4212 = !DILocalVariable(name: "category", arg: 1, scope: !4210, file: !781, line: 35, type: !70)
!4213 = !DILocalVariable(name: "result", scope: !4210, file: !781, line: 37, type: !111)
!4214 = !DILocation(line: 0, scope: !4210)
!4215 = !DILocation(line: 37, column: 24, scope: !4210)
!4216 = !DILocation(line: 62, column: 3, scope: !4210)
!4217 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !781, file: !781, line: 66, type: !4193, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4218)
!4218 = !{!4219, !4220, !4221, !4222, !4223}
!4219 = !DILocalVariable(name: "category", arg: 1, scope: !4217, file: !781, line: 66, type: !70)
!4220 = !DILocalVariable(name: "buf", arg: 2, scope: !4217, file: !781, line: 66, type: !105)
!4221 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4217, file: !781, line: 66, type: !108)
!4222 = !DILocalVariable(name: "result", scope: !4217, file: !781, line: 111, type: !111)
!4223 = !DILocalVariable(name: "length", scope: !4224, file: !781, line: 125, type: !108)
!4224 = distinct !DILexicalBlock(scope: !4225, file: !781, line: 124, column: 5)
!4225 = distinct !DILexicalBlock(scope: !4217, file: !781, line: 113, column: 7)
!4226 = !DILocation(line: 0, scope: !4217)
!4227 = !DILocation(line: 0, scope: !4210, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 111, column: 24, scope: !4217)
!4229 = !DILocation(line: 37, column: 24, scope: !4210, inlinedAt: !4228)
!4230 = !DILocation(line: 113, column: 14, scope: !4225)
!4231 = !DILocation(line: 113, column: 7, scope: !4217)
!4232 = !DILocation(line: 116, column: 19, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !781, line: 116, column: 11)
!4234 = distinct !DILexicalBlock(scope: !4225, file: !781, line: 114, column: 5)
!4235 = !DILocation(line: 116, column: 11, scope: !4234)
!4236 = !DILocation(line: 120, column: 16, scope: !4233)
!4237 = !DILocation(line: 120, column: 9, scope: !4233)
!4238 = !DILocation(line: 125, column: 23, scope: !4224)
!4239 = !DILocation(line: 0, scope: !4224)
!4240 = !DILocation(line: 126, column: 18, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4224, file: !781, line: 126, column: 11)
!4242 = !DILocation(line: 126, column: 11, scope: !4224)
!4243 = !DILocation(line: 128, column: 39, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4241, file: !781, line: 127, column: 9)
!4245 = !DILocalVariable(name: "__dest", arg: 1, scope: !4246, file: !1837, line: 26, type: !3706)
!4246 = distinct !DISubprogram(name: "memcpy", scope: !1837, file: !1837, line: 26, type: !3704, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4247)
!4247 = !{!4245, !4248, !4249}
!4248 = !DILocalVariable(name: "__src", arg: 2, scope: !4246, file: !1837, line: 26, type: !1012)
!4249 = !DILocalVariable(name: "__len", arg: 3, scope: !4246, file: !1837, line: 26, type: !108)
!4250 = !DILocation(line: 0, scope: !4246, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 128, column: 11, scope: !4244)
!4252 = !DILocation(line: 29, column: 10, scope: !4246, inlinedAt: !4251)
!4253 = !DILocation(line: 129, column: 11, scope: !4244)
!4254 = !DILocation(line: 133, column: 23, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !781, line: 133, column: 15)
!4256 = distinct !DILexicalBlock(scope: !4241, file: !781, line: 132, column: 9)
!4257 = !DILocation(line: 133, column: 15, scope: !4256)
!4258 = !DILocation(line: 138, column: 44, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4255, file: !781, line: 134, column: 13)
!4260 = !DILocation(line: 0, scope: !4246, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 138, column: 15, scope: !4259)
!4262 = !DILocation(line: 29, column: 10, scope: !4246, inlinedAt: !4261)
!4263 = !DILocation(line: 139, column: 15, scope: !4259)
!4264 = !DILocation(line: 139, column: 32, scope: !4259)
!4265 = !DILocation(line: 140, column: 13, scope: !4259)
!4266 = !DILocation(line: 0, scope: !4225)
!4267 = !DILocation(line: 145, column: 1, scope: !4217)
