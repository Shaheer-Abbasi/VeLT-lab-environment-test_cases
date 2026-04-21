; ModuleID = 'src/mkfifo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !428
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !399
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !418
@.str.1.37 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !420
@.str.2.39 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !422
@.str.3.38 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !424
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !426
@.str.4.32 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !430
@.str.5.33 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !432
@.str.6.34 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !437
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !442
@.str.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !448
@.str.1.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !450
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !452
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !483
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !486
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !488
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !490
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !492
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !494
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !496
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !498
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !500
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !502
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.62, ptr @.str.1.63, ptr @.str.2.64, ptr @.str.3.65, ptr @.str.4.66, ptr @.str.5.67, ptr @.str.6.68, ptr @.str.7.69, ptr @.str.8.70, ptr @.str.9.71, ptr null], align 16, !dbg !504
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !517
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !531
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !569
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !576
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !533
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !578
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !521
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !538
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !540
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !542
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !544
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !546
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !584
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !587
@.str.2.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !589
@.str.3.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !591
@.str.4.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !593
@.str.5.85 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !595
@.str.6.86 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !600
@.str.7.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !605
@.str.8.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !607
@.str.9.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !612
@.str.10.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !617
@.str.11.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !622
@.str.12.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !627
@.str.13.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !629
@.str.14.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !631
@.str.15.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !636
@.str.16.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !641
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.101 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !646
@.str.18.102 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !648
@.str.19.103 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !650
@.str.20.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !652
@.str.21.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !654
@.str.22.106 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !656
@.str.23.107 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !658
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !660
@exit_failure = dso_local global i32 1, align 4, !dbg !668
@.str.124 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !674
@.str.1.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !677
@.str.2.123 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !679
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !681
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !684
@.str.1.140 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !699

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !785 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !789, metadata !DIExpression()), !dbg !790
  %2 = icmp eq i32 %0, 0, !dbg !791
  br i1 %2, label %8, label %3, !dbg !793

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !794, !tbaa !796
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !794
  %6 = load ptr, ptr @program_name, align 8, !dbg !794, !tbaa !796
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !794
  br label %37, !dbg !794

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !800
  %10 = load ptr, ptr @program_name, align 8, !dbg !800, !tbaa !796
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !800
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !802
  %13 = load ptr, ptr @stdout, align 8, !dbg !802, !tbaa !796
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !802
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !803
  %16 = load ptr, ptr @stdout, align 8, !dbg !803, !tbaa !796
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !803
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !806
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !806
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !807
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !807
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !808
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !808
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !809
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !809
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !810
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !810
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !811, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata !830, metadata !824, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata ptr poison, metadata !823, metadata !DIExpression()), !dbg !828
  tail call void @emit_bug_reporting_address() #37, !dbg !831
  %23 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !832
  call void @llvm.dbg.value(metadata ptr %23, metadata !826, metadata !DIExpression()), !dbg !828
  %24 = icmp eq ptr %23, null, !dbg !833
  br i1 %24, label %32, label %25, !dbg !835

25:                                               ; preds = %8
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #38, !dbg !836
  %27 = icmp eq i32 %26, 0, !dbg !836
  br i1 %27, label %32, label %28, !dbg !837

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !838
  %30 = load ptr, ptr @stdout, align 8, !dbg !838, !tbaa !796
  %31 = tail call i32 @fputs_unlocked(ptr noundef %29, ptr noundef %30), !dbg !838
  br label %32, !dbg !840

32:                                               ; preds = %8, %25, %28
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !823, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !827, metadata !DIExpression()), !dbg !828
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !841
  %34 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %33, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #37, !dbg !841
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #37, !dbg !842
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #37, !dbg !842
  br label %37

37:                                               ; preds = %32, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !843
  unreachable, !dbg !843
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !844 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !848 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !854 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !857 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !161 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !165, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !166, metadata !DIExpression()), !dbg !861
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !862, !tbaa !863
  %3 = icmp eq i32 %2, -1, !dbg !865
  br i1 %3, label %4, label %16, !dbg !866

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.23) #37, !dbg !867
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !167, metadata !DIExpression()), !dbg !868
  %6 = icmp eq ptr %5, null, !dbg !869
  br i1 %6, label %14, label %7, !dbg !870

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !871, !tbaa !872
  %9 = icmp eq i8 %8, 0, !dbg !871
  br i1 %9, label %14, label %10, !dbg !873

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !874, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.24, metadata !880, metadata !DIExpression()), !dbg !881
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.24) #38, !dbg !883
  %12 = icmp eq i32 %11, 0, !dbg !884
  %13 = zext i1 %12 to i32, !dbg !873
  br label %14, !dbg !873

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !885, !tbaa !863
  br label %16, !dbg !886

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !887
  %18 = icmp eq i32 %17, 0, !dbg !887
  br i1 %18, label %22, label %19, !dbg !889

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !890, !tbaa !796
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !890
  br label %124, !dbg !892

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !170, metadata !DIExpression()), !dbg !861
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.25) #38, !dbg !893
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !894
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !172, metadata !DIExpression()), !dbg !861
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !895
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !173, metadata !DIExpression()), !dbg !861
  %26 = icmp eq ptr %25, null, !dbg !896
  br i1 %26, label %54, label %27, !dbg !897

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !898
  br i1 %28, label %54, label %29, !dbg !899

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !174, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !900
  %30 = icmp ult ptr %24, %25, !dbg !901
  br i1 %30, label %31, label %54, !dbg !902

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !861
  %33 = load ptr, ptr %32, align 8, !tbaa !796
  br label %34, !dbg !902

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !174, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !178, metadata !DIExpression()), !dbg !900
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !903
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !174, metadata !DIExpression()), !dbg !900
  %38 = load i8, ptr %35, align 1, !dbg !903, !tbaa !872
  %39 = sext i8 %38 to i64, !dbg !903
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !903
  %41 = load i16, ptr %40, align 2, !dbg !903, !tbaa !904
  %42 = freeze i16 %41, !dbg !906
  %43 = lshr i16 %42, 13, !dbg !906
  %44 = and i16 %43, 1, !dbg !906
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !907
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !178, metadata !DIExpression()), !dbg !900
  %47 = icmp ult ptr %37, %25, !dbg !901
  %48 = icmp ult i64 %46, 2, !dbg !908
  %49 = select i1 %47, i1 %48, i1 false, !dbg !908
  br i1 %49, label %34, label %50, !dbg !902, !llvm.loop !909

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !911
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !913
  %53 = zext i1 %51 to i8, !dbg !913
  br label %54, !dbg !913

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !861
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !861
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !170, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !173, metadata !DIExpression()), !dbg !861
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.26) #38, !dbg !914
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !179, metadata !DIExpression()), !dbg !861
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !915
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !180, metadata !DIExpression()), !dbg !861
  br label %59, !dbg !916

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !861
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !861
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !170, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !180, metadata !DIExpression()), !dbg !861
  %62 = load i8, ptr %60, align 1, !dbg !917, !tbaa !872
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !918

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !919
  %65 = load i8, ptr %64, align 1, !dbg !922, !tbaa !872
  %66 = icmp eq i8 %65, 45, !dbg !923
  %67 = select i1 %66, i8 0, i8 %61, !dbg !924
  br label %68, !dbg !924

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !861
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !170, metadata !DIExpression()), !dbg !861
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !925
  %71 = load ptr, ptr %70, align 8, !dbg !925, !tbaa !796
  %72 = sext i8 %62 to i64, !dbg !925
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !925
  %74 = load i16, ptr %73, align 2, !dbg !925, !tbaa !904
  %75 = and i16 %74, 8192, !dbg !925
  %76 = icmp eq i16 %75, 0, !dbg !925
  br i1 %76, label %92, label %77, !dbg !927

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !928
  br i1 %78, label %94, label %79, !dbg !931

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !932
  %81 = load i8, ptr %80, align 1, !dbg !932, !tbaa !872
  %82 = sext i8 %81 to i64, !dbg !932
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !932
  %84 = load i16, ptr %83, align 2, !dbg !932, !tbaa !904
  %85 = and i16 %84, 8192, !dbg !932
  %86 = icmp eq i16 %85, 0, !dbg !932
  br i1 %86, label %87, label %94, !dbg !933

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !934
  %89 = icmp ne i8 %88, 0, !dbg !934
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !936
  br i1 %91, label %92, label %94, !dbg !936

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !937
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !180, metadata !DIExpression()), !dbg !861
  br label %59, !dbg !916, !llvm.loop !938

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !940
  %96 = load ptr, ptr @stdout, align 8, !dbg !940, !tbaa !796
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !940
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata !830, metadata !880, metadata !DIExpression()), !dbg !959
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !237, metadata !DIExpression()), !dbg !861
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #38, !dbg !961
  %99 = icmp eq i32 %98, 0, !dbg !961
  br i1 %99, label %103, label %100, !dbg !963

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.41, i64 noundef 9) #38, !dbg !964
  %102 = icmp eq i32 %101, 0, !dbg !964
  br i1 %102, label %103, label %106, !dbg !965

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !966
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !966
  br label %109, !dbg !968

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !969
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !969
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !796
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %110), !dbg !971
  %112 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !796
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %112), !dbg !972
  %114 = ptrtoint ptr %60 to i64, !dbg !973
  %115 = sub i64 %114, %95, !dbg !973
  %116 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !796
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !973
  %118 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !796
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %118), !dbg !974
  %120 = load ptr, ptr @stdout, align 8, !dbg !975, !tbaa !796
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %120), !dbg !975
  %122 = load ptr, ptr @stdout, align 8, !dbg !976, !tbaa !796
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !976
  br label %124, !dbg !977

124:                                              ; preds = %109, %19
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1018, metadata !DIExpression()), !dbg !1042
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1019, metadata !DIExpression()), !dbg !1042
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1020, metadata !DIExpression()), !dbg !1042
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1021, metadata !DIExpression()), !dbg !1042
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1022, metadata !DIExpression()), !dbg !1042
  %3 = load ptr, ptr %1, align 8, !dbg !1043, !tbaa !796
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !1044
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #37, !dbg !1045
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #37, !dbg !1046
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #37, !dbg !1047
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1048
  br label %8, !dbg !1049

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !1049

10:                                               ; preds = %19, %8
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1020, metadata !DIExpression()), !dbg !1042
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1021, metadata !DIExpression()), !dbg !1042
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1050
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1026, metadata !DIExpression()), !dbg !1042
  switch i32 %11, label %25 [
    i32 -1, label %26
    i32 109, label %12
    i32 90, label %14
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !1049

12:                                               ; preds = %10
  %13 = load ptr, ptr @optarg, align 8, !dbg !1051, !tbaa !796
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !1020, metadata !DIExpression()), !dbg !1042
  br label %8, !dbg !1054, !llvm.loop !1055

14:                                               ; preds = %10
  %15 = load ptr, ptr @optarg, align 8, !dbg !1057, !tbaa !796
  %16 = icmp eq ptr %15, null, !dbg !1057
  br i1 %16, label %19, label %17, !dbg !1061

17:                                               ; preds = %14
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1062
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18) #37, !dbg !1062
  br label %19, !dbg !1064

19:                                               ; preds = %17, %14
  br label %10, !dbg !1042, !llvm.loop !1055

20:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #41, !dbg !1065
  unreachable, !dbg !1065

21:                                               ; preds = %10
  %22 = load ptr, ptr @stdout, align 8, !dbg !1066, !tbaa !796
  %23 = load ptr, ptr @Version, align 8, !dbg !1066, !tbaa !796
  %24 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #37, !dbg !1066
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %23, ptr noundef %24, ptr noundef null) #37, !dbg !1066
  tail call void @exit(i32 noundef 0) #39, !dbg !1066
  unreachable, !dbg !1066

25:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #41, !dbg !1067
  unreachable, !dbg !1067

26:                                               ; preds = %10
  %27 = load i32, ptr @optind, align 4, !dbg !1068, !tbaa !863
  %28 = icmp eq i32 %27, %0, !dbg !1070
  br i1 %28, label %29, label %31, !dbg !1071

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !1072
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #37, !dbg !1072
  tail call void @usage(i32 noundef 1) #41, !dbg !1074
  unreachable, !dbg !1074

31:                                               ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 438, metadata !1030, metadata !DIExpression()), !dbg !1042
  %32 = icmp eq ptr %9, null, !dbg !1075
  br i1 %32, label %47, label %33, !dbg !1076

33:                                               ; preds = %31
  %34 = tail call noalias ptr @mode_compile(ptr noundef nonnull %9) #37, !dbg !1077
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1034, metadata !DIExpression()), !dbg !1078
  %35 = icmp eq ptr %34, null, !dbg !1079
  br i1 %35, label %36, label %38, !dbg !1081

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #37, !dbg !1082
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %37) #37, !dbg !1082
  unreachable, !dbg !1082

38:                                               ; preds = %33
  %39 = tail call i32 @umask(i32 noundef 0) #37, !dbg !1083
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1040, metadata !DIExpression()), !dbg !1078
  %40 = tail call i32 @umask(i32 noundef %39) #37, !dbg !1084
  %41 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef zeroext false, i32 noundef %39, ptr noundef nonnull %34, ptr noundef null) #38, !dbg !1085
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !1030, metadata !DIExpression()), !dbg !1042
  tail call void @free(ptr noundef nonnull %34) #37, !dbg !1086
  %42 = icmp ult i32 %41, 512, !dbg !1087
  br i1 %42, label %43, label %45, !dbg !1089

43:                                               ; preds = %38
  %44 = load i32, ptr @optind, align 4, !dbg !1090, !tbaa !863
  br label %47, !dbg !1089

45:                                               ; preds = %38
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !1093
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #37, !dbg !1093
  unreachable, !dbg !1093

47:                                               ; preds = %43, %31
  %48 = phi i32 [ %27, %31 ], [ %44, %43 ], !dbg !1090
  %49 = phi i32 [ 438, %31 ], [ %41, %43 ], !dbg !1042
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1030, metadata !DIExpression()), !dbg !1042
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1041, metadata !DIExpression()), !dbg !1042
  %50 = icmp slt i32 %48, %0, !dbg !1094
  br i1 %50, label %51, label %82, !dbg !1095

51:                                               ; preds = %47, %77
  %52 = phi i32 [ %80, %77 ], [ %48, %47 ]
  %53 = phi i32 [ %78, %77 ], [ 0, %47 ]
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1041, metadata !DIExpression()), !dbg !1042
  %54 = sext i32 %52 to i64, !dbg !1096
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1096
  %56 = load ptr, ptr %55, align 8, !dbg !1096, !tbaa !796
  %57 = tail call i32 @mkfifo(ptr noundef %56, i32 noundef %49) #37, !dbg !1099
  %58 = icmp eq i32 %57, 0, !dbg !1100
  br i1 %58, label %59, label %67, !dbg !1101

59:                                               ; preds = %51
  br i1 %32, label %77, label %60, !dbg !1102

60:                                               ; preds = %59
  %61 = load i32, ptr @optind, align 4, !dbg !1104, !tbaa !863
  %62 = sext i32 %61 to i64, !dbg !1105
  %63 = getelementptr inbounds ptr, ptr %1, i64 %62, !dbg !1105
  %64 = load ptr, ptr %63, align 8, !dbg !1105, !tbaa !796
  %65 = tail call i32 @lchmod(ptr noundef %64, i32 noundef %49) #37, !dbg !1106
  %66 = icmp eq i32 %65, 0, !dbg !1107
  br i1 %66, label %77, label %67, !dbg !1108

67:                                               ; preds = %60, %51
  %68 = phi ptr [ @.str.20, %51 ], [ @.str.21, %60 ]
  %69 = tail call ptr @__errno_location() #40, !dbg !1109
  %70 = load i32, ptr %69, align 4, !dbg !1109, !tbaa !863
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %68, i32 noundef 5) #37, !dbg !1109
  %72 = load i32, ptr @optind, align 4, !dbg !1109, !tbaa !863
  %73 = sext i32 %72 to i64, !dbg !1109
  %74 = getelementptr inbounds ptr, ptr %1, i64 %73, !dbg !1109
  %75 = load ptr, ptr %74, align 8, !dbg !1109, !tbaa !796
  %76 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %75) #37, !dbg !1109
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %70, ptr noundef %71, ptr noundef %76) #37, !dbg !1109
  br label %77, !dbg !1110

77:                                               ; preds = %67, %60, %59
  %78 = phi i32 [ %53, %60 ], [ %53, %59 ], [ 1, %67 ], !dbg !1042
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1041, metadata !DIExpression()), !dbg !1042
  %79 = load i32, ptr @optind, align 4, !dbg !1110, !tbaa !863
  %80 = add nsw i32 %79, 1, !dbg !1110
  store i32 %80, ptr @optind, align 4, !dbg !1110, !tbaa !863
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1144, metadata !DIExpression()), !dbg !1145
  store ptr %0, ptr @file_name, align 8, !dbg !1146, !tbaa !796
  ret void, !dbg !1147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #12 !dbg !1148 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1152, metadata !DIExpression()), !dbg !1153
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1154, !tbaa !1155
  ret void, !dbg !1157
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1158 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1163, !tbaa !796
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1164
  %3 = icmp eq i32 %2, 0, !dbg !1165
  br i1 %3, label %22, label %4, !dbg !1166

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1167, !tbaa !1155, !range !1168, !noundef !830
  %6 = icmp eq i8 %5, 0, !dbg !1167
  br i1 %6, label %11, label %7, !dbg !1169

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1170
  %9 = load i32, ptr %8, align 4, !dbg !1170, !tbaa !863
  %10 = icmp eq i32 %9, 32, !dbg !1171
  br i1 %10, label %22, label %11, !dbg !1172

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1.28, i32 noundef 5) #37, !dbg !1173
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1160, metadata !DIExpression()), !dbg !1174
  %13 = load ptr, ptr @file_name, align 8, !dbg !1175, !tbaa !796
  %14 = icmp eq ptr %13, null, !dbg !1175
  %15 = tail call ptr @__errno_location() #40, !dbg !1177
  %16 = load i32, ptr %15, align 4, !dbg !1177, !tbaa !863
  br i1 %14, label %19, label %17, !dbg !1178

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1179
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.29, ptr noundef %18, ptr noundef %12) #37, !dbg !1179
  br label %20, !dbg !1179

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.30, ptr noundef %12) #37, !dbg !1180
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1181, !tbaa !863
  tail call void @_exit(i32 noundef %21) #39, !dbg !1182
  unreachable, !dbg !1182

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1183, !tbaa !796
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1185
  %25 = icmp eq i32 %24, 0, !dbg !1186
  br i1 %25, label %28, label %26, !dbg !1187

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1188, !tbaa !863
  tail call void @_exit(i32 noundef %27) #39, !dbg !1189
  unreachable, !dbg !1189

28:                                               ; preds = %22
  ret void, !dbg !1190
}

; Function Attrs: noreturn
declare !dbg !1191 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !dbg !1193 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1197, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1198, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1199, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1200, metadata !DIExpression()), !dbg !1201
  tail call fastcc void @flush_stdout(), !dbg !1202
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1203, !tbaa !796
  %6 = icmp eq ptr %5, null, !dbg !1203
  br i1 %6, label %8, label %7, !dbg !1205

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1206
  br label %12, !dbg !1206

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1207, !tbaa !796
  %10 = tail call ptr @getprogname() #38, !dbg !1207
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef %10) #37, !dbg !1207
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1209
  ret void, !dbg !1210
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1211 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1213, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i32 1, metadata !1215, metadata !DIExpression()), !dbg !1220
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1223
  %2 = icmp slt i32 %1, 0, !dbg !1224
  br i1 %2, label %6, label %3, !dbg !1225

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1226, !tbaa !796
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1226
  br label %6, !dbg !1226

6:                                                ; preds = %3, %0
  ret void, !dbg !1227
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1228 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1234
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1230, metadata !DIExpression()), !dbg !1235
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1231, metadata !DIExpression()), !dbg !1235
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1232, metadata !DIExpression()), !dbg !1235
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1233, metadata !DIExpression()), !dbg !1235
  %6 = load ptr, ptr @stderr, align 8, !dbg !1236, !tbaa !796
  call void @llvm.dbg.value(metadata ptr %6, metadata !1237, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata ptr %2, metadata !1277, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata ptr %3, metadata !1278, metadata !DIExpression()), !dbg !1279
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1281
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1282, !tbaa !863
  %9 = add i32 %8, 1, !dbg !1282
  store i32 %9, ptr @error_message_count, align 4, !dbg !1282, !tbaa !863
  %10 = icmp eq i32 %1, 0, !dbg !1283
  br i1 %10, label %20, label %11, !dbg !1285

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1286, metadata !DIExpression(), metadata !1234, metadata ptr %5, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i32 %1, metadata !1289, metadata !DIExpression()), !dbg !1294
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1296
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1297
  call void @llvm.dbg.value(metadata ptr %12, metadata !1290, metadata !DIExpression()), !dbg !1294
  %13 = icmp eq ptr %12, null, !dbg !1298
  br i1 %13, label %14, label %16, !dbg !1300

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.32, ptr noundef nonnull @.str.5.33, i32 noundef 5) #37, !dbg !1301
  call void @llvm.dbg.value(metadata ptr %15, metadata !1290, metadata !DIExpression()), !dbg !1294
  br label %16, !dbg !1302

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1294
  call void @llvm.dbg.value(metadata ptr %17, metadata !1290, metadata !DIExpression()), !dbg !1294
  %18 = load ptr, ptr @stderr, align 8, !dbg !1303, !tbaa !796
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.34, ptr noundef %17) #37, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1304
  br label %20, !dbg !1305

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1306, !tbaa !796
  call void @llvm.dbg.value(metadata i32 10, metadata !1307, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata ptr %21, metadata !1313, metadata !DIExpression()), !dbg !1314
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1316
  %23 = load ptr, ptr %22, align 8, !dbg !1316, !tbaa !1317
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1316
  %25 = load ptr, ptr %24, align 8, !dbg !1316, !tbaa !1320
  %26 = icmp ult ptr %23, %25, !dbg !1316
  br i1 %26, label %29, label %27, !dbg !1316, !prof !1321

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1316
  br label %31, !dbg !1316

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1316
  store ptr %30, ptr %22, align 8, !dbg !1316, !tbaa !1317
  store i8 10, ptr %23, align 1, !dbg !1316, !tbaa !872
  br label %31, !dbg !1316

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1322, !tbaa !796
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1322
  %34 = icmp eq i32 %0, 0, !dbg !1323
  br i1 %34, label %36, label %35, !dbg !1325

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1326
  unreachable, !dbg !1326

36:                                               ; preds = %31
  ret void, !dbg !1327
}

declare !dbg !1328 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nounwind
declare !dbg !1331 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

declare !dbg !1334 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1337 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1340 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1344 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1357
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1351, metadata !DIExpression(), metadata !1357, metadata ptr %4, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1348, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1349, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1350, metadata !DIExpression()), !dbg !1358
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1359
  call void @llvm.va_start(ptr nonnull %4), !dbg !1360
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1361
  call void @llvm.va_end(ptr nonnull %4), !dbg !1362
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1363
  ret void, !dbg !1363
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !dbg !401 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !412, metadata !DIExpression()), !dbg !1364
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !413, metadata !DIExpression()), !dbg !1364
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !414, metadata !DIExpression()), !dbg !1364
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !415, metadata !DIExpression()), !dbg !1364
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !416, metadata !DIExpression()), !dbg !1364
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !417, metadata !DIExpression()), !dbg !1364
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1365, !tbaa !863
  %8 = icmp eq i32 %7, 0, !dbg !1365
  br i1 %8, label %23, label %9, !dbg !1367

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1368, !tbaa !863
  %11 = icmp eq i32 %10, %3, !dbg !1371
  br i1 %11, label %12, label %22, !dbg !1372

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1373, !tbaa !796
  %14 = icmp eq ptr %13, %2, !dbg !1374
  br i1 %14, label %36, label %15, !dbg !1375

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1376
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1377
  br i1 %18, label %19, label %22, !dbg !1377

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1378
  %21 = icmp eq i32 %20, 0, !dbg !1379
  br i1 %21, label %36, label %22, !dbg !1380

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1381, !tbaa !796
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1382, !tbaa !863
  br label %23, !dbg !1383

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1384
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1385, !tbaa !796
  %25 = icmp eq ptr %24, null, !dbg !1385
  br i1 %25, label %27, label %26, !dbg !1387

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1388
  br label %31, !dbg !1388

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1389, !tbaa !796
  %29 = tail call ptr @getprogname() #38, !dbg !1389
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.37, ptr noundef %29) #37, !dbg !1389
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1391, !tbaa !796
  %33 = icmp eq ptr %2, null, !dbg !1391
  %34 = select i1 %33, ptr @.str.3.38, ptr @.str.2.39, !dbg !1391
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1391
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1392
  br label %36, !dbg !1393

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1393
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1394 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1403, metadata !DIExpression(), metadata !1404, metadata ptr %6, metadata !DIExpression()), !dbg !1405
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1398, metadata !DIExpression()), !dbg !1405
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1399, metadata !DIExpression()), !dbg !1405
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1400, metadata !DIExpression()), !dbg !1405
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1401, metadata !DIExpression()), !dbg !1405
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1402, metadata !DIExpression()), !dbg !1405
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1406
  call void @llvm.va_start(ptr nonnull %6), !dbg !1407
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1408
  call void @llvm.va_end(ptr nonnull %6), !dbg !1409
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1410
  ret void, !dbg !1410
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1411 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1414, !tbaa !796
  ret ptr %1, !dbg !1415
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !1416 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1428, metadata !DIExpression()), !dbg !1458
  %2 = load i8, ptr %0, align 1, !dbg !1459, !tbaa !872
  %3 = and i8 %2, -8, !dbg !1460
  %4 = icmp eq i8 %3, 48, !dbg !1460
  br i1 %4, label %5, label %34, !dbg !1460

5:                                                ; preds = %1, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %1 ], !dbg !1461
  %7 = phi i32 [ %12, %14 ], [ 0, %1 ], !dbg !1463
  %8 = phi ptr [ %15, %14 ], [ %0, %1 ], !dbg !1463
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1429, metadata !DIExpression()), !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1432, metadata !DIExpression()), !dbg !1463
  %9 = shl i32 %7, 3, !dbg !1464
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1429, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1463
  %10 = zext nneg i8 %6 to i32, !dbg !1461
  %11 = add i32 %9, -48, !dbg !1465
  %12 = add nsw i32 %11, %10, !dbg !1466
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1432, metadata !DIExpression()), !dbg !1463
  %13 = icmp ugt i32 %12, 4095, !dbg !1467
  br i1 %13, label %139, label %14, !dbg !1469

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1470
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !1429, metadata !DIExpression()), !dbg !1463
  %16 = load i8, ptr %15, align 1, !dbg !1471, !tbaa !872
  %17 = and i8 %16, -8, !dbg !1472
  %18 = icmp eq i8 %17, 48, !dbg !1472
  br i1 %18, label %5, label %19, !dbg !1472, !llvm.loop !1473

19:                                               ; preds = %14
  %20 = icmp eq i8 %16, 0, !dbg !1476
  br i1 %20, label %21, label %139, !dbg !1478

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1433, metadata !DIExpression()), !dbg !1463
  %22 = ptrtoint ptr %15 to i64, !dbg !1479
  %23 = ptrtoint ptr %0 to i64, !dbg !1479
  %24 = sub i64 %22, %23, !dbg !1479
  %25 = icmp slt i64 %24, 5, !dbg !1480
  %26 = or i32 %12, 1023, !dbg !1481
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !1481
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1434, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i32 %12, metadata !1482, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %27, metadata !1487, metadata !DIExpression()), !dbg !1489
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #43, !dbg !1491
  call void @llvm.dbg.value(metadata ptr %28, metadata !1488, metadata !DIExpression()), !dbg !1489
  store i8 61, ptr %28, align 4, !dbg !1492, !tbaa !1493
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !1495
  store i8 1, ptr %29, align 1, !dbg !1496, !tbaa !1497
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !1498
  store i32 4095, ptr %30, align 4, !dbg !1499, !tbaa !1500
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !1501
  store i32 %12, ptr %31, align 4, !dbg !1502, !tbaa !1503
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !1504
  store i32 %27, ptr %32, align 4, !dbg !1505, !tbaa !1506
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !1507
  store i8 0, ptr %33, align 1, !dbg !1508, !tbaa !1497
  br label %139, !dbg !1509

34:                                               ; preds = %1, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %1 ], !dbg !1510
  %36 = phi i64 [ %43, %41 ], [ 1, %1 ], !dbg !1512
  %37 = phi ptr [ %44, %41 ], [ %0, %1 ], !dbg !1513
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !1438, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1436, metadata !DIExpression()), !dbg !1512
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !1515

38:                                               ; preds = %34
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 16) #44, !dbg !1516
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !1435, metadata !DIExpression()), !dbg !1458
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1440, metadata !DIExpression()), !dbg !1458
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1441, metadata !DIExpression()), !dbg !1458
  br label %46, !dbg !1517

40:                                               ; preds = %34
  br label %41, !dbg !1518

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !1436, metadata !DIExpression()), !dbg !1512
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1520
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1438, metadata !DIExpression()), !dbg !1514
  %45 = load i8, ptr %44, align 1, !dbg !1510, !tbaa !872
  br label %34, !dbg !1521, !llvm.loop !1522

46:                                               ; preds = %134, %38
  %47 = phi i64 [ 0, %38 ], [ %122, %134 ], !dbg !1524
  %48 = phi ptr [ %0, %38 ], [ %135, %134 ], !dbg !1525
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1449, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !1441, metadata !DIExpression()), !dbg !1458
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1440, metadata !DIExpression()), !dbg !1458
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1442, metadata !DIExpression()), !dbg !1527
  br label %49, !dbg !1528

49:                                               ; preds = %60, %46
  %50 = phi ptr [ %48, %46 ], [ %62, %60 ], !dbg !1529
  %51 = phi i32 [ 0, %46 ], [ %61, %60 ], !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1442, metadata !DIExpression()), !dbg !1527
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1441, metadata !DIExpression()), !dbg !1458
  %52 = load i8, ptr %50, align 1, !dbg !1530, !tbaa !872
  switch i8 %52, label %138 [
    i8 117, label %54
    i8 103, label %56
    i8 111, label %58
    i8 97, label %60
    i8 61, label %53
    i8 43, label %53
    i8 45, label %53
  ], !dbg !1533

53:                                               ; preds = %49, %49, %49
  br label %63, !dbg !1534

54:                                               ; preds = %49
  %55 = or i32 %51, 2496, !dbg !1535
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1442, metadata !DIExpression()), !dbg !1527
  br label %60, !dbg !1537

56:                                               ; preds = %49
  %57 = or i32 %51, 1080, !dbg !1538
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !1442, metadata !DIExpression()), !dbg !1527
  br label %60, !dbg !1539

58:                                               ; preds = %49
  %59 = or i32 %51, 519, !dbg !1540
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1442, metadata !DIExpression()), !dbg !1527
  br label %60, !dbg !1541

60:                                               ; preds = %49, %54, %56, %58
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ 4095, %49 ], !dbg !1542
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1442, metadata !DIExpression()), !dbg !1527
  %62 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1543
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !1441, metadata !DIExpression()), !dbg !1458
  br label %49, !dbg !1544, !llvm.loop !1545

63:                                               ; preds = %133, %53
  %64 = phi i8 [ %52, %53 ], [ %132, %133 ], !dbg !1548
  %65 = phi i64 [ %47, %53 ], [ %122, %133 ], !dbg !1458
  %66 = phi ptr [ %50, %53 ], [ %115, %133 ], !dbg !1529
  %67 = phi i32 [ %51, %53 ], [ %121, %133 ], !dbg !1549
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1449, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !1442, metadata !DIExpression()), !dbg !1527
  tail call void @llvm.dbg.value(metadata ptr %66, metadata !1441, metadata !DIExpression()), !dbg !1458
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !1440, metadata !DIExpression()), !dbg !1458
  %68 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !1550
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !1441, metadata !DIExpression()), !dbg !1458
  tail call void @llvm.dbg.value(metadata i8 %64, metadata !1447, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1450, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i8 3, metadata !1451, metadata !DIExpression()), !dbg !1526
  %69 = load i8, ptr %68, align 1, !dbg !1551, !tbaa !872
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
  ], !dbg !1534

70:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %71, !dbg !1552

71:                                               ; preds = %70, %80
  %72 = phi i8 [ %82, %80 ], [ %69, %70 ], !dbg !1553
  %73 = phi ptr [ %81, %80 ], [ %68, %70 ], !dbg !1526
  %74 = phi i32 [ %78, %80 ], [ 0, %70 ], !dbg !1555
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !1452, metadata !DIExpression()), !dbg !1555
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !1441, metadata !DIExpression()), !dbg !1458
  %75 = shl i32 %74, 3, !dbg !1556
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !1441, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1458
  %76 = zext nneg i8 %72 to i32, !dbg !1553
  %77 = add i32 %75, -48, !dbg !1557
  %78 = add nsw i32 %77, %76, !dbg !1558
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1452, metadata !DIExpression()), !dbg !1555
  %79 = icmp ugt i32 %78, 4095, !dbg !1559
  br i1 %79, label %138, label %80, !dbg !1561

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1562
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !1441, metadata !DIExpression()), !dbg !1458
  %82 = load i8, ptr %81, align 1, !dbg !1563, !tbaa !872
  %83 = and i8 %82, -8, !dbg !1564
  %84 = icmp eq i8 %83, 48, !dbg !1564
  br i1 %84, label %71, label %85, !dbg !1564, !llvm.loop !1565

85:                                               ; preds = %80
  %86 = icmp eq i32 %67, 0, !dbg !1567
  br i1 %86, label %87, label %138, !dbg !1569

87:                                               ; preds = %85
  switch i8 %82, label %138 [
    i8 0, label %114
    i8 44, label %114
  ], !dbg !1570

88:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 448, metadata !1449, metadata !DIExpression()), !dbg !1526
  %89 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1571
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !1441, metadata !DIExpression()), !dbg !1458
  br label %114, !dbg !1572

90:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 56, metadata !1449, metadata !DIExpression()), !dbg !1526
  %91 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1573
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !1441, metadata !DIExpression()), !dbg !1458
  br label %114, !dbg !1574

92:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 7, metadata !1449, metadata !DIExpression()), !dbg !1526
  %93 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1575
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !1441, metadata !DIExpression()), !dbg !1458
  br label %114, !dbg !1576

94:                                               ; preds = %63, %109
  %95 = phi i8 [ %113, %109 ], [ %69, %63 ], !dbg !1577
  %96 = phi ptr [ %112, %109 ], [ %68, %63 ], !dbg !1526
  %97 = phi i32 [ %110, %109 ], [ 0, %63 ], !dbg !1580
  %98 = phi i8 [ %111, %109 ], [ 1, %63 ], !dbg !1581
  tail call void @llvm.dbg.value(metadata i8 %98, metadata !1451, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !1449, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !1441, metadata !DIExpression()), !dbg !1458
  switch i8 %95, label %114 [
    i8 114, label %99
    i8 119, label %101
    i8 120, label %103
    i8 88, label %109
    i8 115, label %105
    i8 116, label %107
  ], !dbg !1582

99:                                               ; preds = %94
  %100 = or i32 %97, 292, !dbg !1583
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !1449, metadata !DIExpression()), !dbg !1526
  br label %109, !dbg !1585

101:                                              ; preds = %94
  %102 = or i32 %97, 146, !dbg !1586
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1449, metadata !DIExpression()), !dbg !1526
  br label %109, !dbg !1587

103:                                              ; preds = %94
  %104 = or i32 %97, 73, !dbg !1588
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !1449, metadata !DIExpression()), !dbg !1526
  br label %109, !dbg !1589

105:                                              ; preds = %94
  %106 = or i32 %97, 3072, !dbg !1590
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !1449, metadata !DIExpression()), !dbg !1526
  br label %109, !dbg !1591

107:                                              ; preds = %94
  %108 = or i32 %97, 512, !dbg !1592
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1449, metadata !DIExpression()), !dbg !1526
  br label %109, !dbg !1593

109:                                              ; preds = %94, %99, %101, %103, %105, %107
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %97, %94 ], !dbg !1580
  %111 = phi i8 [ %98, %107 ], [ %98, %105 ], [ %98, %103 ], [ %98, %101 ], [ %98, %99 ], [ 2, %94 ], !dbg !1580
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !1451, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !1449, metadata !DIExpression()), !dbg !1526
  %112 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %112, metadata !1441, metadata !DIExpression()), !dbg !1458
  %113 = load i8, ptr %112, align 1, !dbg !1577, !tbaa !872
  br label %94, !dbg !1595, !llvm.loop !1596

114:                                              ; preds = %94, %87, %87, %92, %90, %88
  %115 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %81, %87 ], [ %81, %87 ], [ %96, %94 ], !dbg !1526
  %116 = phi i32 [ %67, %92 ], [ %67, %90 ], [ %67, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ %67, %94 ], !dbg !1549
  %117 = phi i32 [ 7, %92 ], [ 56, %90 ], [ 448, %88 ], [ %78, %87 ], [ %78, %87 ], [ %97, %94 ]
  %118 = phi i1 [ true, %92 ], [ true, %90 ], [ true, %88 ], [ false, %87 ], [ false, %87 ], [ true, %94 ], !dbg !1599
  %119 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ 0, %94 ], !dbg !1599
  %120 = phi i8 [ 3, %92 ], [ 3, %90 ], [ 3, %88 ], [ 1, %87 ], [ 1, %87 ], [ %98, %94 ], !dbg !1526
  tail call void @llvm.dbg.value(metadata i8 %120, metadata !1451, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1450, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !1449, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1442, metadata !DIExpression()), !dbg !1527
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !1441, metadata !DIExpression()), !dbg !1458
  %121 = freeze i32 %116, !dbg !1600
  %122 = add i64 %65, 1, !dbg !1601
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1440, metadata !DIExpression()), !dbg !1458
  %123 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, !dbg !1602
  tail call void @llvm.dbg.value(metadata ptr %123, metadata !1456, metadata !DIExpression()), !dbg !1526
  store i8 %64, ptr %123, align 4, !dbg !1603, !tbaa !1493
  %124 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 1, !dbg !1604
  store i8 %120, ptr %124, align 1, !dbg !1605, !tbaa !1497
  %125 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 2, !dbg !1606
  store i32 %121, ptr %125, align 4, !dbg !1607, !tbaa !1500
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 3, !dbg !1608
  store i32 %117, ptr %126, align 4, !dbg !1609, !tbaa !1503
  %127 = icmp eq i32 %121, 0, !dbg !1600
  %128 = select i1 %127, i32 -1, i32 %121, !dbg !1600
  %129 = and i32 %128, %117, !dbg !1600
  %130 = select i1 %118, i32 %129, i32 %119, !dbg !1600
  %131 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 4, !dbg !1610
  store i32 %130, ptr %131, align 4, !dbg !1611, !tbaa !1506
  %132 = load i8, ptr %115, align 1, !dbg !1612, !tbaa !872
  switch i8 %132, label %138 [
    i8 61, label %133
    i8 43, label %133
    i8 45, label %133
    i8 44, label %134
    i8 0, label %136
  ], !dbg !1613

133:                                              ; preds = %114, %114, %114
  br label %63, !dbg !1526

134:                                              ; preds = %114
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1449, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !1441, metadata !DIExpression()), !dbg !1458
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1440, metadata !DIExpression()), !dbg !1458
  %135 = getelementptr inbounds i8, ptr %115, i64 1, !dbg !1614
  tail call void @llvm.dbg.value(metadata ptr %135, metadata !1441, metadata !DIExpression()), !dbg !1458
  br label %46, !dbg !1615, !llvm.loop !1616

136:                                              ; preds = %114
  %137 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %122, i32 1, !dbg !1619
  store i8 0, ptr %137, align 1, !dbg !1622, !tbaa !1497
  br label %139, !dbg !1623

138:                                              ; preds = %49, %85, %87, %114, %71
  call void @llvm.dbg.label(metadata !1457), !dbg !1624
  tail call void @free(ptr noundef nonnull %39) #37, !dbg !1625
  br label %139, !dbg !1626

139:                                              ; preds = %5, %136, %138, %21, %19
  %140 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %138 ], [ %39, %136 ], [ null, %5 ]
  ret ptr %140, !dbg !1627
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !1628 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !1665
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1631, metadata !DIExpression(), metadata !1665, metadata ptr %2, metadata !DIExpression()), !dbg !1666
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1630, metadata !DIExpression()), !dbg !1666
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #37, !dbg !1667
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #37, !dbg !1668
  %4 = icmp eq i32 %3, 0, !dbg !1670
  br i1 %4, label %5, label %14, !dbg !1671

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1672
  %7 = load i32, ptr %6, align 8, !dbg !1672, !tbaa !1673
  call void @llvm.dbg.value(metadata i32 %7, metadata !1482, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 4095, metadata !1487, metadata !DIExpression()), !dbg !1676
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #43, !dbg !1678
  call void @llvm.dbg.value(metadata ptr %8, metadata !1488, metadata !DIExpression()), !dbg !1676
  store i8 61, ptr %8, align 4, !dbg !1679, !tbaa !1493
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !1680
  store i8 1, ptr %9, align 1, !dbg !1681, !tbaa !1497
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !1682
  store i32 4095, ptr %10, align 4, !dbg !1683, !tbaa !1500
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !1684
  store i32 %7, ptr %11, align 4, !dbg !1685, !tbaa !1503
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !1686
  store i32 4095, ptr %12, align 4, !dbg !1687, !tbaa !1506
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !1688
  store i8 0, ptr %13, align 1, !dbg !1689, !tbaa !1497
  br label %14, !dbg !1690

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !1666
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #37, !dbg !1691
  ret ptr %15, !dbg !1691
}

; Function Attrs: nofree nounwind
declare !dbg !1692 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #18 !dbg !1697 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1704, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1705, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1706, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1707, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1708, metadata !DIExpression()), !dbg !1720
  %6 = and i32 %0, 4095, !dbg !1721
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1709, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1710, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1707, metadata !DIExpression()), !dbg !1720
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !1722
  %8 = load i8, ptr %7, align 1, !dbg !1722, !tbaa !1497
  %9 = icmp eq i8 %8, 0, !dbg !1723
  br i1 %9, label %78, label %10, !dbg !1724

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1724

14:                                               ; preds = %10, %71
  %15 = phi i8 [ %8, %10 ], [ %76, %71 ]
  %16 = phi ptr [ %3, %10 ], [ %74, %71 ]
  %17 = phi i32 [ %6, %10 ], [ %73, %71 ]
  %18 = phi i32 [ 0, %10 ], [ %72, %71 ]
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1707, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1709, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1710, metadata !DIExpression()), !dbg !1720
  %19 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !1725
  %20 = load i32, ptr %19, align 4, !dbg !1725, !tbaa !1500
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1711, metadata !DIExpression()), !dbg !1726
  %21 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !1727
  %22 = load i32, ptr %21, align 4, !dbg !1727, !tbaa !1506
  %23 = xor i32 %22, -1, !dbg !1728
  %24 = and i32 %11, %23, !dbg !1729
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !1715, metadata !DIExpression()), !dbg !1726
  %25 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !1730
  %26 = load i32, ptr %25, align 4, !dbg !1730, !tbaa !1503
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1716, metadata !DIExpression()), !dbg !1726
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1731

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1732
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1716, metadata !DIExpression()), !dbg !1726
  %29 = and i32 %28, 292, !dbg !1734
  %30 = icmp eq i32 %29, 0, !dbg !1735
  %31 = select i1 %30, i32 0, i32 292, !dbg !1735
  %32 = and i32 %28, 146, !dbg !1736
  %33 = icmp eq i32 %32, 0, !dbg !1737
  %34 = select i1 %33, i32 0, i32 146, !dbg !1737
  %35 = and i32 %28, 73, !dbg !1738
  %36 = icmp eq i32 %35, 0, !dbg !1739
  %37 = select i1 %36, i32 0, i32 73, !dbg !1739
  %38 = or disjoint i32 %34, %31, !dbg !1740
  %39 = or disjoint i32 %38, %37, !dbg !1741
  %40 = or i32 %39, %28, !dbg !1741
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1716, metadata !DIExpression()), !dbg !1726
  br label %47, !dbg !1742

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1743
  %43 = or i32 %42, %12, !dbg !1745
  %44 = icmp eq i32 %43, 0, !dbg !1745
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1746
  br label %47, !dbg !1746

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1726
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1716, metadata !DIExpression()), !dbg !1726
  %49 = icmp eq i32 %20, 0, !dbg !1747
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1747
  %51 = xor i32 %24, -1, !dbg !1748
  %52 = and i32 %50, %51, !dbg !1749
  %53 = and i32 %52, %48, !dbg !1750
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1716, metadata !DIExpression()), !dbg !1726
  %54 = load i8, ptr %16, align 4, !dbg !1751, !tbaa !1493
  switch i8 %54, label %71 [
    i8 61, label %55
    i8 43, label %64
    i8 45, label %67
  ], !dbg !1752

55:                                               ; preds = %47
  %56 = xor i32 %20, -1, !dbg !1753
  %57 = select i1 %49, i32 0, i32 %56, !dbg !1753
  %58 = or i32 %57, %24, !dbg !1754
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !1717, metadata !DIExpression()), !dbg !1755
  %59 = and i32 %58, 4095, !dbg !1756
  %60 = xor i32 %59, 4095, !dbg !1756
  %61 = or i32 %60, %18, !dbg !1757
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1710, metadata !DIExpression()), !dbg !1720
  %62 = and i32 %58, %17, !dbg !1758
  %63 = or i32 %53, %62, !dbg !1759
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !1709, metadata !DIExpression()), !dbg !1720
  br label %71

64:                                               ; preds = %47
  %65 = or i32 %53, %18, !dbg !1760
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !1710, metadata !DIExpression()), !dbg !1720
  %66 = or i32 %53, %17, !dbg !1761
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1709, metadata !DIExpression()), !dbg !1720
  br label %71, !dbg !1762

67:                                               ; preds = %47
  %68 = or i32 %53, %18, !dbg !1763
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1710, metadata !DIExpression()), !dbg !1720
  %69 = xor i32 %53, -1, !dbg !1764
  %70 = and i32 %17, %69, !dbg !1765
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !1709, metadata !DIExpression()), !dbg !1720
  br label %71, !dbg !1766

71:                                               ; preds = %47, %67, %64, %55
  %72 = phi i32 [ %18, %47 ], [ %68, %67 ], [ %65, %64 ], [ %61, %55 ], !dbg !1720
  %73 = phi i32 [ %17, %47 ], [ %70, %67 ], [ %66, %64 ], [ %63, %55 ], !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !1709, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1710, metadata !DIExpression()), !dbg !1720
  %74 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !1767
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1707, metadata !DIExpression()), !dbg !1720
  %75 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !1722
  %76 = load i8, ptr %75, align 1, !dbg !1722, !tbaa !1497
  %77 = icmp eq i8 %76, 0, !dbg !1723
  br i1 %77, label %78, label %14, !dbg !1724, !llvm.loop !1768

78:                                               ; preds = %71, %5
  %79 = phi i32 [ 0, %5 ], [ %72, %71 ], !dbg !1770
  %80 = phi i32 [ %6, %5 ], [ %73, %71 ], !dbg !1771
  %81 = icmp eq ptr %4, null, !dbg !1772
  br i1 %81, label %83, label %82, !dbg !1774

82:                                               ; preds = %78
  store i32 %79, ptr %4, align 4, !dbg !1775, !tbaa !863
  br label %83, !dbg !1776

83:                                               ; preds = %82, %78
  ret i32 %80, !dbg !1777
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1778 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1780, metadata !DIExpression()), !dbg !1783
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1784
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1781, metadata !DIExpression()), !dbg !1783
  %3 = icmp eq ptr %2, null, !dbg !1785
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1785
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1785
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1782, metadata !DIExpression()), !dbg !1783
  %6 = ptrtoint ptr %5 to i64, !dbg !1786
  %7 = ptrtoint ptr %0 to i64, !dbg !1786
  %8 = sub i64 %6, %7, !dbg !1786
  %9 = icmp sgt i64 %8, 6, !dbg !1788
  br i1 %9, label %10, label %19, !dbg !1789

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %11, metadata !1791, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1796, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 7, metadata !1797, metadata !DIExpression()), !dbg !1798
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1800
  %13 = icmp eq i32 %12, 0, !dbg !1801
  br i1 %13, label %14, label %19, !dbg !1802

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1780, metadata !DIExpression()), !dbg !1783
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #38, !dbg !1803
  %16 = icmp eq i32 %15, 0, !dbg !1806
  %17 = select i1 %16, i64 3, i64 0, !dbg !1807
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1807
  br label %19, !dbg !1807

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1783
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1782, metadata !DIExpression()), !dbg !1783
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1780, metadata !DIExpression()), !dbg !1783
  store ptr %20, ptr @program_name, align 8, !dbg !1808, !tbaa !796
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1809, !tbaa !796
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1810, !tbaa !796
  ret void, !dbg !1811
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1812 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !454 {
  %3 = alloca i32, align 4, !DIAssignID !1813
  call void @llvm.dbg.assign(metadata i1 undef, metadata !464, metadata !DIExpression(), metadata !1813, metadata ptr %3, metadata !DIExpression()), !dbg !1814
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !469, metadata !DIExpression(), metadata !1815, metadata ptr %4, metadata !DIExpression()), !dbg !1814
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !461, metadata !DIExpression()), !dbg !1814
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !462, metadata !DIExpression()), !dbg !1814
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !463, metadata !DIExpression()), !dbg !1814
  %6 = icmp eq ptr %5, %0, !dbg !1817
  br i1 %6, label %7, label %14, !dbg !1819

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1820
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1821
  call void @llvm.dbg.value(metadata ptr %4, metadata !1822, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata ptr %4, metadata !1831, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 0, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 8, metadata !1838, metadata !DIExpression()), !dbg !1839
  store i64 0, ptr %4, align 8, !dbg !1841
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1842
  %9 = icmp eq i64 %8, 2, !dbg !1844
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1845
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1814
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1846
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1846
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1814
  ret ptr %15, !dbg !1846
}

; Function Attrs: nounwind
declare !dbg !1847 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1853 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1858, metadata !DIExpression()), !dbg !1861
  %2 = tail call ptr @__errno_location() #40, !dbg !1862
  %3 = load i32, ptr %2, align 4, !dbg !1862, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1859, metadata !DIExpression()), !dbg !1861
  %4 = icmp eq ptr %0, null, !dbg !1863
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1863
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1860, metadata !DIExpression()), !dbg !1861
  store i32 %3, ptr %2, align 4, !dbg !1865, !tbaa !863
  ret ptr %6, !dbg !1866
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #18 !dbg !1867 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1873, metadata !DIExpression()), !dbg !1874
  %2 = icmp eq ptr %0, null, !dbg !1875
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1875
  %4 = load i32, ptr %3, align 8, !dbg !1876, !tbaa !1877
  ret i32 %4, !dbg !1879
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1880 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !1886
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1885, metadata !DIExpression()), !dbg !1886
  %3 = icmp eq ptr %0, null, !dbg !1887
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1887
  store i32 %1, ptr %4, align 8, !dbg !1888, !tbaa !1877
  ret void, !dbg !1889
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1890 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1894, metadata !DIExpression()), !dbg !1902
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1895, metadata !DIExpression()), !dbg !1902
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1896, metadata !DIExpression()), !dbg !1902
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1897, metadata !DIExpression()), !dbg !1902
  %4 = icmp eq ptr %0, null, !dbg !1903
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1903
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1904
  %7 = lshr i8 %1, 5, !dbg !1905
  %8 = zext nneg i8 %7 to i64, !dbg !1905
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1906
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1898, metadata !DIExpression()), !dbg !1902
  %10 = and i8 %1, 31, !dbg !1907
  %11 = zext nneg i8 %10 to i32, !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1900, metadata !DIExpression()), !dbg !1902
  %12 = load i32, ptr %9, align 4, !dbg !1908, !tbaa !863
  %13 = lshr i32 %12, %11, !dbg !1909
  %14 = and i32 %13, 1, !dbg !1910
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1901, metadata !DIExpression()), !dbg !1902
  %15 = xor i32 %13, %2, !dbg !1911
  %16 = and i32 %15, 1, !dbg !1911
  %17 = shl nuw i32 %16, %11, !dbg !1912
  %18 = xor i32 %17, %12, !dbg !1913
  store i32 %18, ptr %9, align 4, !dbg !1913, !tbaa !863
  ret i32 %14, !dbg !1914
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1915 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1919, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1920, metadata !DIExpression()), !dbg !1922
  %3 = icmp eq ptr %0, null, !dbg !1923
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1919, metadata !DIExpression()), !dbg !1922
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1926
  %6 = load i32, ptr %5, align 4, !dbg !1926, !tbaa !1927
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1921, metadata !DIExpression()), !dbg !1922
  store i32 %1, ptr %5, align 4, !dbg !1928, !tbaa !1927
  ret i32 %6, !dbg !1929
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1930 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1934, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1935, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1936, metadata !DIExpression()), !dbg !1937
  %4 = icmp eq ptr %0, null, !dbg !1938
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1940
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !1937
  store i32 10, ptr %5, align 8, !dbg !1941, !tbaa !1877
  %6 = icmp ne ptr %1, null, !dbg !1942
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1944
  br i1 %8, label %10, label %9, !dbg !1944

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1945
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1958, metadata !DIExpression()), !dbg !1966
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1959, metadata !DIExpression()), !dbg !1966
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1960, metadata !DIExpression()), !dbg !1966
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1961, metadata !DIExpression()), !dbg !1966
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1962, metadata !DIExpression()), !dbg !1966
  %6 = icmp eq ptr %4, null, !dbg !1967
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1967
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1963, metadata !DIExpression()), !dbg !1966
  %8 = tail call ptr @__errno_location() #40, !dbg !1968
  %9 = load i32, ptr %8, align 4, !dbg !1968, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1964, metadata !DIExpression()), !dbg !1966
  %10 = load i32, ptr %7, align 8, !dbg !1969, !tbaa !1877
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1970
  %12 = load i32, ptr %11, align 4, !dbg !1970, !tbaa !1927
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1971
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1972
  %15 = load ptr, ptr %14, align 8, !dbg !1972, !tbaa !1948
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1973
  %17 = load ptr, ptr %16, align 8, !dbg !1973, !tbaa !1951
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1974
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1965, metadata !DIExpression()), !dbg !1966
  store i32 %9, ptr %8, align 4, !dbg !1975, !tbaa !863
  ret i64 %18, !dbg !1976
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1977 {
  %10 = alloca i32, align 4, !DIAssignID !2045
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2046
  %12 = alloca i32, align 4, !DIAssignID !2047
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2048
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2049
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2023, metadata !DIExpression(), metadata !2049, metadata ptr %14, metadata !DIExpression()), !dbg !2050
  %15 = alloca i32, align 4, !DIAssignID !2051
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2026, metadata !DIExpression(), metadata !2051, metadata ptr %15, metadata !DIExpression()), !dbg !2052
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1983, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1985, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1986, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1987, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1988, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1989, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1990, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1991, metadata !DIExpression()), !dbg !2053
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2054
  %17 = icmp eq i64 %16, 1, !dbg !2055
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1994, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1995, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1996, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2053
  %18 = trunc i32 %5 to i8, !dbg !2056
  %19 = lshr i8 %18, 1, !dbg !2056
  %20 = and i8 %19, 1, !dbg !2056
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1998, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2000, metadata !DIExpression()), !dbg !2053
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2057

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2058
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2059
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2060
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2061
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2053
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2062
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2063
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2000, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1998, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1997, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1996, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1995, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1994, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1986, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1991, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1990, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1987, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.label(metadata !2001), !dbg !2064
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2053
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
  ], !dbg !2065

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1998, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1987, metadata !DIExpression()), !dbg !2053
  br label %114, !dbg !2066

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1998, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1987, metadata !DIExpression()), !dbg !2053
  %43 = and i8 %37, 1, !dbg !2067
  %44 = icmp eq i8 %43, 0, !dbg !2067
  br i1 %44, label %45, label %114, !dbg !2066

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2069
  br i1 %46, label %114, label %47, !dbg !2072

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2069, !tbaa !872
  br label %114, !dbg !2069

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !555, metadata !DIExpression(), metadata !2047, metadata ptr %12, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.assign(metadata i1 undef, metadata !556, metadata !DIExpression(), metadata !2048, metadata ptr %13, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata ptr @.str.11.72, metadata !552, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %29, metadata !553, metadata !DIExpression()), !dbg !2073
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.11.72, i32 noundef 5) #37, !dbg !2077
  call void @llvm.dbg.value(metadata ptr %49, metadata !554, metadata !DIExpression()), !dbg !2073
  %50 = icmp eq ptr %49, @.str.11.72, !dbg !2078
  br i1 %50, label %51, label %60, !dbg !2080

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2082
  call void @llvm.dbg.value(metadata ptr %13, metadata !2083, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata ptr %13, metadata !2091, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32 0, metadata !2094, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64 8, metadata !2095, metadata !DIExpression()), !dbg !2096
  store i64 0, ptr %13, align 8, !dbg !2098
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2099
  %53 = icmp eq i64 %52, 3, !dbg !2101
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2102
  %57 = icmp eq i32 %29, 9, !dbg !2102
  %58 = select i1 %57, ptr @.str.10.74, ptr @.str.12.75, !dbg !2102
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2103
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2073
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1990, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.assign(metadata i1 undef, metadata !555, metadata !DIExpression(), metadata !2045, metadata ptr %10, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !556, metadata !DIExpression(), metadata !2046, metadata ptr %11, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr @.str.12.75, metadata !552, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 %29, metadata !553, metadata !DIExpression()), !dbg !2104
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.12.75, i32 noundef 5) #37, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %62, metadata !554, metadata !DIExpression()), !dbg !2104
  %63 = icmp eq ptr %62, @.str.12.75, !dbg !2107
  br i1 %63, label %64, label %73, !dbg !2108

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %11, metadata !2083, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %11, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 0, metadata !2094, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 8, metadata !2095, metadata !DIExpression()), !dbg !2113
  store i64 0, ptr %11, align 8, !dbg !2115
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2116
  %66 = icmp eq i64 %65, 3, !dbg !2117
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2118
  %70 = icmp eq i32 %29, 9, !dbg !2118
  %71 = select i1 %70, ptr @.str.10.74, ptr @.str.12.75, !dbg !2118
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2118
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2119
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2119
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1991, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1990, metadata !DIExpression()), !dbg !2053
  %76 = and i8 %37, 1, !dbg !2120
  %77 = icmp eq i8 %76, 0, !dbg !2120
  br i1 %77, label %78, label %93, !dbg !2121

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2003, metadata !DIExpression()), !dbg !2122
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1993, metadata !DIExpression()), !dbg !2053
  %79 = load i8, ptr %74, align 1, !dbg !2123, !tbaa !872
  %80 = icmp eq i8 %79, 0, !dbg !2125
  br i1 %80, label %93, label %81, !dbg !2125

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2003, metadata !DIExpression()), !dbg !2122
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1993, metadata !DIExpression()), !dbg !2053
  %85 = icmp ult i64 %84, %40, !dbg !2126
  br i1 %85, label %86, label %88, !dbg !2129

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2126
  store i8 %82, ptr %87, align 1, !dbg !2126, !tbaa !872
  br label %88, !dbg !2126

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1993, metadata !DIExpression()), !dbg !2053
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2130
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2003, metadata !DIExpression()), !dbg !2122
  %91 = load i8, ptr %90, align 1, !dbg !2123, !tbaa !872
  %92 = icmp eq i8 %91, 0, !dbg !2125
  br i1 %92, label %93, label %81, !dbg !2125, !llvm.loop !2131

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1997, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1995, metadata !DIExpression()), !dbg !2053
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1996, metadata !DIExpression()), !dbg !2053
  br label %114, !dbg !2135

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1997, metadata !DIExpression()), !dbg !2053
  br label %98, !dbg !2136

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1997, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1998, metadata !DIExpression()), !dbg !2053
  br label %98, !dbg !2137

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2061
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1998, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1997, metadata !DIExpression()), !dbg !2053
  %101 = and i8 %100, 1, !dbg !2138
  %102 = icmp eq i8 %101, 0, !dbg !2138
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2140
  br label %104, !dbg !2140

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2053
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2056
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1998, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1997, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1987, metadata !DIExpression()), !dbg !2053
  %107 = and i8 %106, 1, !dbg !2141
  %108 = icmp eq i8 %107, 0, !dbg !2141
  br i1 %108, label %109, label %114, !dbg !2143

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2144
  br i1 %110, label %114, label %111, !dbg !2147

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2144, !tbaa !872
  br label %114, !dbg !2144

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2053
  br label %114, !dbg !2148

113:                                              ; preds = %28
  call void @abort() #39, !dbg !2149
  unreachable, !dbg !2149

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2133
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.74, %45 ], [ @.str.10.74, %47 ], [ @.str.10.74, %42 ], [ %34, %28 ], [ @.str.12.75, %109 ], [ @.str.12.75, %111 ], [ @.str.12.75, %104 ], [ @.str.10.74, %41 ], !dbg !2053
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2053
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2053
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1998, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1997, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1996, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1995, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1991, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1990, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1987, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2008, metadata !DIExpression()), !dbg !2150
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
  br label %138, !dbg !2151

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2133
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2058
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2062
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2063
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2152
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2153
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2008, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2000, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1994, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1986, metadata !DIExpression()), !dbg !2053
  %147 = icmp eq i64 %139, -1, !dbg !2154
  br i1 %147, label %148, label %152, !dbg !2155

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2156
  %150 = load i8, ptr %149, align 1, !dbg !2156, !tbaa !872
  %151 = icmp eq i8 %150, 0, !dbg !2157
  br i1 %151, label %612, label %154, !dbg !2158

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2159
  br i1 %153, label %612, label %154, !dbg !2158

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2010, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2160
  br i1 %128, label %155, label %170, !dbg !2161

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2163
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2164
  br i1 %157, label %158, label %160, !dbg !2164

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1986, metadata !DIExpression()), !dbg !2053
  br label %160, !dbg !2166

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1986, metadata !DIExpression()), !dbg !2053
  %162 = icmp ugt i64 %156, %161, !dbg !2167
  br i1 %162, label %170, label %163, !dbg !2168

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2169
  call void @llvm.dbg.value(metadata ptr %164, metadata !2170, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata ptr %119, metadata !2173, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %120, metadata !2174, metadata !DIExpression()), !dbg !2175
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2177
  %166 = icmp ne i32 %165, 0, !dbg !2178
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2179
  %168 = xor i1 %166, true, !dbg !2179
  %169 = zext i1 %168 to i8, !dbg !2179
  br i1 %167, label %170, label %666, !dbg !2179

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2160
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2010, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1986, metadata !DIExpression()), !dbg !2053
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2180
  %175 = load i8, ptr %174, align 1, !dbg !2180, !tbaa !872
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2015, metadata !DIExpression()), !dbg !2160
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
  ], !dbg !2181

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2182

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2183

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2160
  %179 = and i8 %144, 1, !dbg !2187
  %180 = icmp eq i8 %179, 0, !dbg !2187
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2187
  br i1 %181, label %182, label %198, !dbg !2187

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2189
  br i1 %183, label %184, label %186, !dbg !2193

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2189
  store i8 39, ptr %185, align 1, !dbg !2189, !tbaa !872
  br label %186, !dbg !2189

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2193
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1993, metadata !DIExpression()), !dbg !2053
  %188 = icmp ult i64 %187, %146, !dbg !2194
  br i1 %188, label %189, label %191, !dbg !2197

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2194
  store i8 36, ptr %190, align 1, !dbg !2194, !tbaa !872
  br label %191, !dbg !2194

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1993, metadata !DIExpression()), !dbg !2053
  %193 = icmp ult i64 %192, %146, !dbg !2198
  br i1 %193, label %194, label %196, !dbg !2201

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2198
  store i8 39, ptr %195, align 1, !dbg !2198, !tbaa !872
  br label %196, !dbg !2198

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2002, metadata !DIExpression()), !dbg !2053
  br label %198, !dbg !2202

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2053
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1993, metadata !DIExpression()), !dbg !2053
  %201 = icmp ult i64 %199, %146, !dbg !2203
  br i1 %201, label %202, label %204, !dbg !2206

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2203
  store i8 92, ptr %203, align 1, !dbg !2203, !tbaa !872
  br label %204, !dbg !2203

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2206
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1993, metadata !DIExpression()), !dbg !2053
  br i1 %125, label %206, label %476, !dbg !2207

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2209
  %208 = icmp ult i64 %207, %171, !dbg !2210
  br i1 %208, label %209, label %465, !dbg !2211

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2212
  %211 = load i8, ptr %210, align 1, !dbg !2212, !tbaa !872
  %212 = add i8 %211, -48, !dbg !2213
  %213 = icmp ult i8 %212, 10, !dbg !2213
  br i1 %213, label %214, label %465, !dbg !2213

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2214
  br i1 %215, label %216, label %218, !dbg !2218

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2214
  store i8 48, ptr %217, align 1, !dbg !2214, !tbaa !872
  br label %218, !dbg !2214

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1993, metadata !DIExpression()), !dbg !2053
  %220 = icmp ult i64 %219, %146, !dbg !2219
  br i1 %220, label %221, label %223, !dbg !2222

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2219
  store i8 48, ptr %222, align 1, !dbg !2219, !tbaa !872
  br label %223, !dbg !2219

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2222
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1993, metadata !DIExpression()), !dbg !2053
  br label %465, !dbg !2223

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2224

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2225

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2226

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2228

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2230
  %231 = icmp ult i64 %230, %171, !dbg !2231
  br i1 %231, label %232, label %465, !dbg !2232

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2233
  %234 = load i8, ptr %233, align 1, !dbg !2233, !tbaa !872
  %235 = icmp eq i8 %234, 63, !dbg !2234
  br i1 %235, label %236, label %465, !dbg !2235

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2236
  %238 = load i8, ptr %237, align 1, !dbg !2236, !tbaa !872
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
  ], !dbg !2237

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2238

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2015, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2008, metadata !DIExpression()), !dbg !2150
  %241 = icmp ult i64 %140, %146, !dbg !2240
  br i1 %241, label %242, label %244, !dbg !2243

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2240
  store i8 63, ptr %243, align 1, !dbg !2240, !tbaa !872
  br label %244, !dbg !2240

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2243
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1993, metadata !DIExpression()), !dbg !2053
  %246 = icmp ult i64 %245, %146, !dbg !2244
  br i1 %246, label %247, label %249, !dbg !2247

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2244
  store i8 34, ptr %248, align 1, !dbg !2244, !tbaa !872
  br label %249, !dbg !2244

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1993, metadata !DIExpression()), !dbg !2053
  %251 = icmp ult i64 %250, %146, !dbg !2248
  br i1 %251, label %252, label %254, !dbg !2251

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2248
  store i8 34, ptr %253, align 1, !dbg !2248, !tbaa !872
  br label %254, !dbg !2248

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2251
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1993, metadata !DIExpression()), !dbg !2053
  %256 = icmp ult i64 %255, %146, !dbg !2252
  br i1 %256, label %257, label %259, !dbg !2255

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2252
  store i8 63, ptr %258, align 1, !dbg !2252, !tbaa !872
  br label %259, !dbg !2252

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2255
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1993, metadata !DIExpression()), !dbg !2053
  br label %465, !dbg !2256

261:                                              ; preds = %170
  br label %272, !dbg !2257

262:                                              ; preds = %170
  br label %272, !dbg !2258

263:                                              ; preds = %170
  br label %270, !dbg !2259

264:                                              ; preds = %170
  br label %270, !dbg !2260

265:                                              ; preds = %170
  br label %272, !dbg !2261

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2262

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2263

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2266

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2268

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2269
  call void @llvm.dbg.label(metadata !2016), !dbg !2270
  br i1 %133, label %272, label %655, !dbg !2271

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2269
  call void @llvm.dbg.label(metadata !2019), !dbg !2273
  br i1 %124, label %520, label %476, !dbg !2274

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2275

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2276, !tbaa !872
  %277 = icmp eq i8 %276, 0, !dbg !2278
  br i1 %277, label %278, label %465, !dbg !2279

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2280
  br i1 %279, label %280, label %465, !dbg !2282

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2014, metadata !DIExpression()), !dbg !2160
  br label %281, !dbg !2283

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2014, metadata !DIExpression()), !dbg !2160
  br i1 %133, label %465, label %655, !dbg !2284

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2014, metadata !DIExpression()), !dbg !2160
  br i1 %132, label %284, label %465, !dbg !2286

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2287

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2290
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2292
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2292
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1994, metadata !DIExpression()), !dbg !2053
  %291 = icmp ult i64 %140, %290, !dbg !2293
  br i1 %291, label %292, label %294, !dbg !2296

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2293
  store i8 39, ptr %293, align 1, !dbg !2293, !tbaa !872
  br label %294, !dbg !2293

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1993, metadata !DIExpression()), !dbg !2053
  %296 = icmp ult i64 %295, %290, !dbg !2297
  br i1 %296, label %297, label %299, !dbg !2300

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2297
  store i8 92, ptr %298, align 1, !dbg !2297, !tbaa !872
  br label %299, !dbg !2297

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1993, metadata !DIExpression()), !dbg !2053
  %301 = icmp ult i64 %300, %290, !dbg !2301
  br i1 %301, label %302, label %304, !dbg !2304

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2301
  store i8 39, ptr %303, align 1, !dbg !2301, !tbaa !872
  br label %304, !dbg !2301

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2304
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2053
  br label %465, !dbg !2305

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2306

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2020, metadata !DIExpression()), !dbg !2307
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !2308
  %309 = load ptr, ptr %308, align 8, !dbg !2308, !tbaa !796
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2308
  %312 = load i16, ptr %311, align 2, !dbg !2308, !tbaa !904
  %313 = and i16 %312, 16384, !dbg !2310
  %314 = icmp ne i16 %313, 0, !dbg !2310
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2022, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2307
  br label %355, !dbg !2311

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2312
  call void @llvm.dbg.value(metadata ptr %14, metadata !2083, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata ptr %14, metadata !2091, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 0, metadata !2094, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i64 8, metadata !2095, metadata !DIExpression()), !dbg !2315
  store i64 0, ptr %14, align 8, !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2022, metadata !DIExpression()), !dbg !2307
  %316 = icmp eq i64 %171, -1, !dbg !2318
  br i1 %316, label %317, label %319, !dbg !2320

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2321
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1986, metadata !DIExpression()), !dbg !2053
  br label %319, !dbg !2322

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1986, metadata !DIExpression()), !dbg !2053
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2323
  %321 = sub i64 %320, %145, !dbg !2324
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !2325
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2030, metadata !DIExpression()), !dbg !2052
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2326

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2307
  %324 = icmp ult i64 %145, %320, !dbg !2327
  br i1 %324, label %326, label %351, !dbg !2329

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2307
  br label %351, !dbg !2330

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2020, metadata !DIExpression()), !dbg !2307
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2332
  %330 = load i8, ptr %329, align 1, !dbg !2332, !tbaa !872
  %331 = icmp eq i8 %330, 0, !dbg !2329
  br i1 %331, label %351, label %332, !dbg !2333

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2334
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2020, metadata !DIExpression()), !dbg !2307
  %334 = add i64 %333, %145, !dbg !2335
  %335 = icmp eq i64 %333, %321, !dbg !2327
  br i1 %335, label %351, label %326, !dbg !2329, !llvm.loop !2336

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2031, metadata !DIExpression()), !dbg !2337
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2338
  %339 = and i1 %338, %132, !dbg !2338
  br i1 %339, label %340, label %347, !dbg !2338

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2031, metadata !DIExpression()), !dbg !2337
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2339
  %343 = load i8, ptr %342, align 1, !dbg !2339, !tbaa !872
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2341

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2342
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2031, metadata !DIExpression()), !dbg !2337
  %346 = icmp eq i64 %345, %322, !dbg !2343
  br i1 %346, label %347, label %340, !dbg !2344, !llvm.loop !2345

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2347, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %348, metadata !2349, metadata !DIExpression()), !dbg !2357
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !2359
  %350 = icmp ne i32 %349, 0, !dbg !2360
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2022, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2020, metadata !DIExpression()), !dbg !2307
  br label %351, !dbg !2361

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2022, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2020, metadata !DIExpression()), !dbg !2307
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2363
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2022, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2307
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2363
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2160
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2364
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2364
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2022, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2020, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1986, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2014, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2160
  %359 = icmp ult i64 %357, 2, !dbg !2365
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2366
  br i1 %361, label %461, label %362, !dbg !2366

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2039, metadata !DIExpression()), !dbg !2368
  br label %364, !dbg !2369

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2053
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2152
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2150
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2160
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2370
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2015, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2013, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2010, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2008, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1993, metadata !DIExpression()), !dbg !2053
  br i1 %360, label %417, label %371, !dbg !2371

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2376

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2160
  %373 = and i8 %366, 1, !dbg !2379
  %374 = icmp eq i8 %373, 0, !dbg !2379
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2379
  br i1 %375, label %376, label %392, !dbg !2379

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2381
  br i1 %377, label %378, label %380, !dbg !2385

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2381
  store i8 39, ptr %379, align 1, !dbg !2381, !tbaa !872
  br label %380, !dbg !2381

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2385
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1993, metadata !DIExpression()), !dbg !2053
  %382 = icmp ult i64 %381, %146, !dbg !2386
  br i1 %382, label %383, label %385, !dbg !2389

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2386
  store i8 36, ptr %384, align 1, !dbg !2386, !tbaa !872
  br label %385, !dbg !2386

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2389
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1993, metadata !DIExpression()), !dbg !2053
  %387 = icmp ult i64 %386, %146, !dbg !2390
  br i1 %387, label %388, label %390, !dbg !2393

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2390
  store i8 39, ptr %389, align 1, !dbg !2390, !tbaa !872
  br label %390, !dbg !2390

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2002, metadata !DIExpression()), !dbg !2053
  br label %392, !dbg !2394

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2053
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1993, metadata !DIExpression()), !dbg !2053
  %395 = icmp ult i64 %393, %146, !dbg !2395
  br i1 %395, label %396, label %398, !dbg !2398

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2395
  store i8 92, ptr %397, align 1, !dbg !2395, !tbaa !872
  br label %398, !dbg !2395

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1993, metadata !DIExpression()), !dbg !2053
  %400 = icmp ult i64 %399, %146, !dbg !2399
  br i1 %400, label %401, label %405, !dbg !2402

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2399
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2399
  store i8 %403, ptr %404, align 1, !dbg !2399, !tbaa !872
  br label %405, !dbg !2399

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2402
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1993, metadata !DIExpression()), !dbg !2053
  %407 = icmp ult i64 %406, %146, !dbg !2403
  br i1 %407, label %408, label %413, !dbg !2406

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2403
  %411 = or disjoint i8 %410, 48, !dbg !2403
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2403
  store i8 %411, ptr %412, align 1, !dbg !2403, !tbaa !872
  br label %413, !dbg !2403

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2406
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1993, metadata !DIExpression()), !dbg !2053
  %415 = and i8 %370, 7, !dbg !2407
  %416 = or disjoint i8 %415, 48, !dbg !2408
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2015, metadata !DIExpression()), !dbg !2160
  br label %426, !dbg !2409

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2410
  %419 = icmp eq i8 %418, 0, !dbg !2410
  br i1 %419, label %426, label %420, !dbg !2412

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2413
  br i1 %421, label %422, label %424, !dbg !2417

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2413
  store i8 92, ptr %423, align 1, !dbg !2413, !tbaa !872
  br label %424, !dbg !2413

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2417
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2010, metadata !DIExpression()), !dbg !2160
  br label %426, !dbg !2418

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2053
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2152
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2160
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2160
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2015, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2013, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2010, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1993, metadata !DIExpression()), !dbg !2053
  %432 = add i64 %367, 1, !dbg !2419
  %433 = icmp ugt i64 %363, %432, !dbg !2421
  br i1 %433, label %434, label %463, !dbg !2422

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2423
  %436 = icmp ne i8 %435, 0, !dbg !2423
  %437 = and i8 %430, 1, !dbg !2423
  %438 = icmp eq i8 %437, 0, !dbg !2423
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2423
  br i1 %439, label %440, label %451, !dbg !2423

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2426
  br i1 %441, label %442, label %444, !dbg !2430

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2426
  store i8 39, ptr %443, align 1, !dbg !2426, !tbaa !872
  br label %444, !dbg !2426

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1993, metadata !DIExpression()), !dbg !2053
  %446 = icmp ult i64 %445, %146, !dbg !2431
  br i1 %446, label %447, label %449, !dbg !2434

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2431
  store i8 39, ptr %448, align 1, !dbg !2431, !tbaa !872
  br label %449, !dbg !2431

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2434
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2053
  br label %451, !dbg !2435

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2436
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1993, metadata !DIExpression()), !dbg !2053
  %454 = icmp ult i64 %452, %146, !dbg !2437
  br i1 %454, label %455, label %457, !dbg !2440

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2437
  store i8 %431, ptr %456, align 1, !dbg !2437, !tbaa !872
  br label %457, !dbg !2437

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2440
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2008, metadata !DIExpression()), !dbg !2150
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2441
  %460 = load i8, ptr %459, align 1, !dbg !2441, !tbaa !872
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2015, metadata !DIExpression()), !dbg !2160
  br label %364, !dbg !2442, !llvm.loop !2443

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2015, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2014, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2010, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2008, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1986, metadata !DIExpression()), !dbg !2053
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2015, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2014, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2013, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2010, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2008, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1986, metadata !DIExpression()), !dbg !2053
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2446
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2053
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2058
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2053
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2053
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2150
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2160
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2160
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2160
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2015, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2014, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2013, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2010, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2008, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1994, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1986, metadata !DIExpression()), !dbg !2053
  br i1 %126, label %487, label %476, !dbg !2447

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
  br i1 %137, label %488, label %509, !dbg !2449

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2450

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
  %499 = lshr i8 %490, 5, !dbg !2451
  %500 = zext nneg i8 %499 to i64, !dbg !2451
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2452
  %502 = load i32, ptr %501, align 4, !dbg !2452, !tbaa !863
  %503 = and i8 %490, 31, !dbg !2453
  %504 = zext nneg i8 %503 to i32, !dbg !2453
  %505 = shl nuw i32 1, %504, !dbg !2454
  %506 = and i32 %502, %505, !dbg !2454
  %507 = icmp eq i32 %506, 0, !dbg !2454
  %508 = and i1 %172, %507, !dbg !2455
  br i1 %508, label %558, label %520, !dbg !2455

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
  br i1 %172, label %558, label %520, !dbg !2456

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2446
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2053
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2058
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2062
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2152
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2457
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2160
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2160
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2015, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2014, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2008, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1994, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1986, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.label(metadata !2042), !dbg !2458
  br i1 %131, label %530, label %659, !dbg !2459

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2160
  %531 = and i8 %525, 1, !dbg !2461
  %532 = icmp eq i8 %531, 0, !dbg !2461
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2461
  br i1 %533, label %534, label %550, !dbg !2461

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2463
  br i1 %535, label %536, label %538, !dbg !2467

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2463
  store i8 39, ptr %537, align 1, !dbg !2463, !tbaa !872
  br label %538, !dbg !2463

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1993, metadata !DIExpression()), !dbg !2053
  %540 = icmp ult i64 %539, %529, !dbg !2468
  br i1 %540, label %541, label %543, !dbg !2471

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2468
  store i8 36, ptr %542, align 1, !dbg !2468, !tbaa !872
  br label %543, !dbg !2468

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2471
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1993, metadata !DIExpression()), !dbg !2053
  %545 = icmp ult i64 %544, %529, !dbg !2472
  br i1 %545, label %546, label %548, !dbg !2475

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2472
  store i8 39, ptr %547, align 1, !dbg !2472, !tbaa !872
  br label %548, !dbg !2472

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2475
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2002, metadata !DIExpression()), !dbg !2053
  br label %550, !dbg !2476

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2160
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1993, metadata !DIExpression()), !dbg !2053
  %553 = icmp ult i64 %551, %529, !dbg !2477
  br i1 %553, label %554, label %556, !dbg !2480

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2477
  store i8 92, ptr %555, align 1, !dbg !2477, !tbaa !872
  br label %556, !dbg !2477

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2480
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2015, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2014, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2008, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1994, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1986, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.label(metadata !2043), !dbg !2481
  br label %585, !dbg !2482

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2446
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2053
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2058
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2062
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2152
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2457
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2160
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2160
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2485
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2015, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2014, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2013, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2008, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1994, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1986, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.label(metadata !2043), !dbg !2481
  %569 = and i8 %563, 1, !dbg !2482
  %570 = icmp ne i8 %569, 0, !dbg !2482
  %571 = and i8 %565, 1, !dbg !2482
  %572 = icmp eq i8 %571, 0, !dbg !2482
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2482
  br i1 %573, label %574, label %585, !dbg !2482

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2486
  br i1 %575, label %576, label %578, !dbg !2490

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2486
  store i8 39, ptr %577, align 1, !dbg !2486, !tbaa !872
  br label %578, !dbg !2486

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1993, metadata !DIExpression()), !dbg !2053
  %580 = icmp ult i64 %579, %568, !dbg !2491
  br i1 %580, label %581, label %583, !dbg !2494

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2491
  store i8 39, ptr %582, align 1, !dbg !2491, !tbaa !872
  br label %583, !dbg !2491

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2053
  br label %585, !dbg !2495

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2160
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1993, metadata !DIExpression()), !dbg !2053
  %595 = icmp ult i64 %593, %586, !dbg !2496
  br i1 %595, label %596, label %598, !dbg !2499

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2496
  store i8 %587, ptr %597, align 1, !dbg !2496, !tbaa !872
  br label %598, !dbg !2496

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1993, metadata !DIExpression()), !dbg !2053
  %600 = icmp eq i8 %588, 0, !dbg !2500
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2000, metadata !DIExpression()), !dbg !2053
  br label %602, !dbg !2503

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2446
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2053
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2058
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2062
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2063
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2152
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2457
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2008, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2002, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2000, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1994, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1986, metadata !DIExpression()), !dbg !2053
  %611 = add i64 %609, 1, !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2008, metadata !DIExpression()), !dbg !2150
  br label %138, !dbg !2505, !llvm.loop !2506

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1984, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2000, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1999, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1994, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1993, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1986, metadata !DIExpression()), !dbg !2053
  %613 = icmp eq i64 %140, 0, !dbg !2508
  %614 = and i1 %132, %613, !dbg !2510
  %615 = xor i1 %614, true, !dbg !2510
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2510
  br i1 %616, label %617, label %655, !dbg !2510

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2511
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2511
  br i1 %621, label %622, label %631, !dbg !2511

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2513
  %624 = icmp eq i8 %623, 0, !dbg !2513
  br i1 %624, label %627, label %625, !dbg !2516

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2517
  br label %672, !dbg !2518

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2519
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2521
  br i1 %630, label %28, label %631, !dbg !2521

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2522
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2524
  br i1 %634, label %635, label %650, !dbg !2524

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1995, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1993, metadata !DIExpression()), !dbg !2053
  %636 = load i8, ptr %119, align 1, !dbg !2525, !tbaa !872
  %637 = icmp eq i8 %636, 0, !dbg !2528
  br i1 %637, label %650, label %638, !dbg !2528

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1995, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1993, metadata !DIExpression()), !dbg !2053
  %642 = icmp ult i64 %641, %146, !dbg !2529
  br i1 %642, label %643, label %645, !dbg !2532

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2529
  store i8 %639, ptr %644, align 1, !dbg !2529, !tbaa !872
  br label %645, !dbg !2529

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1993, metadata !DIExpression()), !dbg !2053
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2533
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1995, metadata !DIExpression()), !dbg !2053
  %648 = load i8, ptr %647, align 1, !dbg !2525, !tbaa !872
  %649 = icmp eq i8 %648, 0, !dbg !2528
  br i1 %649, label %650, label %638, !dbg !2528, !llvm.loop !2534

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1993, metadata !DIExpression()), !dbg !2053
  %652 = icmp ult i64 %651, %146, !dbg !2536
  br i1 %652, label %653, label %672, !dbg !2538

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2539
  store i8 0, ptr %654, align 1, !dbg !2540, !tbaa !872
  br label %672, !dbg !2539

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2044), !dbg !2541
  %657 = icmp eq i8 %123, 0, !dbg !2542
  %658 = select i1 %657, i32 2, i32 4, !dbg !2542
  br label %666, !dbg !2542

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2044), !dbg !2541
  %662 = icmp eq i32 %115, 2, !dbg !2544
  %663 = icmp eq i8 %123, 0, !dbg !2542
  %664 = select i1 %663, i32 2, i32 4, !dbg !2542
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2542
  br label %666, !dbg !2542

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1987, metadata !DIExpression()), !dbg !2053
  %670 = and i32 %5, -3, !dbg !2545
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2546
  br label %672, !dbg !2547

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2548
}

; Function Attrs: nounwind
declare !dbg !2549 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2552 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2555 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2557 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2561, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2562, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata ptr %0, metadata !2565, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %1, metadata !2570, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr null, metadata !2571, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %2, metadata !2572, metadata !DIExpression()), !dbg !2578
  %4 = icmp eq ptr %2, null, !dbg !2580
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2580
  call void @llvm.dbg.value(metadata ptr %5, metadata !2573, metadata !DIExpression()), !dbg !2578
  %6 = tail call ptr @__errno_location() #40, !dbg !2581
  %7 = load i32, ptr %6, align 4, !dbg !2581, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %7, metadata !2574, metadata !DIExpression()), !dbg !2578
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2582
  %9 = load i32, ptr %8, align 4, !dbg !2582, !tbaa !1927
  %10 = or i32 %9, 1, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %10, metadata !2575, metadata !DIExpression()), !dbg !2578
  %11 = load i32, ptr %5, align 8, !dbg !2584, !tbaa !1877
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2585
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2586
  %14 = load ptr, ptr %13, align 8, !dbg !2586, !tbaa !1948
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2587
  %16 = load ptr, ptr %15, align 8, !dbg !2587, !tbaa !1951
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2588
  %18 = add i64 %17, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %18, metadata !2576, metadata !DIExpression()), !dbg !2578
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2590
  call void @llvm.dbg.value(metadata ptr %19, metadata !2577, metadata !DIExpression()), !dbg !2578
  %20 = load i32, ptr %5, align 8, !dbg !2591, !tbaa !1877
  %21 = load ptr, ptr %13, align 8, !dbg !2592, !tbaa !1948
  %22 = load ptr, ptr %15, align 8, !dbg !2593, !tbaa !1951
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2594
  store i32 %7, ptr %6, align 4, !dbg !2595, !tbaa !863
  ret ptr %19, !dbg !2596
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2566 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2565, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2570, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2571, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2572, metadata !DIExpression()), !dbg !2597
  %5 = icmp eq ptr %3, null, !dbg !2598
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2598
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2573, metadata !DIExpression()), !dbg !2597
  %7 = tail call ptr @__errno_location() #40, !dbg !2599
  %8 = load i32, ptr %7, align 4, !dbg !2599, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2574, metadata !DIExpression()), !dbg !2597
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2600
  %10 = load i32, ptr %9, align 4, !dbg !2600, !tbaa !1927
  %11 = icmp eq ptr %2, null, !dbg !2601
  %12 = zext i1 %11 to i32, !dbg !2601
  %13 = or i32 %10, %12, !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2575, metadata !DIExpression()), !dbg !2597
  %14 = load i32, ptr %6, align 8, !dbg !2603, !tbaa !1877
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2604
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2605
  %17 = load ptr, ptr %16, align 8, !dbg !2605, !tbaa !1948
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2606
  %19 = load ptr, ptr %18, align 8, !dbg !2606, !tbaa !1951
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2607
  %21 = add i64 %20, 1, !dbg !2608
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2576, metadata !DIExpression()), !dbg !2597
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2577, metadata !DIExpression()), !dbg !2597
  %23 = load i32, ptr %6, align 8, !dbg !2610, !tbaa !1877
  %24 = load ptr, ptr %16, align 8, !dbg !2611, !tbaa !1948
  %25 = load ptr, ptr %18, align 8, !dbg !2612, !tbaa !1951
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2613
  store i32 %8, ptr %7, align 4, !dbg !2614, !tbaa !863
  br i1 %11, label %28, label %27, !dbg !2615

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2616, !tbaa !2618
  br label %28, !dbg !2619

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2620
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2621 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2626, !tbaa !796
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2623, metadata !DIExpression()), !dbg !2627
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2624, metadata !DIExpression()), !dbg !2628
  %2 = load i32, ptr @nslots, align 4, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2624, metadata !DIExpression()), !dbg !2628
  %3 = icmp sgt i32 %2, 1, !dbg !2629
  br i1 %3, label %4, label %6, !dbg !2631

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2629
  br label %10, !dbg !2631

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2632
  %8 = load ptr, ptr %7, align 8, !dbg !2632, !tbaa !2634
  %9 = icmp eq ptr %8, @slot0, !dbg !2636
  br i1 %9, label %17, label %16, !dbg !2637

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2624, metadata !DIExpression()), !dbg !2628
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2638
  %13 = load ptr, ptr %12, align 8, !dbg !2638, !tbaa !2634
  tail call void @free(ptr noundef %13) #37, !dbg !2639
  %14 = add nuw nsw i64 %11, 1, !dbg !2640
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2624, metadata !DIExpression()), !dbg !2628
  %15 = icmp eq i64 %14, %5, !dbg !2629
  br i1 %15, label %6, label %10, !dbg !2631, !llvm.loop !2641

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2643
  store i64 256, ptr @slotvec0, align 8, !dbg !2645, !tbaa !2646
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2647, !tbaa !2634
  br label %17, !dbg !2648

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2649
  br i1 %18, label %20, label %19, !dbg !2651

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2652
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2654, !tbaa !796
  br label %20, !dbg !2655

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2656, !tbaa !863
  ret void, !dbg !2657
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2658 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2660, metadata !DIExpression()), !dbg !2662
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2661, metadata !DIExpression()), !dbg !2662
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2663
  ret ptr %3, !dbg !2664
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2665 {
  %5 = alloca i64, align 8, !DIAssignID !2685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2679, metadata !DIExpression(), metadata !2685, metadata ptr %5, metadata !DIExpression()), !dbg !2686
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2669, metadata !DIExpression()), !dbg !2687
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2670, metadata !DIExpression()), !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2671, metadata !DIExpression()), !dbg !2687
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2672, metadata !DIExpression()), !dbg !2687
  %6 = tail call ptr @__errno_location() #40, !dbg !2688
  %7 = load i32, ptr %6, align 4, !dbg !2688, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2673, metadata !DIExpression()), !dbg !2687
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2689, !tbaa !796
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2674, metadata !DIExpression()), !dbg !2687
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2675, metadata !DIExpression()), !dbg !2687
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2690
  br i1 %9, label %10, label %11, !dbg !2690

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2692
  unreachable, !dbg !2692

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2693, !tbaa !863
  %13 = icmp sgt i32 %12, %0, !dbg !2694
  br i1 %13, label %32, label %14, !dbg !2695

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2696
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2676, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2686
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2697
  %16 = sext i32 %12 to i64, !dbg !2698
  store i64 %16, ptr %5, align 8, !dbg !2699, !tbaa !2618, !DIAssignID !2700
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2679, metadata !DIExpression(), metadata !2700, metadata ptr %5, metadata !DIExpression()), !dbg !2686
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2701
  %18 = add nuw nsw i32 %0, 1, !dbg !2702
  %19 = sub i32 %18, %12, !dbg !2703
  %20 = sext i32 %19 to i64, !dbg !2704
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2705
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2674, metadata !DIExpression()), !dbg !2687
  store ptr %21, ptr @slotvec, align 8, !dbg !2706, !tbaa !796
  br i1 %15, label %22, label %23, !dbg !2707

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2708, !tbaa.struct !2710
  br label %23, !dbg !2711

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2712, !tbaa !863
  %25 = sext i32 %24 to i64, !dbg !2713
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2713
  %27 = load i64, ptr %5, align 8, !dbg !2714, !tbaa !2618
  %28 = sub nsw i64 %27, %25, !dbg !2715
  %29 = shl i64 %28, 4, !dbg !2716
  call void @llvm.dbg.value(metadata ptr %26, metadata !2091, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 0, metadata !2094, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %29, metadata !2095, metadata !DIExpression()), !dbg !2717
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2719
  %30 = load i64, ptr %5, align 8, !dbg !2720, !tbaa !2618
  %31 = trunc i64 %30 to i32, !dbg !2720
  store i32 %31, ptr @nslots, align 4, !dbg !2721, !tbaa !863
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2722
  br label %32, !dbg !2723

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2687
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2674, metadata !DIExpression()), !dbg !2687
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2724
  %36 = load i64, ptr %35, align 8, !dbg !2725, !tbaa !2646
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2680, metadata !DIExpression()), !dbg !2726
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2727
  %38 = load ptr, ptr %37, align 8, !dbg !2727, !tbaa !2634
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2682, metadata !DIExpression()), !dbg !2726
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2728
  %40 = load i32, ptr %39, align 4, !dbg !2728, !tbaa !1927
  %41 = or i32 %40, 1, !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2683, metadata !DIExpression()), !dbg !2726
  %42 = load i32, ptr %3, align 8, !dbg !2730, !tbaa !1877
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2731
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2732
  %45 = load ptr, ptr %44, align 8, !dbg !2732, !tbaa !1948
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2733
  %47 = load ptr, ptr %46, align 8, !dbg !2733, !tbaa !1951
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2734
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2684, metadata !DIExpression()), !dbg !2726
  %49 = icmp ugt i64 %36, %48, !dbg !2735
  br i1 %49, label %60, label %50, !dbg !2737

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2738
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2680, metadata !DIExpression()), !dbg !2726
  store i64 %51, ptr %35, align 8, !dbg !2740, !tbaa !2646
  %52 = icmp eq ptr %38, @slot0, !dbg !2741
  br i1 %52, label %54, label %53, !dbg !2743

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2744
  br label %54, !dbg !2744

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2745
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2682, metadata !DIExpression()), !dbg !2726
  store ptr %55, ptr %37, align 8, !dbg !2746, !tbaa !2634
  %56 = load i32, ptr %3, align 8, !dbg !2747, !tbaa !1877
  %57 = load ptr, ptr %44, align 8, !dbg !2748, !tbaa !1948
  %58 = load ptr, ptr %46, align 8, !dbg !2749, !tbaa !1951
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2750
  br label %60, !dbg !2751

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2726
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2682, metadata !DIExpression()), !dbg !2726
  store i32 %7, ptr %6, align 4, !dbg !2752, !tbaa !863
  ret ptr %61, !dbg !2753
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2754 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()), !dbg !2761
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2759, metadata !DIExpression()), !dbg !2761
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2760, metadata !DIExpression()), !dbg !2761
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2762
  ret ptr %4, !dbg !2763
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2764 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2660, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !2768
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2770
  ret ptr %2, !dbg !2771
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2772 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2776, metadata !DIExpression()), !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %0, metadata !2759, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %1, metadata !2760, metadata !DIExpression()), !dbg !2779
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2781
  ret ptr %3, !dbg !2782
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2783 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2791
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2790, metadata !DIExpression(), metadata !2791, metadata ptr %4, metadata !DIExpression()), !dbg !2792
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2787, metadata !DIExpression()), !dbg !2792
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2788, metadata !DIExpression()), !dbg !2792
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2789, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %1, metadata !2798, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2803, metadata !DIExpression()), !dbg !2806
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2806, !alias.scope !2794, !DIAssignID !2807
  call void @llvm.dbg.assign(metadata i8 0, metadata !2790, metadata !DIExpression(), metadata !2807, metadata ptr %4, metadata !DIExpression()), !dbg !2792
  %5 = icmp eq i32 %1, 10, !dbg !2808
  br i1 %5, label %6, label %7, !dbg !2810

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2811, !noalias !2794
  unreachable, !dbg !2811

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2812, !tbaa !1877, !alias.scope !2794, !DIAssignID !2813
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2790, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2813, metadata ptr %4, metadata !DIExpression()), !dbg !2792
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2814
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2815
  ret ptr %8, !dbg !2816
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2817 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2826
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2825, metadata !DIExpression(), metadata !2826, metadata ptr %5, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2821, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2822, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2823, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2824, metadata !DIExpression()), !dbg !2827
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2828
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2829), !dbg !2832
  call void @llvm.dbg.value(metadata i32 %1, metadata !2798, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2803, metadata !DIExpression()), !dbg !2835
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2835, !alias.scope !2829, !DIAssignID !2836
  call void @llvm.dbg.assign(metadata i8 0, metadata !2825, metadata !DIExpression(), metadata !2836, metadata ptr %5, metadata !DIExpression()), !dbg !2827
  %6 = icmp eq i32 %1, 10, !dbg !2837
  br i1 %6, label %7, label %8, !dbg !2838

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2839, !noalias !2829
  unreachable, !dbg !2839

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2840, !tbaa !1877, !alias.scope !2829, !DIAssignID !2841
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2825, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2841, metadata ptr %5, metadata !DIExpression()), !dbg !2827
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2842
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2843
  ret ptr %9, !dbg !2844
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2845 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2851
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2849, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2850, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2790, metadata !DIExpression(), metadata !2851, metadata ptr %3, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 0, metadata !2787, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %0, metadata !2788, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %1, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856), !dbg !2859
  call void @llvm.dbg.value(metadata i32 %0, metadata !2798, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2803, metadata !DIExpression()), !dbg !2862
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2862, !alias.scope !2856, !DIAssignID !2863
  call void @llvm.dbg.assign(metadata i8 0, metadata !2790, metadata !DIExpression(), metadata !2863, metadata ptr %3, metadata !DIExpression()), !dbg !2853
  %4 = icmp eq i32 %0, 10, !dbg !2864
  br i1 %4, label %5, label %6, !dbg !2865

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2866, !noalias !2856
  unreachable, !dbg !2866

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2867, !tbaa !1877, !alias.scope !2856, !DIAssignID !2868
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2790, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2868, metadata ptr %3, metadata !DIExpression()), !dbg !2853
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2869
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2870
  ret ptr %7, !dbg !2871
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2872 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2879
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2876, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2877, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2878, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2825, metadata !DIExpression(), metadata !2879, metadata ptr %4, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 0, metadata !2821, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %0, metadata !2822, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %1, metadata !2823, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %2, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2883
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2884), !dbg !2887
  call void @llvm.dbg.value(metadata i32 %0, metadata !2798, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2803, metadata !DIExpression()), !dbg !2890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2890, !alias.scope !2884, !DIAssignID !2891
  call void @llvm.dbg.assign(metadata i8 0, metadata !2825, metadata !DIExpression(), metadata !2891, metadata ptr %4, metadata !DIExpression()), !dbg !2881
  %5 = icmp eq i32 %0, 10, !dbg !2892
  br i1 %5, label %6, label %7, !dbg !2893

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2894, !noalias !2884
  unreachable, !dbg !2894

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2895, !tbaa !1877, !alias.scope !2884, !DIAssignID !2896
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2825, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2896, metadata ptr %4, metadata !DIExpression()), !dbg !2881
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2897
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2898
  ret ptr %8, !dbg !2899
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2900 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2908
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2907, metadata !DIExpression(), metadata !2908, metadata ptr %4, metadata !DIExpression()), !dbg !2909
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2904, metadata !DIExpression()), !dbg !2909
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()), !dbg !2909
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2906, metadata !DIExpression()), !dbg !2909
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2911, !tbaa.struct !2912, !DIAssignID !2913
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2907, metadata !DIExpression(), metadata !2913, metadata ptr %4, metadata !DIExpression()), !dbg !2909
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1894, metadata !DIExpression()), !dbg !2914
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1895, metadata !DIExpression()), !dbg !2914
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !2914
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1897, metadata !DIExpression()), !dbg !2914
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2916
  %6 = lshr i8 %2, 5, !dbg !2917
  %7 = zext nneg i8 %6 to i64, !dbg !2917
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1898, metadata !DIExpression()), !dbg !2914
  %9 = and i8 %2, 31, !dbg !2919
  %10 = zext nneg i8 %9 to i32, !dbg !2919
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1900, metadata !DIExpression()), !dbg !2914
  %11 = load i32, ptr %8, align 4, !dbg !2920, !tbaa !863
  %12 = lshr i32 %11, %10, !dbg !2921
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1901, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2914
  %13 = and i32 %12, 1, !dbg !2922
  %14 = xor i32 %13, 1, !dbg !2922
  %15 = shl nuw i32 %14, %10, !dbg !2923
  %16 = xor i32 %15, %11, !dbg !2924
  store i32 %16, ptr %8, align 4, !dbg !2924, !tbaa !863
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2925
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2926
  ret ptr %17, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2928 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2934
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2907, metadata !DIExpression(), metadata !2934, metadata ptr %3, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %0, metadata !2904, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 -1, metadata !2905, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 %1, metadata !2906, metadata !DIExpression()), !dbg !2936
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2939, !tbaa.struct !2912, !DIAssignID !2940
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2907, metadata !DIExpression(), metadata !2940, metadata ptr %3, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %3, metadata !1894, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 %1, metadata !1895, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 %1, metadata !1897, metadata !DIExpression()), !dbg !2941
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2943
  %5 = lshr i8 %1, 5, !dbg !2944
  %6 = zext nneg i8 %5 to i64, !dbg !2944
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2945
  call void @llvm.dbg.value(metadata ptr %7, metadata !1898, metadata !DIExpression()), !dbg !2941
  %8 = and i8 %1, 31, !dbg !2946
  %9 = zext nneg i8 %8 to i32, !dbg !2946
  call void @llvm.dbg.value(metadata i32 %9, metadata !1900, metadata !DIExpression()), !dbg !2941
  %10 = load i32, ptr %7, align 4, !dbg !2947, !tbaa !863
  %11 = lshr i32 %10, %9, !dbg !2948
  call void @llvm.dbg.value(metadata i32 %11, metadata !1901, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2941
  %12 = and i32 %11, 1, !dbg !2949
  %13 = xor i32 %12, 1, !dbg !2949
  %14 = shl nuw i32 %13, %9, !dbg !2950
  %15 = xor i32 %14, %10, !dbg !2951
  store i32 %15, ptr %7, align 4, !dbg !2951, !tbaa !863
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2952
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2953
  ret ptr %16, !dbg !2954
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2955 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2958
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2957, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 58, metadata !2933, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2907, metadata !DIExpression(), metadata !2958, metadata ptr %2, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %0, metadata !2904, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 -1, metadata !2905, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8 58, metadata !2906, metadata !DIExpression()), !dbg !2962
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2965, !tbaa.struct !2912, !DIAssignID !2966
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2907, metadata !DIExpression(), metadata !2966, metadata ptr %2, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %2, metadata !1894, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 58, metadata !1895, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 58, metadata !1897, metadata !DIExpression()), !dbg !2967
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2969
  call void @llvm.dbg.value(metadata ptr %3, metadata !1898, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 26, metadata !1900, metadata !DIExpression()), !dbg !2967
  %4 = load i32, ptr %3, align 4, !dbg !2970, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %4, metadata !1901, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2967
  %5 = or i32 %4, 67108864, !dbg !2971
  store i32 %5, ptr %3, align 4, !dbg !2971, !tbaa !863
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2972
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2973
  ret ptr %6, !dbg !2974
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2975 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2979
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2977, metadata !DIExpression()), !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2907, metadata !DIExpression(), metadata !2979, metadata ptr %3, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %0, metadata !2904, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 58, metadata !2906, metadata !DIExpression()), !dbg !2981
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2984, !tbaa.struct !2912, !DIAssignID !2985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2907, metadata !DIExpression(), metadata !2985, metadata ptr %3, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %3, metadata !1894, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 58, metadata !1895, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 58, metadata !1897, metadata !DIExpression()), !dbg !2986
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2988
  call void @llvm.dbg.value(metadata ptr %4, metadata !1898, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 26, metadata !1900, metadata !DIExpression()), !dbg !2986
  %5 = load i32, ptr %4, align 4, !dbg !2989, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %5, metadata !1901, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2986
  %6 = or i32 %5, 67108864, !dbg !2990
  store i32 %6, ptr %4, align 4, !dbg !2990, !tbaa !863
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2991
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2992
  ret ptr %7, !dbg !2993
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2994 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2999, metadata !DIExpression(), metadata !3000, metadata ptr %4, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2803, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3002
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2996, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2997, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2998, metadata !DIExpression()), !dbg !3001
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %1, metadata !2798, metadata !DIExpression()), !dbg !3005
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2803, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3005
  %5 = icmp eq i32 %1, 10, !dbg !3006
  br i1 %5, label %6, label %7, !dbg !3007

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3008, !noalias !3009
  unreachable, !dbg !3008

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2803, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3005
  store i32 %1, ptr %4, align 8, !dbg !3012, !tbaa.struct !2912, !DIAssignID !3013
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3012
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3012
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2999, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3013, metadata ptr %4, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2999, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3014, metadata ptr %8, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1894, metadata !DIExpression()), !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1895, metadata !DIExpression()), !dbg !3015
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1896, metadata !DIExpression()), !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1897, metadata !DIExpression()), !dbg !3015
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3017
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1898, metadata !DIExpression()), !dbg !3015
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1900, metadata !DIExpression()), !dbg !3015
  %10 = load i32, ptr %9, align 4, !dbg !3018, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1901, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3015
  %11 = or i32 %10, 67108864, !dbg !3019
  store i32 %11, ptr %9, align 4, !dbg !3019, !tbaa !863, !DIAssignID !3020
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2999, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3020, metadata ptr %9, metadata !DIExpression()), !dbg !3001
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3021
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3022
  ret ptr %12, !dbg !3023
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3024 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3032
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3028, metadata !DIExpression()), !dbg !3033
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3029, metadata !DIExpression()), !dbg !3033
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3030, metadata !DIExpression()), !dbg !3033
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3031, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(), metadata !3032, metadata ptr %5, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %0, metadata !3039, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %1, metadata !3040, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %2, metadata !3041, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %3, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 -1, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3047, !tbaa.struct !2912, !DIAssignID !3048
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(), metadata !3048, metadata ptr %5, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3049, metadata ptr undef, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata ptr %1, metadata !1935, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata ptr %2, metadata !1936, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !3050
  store i32 10, ptr %5, align 8, !dbg !3052, !tbaa !1877, !DIAssignID !3053
  call void @llvm.dbg.assign(metadata i32 10, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3053, metadata ptr %5, metadata !DIExpression()), !dbg !3044
  %6 = icmp ne ptr %1, null, !dbg !3054
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3055
  br i1 %8, label %10, label %9, !dbg !3055

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3056
  unreachable, !dbg !3056

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3057
  store ptr %1, ptr %11, align 8, !dbg !3058, !tbaa !1948, !DIAssignID !3059
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3059, metadata ptr %11, metadata !DIExpression()), !dbg !3044
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3060
  store ptr %2, ptr %12, align 8, !dbg !3061, !tbaa !1951, !DIAssignID !3062
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3062, metadata ptr %12, metadata !DIExpression()), !dbg !3044
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3063
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3064
  ret ptr %13, !dbg !3065
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3035 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3066
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(), metadata !3066, metadata ptr %6, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3039, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3040, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3041, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3042, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3043, metadata !DIExpression()), !dbg !3067
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3068
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3069, !tbaa.struct !2912, !DIAssignID !3070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(), metadata !3070, metadata ptr %6, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3071, metadata ptr undef, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %6, metadata !1934, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %1, metadata !1935, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %2, metadata !1936, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %6, metadata !1934, metadata !DIExpression()), !dbg !3072
  store i32 10, ptr %6, align 8, !dbg !3074, !tbaa !1877, !DIAssignID !3075
  call void @llvm.dbg.assign(metadata i32 10, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3075, metadata ptr %6, metadata !DIExpression()), !dbg !3067
  %7 = icmp ne ptr %1, null, !dbg !3076
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3077
  br i1 %9, label %11, label %10, !dbg !3077

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3078
  unreachable, !dbg !3078

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3079
  store ptr %1, ptr %12, align 8, !dbg !3080, !tbaa !1948, !DIAssignID !3081
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3081, metadata ptr %12, metadata !DIExpression()), !dbg !3067
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3082
  store ptr %2, ptr %13, align 8, !dbg !3083, !tbaa !1951, !DIAssignID !3084
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3084, metadata ptr %13, metadata !DIExpression()), !dbg !3067
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3085
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3086
  ret ptr %14, !dbg !3087
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3088 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3095
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3092, metadata !DIExpression()), !dbg !3096
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3093, metadata !DIExpression()), !dbg !3096
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3028, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %0, metadata !3029, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %1, metadata !3030, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %2, metadata !3031, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(), metadata !3095, metadata ptr %4, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 0, metadata !3039, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %0, metadata !3040, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %1, metadata !3041, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %2, metadata !3042, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 -1, metadata !3043, metadata !DIExpression()), !dbg !3099
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3102, !tbaa.struct !2912, !DIAssignID !3103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(), metadata !3103, metadata ptr %4, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3104, metadata ptr undef, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %4, metadata !1934, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %1, metadata !1936, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %4, metadata !1934, metadata !DIExpression()), !dbg !3105
  store i32 10, ptr %4, align 8, !dbg !3107, !tbaa !1877, !DIAssignID !3108
  call void @llvm.dbg.assign(metadata i32 10, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3108, metadata ptr %4, metadata !DIExpression()), !dbg !3099
  %5 = icmp ne ptr %0, null, !dbg !3109
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3110
  br i1 %7, label %9, label %8, !dbg !3110

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3111
  unreachable, !dbg !3111

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3112
  store ptr %0, ptr %10, align 8, !dbg !3113, !tbaa !1948, !DIAssignID !3114
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3114, metadata ptr %10, metadata !DIExpression()), !dbg !3099
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3115
  store ptr %1, ptr %11, align 8, !dbg !3116, !tbaa !1951, !DIAssignID !3117
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3117, metadata ptr %11, metadata !DIExpression()), !dbg !3099
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3118
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3119
  ret ptr %12, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3121 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3129
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3125, metadata !DIExpression()), !dbg !3130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3126, metadata !DIExpression()), !dbg !3130
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3127, metadata !DIExpression()), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3128, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(), metadata !3129, metadata ptr %5, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !3039, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %0, metadata !3040, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %1, metadata !3041, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %2, metadata !3042, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %3, metadata !3043, metadata !DIExpression()), !dbg !3131
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3134, !tbaa.struct !2912, !DIAssignID !3135
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(), metadata !3135, metadata ptr %5, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3136, metadata ptr undef, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata ptr %1, metadata !1936, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !3137
  store i32 10, ptr %5, align 8, !dbg !3139, !tbaa !1877, !DIAssignID !3140
  call void @llvm.dbg.assign(metadata i32 10, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3140, metadata ptr %5, metadata !DIExpression()), !dbg !3131
  %6 = icmp ne ptr %0, null, !dbg !3141
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3142
  br i1 %8, label %10, label %9, !dbg !3142

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3143
  unreachable, !dbg !3143

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3144
  store ptr %0, ptr %11, align 8, !dbg !3145, !tbaa !1948, !DIAssignID !3146
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3146, metadata ptr %11, metadata !DIExpression()), !dbg !3131
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3147
  store ptr %1, ptr %12, align 8, !dbg !3148, !tbaa !1951, !DIAssignID !3149
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3034, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3149, metadata ptr %12, metadata !DIExpression()), !dbg !3131
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3150
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3151
  ret ptr %13, !dbg !3152
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3153 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()), !dbg !3160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3158, metadata !DIExpression()), !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3159, metadata !DIExpression()), !dbg !3160
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3161
  ret ptr %4, !dbg !3162
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3163 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3167, metadata !DIExpression()), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !3157, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3170
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3172
  ret ptr %3, !dbg !3173
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3174 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3178, metadata !DIExpression()), !dbg !3180
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3179, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %1, metadata !3158, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 -1, metadata !3159, metadata !DIExpression()), !dbg !3181
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3183
  ret ptr %3, !dbg !3184
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3185 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3189, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i32 0, metadata !3178, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata ptr %0, metadata !3179, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i32 0, metadata !3157, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 -1, metadata !3159, metadata !DIExpression()), !dbg !3193
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3195
  ret ptr %2, !dbg !3196
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3197 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3236, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3237, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3238, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3239, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3240, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3241, metadata !DIExpression()), !dbg !3242
  %7 = icmp eq ptr %1, null, !dbg !3243
  br i1 %7, label %10, label %8, !dbg !3245

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3246
  br label %12, !dbg !3246

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.81, ptr noundef %2, ptr noundef %3) #37, !dbg !3247
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.3.83, i32 noundef 5) #37, !dbg !3248
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3248
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %0), !dbg !3249
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.5.85, i32 noundef 5) #37, !dbg !3250
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.86) #37, !dbg !3250
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %0), !dbg !3251
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
  ], !dbg !3252

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.7.87, i32 noundef 5) #37, !dbg !3253
  %21 = load ptr, ptr %4, align 8, !dbg !3253, !tbaa !796
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3253
  br label %147, !dbg !3255

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.8.88, i32 noundef 5) #37, !dbg !3256
  %25 = load ptr, ptr %4, align 8, !dbg !3256, !tbaa !796
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3256
  %27 = load ptr, ptr %26, align 8, !dbg !3256, !tbaa !796
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3256
  br label %147, !dbg !3257

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.9.89, i32 noundef 5) #37, !dbg !3258
  %31 = load ptr, ptr %4, align 8, !dbg !3258, !tbaa !796
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3258
  %33 = load ptr, ptr %32, align 8, !dbg !3258, !tbaa !796
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3258
  %35 = load ptr, ptr %34, align 8, !dbg !3258, !tbaa !796
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3258
  br label %147, !dbg !3259

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.10.90, i32 noundef 5) #37, !dbg !3260
  %39 = load ptr, ptr %4, align 8, !dbg !3260, !tbaa !796
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3260
  %41 = load ptr, ptr %40, align 8, !dbg !3260, !tbaa !796
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3260
  %43 = load ptr, ptr %42, align 8, !dbg !3260, !tbaa !796
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3260
  %45 = load ptr, ptr %44, align 8, !dbg !3260, !tbaa !796
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3260
  br label %147, !dbg !3261

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.11.91, i32 noundef 5) #37, !dbg !3262
  %49 = load ptr, ptr %4, align 8, !dbg !3262, !tbaa !796
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3262
  %51 = load ptr, ptr %50, align 8, !dbg !3262, !tbaa !796
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3262
  %53 = load ptr, ptr %52, align 8, !dbg !3262, !tbaa !796
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3262
  %55 = load ptr, ptr %54, align 8, !dbg !3262, !tbaa !796
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3262
  %57 = load ptr, ptr %56, align 8, !dbg !3262, !tbaa !796
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3262
  br label %147, !dbg !3263

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.12.92, i32 noundef 5) #37, !dbg !3264
  %61 = load ptr, ptr %4, align 8, !dbg !3264, !tbaa !796
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3264
  %63 = load ptr, ptr %62, align 8, !dbg !3264, !tbaa !796
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3264
  %65 = load ptr, ptr %64, align 8, !dbg !3264, !tbaa !796
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3264
  %67 = load ptr, ptr %66, align 8, !dbg !3264, !tbaa !796
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3264
  %69 = load ptr, ptr %68, align 8, !dbg !3264, !tbaa !796
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3264
  %71 = load ptr, ptr %70, align 8, !dbg !3264, !tbaa !796
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3264
  br label %147, !dbg !3265

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.13.93, i32 noundef 5) #37, !dbg !3266
  %75 = load ptr, ptr %4, align 8, !dbg !3266, !tbaa !796
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3266
  %77 = load ptr, ptr %76, align 8, !dbg !3266, !tbaa !796
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3266
  %79 = load ptr, ptr %78, align 8, !dbg !3266, !tbaa !796
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3266
  %81 = load ptr, ptr %80, align 8, !dbg !3266, !tbaa !796
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3266
  %83 = load ptr, ptr %82, align 8, !dbg !3266, !tbaa !796
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3266
  %85 = load ptr, ptr %84, align 8, !dbg !3266, !tbaa !796
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3266
  %87 = load ptr, ptr %86, align 8, !dbg !3266, !tbaa !796
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3266
  br label %147, !dbg !3267

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.14.94, i32 noundef 5) #37, !dbg !3268
  %91 = load ptr, ptr %4, align 8, !dbg !3268, !tbaa !796
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3268
  %93 = load ptr, ptr %92, align 8, !dbg !3268, !tbaa !796
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3268
  %95 = load ptr, ptr %94, align 8, !dbg !3268, !tbaa !796
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3268
  %97 = load ptr, ptr %96, align 8, !dbg !3268, !tbaa !796
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3268
  %99 = load ptr, ptr %98, align 8, !dbg !3268, !tbaa !796
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3268
  %101 = load ptr, ptr %100, align 8, !dbg !3268, !tbaa !796
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3268
  %103 = load ptr, ptr %102, align 8, !dbg !3268, !tbaa !796
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3268
  %105 = load ptr, ptr %104, align 8, !dbg !3268, !tbaa !796
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3268
  br label %147, !dbg !3269

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.15.95, i32 noundef 5) #37, !dbg !3270
  %109 = load ptr, ptr %4, align 8, !dbg !3270, !tbaa !796
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3270
  %111 = load ptr, ptr %110, align 8, !dbg !3270, !tbaa !796
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3270
  %113 = load ptr, ptr %112, align 8, !dbg !3270, !tbaa !796
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3270
  %115 = load ptr, ptr %114, align 8, !dbg !3270, !tbaa !796
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3270
  %117 = load ptr, ptr %116, align 8, !dbg !3270, !tbaa !796
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3270
  %119 = load ptr, ptr %118, align 8, !dbg !3270, !tbaa !796
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3270
  %121 = load ptr, ptr %120, align 8, !dbg !3270, !tbaa !796
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3270
  %123 = load ptr, ptr %122, align 8, !dbg !3270, !tbaa !796
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3270
  %125 = load ptr, ptr %124, align 8, !dbg !3270, !tbaa !796
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3270
  br label %147, !dbg !3271

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.16.96, i32 noundef 5) #37, !dbg !3272
  %129 = load ptr, ptr %4, align 8, !dbg !3272, !tbaa !796
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3272
  %131 = load ptr, ptr %130, align 8, !dbg !3272, !tbaa !796
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3272
  %133 = load ptr, ptr %132, align 8, !dbg !3272, !tbaa !796
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3272
  %135 = load ptr, ptr %134, align 8, !dbg !3272, !tbaa !796
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3272
  %137 = load ptr, ptr %136, align 8, !dbg !3272, !tbaa !796
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3272
  %139 = load ptr, ptr %138, align 8, !dbg !3272, !tbaa !796
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3272
  %141 = load ptr, ptr %140, align 8, !dbg !3272, !tbaa !796
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3272
  %143 = load ptr, ptr %142, align 8, !dbg !3272, !tbaa !796
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3272
  %145 = load ptr, ptr %144, align 8, !dbg !3272, !tbaa !796
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3272
  br label %147, !dbg !3273

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3274
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3275 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3279, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3280, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3281, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3283, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3284, metadata !DIExpression()), !dbg !3285
  br label %6, !dbg !3286

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3284, metadata !DIExpression()), !dbg !3285
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3289
  %9 = load ptr, ptr %8, align 8, !dbg !3289, !tbaa !796
  %10 = icmp eq ptr %9, null, !dbg !3291
  %11 = add i64 %7, 1, !dbg !3292
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3284, metadata !DIExpression()), !dbg !3285
  br i1 %10, label %12, label %6, !dbg !3291, !llvm.loop !3293

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3295
  ret void, !dbg !3296
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3297 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3316
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3314, metadata !DIExpression(), metadata !3316, metadata ptr %6, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3308, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3309, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3310, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3311, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3312, metadata !DIExpression()), !dbg !3317
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3313, metadata !DIExpression()), !dbg !3317
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3313, metadata !DIExpression()), !dbg !3317
  %10 = icmp ult i32 %9, 41, !dbg !3319
  br i1 %10, label %11, label %16, !dbg !3319

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3319
  %13 = zext nneg i32 %9 to i64, !dbg !3319
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3319
  %15 = add nuw nsw i32 %9, 8, !dbg !3319
  store i32 %15, ptr %4, align 8, !dbg !3319
  br label %19, !dbg !3319

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3319
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3319
  store ptr %18, ptr %7, align 8, !dbg !3319
  br label %19, !dbg !3319

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3319
  %22 = load ptr, ptr %21, align 8, !dbg !3319
  store ptr %22, ptr %6, align 16, !dbg !3322, !tbaa !796
  %23 = icmp eq ptr %22, null, !dbg !3323
  br i1 %23, label %128, label %24, !dbg !3324

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3313, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3313, metadata !DIExpression()), !dbg !3317
  %25 = icmp ult i32 %20, 41, !dbg !3319
  br i1 %25, label %29, label %26, !dbg !3319

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3319
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3319
  store ptr %28, ptr %7, align 8, !dbg !3319
  br label %34, !dbg !3319

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3319
  %31 = zext nneg i32 %20 to i64, !dbg !3319
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3319
  %33 = add nuw nsw i32 %20, 8, !dbg !3319
  store i32 %33, ptr %4, align 8, !dbg !3319
  br label %34, !dbg !3319

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3319
  %37 = load ptr, ptr %36, align 8, !dbg !3319
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3325
  store ptr %37, ptr %38, align 8, !dbg !3322, !tbaa !796
  %39 = icmp eq ptr %37, null, !dbg !3323
  br i1 %39, label %128, label %40, !dbg !3324

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3313, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3313, metadata !DIExpression()), !dbg !3317
  %41 = icmp ult i32 %35, 41, !dbg !3319
  br i1 %41, label %45, label %42, !dbg !3319

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3319
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3319
  store ptr %44, ptr %7, align 8, !dbg !3319
  br label %50, !dbg !3319

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3319
  %47 = zext nneg i32 %35 to i64, !dbg !3319
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3319
  %49 = add nuw nsw i32 %35, 8, !dbg !3319
  store i32 %49, ptr %4, align 8, !dbg !3319
  br label %50, !dbg !3319

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3319
  %53 = load ptr, ptr %52, align 8, !dbg !3319
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3325
  store ptr %53, ptr %54, align 16, !dbg !3322, !tbaa !796
  %55 = icmp eq ptr %53, null, !dbg !3323
  br i1 %55, label %128, label %56, !dbg !3324

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3313, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3313, metadata !DIExpression()), !dbg !3317
  %57 = icmp ult i32 %51, 41, !dbg !3319
  br i1 %57, label %61, label %58, !dbg !3319

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3319
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3319
  store ptr %60, ptr %7, align 8, !dbg !3319
  br label %66, !dbg !3319

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3319
  %63 = zext nneg i32 %51 to i64, !dbg !3319
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3319
  %65 = add nuw nsw i32 %51, 8, !dbg !3319
  store i32 %65, ptr %4, align 8, !dbg !3319
  br label %66, !dbg !3319

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3319
  %69 = load ptr, ptr %68, align 8, !dbg !3319
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3325
  store ptr %69, ptr %70, align 8, !dbg !3322, !tbaa !796
  %71 = icmp eq ptr %69, null, !dbg !3323
  br i1 %71, label %128, label %72, !dbg !3324

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3313, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3313, metadata !DIExpression()), !dbg !3317
  %73 = icmp ult i32 %67, 41, !dbg !3319
  br i1 %73, label %77, label %74, !dbg !3319

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3319
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3319
  store ptr %76, ptr %7, align 8, !dbg !3319
  br label %82, !dbg !3319

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3319
  %79 = zext nneg i32 %67 to i64, !dbg !3319
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3319
  %81 = add nuw nsw i32 %67, 8, !dbg !3319
  store i32 %81, ptr %4, align 8, !dbg !3319
  br label %82, !dbg !3319

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3319
  %85 = load ptr, ptr %84, align 8, !dbg !3319
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3325
  store ptr %85, ptr %86, align 16, !dbg !3322, !tbaa !796
  %87 = icmp eq ptr %85, null, !dbg !3323
  br i1 %87, label %128, label %88, !dbg !3324

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3313, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3313, metadata !DIExpression()), !dbg !3317
  %89 = icmp ult i32 %83, 41, !dbg !3319
  br i1 %89, label %93, label %90, !dbg !3319

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3319
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3319
  store ptr %92, ptr %7, align 8, !dbg !3319
  br label %98, !dbg !3319

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3319
  %95 = zext nneg i32 %83 to i64, !dbg !3319
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3319
  %97 = add nuw nsw i32 %83, 8, !dbg !3319
  store i32 %97, ptr %4, align 8, !dbg !3319
  br label %98, !dbg !3319

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3319
  %100 = load ptr, ptr %99, align 8, !dbg !3319
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3325
  store ptr %100, ptr %101, align 8, !dbg !3322, !tbaa !796
  %102 = icmp eq ptr %100, null, !dbg !3323
  br i1 %102, label %128, label %103, !dbg !3324

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3313, metadata !DIExpression()), !dbg !3317
  %104 = load ptr, ptr %7, align 8, !dbg !3319
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3319
  store ptr %105, ptr %7, align 8, !dbg !3319
  %106 = load ptr, ptr %104, align 8, !dbg !3319
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3325
  store ptr %106, ptr %107, align 16, !dbg !3322, !tbaa !796
  %108 = icmp eq ptr %106, null, !dbg !3323
  br i1 %108, label %128, label %109, !dbg !3324

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3313, metadata !DIExpression()), !dbg !3317
  %110 = load ptr, ptr %7, align 8, !dbg !3319
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3319
  store ptr %111, ptr %7, align 8, !dbg !3319
  %112 = load ptr, ptr %110, align 8, !dbg !3319
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3325
  store ptr %112, ptr %113, align 8, !dbg !3322, !tbaa !796
  %114 = icmp eq ptr %112, null, !dbg !3323
  br i1 %114, label %128, label %115, !dbg !3324

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3313, metadata !DIExpression()), !dbg !3317
  %116 = load ptr, ptr %7, align 8, !dbg !3319
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3319
  store ptr %117, ptr %7, align 8, !dbg !3319
  %118 = load ptr, ptr %116, align 8, !dbg !3319
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3325
  store ptr %118, ptr %119, align 16, !dbg !3322, !tbaa !796
  %120 = icmp eq ptr %118, null, !dbg !3323
  br i1 %120, label %128, label %121, !dbg !3324

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3313, metadata !DIExpression()), !dbg !3317
  %122 = load ptr, ptr %7, align 8, !dbg !3319
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3319
  store ptr %123, ptr %7, align 8, !dbg !3319
  %124 = load ptr, ptr %122, align 8, !dbg !3319
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3325
  store ptr %124, ptr %125, align 8, !dbg !3322, !tbaa !796
  %126 = icmp eq ptr %124, null, !dbg !3323
  %127 = select i1 %126, i64 9, i64 10, !dbg !3324
  br label %128, !dbg !3324

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3326
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3327
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3328
  ret void, !dbg !3328
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3329 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3342
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3337, metadata !DIExpression(), metadata !3342, metadata ptr %5, metadata !DIExpression()), !dbg !3343
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3333, metadata !DIExpression()), !dbg !3343
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3334, metadata !DIExpression()), !dbg !3343
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3335, metadata !DIExpression()), !dbg !3343
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3336, metadata !DIExpression()), !dbg !3343
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3344
  call void @llvm.va_start(ptr nonnull %5), !dbg !3345
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3346
  call void @llvm.va_end(ptr nonnull %5), !dbg !3347
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3348
  ret void, !dbg !3348
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3349 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3350, !tbaa !796
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.84, ptr noundef %1), !dbg !3350
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.17.101, i32 noundef 5) #37, !dbg !3351
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.102) #37, !dbg !3351
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.19.103, i32 noundef 5) #37, !dbg !3352
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.104, ptr noundef nonnull @.str.21.105) #37, !dbg !3352
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.82, ptr noundef nonnull @.str.22.106, i32 noundef 5) #37, !dbg !3353
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.107) #37, !dbg !3353
  ret void, !dbg !3354
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3355 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3360, metadata !DIExpression()), !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3361, metadata !DIExpression()), !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata ptr %0, metadata !3364, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %1, metadata !3367, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %2, metadata !3368, metadata !DIExpression()), !dbg !3369
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3371
  call void @llvm.dbg.value(metadata ptr %4, metadata !3372, metadata !DIExpression()), !dbg !3377
  %5 = icmp eq ptr %4, null, !dbg !3379
  br i1 %5, label %6, label %7, !dbg !3381

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3382
  unreachable, !dbg !3382

7:                                                ; preds = %3
  ret ptr %4, !dbg !3383
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3365 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3364, metadata !DIExpression()), !dbg !3384
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3367, metadata !DIExpression()), !dbg !3384
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3368, metadata !DIExpression()), !dbg !3384
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3385
  call void @llvm.dbg.value(metadata ptr %4, metadata !3372, metadata !DIExpression()), !dbg !3386
  %5 = icmp eq ptr %4, null, !dbg !3388
  br i1 %5, label %6, label %7, !dbg !3389

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3390
  unreachable, !dbg !3390

7:                                                ; preds = %3
  ret ptr %4, !dbg !3391
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3392 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3396, metadata !DIExpression()), !dbg !3397
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3398
  call void @llvm.dbg.value(metadata ptr %2, metadata !3372, metadata !DIExpression()), !dbg !3399
  %3 = icmp eq ptr %2, null, !dbg !3401
  br i1 %3, label %4, label %5, !dbg !3402

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3403
  unreachable, !dbg !3403

5:                                                ; preds = %1
  ret ptr %2, !dbg !3404
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3405 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3406 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3410, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64 %0, metadata !3412, metadata !DIExpression()), !dbg !3416
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3418
  call void @llvm.dbg.value(metadata ptr %2, metadata !3372, metadata !DIExpression()), !dbg !3419
  %3 = icmp eq ptr %2, null, !dbg !3421
  br i1 %3, label %4, label %5, !dbg !3422

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3423
  unreachable, !dbg !3423

5:                                                ; preds = %1
  ret ptr %2, !dbg !3424
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3425 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3429, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 %0, metadata !3396, metadata !DIExpression()), !dbg !3431
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3433
  call void @llvm.dbg.value(metadata ptr %2, metadata !3372, metadata !DIExpression()), !dbg !3434
  %3 = icmp eq ptr %2, null, !dbg !3436
  br i1 %3, label %4, label %5, !dbg !3437

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3438
  unreachable, !dbg !3438

5:                                                ; preds = %1
  ret ptr %2, !dbg !3439
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3440 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i64 %1, metadata !3451, metadata !DIExpression()), !dbg !3452
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3454
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3455
  call void @llvm.dbg.value(metadata ptr %4, metadata !3372, metadata !DIExpression()), !dbg !3456
  %5 = icmp eq ptr %4, null, !dbg !3458
  br i1 %5, label %6, label %7, !dbg !3459

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3460
  unreachable, !dbg !3460

7:                                                ; preds = %2
  ret ptr %4, !dbg !3461
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3462 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3463 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3467, metadata !DIExpression()), !dbg !3469
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3468, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata ptr %0, metadata !3470, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %1, metadata !3473, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %1, metadata !3451, metadata !DIExpression()), !dbg !3476
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3478
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3479
  call void @llvm.dbg.value(metadata ptr %4, metadata !3372, metadata !DIExpression()), !dbg !3480
  %5 = icmp eq ptr %4, null, !dbg !3482
  br i1 %5, label %6, label %7, !dbg !3483

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3484
  unreachable, !dbg !3484

7:                                                ; preds = %2
  ret ptr %4, !dbg !3485
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3486 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3490, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3491, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3492, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata ptr %0, metadata !3494, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %1, metadata !3497, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %2, metadata !3498, metadata !DIExpression()), !dbg !3499
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3501
  call void @llvm.dbg.value(metadata ptr %4, metadata !3372, metadata !DIExpression()), !dbg !3502
  %5 = icmp eq ptr %4, null, !dbg !3504
  br i1 %5, label %6, label %7, !dbg !3505

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3506
  unreachable, !dbg !3506

7:                                                ; preds = %3
  ret ptr %4, !dbg !3507
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3508 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3512, metadata !DIExpression()), !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata ptr null, metadata !3364, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %0, metadata !3367, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3515
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3517
  call void @llvm.dbg.value(metadata ptr %3, metadata !3372, metadata !DIExpression()), !dbg !3518
  %4 = icmp eq ptr %3, null, !dbg !3520
  br i1 %4, label %5, label %6, !dbg !3521

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3522
  unreachable, !dbg !3522

6:                                                ; preds = %2
  ret ptr %3, !dbg !3523
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3524 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3528, metadata !DIExpression()), !dbg !3530
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3529, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata ptr null, metadata !3490, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %0, metadata !3491, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata ptr null, metadata !3494, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %0, metadata !3497, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3498, metadata !DIExpression()), !dbg !3533
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3535
  call void @llvm.dbg.value(metadata ptr %3, metadata !3372, metadata !DIExpression()), !dbg !3536
  %4 = icmp eq ptr %3, null, !dbg !3538
  br i1 %4, label %5, label %6, !dbg !3539

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3540
  unreachable, !dbg !3540

6:                                                ; preds = %2
  ret ptr %3, !dbg !3541
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3542 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3546, metadata !DIExpression()), !dbg !3548
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3547, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %0, metadata !731, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %1, metadata !732, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 1, metadata !733, metadata !DIExpression()), !dbg !3549
  %3 = load i64, ptr %1, align 8, !dbg !3551, !tbaa !2618
  call void @llvm.dbg.value(metadata i64 %3, metadata !734, metadata !DIExpression()), !dbg !3549
  %4 = icmp eq ptr %0, null, !dbg !3552
  br i1 %4, label %5, label %8, !dbg !3554

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3555
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3558
  br label %15, !dbg !3558

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3559
  %10 = add nuw i64 %9, 1, !dbg !3559
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3559
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3559
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3559
  call void @llvm.dbg.value(metadata i64 %13, metadata !734, metadata !DIExpression()), !dbg !3549
  br i1 %12, label %14, label %15, !dbg !3562

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3563
  unreachable, !dbg !3563

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3549
  call void @llvm.dbg.value(metadata i64 %16, metadata !734, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %0, metadata !3364, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i64 %16, metadata !3367, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i64 1, metadata !3368, metadata !DIExpression()), !dbg !3564
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3566
  call void @llvm.dbg.value(metadata ptr %17, metadata !3372, metadata !DIExpression()), !dbg !3567
  %18 = icmp eq ptr %17, null, !dbg !3569
  br i1 %18, label %19, label %20, !dbg !3570

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3571
  unreachable, !dbg !3571

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !731, metadata !DIExpression()), !dbg !3549
  store i64 %16, ptr %1, align 8, !dbg !3572, !tbaa !2618
  ret ptr %17, !dbg !3573
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !726 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !731, metadata !DIExpression()), !dbg !3574
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !732, metadata !DIExpression()), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !733, metadata !DIExpression()), !dbg !3574
  %4 = load i64, ptr %1, align 8, !dbg !3575, !tbaa !2618
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !734, metadata !DIExpression()), !dbg !3574
  %5 = icmp eq ptr %0, null, !dbg !3576
  br i1 %5, label %6, label %13, !dbg !3577

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3578
  br i1 %7, label %8, label %20, !dbg !3579

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !734, metadata !DIExpression()), !dbg !3574
  %10 = icmp ugt i64 %2, 128, !dbg !3582
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !734, metadata !DIExpression()), !dbg !3574
  br label %20, !dbg !3584

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3585
  %15 = add nuw i64 %14, 1, !dbg !3585
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3585
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3585
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !734, metadata !DIExpression()), !dbg !3574
  br i1 %17, label %19, label %20, !dbg !3586

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3587
  unreachable, !dbg !3587

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !734, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata ptr %0, metadata !3364, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %21, metadata !3367, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %2, metadata !3368, metadata !DIExpression()), !dbg !3588
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3590
  call void @llvm.dbg.value(metadata ptr %22, metadata !3372, metadata !DIExpression()), !dbg !3591
  %23 = icmp eq ptr %22, null, !dbg !3593
  br i1 %23, label %24, label %25, !dbg !3594

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3595
  unreachable, !dbg !3595

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !731, metadata !DIExpression()), !dbg !3574
  store i64 %21, ptr %1, align 8, !dbg !3596, !tbaa !2618
  ret ptr %22, !dbg !3597
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !738 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !747, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !748, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !749, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !750, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !751, metadata !DIExpression()), !dbg !3598
  %6 = load i64, ptr %1, align 8, !dbg !3599, !tbaa !2618
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !752, metadata !DIExpression()), !dbg !3598
  %7 = ashr i64 %6, 1, !dbg !3600
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3600
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3600
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3600
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !753, metadata !DIExpression()), !dbg !3598
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !753, metadata !DIExpression()), !dbg !3598
  %12 = icmp sgt i64 %3, -1, !dbg !3603
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3605
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3605
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !753, metadata !DIExpression()), !dbg !3598
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3606
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3606
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !754, metadata !DIExpression()), !dbg !3598
  %18 = icmp slt i64 %17, 128, !dbg !3606
  %19 = select i1 %18, i64 128, i64 0, !dbg !3606
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !755, metadata !DIExpression()), !dbg !3598
  %21 = icmp eq i64 %20, 0, !dbg !3607
  br i1 %21, label %26, label %22, !dbg !3609

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !753, metadata !DIExpression()), !dbg !3598
  %24 = srem i64 %20, %4, !dbg !3612
  %25 = sub nsw i64 %20, %24, !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !754, metadata !DIExpression()), !dbg !3598
  br label %26, !dbg !3614

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3598
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !754, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !753, metadata !DIExpression()), !dbg !3598
  %29 = icmp eq ptr %0, null, !dbg !3615
  br i1 %29, label %30, label %31, !dbg !3617

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3618, !tbaa !2618
  br label %31, !dbg !3619

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3620
  %33 = icmp slt i64 %32, %2, !dbg !3622
  br i1 %33, label %34, label %46, !dbg !3623

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3624
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3624
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3624
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !753, metadata !DIExpression()), !dbg !3598
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3625
  br i1 %40, label %45, label %41, !dbg !3625

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3626
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3626
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3626
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !754, metadata !DIExpression()), !dbg !3598
  br i1 %43, label %45, label %46, !dbg !3627

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3628
  unreachable, !dbg !3628

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3598
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !754, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !753, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %48, metadata !3445, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %48, metadata !3451, metadata !DIExpression()), !dbg !3631
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3633
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !3634
  call void @llvm.dbg.value(metadata ptr %50, metadata !3372, metadata !DIExpression()), !dbg !3635
  %51 = icmp eq ptr %50, null, !dbg !3637
  br i1 %51, label %52, label %53, !dbg !3638

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3639
  unreachable, !dbg !3639

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !747, metadata !DIExpression()), !dbg !3598
  store i64 %47, ptr %1, align 8, !dbg !3640, !tbaa !2618
  ret ptr %50, !dbg !3641
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3642 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3644, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %0, metadata !3646, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 1, metadata !3649, metadata !DIExpression()), !dbg !3650
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3652
  call void @llvm.dbg.value(metadata ptr %2, metadata !3372, metadata !DIExpression()), !dbg !3653
  %3 = icmp eq ptr %2, null, !dbg !3655
  br i1 %3, label %4, label %5, !dbg !3656

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3657
  unreachable, !dbg !3657

5:                                                ; preds = %1
  ret ptr %2, !dbg !3658
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3659 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3647 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3646, metadata !DIExpression()), !dbg !3660
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3649, metadata !DIExpression()), !dbg !3660
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3661
  call void @llvm.dbg.value(metadata ptr %3, metadata !3372, metadata !DIExpression()), !dbg !3662
  %4 = icmp eq ptr %3, null, !dbg !3664
  br i1 %4, label %5, label %6, !dbg !3665

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3666
  unreachable, !dbg !3666

6:                                                ; preds = %2
  ret ptr %3, !dbg !3667
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3668 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %0, metadata !3672, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 1, metadata !3675, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %0, metadata !3678, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 1, metadata !3681, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %0, metadata !3678, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 1, metadata !3681, metadata !DIExpression()), !dbg !3682
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3684
  call void @llvm.dbg.value(metadata ptr %2, metadata !3372, metadata !DIExpression()), !dbg !3685
  %3 = icmp eq ptr %2, null, !dbg !3687
  br i1 %3, label %4, label %5, !dbg !3688

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3689
  unreachable, !dbg !3689

5:                                                ; preds = %1
  ret ptr %2, !dbg !3690
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3673 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3672, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3675, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %0, metadata !3678, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %0, metadata !3678, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()), !dbg !3692
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3694
  call void @llvm.dbg.value(metadata ptr %3, metadata !3372, metadata !DIExpression()), !dbg !3695
  %4 = icmp eq ptr %3, null, !dbg !3697
  br i1 %4, label %5, label %6, !dbg !3698

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3699
  unreachable, !dbg !3699

6:                                                ; preds = %2
  ret ptr %3, !dbg !3700
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3701 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3705, metadata !DIExpression()), !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3706, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %1, metadata !3396, metadata !DIExpression()), !dbg !3708
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3710
  call void @llvm.dbg.value(metadata ptr %3, metadata !3372, metadata !DIExpression()), !dbg !3711
  %4 = icmp eq ptr %3, null, !dbg !3713
  br i1 %4, label %5, label %6, !dbg !3714

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3715
  unreachable, !dbg !3715

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3716, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3726
  ret ptr %3, !dbg !3727
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3728 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3732, metadata !DIExpression()), !dbg !3734
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3733, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 %1, metadata !3410, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i64 %1, metadata !3412, metadata !DIExpression()), !dbg !3737
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3739
  call void @llvm.dbg.value(metadata ptr %3, metadata !3372, metadata !DIExpression()), !dbg !3740
  %4 = icmp eq ptr %3, null, !dbg !3742
  br i1 %4, label %5, label %6, !dbg !3743

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3744
  unreachable, !dbg !3744

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3716, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()), !dbg !3745
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3747
  ret ptr %3, !dbg !3748
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3749 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3754, metadata !DIExpression()), !dbg !3756
  %3 = add nsw i64 %1, 1, !dbg !3757
  call void @llvm.dbg.value(metadata i64 %3, metadata !3410, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 %3, metadata !3412, metadata !DIExpression()), !dbg !3760
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3762
  call void @llvm.dbg.value(metadata ptr %4, metadata !3372, metadata !DIExpression()), !dbg !3763
  %5 = icmp eq ptr %4, null, !dbg !3765
  br i1 %5, label %6, label %7, !dbg !3766

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3767
  unreachable, !dbg !3767

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3755, metadata !DIExpression()), !dbg !3756
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3768
  store i8 0, ptr %8, align 1, !dbg !3769, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %4, metadata !3716, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()), !dbg !3770
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3772
  ret ptr %4, !dbg !3773
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3774 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3776, metadata !DIExpression()), !dbg !3777
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3778
  %3 = add i64 %2, 1, !dbg !3779
  call void @llvm.dbg.value(metadata ptr %0, metadata !3705, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 %3, metadata !3706, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 %3, metadata !3396, metadata !DIExpression()), !dbg !3782
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3784
  call void @llvm.dbg.value(metadata ptr %4, metadata !3372, metadata !DIExpression()), !dbg !3785
  %5 = icmp eq ptr %4, null, !dbg !3787
  br i1 %5, label %6, label %7, !dbg !3788

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3789
  unreachable, !dbg !3789

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3716, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %3, metadata !3723, metadata !DIExpression()), !dbg !3790
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3792
  ret ptr %4, !dbg !3793
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3794 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3799, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3796, metadata !DIExpression()), !dbg !3800
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.122, ptr noundef nonnull @.str.2.123, i32 noundef 5) #37, !dbg !3799
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.124, ptr noundef %2) #37, !dbg !3799
  %3 = icmp eq i32 %1, 0, !dbg !3799
  tail call void @llvm.assume(i1 %3), !dbg !3799
  tail call void @abort() #39, !dbg !3801
  unreachable, !dbg !3801
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3802 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3840, metadata !DIExpression()), !dbg !3845
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3841, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3845
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3847, metadata !DIExpression()), !dbg !3850
  %3 = load i32, ptr %0, align 8, !dbg !3852, !tbaa !3853
  %4 = and i32 %3, 32, !dbg !3854
  %5 = icmp eq i32 %4, 0, !dbg !3854
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3843, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3845
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3855
  %7 = icmp eq i32 %6, 0, !dbg !3856
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3845
  br i1 %5, label %8, label %18, !dbg !3857

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3859
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3841, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3845
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3860
  %11 = xor i1 %7, true, !dbg !3860
  %12 = sext i1 %11 to i32, !dbg !3860
  br i1 %10, label %21, label %13, !dbg !3860

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3861
  %15 = load i32, ptr %14, align 4, !dbg !3861, !tbaa !863
  %16 = icmp ne i32 %15, 9, !dbg !3862
  %17 = sext i1 %16 to i32, !dbg !3863
  br label %21, !dbg !3863

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3864

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3866
  store i32 0, ptr %20, align 4, !dbg !3868, !tbaa !863
  br label %21, !dbg !3866

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3845
  ret i32 %22, !dbg !3869
}

; Function Attrs: nounwind
declare !dbg !3870 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3874 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3912, metadata !DIExpression()), !dbg !3916
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3913, metadata !DIExpression()), !dbg !3916
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3917
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3914, metadata !DIExpression()), !dbg !3916
  %3 = icmp slt i32 %2, 0, !dbg !3918
  br i1 %3, label %4, label %6, !dbg !3920

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3921
  br label %24, !dbg !3922

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3923
  %8 = icmp eq i32 %7, 0, !dbg !3923
  br i1 %8, label %13, label %9, !dbg !3925

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3926
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3927
  %12 = icmp eq i64 %11, -1, !dbg !3928
  br i1 %12, label %16, label %13, !dbg !3929

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3930
  %15 = icmp eq i32 %14, 0, !dbg !3930
  br i1 %15, label %16, label %18, !dbg !3931

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3913, metadata !DIExpression()), !dbg !3916
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3916
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3915, metadata !DIExpression()), !dbg !3916
  br label %24, !dbg !3933

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3934
  %20 = load i32, ptr %19, align 4, !dbg !3934, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3913, metadata !DIExpression()), !dbg !3916
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3916
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3915, metadata !DIExpression()), !dbg !3916
  %22 = icmp eq i32 %20, 0, !dbg !3935
  br i1 %22, label %24, label %23, !dbg !3933

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3937, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3915, metadata !DIExpression()), !dbg !3916
  br label %24, !dbg !3939

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3916
  ret i32 %25, !dbg !3940
}

; Function Attrs: nofree nounwind
declare !dbg !3941 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3942 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3943 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3944 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3947 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3985, metadata !DIExpression()), !dbg !3986
  %2 = icmp eq ptr %0, null, !dbg !3987
  br i1 %2, label %6, label %3, !dbg !3989

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3990
  %5 = icmp eq i32 %4, 0, !dbg !3990
  br i1 %5, label %6, label %8, !dbg !3991

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3992
  br label %16, !dbg !3993

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !3999
  %9 = load i32, ptr %0, align 8, !dbg !4001, !tbaa !3853
  %10 = and i32 %9, 256, !dbg !4003
  %11 = icmp eq i32 %10, 0, !dbg !4003
  br i1 %11, label %14, label %12, !dbg !4004

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !4005
  br label %14, !dbg !4005

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4006
  br label %16, !dbg !4007

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3986
  ret i32 %17, !dbg !4008
}

; Function Attrs: nofree nounwind
declare !dbg !4009 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4010 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4049, metadata !DIExpression()), !dbg !4055
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4050, metadata !DIExpression()), !dbg !4055
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4051, metadata !DIExpression()), !dbg !4055
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4056
  %5 = load ptr, ptr %4, align 8, !dbg !4056, !tbaa !4057
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4058
  %7 = load ptr, ptr %6, align 8, !dbg !4058, !tbaa !4059
  %8 = icmp eq ptr %5, %7, !dbg !4060
  br i1 %8, label %9, label %27, !dbg !4061

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4062
  %11 = load ptr, ptr %10, align 8, !dbg !4062, !tbaa !1317
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4063
  %13 = load ptr, ptr %12, align 8, !dbg !4063, !tbaa !4064
  %14 = icmp eq ptr %11, %13, !dbg !4065
  br i1 %14, label %15, label %27, !dbg !4066

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4067
  %17 = load ptr, ptr %16, align 8, !dbg !4067, !tbaa !4068
  %18 = icmp eq ptr %17, null, !dbg !4069
  br i1 %18, label %19, label %27, !dbg !4070

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4071
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4072
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4052, metadata !DIExpression()), !dbg !4073
  %22 = icmp eq i64 %21, -1, !dbg !4074
  br i1 %22, label %29, label %23, !dbg !4076

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4077, !tbaa !3853
  %25 = and i32 %24, -17, !dbg !4077
  store i32 %25, ptr %0, align 8, !dbg !4077, !tbaa !3853
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4078
  store i64 %21, ptr %26, align 8, !dbg !4079, !tbaa !4080
  br label %29, !dbg !4081

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4082
  br label %29, !dbg !4083

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4055
  ret i32 %30, !dbg !4084
}

; Function Attrs: nofree nounwind
declare !dbg !4085 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4088 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4093, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4094, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4095, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4096, metadata !DIExpression()), !dbg !4098
  %5 = icmp eq ptr %1, null, !dbg !4099
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4101
  %7 = select i1 %5, ptr @.str.135, ptr %1, !dbg !4101
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4101
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4095, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4094, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4093, metadata !DIExpression()), !dbg !4098
  %9 = icmp eq ptr %3, null, !dbg !4102
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4104
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4096, metadata !DIExpression()), !dbg !4098
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !4105
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4097, metadata !DIExpression()), !dbg !4098
  %12 = icmp ult i64 %11, -3, !dbg !4106
  br i1 %12, label %13, label %17, !dbg !4108

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !4109
  %15 = icmp eq i32 %14, 0, !dbg !4109
  br i1 %15, label %16, label %29, !dbg !4110

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4111, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata ptr %10, metadata !4118, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i64 8, metadata !4122, metadata !DIExpression()), !dbg !4123
  store i64 0, ptr %10, align 1, !dbg !4125
  br label %29, !dbg !4126

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4127
  br i1 %18, label %19, label %20, !dbg !4129

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4130
  unreachable, !dbg !4130

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4131

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !4133
  br i1 %23, label %29, label %24, !dbg !4134

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4135
  br i1 %25, label %29, label %26, !dbg !4138

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4139, !tbaa !872
  %28 = zext i8 %27 to i32, !dbg !4140
  store i32 %28, ptr %6, align 4, !dbg !4141, !tbaa !863
  br label %29, !dbg !4142

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4098
  ret i64 %30, !dbg !4143
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4144 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4150 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4152, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4153, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4154, metadata !DIExpression()), !dbg !4156
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4157
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4155, metadata !DIExpression()), !dbg !4156
  br i1 %5, label %6, label %8, !dbg !4159

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4160
  store i32 12, ptr %7, align 4, !dbg !4162, !tbaa !863
  br label %12, !dbg !4163

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4155, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata ptr %0, metadata !4164, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i64 %9, metadata !4167, metadata !DIExpression()), !dbg !4168
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4170
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4171
  br label %12, !dbg !4172

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4156
  ret ptr %13, !dbg !4173
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4174 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4183
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4179, metadata !DIExpression(), metadata !4183, metadata ptr %2, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4178, metadata !DIExpression()), !dbg !4184
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4185
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4186
  %4 = icmp eq i32 %3, 0, !dbg !4186
  br i1 %4, label %5, label %12, !dbg !4188

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4189, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata !830, metadata !4192, metadata !DIExpression()), !dbg !4193
  %6 = load i16, ptr %2, align 16, !dbg !4196
  %7 = icmp eq i16 %6, 67, !dbg !4196
  br i1 %7, label %11, label %8, !dbg !4197

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4189, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata ptr @.str.1.140, metadata !4192, metadata !DIExpression()), !dbg !4198
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.140, i64 6), !dbg !4200
  %10 = icmp eq i32 %9, 0, !dbg !4201
  br i1 %10, label %11, label %12, !dbg !4202

11:                                               ; preds = %8, %5
  br label %12, !dbg !4203

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4184
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4204
  ret i1 %13, !dbg !4204
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4205 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4209, metadata !DIExpression()), !dbg !4212
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4210, metadata !DIExpression()), !dbg !4212
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4211, metadata !DIExpression()), !dbg !4212
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4213
  ret i32 %4, !dbg !4214
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4215 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4219, metadata !DIExpression()), !dbg !4220
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4221
  ret ptr %2, !dbg !4222
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4223 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4225, metadata !DIExpression()), !dbg !4227
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4228
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4226, metadata !DIExpression()), !dbg !4227
  ret ptr %2, !dbg !4229
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4230 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4232, metadata !DIExpression()), !dbg !4239
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4233, metadata !DIExpression()), !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4234, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i32 %0, metadata !4225, metadata !DIExpression()), !dbg !4240
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4242
  call void @llvm.dbg.value(metadata ptr %4, metadata !4226, metadata !DIExpression()), !dbg !4240
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4235, metadata !DIExpression()), !dbg !4239
  %5 = icmp eq ptr %4, null, !dbg !4243
  br i1 %5, label %6, label %9, !dbg !4244

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4245
  br i1 %7, label %19, label %8, !dbg !4248

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4249, !tbaa !872
  br label %19, !dbg !4250

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4251
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4236, metadata !DIExpression()), !dbg !4252
  %11 = icmp ult i64 %10, %2, !dbg !4253
  br i1 %11, label %12, label %14, !dbg !4255

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4256
  call void @llvm.dbg.value(metadata ptr %1, metadata !4258, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata ptr %4, metadata !4261, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i64 %13, metadata !4262, metadata !DIExpression()), !dbg !4263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4265
  br label %19, !dbg !4266

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4267
  br i1 %15, label %19, label %16, !dbg !4270

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4271
  call void @llvm.dbg.value(metadata ptr %1, metadata !4258, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %4, metadata !4261, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %17, metadata !4262, metadata !DIExpression()), !dbg !4273
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4275
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4276
  store i8 0, ptr %18, align 1, !dbg !4277, !tbaa !872
  br label %19, !dbg !4278

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4279
  ret i32 %20, !dbg !4280
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }
attributes #45 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!66, !702, !374, !378, !393, !670, !704, !706, !444, !458, !506, !715, !662, !722, !757, !759, !761, !763, !765, !686, !767, !769, !773, !775}
!llvm.ident = !{!777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777, !777}
!llvm.module.flags = !{!778, !779, !780, !781, !782, !783, !784}

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
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/mkfifo.o -MD -MP -MF src/.deps/mkfifo.Tpo -c src/mkfifo.c -o src/.mkfifo.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !104, globals: !114, splitDebugInlining: false, nameTableKind: None)
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
!392 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !393, file: !394, line: 66, type: !439, isLocal: false, isDefinition: true)
!393 = distinct !DICompileUnit(language: DW_LANG_C11, file: !394, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, globals: !396, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!395 = !{!106, !113}
!396 = !{!397, !399, !418, !420, !422, !424, !391, !426, !428, !430, !432, !437}
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !394, line: 272, type: !244, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "old_file_name", scope: !401, file: !394, line: 304, type: !111, isLocal: true, isDefinition: true)
!401 = distinct !DISubprogram(name: "verror_at_line", scope: !394, file: !394, line: 298, type: !402, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !411)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !70, !70, !111, !76, !111, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !406)
!406 = !{!407, !408, !409, !410}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !405, file: !394, baseType: !76, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !405, file: !394, baseType: !76, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !405, file: !394, baseType: !106, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !405, file: !394, baseType: !106, size: 64, offset: 128)
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DILocalVariable(name: "status", arg: 1, scope: !401, file: !394, line: 298, type: !70)
!413 = !DILocalVariable(name: "errnum", arg: 2, scope: !401, file: !394, line: 298, type: !70)
!414 = !DILocalVariable(name: "file_name", arg: 3, scope: !401, file: !394, line: 298, type: !111)
!415 = !DILocalVariable(name: "line_number", arg: 4, scope: !401, file: !394, line: 298, type: !76)
!416 = !DILocalVariable(name: "message", arg: 5, scope: !401, file: !394, line: 298, type: !111)
!417 = !DILocalVariable(name: "args", arg: 6, scope: !401, file: !394, line: 298, type: !404)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "old_line_number", scope: !401, file: !394, line: 305, type: !76, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !394, line: 338, type: !61, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !394, line: 346, type: !280, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !394, line: 346, type: !258, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "error_message_count", scope: !393, file: !394, line: 69, type: !76, isLocal: false, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !393, file: !394, line: 295, type: !70, isLocal: false, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !394, line: 208, type: !19, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !394, line: 208, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 21)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !394, line: 214, type: !244, isLocal: true, isDefinition: true)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null}
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "program_name", scope: !444, file: !445, line: 31, type: !111, isLocal: false, isDefinition: true)
!444 = distinct !DICompileUnit(language: DW_LANG_C11, file: !445, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !446, globals: !447, splitDebugInlining: false, nameTableKind: None)
!445 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!446 = !{!106, !105}
!447 = !{!442, !448, !450}
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !445, line: 46, type: !280, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !445, line: 49, type: !61, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "utf07FF", scope: !454, file: !455, line: 46, type: !482, isLocal: true, isDefinition: true)
!454 = distinct !DISubprogram(name: "proper_name_lite", scope: !455, file: !455, line: 38, type: !456, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !460)
!455 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!456 = !DISubroutineType(types: !457)
!457 = !{!111, !111, !111}
!458 = distinct !DICompileUnit(language: DW_LANG_C11, file: !455, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !459, splitDebugInlining: false, nameTableKind: None)
!459 = !{!452}
!460 = !{!461, !462, !463, !464, !469}
!461 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !454, file: !455, line: 38, type: !111)
!462 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !454, file: !455, line: 38, type: !111)
!463 = !DILocalVariable(name: "translation", scope: !454, file: !455, line: 40, type: !111)
!464 = !DILocalVariable(name: "w", scope: !454, file: !455, line: 47, type: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !466, line: 37, baseType: !467)
!466 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !211, line: 57, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !211, line: 42, baseType: !76)
!469 = !DILocalVariable(name: "mbs", scope: !454, file: !455, line: 48, type: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !471, line: 6, baseType: !472)
!471 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !473, line: 21, baseType: !474)
!473 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 13, size: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !474, file: !473, line: 15, baseType: !70, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !474, file: !473, line: 20, baseType: !478, size: 32, offset: 32)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !473, line: 16, size: 32, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !478, file: !473, line: 18, baseType: !76, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !478, file: !473, line: 19, baseType: !61, size: 32)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 16, elements: !259)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !485, line: 78, type: !280, isLocal: true, isDefinition: true)
!485 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !485, line: 79, type: !253, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !485, line: 80, type: !136, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !485, line: 81, type: !136, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !485, line: 82, type: !233, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !485, line: 83, type: !258, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !485, line: 84, type: !280, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !485, line: 85, type: !19, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !485, line: 86, type: !19, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !485, line: 87, type: !280, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !506, file: !485, line: 76, type: !580, isLocal: false, isDefinition: true)
!506 = distinct !DICompileUnit(language: DW_LANG_C11, file: !485, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !507, retainedTypes: !515, globals: !516, splitDebugInlining: false, nameTableKind: None)
!507 = !{!508, !510, !89}
!508 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !509, line: 42, baseType: !76, size: 32, elements: !77)
!509 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!510 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !509, line: 254, baseType: !76, size: 32, elements: !511)
!511 = !{!512, !513, !514}
!512 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!513 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!514 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!515 = !{!106, !70, !107, !108}
!516 = !{!483, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !517, !521, !531, !533, !538, !540, !542, !544, !546, !569, !576, !578}
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !506, file: !485, line: 92, type: !519, isLocal: false, isDefinition: true)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 320, elements: !52)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !506, file: !485, line: 1040, type: !523, isLocal: false, isDefinition: true)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !485, line: 56, size: 448, elements: !524)
!524 = !{!525, !526, !527, !529, !530}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !523, file: !485, line: 59, baseType: !508, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !485, line: 62, baseType: !70, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !523, file: !485, line: 66, baseType: !528, size: 256, offset: 64)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !281)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !523, file: !485, line: 69, baseType: !111, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !523, file: !485, line: 72, baseType: !111, size: 64, offset: 384)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !506, file: !485, line: 107, type: !523, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "slot0", scope: !506, file: !485, line: 831, type: !535, isLocal: true, isDefinition: true)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 256)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !485, line: 321, type: !258, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !485, line: 357, type: !258, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !485, line: 358, type: !258, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !485, line: 199, type: !19, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "quote", scope: !548, file: !485, line: 228, type: !567, isLocal: true, isDefinition: true)
!548 = distinct !DISubprogram(name: "gettext_quote", scope: !485, file: !485, line: 197, type: !549, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!111, !111, !508}
!551 = !{!552, !553, !554, !555, !556}
!552 = !DILocalVariable(name: "msgid", arg: 1, scope: !548, file: !485, line: 197, type: !111)
!553 = !DILocalVariable(name: "s", arg: 2, scope: !548, file: !485, line: 197, type: !508)
!554 = !DILocalVariable(name: "translation", scope: !548, file: !485, line: 199, type: !111)
!555 = !DILocalVariable(name: "w", scope: !548, file: !485, line: 229, type: !465)
!556 = !DILocalVariable(name: "mbs", scope: !548, file: !485, line: 230, type: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !471, line: 6, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !473, line: 21, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 13, size: 64, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !559, file: !473, line: 15, baseType: !70, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !559, file: !473, line: 20, baseType: !563, size: 32, offset: 32)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !473, line: 16, size: 32, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !563, file: !473, line: 18, baseType: !76, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !563, file: !473, line: 19, baseType: !61, size: 32)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !568)
!568 = !{!260, !63}
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "slotvec", scope: !506, file: !485, line: 834, type: !571, isLocal: true, isDefinition: true)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !485, line: 823, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !572, file: !485, line: 825, baseType: !108, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !572, file: !485, line: 826, baseType: !105, size: 64, offset: 64)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "nslots", scope: !506, file: !485, line: 832, type: !70, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "slotvec0", scope: !506, file: !485, line: 833, type: !572, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 704, elements: !582)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!582 = !{!583}
!583 = !DISubrange(count: 11)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !586, line: 67, type: !348, isLocal: true, isDefinition: true)
!586 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !586, line: 69, type: !19, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !586, line: 83, type: !19, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !586, line: 83, type: !61, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !586, line: 85, type: !258, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !586, line: 88, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 171)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !586, line: 88, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 34)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !586, line: 105, type: !127, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !586, line: 109, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 23)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !586, line: 113, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 28)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !586, line: 120, type: !619, isLocal: true, isDefinition: true)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 32)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !586, line: 127, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 36)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !586, line: 134, type: !302, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !586, line: 142, type: !141, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !586, line: 150, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 48)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !586, line: 159, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 52)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !586, line: 170, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 60)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !586, line: 248, type: !233, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !586, line: 248, type: !146, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !586, line: 254, type: !233, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !586, line: 254, type: !122, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !586, line: 254, type: !302, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !586, line: 259, type: !3, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !586, line: 259, type: !151, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !662, file: !663, line: 26, type: !665, isLocal: false, isDefinition: true)
!662 = distinct !DICompileUnit(language: DW_LANG_C11, file: !663, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !664, splitDebugInlining: false, nameTableKind: None)
!663 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!664 = !{!660}
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 376, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 47)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(name: "exit_failure", scope: !670, file: !671, line: 24, type: !673, isLocal: false, isDefinition: true)
!670 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !672, splitDebugInlining: false, nameTableKind: None)
!671 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!672 = !{!668}
!673 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !676, line: 34, type: !267, isLocal: true, isDefinition: true)
!676 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !676, line: 34, type: !19, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !676, line: 34, type: !297, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !683, line: 108, type: !46, isLocal: true, isDefinition: true)
!683 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "internal_state", scope: !686, file: !683, line: 97, type: !689, isLocal: true, isDefinition: true)
!686 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !687, globals: !688, splitDebugInlining: false, nameTableKind: None)
!687 = !{!106, !108, !113}
!688 = !{!681, !684}
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !471, line: 6, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !473, line: 21, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 13, size: 64, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !691, file: !473, line: 15, baseType: !70, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !691, file: !473, line: 20, baseType: !695, size: 32, offset: 32)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !473, line: 16, size: 32, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !695, file: !473, line: 18, baseType: !76, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !695, file: !473, line: 19, baseType: !61, size: 32)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !701, line: 35, type: !253, isLocal: true, isDefinition: true)
!701 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/selinux.o -MD -MP -MF src/.deps/selinux.Tpo -c src/selinux.c -o src/.selinux.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!704 = distinct !DICompileUnit(language: DW_LANG_C11, file: !705, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!705 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !707, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-modechange.o -MD -MP -MF lib/.deps/libcoreutils_a-modechange.Tpo -c lib/modechange.c -o lib/.libcoreutils_a-modechange.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !708, splitDebugInlining: false, nameTableKind: None)
!707 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!708 = !{!709}
!709 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !707, line: 78, baseType: !76, size: 32, elements: !710)
!710 = !{!711, !712, !713, !714}
!711 = !DIEnumerator(name: "MODE_DONE", value: 0)
!712 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!713 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!714 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !586, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !716, retainedTypes: !720, globals: !721, splitDebugInlining: false, nameTableKind: None)
!716 = !{!717}
!717 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !586, line: 40, baseType: !76, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!720 = !{!106}
!721 = !{!584, !587, !589, !591, !593, !595, !600, !605, !607, !612, !617, !622, !627, !629, !631, !636, !641, !646, !648, !650, !652, !654, !656, !658}
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !724, retainedTypes: !756, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!724 = !{!725, !737}
!725 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !726, file: !723, line: 188, baseType: !76, size: 32, elements: !735)
!726 = distinct !DISubprogram(name: "x2nrealloc", scope: !723, file: !723, line: 176, type: !727, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !730)
!727 = !DISubroutineType(types: !728)
!728 = !{!106, !106, !729, !108}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!730 = !{!731, !732, !733, !734}
!731 = !DILocalVariable(name: "p", arg: 1, scope: !726, file: !723, line: 176, type: !106)
!732 = !DILocalVariable(name: "pn", arg: 2, scope: !726, file: !723, line: 176, type: !729)
!733 = !DILocalVariable(name: "s", arg: 3, scope: !726, file: !723, line: 176, type: !108)
!734 = !DILocalVariable(name: "n", scope: !726, file: !723, line: 178, type: !108)
!735 = !{!736}
!736 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!737 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !738, file: !723, line: 228, baseType: !76, size: 32, elements: !735)
!738 = distinct !DISubprogram(name: "xpalloc", scope: !723, file: !723, line: 223, type: !739, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !746)
!739 = !DISubroutineType(types: !740)
!740 = !{!106, !106, !741, !742, !744, !742}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !743, line: 130, baseType: !744)
!743 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !745, line: 18, baseType: !212)
!745 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755}
!747 = !DILocalVariable(name: "pa", arg: 1, scope: !738, file: !723, line: 223, type: !106)
!748 = !DILocalVariable(name: "pn", arg: 2, scope: !738, file: !723, line: 223, type: !741)
!749 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !738, file: !723, line: 223, type: !742)
!750 = !DILocalVariable(name: "n_max", arg: 4, scope: !738, file: !723, line: 223, type: !744)
!751 = !DILocalVariable(name: "s", arg: 5, scope: !738, file: !723, line: 223, type: !742)
!752 = !DILocalVariable(name: "n0", scope: !738, file: !723, line: 230, type: !742)
!753 = !DILocalVariable(name: "n", scope: !738, file: !723, line: 237, type: !742)
!754 = !DILocalVariable(name: "nbytes", scope: !738, file: !723, line: 248, type: !742)
!755 = !DILocalVariable(name: "adjusted_nbytes", scope: !738, file: !723, line: 252, type: !742)
!756 = !{!105, !106}
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !758, splitDebugInlining: false, nameTableKind: None)
!758 = !{!674, !677, !679}
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !720, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !720, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !720, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !770, splitDebugInlining: false, nameTableKind: None)
!770 = !{!771, !699}
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !701, line: 35, type: !258, isLocal: true, isDefinition: true)
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !720, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!777 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!778 = !{i32 7, !"Dwarf Version", i32 5}
!779 = !{i32 2, !"Debug Info Version", i32 3}
!780 = !{i32 1, !"wchar_size", i32 4}
!781 = !{i32 8, !"PIC Level", i32 2}
!782 = !{i32 7, !"PIE Level", i32 2}
!783 = !{i32 7, !"uwtable", i32 2}
!784 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!785 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 46, type: !786, scopeLine: 47, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !70}
!788 = !{!789}
!789 = !DILocalVariable(name: "status", arg: 1, scope: !785, file: !2, line: 46, type: !70)
!790 = !DILocation(line: 0, scope: !785)
!791 = !DILocation(line: 48, column: 14, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !2, line: 48, column: 7)
!793 = !DILocation(line: 48, column: 7, scope: !785)
!794 = !DILocation(line: 49, column: 5, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !2, line: 49, column: 5)
!796 = !{!797, !797, i64 0}
!797 = !{!"any pointer", !798, i64 0}
!798 = !{!"omnipotent char", !799, i64 0}
!799 = !{!"Simple C/C++ TBAA"}
!800 = !DILocation(line: 52, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !792, file: !2, line: 51, column: 5)
!802 = !DILocation(line: 53, column: 7, scope: !801)
!803 = !DILocation(line: 736, column: 3, scope: !804, inlinedAt: !805)
!804 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !69, file: !69, line: 734, type: !440, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!805 = distinct !DILocation(line: 57, column: 7, scope: !801)
!806 = !DILocation(line: 59, column: 7, scope: !801)
!807 = !DILocation(line: 63, column: 7, scope: !801)
!808 = !DILocation(line: 67, column: 7, scope: !801)
!809 = !DILocation(line: 72, column: 7, scope: !801)
!810 = !DILocation(line: 73, column: 7, scope: !801)
!811 = !DILocalVariable(name: "program", arg: 1, scope: !812, file: !69, line: 836, type: !111)
!812 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !813, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !111}
!815 = !{!811, !816, !823, !824, !826, !827}
!816 = !DILocalVariable(name: "infomap", scope: !812, file: !69, line: 838, type: !817)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 896, elements: !20)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !812, file: !69, line: 838, size: 128, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !819, file: !69, line: 838, baseType: !111, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !819, file: !69, line: 838, baseType: !111, size: 64, offset: 64)
!823 = !DILocalVariable(name: "node", scope: !812, file: !69, line: 848, type: !111)
!824 = !DILocalVariable(name: "map_prog", scope: !812, file: !69, line: 849, type: !825)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!826 = !DILocalVariable(name: "lc_messages", scope: !812, file: !69, line: 861, type: !111)
!827 = !DILocalVariable(name: "url_program", scope: !812, file: !69, line: 874, type: !111)
!828 = !DILocation(line: 0, scope: !812, inlinedAt: !829)
!829 = distinct !DILocation(line: 74, column: 7, scope: !801)
!830 = !{}
!831 = !DILocation(line: 857, column: 3, scope: !812, inlinedAt: !829)
!832 = !DILocation(line: 861, column: 29, scope: !812, inlinedAt: !829)
!833 = !DILocation(line: 862, column: 7, scope: !834, inlinedAt: !829)
!834 = distinct !DILexicalBlock(scope: !812, file: !69, line: 862, column: 7)
!835 = !DILocation(line: 862, column: 19, scope: !834, inlinedAt: !829)
!836 = !DILocation(line: 862, column: 22, scope: !834, inlinedAt: !829)
!837 = !DILocation(line: 862, column: 7, scope: !812, inlinedAt: !829)
!838 = !DILocation(line: 868, column: 7, scope: !839, inlinedAt: !829)
!839 = distinct !DILexicalBlock(scope: !834, file: !69, line: 863, column: 5)
!840 = !DILocation(line: 870, column: 5, scope: !839, inlinedAt: !829)
!841 = !DILocation(line: 875, column: 3, scope: !812, inlinedAt: !829)
!842 = !DILocation(line: 877, column: 3, scope: !812, inlinedAt: !829)
!843 = !DILocation(line: 76, column: 3, scope: !785)
!844 = !DISubprogram(name: "dcgettext", scope: !845, file: !845, line: 51, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!846 = !DISubroutineType(types: !847)
!847 = !{!105, !111, !111, !70}
!848 = !DISubprogram(name: "__fprintf_chk", scope: !849, file: !849, line: 93, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!850 = !DISubroutineType(types: !851)
!851 = !{!70, !852, !70, !853, null}
!852 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!853 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!854 = !DISubprogram(name: "__printf_chk", scope: !849, file: !849, line: 95, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!855 = !DISubroutineType(types: !856)
!856 = !{!70, !70, !853, null}
!857 = !DISubprogram(name: "fputs_unlocked", scope: !858, file: !858, line: 691, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!858 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!859 = !DISubroutineType(types: !860)
!860 = !{!70, !853, !852}
!861 = !DILocation(line: 0, scope: !161)
!862 = !DILocation(line: 581, column: 7, scope: !169)
!863 = !{!864, !864, i64 0}
!864 = !{!"int", !798, i64 0}
!865 = !DILocation(line: 581, column: 19, scope: !169)
!866 = !DILocation(line: 581, column: 7, scope: !161)
!867 = !DILocation(line: 585, column: 26, scope: !168)
!868 = !DILocation(line: 0, scope: !168)
!869 = !DILocation(line: 586, column: 23, scope: !168)
!870 = !DILocation(line: 586, column: 28, scope: !168)
!871 = !DILocation(line: 586, column: 32, scope: !168)
!872 = !{!798, !798, i64 0}
!873 = !DILocation(line: 586, column: 38, scope: !168)
!874 = !DILocalVariable(name: "__s1", arg: 1, scope: !875, file: !876, line: 1359, type: !111)
!875 = distinct !DISubprogram(name: "streq", scope: !876, file: !876, line: 1359, type: !877, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !879)
!876 = !DIFile(filename: "./lib/string.h", directory: "/src")
!877 = !DISubroutineType(types: !878)
!878 = !{!171, !111, !111}
!879 = !{!874, !880}
!880 = !DILocalVariable(name: "__s2", arg: 2, scope: !875, file: !876, line: 1359, type: !111)
!881 = !DILocation(line: 0, scope: !875, inlinedAt: !882)
!882 = distinct !DILocation(line: 586, column: 41, scope: !168)
!883 = !DILocation(line: 1361, column: 11, scope: !875, inlinedAt: !882)
!884 = !DILocation(line: 1361, column: 10, scope: !875, inlinedAt: !882)
!885 = !DILocation(line: 586, column: 19, scope: !168)
!886 = !DILocation(line: 587, column: 5, scope: !168)
!887 = !DILocation(line: 588, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !161, file: !69, line: 588, column: 7)
!889 = !DILocation(line: 588, column: 7, scope: !161)
!890 = !DILocation(line: 590, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !69, line: 589, column: 5)
!892 = !DILocation(line: 591, column: 7, scope: !891)
!893 = !DILocation(line: 595, column: 37, scope: !161)
!894 = !DILocation(line: 595, column: 35, scope: !161)
!895 = !DILocation(line: 596, column: 29, scope: !161)
!896 = !DILocation(line: 597, column: 8, scope: !177)
!897 = !DILocation(line: 597, column: 7, scope: !161)
!898 = !DILocation(line: 604, column: 24, scope: !176)
!899 = !DILocation(line: 604, column: 12, scope: !177)
!900 = !DILocation(line: 0, scope: !175)
!901 = !DILocation(line: 610, column: 16, scope: !175)
!902 = !DILocation(line: 610, column: 7, scope: !175)
!903 = !DILocation(line: 611, column: 21, scope: !175)
!904 = !{!905, !905, i64 0}
!905 = !{!"short", !798, i64 0}
!906 = !DILocation(line: 611, column: 19, scope: !175)
!907 = !DILocation(line: 611, column: 16, scope: !175)
!908 = !DILocation(line: 610, column: 30, scope: !175)
!909 = distinct !{!909, !902, !903, !910}
!910 = !{!"llvm.loop.mustprogress"}
!911 = !DILocation(line: 612, column: 18, scope: !912)
!912 = distinct !DILexicalBlock(scope: !175, file: !69, line: 612, column: 11)
!913 = !DILocation(line: 612, column: 11, scope: !175)
!914 = !DILocation(line: 620, column: 23, scope: !161)
!915 = !DILocation(line: 625, column: 39, scope: !161)
!916 = !DILocation(line: 626, column: 3, scope: !161)
!917 = !DILocation(line: 626, column: 10, scope: !161)
!918 = !DILocation(line: 626, column: 21, scope: !161)
!919 = !DILocation(line: 628, column: 44, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !69, line: 628, column: 11)
!921 = distinct !DILexicalBlock(scope: !161, file: !69, line: 627, column: 5)
!922 = !DILocation(line: 628, column: 32, scope: !920)
!923 = !DILocation(line: 628, column: 49, scope: !920)
!924 = !DILocation(line: 628, column: 11, scope: !921)
!925 = !DILocation(line: 630, column: 11, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !69, line: 630, column: 11)
!927 = !DILocation(line: 630, column: 11, scope: !921)
!928 = !DILocation(line: 632, column: 26, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !69, line: 632, column: 15)
!930 = distinct !DILexicalBlock(scope: !926, file: !69, line: 631, column: 9)
!931 = !DILocation(line: 632, column: 34, scope: !929)
!932 = !DILocation(line: 632, column: 37, scope: !929)
!933 = !DILocation(line: 632, column: 15, scope: !930)
!934 = !DILocation(line: 636, column: 16, scope: !935)
!935 = distinct !DILexicalBlock(scope: !930, file: !69, line: 636, column: 15)
!936 = !DILocation(line: 636, column: 29, scope: !935)
!937 = !DILocation(line: 640, column: 16, scope: !921)
!938 = distinct !{!938, !916, !939, !910}
!939 = !DILocation(line: 641, column: 5, scope: !161)
!940 = !DILocation(line: 644, column: 3, scope: !161)
!941 = !DILocation(line: 0, scope: !875, inlinedAt: !942)
!942 = distinct !DILocation(line: 648, column: 31, scope: !161)
!943 = !DILocation(line: 0, scope: !875, inlinedAt: !944)
!944 = distinct !DILocation(line: 649, column: 31, scope: !161)
!945 = !DILocation(line: 0, scope: !875, inlinedAt: !946)
!946 = distinct !DILocation(line: 650, column: 31, scope: !161)
!947 = !DILocation(line: 0, scope: !875, inlinedAt: !948)
!948 = distinct !DILocation(line: 651, column: 31, scope: !161)
!949 = !DILocation(line: 0, scope: !875, inlinedAt: !950)
!950 = distinct !DILocation(line: 652, column: 31, scope: !161)
!951 = !DILocation(line: 0, scope: !875, inlinedAt: !952)
!952 = distinct !DILocation(line: 653, column: 31, scope: !161)
!953 = !DILocation(line: 0, scope: !875, inlinedAt: !954)
!954 = distinct !DILocation(line: 654, column: 31, scope: !161)
!955 = !DILocation(line: 0, scope: !875, inlinedAt: !956)
!956 = distinct !DILocation(line: 655, column: 31, scope: !161)
!957 = !DILocation(line: 0, scope: !875, inlinedAt: !958)
!958 = distinct !DILocation(line: 656, column: 31, scope: !161)
!959 = !DILocation(line: 0, scope: !875, inlinedAt: !960)
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
!978 = !DISubprogram(name: "setlocale", scope: !979, file: !979, line: 122, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!979 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!980 = !DISubroutineType(types: !981)
!981 = !{!105, !70, !111}
!982 = !DISubprogram(name: "strncmp", scope: !983, file: !983, line: 159, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!984 = !DISubroutineType(types: !985)
!985 = !{!70, !111, !111, !108}
!986 = !DISubprogram(name: "exit", scope: !987, file: !987, line: 624, type: !786, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!987 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!988 = !DISubprogram(name: "getenv", scope: !987, file: !987, line: 641, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubroutineType(types: !990)
!990 = !{!105, !111}
!991 = !DISubprogram(name: "strcmp", scope: !983, file: !983, line: 156, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DISubroutineType(types: !993)
!993 = !{!70, !111, !111}
!994 = !DISubprogram(name: "strspn", scope: !983, file: !983, line: 297, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DISubroutineType(types: !996)
!996 = !{!110, !111, !111}
!997 = !DISubprogram(name: "strchr", scope: !983, file: !983, line: 246, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DISubroutineType(types: !999)
!999 = !{!105, !111, !70}
!1000 = !DISubprogram(name: "__ctype_b_loc", scope: !90, file: !90, line: 79, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1006 = !DISubprogram(name: "strcspn", scope: !983, file: !983, line: 293, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1007 = !DISubprogram(name: "fwrite_unlocked", scope: !858, file: !858, line: 704, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!108, !1010, !108, !108, !852}
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
!1032 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
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
!1055 = distinct !{!1055, !1049, !1056, !910}
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
!1111 = distinct !{!1111, !1095, !1112, !910}
!1112 = !DILocation(line: 185, column: 5, scope: !1092)
!1113 = !DILocation(line: 187, column: 3, scope: !1013)
!1114 = !DISubprogram(name: "bindtextdomain", scope: !845, file: !845, line: 86, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!105, !111, !111}
!1117 = !DISubprogram(name: "textdomain", scope: !845, file: !845, line: 82, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1118 = !DISubprogram(name: "atexit", scope: !987, file: !987, line: 602, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!70, !439}
!1121 = !DISubprogram(name: "getopt_long", scope: !362, file: !362, line: 66, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!70, !70, !1124, !111, !1126, !367}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1127 = !DISubprogram(name: "umask", scope: !1128, file: !1128, line: 380, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!1033, !1033}
!1131 = !DISubprogram(name: "free", scope: !987, file: !987, line: 555, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !106}
!1134 = !DISubprogram(name: "mkfifo", scope: !1128, file: !1128, line: 418, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!70, !111, !1033}
!1137 = !DISubprogram(name: "lchmod", scope: !1128, file: !1128, line: 359, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DISubprogram(name: "__errno_location", scope: !1139, file: !1139, line: 37, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!367}
!1142 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !379, file: !379, line: 50, type: !813, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1143)
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
!1156 = !{!"_Bool", !798, i64 0}
!1157 = !DILocation(line: 90, column: 1, scope: !1148)
!1158 = distinct !DISubprogram(name: "close_stdout", scope: !379, file: !379, line: 116, type: !440, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1159)
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
!1191 = !DISubprogram(name: "_exit", scope: !1192, file: !1192, line: 624, type: !786, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
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
!1202 = !DILocation(line: 261, column: 3, scope: !1193)
!1203 = !DILocation(line: 265, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1193, file: !394, line: 265, column: 7)
!1205 = !DILocation(line: 265, column: 7, scope: !1193)
!1206 = !DILocation(line: 266, column: 5, scope: !1204)
!1207 = !DILocation(line: 272, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !394, line: 268, column: 5)
!1209 = !DILocation(line: 276, column: 3, scope: !1193)
!1210 = !DILocation(line: 282, column: 1, scope: !1193)
!1211 = distinct !DISubprogram(name: "flush_stdout", scope: !394, file: !394, line: 163, type: !440, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1212)
!1212 = !{!1213}
!1213 = !DILocalVariable(name: "stdout_fd", scope: !1211, file: !394, line: 166, type: !70)
!1214 = !DILocation(line: 0, scope: !1211)
!1215 = !DILocalVariable(name: "fd", arg: 1, scope: !1216, file: !394, line: 145, type: !70)
!1216 = distinct !DISubprogram(name: "is_open", scope: !394, file: !394, line: 145, type: !1217, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!70, !70}
!1219 = !{!1215}
!1220 = !DILocation(line: 0, scope: !1216, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 182, column: 25, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1211, file: !394, line: 182, column: 7)
!1223 = !DILocation(line: 157, column: 15, scope: !1216, inlinedAt: !1221)
!1224 = !DILocation(line: 157, column: 12, scope: !1216, inlinedAt: !1221)
!1225 = !DILocation(line: 182, column: 7, scope: !1211)
!1226 = !DILocation(line: 184, column: 5, scope: !1222)
!1227 = !DILocation(line: 185, column: 1, scope: !1211)
!1228 = distinct !DISubprogram(name: "error_tail", scope: !394, file: !394, line: 219, type: !1194, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1229)
!1229 = !{!1230, !1231, !1232, !1233}
!1230 = !DILocalVariable(name: "status", arg: 1, scope: !1228, file: !394, line: 219, type: !70)
!1231 = !DILocalVariable(name: "errnum", arg: 2, scope: !1228, file: !394, line: 219, type: !70)
!1232 = !DILocalVariable(name: "message", arg: 3, scope: !1228, file: !394, line: 219, type: !111)
!1233 = !DILocalVariable(name: "args", arg: 4, scope: !1228, file: !394, line: 219, type: !404)
!1234 = distinct !DIAssignID()
!1235 = !DILocation(line: 0, scope: !1228)
!1236 = !DILocation(line: 229, column: 13, scope: !1228)
!1237 = !DILocalVariable(name: "__stream", arg: 1, scope: !1238, file: !849, line: 132, type: !1241)
!1238 = distinct !DISubprogram(name: "vfprintf", scope: !849, file: !849, line: 132, type: !1239, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1276)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!70, !1241, !853, !404}
!1241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1244, file: !188, line: 51, baseType: !70, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1244, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1244, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1244, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1244, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1244, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1244, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1244, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1244, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1244, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1244, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1244, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1244, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1244, file: !188, line: 70, baseType: !1260, size: 64, offset: 832)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1244, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1244, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1244, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1244, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1244, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1244, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1244, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1244, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1244, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1244, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1244, file: !188, line: 93, baseType: !1260, size: 64, offset: 1344)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1244, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1244, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1244, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1244, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!1276 = !{!1237, !1277, !1278}
!1277 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1238, file: !849, line: 133, type: !853)
!1278 = !DILocalVariable(name: "__ap", arg: 3, scope: !1238, file: !849, line: 133, type: !404)
!1279 = !DILocation(line: 0, scope: !1238, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 229, column: 3, scope: !1228)
!1281 = !DILocation(line: 135, column: 10, scope: !1238, inlinedAt: !1280)
!1282 = !DILocation(line: 232, column: 3, scope: !1228)
!1283 = !DILocation(line: 233, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1228, file: !394, line: 233, column: 7)
!1285 = !DILocation(line: 233, column: 7, scope: !1228)
!1286 = !DILocalVariable(name: "errbuf", scope: !1287, file: !394, line: 193, type: !1291)
!1287 = distinct !DISubprogram(name: "print_errno_message", scope: !394, file: !394, line: 188, type: !786, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1288)
!1288 = !{!1289, !1290, !1286}
!1289 = !DILocalVariable(name: "errnum", arg: 1, scope: !1287, file: !394, line: 188, type: !70)
!1290 = !DILocalVariable(name: "s", scope: !1287, file: !394, line: 190, type: !111)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 1024)
!1294 = !DILocation(line: 0, scope: !1287, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 234, column: 5, scope: !1284)
!1296 = !DILocation(line: 193, column: 3, scope: !1287, inlinedAt: !1295)
!1297 = !DILocation(line: 195, column: 7, scope: !1287, inlinedAt: !1295)
!1298 = !DILocation(line: 207, column: 9, scope: !1299, inlinedAt: !1295)
!1299 = distinct !DILexicalBlock(scope: !1287, file: !394, line: 207, column: 7)
!1300 = !DILocation(line: 207, column: 7, scope: !1287, inlinedAt: !1295)
!1301 = !DILocation(line: 208, column: 9, scope: !1299, inlinedAt: !1295)
!1302 = !DILocation(line: 208, column: 5, scope: !1299, inlinedAt: !1295)
!1303 = !DILocation(line: 214, column: 3, scope: !1287, inlinedAt: !1295)
!1304 = !DILocation(line: 216, column: 1, scope: !1287, inlinedAt: !1295)
!1305 = !DILocation(line: 234, column: 5, scope: !1284)
!1306 = !DILocation(line: 238, column: 3, scope: !1228)
!1307 = !DILocalVariable(name: "__c", arg: 1, scope: !1308, file: !1309, line: 101, type: !70)
!1308 = distinct !DISubprogram(name: "putc_unlocked", scope: !1309, file: !1309, line: 101, type: !1310, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1312)
!1309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!70, !70, !1242}
!1312 = !{!1307, !1313}
!1313 = !DILocalVariable(name: "__stream", arg: 2, scope: !1308, file: !1309, line: 101, type: !1242)
!1314 = !DILocation(line: 0, scope: !1308, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 238, column: 3, scope: !1228)
!1316 = !DILocation(line: 103, column: 10, scope: !1308, inlinedAt: !1315)
!1317 = !{!1318, !797, i64 40}
!1318 = !{!"_IO_FILE", !864, i64 0, !797, i64 8, !797, i64 16, !797, i64 24, !797, i64 32, !797, i64 40, !797, i64 48, !797, i64 56, !797, i64 64, !797, i64 72, !797, i64 80, !797, i64 88, !797, i64 96, !797, i64 104, !864, i64 112, !864, i64 116, !1319, i64 120, !905, i64 128, !798, i64 130, !798, i64 131, !797, i64 136, !1319, i64 144, !797, i64 152, !797, i64 160, !797, i64 168, !797, i64 176, !1319, i64 184, !864, i64 192, !798, i64 196}
!1319 = !{!"long", !798, i64 0}
!1320 = !{!1318, !797, i64 48}
!1321 = !{!"branch_weights", i32 2000, i32 1}
!1322 = !DILocation(line: 240, column: 3, scope: !1228)
!1323 = !DILocation(line: 241, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1228, file: !394, line: 241, column: 7)
!1325 = !DILocation(line: 241, column: 7, scope: !1228)
!1326 = !DILocation(line: 242, column: 5, scope: !1324)
!1327 = !DILocation(line: 243, column: 1, scope: !1228)
!1328 = !DISubprogram(name: "__vfprintf_chk", scope: !849, file: !849, line: 96, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!70, !1241, !70, !853, !404}
!1331 = !DISubprogram(name: "strerror_r", scope: !983, file: !983, line: 444, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!105, !70, !105, !108}
!1334 = !DISubprogram(name: "__overflow", scope: !858, file: !858, line: 886, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!70, !1242, !70}
!1337 = !DISubprogram(name: "fflush_unlocked", scope: !858, file: !858, line: 239, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!70, !1242}
!1340 = !DISubprogram(name: "fcntl", scope: !1341, file: !1341, line: 149, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1341 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!70, !70, !70, null}
!1344 = distinct !DISubprogram(name: "error", scope: !394, file: !394, line: 285, type: !1345, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !70, !70, !111, null}
!1347 = !{!1348, !1349, !1350, !1351}
!1348 = !DILocalVariable(name: "status", arg: 1, scope: !1344, file: !394, line: 285, type: !70)
!1349 = !DILocalVariable(name: "errnum", arg: 2, scope: !1344, file: !394, line: 285, type: !70)
!1350 = !DILocalVariable(name: "message", arg: 3, scope: !1344, file: !394, line: 285, type: !111)
!1351 = !DILocalVariable(name: "ap", scope: !1344, file: !394, line: 287, type: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !858, line: 52, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1354, line: 12, baseType: !1355)
!1354 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !394, baseType: !1356)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 192, elements: !47)
!1357 = distinct !DIAssignID()
!1358 = !DILocation(line: 0, scope: !1344)
!1359 = !DILocation(line: 287, column: 3, scope: !1344)
!1360 = !DILocation(line: 288, column: 3, scope: !1344)
!1361 = !DILocation(line: 289, column: 3, scope: !1344)
!1362 = !DILocation(line: 290, column: 3, scope: !1344)
!1363 = !DILocation(line: 291, column: 1, scope: !1344)
!1364 = !DILocation(line: 0, scope: !401)
!1365 = !DILocation(line: 302, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !401, file: !394, line: 302, column: 7)
!1367 = !DILocation(line: 302, column: 7, scope: !401)
!1368 = !DILocation(line: 307, column: 11, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !394, line: 307, column: 11)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !394, line: 303, column: 5)
!1371 = !DILocation(line: 307, column: 27, scope: !1369)
!1372 = !DILocation(line: 308, column: 11, scope: !1369)
!1373 = !DILocation(line: 308, column: 28, scope: !1369)
!1374 = !DILocation(line: 308, column: 25, scope: !1369)
!1375 = !DILocation(line: 309, column: 15, scope: !1369)
!1376 = !DILocation(line: 309, column: 33, scope: !1369)
!1377 = !DILocation(line: 310, column: 19, scope: !1369)
!1378 = !DILocation(line: 311, column: 22, scope: !1369)
!1379 = !DILocation(line: 311, column: 56, scope: !1369)
!1380 = !DILocation(line: 307, column: 11, scope: !1370)
!1381 = !DILocation(line: 316, column: 21, scope: !1370)
!1382 = !DILocation(line: 317, column: 23, scope: !1370)
!1383 = !DILocation(line: 318, column: 5, scope: !1370)
!1384 = !DILocation(line: 327, column: 3, scope: !401)
!1385 = !DILocation(line: 331, column: 7, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !401, file: !394, line: 331, column: 7)
!1387 = !DILocation(line: 331, column: 7, scope: !401)
!1388 = !DILocation(line: 332, column: 5, scope: !1386)
!1389 = !DILocation(line: 338, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !394, line: 334, column: 5)
!1391 = !DILocation(line: 346, column: 3, scope: !401)
!1392 = !DILocation(line: 350, column: 3, scope: !401)
!1393 = !DILocation(line: 356, column: 1, scope: !401)
!1394 = distinct !DISubprogram(name: "error_at_line", scope: !394, file: !394, line: 359, type: !1395, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !70, !70, !111, !76, !111, null}
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403}
!1398 = !DILocalVariable(name: "status", arg: 1, scope: !1394, file: !394, line: 359, type: !70)
!1399 = !DILocalVariable(name: "errnum", arg: 2, scope: !1394, file: !394, line: 359, type: !70)
!1400 = !DILocalVariable(name: "file_name", arg: 3, scope: !1394, file: !394, line: 359, type: !111)
!1401 = !DILocalVariable(name: "line_number", arg: 4, scope: !1394, file: !394, line: 360, type: !76)
!1402 = !DILocalVariable(name: "message", arg: 5, scope: !1394, file: !394, line: 360, type: !111)
!1403 = !DILocalVariable(name: "ap", scope: !1394, file: !394, line: 362, type: !1352)
!1404 = distinct !DIAssignID()
!1405 = !DILocation(line: 0, scope: !1394)
!1406 = !DILocation(line: 362, column: 3, scope: !1394)
!1407 = !DILocation(line: 363, column: 3, scope: !1394)
!1408 = !DILocation(line: 364, column: 3, scope: !1394)
!1409 = !DILocation(line: 366, column: 3, scope: !1394)
!1410 = !DILocation(line: 367, column: 1, scope: !1394)
!1411 = distinct !DISubprogram(name: "getprogname", scope: !705, file: !705, line: 54, type: !1412, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!111}
!1414 = !DILocation(line: 58, column: 10, scope: !1411)
!1415 = !DILocation(line: 58, column: 3, scope: !1411)
!1416 = distinct !DISubprogram(name: "mode_compile", scope: !707, file: !707, line: 134, type: !1417, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !1427)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1419, !111}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !707, line: 98, size: 128, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1420, file: !707, line: 100, baseType: !4, size: 8)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1420, file: !707, line: 101, baseType: !4, size: 8, offset: 8)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1420, file: !707, line: 102, baseType: !1031, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1420, file: !707, line: 103, baseType: !1031, size: 32, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1420, file: !707, line: 104, baseType: !1031, size: 32, offset: 96)
!1427 = !{!1428, !1429, !1432, !1433, !1434, !1435, !1436, !1438, !1440, !1441, !1442, !1446, !1447, !1449, !1450, !1451, !1452, !1455, !1456, !1457}
!1428 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1416, file: !707, line: 134, type: !111)
!1429 = !DILocalVariable(name: "p", scope: !1430, file: !707, line: 138, type: !111)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !707, line: 137, column: 5)
!1431 = distinct !DILexicalBlock(scope: !1416, file: !707, line: 136, column: 7)
!1432 = !DILocalVariable(name: "octal_mode", scope: !1430, file: !707, line: 139, type: !76)
!1433 = !DILocalVariable(name: "mode", scope: !1430, file: !707, line: 140, type: !1031)
!1434 = !DILocalVariable(name: "mentioned", scope: !1430, file: !707, line: 141, type: !1031)
!1435 = !DILocalVariable(name: "mc", scope: !1416, file: !707, line: 163, type: !1419)
!1436 = !DILocalVariable(name: "needed", scope: !1437, file: !707, line: 167, type: !108)
!1437 = distinct !DILexicalBlock(scope: !1416, file: !707, line: 166, column: 3)
!1438 = !DILocalVariable(name: "p", scope: !1439, file: !707, line: 168, type: !111)
!1439 = distinct !DILexicalBlock(scope: !1437, file: !707, line: 168, column: 5)
!1440 = !DILocalVariable(name: "used", scope: !1416, file: !707, line: 175, type: !108)
!1441 = !DILocalVariable(name: "p", scope: !1416, file: !707, line: 176, type: !111)
!1442 = !DILocalVariable(name: "affected", scope: !1443, file: !707, line: 180, type: !1031)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !707, line: 178, column: 5)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !707, line: 177, column: 3)
!1445 = distinct !DILexicalBlock(scope: !1416, file: !707, line: 177, column: 3)
!1446 = !DILabel(scope: !1443, name: "no_more_affected", file: !707, line: 203)
!1447 = !DILocalVariable(name: "op", scope: !1448, file: !707, line: 207, type: !4)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !707, line: 206, column: 9)
!1449 = !DILocalVariable(name: "value", scope: !1448, file: !707, line: 208, type: !1031)
!1450 = !DILocalVariable(name: "mentioned", scope: !1448, file: !707, line: 209, type: !1031)
!1451 = !DILocalVariable(name: "flag", scope: !1448, file: !707, line: 210, type: !4)
!1452 = !DILocalVariable(name: "octal_mode", scope: !1453, file: !707, line: 217, type: !76)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !707, line: 216, column: 15)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !707, line: 213, column: 13)
!1455 = !DILabel(scope: !1454, name: "no_more_values", file: !707, line: 284)
!1456 = !DILocalVariable(name: "change", scope: !1448, file: !707, line: 287, type: !1419)
!1457 = !DILabel(scope: !1416, name: "invalid", file: !707, line: 308)
!1458 = !DILocation(line: 0, scope: !1416)
!1459 = !DILocation(line: 136, column: 14, scope: !1431)
!1460 = !DILocation(line: 136, column: 27, scope: !1431)
!1461 = !DILocation(line: 146, column: 41, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1430, file: !707, line: 145, column: 9)
!1463 = !DILocation(line: 0, scope: !1430)
!1464 = !DILocation(line: 146, column: 26, scope: !1462)
!1465 = !DILocation(line: 146, column: 39, scope: !1462)
!1466 = !DILocation(line: 146, column: 46, scope: !1462)
!1467 = !DILocation(line: 147, column: 20, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !707, line: 147, column: 15)
!1469 = !DILocation(line: 147, column: 15, scope: !1462)
!1470 = !DILocation(line: 146, column: 43, scope: !1462)
!1471 = !DILocation(line: 150, column: 21, scope: !1430)
!1472 = !DILocation(line: 150, column: 24, scope: !1430)
!1473 = distinct !{!1473, !1474, !1475, !910}
!1474 = !DILocation(line: 144, column: 7, scope: !1430)
!1475 = !DILocation(line: 150, column: 35, scope: !1430)
!1476 = !DILocation(line: 152, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1430, file: !707, line: 152, column: 11)
!1478 = !DILocation(line: 152, column: 11, scope: !1430)
!1479 = !DILocation(line: 156, column: 22, scope: !1430)
!1480 = !DILocation(line: 156, column: 36, scope: !1430)
!1481 = !DILocation(line: 156, column: 20, scope: !1430)
!1482 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1483, file: !707, line: 112, type: !1031)
!1483 = distinct !DISubprogram(name: "make_node_op_equals", scope: !707, file: !707, line: 112, type: !1484, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!1419, !1031, !1031}
!1486 = !{!1482, !1487, !1488}
!1487 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1483, file: !707, line: 112, type: !1031)
!1488 = !DILocalVariable(name: "p", scope: !1483, file: !707, line: 114, type: !1419)
!1489 = !DILocation(line: 0, scope: !1483, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 159, column: 14, scope: !1430)
!1491 = !DILocation(line: 114, column: 27, scope: !1483, inlinedAt: !1490)
!1492 = !DILocation(line: 115, column: 9, scope: !1483, inlinedAt: !1490)
!1493 = !{!1494, !798, i64 0}
!1494 = !{!"mode_change", !798, i64 0, !798, i64 1, !864, i64 4, !864, i64 8, !864, i64 12}
!1495 = !DILocation(line: 116, column: 6, scope: !1483, inlinedAt: !1490)
!1496 = !DILocation(line: 116, column: 11, scope: !1483, inlinedAt: !1490)
!1497 = !{!1494, !798, i64 1}
!1498 = !DILocation(line: 117, column: 6, scope: !1483, inlinedAt: !1490)
!1499 = !DILocation(line: 117, column: 15, scope: !1483, inlinedAt: !1490)
!1500 = !{!1494, !864, i64 4}
!1501 = !DILocation(line: 118, column: 6, scope: !1483, inlinedAt: !1490)
!1502 = !DILocation(line: 118, column: 12, scope: !1483, inlinedAt: !1490)
!1503 = !{!1494, !864, i64 8}
!1504 = !DILocation(line: 119, column: 6, scope: !1483, inlinedAt: !1490)
!1505 = !DILocation(line: 119, column: 16, scope: !1483, inlinedAt: !1490)
!1506 = !{!1494, !864, i64 12}
!1507 = !DILocation(line: 120, column: 8, scope: !1483, inlinedAt: !1490)
!1508 = !DILocation(line: 120, column: 13, scope: !1483, inlinedAt: !1490)
!1509 = !DILocation(line: 159, column: 7, scope: !1430)
!1510 = !DILocation(line: 168, column: 39, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1439, file: !707, line: 168, column: 5)
!1512 = !DILocation(line: 0, scope: !1437)
!1513 = !DILocation(line: 168, scope: !1439)
!1514 = !DILocation(line: 0, scope: !1439)
!1515 = !DILocation(line: 168, column: 5, scope: !1439)
!1516 = !DILocation(line: 170, column: 10, scope: !1437)
!1517 = !DILocation(line: 177, column: 8, scope: !1445)
!1518 = !DILocation(line: 169, column: 41, scope: !1511)
!1519 = !DILocation(line: 169, column: 14, scope: !1511)
!1520 = !DILocation(line: 168, column: 44, scope: !1511)
!1521 = !DILocation(line: 168, column: 5, scope: !1511)
!1522 = distinct !{!1522, !1515, !1523, !910}
!1523 = !DILocation(line: 169, column: 53, scope: !1439)
!1524 = !DILocation(line: 175, column: 10, scope: !1416)
!1525 = !DILocation(line: 177, scope: !1445)
!1526 = !DILocation(line: 0, scope: !1448)
!1527 = !DILocation(line: 0, scope: !1443)
!1528 = !DILocation(line: 183, column: 7, scope: !1443)
!1529 = !DILocation(line: 0, scope: !1445)
!1530 = !DILocation(line: 184, column: 17, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !707, line: 183, column: 7)
!1532 = distinct !DILexicalBlock(scope: !1443, file: !707, line: 183, column: 7)
!1533 = !DILocation(line: 184, column: 9, scope: !1531)
!1534 = !DILocation(line: 212, column: 11, scope: !1448)
!1535 = !DILocation(line: 189, column: 22, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !707, line: 185, column: 11)
!1537 = !DILocation(line: 190, column: 13, scope: !1536)
!1538 = !DILocation(line: 192, column: 22, scope: !1536)
!1539 = !DILocation(line: 193, column: 13, scope: !1536)
!1540 = !DILocation(line: 195, column: 22, scope: !1536)
!1541 = !DILocation(line: 196, column: 13, scope: !1536)
!1542 = !DILocation(line: 0, scope: !1536)
!1543 = !DILocation(line: 183, column: 16, scope: !1531)
!1544 = !DILocation(line: 183, column: 7, scope: !1531)
!1545 = distinct !{!1545, !1546, !1547}
!1546 = !DILocation(line: 183, column: 7, scope: !1532)
!1547 = !DILocation(line: 202, column: 11, scope: !1532)
!1548 = !DILocation(line: 207, column: 21, scope: !1448)
!1549 = !DILocation(line: 180, column: 14, scope: !1443)
!1550 = !DILocation(line: 207, column: 23, scope: !1448)
!1551 = !DILocation(line: 212, column: 19, scope: !1448)
!1552 = !DILocation(line: 219, column: 17, scope: !1453)
!1553 = !DILocation(line: 221, column: 51, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1453, file: !707, line: 220, column: 19)
!1555 = !DILocation(line: 0, scope: !1453)
!1556 = !DILocation(line: 221, column: 36, scope: !1554)
!1557 = !DILocation(line: 221, column: 49, scope: !1554)
!1558 = !DILocation(line: 221, column: 56, scope: !1554)
!1559 = !DILocation(line: 222, column: 30, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1554, file: !707, line: 222, column: 25)
!1561 = !DILocation(line: 222, column: 25, scope: !1554)
!1562 = !DILocation(line: 221, column: 53, scope: !1554)
!1563 = !DILocation(line: 225, column: 31, scope: !1453)
!1564 = !DILocation(line: 225, column: 34, scope: !1453)
!1565 = distinct !{!1565, !1552, !1566, !910}
!1566 = !DILocation(line: 225, column: 45, scope: !1453)
!1567 = !DILocation(line: 227, column: 21, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1453, file: !707, line: 227, column: 21)
!1569 = !DILocation(line: 227, column: 30, scope: !1568)
!1570 = !DILocation(line: 227, column: 37, scope: !1568)
!1571 = !DILocation(line: 239, column: 16, scope: !1454)
!1572 = !DILocation(line: 240, column: 15, scope: !1454)
!1573 = !DILocation(line: 245, column: 16, scope: !1454)
!1574 = !DILocation(line: 246, column: 15, scope: !1454)
!1575 = !DILocation(line: 251, column: 16, scope: !1454)
!1576 = !DILocation(line: 252, column: 15, scope: !1454)
!1577 = !DILocation(line: 259, column: 25, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !707, line: 258, column: 15)
!1579 = distinct !DILexicalBlock(scope: !1454, file: !707, line: 258, column: 15)
!1580 = !DILocation(line: 0, scope: !1454)
!1581 = !DILocation(line: 256, column: 20, scope: !1454)
!1582 = !DILocation(line: 259, column: 17, scope: !1578)
!1583 = !DILocation(line: 262, column: 27, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !707, line: 260, column: 19)
!1585 = !DILocation(line: 263, column: 21, scope: !1584)
!1586 = !DILocation(line: 265, column: 27, scope: !1584)
!1587 = !DILocation(line: 266, column: 21, scope: !1584)
!1588 = !DILocation(line: 268, column: 27, scope: !1584)
!1589 = !DILocation(line: 269, column: 21, scope: !1584)
!1590 = !DILocation(line: 275, column: 27, scope: !1584)
!1591 = !DILocation(line: 276, column: 21, scope: !1584)
!1592 = !DILocation(line: 279, column: 27, scope: !1584)
!1593 = !DILocation(line: 280, column: 21, scope: !1584)
!1594 = !DILocation(line: 258, column: 24, scope: !1578)
!1595 = !DILocation(line: 258, column: 15, scope: !1578)
!1596 = distinct !{!1596, !1597, !1598}
!1597 = !DILocation(line: 258, column: 15, scope: !1579)
!1598 = !DILocation(line: 283, column: 19, scope: !1579)
!1599 = !DILocation(line: 209, column: 18, scope: !1448)
!1600 = !DILocation(line: 294, column: 14, scope: !1448)
!1601 = !DILocation(line: 288, column: 28, scope: !1448)
!1602 = !DILocation(line: 288, column: 21, scope: !1448)
!1603 = !DILocation(line: 289, column: 22, scope: !1448)
!1604 = !DILocation(line: 290, column: 19, scope: !1448)
!1605 = !DILocation(line: 290, column: 24, scope: !1448)
!1606 = !DILocation(line: 291, column: 19, scope: !1448)
!1607 = !DILocation(line: 291, column: 28, scope: !1448)
!1608 = !DILocation(line: 292, column: 19, scope: !1448)
!1609 = !DILocation(line: 292, column: 25, scope: !1448)
!1610 = !DILocation(line: 293, column: 19, scope: !1448)
!1611 = !DILocation(line: 293, column: 29, scope: !1448)
!1612 = !DILocation(line: 296, column: 14, scope: !1443)
!1613 = !DILocation(line: 296, column: 24, scope: !1443)
!1614 = !DILocation(line: 177, column: 28, scope: !1444)
!1615 = !DILocation(line: 177, column: 3, scope: !1444)
!1616 = distinct !{!1616, !1617, !1618}
!1617 = !DILocation(line: 177, column: 3, scope: !1445)
!1618 = !DILocation(line: 300, column: 5, scope: !1445)
!1619 = !DILocation(line: 304, column: 16, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !707, line: 303, column: 5)
!1621 = distinct !DILexicalBlock(scope: !1416, file: !707, line: 302, column: 7)
!1622 = !DILocation(line: 304, column: 21, scope: !1620)
!1623 = !DILocation(line: 305, column: 7, scope: !1620)
!1624 = !DILocation(line: 308, column: 1, scope: !1416)
!1625 = !DILocation(line: 309, column: 3, scope: !1416)
!1626 = !DILocation(line: 310, column: 3, scope: !1416)
!1627 = !DILocation(line: 311, column: 1, scope: !1416)
!1628 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !707, file: !707, line: 317, type: !1417, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !1629)
!1629 = !{!1630, !1631}
!1630 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1628, file: !707, line: 317, type: !111)
!1631 = !DILocalVariable(name: "ref_stats", scope: !1628, file: !707, line: 319, type: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1633, line: 26, size: 1152, elements: !1634)
!1633 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1634 = !{!1635, !1637, !1639, !1641, !1642, !1644, !1646, !1647, !1648, !1649, !1651, !1653, !1661, !1662, !1663}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1632, file: !1633, line: 31, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !211, line: 145, baseType: !110)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1632, file: !1633, line: 36, baseType: !1638, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !211, line: 148, baseType: !110)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1632, file: !1633, line: 44, baseType: !1640, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !211, line: 151, baseType: !110)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1632, file: !1633, line: 45, baseType: !1033, size: 32, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1632, file: !1633, line: 47, baseType: !1643, size: 32, offset: 224)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !211, line: 146, baseType: !76)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1632, file: !1633, line: 48, baseType: !1645, size: 32, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !211, line: 147, baseType: !76)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1632, file: !1633, line: 50, baseType: !70, size: 32, offset: 288)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1632, file: !1633, line: 52, baseType: !1636, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1632, file: !1633, line: 57, baseType: !210, size: 64, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1632, file: !1633, line: 61, baseType: !1650, size: 64, offset: 448)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !211, line: 175, baseType: !212)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1632, file: !1633, line: 63, baseType: !1652, size: 64, offset: 512)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !211, line: 180, baseType: !212)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1632, file: !1633, line: 74, baseType: !1654, size: 128, offset: 576)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1655, line: 11, size: 128, elements: !1656)
!1655 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1656 = !{!1657, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1654, file: !1655, line: 16, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !211, line: 160, baseType: !212)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1654, file: !1655, line: 21, baseType: !1660, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !211, line: 197, baseType: !212)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1632, file: !1633, line: 75, baseType: !1654, size: 128, offset: 704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1632, file: !1633, line: 76, baseType: !1654, size: 128, offset: 832)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1632, file: !1633, line: 89, baseType: !1664, size: 192, offset: 960)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1660, size: 192, elements: !268)
!1665 = distinct !DIAssignID()
!1666 = !DILocation(line: 0, scope: !1628)
!1667 = !DILocation(line: 319, column: 3, scope: !1628)
!1668 = !DILocation(line: 321, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1628, file: !707, line: 321, column: 7)
!1670 = !DILocation(line: 321, column: 35, scope: !1669)
!1671 = !DILocation(line: 321, column: 7, scope: !1628)
!1672 = !DILocation(line: 323, column: 41, scope: !1628)
!1673 = !{!1674, !864, i64 24}
!1674 = !{!"stat", !1319, i64 0, !1319, i64 8, !1319, i64 16, !864, i64 24, !864, i64 28, !864, i64 32, !864, i64 36, !1319, i64 40, !1319, i64 48, !1319, i64 56, !1319, i64 64, !1675, i64 72, !1675, i64 88, !1675, i64 104, !798, i64 120}
!1675 = !{!"timespec", !1319, i64 0, !1319, i64 8}
!1676 = !DILocation(line: 0, scope: !1483, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 323, column: 10, scope: !1628)
!1678 = !DILocation(line: 114, column: 27, scope: !1483, inlinedAt: !1677)
!1679 = !DILocation(line: 115, column: 9, scope: !1483, inlinedAt: !1677)
!1680 = !DILocation(line: 116, column: 6, scope: !1483, inlinedAt: !1677)
!1681 = !DILocation(line: 116, column: 11, scope: !1483, inlinedAt: !1677)
!1682 = !DILocation(line: 117, column: 6, scope: !1483, inlinedAt: !1677)
!1683 = !DILocation(line: 117, column: 15, scope: !1483, inlinedAt: !1677)
!1684 = !DILocation(line: 118, column: 6, scope: !1483, inlinedAt: !1677)
!1685 = !DILocation(line: 118, column: 12, scope: !1483, inlinedAt: !1677)
!1686 = !DILocation(line: 119, column: 6, scope: !1483, inlinedAt: !1677)
!1687 = !DILocation(line: 119, column: 16, scope: !1483, inlinedAt: !1677)
!1688 = !DILocation(line: 120, column: 8, scope: !1483, inlinedAt: !1677)
!1689 = !DILocation(line: 120, column: 13, scope: !1483, inlinedAt: !1677)
!1690 = !DILocation(line: 323, column: 3, scope: !1628)
!1691 = !DILocation(line: 324, column: 1, scope: !1628)
!1692 = !DISubprogram(name: "stat", scope: !1128, file: !1128, line: 205, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!70, !853, !1695}
!1695 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1697 = distinct !DISubprogram(name: "mode_adjust", scope: !707, file: !707, line: 340, type: !1698, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !1703)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1031, !1031, !171, !1031, !1700, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1715, !1716, !1717}
!1704 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1697, file: !707, line: 340, type: !1031)
!1705 = !DILocalVariable(name: "dir", arg: 2, scope: !1697, file: !707, line: 340, type: !171)
!1706 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1697, file: !707, line: 340, type: !1031)
!1707 = !DILocalVariable(name: "changes", arg: 4, scope: !1697, file: !707, line: 341, type: !1700)
!1708 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1697, file: !707, line: 341, type: !1702)
!1709 = !DILocalVariable(name: "newmode", scope: !1697, file: !707, line: 344, type: !1031)
!1710 = !DILocalVariable(name: "mode_bits", scope: !1697, file: !707, line: 347, type: !1031)
!1711 = !DILocalVariable(name: "affected", scope: !1712, file: !707, line: 351, type: !1031)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !707, line: 350, column: 5)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !707, line: 349, column: 3)
!1714 = distinct !DILexicalBlock(scope: !1697, file: !707, line: 349, column: 3)
!1715 = !DILocalVariable(name: "omit_change", scope: !1712, file: !707, line: 352, type: !1031)
!1716 = !DILocalVariable(name: "value", scope: !1712, file: !707, line: 354, type: !1031)
!1717 = !DILocalVariable(name: "preserved", scope: !1718, file: !707, line: 394, type: !1031)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !707, line: 393, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1712, file: !707, line: 388, column: 9)
!1720 = !DILocation(line: 0, scope: !1697)
!1721 = !DILocation(line: 344, column: 28, scope: !1697)
!1722 = !DILocation(line: 349, column: 19, scope: !1713)
!1723 = !DILocation(line: 349, column: 24, scope: !1713)
!1724 = !DILocation(line: 349, column: 3, scope: !1714)
!1725 = !DILocation(line: 351, column: 34, scope: !1712)
!1726 = !DILocation(line: 0, scope: !1712)
!1727 = !DILocation(line: 353, column: 52, scope: !1712)
!1728 = !DILocation(line: 353, column: 41, scope: !1712)
!1729 = !DILocation(line: 353, column: 39, scope: !1712)
!1730 = !DILocation(line: 354, column: 31, scope: !1712)
!1731 = !DILocation(line: 356, column: 7, scope: !1712)
!1732 = !DILocation(line: 363, column: 17, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1712, file: !707, line: 357, column: 9)
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
!1744 = distinct !DILexicalBlock(scope: !1733, file: !707, line: 377, column: 15)
!1745 = !DILocation(line: 377, column: 57, scope: !1744)
!1746 = !DILocation(line: 377, column: 15, scope: !1733)
!1747 = !DILocation(line: 385, column: 17, scope: !1712)
!1748 = !DILocation(line: 385, column: 55, scope: !1712)
!1749 = !DILocation(line: 385, column: 53, scope: !1712)
!1750 = !DILocation(line: 385, column: 13, scope: !1712)
!1751 = !DILocation(line: 387, column: 24, scope: !1712)
!1752 = !DILocation(line: 387, column: 7, scope: !1712)
!1753 = !DILocation(line: 394, column: 33, scope: !1718)
!1754 = !DILocation(line: 394, column: 59, scope: !1718)
!1755 = !DILocation(line: 0, scope: !1718)
!1756 = !DILocation(line: 395, column: 42, scope: !1718)
!1757 = !DILocation(line: 395, column: 23, scope: !1718)
!1758 = !DILocation(line: 396, column: 32, scope: !1718)
!1759 = !DILocation(line: 396, column: 45, scope: !1718)
!1760 = !DILocation(line: 401, column: 21, scope: !1719)
!1761 = !DILocation(line: 402, column: 19, scope: !1719)
!1762 = !DILocation(line: 403, column: 11, scope: !1719)
!1763 = !DILocation(line: 406, column: 21, scope: !1719)
!1764 = !DILocation(line: 407, column: 22, scope: !1719)
!1765 = !DILocation(line: 407, column: 19, scope: !1719)
!1766 = !DILocation(line: 408, column: 11, scope: !1719)
!1767 = !DILocation(line: 349, column: 45, scope: !1713)
!1768 = distinct !{!1768, !1724, !1769, !910}
!1769 = !DILocation(line: 410, column: 5, scope: !1714)
!1770 = !DILocation(line: 347, column: 10, scope: !1697)
!1771 = !DILocation(line: 344, column: 10, scope: !1697)
!1772 = !DILocation(line: 412, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1697, file: !707, line: 412, column: 7)
!1774 = !DILocation(line: 412, column: 7, scope: !1697)
!1775 = !DILocation(line: 413, column: 17, scope: !1773)
!1776 = !DILocation(line: 413, column: 5, scope: !1773)
!1777 = !DILocation(line: 414, column: 3, scope: !1697)
!1778 = distinct !DISubprogram(name: "set_program_name", scope: !445, file: !445, line: 37, type: !813, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1779)
!1779 = !{!1780, !1781, !1782}
!1780 = !DILocalVariable(name: "argv0", arg: 1, scope: !1778, file: !445, line: 37, type: !111)
!1781 = !DILocalVariable(name: "slash", scope: !1778, file: !445, line: 44, type: !111)
!1782 = !DILocalVariable(name: "base", scope: !1778, file: !445, line: 45, type: !111)
!1783 = !DILocation(line: 0, scope: !1778)
!1784 = !DILocation(line: 44, column: 23, scope: !1778)
!1785 = !DILocation(line: 45, column: 22, scope: !1778)
!1786 = !DILocation(line: 46, column: 17, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1778, file: !445, line: 46, column: 7)
!1788 = !DILocation(line: 46, column: 9, scope: !1787)
!1789 = !DILocation(line: 46, column: 25, scope: !1787)
!1790 = !DILocation(line: 46, column: 40, scope: !1787)
!1791 = !DILocalVariable(name: "__s1", arg: 1, scope: !1792, file: !876, line: 974, type: !1011)
!1792 = distinct !DISubprogram(name: "memeq", scope: !876, file: !876, line: 974, type: !1793, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1795)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!171, !1011, !1011, !108}
!1795 = !{!1791, !1796, !1797}
!1796 = !DILocalVariable(name: "__s2", arg: 2, scope: !1792, file: !876, line: 974, type: !1011)
!1797 = !DILocalVariable(name: "__n", arg: 3, scope: !1792, file: !876, line: 974, type: !108)
!1798 = !DILocation(line: 0, scope: !1792, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 46, column: 28, scope: !1787)
!1800 = !DILocation(line: 976, column: 11, scope: !1792, inlinedAt: !1799)
!1801 = !DILocation(line: 976, column: 10, scope: !1792, inlinedAt: !1799)
!1802 = !DILocation(line: 46, column: 7, scope: !1778)
!1803 = !DILocation(line: 49, column: 11, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !445, line: 49, column: 11)
!1805 = distinct !DILexicalBlock(scope: !1787, file: !445, line: 47, column: 5)
!1806 = !DILocation(line: 49, column: 36, scope: !1804)
!1807 = !DILocation(line: 49, column: 11, scope: !1805)
!1808 = !DILocation(line: 65, column: 16, scope: !1778)
!1809 = !DILocation(line: 71, column: 27, scope: !1778)
!1810 = !DILocation(line: 74, column: 33, scope: !1778)
!1811 = !DILocation(line: 76, column: 1, scope: !1778)
!1812 = !DISubprogram(name: "strrchr", scope: !983, file: !983, line: 273, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1813 = distinct !DIAssignID()
!1814 = !DILocation(line: 0, scope: !454)
!1815 = distinct !DIAssignID()
!1816 = !DILocation(line: 40, column: 29, scope: !454)
!1817 = !DILocation(line: 41, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !454, file: !455, line: 41, column: 7)
!1819 = !DILocation(line: 41, column: 7, scope: !454)
!1820 = !DILocation(line: 47, column: 3, scope: !454)
!1821 = !DILocation(line: 48, column: 3, scope: !454)
!1822 = !DILocalVariable(name: "ps", arg: 1, scope: !1823, file: !1824, line: 1135, type: !1827)
!1823 = distinct !DISubprogram(name: "mbszero", scope: !1824, file: !1824, line: 1135, type: !1825, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !1828)
!1824 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!1828 = !{!1822}
!1829 = !DILocation(line: 0, scope: !1823, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 48, column: 18, scope: !454)
!1831 = !DILocalVariable(name: "__dest", arg: 1, scope: !1832, file: !1833, line: 57, type: !106)
!1832 = distinct !DISubprogram(name: "memset", scope: !1833, file: !1833, line: 57, type: !1834, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !1836)
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
!1843 = distinct !DILexicalBlock(scope: !454, file: !455, line: 49, column: 7)
!1844 = !DILocation(line: 49, column: 39, scope: !1843)
!1845 = !DILocation(line: 49, column: 44, scope: !1843)
!1846 = !DILocation(line: 54, column: 1, scope: !454)
!1847 = !DISubprogram(name: "mbrtoc32", scope: !466, file: !466, line: 57, type: !1848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!108, !1850, !853, !108, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1851)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1827)
!1853 = distinct !DISubprogram(name: "clone_quoting_options", scope: !485, file: !485, line: 113, type: !1854, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1857)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1856, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1857 = !{!1858, !1859, !1860}
!1858 = !DILocalVariable(name: "o", arg: 1, scope: !1853, file: !485, line: 113, type: !1856)
!1859 = !DILocalVariable(name: "saved_errno", scope: !1853, file: !485, line: 115, type: !70)
!1860 = !DILocalVariable(name: "p", scope: !1853, file: !485, line: 116, type: !1856)
!1861 = !DILocation(line: 0, scope: !1853)
!1862 = !DILocation(line: 115, column: 21, scope: !1853)
!1863 = !DILocation(line: 116, column: 40, scope: !1853)
!1864 = !DILocation(line: 116, column: 31, scope: !1853)
!1865 = !DILocation(line: 118, column: 9, scope: !1853)
!1866 = !DILocation(line: 119, column: 3, scope: !1853)
!1867 = distinct !DISubprogram(name: "get_quoting_style", scope: !485, file: !485, line: 124, type: !1868, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1872)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!508, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!1872 = !{!1873}
!1873 = !DILocalVariable(name: "o", arg: 1, scope: !1867, file: !485, line: 124, type: !1870)
!1874 = !DILocation(line: 0, scope: !1867)
!1875 = !DILocation(line: 126, column: 11, scope: !1867)
!1876 = !DILocation(line: 126, column: 46, scope: !1867)
!1877 = !{!1878, !864, i64 0}
!1878 = !{!"quoting_options", !864, i64 0, !864, i64 4, !798, i64 8, !797, i64 40, !797, i64 48}
!1879 = !DILocation(line: 126, column: 3, scope: !1867)
!1880 = distinct !DISubprogram(name: "set_quoting_style", scope: !485, file: !485, line: 132, type: !1881, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1856, !508}
!1883 = !{!1884, !1885}
!1884 = !DILocalVariable(name: "o", arg: 1, scope: !1880, file: !485, line: 132, type: !1856)
!1885 = !DILocalVariable(name: "s", arg: 2, scope: !1880, file: !485, line: 132, type: !508)
!1886 = !DILocation(line: 0, scope: !1880)
!1887 = !DILocation(line: 134, column: 4, scope: !1880)
!1888 = !DILocation(line: 134, column: 45, scope: !1880)
!1889 = !DILocation(line: 135, column: 1, scope: !1880)
!1890 = distinct !DISubprogram(name: "set_char_quoting", scope: !485, file: !485, line: 143, type: !1891, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1893)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!70, !1856, !4, !70}
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1900, !1901}
!1894 = !DILocalVariable(name: "o", arg: 1, scope: !1890, file: !485, line: 143, type: !1856)
!1895 = !DILocalVariable(name: "c", arg: 2, scope: !1890, file: !485, line: 143, type: !4)
!1896 = !DILocalVariable(name: "i", arg: 3, scope: !1890, file: !485, line: 143, type: !70)
!1897 = !DILocalVariable(name: "uc", scope: !1890, file: !485, line: 145, type: !113)
!1898 = !DILocalVariable(name: "p", scope: !1890, file: !485, line: 146, type: !1899)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1900 = !DILocalVariable(name: "shift", scope: !1890, file: !485, line: 148, type: !70)
!1901 = !DILocalVariable(name: "r", scope: !1890, file: !485, line: 149, type: !76)
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
!1915 = distinct !DISubprogram(name: "set_quoting_flags", scope: !485, file: !485, line: 159, type: !1916, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!70, !1856, !70}
!1918 = !{!1919, !1920, !1921}
!1919 = !DILocalVariable(name: "o", arg: 1, scope: !1915, file: !485, line: 159, type: !1856)
!1920 = !DILocalVariable(name: "i", arg: 2, scope: !1915, file: !485, line: 159, type: !70)
!1921 = !DILocalVariable(name: "r", scope: !1915, file: !485, line: 163, type: !70)
!1922 = !DILocation(line: 0, scope: !1915)
!1923 = !DILocation(line: 161, column: 8, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1915, file: !485, line: 161, column: 7)
!1925 = !DILocation(line: 161, column: 7, scope: !1915)
!1926 = !DILocation(line: 163, column: 14, scope: !1915)
!1927 = !{!1878, !864, i64 4}
!1928 = !DILocation(line: 164, column: 12, scope: !1915)
!1929 = !DILocation(line: 165, column: 3, scope: !1915)
!1930 = distinct !DISubprogram(name: "set_custom_quoting", scope: !485, file: !485, line: 169, type: !1931, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !1856, !111, !111}
!1933 = !{!1934, !1935, !1936}
!1934 = !DILocalVariable(name: "o", arg: 1, scope: !1930, file: !485, line: 169, type: !1856)
!1935 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1930, file: !485, line: 170, type: !111)
!1936 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1930, file: !485, line: 170, type: !111)
!1937 = !DILocation(line: 0, scope: !1930)
!1938 = !DILocation(line: 172, column: 8, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1930, file: !485, line: 172, column: 7)
!1940 = !DILocation(line: 172, column: 7, scope: !1930)
!1941 = !DILocation(line: 174, column: 12, scope: !1930)
!1942 = !DILocation(line: 175, column: 8, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1930, file: !485, line: 175, column: 7)
!1944 = !DILocation(line: 175, column: 19, scope: !1943)
!1945 = !DILocation(line: 176, column: 5, scope: !1943)
!1946 = !DILocation(line: 177, column: 6, scope: !1930)
!1947 = !DILocation(line: 177, column: 17, scope: !1930)
!1948 = !{!1878, !797, i64 40}
!1949 = !DILocation(line: 178, column: 6, scope: !1930)
!1950 = !DILocation(line: 178, column: 18, scope: !1930)
!1951 = !{!1878, !797, i64 48}
!1952 = !DILocation(line: 179, column: 1, scope: !1930)
!1953 = !DISubprogram(name: "abort", scope: !987, file: !987, line: 598, type: !440, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1954 = distinct !DISubprogram(name: "quotearg_buffer", scope: !485, file: !485, line: 774, type: !1955, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!108, !105, !108, !111, !108, !1870}
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!1958 = !DILocalVariable(name: "buffer", arg: 1, scope: !1954, file: !485, line: 774, type: !105)
!1959 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1954, file: !485, line: 774, type: !108)
!1960 = !DILocalVariable(name: "arg", arg: 3, scope: !1954, file: !485, line: 775, type: !111)
!1961 = !DILocalVariable(name: "argsize", arg: 4, scope: !1954, file: !485, line: 775, type: !108)
!1962 = !DILocalVariable(name: "o", arg: 5, scope: !1954, file: !485, line: 776, type: !1870)
!1963 = !DILocalVariable(name: "p", scope: !1954, file: !485, line: 778, type: !1870)
!1964 = !DILocalVariable(name: "saved_errno", scope: !1954, file: !485, line: 779, type: !70)
!1965 = !DILocalVariable(name: "r", scope: !1954, file: !485, line: 780, type: !108)
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
!1977 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !485, file: !485, line: 251, type: !1978, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1982)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!108, !105, !108, !111, !108, !508, !70, !1980, !111, !111}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1982 = !{!1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2008, !2010, !2013, !2014, !2015, !2016, !2019, !2020, !2022, !2023, !2026, !2030, !2031, !2039, !2042, !2043, !2044}
!1983 = !DILocalVariable(name: "buffer", arg: 1, scope: !1977, file: !485, line: 251, type: !105)
!1984 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1977, file: !485, line: 251, type: !108)
!1985 = !DILocalVariable(name: "arg", arg: 3, scope: !1977, file: !485, line: 252, type: !111)
!1986 = !DILocalVariable(name: "argsize", arg: 4, scope: !1977, file: !485, line: 252, type: !108)
!1987 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1977, file: !485, line: 253, type: !508)
!1988 = !DILocalVariable(name: "flags", arg: 6, scope: !1977, file: !485, line: 253, type: !70)
!1989 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1977, file: !485, line: 254, type: !1980)
!1990 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1977, file: !485, line: 255, type: !111)
!1991 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1977, file: !485, line: 256, type: !111)
!1992 = !DILocalVariable(name: "unibyte_locale", scope: !1977, file: !485, line: 258, type: !171)
!1993 = !DILocalVariable(name: "len", scope: !1977, file: !485, line: 260, type: !108)
!1994 = !DILocalVariable(name: "orig_buffersize", scope: !1977, file: !485, line: 261, type: !108)
!1995 = !DILocalVariable(name: "quote_string", scope: !1977, file: !485, line: 262, type: !111)
!1996 = !DILocalVariable(name: "quote_string_len", scope: !1977, file: !485, line: 263, type: !108)
!1997 = !DILocalVariable(name: "backslash_escapes", scope: !1977, file: !485, line: 264, type: !171)
!1998 = !DILocalVariable(name: "elide_outer_quotes", scope: !1977, file: !485, line: 265, type: !171)
!1999 = !DILocalVariable(name: "encountered_single_quote", scope: !1977, file: !485, line: 266, type: !171)
!2000 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1977, file: !485, line: 267, type: !171)
!2001 = !DILabel(scope: !1977, name: "process_input", file: !485, line: 308)
!2002 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1977, file: !485, line: 309, type: !171)
!2003 = !DILocalVariable(name: "lq", scope: !2004, file: !485, line: 361, type: !111)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !485, line: 361, column: 11)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !485, line: 360, column: 13)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !485, line: 333, column: 7)
!2007 = distinct !DILexicalBlock(scope: !1977, file: !485, line: 312, column: 5)
!2008 = !DILocalVariable(name: "i", scope: !2009, file: !485, line: 395, type: !108)
!2009 = distinct !DILexicalBlock(scope: !1977, file: !485, line: 395, column: 3)
!2010 = !DILocalVariable(name: "is_right_quote", scope: !2011, file: !485, line: 397, type: !171)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !485, line: 396, column: 5)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !485, line: 395, column: 3)
!2013 = !DILocalVariable(name: "escaping", scope: !2011, file: !485, line: 398, type: !171)
!2014 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2011, file: !485, line: 399, type: !171)
!2015 = !DILocalVariable(name: "c", scope: !2011, file: !485, line: 417, type: !113)
!2016 = !DILabel(scope: !2017, name: "c_and_shell_escape", file: !485, line: 502)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !485, line: 478, column: 9)
!2018 = distinct !DILexicalBlock(scope: !2011, file: !485, line: 419, column: 9)
!2019 = !DILabel(scope: !2017, name: "c_escape", file: !485, line: 507)
!2020 = !DILocalVariable(name: "m", scope: !2021, file: !485, line: 598, type: !108)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !485, line: 596, column: 11)
!2022 = !DILocalVariable(name: "printable", scope: !2021, file: !485, line: 600, type: !171)
!2023 = !DILocalVariable(name: "mbs", scope: !2024, file: !485, line: 609, type: !557)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !485, line: 608, column: 15)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !485, line: 602, column: 17)
!2026 = !DILocalVariable(name: "w", scope: !2027, file: !485, line: 618, type: !465)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !485, line: 617, column: 19)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !485, line: 616, column: 17)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !485, line: 616, column: 17)
!2030 = !DILocalVariable(name: "bytes", scope: !2027, file: !485, line: 619, type: !108)
!2031 = !DILocalVariable(name: "j", scope: !2032, file: !485, line: 648, type: !108)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !485, line: 648, column: 29)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !485, line: 647, column: 27)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !485, line: 645, column: 29)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !485, line: 636, column: 23)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !485, line: 628, column: 30)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !485, line: 623, column: 30)
!2038 = distinct !DILexicalBlock(scope: !2027, file: !485, line: 621, column: 25)
!2039 = !DILocalVariable(name: "ilim", scope: !2040, file: !485, line: 674, type: !108)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !485, line: 671, column: 15)
!2041 = distinct !DILexicalBlock(scope: !2021, file: !485, line: 670, column: 17)
!2042 = !DILabel(scope: !2011, name: "store_escape", file: !485, line: 709)
!2043 = !DILabel(scope: !2011, name: "store_c", file: !485, line: 712)
!2044 = !DILabel(scope: !1977, name: "force_outer_quoting_style", file: !485, line: 753)
!2045 = distinct !DIAssignID()
!2046 = distinct !DIAssignID()
!2047 = distinct !DIAssignID()
!2048 = distinct !DIAssignID()
!2049 = distinct !DIAssignID()
!2050 = !DILocation(line: 0, scope: !2024)
!2051 = distinct !DIAssignID()
!2052 = !DILocation(line: 0, scope: !2027)
!2053 = !DILocation(line: 0, scope: !1977)
!2054 = !DILocation(line: 258, column: 25, scope: !1977)
!2055 = !DILocation(line: 258, column: 36, scope: !1977)
!2056 = !DILocation(line: 265, column: 8, scope: !1977)
!2057 = !DILocation(line: 267, column: 3, scope: !1977)
!2058 = !DILocation(line: 261, column: 10, scope: !1977)
!2059 = !DILocation(line: 262, column: 15, scope: !1977)
!2060 = !DILocation(line: 263, column: 10, scope: !1977)
!2061 = !DILocation(line: 264, column: 8, scope: !1977)
!2062 = !DILocation(line: 266, column: 8, scope: !1977)
!2063 = !DILocation(line: 267, column: 8, scope: !1977)
!2064 = !DILocation(line: 308, column: 2, scope: !1977)
!2065 = !DILocation(line: 311, column: 3, scope: !1977)
!2066 = !DILocation(line: 318, column: 11, scope: !2007)
!2067 = !DILocation(line: 318, column: 12, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2007, file: !485, line: 318, column: 11)
!2069 = !DILocation(line: 319, column: 9, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !485, line: 319, column: 9)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !485, line: 319, column: 9)
!2072 = !DILocation(line: 319, column: 9, scope: !2071)
!2073 = !DILocation(line: 0, scope: !548, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 357, column: 26, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !485, line: 335, column: 11)
!2076 = distinct !DILexicalBlock(scope: !2006, file: !485, line: 334, column: 13)
!2077 = !DILocation(line: 199, column: 29, scope: !548, inlinedAt: !2074)
!2078 = !DILocation(line: 201, column: 19, scope: !2079, inlinedAt: !2074)
!2079 = distinct !DILexicalBlock(scope: !548, file: !485, line: 201, column: 7)
!2080 = !DILocation(line: 201, column: 7, scope: !548, inlinedAt: !2074)
!2081 = !DILocation(line: 229, column: 3, scope: !548, inlinedAt: !2074)
!2082 = !DILocation(line: 230, column: 3, scope: !548, inlinedAt: !2074)
!2083 = !DILocalVariable(name: "ps", arg: 1, scope: !2084, file: !1824, line: 1135, type: !2087)
!2084 = distinct !DISubprogram(name: "mbszero", scope: !1824, file: !1824, line: 1135, type: !2085, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2088)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !2087}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!2088 = !{!2083}
!2089 = !DILocation(line: 0, scope: !2084, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 230, column: 18, scope: !548, inlinedAt: !2074)
!2091 = !DILocalVariable(name: "__dest", arg: 1, scope: !2092, file: !1833, line: 57, type: !106)
!2092 = distinct !DISubprogram(name: "memset", scope: !1833, file: !1833, line: 57, type: !1834, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2093)
!2093 = !{!2091, !2094, !2095}
!2094 = !DILocalVariable(name: "__ch", arg: 2, scope: !2092, file: !1833, line: 57, type: !70)
!2095 = !DILocalVariable(name: "__len", arg: 3, scope: !2092, file: !1833, line: 57, type: !108)
!2096 = !DILocation(line: 0, scope: !2092, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 1137, column: 3, scope: !2084, inlinedAt: !2090)
!2098 = !DILocation(line: 59, column: 10, scope: !2092, inlinedAt: !2097)
!2099 = !DILocation(line: 231, column: 7, scope: !2100, inlinedAt: !2074)
!2100 = distinct !DILexicalBlock(scope: !548, file: !485, line: 231, column: 7)
!2101 = !DILocation(line: 231, column: 40, scope: !2100, inlinedAt: !2074)
!2102 = !DILocation(line: 231, column: 45, scope: !2100, inlinedAt: !2074)
!2103 = !DILocation(line: 235, column: 1, scope: !548, inlinedAt: !2074)
!2104 = !DILocation(line: 0, scope: !548, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 358, column: 27, scope: !2075)
!2106 = !DILocation(line: 199, column: 29, scope: !548, inlinedAt: !2105)
!2107 = !DILocation(line: 201, column: 19, scope: !2079, inlinedAt: !2105)
!2108 = !DILocation(line: 201, column: 7, scope: !548, inlinedAt: !2105)
!2109 = !DILocation(line: 229, column: 3, scope: !548, inlinedAt: !2105)
!2110 = !DILocation(line: 230, column: 3, scope: !548, inlinedAt: !2105)
!2111 = !DILocation(line: 0, scope: !2084, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 230, column: 18, scope: !548, inlinedAt: !2105)
!2113 = !DILocation(line: 0, scope: !2092, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 1137, column: 3, scope: !2084, inlinedAt: !2112)
!2115 = !DILocation(line: 59, column: 10, scope: !2092, inlinedAt: !2114)
!2116 = !DILocation(line: 231, column: 7, scope: !2100, inlinedAt: !2105)
!2117 = !DILocation(line: 231, column: 40, scope: !2100, inlinedAt: !2105)
!2118 = !DILocation(line: 231, column: 45, scope: !2100, inlinedAt: !2105)
!2119 = !DILocation(line: 235, column: 1, scope: !548, inlinedAt: !2105)
!2120 = !DILocation(line: 360, column: 14, scope: !2005)
!2121 = !DILocation(line: 360, column: 13, scope: !2006)
!2122 = !DILocation(line: 0, scope: !2004)
!2123 = !DILocation(line: 361, column: 45, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2004, file: !485, line: 361, column: 11)
!2125 = !DILocation(line: 361, column: 11, scope: !2004)
!2126 = !DILocation(line: 362, column: 13, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !485, line: 362, column: 13)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !485, line: 362, column: 13)
!2129 = !DILocation(line: 362, column: 13, scope: !2128)
!2130 = !DILocation(line: 361, column: 52, scope: !2124)
!2131 = distinct !{!2131, !2125, !2132, !910}
!2132 = !DILocation(line: 362, column: 13, scope: !2004)
!2133 = !DILocation(line: 260, column: 10, scope: !1977)
!2134 = !DILocation(line: 365, column: 28, scope: !2006)
!2135 = !DILocation(line: 367, column: 7, scope: !2007)
!2136 = !DILocation(line: 370, column: 7, scope: !2007)
!2137 = !DILocation(line: 373, column: 7, scope: !2007)
!2138 = !DILocation(line: 376, column: 12, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2007, file: !485, line: 376, column: 11)
!2140 = !DILocation(line: 376, column: 11, scope: !2007)
!2141 = !DILocation(line: 381, column: 12, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2007, file: !485, line: 381, column: 11)
!2143 = !DILocation(line: 381, column: 11, scope: !2007)
!2144 = !DILocation(line: 382, column: 9, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !485, line: 382, column: 9)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !485, line: 382, column: 9)
!2147 = !DILocation(line: 382, column: 9, scope: !2146)
!2148 = !DILocation(line: 389, column: 7, scope: !2007)
!2149 = !DILocation(line: 392, column: 7, scope: !2007)
!2150 = !DILocation(line: 0, scope: !2009)
!2151 = !DILocation(line: 395, column: 8, scope: !2009)
!2152 = !DILocation(line: 309, column: 8, scope: !1977)
!2153 = !DILocation(line: 395, scope: !2009)
!2154 = !DILocation(line: 395, column: 34, scope: !2012)
!2155 = !DILocation(line: 395, column: 26, scope: !2012)
!2156 = !DILocation(line: 395, column: 48, scope: !2012)
!2157 = !DILocation(line: 395, column: 55, scope: !2012)
!2158 = !DILocation(line: 395, column: 3, scope: !2009)
!2159 = !DILocation(line: 395, column: 67, scope: !2012)
!2160 = !DILocation(line: 0, scope: !2011)
!2161 = !DILocation(line: 402, column: 11, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2011, file: !485, line: 401, column: 11)
!2163 = !DILocation(line: 404, column: 17, scope: !2162)
!2164 = !DILocation(line: 405, column: 39, scope: !2162)
!2165 = !DILocation(line: 409, column: 32, scope: !2162)
!2166 = !DILocation(line: 405, column: 19, scope: !2162)
!2167 = !DILocation(line: 405, column: 15, scope: !2162)
!2168 = !DILocation(line: 410, column: 11, scope: !2162)
!2169 = !DILocation(line: 410, column: 25, scope: !2162)
!2170 = !DILocalVariable(name: "__s1", arg: 1, scope: !2171, file: !876, line: 974, type: !1011)
!2171 = distinct !DISubprogram(name: "memeq", scope: !876, file: !876, line: 974, type: !1793, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2172)
!2172 = !{!2170, !2173, !2174}
!2173 = !DILocalVariable(name: "__s2", arg: 2, scope: !2171, file: !876, line: 974, type: !1011)
!2174 = !DILocalVariable(name: "__n", arg: 3, scope: !2171, file: !876, line: 974, type: !108)
!2175 = !DILocation(line: 0, scope: !2171, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 410, column: 14, scope: !2162)
!2177 = !DILocation(line: 976, column: 11, scope: !2171, inlinedAt: !2176)
!2178 = !DILocation(line: 976, column: 10, scope: !2171, inlinedAt: !2176)
!2179 = !DILocation(line: 401, column: 11, scope: !2011)
!2180 = !DILocation(line: 417, column: 25, scope: !2011)
!2181 = !DILocation(line: 418, column: 7, scope: !2011)
!2182 = !DILocation(line: 421, column: 15, scope: !2018)
!2183 = !DILocation(line: 423, column: 15, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !485, line: 423, column: 15)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !485, line: 422, column: 13)
!2186 = distinct !DILexicalBlock(scope: !2018, file: !485, line: 421, column: 15)
!2187 = !DILocation(line: 423, column: 15, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !485, line: 423, column: 15)
!2189 = !DILocation(line: 423, column: 15, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !485, line: 423, column: 15)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !485, line: 423, column: 15)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !485, line: 423, column: 15)
!2193 = !DILocation(line: 423, column: 15, scope: !2191)
!2194 = !DILocation(line: 423, column: 15, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !485, line: 423, column: 15)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !485, line: 423, column: 15)
!2197 = !DILocation(line: 423, column: 15, scope: !2196)
!2198 = !DILocation(line: 423, column: 15, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !485, line: 423, column: 15)
!2200 = distinct !DILexicalBlock(scope: !2192, file: !485, line: 423, column: 15)
!2201 = !DILocation(line: 423, column: 15, scope: !2200)
!2202 = !DILocation(line: 423, column: 15, scope: !2192)
!2203 = !DILocation(line: 423, column: 15, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !485, line: 423, column: 15)
!2205 = distinct !DILexicalBlock(scope: !2184, file: !485, line: 423, column: 15)
!2206 = !DILocation(line: 423, column: 15, scope: !2205)
!2207 = !DILocation(line: 431, column: 19, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2185, file: !485, line: 430, column: 19)
!2209 = !DILocation(line: 431, column: 24, scope: !2208)
!2210 = !DILocation(line: 431, column: 28, scope: !2208)
!2211 = !DILocation(line: 431, column: 38, scope: !2208)
!2212 = !DILocation(line: 431, column: 48, scope: !2208)
!2213 = !DILocation(line: 431, column: 59, scope: !2208)
!2214 = !DILocation(line: 433, column: 19, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !485, line: 433, column: 19)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !485, line: 433, column: 19)
!2217 = distinct !DILexicalBlock(scope: !2208, file: !485, line: 432, column: 17)
!2218 = !DILocation(line: 433, column: 19, scope: !2216)
!2219 = !DILocation(line: 434, column: 19, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !485, line: 434, column: 19)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !485, line: 434, column: 19)
!2222 = !DILocation(line: 434, column: 19, scope: !2221)
!2223 = !DILocation(line: 435, column: 17, scope: !2217)
!2224 = !DILocation(line: 442, column: 20, scope: !2186)
!2225 = !DILocation(line: 447, column: 11, scope: !2018)
!2226 = !DILocation(line: 450, column: 19, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2018, file: !485, line: 448, column: 13)
!2228 = !DILocation(line: 456, column: 19, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2227, file: !485, line: 455, column: 19)
!2230 = !DILocation(line: 456, column: 24, scope: !2229)
!2231 = !DILocation(line: 456, column: 28, scope: !2229)
!2232 = !DILocation(line: 456, column: 38, scope: !2229)
!2233 = !DILocation(line: 456, column: 41, scope: !2229)
!2234 = !DILocation(line: 456, column: 52, scope: !2229)
!2235 = !DILocation(line: 455, column: 19, scope: !2227)
!2236 = !DILocation(line: 457, column: 25, scope: !2229)
!2237 = !DILocation(line: 457, column: 17, scope: !2229)
!2238 = !DILocation(line: 464, column: 25, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2229, file: !485, line: 458, column: 19)
!2240 = !DILocation(line: 468, column: 21, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !485, line: 468, column: 21)
!2242 = distinct !DILexicalBlock(scope: !2239, file: !485, line: 468, column: 21)
!2243 = !DILocation(line: 468, column: 21, scope: !2242)
!2244 = !DILocation(line: 469, column: 21, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !485, line: 469, column: 21)
!2246 = distinct !DILexicalBlock(scope: !2239, file: !485, line: 469, column: 21)
!2247 = !DILocation(line: 469, column: 21, scope: !2246)
!2248 = !DILocation(line: 470, column: 21, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !485, line: 470, column: 21)
!2250 = distinct !DILexicalBlock(scope: !2239, file: !485, line: 470, column: 21)
!2251 = !DILocation(line: 470, column: 21, scope: !2250)
!2252 = !DILocation(line: 471, column: 21, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !485, line: 471, column: 21)
!2254 = distinct !DILexicalBlock(scope: !2239, file: !485, line: 471, column: 21)
!2255 = !DILocation(line: 471, column: 21, scope: !2254)
!2256 = !DILocation(line: 472, column: 21, scope: !2239)
!2257 = !DILocation(line: 482, column: 33, scope: !2017)
!2258 = !DILocation(line: 483, column: 33, scope: !2017)
!2259 = !DILocation(line: 485, column: 33, scope: !2017)
!2260 = !DILocation(line: 486, column: 33, scope: !2017)
!2261 = !DILocation(line: 487, column: 33, scope: !2017)
!2262 = !DILocation(line: 490, column: 17, scope: !2017)
!2263 = !DILocation(line: 492, column: 21, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !485, line: 491, column: 15)
!2265 = distinct !DILexicalBlock(scope: !2017, file: !485, line: 490, column: 17)
!2266 = !DILocation(line: 499, column: 35, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2017, file: !485, line: 499, column: 17)
!2268 = !DILocation(line: 499, column: 57, scope: !2267)
!2269 = !DILocation(line: 0, scope: !2017)
!2270 = !DILocation(line: 502, column: 11, scope: !2017)
!2271 = !DILocation(line: 504, column: 17, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2017, file: !485, line: 503, column: 17)
!2273 = !DILocation(line: 507, column: 11, scope: !2017)
!2274 = !DILocation(line: 508, column: 17, scope: !2017)
!2275 = !DILocation(line: 517, column: 15, scope: !2018)
!2276 = !DILocation(line: 517, column: 40, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2018, file: !485, line: 517, column: 15)
!2278 = !DILocation(line: 517, column: 47, scope: !2277)
!2279 = !DILocation(line: 517, column: 18, scope: !2277)
!2280 = !DILocation(line: 521, column: 17, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2018, file: !485, line: 521, column: 15)
!2282 = !DILocation(line: 521, column: 15, scope: !2018)
!2283 = !DILocation(line: 525, column: 11, scope: !2018)
!2284 = !DILocation(line: 537, column: 15, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2018, file: !485, line: 536, column: 15)
!2286 = !DILocation(line: 544, column: 15, scope: !2018)
!2287 = !DILocation(line: 546, column: 19, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !485, line: 545, column: 13)
!2289 = distinct !DILexicalBlock(scope: !2018, file: !485, line: 544, column: 15)
!2290 = !DILocation(line: 549, column: 19, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !485, line: 549, column: 19)
!2292 = !DILocation(line: 549, column: 30, scope: !2291)
!2293 = !DILocation(line: 558, column: 15, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !485, line: 558, column: 15)
!2295 = distinct !DILexicalBlock(scope: !2288, file: !485, line: 558, column: 15)
!2296 = !DILocation(line: 558, column: 15, scope: !2295)
!2297 = !DILocation(line: 559, column: 15, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !485, line: 559, column: 15)
!2299 = distinct !DILexicalBlock(scope: !2288, file: !485, line: 559, column: 15)
!2300 = !DILocation(line: 559, column: 15, scope: !2299)
!2301 = !DILocation(line: 560, column: 15, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !485, line: 560, column: 15)
!2303 = distinct !DILexicalBlock(scope: !2288, file: !485, line: 560, column: 15)
!2304 = !DILocation(line: 560, column: 15, scope: !2303)
!2305 = !DILocation(line: 562, column: 13, scope: !2288)
!2306 = !DILocation(line: 602, column: 17, scope: !2021)
!2307 = !DILocation(line: 0, scope: !2021)
!2308 = !DILocation(line: 605, column: 29, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2025, file: !485, line: 603, column: 15)
!2310 = !DILocation(line: 605, column: 27, scope: !2309)
!2311 = !DILocation(line: 606, column: 15, scope: !2309)
!2312 = !DILocation(line: 609, column: 17, scope: !2024)
!2313 = !DILocation(line: 0, scope: !2084, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 609, column: 32, scope: !2024)
!2315 = !DILocation(line: 0, scope: !2092, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 1137, column: 3, scope: !2084, inlinedAt: !2314)
!2317 = !DILocation(line: 59, column: 10, scope: !2092, inlinedAt: !2316)
!2318 = !DILocation(line: 613, column: 29, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2024, file: !485, line: 613, column: 21)
!2320 = !DILocation(line: 613, column: 21, scope: !2024)
!2321 = !DILocation(line: 614, column: 29, scope: !2319)
!2322 = !DILocation(line: 614, column: 19, scope: !2319)
!2323 = !DILocation(line: 618, column: 21, scope: !2027)
!2324 = !DILocation(line: 620, column: 54, scope: !2027)
!2325 = !DILocation(line: 619, column: 36, scope: !2027)
!2326 = !DILocation(line: 621, column: 25, scope: !2027)
!2327 = !DILocation(line: 631, column: 38, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2036, file: !485, line: 629, column: 23)
!2329 = !DILocation(line: 631, column: 48, scope: !2328)
!2330 = !DILocation(line: 626, column: 25, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2037, file: !485, line: 624, column: 23)
!2332 = !DILocation(line: 631, column: 51, scope: !2328)
!2333 = !DILocation(line: 631, column: 25, scope: !2328)
!2334 = !DILocation(line: 632, column: 28, scope: !2328)
!2335 = !DILocation(line: 631, column: 34, scope: !2328)
!2336 = distinct !{!2336, !2333, !2334, !910}
!2337 = !DILocation(line: 0, scope: !2032)
!2338 = !DILocation(line: 646, column: 29, scope: !2034)
!2339 = !DILocation(line: 649, column: 39, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2032, file: !485, line: 648, column: 29)
!2341 = !DILocation(line: 649, column: 31, scope: !2340)
!2342 = !DILocation(line: 648, column: 60, scope: !2340)
!2343 = !DILocation(line: 648, column: 50, scope: !2340)
!2344 = !DILocation(line: 648, column: 29, scope: !2032)
!2345 = distinct !{!2345, !2344, !2346, !910}
!2346 = !DILocation(line: 654, column: 33, scope: !2032)
!2347 = !DILocation(line: 657, column: 43, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2035, file: !485, line: 657, column: 29)
!2349 = !DILocalVariable(name: "wc", arg: 1, scope: !2350, file: !2351, line: 865, type: !2354)
!2350 = distinct !DISubprogram(name: "c32isprint", scope: !2351, file: !2351, line: 865, type: !2352, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2356)
!2351 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!70, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2355, line: 20, baseType: !76)
!2355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2356 = !{!2349}
!2357 = !DILocation(line: 0, scope: !2350, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 657, column: 31, scope: !2348)
!2359 = !DILocation(line: 871, column: 10, scope: !2350, inlinedAt: !2358)
!2360 = !DILocation(line: 657, column: 31, scope: !2348)
!2361 = !DILocation(line: 664, column: 23, scope: !2027)
!2362 = !DILocation(line: 665, column: 19, scope: !2028)
!2363 = !DILocation(line: 666, column: 15, scope: !2025)
!2364 = !DILocation(line: 0, scope: !2025)
!2365 = !DILocation(line: 670, column: 19, scope: !2041)
!2366 = !DILocation(line: 670, column: 23, scope: !2041)
!2367 = !DILocation(line: 674, column: 33, scope: !2040)
!2368 = !DILocation(line: 0, scope: !2040)
!2369 = !DILocation(line: 676, column: 17, scope: !2040)
!2370 = !DILocation(line: 398, column: 12, scope: !2011)
!2371 = !DILocation(line: 678, column: 43, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !485, line: 678, column: 25)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !485, line: 677, column: 19)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !485, line: 676, column: 17)
!2375 = distinct !DILexicalBlock(scope: !2040, file: !485, line: 676, column: 17)
!2376 = !DILocation(line: 680, column: 25, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !485, line: 680, column: 25)
!2378 = distinct !DILexicalBlock(scope: !2372, file: !485, line: 679, column: 23)
!2379 = !DILocation(line: 680, column: 25, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !485, line: 680, column: 25)
!2381 = !DILocation(line: 680, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !485, line: 680, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !485, line: 680, column: 25)
!2384 = distinct !DILexicalBlock(scope: !2380, file: !485, line: 680, column: 25)
!2385 = !DILocation(line: 680, column: 25, scope: !2383)
!2386 = !DILocation(line: 680, column: 25, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !485, line: 680, column: 25)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !485, line: 680, column: 25)
!2389 = !DILocation(line: 680, column: 25, scope: !2388)
!2390 = !DILocation(line: 680, column: 25, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !485, line: 680, column: 25)
!2392 = distinct !DILexicalBlock(scope: !2384, file: !485, line: 680, column: 25)
!2393 = !DILocation(line: 680, column: 25, scope: !2392)
!2394 = !DILocation(line: 680, column: 25, scope: !2384)
!2395 = !DILocation(line: 680, column: 25, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !485, line: 680, column: 25)
!2397 = distinct !DILexicalBlock(scope: !2377, file: !485, line: 680, column: 25)
!2398 = !DILocation(line: 680, column: 25, scope: !2397)
!2399 = !DILocation(line: 681, column: 25, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !485, line: 681, column: 25)
!2401 = distinct !DILexicalBlock(scope: !2378, file: !485, line: 681, column: 25)
!2402 = !DILocation(line: 681, column: 25, scope: !2401)
!2403 = !DILocation(line: 682, column: 25, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !485, line: 682, column: 25)
!2405 = distinct !DILexicalBlock(scope: !2378, file: !485, line: 682, column: 25)
!2406 = !DILocation(line: 682, column: 25, scope: !2405)
!2407 = !DILocation(line: 683, column: 38, scope: !2378)
!2408 = !DILocation(line: 683, column: 33, scope: !2378)
!2409 = !DILocation(line: 684, column: 23, scope: !2378)
!2410 = !DILocation(line: 685, column: 30, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2372, file: !485, line: 685, column: 30)
!2412 = !DILocation(line: 685, column: 30, scope: !2372)
!2413 = !DILocation(line: 687, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !485, line: 687, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !485, line: 687, column: 25)
!2416 = distinct !DILexicalBlock(scope: !2411, file: !485, line: 686, column: 23)
!2417 = !DILocation(line: 687, column: 25, scope: !2415)
!2418 = !DILocation(line: 689, column: 23, scope: !2416)
!2419 = !DILocation(line: 690, column: 35, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2373, file: !485, line: 690, column: 25)
!2421 = !DILocation(line: 690, column: 30, scope: !2420)
!2422 = !DILocation(line: 690, column: 25, scope: !2373)
!2423 = !DILocation(line: 692, column: 21, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !485, line: 692, column: 21)
!2425 = distinct !DILexicalBlock(scope: !2373, file: !485, line: 692, column: 21)
!2426 = !DILocation(line: 692, column: 21, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !485, line: 692, column: 21)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !485, line: 692, column: 21)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !485, line: 692, column: 21)
!2430 = !DILocation(line: 692, column: 21, scope: !2428)
!2431 = !DILocation(line: 692, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !485, line: 692, column: 21)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !485, line: 692, column: 21)
!2434 = !DILocation(line: 692, column: 21, scope: !2433)
!2435 = !DILocation(line: 692, column: 21, scope: !2429)
!2436 = !DILocation(line: 0, scope: !2373)
!2437 = !DILocation(line: 693, column: 21, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !485, line: 693, column: 21)
!2439 = distinct !DILexicalBlock(scope: !2373, file: !485, line: 693, column: 21)
!2440 = !DILocation(line: 693, column: 21, scope: !2439)
!2441 = !DILocation(line: 694, column: 25, scope: !2373)
!2442 = !DILocation(line: 676, column: 17, scope: !2374)
!2443 = distinct !{!2443, !2444, !2445}
!2444 = !DILocation(line: 676, column: 17, scope: !2375)
!2445 = !DILocation(line: 695, column: 19, scope: !2375)
!2446 = !DILocation(line: 409, column: 30, scope: !2162)
!2447 = !DILocation(line: 702, column: 34, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2011, file: !485, line: 702, column: 11)
!2449 = !DILocation(line: 704, column: 14, scope: !2448)
!2450 = !DILocation(line: 705, column: 14, scope: !2448)
!2451 = !DILocation(line: 705, column: 35, scope: !2448)
!2452 = !DILocation(line: 705, column: 17, scope: !2448)
!2453 = !DILocation(line: 705, column: 47, scope: !2448)
!2454 = !DILocation(line: 705, column: 65, scope: !2448)
!2455 = !DILocation(line: 706, column: 11, scope: !2448)
!2456 = !DILocation(line: 702, column: 11, scope: !2011)
!2457 = !DILocation(line: 395, column: 15, scope: !2009)
!2458 = !DILocation(line: 709, column: 5, scope: !2011)
!2459 = !DILocation(line: 710, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2011, file: !485, line: 710, column: 7)
!2461 = !DILocation(line: 710, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2460, file: !485, line: 710, column: 7)
!2463 = !DILocation(line: 710, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !485, line: 710, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !485, line: 710, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !485, line: 710, column: 7)
!2467 = !DILocation(line: 710, column: 7, scope: !2465)
!2468 = !DILocation(line: 710, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !485, line: 710, column: 7)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !485, line: 710, column: 7)
!2471 = !DILocation(line: 710, column: 7, scope: !2470)
!2472 = !DILocation(line: 710, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !485, line: 710, column: 7)
!2474 = distinct !DILexicalBlock(scope: !2466, file: !485, line: 710, column: 7)
!2475 = !DILocation(line: 710, column: 7, scope: !2474)
!2476 = !DILocation(line: 710, column: 7, scope: !2466)
!2477 = !DILocation(line: 710, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !485, line: 710, column: 7)
!2479 = distinct !DILexicalBlock(scope: !2460, file: !485, line: 710, column: 7)
!2480 = !DILocation(line: 710, column: 7, scope: !2479)
!2481 = !DILocation(line: 712, column: 5, scope: !2011)
!2482 = !DILocation(line: 713, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !485, line: 713, column: 7)
!2484 = distinct !DILexicalBlock(scope: !2011, file: !485, line: 713, column: 7)
!2485 = !DILocation(line: 417, column: 21, scope: !2011)
!2486 = !DILocation(line: 713, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !485, line: 713, column: 7)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !485, line: 713, column: 7)
!2489 = distinct !DILexicalBlock(scope: !2483, file: !485, line: 713, column: 7)
!2490 = !DILocation(line: 713, column: 7, scope: !2488)
!2491 = !DILocation(line: 713, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !485, line: 713, column: 7)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !485, line: 713, column: 7)
!2494 = !DILocation(line: 713, column: 7, scope: !2493)
!2495 = !DILocation(line: 713, column: 7, scope: !2489)
!2496 = !DILocation(line: 714, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !485, line: 714, column: 7)
!2498 = distinct !DILexicalBlock(scope: !2011, file: !485, line: 714, column: 7)
!2499 = !DILocation(line: 714, column: 7, scope: !2498)
!2500 = !DILocation(line: 716, column: 13, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2011, file: !485, line: 716, column: 11)
!2502 = !DILocation(line: 716, column: 11, scope: !2011)
!2503 = !DILocation(line: 718, column: 5, scope: !2012)
!2504 = !DILocation(line: 395, column: 82, scope: !2012)
!2505 = !DILocation(line: 395, column: 3, scope: !2012)
!2506 = distinct !{!2506, !2158, !2507, !910}
!2507 = !DILocation(line: 718, column: 5, scope: !2009)
!2508 = !DILocation(line: 720, column: 11, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !1977, file: !485, line: 720, column: 7)
!2510 = !DILocation(line: 720, column: 16, scope: !2509)
!2511 = !DILocation(line: 728, column: 51, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !1977, file: !485, line: 728, column: 7)
!2513 = !DILocation(line: 731, column: 11, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !485, line: 731, column: 11)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !485, line: 730, column: 5)
!2516 = !DILocation(line: 731, column: 11, scope: !2515)
!2517 = !DILocation(line: 732, column: 16, scope: !2514)
!2518 = !DILocation(line: 732, column: 9, scope: !2514)
!2519 = !DILocation(line: 736, column: 18, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2514, file: !485, line: 736, column: 16)
!2521 = !DILocation(line: 736, column: 29, scope: !2520)
!2522 = !DILocation(line: 745, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !1977, file: !485, line: 745, column: 7)
!2524 = !DILocation(line: 745, column: 20, scope: !2523)
!2525 = !DILocation(line: 746, column: 12, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !485, line: 746, column: 5)
!2527 = distinct !DILexicalBlock(scope: !2523, file: !485, line: 746, column: 5)
!2528 = !DILocation(line: 746, column: 5, scope: !2527)
!2529 = !DILocation(line: 747, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !485, line: 747, column: 7)
!2531 = distinct !DILexicalBlock(scope: !2526, file: !485, line: 747, column: 7)
!2532 = !DILocation(line: 747, column: 7, scope: !2531)
!2533 = !DILocation(line: 746, column: 39, scope: !2526)
!2534 = distinct !{!2534, !2528, !2535, !910}
!2535 = !DILocation(line: 747, column: 7, scope: !2527)
!2536 = !DILocation(line: 749, column: 11, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !1977, file: !485, line: 749, column: 7)
!2538 = !DILocation(line: 749, column: 7, scope: !1977)
!2539 = !DILocation(line: 750, column: 5, scope: !2537)
!2540 = !DILocation(line: 750, column: 17, scope: !2537)
!2541 = !DILocation(line: 753, column: 2, scope: !1977)
!2542 = !DILocation(line: 756, column: 51, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !1977, file: !485, line: 756, column: 7)
!2544 = !DILocation(line: 756, column: 21, scope: !2543)
!2545 = !DILocation(line: 760, column: 42, scope: !1977)
!2546 = !DILocation(line: 758, column: 10, scope: !1977)
!2547 = !DILocation(line: 758, column: 3, scope: !1977)
!2548 = !DILocation(line: 762, column: 1, scope: !1977)
!2549 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !987, file: !987, line: 98, type: !2550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!108}
!2552 = !DISubprogram(name: "strlen", scope: !983, file: !983, line: 407, type: !2553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!110, !111}
!2555 = !DISubprogram(name: "iswprint", scope: !2556, file: !2556, line: 120, type: !2352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2556 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2557 = distinct !DISubprogram(name: "quotearg_alloc", scope: !485, file: !485, line: 788, type: !2558, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!105, !111, !108, !1870}
!2560 = !{!2561, !2562, !2563}
!2561 = !DILocalVariable(name: "arg", arg: 1, scope: !2557, file: !485, line: 788, type: !111)
!2562 = !DILocalVariable(name: "argsize", arg: 2, scope: !2557, file: !485, line: 788, type: !108)
!2563 = !DILocalVariable(name: "o", arg: 3, scope: !2557, file: !485, line: 789, type: !1870)
!2564 = !DILocation(line: 0, scope: !2557)
!2565 = !DILocalVariable(name: "arg", arg: 1, scope: !2566, file: !485, line: 801, type: !111)
!2566 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !485, file: !485, line: 801, type: !2567, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!105, !111, !108, !729, !1870}
!2569 = !{!2565, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577}
!2570 = !DILocalVariable(name: "argsize", arg: 2, scope: !2566, file: !485, line: 801, type: !108)
!2571 = !DILocalVariable(name: "size", arg: 3, scope: !2566, file: !485, line: 801, type: !729)
!2572 = !DILocalVariable(name: "o", arg: 4, scope: !2566, file: !485, line: 802, type: !1870)
!2573 = !DILocalVariable(name: "p", scope: !2566, file: !485, line: 804, type: !1870)
!2574 = !DILocalVariable(name: "saved_errno", scope: !2566, file: !485, line: 805, type: !70)
!2575 = !DILocalVariable(name: "flags", scope: !2566, file: !485, line: 807, type: !70)
!2576 = !DILocalVariable(name: "bufsize", scope: !2566, file: !485, line: 808, type: !108)
!2577 = !DILocalVariable(name: "buf", scope: !2566, file: !485, line: 812, type: !105)
!2578 = !DILocation(line: 0, scope: !2566, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 791, column: 10, scope: !2557)
!2580 = !DILocation(line: 804, column: 37, scope: !2566, inlinedAt: !2579)
!2581 = !DILocation(line: 805, column: 21, scope: !2566, inlinedAt: !2579)
!2582 = !DILocation(line: 807, column: 18, scope: !2566, inlinedAt: !2579)
!2583 = !DILocation(line: 807, column: 24, scope: !2566, inlinedAt: !2579)
!2584 = !DILocation(line: 808, column: 72, scope: !2566, inlinedAt: !2579)
!2585 = !DILocation(line: 809, column: 56, scope: !2566, inlinedAt: !2579)
!2586 = !DILocation(line: 810, column: 49, scope: !2566, inlinedAt: !2579)
!2587 = !DILocation(line: 811, column: 49, scope: !2566, inlinedAt: !2579)
!2588 = !DILocation(line: 808, column: 20, scope: !2566, inlinedAt: !2579)
!2589 = !DILocation(line: 811, column: 62, scope: !2566, inlinedAt: !2579)
!2590 = !DILocation(line: 812, column: 15, scope: !2566, inlinedAt: !2579)
!2591 = !DILocation(line: 813, column: 60, scope: !2566, inlinedAt: !2579)
!2592 = !DILocation(line: 815, column: 32, scope: !2566, inlinedAt: !2579)
!2593 = !DILocation(line: 815, column: 47, scope: !2566, inlinedAt: !2579)
!2594 = !DILocation(line: 813, column: 3, scope: !2566, inlinedAt: !2579)
!2595 = !DILocation(line: 816, column: 9, scope: !2566, inlinedAt: !2579)
!2596 = !DILocation(line: 791, column: 3, scope: !2557)
!2597 = !DILocation(line: 0, scope: !2566)
!2598 = !DILocation(line: 804, column: 37, scope: !2566)
!2599 = !DILocation(line: 805, column: 21, scope: !2566)
!2600 = !DILocation(line: 807, column: 18, scope: !2566)
!2601 = !DILocation(line: 807, column: 27, scope: !2566)
!2602 = !DILocation(line: 807, column: 24, scope: !2566)
!2603 = !DILocation(line: 808, column: 72, scope: !2566)
!2604 = !DILocation(line: 809, column: 56, scope: !2566)
!2605 = !DILocation(line: 810, column: 49, scope: !2566)
!2606 = !DILocation(line: 811, column: 49, scope: !2566)
!2607 = !DILocation(line: 808, column: 20, scope: !2566)
!2608 = !DILocation(line: 811, column: 62, scope: !2566)
!2609 = !DILocation(line: 812, column: 15, scope: !2566)
!2610 = !DILocation(line: 813, column: 60, scope: !2566)
!2611 = !DILocation(line: 815, column: 32, scope: !2566)
!2612 = !DILocation(line: 815, column: 47, scope: !2566)
!2613 = !DILocation(line: 813, column: 3, scope: !2566)
!2614 = !DILocation(line: 816, column: 9, scope: !2566)
!2615 = !DILocation(line: 817, column: 7, scope: !2566)
!2616 = !DILocation(line: 818, column: 11, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2566, file: !485, line: 817, column: 7)
!2618 = !{!1319, !1319, i64 0}
!2619 = !DILocation(line: 818, column: 5, scope: !2617)
!2620 = !DILocation(line: 819, column: 3, scope: !2566)
!2621 = distinct !DISubprogram(name: "quotearg_free", scope: !485, file: !485, line: 837, type: !440, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2622)
!2622 = !{!2623, !2624}
!2623 = !DILocalVariable(name: "sv", scope: !2621, file: !485, line: 839, type: !571)
!2624 = !DILocalVariable(name: "i", scope: !2625, file: !485, line: 840, type: !70)
!2625 = distinct !DILexicalBlock(scope: !2621, file: !485, line: 840, column: 3)
!2626 = !DILocation(line: 839, column: 24, scope: !2621)
!2627 = !DILocation(line: 0, scope: !2621)
!2628 = !DILocation(line: 0, scope: !2625)
!2629 = !DILocation(line: 840, column: 21, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2625, file: !485, line: 840, column: 3)
!2631 = !DILocation(line: 840, column: 3, scope: !2625)
!2632 = !DILocation(line: 842, column: 13, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2621, file: !485, line: 842, column: 7)
!2634 = !{!2635, !797, i64 8}
!2635 = !{!"slotvec", !1319, i64 0, !797, i64 8}
!2636 = !DILocation(line: 842, column: 17, scope: !2633)
!2637 = !DILocation(line: 842, column: 7, scope: !2621)
!2638 = !DILocation(line: 841, column: 17, scope: !2630)
!2639 = !DILocation(line: 841, column: 5, scope: !2630)
!2640 = !DILocation(line: 840, column: 32, scope: !2630)
!2641 = distinct !{!2641, !2631, !2642, !910}
!2642 = !DILocation(line: 841, column: 20, scope: !2625)
!2643 = !DILocation(line: 844, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2633, file: !485, line: 843, column: 5)
!2645 = !DILocation(line: 845, column: 21, scope: !2644)
!2646 = !{!2635, !1319, i64 0}
!2647 = !DILocation(line: 846, column: 20, scope: !2644)
!2648 = !DILocation(line: 847, column: 5, scope: !2644)
!2649 = !DILocation(line: 848, column: 10, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2621, file: !485, line: 848, column: 7)
!2651 = !DILocation(line: 848, column: 7, scope: !2621)
!2652 = !DILocation(line: 850, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !485, line: 849, column: 5)
!2654 = !DILocation(line: 851, column: 15, scope: !2653)
!2655 = !DILocation(line: 852, column: 5, scope: !2653)
!2656 = !DILocation(line: 853, column: 10, scope: !2621)
!2657 = !DILocation(line: 854, column: 1, scope: !2621)
!2658 = distinct !DISubprogram(name: "quotearg_n", scope: !485, file: !485, line: 919, type: !980, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2659)
!2659 = !{!2660, !2661}
!2660 = !DILocalVariable(name: "n", arg: 1, scope: !2658, file: !485, line: 919, type: !70)
!2661 = !DILocalVariable(name: "arg", arg: 2, scope: !2658, file: !485, line: 919, type: !111)
!2662 = !DILocation(line: 0, scope: !2658)
!2663 = !DILocation(line: 921, column: 10, scope: !2658)
!2664 = !DILocation(line: 921, column: 3, scope: !2658)
!2665 = distinct !DISubprogram(name: "quotearg_n_options", scope: !485, file: !485, line: 866, type: !2666, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!105, !70, !111, !108, !1870}
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2679, !2680, !2682, !2683, !2684}
!2669 = !DILocalVariable(name: "n", arg: 1, scope: !2665, file: !485, line: 866, type: !70)
!2670 = !DILocalVariable(name: "arg", arg: 2, scope: !2665, file: !485, line: 866, type: !111)
!2671 = !DILocalVariable(name: "argsize", arg: 3, scope: !2665, file: !485, line: 866, type: !108)
!2672 = !DILocalVariable(name: "options", arg: 4, scope: !2665, file: !485, line: 867, type: !1870)
!2673 = !DILocalVariable(name: "saved_errno", scope: !2665, file: !485, line: 869, type: !70)
!2674 = !DILocalVariable(name: "sv", scope: !2665, file: !485, line: 871, type: !571)
!2675 = !DILocalVariable(name: "nslots_max", scope: !2665, file: !485, line: 873, type: !70)
!2676 = !DILocalVariable(name: "preallocated", scope: !2677, file: !485, line: 879, type: !171)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !485, line: 878, column: 5)
!2678 = distinct !DILexicalBlock(scope: !2665, file: !485, line: 877, column: 7)
!2679 = !DILocalVariable(name: "new_nslots", scope: !2677, file: !485, line: 880, type: !742)
!2680 = !DILocalVariable(name: "size", scope: !2681, file: !485, line: 891, type: !108)
!2681 = distinct !DILexicalBlock(scope: !2665, file: !485, line: 890, column: 3)
!2682 = !DILocalVariable(name: "val", scope: !2681, file: !485, line: 892, type: !105)
!2683 = !DILocalVariable(name: "flags", scope: !2681, file: !485, line: 894, type: !70)
!2684 = !DILocalVariable(name: "qsize", scope: !2681, file: !485, line: 895, type: !108)
!2685 = distinct !DIAssignID()
!2686 = !DILocation(line: 0, scope: !2677)
!2687 = !DILocation(line: 0, scope: !2665)
!2688 = !DILocation(line: 869, column: 21, scope: !2665)
!2689 = !DILocation(line: 871, column: 24, scope: !2665)
!2690 = !DILocation(line: 874, column: 17, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2665, file: !485, line: 874, column: 7)
!2692 = !DILocation(line: 875, column: 5, scope: !2691)
!2693 = !DILocation(line: 877, column: 7, scope: !2678)
!2694 = !DILocation(line: 877, column: 14, scope: !2678)
!2695 = !DILocation(line: 877, column: 7, scope: !2665)
!2696 = !DILocation(line: 879, column: 31, scope: !2677)
!2697 = !DILocation(line: 880, column: 7, scope: !2677)
!2698 = !DILocation(line: 880, column: 26, scope: !2677)
!2699 = !DILocation(line: 880, column: 13, scope: !2677)
!2700 = distinct !DIAssignID()
!2701 = !DILocation(line: 882, column: 31, scope: !2677)
!2702 = !DILocation(line: 883, column: 33, scope: !2677)
!2703 = !DILocation(line: 883, column: 42, scope: !2677)
!2704 = !DILocation(line: 883, column: 31, scope: !2677)
!2705 = !DILocation(line: 882, column: 22, scope: !2677)
!2706 = !DILocation(line: 882, column: 15, scope: !2677)
!2707 = !DILocation(line: 884, column: 11, scope: !2677)
!2708 = !DILocation(line: 885, column: 15, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2677, file: !485, line: 884, column: 11)
!2710 = !{i64 0, i64 8, !2618, i64 8, i64 8, !796}
!2711 = !DILocation(line: 885, column: 9, scope: !2709)
!2712 = !DILocation(line: 886, column: 20, scope: !2677)
!2713 = !DILocation(line: 886, column: 18, scope: !2677)
!2714 = !DILocation(line: 886, column: 32, scope: !2677)
!2715 = !DILocation(line: 886, column: 43, scope: !2677)
!2716 = !DILocation(line: 886, column: 53, scope: !2677)
!2717 = !DILocation(line: 0, scope: !2092, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 886, column: 7, scope: !2677)
!2719 = !DILocation(line: 59, column: 10, scope: !2092, inlinedAt: !2718)
!2720 = !DILocation(line: 887, column: 16, scope: !2677)
!2721 = !DILocation(line: 887, column: 14, scope: !2677)
!2722 = !DILocation(line: 888, column: 5, scope: !2678)
!2723 = !DILocation(line: 888, column: 5, scope: !2677)
!2724 = !DILocation(line: 891, column: 19, scope: !2681)
!2725 = !DILocation(line: 891, column: 25, scope: !2681)
!2726 = !DILocation(line: 0, scope: !2681)
!2727 = !DILocation(line: 892, column: 23, scope: !2681)
!2728 = !DILocation(line: 894, column: 26, scope: !2681)
!2729 = !DILocation(line: 894, column: 32, scope: !2681)
!2730 = !DILocation(line: 896, column: 55, scope: !2681)
!2731 = !DILocation(line: 897, column: 55, scope: !2681)
!2732 = !DILocation(line: 898, column: 55, scope: !2681)
!2733 = !DILocation(line: 899, column: 55, scope: !2681)
!2734 = !DILocation(line: 895, column: 20, scope: !2681)
!2735 = !DILocation(line: 901, column: 14, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2681, file: !485, line: 901, column: 9)
!2737 = !DILocation(line: 901, column: 9, scope: !2681)
!2738 = !DILocation(line: 903, column: 35, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !485, line: 902, column: 7)
!2740 = !DILocation(line: 903, column: 20, scope: !2739)
!2741 = !DILocation(line: 904, column: 17, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2739, file: !485, line: 904, column: 13)
!2743 = !DILocation(line: 904, column: 13, scope: !2739)
!2744 = !DILocation(line: 905, column: 11, scope: !2742)
!2745 = !DILocation(line: 906, column: 27, scope: !2739)
!2746 = !DILocation(line: 906, column: 19, scope: !2739)
!2747 = !DILocation(line: 907, column: 69, scope: !2739)
!2748 = !DILocation(line: 909, column: 44, scope: !2739)
!2749 = !DILocation(line: 910, column: 44, scope: !2739)
!2750 = !DILocation(line: 907, column: 9, scope: !2739)
!2751 = !DILocation(line: 911, column: 7, scope: !2739)
!2752 = !DILocation(line: 913, column: 11, scope: !2681)
!2753 = !DILocation(line: 914, column: 5, scope: !2681)
!2754 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !485, file: !485, line: 925, type: !2755, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!105, !70, !111, !108}
!2757 = !{!2758, !2759, !2760}
!2758 = !DILocalVariable(name: "n", arg: 1, scope: !2754, file: !485, line: 925, type: !70)
!2759 = !DILocalVariable(name: "arg", arg: 2, scope: !2754, file: !485, line: 925, type: !111)
!2760 = !DILocalVariable(name: "argsize", arg: 3, scope: !2754, file: !485, line: 925, type: !108)
!2761 = !DILocation(line: 0, scope: !2754)
!2762 = !DILocation(line: 927, column: 10, scope: !2754)
!2763 = !DILocation(line: 927, column: 3, scope: !2754)
!2764 = distinct !DISubprogram(name: "quotearg", scope: !485, file: !485, line: 931, type: !989, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2765)
!2765 = !{!2766}
!2766 = !DILocalVariable(name: "arg", arg: 1, scope: !2764, file: !485, line: 931, type: !111)
!2767 = !DILocation(line: 0, scope: !2764)
!2768 = !DILocation(line: 0, scope: !2658, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 933, column: 10, scope: !2764)
!2770 = !DILocation(line: 921, column: 10, scope: !2658, inlinedAt: !2769)
!2771 = !DILocation(line: 933, column: 3, scope: !2764)
!2772 = distinct !DISubprogram(name: "quotearg_mem", scope: !485, file: !485, line: 937, type: !2773, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!105, !111, !108}
!2775 = !{!2776, !2777}
!2776 = !DILocalVariable(name: "arg", arg: 1, scope: !2772, file: !485, line: 937, type: !111)
!2777 = !DILocalVariable(name: "argsize", arg: 2, scope: !2772, file: !485, line: 937, type: !108)
!2778 = !DILocation(line: 0, scope: !2772)
!2779 = !DILocation(line: 0, scope: !2754, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 939, column: 10, scope: !2772)
!2781 = !DILocation(line: 927, column: 10, scope: !2754, inlinedAt: !2780)
!2782 = !DILocation(line: 939, column: 3, scope: !2772)
!2783 = distinct !DISubprogram(name: "quotearg_n_style", scope: !485, file: !485, line: 943, type: !2784, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!105, !70, !508, !111}
!2786 = !{!2787, !2788, !2789, !2790}
!2787 = !DILocalVariable(name: "n", arg: 1, scope: !2783, file: !485, line: 943, type: !70)
!2788 = !DILocalVariable(name: "s", arg: 2, scope: !2783, file: !485, line: 943, type: !508)
!2789 = !DILocalVariable(name: "arg", arg: 3, scope: !2783, file: !485, line: 943, type: !111)
!2790 = !DILocalVariable(name: "o", scope: !2783, file: !485, line: 945, type: !1871)
!2791 = distinct !DIAssignID()
!2792 = !DILocation(line: 0, scope: !2783)
!2793 = !DILocation(line: 945, column: 3, scope: !2783)
!2794 = !{!2795}
!2795 = distinct !{!2795, !2796, !"quoting_options_from_style: argument 0"}
!2796 = distinct !{!2796, !"quoting_options_from_style"}
!2797 = !DILocation(line: 945, column: 36, scope: !2783)
!2798 = !DILocalVariable(name: "style", arg: 1, scope: !2799, file: !485, line: 183, type: !508)
!2799 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !485, file: !485, line: 183, type: !2800, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!523, !508}
!2802 = !{!2798, !2803}
!2803 = !DILocalVariable(name: "o", scope: !2799, file: !485, line: 185, type: !523)
!2804 = !DILocation(line: 0, scope: !2799, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 945, column: 36, scope: !2783)
!2806 = !DILocation(line: 185, column: 26, scope: !2799, inlinedAt: !2805)
!2807 = distinct !DIAssignID()
!2808 = !DILocation(line: 186, column: 13, scope: !2809, inlinedAt: !2805)
!2809 = distinct !DILexicalBlock(scope: !2799, file: !485, line: 186, column: 7)
!2810 = !DILocation(line: 186, column: 7, scope: !2799, inlinedAt: !2805)
!2811 = !DILocation(line: 187, column: 5, scope: !2809, inlinedAt: !2805)
!2812 = !DILocation(line: 188, column: 11, scope: !2799, inlinedAt: !2805)
!2813 = distinct !DIAssignID()
!2814 = !DILocation(line: 946, column: 10, scope: !2783)
!2815 = !DILocation(line: 947, column: 1, scope: !2783)
!2816 = !DILocation(line: 946, column: 3, scope: !2783)
!2817 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !485, file: !485, line: 950, type: !2818, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!105, !70, !508, !111, !108}
!2820 = !{!2821, !2822, !2823, !2824, !2825}
!2821 = !DILocalVariable(name: "n", arg: 1, scope: !2817, file: !485, line: 950, type: !70)
!2822 = !DILocalVariable(name: "s", arg: 2, scope: !2817, file: !485, line: 950, type: !508)
!2823 = !DILocalVariable(name: "arg", arg: 3, scope: !2817, file: !485, line: 951, type: !111)
!2824 = !DILocalVariable(name: "argsize", arg: 4, scope: !2817, file: !485, line: 951, type: !108)
!2825 = !DILocalVariable(name: "o", scope: !2817, file: !485, line: 953, type: !1871)
!2826 = distinct !DIAssignID()
!2827 = !DILocation(line: 0, scope: !2817)
!2828 = !DILocation(line: 953, column: 3, scope: !2817)
!2829 = !{!2830}
!2830 = distinct !{!2830, !2831, !"quoting_options_from_style: argument 0"}
!2831 = distinct !{!2831, !"quoting_options_from_style"}
!2832 = !DILocation(line: 953, column: 36, scope: !2817)
!2833 = !DILocation(line: 0, scope: !2799, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 953, column: 36, scope: !2817)
!2835 = !DILocation(line: 185, column: 26, scope: !2799, inlinedAt: !2834)
!2836 = distinct !DIAssignID()
!2837 = !DILocation(line: 186, column: 13, scope: !2809, inlinedAt: !2834)
!2838 = !DILocation(line: 186, column: 7, scope: !2799, inlinedAt: !2834)
!2839 = !DILocation(line: 187, column: 5, scope: !2809, inlinedAt: !2834)
!2840 = !DILocation(line: 188, column: 11, scope: !2799, inlinedAt: !2834)
!2841 = distinct !DIAssignID()
!2842 = !DILocation(line: 954, column: 10, scope: !2817)
!2843 = !DILocation(line: 955, column: 1, scope: !2817)
!2844 = !DILocation(line: 954, column: 3, scope: !2817)
!2845 = distinct !DISubprogram(name: "quotearg_style", scope: !485, file: !485, line: 958, type: !2846, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!105, !508, !111}
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "s", arg: 1, scope: !2845, file: !485, line: 958, type: !508)
!2850 = !DILocalVariable(name: "arg", arg: 2, scope: !2845, file: !485, line: 958, type: !111)
!2851 = distinct !DIAssignID()
!2852 = !DILocation(line: 0, scope: !2845)
!2853 = !DILocation(line: 0, scope: !2783, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 960, column: 10, scope: !2845)
!2855 = !DILocation(line: 945, column: 3, scope: !2783, inlinedAt: !2854)
!2856 = !{!2857}
!2857 = distinct !{!2857, !2858, !"quoting_options_from_style: argument 0"}
!2858 = distinct !{!2858, !"quoting_options_from_style"}
!2859 = !DILocation(line: 945, column: 36, scope: !2783, inlinedAt: !2854)
!2860 = !DILocation(line: 0, scope: !2799, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 945, column: 36, scope: !2783, inlinedAt: !2854)
!2862 = !DILocation(line: 185, column: 26, scope: !2799, inlinedAt: !2861)
!2863 = distinct !DIAssignID()
!2864 = !DILocation(line: 186, column: 13, scope: !2809, inlinedAt: !2861)
!2865 = !DILocation(line: 186, column: 7, scope: !2799, inlinedAt: !2861)
!2866 = !DILocation(line: 187, column: 5, scope: !2809, inlinedAt: !2861)
!2867 = !DILocation(line: 188, column: 11, scope: !2799, inlinedAt: !2861)
!2868 = distinct !DIAssignID()
!2869 = !DILocation(line: 946, column: 10, scope: !2783, inlinedAt: !2854)
!2870 = !DILocation(line: 947, column: 1, scope: !2783, inlinedAt: !2854)
!2871 = !DILocation(line: 960, column: 3, scope: !2845)
!2872 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !485, file: !485, line: 964, type: !2873, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!105, !508, !111, !108}
!2875 = !{!2876, !2877, !2878}
!2876 = !DILocalVariable(name: "s", arg: 1, scope: !2872, file: !485, line: 964, type: !508)
!2877 = !DILocalVariable(name: "arg", arg: 2, scope: !2872, file: !485, line: 964, type: !111)
!2878 = !DILocalVariable(name: "argsize", arg: 3, scope: !2872, file: !485, line: 964, type: !108)
!2879 = distinct !DIAssignID()
!2880 = !DILocation(line: 0, scope: !2872)
!2881 = !DILocation(line: 0, scope: !2817, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 966, column: 10, scope: !2872)
!2883 = !DILocation(line: 953, column: 3, scope: !2817, inlinedAt: !2882)
!2884 = !{!2885}
!2885 = distinct !{!2885, !2886, !"quoting_options_from_style: argument 0"}
!2886 = distinct !{!2886, !"quoting_options_from_style"}
!2887 = !DILocation(line: 953, column: 36, scope: !2817, inlinedAt: !2882)
!2888 = !DILocation(line: 0, scope: !2799, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 953, column: 36, scope: !2817, inlinedAt: !2882)
!2890 = !DILocation(line: 185, column: 26, scope: !2799, inlinedAt: !2889)
!2891 = distinct !DIAssignID()
!2892 = !DILocation(line: 186, column: 13, scope: !2809, inlinedAt: !2889)
!2893 = !DILocation(line: 186, column: 7, scope: !2799, inlinedAt: !2889)
!2894 = !DILocation(line: 187, column: 5, scope: !2809, inlinedAt: !2889)
!2895 = !DILocation(line: 188, column: 11, scope: !2799, inlinedAt: !2889)
!2896 = distinct !DIAssignID()
!2897 = !DILocation(line: 954, column: 10, scope: !2817, inlinedAt: !2882)
!2898 = !DILocation(line: 955, column: 1, scope: !2817, inlinedAt: !2882)
!2899 = !DILocation(line: 966, column: 3, scope: !2872)
!2900 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !485, file: !485, line: 970, type: !2901, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!105, !111, !108, !4}
!2903 = !{!2904, !2905, !2906, !2907}
!2904 = !DILocalVariable(name: "arg", arg: 1, scope: !2900, file: !485, line: 970, type: !111)
!2905 = !DILocalVariable(name: "argsize", arg: 2, scope: !2900, file: !485, line: 970, type: !108)
!2906 = !DILocalVariable(name: "ch", arg: 3, scope: !2900, file: !485, line: 970, type: !4)
!2907 = !DILocalVariable(name: "options", scope: !2900, file: !485, line: 972, type: !523)
!2908 = distinct !DIAssignID()
!2909 = !DILocation(line: 0, scope: !2900)
!2910 = !DILocation(line: 972, column: 3, scope: !2900)
!2911 = !DILocation(line: 973, column: 13, scope: !2900)
!2912 = !{i64 0, i64 4, !863, i64 4, i64 4, !863, i64 8, i64 32, !872, i64 40, i64 8, !796, i64 48, i64 8, !796}
!2913 = distinct !DIAssignID()
!2914 = !DILocation(line: 0, scope: !1890, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 974, column: 3, scope: !2900)
!2916 = !DILocation(line: 147, column: 41, scope: !1890, inlinedAt: !2915)
!2917 = !DILocation(line: 147, column: 62, scope: !1890, inlinedAt: !2915)
!2918 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !2915)
!2919 = !DILocation(line: 148, column: 15, scope: !1890, inlinedAt: !2915)
!2920 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !2915)
!2921 = !DILocation(line: 149, column: 24, scope: !1890, inlinedAt: !2915)
!2922 = !DILocation(line: 150, column: 19, scope: !1890, inlinedAt: !2915)
!2923 = !DILocation(line: 150, column: 24, scope: !1890, inlinedAt: !2915)
!2924 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !2915)
!2925 = !DILocation(line: 975, column: 10, scope: !2900)
!2926 = !DILocation(line: 976, column: 1, scope: !2900)
!2927 = !DILocation(line: 975, column: 3, scope: !2900)
!2928 = distinct !DISubprogram(name: "quotearg_char", scope: !485, file: !485, line: 979, type: !2929, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!105, !111, !4}
!2931 = !{!2932, !2933}
!2932 = !DILocalVariable(name: "arg", arg: 1, scope: !2928, file: !485, line: 979, type: !111)
!2933 = !DILocalVariable(name: "ch", arg: 2, scope: !2928, file: !485, line: 979, type: !4)
!2934 = distinct !DIAssignID()
!2935 = !DILocation(line: 0, scope: !2928)
!2936 = !DILocation(line: 0, scope: !2900, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 981, column: 10, scope: !2928)
!2938 = !DILocation(line: 972, column: 3, scope: !2900, inlinedAt: !2937)
!2939 = !DILocation(line: 973, column: 13, scope: !2900, inlinedAt: !2937)
!2940 = distinct !DIAssignID()
!2941 = !DILocation(line: 0, scope: !1890, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 974, column: 3, scope: !2900, inlinedAt: !2937)
!2943 = !DILocation(line: 147, column: 41, scope: !1890, inlinedAt: !2942)
!2944 = !DILocation(line: 147, column: 62, scope: !1890, inlinedAt: !2942)
!2945 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !2942)
!2946 = !DILocation(line: 148, column: 15, scope: !1890, inlinedAt: !2942)
!2947 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !2942)
!2948 = !DILocation(line: 149, column: 24, scope: !1890, inlinedAt: !2942)
!2949 = !DILocation(line: 150, column: 19, scope: !1890, inlinedAt: !2942)
!2950 = !DILocation(line: 150, column: 24, scope: !1890, inlinedAt: !2942)
!2951 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !2942)
!2952 = !DILocation(line: 975, column: 10, scope: !2900, inlinedAt: !2937)
!2953 = !DILocation(line: 976, column: 1, scope: !2900, inlinedAt: !2937)
!2954 = !DILocation(line: 981, column: 3, scope: !2928)
!2955 = distinct !DISubprogram(name: "quotearg_colon", scope: !485, file: !485, line: 985, type: !989, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2956)
!2956 = !{!2957}
!2957 = !DILocalVariable(name: "arg", arg: 1, scope: !2955, file: !485, line: 985, type: !111)
!2958 = distinct !DIAssignID()
!2959 = !DILocation(line: 0, scope: !2955)
!2960 = !DILocation(line: 0, scope: !2928, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 987, column: 10, scope: !2955)
!2962 = !DILocation(line: 0, scope: !2900, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 981, column: 10, scope: !2928, inlinedAt: !2961)
!2964 = !DILocation(line: 972, column: 3, scope: !2900, inlinedAt: !2963)
!2965 = !DILocation(line: 973, column: 13, scope: !2900, inlinedAt: !2963)
!2966 = distinct !DIAssignID()
!2967 = !DILocation(line: 0, scope: !1890, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 974, column: 3, scope: !2900, inlinedAt: !2963)
!2969 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !2968)
!2970 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !2968)
!2971 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !2968)
!2972 = !DILocation(line: 975, column: 10, scope: !2900, inlinedAt: !2963)
!2973 = !DILocation(line: 976, column: 1, scope: !2900, inlinedAt: !2963)
!2974 = !DILocation(line: 987, column: 3, scope: !2955)
!2975 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !485, file: !485, line: 991, type: !2773, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2976)
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "arg", arg: 1, scope: !2975, file: !485, line: 991, type: !111)
!2978 = !DILocalVariable(name: "argsize", arg: 2, scope: !2975, file: !485, line: 991, type: !108)
!2979 = distinct !DIAssignID()
!2980 = !DILocation(line: 0, scope: !2975)
!2981 = !DILocation(line: 0, scope: !2900, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 993, column: 10, scope: !2975)
!2983 = !DILocation(line: 972, column: 3, scope: !2900, inlinedAt: !2982)
!2984 = !DILocation(line: 973, column: 13, scope: !2900, inlinedAt: !2982)
!2985 = distinct !DIAssignID()
!2986 = !DILocation(line: 0, scope: !1890, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 974, column: 3, scope: !2900, inlinedAt: !2982)
!2988 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !2987)
!2989 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !2987)
!2990 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !2987)
!2991 = !DILocation(line: 975, column: 10, scope: !2900, inlinedAt: !2982)
!2992 = !DILocation(line: 976, column: 1, scope: !2900, inlinedAt: !2982)
!2993 = !DILocation(line: 993, column: 3, scope: !2975)
!2994 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !485, file: !485, line: 997, type: !2784, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !2995)
!2995 = !{!2996, !2997, !2998, !2999}
!2996 = !DILocalVariable(name: "n", arg: 1, scope: !2994, file: !485, line: 997, type: !70)
!2997 = !DILocalVariable(name: "s", arg: 2, scope: !2994, file: !485, line: 997, type: !508)
!2998 = !DILocalVariable(name: "arg", arg: 3, scope: !2994, file: !485, line: 997, type: !111)
!2999 = !DILocalVariable(name: "options", scope: !2994, file: !485, line: 999, type: !523)
!3000 = distinct !DIAssignID()
!3001 = !DILocation(line: 0, scope: !2994)
!3002 = !DILocation(line: 185, column: 26, scope: !2799, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 1000, column: 13, scope: !2994)
!3004 = !DILocation(line: 999, column: 3, scope: !2994)
!3005 = !DILocation(line: 0, scope: !2799, inlinedAt: !3003)
!3006 = !DILocation(line: 186, column: 13, scope: !2809, inlinedAt: !3003)
!3007 = !DILocation(line: 186, column: 7, scope: !2799, inlinedAt: !3003)
!3008 = !DILocation(line: 187, column: 5, scope: !2809, inlinedAt: !3003)
!3009 = !{!3010}
!3010 = distinct !{!3010, !3011, !"quoting_options_from_style: argument 0"}
!3011 = distinct !{!3011, !"quoting_options_from_style"}
!3012 = !DILocation(line: 1000, column: 13, scope: !2994)
!3013 = distinct !DIAssignID()
!3014 = distinct !DIAssignID()
!3015 = !DILocation(line: 0, scope: !1890, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 1001, column: 3, scope: !2994)
!3017 = !DILocation(line: 147, column: 57, scope: !1890, inlinedAt: !3016)
!3018 = !DILocation(line: 149, column: 21, scope: !1890, inlinedAt: !3016)
!3019 = !DILocation(line: 150, column: 6, scope: !1890, inlinedAt: !3016)
!3020 = distinct !DIAssignID()
!3021 = !DILocation(line: 1002, column: 10, scope: !2994)
!3022 = !DILocation(line: 1003, column: 1, scope: !2994)
!3023 = !DILocation(line: 1002, column: 3, scope: !2994)
!3024 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !485, file: !485, line: 1006, type: !3025, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!105, !70, !111, !111, !111}
!3027 = !{!3028, !3029, !3030, !3031}
!3028 = !DILocalVariable(name: "n", arg: 1, scope: !3024, file: !485, line: 1006, type: !70)
!3029 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3024, file: !485, line: 1006, type: !111)
!3030 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3024, file: !485, line: 1007, type: !111)
!3031 = !DILocalVariable(name: "arg", arg: 4, scope: !3024, file: !485, line: 1007, type: !111)
!3032 = distinct !DIAssignID()
!3033 = !DILocation(line: 0, scope: !3024)
!3034 = !DILocalVariable(name: "o", scope: !3035, file: !485, line: 1018, type: !523)
!3035 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !485, file: !485, line: 1014, type: !3036, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!105, !70, !111, !111, !111, !108}
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3034}
!3039 = !DILocalVariable(name: "n", arg: 1, scope: !3035, file: !485, line: 1014, type: !70)
!3040 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3035, file: !485, line: 1014, type: !111)
!3041 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3035, file: !485, line: 1015, type: !111)
!3042 = !DILocalVariable(name: "arg", arg: 4, scope: !3035, file: !485, line: 1016, type: !111)
!3043 = !DILocalVariable(name: "argsize", arg: 5, scope: !3035, file: !485, line: 1016, type: !108)
!3044 = !DILocation(line: 0, scope: !3035, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 1009, column: 10, scope: !3024)
!3046 = !DILocation(line: 1018, column: 3, scope: !3035, inlinedAt: !3045)
!3047 = !DILocation(line: 1018, column: 30, scope: !3035, inlinedAt: !3045)
!3048 = distinct !DIAssignID()
!3049 = distinct !DIAssignID()
!3050 = !DILocation(line: 0, scope: !1930, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 1019, column: 3, scope: !3035, inlinedAt: !3045)
!3052 = !DILocation(line: 174, column: 12, scope: !1930, inlinedAt: !3051)
!3053 = distinct !DIAssignID()
!3054 = !DILocation(line: 175, column: 8, scope: !1943, inlinedAt: !3051)
!3055 = !DILocation(line: 175, column: 19, scope: !1943, inlinedAt: !3051)
!3056 = !DILocation(line: 176, column: 5, scope: !1943, inlinedAt: !3051)
!3057 = !DILocation(line: 177, column: 6, scope: !1930, inlinedAt: !3051)
!3058 = !DILocation(line: 177, column: 17, scope: !1930, inlinedAt: !3051)
!3059 = distinct !DIAssignID()
!3060 = !DILocation(line: 178, column: 6, scope: !1930, inlinedAt: !3051)
!3061 = !DILocation(line: 178, column: 18, scope: !1930, inlinedAt: !3051)
!3062 = distinct !DIAssignID()
!3063 = !DILocation(line: 1020, column: 10, scope: !3035, inlinedAt: !3045)
!3064 = !DILocation(line: 1021, column: 1, scope: !3035, inlinedAt: !3045)
!3065 = !DILocation(line: 1009, column: 3, scope: !3024)
!3066 = distinct !DIAssignID()
!3067 = !DILocation(line: 0, scope: !3035)
!3068 = !DILocation(line: 1018, column: 3, scope: !3035)
!3069 = !DILocation(line: 1018, column: 30, scope: !3035)
!3070 = distinct !DIAssignID()
!3071 = distinct !DIAssignID()
!3072 = !DILocation(line: 0, scope: !1930, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 1019, column: 3, scope: !3035)
!3074 = !DILocation(line: 174, column: 12, scope: !1930, inlinedAt: !3073)
!3075 = distinct !DIAssignID()
!3076 = !DILocation(line: 175, column: 8, scope: !1943, inlinedAt: !3073)
!3077 = !DILocation(line: 175, column: 19, scope: !1943, inlinedAt: !3073)
!3078 = !DILocation(line: 176, column: 5, scope: !1943, inlinedAt: !3073)
!3079 = !DILocation(line: 177, column: 6, scope: !1930, inlinedAt: !3073)
!3080 = !DILocation(line: 177, column: 17, scope: !1930, inlinedAt: !3073)
!3081 = distinct !DIAssignID()
!3082 = !DILocation(line: 178, column: 6, scope: !1930, inlinedAt: !3073)
!3083 = !DILocation(line: 178, column: 18, scope: !1930, inlinedAt: !3073)
!3084 = distinct !DIAssignID()
!3085 = !DILocation(line: 1020, column: 10, scope: !3035)
!3086 = !DILocation(line: 1021, column: 1, scope: !3035)
!3087 = !DILocation(line: 1020, column: 3, scope: !3035)
!3088 = distinct !DISubprogram(name: "quotearg_custom", scope: !485, file: !485, line: 1024, type: !3089, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!105, !111, !111, !111}
!3091 = !{!3092, !3093, !3094}
!3092 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3088, file: !485, line: 1024, type: !111)
!3093 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3088, file: !485, line: 1024, type: !111)
!3094 = !DILocalVariable(name: "arg", arg: 3, scope: !3088, file: !485, line: 1025, type: !111)
!3095 = distinct !DIAssignID()
!3096 = !DILocation(line: 0, scope: !3088)
!3097 = !DILocation(line: 0, scope: !3024, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 1027, column: 10, scope: !3088)
!3099 = !DILocation(line: 0, scope: !3035, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 1009, column: 10, scope: !3024, inlinedAt: !3098)
!3101 = !DILocation(line: 1018, column: 3, scope: !3035, inlinedAt: !3100)
!3102 = !DILocation(line: 1018, column: 30, scope: !3035, inlinedAt: !3100)
!3103 = distinct !DIAssignID()
!3104 = distinct !DIAssignID()
!3105 = !DILocation(line: 0, scope: !1930, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 1019, column: 3, scope: !3035, inlinedAt: !3100)
!3107 = !DILocation(line: 174, column: 12, scope: !1930, inlinedAt: !3106)
!3108 = distinct !DIAssignID()
!3109 = !DILocation(line: 175, column: 8, scope: !1943, inlinedAt: !3106)
!3110 = !DILocation(line: 175, column: 19, scope: !1943, inlinedAt: !3106)
!3111 = !DILocation(line: 176, column: 5, scope: !1943, inlinedAt: !3106)
!3112 = !DILocation(line: 177, column: 6, scope: !1930, inlinedAt: !3106)
!3113 = !DILocation(line: 177, column: 17, scope: !1930, inlinedAt: !3106)
!3114 = distinct !DIAssignID()
!3115 = !DILocation(line: 178, column: 6, scope: !1930, inlinedAt: !3106)
!3116 = !DILocation(line: 178, column: 18, scope: !1930, inlinedAt: !3106)
!3117 = distinct !DIAssignID()
!3118 = !DILocation(line: 1020, column: 10, scope: !3035, inlinedAt: !3100)
!3119 = !DILocation(line: 1021, column: 1, scope: !3035, inlinedAt: !3100)
!3120 = !DILocation(line: 1027, column: 3, scope: !3088)
!3121 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !485, file: !485, line: 1031, type: !3122, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!105, !111, !111, !111, !108}
!3124 = !{!3125, !3126, !3127, !3128}
!3125 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3121, file: !485, line: 1031, type: !111)
!3126 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3121, file: !485, line: 1031, type: !111)
!3127 = !DILocalVariable(name: "arg", arg: 3, scope: !3121, file: !485, line: 1032, type: !111)
!3128 = !DILocalVariable(name: "argsize", arg: 4, scope: !3121, file: !485, line: 1032, type: !108)
!3129 = distinct !DIAssignID()
!3130 = !DILocation(line: 0, scope: !3121)
!3131 = !DILocation(line: 0, scope: !3035, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1034, column: 10, scope: !3121)
!3133 = !DILocation(line: 1018, column: 3, scope: !3035, inlinedAt: !3132)
!3134 = !DILocation(line: 1018, column: 30, scope: !3035, inlinedAt: !3132)
!3135 = distinct !DIAssignID()
!3136 = distinct !DIAssignID()
!3137 = !DILocation(line: 0, scope: !1930, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 1019, column: 3, scope: !3035, inlinedAt: !3132)
!3139 = !DILocation(line: 174, column: 12, scope: !1930, inlinedAt: !3138)
!3140 = distinct !DIAssignID()
!3141 = !DILocation(line: 175, column: 8, scope: !1943, inlinedAt: !3138)
!3142 = !DILocation(line: 175, column: 19, scope: !1943, inlinedAt: !3138)
!3143 = !DILocation(line: 176, column: 5, scope: !1943, inlinedAt: !3138)
!3144 = !DILocation(line: 177, column: 6, scope: !1930, inlinedAt: !3138)
!3145 = !DILocation(line: 177, column: 17, scope: !1930, inlinedAt: !3138)
!3146 = distinct !DIAssignID()
!3147 = !DILocation(line: 178, column: 6, scope: !1930, inlinedAt: !3138)
!3148 = !DILocation(line: 178, column: 18, scope: !1930, inlinedAt: !3138)
!3149 = distinct !DIAssignID()
!3150 = !DILocation(line: 1020, column: 10, scope: !3035, inlinedAt: !3132)
!3151 = !DILocation(line: 1021, column: 1, scope: !3035, inlinedAt: !3132)
!3152 = !DILocation(line: 1034, column: 3, scope: !3121)
!3153 = distinct !DISubprogram(name: "quote_n_mem", scope: !485, file: !485, line: 1049, type: !3154, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!111, !70, !111, !108}
!3156 = !{!3157, !3158, !3159}
!3157 = !DILocalVariable(name: "n", arg: 1, scope: !3153, file: !485, line: 1049, type: !70)
!3158 = !DILocalVariable(name: "arg", arg: 2, scope: !3153, file: !485, line: 1049, type: !111)
!3159 = !DILocalVariable(name: "argsize", arg: 3, scope: !3153, file: !485, line: 1049, type: !108)
!3160 = !DILocation(line: 0, scope: !3153)
!3161 = !DILocation(line: 1051, column: 10, scope: !3153)
!3162 = !DILocation(line: 1051, column: 3, scope: !3153)
!3163 = distinct !DISubprogram(name: "quote_mem", scope: !485, file: !485, line: 1055, type: !3164, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!111, !111, !108}
!3166 = !{!3167, !3168}
!3167 = !DILocalVariable(name: "arg", arg: 1, scope: !3163, file: !485, line: 1055, type: !111)
!3168 = !DILocalVariable(name: "argsize", arg: 2, scope: !3163, file: !485, line: 1055, type: !108)
!3169 = !DILocation(line: 0, scope: !3163)
!3170 = !DILocation(line: 0, scope: !3153, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 1057, column: 10, scope: !3163)
!3172 = !DILocation(line: 1051, column: 10, scope: !3153, inlinedAt: !3171)
!3173 = !DILocation(line: 1057, column: 3, scope: !3163)
!3174 = distinct !DISubprogram(name: "quote_n", scope: !485, file: !485, line: 1061, type: !3175, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!111, !70, !111}
!3177 = !{!3178, !3179}
!3178 = !DILocalVariable(name: "n", arg: 1, scope: !3174, file: !485, line: 1061, type: !70)
!3179 = !DILocalVariable(name: "arg", arg: 2, scope: !3174, file: !485, line: 1061, type: !111)
!3180 = !DILocation(line: 0, scope: !3174)
!3181 = !DILocation(line: 0, scope: !3153, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1063, column: 10, scope: !3174)
!3183 = !DILocation(line: 1051, column: 10, scope: !3153, inlinedAt: !3182)
!3184 = !DILocation(line: 1063, column: 3, scope: !3174)
!3185 = distinct !DISubprogram(name: "quote", scope: !485, file: !485, line: 1067, type: !3186, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!111, !111}
!3188 = !{!3189}
!3189 = !DILocalVariable(name: "arg", arg: 1, scope: !3185, file: !485, line: 1067, type: !111)
!3190 = !DILocation(line: 0, scope: !3185)
!3191 = !DILocation(line: 0, scope: !3174, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1069, column: 10, scope: !3185)
!3193 = !DILocation(line: 0, scope: !3153, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 1063, column: 10, scope: !3174, inlinedAt: !3192)
!3195 = !DILocation(line: 1051, column: 10, scope: !3153, inlinedAt: !3194)
!3196 = !DILocation(line: 1069, column: 3, scope: !3185)
!3197 = distinct !DISubprogram(name: "version_etc_arn", scope: !586, file: !586, line: 61, type: !3198, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3235)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !3200, !111, !111, !111, !3234, !108}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3202, file: !188, line: 51, baseType: !70, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3202, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3202, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3202, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3202, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3202, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3202, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3202, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3202, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3202, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3202, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3202, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3202, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3202, file: !188, line: 70, baseType: !3218, size: 64, offset: 832)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3202, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3202, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3202, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3202, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3202, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3202, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3202, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3202, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3202, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3202, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3202, file: !188, line: 93, baseType: !3218, size: 64, offset: 1344)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3202, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3202, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3202, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3202, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241}
!3236 = !DILocalVariable(name: "stream", arg: 1, scope: !3197, file: !586, line: 61, type: !3200)
!3237 = !DILocalVariable(name: "command_name", arg: 2, scope: !3197, file: !586, line: 62, type: !111)
!3238 = !DILocalVariable(name: "package", arg: 3, scope: !3197, file: !586, line: 62, type: !111)
!3239 = !DILocalVariable(name: "version", arg: 4, scope: !3197, file: !586, line: 63, type: !111)
!3240 = !DILocalVariable(name: "authors", arg: 5, scope: !3197, file: !586, line: 64, type: !3234)
!3241 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3197, file: !586, line: 64, type: !108)
!3242 = !DILocation(line: 0, scope: !3197)
!3243 = !DILocation(line: 66, column: 7, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3197, file: !586, line: 66, column: 7)
!3245 = !DILocation(line: 66, column: 7, scope: !3197)
!3246 = !DILocation(line: 67, column: 5, scope: !3244)
!3247 = !DILocation(line: 69, column: 5, scope: !3244)
!3248 = !DILocation(line: 83, column: 3, scope: !3197)
!3249 = !DILocation(line: 85, column: 3, scope: !3197)
!3250 = !DILocation(line: 88, column: 3, scope: !3197)
!3251 = !DILocation(line: 95, column: 3, scope: !3197)
!3252 = !DILocation(line: 97, column: 3, scope: !3197)
!3253 = !DILocation(line: 105, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3197, file: !586, line: 98, column: 5)
!3255 = !DILocation(line: 106, column: 7, scope: !3254)
!3256 = !DILocation(line: 109, column: 7, scope: !3254)
!3257 = !DILocation(line: 110, column: 7, scope: !3254)
!3258 = !DILocation(line: 113, column: 7, scope: !3254)
!3259 = !DILocation(line: 115, column: 7, scope: !3254)
!3260 = !DILocation(line: 120, column: 7, scope: !3254)
!3261 = !DILocation(line: 122, column: 7, scope: !3254)
!3262 = !DILocation(line: 127, column: 7, scope: !3254)
!3263 = !DILocation(line: 129, column: 7, scope: !3254)
!3264 = !DILocation(line: 134, column: 7, scope: !3254)
!3265 = !DILocation(line: 137, column: 7, scope: !3254)
!3266 = !DILocation(line: 142, column: 7, scope: !3254)
!3267 = !DILocation(line: 145, column: 7, scope: !3254)
!3268 = !DILocation(line: 150, column: 7, scope: !3254)
!3269 = !DILocation(line: 154, column: 7, scope: !3254)
!3270 = !DILocation(line: 159, column: 7, scope: !3254)
!3271 = !DILocation(line: 163, column: 7, scope: !3254)
!3272 = !DILocation(line: 170, column: 7, scope: !3254)
!3273 = !DILocation(line: 174, column: 7, scope: !3254)
!3274 = !DILocation(line: 176, column: 1, scope: !3197)
!3275 = distinct !DISubprogram(name: "version_etc_ar", scope: !586, file: !586, line: 183, type: !3276, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !3200, !111, !111, !111, !3234}
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284}
!3279 = !DILocalVariable(name: "stream", arg: 1, scope: !3275, file: !586, line: 183, type: !3200)
!3280 = !DILocalVariable(name: "command_name", arg: 2, scope: !3275, file: !586, line: 184, type: !111)
!3281 = !DILocalVariable(name: "package", arg: 3, scope: !3275, file: !586, line: 184, type: !111)
!3282 = !DILocalVariable(name: "version", arg: 4, scope: !3275, file: !586, line: 185, type: !111)
!3283 = !DILocalVariable(name: "authors", arg: 5, scope: !3275, file: !586, line: 185, type: !3234)
!3284 = !DILocalVariable(name: "n_authors", scope: !3275, file: !586, line: 187, type: !108)
!3285 = !DILocation(line: 0, scope: !3275)
!3286 = !DILocation(line: 189, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3275, file: !586, line: 189, column: 3)
!3288 = !DILocation(line: 189, scope: !3287)
!3289 = !DILocation(line: 189, column: 23, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !586, line: 189, column: 3)
!3291 = !DILocation(line: 189, column: 3, scope: !3287)
!3292 = !DILocation(line: 189, column: 52, scope: !3290)
!3293 = distinct !{!3293, !3291, !3294, !910}
!3294 = !DILocation(line: 190, column: 5, scope: !3287)
!3295 = !DILocation(line: 191, column: 3, scope: !3275)
!3296 = !DILocation(line: 192, column: 1, scope: !3275)
!3297 = distinct !DISubprogram(name: "version_etc_va", scope: !586, file: !586, line: 199, type: !3298, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3307)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !3200, !111, !111, !111, !3300}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3306}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3301, file: !586, line: 192, baseType: !76, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3301, file: !586, line: 192, baseType: !76, size: 32, offset: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3301, file: !586, line: 192, baseType: !106, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3301, file: !586, line: 192, baseType: !106, size: 64, offset: 128)
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3308 = !DILocalVariable(name: "stream", arg: 1, scope: !3297, file: !586, line: 199, type: !3200)
!3309 = !DILocalVariable(name: "command_name", arg: 2, scope: !3297, file: !586, line: 200, type: !111)
!3310 = !DILocalVariable(name: "package", arg: 3, scope: !3297, file: !586, line: 200, type: !111)
!3311 = !DILocalVariable(name: "version", arg: 4, scope: !3297, file: !586, line: 201, type: !111)
!3312 = !DILocalVariable(name: "authors", arg: 5, scope: !3297, file: !586, line: 201, type: !3300)
!3313 = !DILocalVariable(name: "n_authors", scope: !3297, file: !586, line: 203, type: !108)
!3314 = !DILocalVariable(name: "authtab", scope: !3297, file: !586, line: 204, type: !3315)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 640, elements: !52)
!3316 = distinct !DIAssignID()
!3317 = !DILocation(line: 0, scope: !3297)
!3318 = !DILocation(line: 204, column: 3, scope: !3297)
!3319 = !DILocation(line: 208, column: 35, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !586, line: 206, column: 3)
!3321 = distinct !DILexicalBlock(scope: !3297, file: !586, line: 206, column: 3)
!3322 = !DILocation(line: 208, column: 33, scope: !3320)
!3323 = !DILocation(line: 208, column: 67, scope: !3320)
!3324 = !DILocation(line: 206, column: 3, scope: !3321)
!3325 = !DILocation(line: 208, column: 14, scope: !3320)
!3326 = !DILocation(line: 0, scope: !3321)
!3327 = !DILocation(line: 211, column: 3, scope: !3297)
!3328 = !DILocation(line: 213, column: 1, scope: !3297)
!3329 = distinct !DISubprogram(name: "version_etc", scope: !586, file: !586, line: 230, type: !3330, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3200, !111, !111, !111, null}
!3332 = !{!3333, !3334, !3335, !3336, !3337}
!3333 = !DILocalVariable(name: "stream", arg: 1, scope: !3329, file: !586, line: 230, type: !3200)
!3334 = !DILocalVariable(name: "command_name", arg: 2, scope: !3329, file: !586, line: 231, type: !111)
!3335 = !DILocalVariable(name: "package", arg: 3, scope: !3329, file: !586, line: 231, type: !111)
!3336 = !DILocalVariable(name: "version", arg: 4, scope: !3329, file: !586, line: 232, type: !111)
!3337 = !DILocalVariable(name: "authors", scope: !3329, file: !586, line: 234, type: !3338)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !858, line: 52, baseType: !3339)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1354, line: 12, baseType: !3340)
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !586, baseType: !3341)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3301, size: 192, elements: !47)
!3342 = distinct !DIAssignID()
!3343 = !DILocation(line: 0, scope: !3329)
!3344 = !DILocation(line: 234, column: 3, scope: !3329)
!3345 = !DILocation(line: 235, column: 3, scope: !3329)
!3346 = !DILocation(line: 236, column: 3, scope: !3329)
!3347 = !DILocation(line: 237, column: 3, scope: !3329)
!3348 = !DILocation(line: 238, column: 1, scope: !3329)
!3349 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !586, file: !586, line: 241, type: !440, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715)
!3350 = !DILocation(line: 243, column: 3, scope: !3349)
!3351 = !DILocation(line: 248, column: 3, scope: !3349)
!3352 = !DILocation(line: 254, column: 3, scope: !3349)
!3353 = !DILocation(line: 259, column: 3, scope: !3349)
!3354 = !DILocation(line: 261, column: 1, scope: !3349)
!3355 = distinct !DISubprogram(name: "xnrealloc", scope: !3356, file: !3356, line: 147, type: !3357, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3359)
!3356 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!106, !106, !108, !108}
!3359 = !{!3360, !3361, !3362}
!3360 = !DILocalVariable(name: "p", arg: 1, scope: !3355, file: !3356, line: 147, type: !106)
!3361 = !DILocalVariable(name: "n", arg: 2, scope: !3355, file: !3356, line: 147, type: !108)
!3362 = !DILocalVariable(name: "s", arg: 3, scope: !3355, file: !3356, line: 147, type: !108)
!3363 = !DILocation(line: 0, scope: !3355)
!3364 = !DILocalVariable(name: "p", arg: 1, scope: !3365, file: !723, line: 83, type: !106)
!3365 = distinct !DISubprogram(name: "xreallocarray", scope: !723, file: !723, line: 83, type: !3357, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3366)
!3366 = !{!3364, !3367, !3368}
!3367 = !DILocalVariable(name: "n", arg: 2, scope: !3365, file: !723, line: 83, type: !108)
!3368 = !DILocalVariable(name: "s", arg: 3, scope: !3365, file: !723, line: 83, type: !108)
!3369 = !DILocation(line: 0, scope: !3365, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 149, column: 10, scope: !3355)
!3371 = !DILocation(line: 85, column: 25, scope: !3365, inlinedAt: !3370)
!3372 = !DILocalVariable(name: "p", arg: 1, scope: !3373, file: !723, line: 37, type: !106)
!3373 = distinct !DISubprogram(name: "check_nonnull", scope: !723, file: !723, line: 37, type: !3374, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!106, !106}
!3376 = !{!3372}
!3377 = !DILocation(line: 0, scope: !3373, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 85, column: 10, scope: !3365, inlinedAt: !3370)
!3379 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3378)
!3380 = distinct !DILexicalBlock(scope: !3373, file: !723, line: 39, column: 7)
!3381 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3378)
!3382 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3378)
!3383 = !DILocation(line: 149, column: 3, scope: !3355)
!3384 = !DILocation(line: 0, scope: !3365)
!3385 = !DILocation(line: 85, column: 25, scope: !3365)
!3386 = !DILocation(line: 0, scope: !3373, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 85, column: 10, scope: !3365)
!3388 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3387)
!3389 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3387)
!3390 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3387)
!3391 = !DILocation(line: 85, column: 3, scope: !3365)
!3392 = distinct !DISubprogram(name: "xmalloc", scope: !723, file: !723, line: 47, type: !3393, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!106, !108}
!3395 = !{!3396}
!3396 = !DILocalVariable(name: "s", arg: 1, scope: !3392, file: !723, line: 47, type: !108)
!3397 = !DILocation(line: 0, scope: !3392)
!3398 = !DILocation(line: 49, column: 25, scope: !3392)
!3399 = !DILocation(line: 0, scope: !3373, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 49, column: 10, scope: !3392)
!3401 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3400)
!3402 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3400)
!3403 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3400)
!3404 = !DILocation(line: 49, column: 3, scope: !3392)
!3405 = !DISubprogram(name: "malloc", scope: !987, file: !987, line: 540, type: !3393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3406 = distinct !DISubprogram(name: "ximalloc", scope: !723, file: !723, line: 53, type: !3407, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!106, !742}
!3409 = !{!3410}
!3410 = !DILocalVariable(name: "s", arg: 1, scope: !3406, file: !723, line: 53, type: !742)
!3411 = !DILocation(line: 0, scope: !3406)
!3412 = !DILocalVariable(name: "s", arg: 1, scope: !3413, file: !3414, line: 55, type: !742)
!3413 = distinct !DISubprogram(name: "imalloc", scope: !3414, file: !3414, line: 55, type: !3407, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3415)
!3414 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3415 = !{!3412}
!3416 = !DILocation(line: 0, scope: !3413, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 55, column: 25, scope: !3406)
!3418 = !DILocation(line: 57, column: 26, scope: !3413, inlinedAt: !3417)
!3419 = !DILocation(line: 0, scope: !3373, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 55, column: 10, scope: !3406)
!3421 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3420)
!3422 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3420)
!3423 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3420)
!3424 = !DILocation(line: 55, column: 3, scope: !3406)
!3425 = distinct !DISubprogram(name: "xcharalloc", scope: !723, file: !723, line: 59, type: !3426, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!105, !108}
!3428 = !{!3429}
!3429 = !DILocalVariable(name: "n", arg: 1, scope: !3425, file: !723, line: 59, type: !108)
!3430 = !DILocation(line: 0, scope: !3425)
!3431 = !DILocation(line: 0, scope: !3392, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 61, column: 10, scope: !3425)
!3433 = !DILocation(line: 49, column: 25, scope: !3392, inlinedAt: !3432)
!3434 = !DILocation(line: 0, scope: !3373, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 49, column: 10, scope: !3392, inlinedAt: !3432)
!3436 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3435)
!3437 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3435)
!3438 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3435)
!3439 = !DILocation(line: 61, column: 3, scope: !3425)
!3440 = distinct !DISubprogram(name: "xrealloc", scope: !723, file: !723, line: 68, type: !3441, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3443)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!106, !106, !108}
!3443 = !{!3444, !3445}
!3444 = !DILocalVariable(name: "p", arg: 1, scope: !3440, file: !723, line: 68, type: !106)
!3445 = !DILocalVariable(name: "s", arg: 2, scope: !3440, file: !723, line: 68, type: !108)
!3446 = !DILocation(line: 0, scope: !3440)
!3447 = !DILocalVariable(name: "ptr", arg: 1, scope: !3448, file: !3449, line: 2057, type: !106)
!3448 = distinct !DISubprogram(name: "rpl_realloc", scope: !3449, file: !3449, line: 2057, type: !3441, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3450)
!3449 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3450 = !{!3447, !3451}
!3451 = !DILocalVariable(name: "size", arg: 2, scope: !3448, file: !3449, line: 2057, type: !108)
!3452 = !DILocation(line: 0, scope: !3448, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 70, column: 25, scope: !3440)
!3454 = !DILocation(line: 2059, column: 24, scope: !3448, inlinedAt: !3453)
!3455 = !DILocation(line: 2059, column: 10, scope: !3448, inlinedAt: !3453)
!3456 = !DILocation(line: 0, scope: !3373, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 70, column: 10, scope: !3440)
!3458 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3457)
!3459 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3457)
!3460 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3457)
!3461 = !DILocation(line: 70, column: 3, scope: !3440)
!3462 = !DISubprogram(name: "realloc", scope: !987, file: !987, line: 551, type: !3441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3463 = distinct !DISubprogram(name: "xirealloc", scope: !723, file: !723, line: 74, type: !3464, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!106, !106, !742}
!3466 = !{!3467, !3468}
!3467 = !DILocalVariable(name: "p", arg: 1, scope: !3463, file: !723, line: 74, type: !106)
!3468 = !DILocalVariable(name: "s", arg: 2, scope: !3463, file: !723, line: 74, type: !742)
!3469 = !DILocation(line: 0, scope: !3463)
!3470 = !DILocalVariable(name: "p", arg: 1, scope: !3471, file: !3414, line: 66, type: !106)
!3471 = distinct !DISubprogram(name: "irealloc", scope: !3414, file: !3414, line: 66, type: !3464, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3472)
!3472 = !{!3470, !3473}
!3473 = !DILocalVariable(name: "s", arg: 2, scope: !3471, file: !3414, line: 66, type: !742)
!3474 = !DILocation(line: 0, scope: !3471, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 76, column: 25, scope: !3463)
!3476 = !DILocation(line: 0, scope: !3448, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 68, column: 26, scope: !3471, inlinedAt: !3475)
!3478 = !DILocation(line: 2059, column: 24, scope: !3448, inlinedAt: !3477)
!3479 = !DILocation(line: 2059, column: 10, scope: !3448, inlinedAt: !3477)
!3480 = !DILocation(line: 0, scope: !3373, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 76, column: 10, scope: !3463)
!3482 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3481)
!3483 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3481)
!3484 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3481)
!3485 = !DILocation(line: 76, column: 3, scope: !3463)
!3486 = distinct !DISubprogram(name: "xireallocarray", scope: !723, file: !723, line: 89, type: !3487, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!106, !106, !742, !742}
!3489 = !{!3490, !3491, !3492}
!3490 = !DILocalVariable(name: "p", arg: 1, scope: !3486, file: !723, line: 89, type: !106)
!3491 = !DILocalVariable(name: "n", arg: 2, scope: !3486, file: !723, line: 89, type: !742)
!3492 = !DILocalVariable(name: "s", arg: 3, scope: !3486, file: !723, line: 89, type: !742)
!3493 = !DILocation(line: 0, scope: !3486)
!3494 = !DILocalVariable(name: "p", arg: 1, scope: !3495, file: !3414, line: 98, type: !106)
!3495 = distinct !DISubprogram(name: "ireallocarray", scope: !3414, file: !3414, line: 98, type: !3487, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3496)
!3496 = !{!3494, !3497, !3498}
!3497 = !DILocalVariable(name: "n", arg: 2, scope: !3495, file: !3414, line: 98, type: !742)
!3498 = !DILocalVariable(name: "s", arg: 3, scope: !3495, file: !3414, line: 98, type: !742)
!3499 = !DILocation(line: 0, scope: !3495, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 91, column: 25, scope: !3486)
!3501 = !DILocation(line: 101, column: 13, scope: !3495, inlinedAt: !3500)
!3502 = !DILocation(line: 0, scope: !3373, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 91, column: 10, scope: !3486)
!3504 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3503)
!3505 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3503)
!3506 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3503)
!3507 = !DILocation(line: 91, column: 3, scope: !3486)
!3508 = distinct !DISubprogram(name: "xnmalloc", scope: !723, file: !723, line: 98, type: !3509, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!106, !108, !108}
!3511 = !{!3512, !3513}
!3512 = !DILocalVariable(name: "n", arg: 1, scope: !3508, file: !723, line: 98, type: !108)
!3513 = !DILocalVariable(name: "s", arg: 2, scope: !3508, file: !723, line: 98, type: !108)
!3514 = !DILocation(line: 0, scope: !3508)
!3515 = !DILocation(line: 0, scope: !3365, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 100, column: 10, scope: !3508)
!3517 = !DILocation(line: 85, column: 25, scope: !3365, inlinedAt: !3516)
!3518 = !DILocation(line: 0, scope: !3373, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 85, column: 10, scope: !3365, inlinedAt: !3516)
!3520 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3519)
!3521 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3519)
!3522 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3519)
!3523 = !DILocation(line: 100, column: 3, scope: !3508)
!3524 = distinct !DISubprogram(name: "xinmalloc", scope: !723, file: !723, line: 104, type: !3525, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!106, !742, !742}
!3527 = !{!3528, !3529}
!3528 = !DILocalVariable(name: "n", arg: 1, scope: !3524, file: !723, line: 104, type: !742)
!3529 = !DILocalVariable(name: "s", arg: 2, scope: !3524, file: !723, line: 104, type: !742)
!3530 = !DILocation(line: 0, scope: !3524)
!3531 = !DILocation(line: 0, scope: !3486, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 106, column: 10, scope: !3524)
!3533 = !DILocation(line: 0, scope: !3495, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 91, column: 25, scope: !3486, inlinedAt: !3532)
!3535 = !DILocation(line: 101, column: 13, scope: !3495, inlinedAt: !3534)
!3536 = !DILocation(line: 0, scope: !3373, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 91, column: 10, scope: !3486, inlinedAt: !3532)
!3538 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3537)
!3539 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3537)
!3540 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3537)
!3541 = !DILocation(line: 106, column: 3, scope: !3524)
!3542 = distinct !DISubprogram(name: "x2realloc", scope: !723, file: !723, line: 116, type: !3543, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!106, !106, !729}
!3545 = !{!3546, !3547}
!3546 = !DILocalVariable(name: "p", arg: 1, scope: !3542, file: !723, line: 116, type: !106)
!3547 = !DILocalVariable(name: "ps", arg: 2, scope: !3542, file: !723, line: 116, type: !729)
!3548 = !DILocation(line: 0, scope: !3542)
!3549 = !DILocation(line: 0, scope: !726, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 118, column: 10, scope: !3542)
!3551 = !DILocation(line: 178, column: 14, scope: !726, inlinedAt: !3550)
!3552 = !DILocation(line: 180, column: 9, scope: !3553, inlinedAt: !3550)
!3553 = distinct !DILexicalBlock(scope: !726, file: !723, line: 180, column: 7)
!3554 = !DILocation(line: 180, column: 7, scope: !726, inlinedAt: !3550)
!3555 = !DILocation(line: 182, column: 13, scope: !3556, inlinedAt: !3550)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !723, line: 182, column: 11)
!3557 = distinct !DILexicalBlock(scope: !3553, file: !723, line: 181, column: 5)
!3558 = !DILocation(line: 182, column: 11, scope: !3557, inlinedAt: !3550)
!3559 = !DILocation(line: 197, column: 11, scope: !3560, inlinedAt: !3550)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !723, line: 197, column: 11)
!3561 = distinct !DILexicalBlock(scope: !3553, file: !723, line: 195, column: 5)
!3562 = !DILocation(line: 197, column: 11, scope: !3561, inlinedAt: !3550)
!3563 = !DILocation(line: 198, column: 9, scope: !3560, inlinedAt: !3550)
!3564 = !DILocation(line: 0, scope: !3365, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 201, column: 7, scope: !726, inlinedAt: !3550)
!3566 = !DILocation(line: 85, column: 25, scope: !3365, inlinedAt: !3565)
!3567 = !DILocation(line: 0, scope: !3373, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 85, column: 10, scope: !3365, inlinedAt: !3565)
!3569 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3568)
!3570 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3568)
!3571 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3568)
!3572 = !DILocation(line: 202, column: 7, scope: !726, inlinedAt: !3550)
!3573 = !DILocation(line: 118, column: 3, scope: !3542)
!3574 = !DILocation(line: 0, scope: !726)
!3575 = !DILocation(line: 178, column: 14, scope: !726)
!3576 = !DILocation(line: 180, column: 9, scope: !3553)
!3577 = !DILocation(line: 180, column: 7, scope: !726)
!3578 = !DILocation(line: 182, column: 13, scope: !3556)
!3579 = !DILocation(line: 182, column: 11, scope: !3557)
!3580 = !DILocation(line: 190, column: 30, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3556, file: !723, line: 183, column: 9)
!3582 = !DILocation(line: 191, column: 16, scope: !3581)
!3583 = !DILocation(line: 191, column: 13, scope: !3581)
!3584 = !DILocation(line: 192, column: 9, scope: !3581)
!3585 = !DILocation(line: 197, column: 11, scope: !3560)
!3586 = !DILocation(line: 197, column: 11, scope: !3561)
!3587 = !DILocation(line: 198, column: 9, scope: !3560)
!3588 = !DILocation(line: 0, scope: !3365, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 201, column: 7, scope: !726)
!3590 = !DILocation(line: 85, column: 25, scope: !3365, inlinedAt: !3589)
!3591 = !DILocation(line: 0, scope: !3373, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 85, column: 10, scope: !3365, inlinedAt: !3589)
!3593 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3592)
!3594 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3592)
!3595 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3592)
!3596 = !DILocation(line: 202, column: 7, scope: !726)
!3597 = !DILocation(line: 203, column: 3, scope: !726)
!3598 = !DILocation(line: 0, scope: !738)
!3599 = !DILocation(line: 230, column: 14, scope: !738)
!3600 = !DILocation(line: 238, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !738, file: !723, line: 238, column: 7)
!3602 = !DILocation(line: 238, column: 7, scope: !738)
!3603 = !DILocation(line: 240, column: 9, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !738, file: !723, line: 240, column: 7)
!3605 = !DILocation(line: 240, column: 18, scope: !3604)
!3606 = !DILocation(line: 253, column: 8, scope: !738)
!3607 = !DILocation(line: 256, column: 7, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !738, file: !723, line: 256, column: 7)
!3609 = !DILocation(line: 256, column: 7, scope: !738)
!3610 = !DILocation(line: 258, column: 27, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3608, file: !723, line: 257, column: 5)
!3612 = !DILocation(line: 259, column: 50, scope: !3611)
!3613 = !DILocation(line: 259, column: 32, scope: !3611)
!3614 = !DILocation(line: 260, column: 5, scope: !3611)
!3615 = !DILocation(line: 262, column: 9, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !738, file: !723, line: 262, column: 7)
!3617 = !DILocation(line: 262, column: 7, scope: !738)
!3618 = !DILocation(line: 263, column: 9, scope: !3616)
!3619 = !DILocation(line: 263, column: 5, scope: !3616)
!3620 = !DILocation(line: 264, column: 9, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !738, file: !723, line: 264, column: 7)
!3622 = !DILocation(line: 264, column: 14, scope: !3621)
!3623 = !DILocation(line: 265, column: 7, scope: !3621)
!3624 = !DILocation(line: 265, column: 11, scope: !3621)
!3625 = !DILocation(line: 266, column: 11, scope: !3621)
!3626 = !DILocation(line: 267, column: 14, scope: !3621)
!3627 = !DILocation(line: 264, column: 7, scope: !738)
!3628 = !DILocation(line: 268, column: 5, scope: !3621)
!3629 = !DILocation(line: 0, scope: !3440, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 269, column: 8, scope: !738)
!3631 = !DILocation(line: 0, scope: !3448, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 70, column: 25, scope: !3440, inlinedAt: !3630)
!3633 = !DILocation(line: 2059, column: 24, scope: !3448, inlinedAt: !3632)
!3634 = !DILocation(line: 2059, column: 10, scope: !3448, inlinedAt: !3632)
!3635 = !DILocation(line: 0, scope: !3373, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 70, column: 10, scope: !3440, inlinedAt: !3630)
!3637 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3636)
!3638 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3636)
!3639 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3636)
!3640 = !DILocation(line: 270, column: 7, scope: !738)
!3641 = !DILocation(line: 271, column: 3, scope: !738)
!3642 = distinct !DISubprogram(name: "xzalloc", scope: !723, file: !723, line: 279, type: !3393, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3643)
!3643 = !{!3644}
!3644 = !DILocalVariable(name: "s", arg: 1, scope: !3642, file: !723, line: 279, type: !108)
!3645 = !DILocation(line: 0, scope: !3642)
!3646 = !DILocalVariable(name: "n", arg: 1, scope: !3647, file: !723, line: 294, type: !108)
!3647 = distinct !DISubprogram(name: "xcalloc", scope: !723, file: !723, line: 294, type: !3509, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3648)
!3648 = !{!3646, !3649}
!3649 = !DILocalVariable(name: "s", arg: 2, scope: !3647, file: !723, line: 294, type: !108)
!3650 = !DILocation(line: 0, scope: !3647, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 281, column: 10, scope: !3642)
!3652 = !DILocation(line: 296, column: 25, scope: !3647, inlinedAt: !3651)
!3653 = !DILocation(line: 0, scope: !3373, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 296, column: 10, scope: !3647, inlinedAt: !3651)
!3655 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3654)
!3656 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3654)
!3657 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3654)
!3658 = !DILocation(line: 281, column: 3, scope: !3642)
!3659 = !DISubprogram(name: "calloc", scope: !987, file: !987, line: 543, type: !3509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3660 = !DILocation(line: 0, scope: !3647)
!3661 = !DILocation(line: 296, column: 25, scope: !3647)
!3662 = !DILocation(line: 0, scope: !3373, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 296, column: 10, scope: !3647)
!3664 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3663)
!3665 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3663)
!3666 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3663)
!3667 = !DILocation(line: 296, column: 3, scope: !3647)
!3668 = distinct !DISubprogram(name: "xizalloc", scope: !723, file: !723, line: 285, type: !3407, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3669)
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "s", arg: 1, scope: !3668, file: !723, line: 285, type: !742)
!3671 = !DILocation(line: 0, scope: !3668)
!3672 = !DILocalVariable(name: "n", arg: 1, scope: !3673, file: !723, line: 300, type: !742)
!3673 = distinct !DISubprogram(name: "xicalloc", scope: !723, file: !723, line: 300, type: !3525, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3674)
!3674 = !{!3672, !3675}
!3675 = !DILocalVariable(name: "s", arg: 2, scope: !3673, file: !723, line: 300, type: !742)
!3676 = !DILocation(line: 0, scope: !3673, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 287, column: 10, scope: !3668)
!3678 = !DILocalVariable(name: "n", arg: 1, scope: !3679, file: !3414, line: 77, type: !742)
!3679 = distinct !DISubprogram(name: "icalloc", scope: !3414, file: !3414, line: 77, type: !3525, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3680)
!3680 = !{!3678, !3681}
!3681 = !DILocalVariable(name: "s", arg: 2, scope: !3679, file: !3414, line: 77, type: !742)
!3682 = !DILocation(line: 0, scope: !3679, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 302, column: 25, scope: !3673, inlinedAt: !3677)
!3684 = !DILocation(line: 91, column: 10, scope: !3679, inlinedAt: !3683)
!3685 = !DILocation(line: 0, scope: !3373, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 302, column: 10, scope: !3673, inlinedAt: !3677)
!3687 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3686)
!3688 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3686)
!3689 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3686)
!3690 = !DILocation(line: 287, column: 3, scope: !3668)
!3691 = !DILocation(line: 0, scope: !3673)
!3692 = !DILocation(line: 0, scope: !3679, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 302, column: 25, scope: !3673)
!3694 = !DILocation(line: 91, column: 10, scope: !3679, inlinedAt: !3693)
!3695 = !DILocation(line: 0, scope: !3373, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 302, column: 10, scope: !3673)
!3697 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3696)
!3698 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3696)
!3699 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3696)
!3700 = !DILocation(line: 302, column: 3, scope: !3673)
!3701 = distinct !DISubprogram(name: "xmemdup", scope: !723, file: !723, line: 310, type: !3702, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!106, !1011, !108}
!3704 = !{!3705, !3706}
!3705 = !DILocalVariable(name: "p", arg: 1, scope: !3701, file: !723, line: 310, type: !1011)
!3706 = !DILocalVariable(name: "s", arg: 2, scope: !3701, file: !723, line: 310, type: !108)
!3707 = !DILocation(line: 0, scope: !3701)
!3708 = !DILocation(line: 0, scope: !3392, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 312, column: 18, scope: !3701)
!3710 = !DILocation(line: 49, column: 25, scope: !3392, inlinedAt: !3709)
!3711 = !DILocation(line: 0, scope: !3373, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 49, column: 10, scope: !3392, inlinedAt: !3709)
!3713 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3712)
!3714 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3712)
!3715 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3712)
!3716 = !DILocalVariable(name: "__dest", arg: 1, scope: !3717, file: !1833, line: 26, type: !3720)
!3717 = distinct !DISubprogram(name: "memcpy", scope: !1833, file: !1833, line: 26, type: !3718, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3721)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!106, !3720, !1010, !108}
!3720 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!3721 = !{!3716, !3722, !3723}
!3722 = !DILocalVariable(name: "__src", arg: 2, scope: !3717, file: !1833, line: 26, type: !1010)
!3723 = !DILocalVariable(name: "__len", arg: 3, scope: !3717, file: !1833, line: 26, type: !108)
!3724 = !DILocation(line: 0, scope: !3717, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 312, column: 10, scope: !3701)
!3726 = !DILocation(line: 29, column: 10, scope: !3717, inlinedAt: !3725)
!3727 = !DILocation(line: 312, column: 3, scope: !3701)
!3728 = distinct !DISubprogram(name: "ximemdup", scope: !723, file: !723, line: 316, type: !3729, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!106, !1011, !742}
!3731 = !{!3732, !3733}
!3732 = !DILocalVariable(name: "p", arg: 1, scope: !3728, file: !723, line: 316, type: !1011)
!3733 = !DILocalVariable(name: "s", arg: 2, scope: !3728, file: !723, line: 316, type: !742)
!3734 = !DILocation(line: 0, scope: !3728)
!3735 = !DILocation(line: 0, scope: !3406, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 318, column: 18, scope: !3728)
!3737 = !DILocation(line: 0, scope: !3413, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 55, column: 25, scope: !3406, inlinedAt: !3736)
!3739 = !DILocation(line: 57, column: 26, scope: !3413, inlinedAt: !3738)
!3740 = !DILocation(line: 0, scope: !3373, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 55, column: 10, scope: !3406, inlinedAt: !3736)
!3742 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3741)
!3743 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3741)
!3744 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3741)
!3745 = !DILocation(line: 0, scope: !3717, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 318, column: 10, scope: !3728)
!3747 = !DILocation(line: 29, column: 10, scope: !3717, inlinedAt: !3746)
!3748 = !DILocation(line: 318, column: 3, scope: !3728)
!3749 = distinct !DISubprogram(name: "ximemdup0", scope: !723, file: !723, line: 325, type: !3750, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!105, !1011, !742}
!3752 = !{!3753, !3754, !3755}
!3753 = !DILocalVariable(name: "p", arg: 1, scope: !3749, file: !723, line: 325, type: !1011)
!3754 = !DILocalVariable(name: "s", arg: 2, scope: !3749, file: !723, line: 325, type: !742)
!3755 = !DILocalVariable(name: "result", scope: !3749, file: !723, line: 327, type: !105)
!3756 = !DILocation(line: 0, scope: !3749)
!3757 = !DILocation(line: 327, column: 30, scope: !3749)
!3758 = !DILocation(line: 0, scope: !3406, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 327, column: 18, scope: !3749)
!3760 = !DILocation(line: 0, scope: !3413, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 55, column: 25, scope: !3406, inlinedAt: !3759)
!3762 = !DILocation(line: 57, column: 26, scope: !3413, inlinedAt: !3761)
!3763 = !DILocation(line: 0, scope: !3373, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 55, column: 10, scope: !3406, inlinedAt: !3759)
!3765 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3764)
!3766 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3764)
!3767 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3764)
!3768 = !DILocation(line: 328, column: 3, scope: !3749)
!3769 = !DILocation(line: 328, column: 13, scope: !3749)
!3770 = !DILocation(line: 0, scope: !3717, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 329, column: 10, scope: !3749)
!3772 = !DILocation(line: 29, column: 10, scope: !3717, inlinedAt: !3771)
!3773 = !DILocation(line: 329, column: 3, scope: !3749)
!3774 = distinct !DISubprogram(name: "xstrdup", scope: !723, file: !723, line: 335, type: !989, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3775)
!3775 = !{!3776}
!3776 = !DILocalVariable(name: "string", arg: 1, scope: !3774, file: !723, line: 335, type: !111)
!3777 = !DILocation(line: 0, scope: !3774)
!3778 = !DILocation(line: 337, column: 27, scope: !3774)
!3779 = !DILocation(line: 337, column: 43, scope: !3774)
!3780 = !DILocation(line: 0, scope: !3701, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 337, column: 10, scope: !3774)
!3782 = !DILocation(line: 0, scope: !3392, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 312, column: 18, scope: !3701, inlinedAt: !3781)
!3784 = !DILocation(line: 49, column: 25, scope: !3392, inlinedAt: !3783)
!3785 = !DILocation(line: 0, scope: !3373, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 49, column: 10, scope: !3392, inlinedAt: !3783)
!3787 = !DILocation(line: 39, column: 8, scope: !3380, inlinedAt: !3786)
!3788 = !DILocation(line: 39, column: 7, scope: !3373, inlinedAt: !3786)
!3789 = !DILocation(line: 40, column: 5, scope: !3380, inlinedAt: !3786)
!3790 = !DILocation(line: 0, scope: !3717, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 312, column: 10, scope: !3701, inlinedAt: !3781)
!3792 = !DILocation(line: 29, column: 10, scope: !3717, inlinedAt: !3791)
!3793 = !DILocation(line: 337, column: 3, scope: !3774)
!3794 = distinct !DISubprogram(name: "xalloc_die", scope: !676, file: !676, line: 32, type: !440, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3795)
!3795 = !{!3796}
!3796 = !DILocalVariable(name: "__errstatus", scope: !3797, file: !676, line: 34, type: !3798)
!3797 = distinct !DILexicalBlock(scope: !3794, file: !676, line: 34, column: 3)
!3798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3799 = !DILocation(line: 34, column: 3, scope: !3797)
!3800 = !DILocation(line: 0, scope: !3797)
!3801 = !DILocation(line: 40, column: 3, scope: !3794)
!3802 = distinct !DISubprogram(name: "close_stream", scope: !760, file: !760, line: 55, type: !3803, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3839)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!70, !3805}
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3808)
!3808 = !{!3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3807, file: !188, line: 51, baseType: !70, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3807, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3807, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3807, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3807, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3807, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3807, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3807, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3807, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3807, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3807, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3807, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3807, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3807, file: !188, line: 70, baseType: !3823, size: 64, offset: 832)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3807, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3807, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3807, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3807, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3807, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3807, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3807, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3807, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3807, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3807, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3807, file: !188, line: 93, baseType: !3823, size: 64, offset: 1344)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3807, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3807, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3807, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3807, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3839 = !{!3840, !3841, !3843, !3844}
!3840 = !DILocalVariable(name: "stream", arg: 1, scope: !3802, file: !760, line: 55, type: !3805)
!3841 = !DILocalVariable(name: "some_pending", scope: !3802, file: !760, line: 57, type: !3842)
!3842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!3843 = !DILocalVariable(name: "prev_fail", scope: !3802, file: !760, line: 58, type: !3842)
!3844 = !DILocalVariable(name: "fclose_fail", scope: !3802, file: !760, line: 59, type: !3842)
!3845 = !DILocation(line: 0, scope: !3802)
!3846 = !DILocation(line: 57, column: 30, scope: !3802)
!3847 = !DILocalVariable(name: "__stream", arg: 1, scope: !3848, file: !1309, line: 135, type: !3805)
!3848 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1309, file: !1309, line: 135, type: !3803, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3849)
!3849 = !{!3847}
!3850 = !DILocation(line: 0, scope: !3848, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 58, column: 27, scope: !3802)
!3852 = !DILocation(line: 137, column: 10, scope: !3848, inlinedAt: !3851)
!3853 = !{!1318, !864, i64 0}
!3854 = !DILocation(line: 58, column: 43, scope: !3802)
!3855 = !DILocation(line: 59, column: 29, scope: !3802)
!3856 = !DILocation(line: 59, column: 45, scope: !3802)
!3857 = !DILocation(line: 69, column: 17, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3802, file: !760, line: 69, column: 7)
!3859 = !DILocation(line: 57, column: 50, scope: !3802)
!3860 = !DILocation(line: 69, column: 33, scope: !3858)
!3861 = !DILocation(line: 69, column: 53, scope: !3858)
!3862 = !DILocation(line: 69, column: 59, scope: !3858)
!3863 = !DILocation(line: 69, column: 7, scope: !3802)
!3864 = !DILocation(line: 71, column: 11, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3858, file: !760, line: 70, column: 5)
!3866 = !DILocation(line: 72, column: 9, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3865, file: !760, line: 71, column: 11)
!3868 = !DILocation(line: 72, column: 15, scope: !3867)
!3869 = !DILocation(line: 77, column: 1, scope: !3802)
!3870 = !DISubprogram(name: "__fpending", scope: !3871, file: !3871, line: 75, type: !3872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3871 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!108, !3805}
!3874 = distinct !DISubprogram(name: "rpl_fclose", scope: !762, file: !762, line: 58, type: !3875, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3911)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!70, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3879)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3880)
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3879, file: !188, line: 51, baseType: !70, size: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3879, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3879, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3879, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3879, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3879, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3879, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3879, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3879, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3879, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3879, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3879, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3879, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3879, file: !188, line: 70, baseType: !3895, size: 64, offset: 832)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3879, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3879, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3879, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3879, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3879, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3879, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3879, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3879, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3879, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3879, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3879, file: !188, line: 93, baseType: !3895, size: 64, offset: 1344)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3879, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3879, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3879, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3879, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3911 = !{!3912, !3913, !3914, !3915}
!3912 = !DILocalVariable(name: "fp", arg: 1, scope: !3874, file: !762, line: 58, type: !3877)
!3913 = !DILocalVariable(name: "saved_errno", scope: !3874, file: !762, line: 60, type: !70)
!3914 = !DILocalVariable(name: "fd", scope: !3874, file: !762, line: 63, type: !70)
!3915 = !DILocalVariable(name: "result", scope: !3874, file: !762, line: 74, type: !70)
!3916 = !DILocation(line: 0, scope: !3874)
!3917 = !DILocation(line: 63, column: 12, scope: !3874)
!3918 = !DILocation(line: 64, column: 10, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3874, file: !762, line: 64, column: 7)
!3920 = !DILocation(line: 64, column: 7, scope: !3874)
!3921 = !DILocation(line: 65, column: 12, scope: !3919)
!3922 = !DILocation(line: 65, column: 5, scope: !3919)
!3923 = !DILocation(line: 70, column: 9, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3874, file: !762, line: 70, column: 7)
!3925 = !DILocation(line: 70, column: 23, scope: !3924)
!3926 = !DILocation(line: 70, column: 33, scope: !3924)
!3927 = !DILocation(line: 70, column: 26, scope: !3924)
!3928 = !DILocation(line: 70, column: 59, scope: !3924)
!3929 = !DILocation(line: 71, column: 7, scope: !3924)
!3930 = !DILocation(line: 71, column: 10, scope: !3924)
!3931 = !DILocation(line: 70, column: 7, scope: !3874)
!3932 = !DILocation(line: 100, column: 12, scope: !3874)
!3933 = !DILocation(line: 105, column: 7, scope: !3874)
!3934 = !DILocation(line: 72, column: 19, scope: !3924)
!3935 = !DILocation(line: 105, column: 19, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3874, file: !762, line: 105, column: 7)
!3937 = !DILocation(line: 107, column: 13, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3936, file: !762, line: 106, column: 5)
!3939 = !DILocation(line: 109, column: 5, scope: !3938)
!3940 = !DILocation(line: 112, column: 1, scope: !3874)
!3941 = !DISubprogram(name: "fileno", scope: !858, file: !858, line: 809, type: !3875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3942 = !DISubprogram(name: "fclose", scope: !858, file: !858, line: 178, type: !3875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3943 = !DISubprogram(name: "__freading", scope: !3871, file: !3871, line: 51, type: !3875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3944 = !DISubprogram(name: "lseek", scope: !1192, file: !1192, line: 339, type: !3945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!210, !70, !210, !70}
!3947 = distinct !DISubprogram(name: "rpl_fflush", scope: !764, file: !764, line: 130, type: !3948, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3984)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!70, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3952)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3952, file: !188, line: 51, baseType: !70, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3952, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3952, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3952, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3952, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3952, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3952, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3952, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3952, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3952, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3952, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3952, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3952, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3952, file: !188, line: 70, baseType: !3968, size: 64, offset: 832)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3952, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3952, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3952, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3952, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3952, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3952, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3952, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3952, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3952, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3952, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3952, file: !188, line: 93, baseType: !3968, size: 64, offset: 1344)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3952, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3952, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3952, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3952, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3984 = !{!3985}
!3985 = !DILocalVariable(name: "stream", arg: 1, scope: !3947, file: !764, line: 130, type: !3950)
!3986 = !DILocation(line: 0, scope: !3947)
!3987 = !DILocation(line: 151, column: 14, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3947, file: !764, line: 151, column: 7)
!3989 = !DILocation(line: 151, column: 22, scope: !3988)
!3990 = !DILocation(line: 151, column: 27, scope: !3988)
!3991 = !DILocation(line: 151, column: 7, scope: !3947)
!3992 = !DILocation(line: 152, column: 12, scope: !3988)
!3993 = !DILocation(line: 152, column: 5, scope: !3988)
!3994 = !DILocalVariable(name: "fp", arg: 1, scope: !3995, file: !764, line: 42, type: !3950)
!3995 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !764, file: !764, line: 42, type: !3996, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !3950}
!3998 = !{!3994}
!3999 = !DILocation(line: 0, scope: !3995, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 157, column: 3, scope: !3947)
!4001 = !DILocation(line: 44, column: 12, scope: !4002, inlinedAt: !4000)
!4002 = distinct !DILexicalBlock(scope: !3995, file: !764, line: 44, column: 7)
!4003 = !DILocation(line: 44, column: 19, scope: !4002, inlinedAt: !4000)
!4004 = !DILocation(line: 44, column: 7, scope: !3995, inlinedAt: !4000)
!4005 = !DILocation(line: 46, column: 5, scope: !4002, inlinedAt: !4000)
!4006 = !DILocation(line: 159, column: 10, scope: !3947)
!4007 = !DILocation(line: 159, column: 3, scope: !3947)
!4008 = !DILocation(line: 236, column: 1, scope: !3947)
!4009 = !DISubprogram(name: "fflush", scope: !858, file: !858, line: 230, type: !3948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4010 = distinct !DISubprogram(name: "rpl_fseeko", scope: !766, file: !766, line: 28, type: !4011, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !4048)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!70, !4013, !4047, !70}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !4015)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4015, file: !188, line: 51, baseType: !70, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4015, file: !188, line: 54, baseType: !105, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4015, file: !188, line: 55, baseType: !105, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4015, file: !188, line: 56, baseType: !105, size: 64, offset: 192)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4015, file: !188, line: 57, baseType: !105, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4015, file: !188, line: 58, baseType: !105, size: 64, offset: 320)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4015, file: !188, line: 59, baseType: !105, size: 64, offset: 384)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4015, file: !188, line: 60, baseType: !105, size: 64, offset: 448)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4015, file: !188, line: 61, baseType: !105, size: 64, offset: 512)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4015, file: !188, line: 64, baseType: !105, size: 64, offset: 576)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4015, file: !188, line: 65, baseType: !105, size: 64, offset: 640)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4015, file: !188, line: 66, baseType: !105, size: 64, offset: 704)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4015, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4015, file: !188, line: 70, baseType: !4031, size: 64, offset: 832)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4015, file: !188, line: 72, baseType: !70, size: 32, offset: 896)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4015, file: !188, line: 73, baseType: !70, size: 32, offset: 928)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4015, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4015, file: !188, line: 77, baseType: !107, size: 16, offset: 1024)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4015, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4015, file: !188, line: 79, baseType: !46, size: 8, offset: 1048)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4015, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4015, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4015, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4015, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4015, file: !188, line: 93, baseType: !4031, size: 64, offset: 1344)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4015, file: !188, line: 94, baseType: !106, size: 64, offset: 1408)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4015, file: !188, line: 95, baseType: !108, size: 64, offset: 1472)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4015, file: !188, line: 96, baseType: !70, size: 32, offset: 1536)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4015, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !858, line: 63, baseType: !210)
!4048 = !{!4049, !4050, !4051, !4052}
!4049 = !DILocalVariable(name: "fp", arg: 1, scope: !4010, file: !766, line: 28, type: !4013)
!4050 = !DILocalVariable(name: "offset", arg: 2, scope: !4010, file: !766, line: 28, type: !4047)
!4051 = !DILocalVariable(name: "whence", arg: 3, scope: !4010, file: !766, line: 28, type: !70)
!4052 = !DILocalVariable(name: "pos", scope: !4053, file: !766, line: 123, type: !4047)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !766, line: 119, column: 5)
!4054 = distinct !DILexicalBlock(scope: !4010, file: !766, line: 55, column: 7)
!4055 = !DILocation(line: 0, scope: !4010)
!4056 = !DILocation(line: 55, column: 12, scope: !4054)
!4057 = !{!1318, !797, i64 16}
!4058 = !DILocation(line: 55, column: 33, scope: !4054)
!4059 = !{!1318, !797, i64 8}
!4060 = !DILocation(line: 55, column: 25, scope: !4054)
!4061 = !DILocation(line: 56, column: 7, scope: !4054)
!4062 = !DILocation(line: 56, column: 15, scope: !4054)
!4063 = !DILocation(line: 56, column: 37, scope: !4054)
!4064 = !{!1318, !797, i64 32}
!4065 = !DILocation(line: 56, column: 29, scope: !4054)
!4066 = !DILocation(line: 57, column: 7, scope: !4054)
!4067 = !DILocation(line: 57, column: 15, scope: !4054)
!4068 = !{!1318, !797, i64 72}
!4069 = !DILocation(line: 57, column: 29, scope: !4054)
!4070 = !DILocation(line: 55, column: 7, scope: !4010)
!4071 = !DILocation(line: 123, column: 26, scope: !4053)
!4072 = !DILocation(line: 123, column: 19, scope: !4053)
!4073 = !DILocation(line: 0, scope: !4053)
!4074 = !DILocation(line: 124, column: 15, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4053, file: !766, line: 124, column: 11)
!4076 = !DILocation(line: 124, column: 11, scope: !4053)
!4077 = !DILocation(line: 135, column: 19, scope: !4053)
!4078 = !DILocation(line: 136, column: 12, scope: !4053)
!4079 = !DILocation(line: 136, column: 20, scope: !4053)
!4080 = !{!1318, !1319, i64 144}
!4081 = !DILocation(line: 167, column: 7, scope: !4053)
!4082 = !DILocation(line: 169, column: 10, scope: !4010)
!4083 = !DILocation(line: 169, column: 3, scope: !4010)
!4084 = !DILocation(line: 170, column: 1, scope: !4010)
!4085 = !DISubprogram(name: "fseeko", scope: !858, file: !858, line: 736, type: !4086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!70, !4013, !210, !70}
!4088 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !683, file: !683, line: 100, type: !4089, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !4092)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!108, !1851, !111, !108, !4091}
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!4092 = !{!4093, !4094, !4095, !4096, !4097}
!4093 = !DILocalVariable(name: "pwc", arg: 1, scope: !4088, file: !683, line: 100, type: !1851)
!4094 = !DILocalVariable(name: "s", arg: 2, scope: !4088, file: !683, line: 100, type: !111)
!4095 = !DILocalVariable(name: "n", arg: 3, scope: !4088, file: !683, line: 100, type: !108)
!4096 = !DILocalVariable(name: "ps", arg: 4, scope: !4088, file: !683, line: 100, type: !4091)
!4097 = !DILocalVariable(name: "ret", scope: !4088, file: !683, line: 130, type: !108)
!4098 = !DILocation(line: 0, scope: !4088)
!4099 = !DILocation(line: 105, column: 9, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4088, file: !683, line: 105, column: 7)
!4101 = !DILocation(line: 105, column: 7, scope: !4088)
!4102 = !DILocation(line: 117, column: 10, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4088, file: !683, line: 117, column: 7)
!4104 = !DILocation(line: 117, column: 7, scope: !4088)
!4105 = !DILocation(line: 130, column: 16, scope: !4088)
!4106 = !DILocation(line: 135, column: 11, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4088, file: !683, line: 135, column: 7)
!4108 = !DILocation(line: 135, column: 25, scope: !4107)
!4109 = !DILocation(line: 135, column: 30, scope: !4107)
!4110 = !DILocation(line: 135, column: 7, scope: !4088)
!4111 = !DILocalVariable(name: "ps", arg: 1, scope: !4112, file: !1824, line: 1135, type: !4091)
!4112 = distinct !DISubprogram(name: "mbszero", scope: !1824, file: !1824, line: 1135, type: !4113, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !4091}
!4115 = !{!4111}
!4116 = !DILocation(line: 0, scope: !4112, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 137, column: 5, scope: !4107)
!4118 = !DILocalVariable(name: "__dest", arg: 1, scope: !4119, file: !1833, line: 57, type: !106)
!4119 = distinct !DISubprogram(name: "memset", scope: !1833, file: !1833, line: 57, type: !1834, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !4120)
!4120 = !{!4118, !4121, !4122}
!4121 = !DILocalVariable(name: "__ch", arg: 2, scope: !4119, file: !1833, line: 57, type: !70)
!4122 = !DILocalVariable(name: "__len", arg: 3, scope: !4119, file: !1833, line: 57, type: !108)
!4123 = !DILocation(line: 0, scope: !4119, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 1137, column: 3, scope: !4112, inlinedAt: !4117)
!4125 = !DILocation(line: 59, column: 10, scope: !4119, inlinedAt: !4124)
!4126 = !DILocation(line: 137, column: 5, scope: !4107)
!4127 = !DILocation(line: 138, column: 11, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4088, file: !683, line: 138, column: 7)
!4129 = !DILocation(line: 138, column: 7, scope: !4088)
!4130 = !DILocation(line: 139, column: 5, scope: !4128)
!4131 = !DILocation(line: 143, column: 26, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4088, file: !683, line: 143, column: 7)
!4133 = !DILocation(line: 143, column: 41, scope: !4132)
!4134 = !DILocation(line: 143, column: 7, scope: !4088)
!4135 = !DILocation(line: 145, column: 15, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4137, file: !683, line: 145, column: 11)
!4137 = distinct !DILexicalBlock(scope: !4132, file: !683, line: 144, column: 5)
!4138 = !DILocation(line: 145, column: 11, scope: !4137)
!4139 = !DILocation(line: 146, column: 32, scope: !4136)
!4140 = !DILocation(line: 146, column: 16, scope: !4136)
!4141 = !DILocation(line: 146, column: 14, scope: !4136)
!4142 = !DILocation(line: 146, column: 9, scope: !4136)
!4143 = !DILocation(line: 286, column: 1, scope: !4088)
!4144 = !DISubprogram(name: "mbsinit", scope: !4145, file: !4145, line: 293, type: !4146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4145 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!70, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!4150 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !768, file: !768, line: 27, type: !3357, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !4151)
!4151 = !{!4152, !4153, !4154, !4155}
!4152 = !DILocalVariable(name: "ptr", arg: 1, scope: !4150, file: !768, line: 27, type: !106)
!4153 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4150, file: !768, line: 27, type: !108)
!4154 = !DILocalVariable(name: "size", arg: 3, scope: !4150, file: !768, line: 27, type: !108)
!4155 = !DILocalVariable(name: "nbytes", scope: !4150, file: !768, line: 29, type: !108)
!4156 = !DILocation(line: 0, scope: !4150)
!4157 = !DILocation(line: 30, column: 7, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4150, file: !768, line: 30, column: 7)
!4159 = !DILocation(line: 30, column: 7, scope: !4150)
!4160 = !DILocation(line: 32, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4158, file: !768, line: 31, column: 5)
!4162 = !DILocation(line: 32, column: 13, scope: !4161)
!4163 = !DILocation(line: 33, column: 7, scope: !4161)
!4164 = !DILocalVariable(name: "ptr", arg: 1, scope: !4165, file: !3449, line: 2057, type: !106)
!4165 = distinct !DISubprogram(name: "rpl_realloc", scope: !3449, file: !3449, line: 2057, type: !3441, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !4166)
!4166 = !{!4164, !4167}
!4167 = !DILocalVariable(name: "size", arg: 2, scope: !4165, file: !3449, line: 2057, type: !108)
!4168 = !DILocation(line: 0, scope: !4165, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 37, column: 10, scope: !4150)
!4170 = !DILocation(line: 2059, column: 24, scope: !4165, inlinedAt: !4169)
!4171 = !DILocation(line: 2059, column: 10, scope: !4165, inlinedAt: !4169)
!4172 = !DILocation(line: 37, column: 3, scope: !4150)
!4173 = !DILocation(line: 38, column: 1, scope: !4150)
!4174 = distinct !DISubprogram(name: "hard_locale", scope: !701, file: !701, line: 28, type: !4175, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4177)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!171, !70}
!4177 = !{!4178, !4179}
!4178 = !DILocalVariable(name: "category", arg: 1, scope: !4174, file: !701, line: 28, type: !70)
!4179 = !DILocalVariable(name: "locale", scope: !4174, file: !701, line: 30, type: !4180)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4181)
!4181 = !{!4182}
!4182 = !DISubrange(count: 257)
!4183 = distinct !DIAssignID()
!4184 = !DILocation(line: 0, scope: !4174)
!4185 = !DILocation(line: 30, column: 3, scope: !4174)
!4186 = !DILocation(line: 32, column: 7, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4174, file: !701, line: 32, column: 7)
!4188 = !DILocation(line: 32, column: 7, scope: !4174)
!4189 = !DILocalVariable(name: "__s1", arg: 1, scope: !4190, file: !876, line: 1359, type: !111)
!4190 = distinct !DISubprogram(name: "streq", scope: !876, file: !876, line: 1359, type: !877, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4191)
!4191 = !{!4189, !4192}
!4192 = !DILocalVariable(name: "__s2", arg: 2, scope: !4190, file: !876, line: 1359, type: !111)
!4193 = !DILocation(line: 0, scope: !4190, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 35, column: 9, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4174, file: !701, line: 35, column: 7)
!4196 = !DILocation(line: 1361, column: 11, scope: !4190, inlinedAt: !4194)
!4197 = !DILocation(line: 35, column: 29, scope: !4195)
!4198 = !DILocation(line: 0, scope: !4190, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 35, column: 32, scope: !4195)
!4200 = !DILocation(line: 1361, column: 11, scope: !4190, inlinedAt: !4199)
!4201 = !DILocation(line: 1361, column: 10, scope: !4190, inlinedAt: !4199)
!4202 = !DILocation(line: 35, column: 7, scope: !4174)
!4203 = !DILocation(line: 46, column: 3, scope: !4174)
!4204 = !DILocation(line: 47, column: 1, scope: !4174)
!4205 = distinct !DISubprogram(name: "setlocale_null_r", scope: !774, file: !774, line: 154, type: !4206, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4208)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!70, !70, !105, !108}
!4208 = !{!4209, !4210, !4211}
!4209 = !DILocalVariable(name: "category", arg: 1, scope: !4205, file: !774, line: 154, type: !70)
!4210 = !DILocalVariable(name: "buf", arg: 2, scope: !4205, file: !774, line: 154, type: !105)
!4211 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4205, file: !774, line: 154, type: !108)
!4212 = !DILocation(line: 0, scope: !4205)
!4213 = !DILocation(line: 159, column: 10, scope: !4205)
!4214 = !DILocation(line: 159, column: 3, scope: !4205)
!4215 = distinct !DISubprogram(name: "setlocale_null", scope: !774, file: !774, line: 186, type: !4216, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4218)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!111, !70}
!4218 = !{!4219}
!4219 = !DILocalVariable(name: "category", arg: 1, scope: !4215, file: !774, line: 186, type: !70)
!4220 = !DILocation(line: 0, scope: !4215)
!4221 = !DILocation(line: 189, column: 10, scope: !4215)
!4222 = !DILocation(line: 189, column: 3, scope: !4215)
!4223 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !776, file: !776, line: 35, type: !4216, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4224)
!4224 = !{!4225, !4226}
!4225 = !DILocalVariable(name: "category", arg: 1, scope: !4223, file: !776, line: 35, type: !70)
!4226 = !DILocalVariable(name: "result", scope: !4223, file: !776, line: 37, type: !111)
!4227 = !DILocation(line: 0, scope: !4223)
!4228 = !DILocation(line: 37, column: 24, scope: !4223)
!4229 = !DILocation(line: 62, column: 3, scope: !4223)
!4230 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !776, file: !776, line: 66, type: !4206, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4231)
!4231 = !{!4232, !4233, !4234, !4235, !4236}
!4232 = !DILocalVariable(name: "category", arg: 1, scope: !4230, file: !776, line: 66, type: !70)
!4233 = !DILocalVariable(name: "buf", arg: 2, scope: !4230, file: !776, line: 66, type: !105)
!4234 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4230, file: !776, line: 66, type: !108)
!4235 = !DILocalVariable(name: "result", scope: !4230, file: !776, line: 111, type: !111)
!4236 = !DILocalVariable(name: "length", scope: !4237, file: !776, line: 125, type: !108)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !776, line: 124, column: 5)
!4238 = distinct !DILexicalBlock(scope: !4230, file: !776, line: 113, column: 7)
!4239 = !DILocation(line: 0, scope: !4230)
!4240 = !DILocation(line: 0, scope: !4223, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 111, column: 24, scope: !4230)
!4242 = !DILocation(line: 37, column: 24, scope: !4223, inlinedAt: !4241)
!4243 = !DILocation(line: 113, column: 14, scope: !4238)
!4244 = !DILocation(line: 113, column: 7, scope: !4230)
!4245 = !DILocation(line: 116, column: 19, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !776, line: 116, column: 11)
!4247 = distinct !DILexicalBlock(scope: !4238, file: !776, line: 114, column: 5)
!4248 = !DILocation(line: 116, column: 11, scope: !4247)
!4249 = !DILocation(line: 120, column: 16, scope: !4246)
!4250 = !DILocation(line: 120, column: 9, scope: !4246)
!4251 = !DILocation(line: 125, column: 23, scope: !4237)
!4252 = !DILocation(line: 0, scope: !4237)
!4253 = !DILocation(line: 126, column: 18, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4237, file: !776, line: 126, column: 11)
!4255 = !DILocation(line: 126, column: 11, scope: !4237)
!4256 = !DILocation(line: 128, column: 39, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4254, file: !776, line: 127, column: 9)
!4258 = !DILocalVariable(name: "__dest", arg: 1, scope: !4259, file: !1833, line: 26, type: !3720)
!4259 = distinct !DISubprogram(name: "memcpy", scope: !1833, file: !1833, line: 26, type: !3718, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4260)
!4260 = !{!4258, !4261, !4262}
!4261 = !DILocalVariable(name: "__src", arg: 2, scope: !4259, file: !1833, line: 26, type: !1010)
!4262 = !DILocalVariable(name: "__len", arg: 3, scope: !4259, file: !1833, line: 26, type: !108)
!4263 = !DILocation(line: 0, scope: !4259, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 128, column: 11, scope: !4257)
!4265 = !DILocation(line: 29, column: 10, scope: !4259, inlinedAt: !4264)
!4266 = !DILocation(line: 129, column: 11, scope: !4257)
!4267 = !DILocation(line: 133, column: 23, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !776, line: 133, column: 15)
!4269 = distinct !DILexicalBlock(scope: !4254, file: !776, line: 132, column: 9)
!4270 = !DILocation(line: 133, column: 15, scope: !4269)
!4271 = !DILocation(line: 138, column: 44, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4268, file: !776, line: 134, column: 13)
!4273 = !DILocation(line: 0, scope: !4259, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 138, column: 15, scope: !4272)
!4275 = !DILocation(line: 29, column: 10, scope: !4259, inlinedAt: !4274)
!4276 = !DILocation(line: 139, column: 15, scope: !4272)
!4277 = !DILocation(line: 139, column: 32, scope: !4272)
!4278 = !DILocation(line: 140, column: 13, scope: !4272)
!4279 = !DILocation(line: 0, scope: !4238)
!4280 = !DILocation(line: 145, column: 1, scope: !4230)
