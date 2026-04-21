; ModuleID = 'src/tty.bc'
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

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [67 x i8] c"Print the file name of the terminal connected to standard input.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"tty\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [76 x i8] c"  -s, --silent, --quiet\0A         print nothing, only return an exit status\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !37
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1, !dbg !52
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.51, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !57
@silent = internal unnamed_addr global i1 false, align 1, !dbg !331
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !100
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !105
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !110
@.str.14 = private unnamed_addr constant [14 x i8] c"ttyname error\00", align 1, !dbg !115
@.str.15 = private unnamed_addr constant [10 x i8] c"not a tty\00", align 1, !dbg !117
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !122
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !204
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !209
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !211
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !213
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !253
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !255
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !257
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !259
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !264
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !269
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !274
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !276
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !278
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !280
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !291
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !293
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !298
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !303
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !308
@.str.51 = private unnamed_addr constant [7 x i8] c"silent\00", align 1, !dbg !313
@.str.52 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1, !dbg !315
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !317
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !319
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !332
@Version = dso_local local_unnamed_addr global ptr @.str.20, align 8, !dbg !335
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !339
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !352
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !344
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !346
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !348
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !350
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !354
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !360
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !391
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !362
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !381
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !383
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !385
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !387
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !389
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !393
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !395
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !400
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !405
@.str.44 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !411
@.str.1.45 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !413
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !415
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !446
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !449
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !451
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !456
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !458
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !460
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !462
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !464
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !466
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !468
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.55, ptr @.str.1.56, ptr @.str.2.57, ptr @.str.3.58, ptr @.str.4.59, ptr @.str.5.60, ptr @.str.6.61, ptr @.str.7.62, ptr @.str.8.63, ptr @.str.9.64, ptr null], align 16, !dbg !470
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !495
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !509
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !547
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !554
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !511
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !556
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !499
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !516
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !518
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !520
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !522
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !524
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !562
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !565
@.str.2.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !567
@.str.3.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !569
@.str.4.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !571
@.str.5.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !573
@.str.6.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !578
@.str.7.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !583
@.str.8.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !585
@.str.9.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !587
@.str.10.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !592
@.str.11.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !597
@.str.12.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !602
@.str.13.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !604
@.str.14.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !609
@.str.15.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !614
@.str.16.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !619
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !624
@.str.18.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !626
@.str.19.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !628
@.str.20.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !630
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !632
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !634
@.str.23.98 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !636
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !641
@exit_failure = dso_local global i32 1, align 4, !dbg !649
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !655
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !658
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !660
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !662
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !665
@.str.1.127 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !680

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !755 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !759, metadata !DIExpression()), !dbg !760
  %2 = icmp eq i32 %0, 0, !dbg !761
  br i1 %2, label %8, label %3, !dbg !763

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !764, !tbaa !766
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !764
  %6 = load ptr, ptr @program_name, align 8, !dbg !764, !tbaa !766
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !764
  br label %32, !dbg !764

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !770
  %10 = load ptr, ptr @program_name, align 8, !dbg !770, !tbaa !766
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !770
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !772
  %13 = load ptr, ptr @stdout, align 8, !dbg !772, !tbaa !766
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !772
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !773
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !773
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !774
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !774
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !775
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !775
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !776, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata !795, metadata !789, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr poison, metadata !788, metadata !DIExpression()), !dbg !793
  tail call void @emit_bug_reporting_address() #37, !dbg !796
  %18 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !797
  call void @llvm.dbg.value(metadata ptr %18, metadata !791, metadata !DIExpression()), !dbg !793
  %19 = icmp eq ptr %18, null, !dbg !798
  br i1 %19, label %27, label %20, !dbg !800

20:                                               ; preds = %8
  %21 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #38, !dbg !801
  %22 = icmp eq i32 %21, 0, !dbg !801
  br i1 %22, label %27, label %23, !dbg !802

23:                                               ; preds = %20
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !803
  %25 = load ptr, ptr @stdout, align 8, !dbg !803, !tbaa !766
  %26 = tail call i32 @fputs_unlocked(ptr noundef %24, ptr noundef %25), !dbg !803
  br label %27, !dbg !805

27:                                               ; preds = %8, %20, %23
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !788, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !792, metadata !DIExpression()), !dbg !793
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !806
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %28, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #37, !dbg !806
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !807
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #37, !dbg !807
  br label %32

32:                                               ; preds = %27, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !808
  unreachable, !dbg !808
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !809 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !813 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !819 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !822 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !124 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !128, metadata !DIExpression()), !dbg !826
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !129, metadata !DIExpression()), !dbg !826
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !827, !tbaa !828
  %3 = icmp eq i32 %2, -1, !dbg !830
  br i1 %3, label %4, label %16, !dbg !831

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #37, !dbg !832
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !130, metadata !DIExpression()), !dbg !833
  %6 = icmp eq ptr %5, null, !dbg !834
  br i1 %6, label %14, label %7, !dbg !835

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !836, !tbaa !837
  %9 = icmp eq i8 %8, 0, !dbg !836
  br i1 %9, label %14, label %10, !dbg !838

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !839, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !845, metadata !DIExpression()), !dbg !846
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #38, !dbg !848
  %12 = icmp eq i32 %11, 0, !dbg !849
  %13 = zext i1 %12 to i32, !dbg !838
  br label %14, !dbg !838

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !850, !tbaa !828
  br label %16, !dbg !851

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !852
  %18 = icmp eq i32 %17, 0, !dbg !852
  br i1 %18, label %22, label %19, !dbg !854

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !766
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !855
  br label %124, !dbg !857

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !133, metadata !DIExpression()), !dbg !826
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #38, !dbg !858
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !859
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !134, metadata !DIExpression()), !dbg !826
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !860
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !135, metadata !DIExpression()), !dbg !826
  %26 = icmp eq ptr %25, null, !dbg !861
  br i1 %26, label %54, label %27, !dbg !862

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !863
  br i1 %28, label %54, label %29, !dbg !864

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !136, metadata !DIExpression()), !dbg !865
  tail call void @llvm.dbg.value(metadata i64 0, metadata !140, metadata !DIExpression()), !dbg !865
  %30 = icmp ult ptr %24, %25, !dbg !866
  br i1 %30, label %31, label %54, !dbg !867

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !826
  %33 = load ptr, ptr %32, align 8, !tbaa !766
  br label %34, !dbg !867

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !136, metadata !DIExpression()), !dbg !865
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !140, metadata !DIExpression()), !dbg !865
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !868
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !136, metadata !DIExpression()), !dbg !865
  %38 = load i8, ptr %35, align 1, !dbg !868, !tbaa !837
  %39 = sext i8 %38 to i64, !dbg !868
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !868
  %41 = load i16, ptr %40, align 2, !dbg !868, !tbaa !869
  %42 = freeze i16 %41, !dbg !871
  %43 = lshr i16 %42, 13, !dbg !871
  %44 = and i16 %43, 1, !dbg !871
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !872
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !140, metadata !DIExpression()), !dbg !865
  %47 = icmp ult ptr %37, %25, !dbg !866
  %48 = icmp ult i64 %46, 2, !dbg !873
  %49 = select i1 %47, i1 %48, i1 false, !dbg !873
  br i1 %49, label %34, label %50, !dbg !867, !llvm.loop !874

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !876
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !878
  %53 = zext i1 %51 to i8, !dbg !878
  br label %54, !dbg !878

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !826
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !826
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !133, metadata !DIExpression()), !dbg !826
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !135, metadata !DIExpression()), !dbg !826
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.19) #38, !dbg !879
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !141, metadata !DIExpression()), !dbg !826
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !880
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !142, metadata !DIExpression()), !dbg !826
  br label %59, !dbg !881

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !826
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !826
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !133, metadata !DIExpression()), !dbg !826
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !142, metadata !DIExpression()), !dbg !826
  %62 = load i8, ptr %60, align 1, !dbg !882, !tbaa !837
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !883

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !884
  %65 = load i8, ptr %64, align 1, !dbg !887, !tbaa !837
  %66 = icmp eq i8 %65, 45, !dbg !888
  %67 = select i1 %66, i8 0, i8 %61, !dbg !889
  br label %68, !dbg !889

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !826
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !133, metadata !DIExpression()), !dbg !826
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !890
  %71 = load ptr, ptr %70, align 8, !dbg !890, !tbaa !766
  %72 = sext i8 %62 to i64, !dbg !890
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !890
  %74 = load i16, ptr %73, align 2, !dbg !890, !tbaa !869
  %75 = and i16 %74, 8192, !dbg !890
  %76 = icmp eq i16 %75, 0, !dbg !890
  br i1 %76, label %92, label %77, !dbg !892

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !893
  br i1 %78, label %94, label %79, !dbg !896

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !897
  %81 = load i8, ptr %80, align 1, !dbg !897, !tbaa !837
  %82 = sext i8 %81 to i64, !dbg !897
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !897
  %84 = load i16, ptr %83, align 2, !dbg !897, !tbaa !869
  %85 = and i16 %84, 8192, !dbg !897
  %86 = icmp eq i16 %85, 0, !dbg !897
  br i1 %86, label %87, label %94, !dbg !898

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !899
  %89 = icmp ne i8 %88, 0, !dbg !899
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !901
  br i1 %91, label %92, label %94, !dbg !901

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !902
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !142, metadata !DIExpression()), !dbg !826
  br label %59, !dbg !881, !llvm.loop !903

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !905
  %96 = load ptr, ptr @stdout, align 8, !dbg !905, !tbaa !766
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata !795, metadata !845, metadata !DIExpression()), !dbg !924
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !199, metadata !DIExpression()), !dbg !826
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #38, !dbg !926
  %99 = icmp eq i32 %98, 0, !dbg !926
  br i1 %99, label %103, label %100, !dbg !928

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #38, !dbg !929
  %102 = icmp eq i32 %101, 0, !dbg !929
  br i1 %102, label %103, label %106, !dbg !930

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !931
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !931
  br label %109, !dbg !933

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !934
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !934
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !936, !tbaa !766
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %110), !dbg !936
  %112 = load ptr, ptr @stdout, align 8, !dbg !937, !tbaa !766
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %112), !dbg !937
  %114 = ptrtoint ptr %60 to i64, !dbg !938
  %115 = sub i64 %114, %95, !dbg !938
  %116 = load ptr, ptr @stdout, align 8, !dbg !938, !tbaa !766
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !938
  %118 = load ptr, ptr @stdout, align 8, !dbg !939, !tbaa !766
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %118), !dbg !939
  %120 = load ptr, ptr @stdout, align 8, !dbg !940, !tbaa !766
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %120), !dbg !940
  %122 = load ptr, ptr @stdout, align 8, !dbg !941, !tbaa !766
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !941
  br label %124, !dbg !942

124:                                              ; preds = %109, %19
  ret void, !dbg !942
}

; Function Attrs: nounwind
declare !dbg !943 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !947 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !951 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !953 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !956 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !959 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !962 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !965 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !971 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !972 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !978 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !983, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !984, metadata !DIExpression()), !dbg !991
  %3 = load ptr, ptr %1, align 8, !dbg !992, !tbaa !766
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !993
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #37, !dbg !994
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #37, !dbg !995
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #37, !dbg !996
  tail call void @llvm.dbg.value(metadata i32 3, metadata !997, metadata !DIExpression()), !dbg !1000
  store volatile i32 3, ptr @exit_failure, align 4, !dbg !1002, !tbaa !828
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1004
  br label %8, !dbg !1005

8:                                                ; preds = %10, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !985, metadata !DIExpression()), !dbg !991
  switch i32 %9, label %16 [
    i32 -1, label %17
    i32 115, label %10
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1005

10:                                               ; preds = %8
  store i1 true, ptr @silent, align 1, !dbg !1007
  br label %8, !dbg !1005, !llvm.loop !1010

11:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #41, !dbg !1012
  unreachable, !dbg !1012

12:                                               ; preds = %8
  %13 = load ptr, ptr @stdout, align 8, !dbg !1013, !tbaa !766
  %14 = load ptr, ptr @Version, align 8, !dbg !1013, !tbaa !766
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #37, !dbg !1013
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %14, ptr noundef %15, ptr noundef null) #37, !dbg !1013
  tail call void @exit(i32 noundef 0) #39, !dbg !1013
  unreachable, !dbg !1013

16:                                               ; preds = %8
  tail call void @usage(i32 noundef 2) #41, !dbg !1014
  unreachable, !dbg !1014

17:                                               ; preds = %8
  %18 = load i32, ptr @optind, align 4, !dbg !1015, !tbaa !828
  %19 = icmp slt i32 %18, %0, !dbg !1017
  br i1 %19, label %20, label %27, !dbg !1018

20:                                               ; preds = %17
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1019
  %22 = load i32, ptr @optind, align 4, !dbg !1019, !tbaa !828
  %23 = sext i32 %22 to i64, !dbg !1019
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23, !dbg !1019
  %25 = load ptr, ptr %24, align 8, !dbg !1019, !tbaa !766
  %26 = tail call ptr @quote(ptr noundef %25) #37, !dbg !1019
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %21, ptr noundef %26) #37, !dbg !1019
  tail call void @usage(i32 noundef 2) #41, !dbg !1021
  unreachable, !dbg !1021

27:                                               ; preds = %17
  %28 = load i1, ptr @silent, align 1, !dbg !1022
  br i1 %28, label %29, label %33, !dbg !1024

29:                                               ; preds = %27
  %30 = tail call i32 @isatty(i32 noundef 0) #37, !dbg !1025
  %31 = icmp eq i32 %30, 0, !dbg !1025
  %32 = zext i1 %31 to i32, !dbg !1025
  br label %49, !dbg !1026

33:                                               ; preds = %27
  %34 = tail call ptr @ttyname(i32 noundef 0) #37, !dbg !1027
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !987, metadata !DIExpression()), !dbg !991
  %35 = icmp eq ptr %34, null, !dbg !1028
  br i1 %35, label %36, label %45, !dbg !1029

36:                                               ; preds = %33
  %37 = tail call ptr @__errno_location() #40, !dbg !1030
  %38 = load i32, ptr %37, align 4, !dbg !1030, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !988, metadata !DIExpression()), !dbg !1031
  %39 = tail call i32 @isatty(i32 noundef 0) #37, !dbg !1032
  %40 = icmp eq i32 %39, 0, !dbg !1032
  br i1 %40, label %43, label %41, !dbg !1034

41:                                               ; preds = %36
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !1035
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 4, i32 noundef %38, ptr noundef %42) #37, !dbg !1035
  unreachable, !dbg !1035

43:                                               ; preds = %36
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !987, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata i32 1, metadata !986, metadata !DIExpression()), !dbg !991
  br label %45

45:                                               ; preds = %33, %43
  %46 = phi i32 [ 1, %43 ], [ 0, %33 ], !dbg !1037
  %47 = phi ptr [ %44, %43 ], [ %34, %33 ], !dbg !991
  tail call void @llvm.dbg.value(metadata ptr %47, metadata !987, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !986, metadata !DIExpression()), !dbg !991
  %48 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %47), !dbg !1038
  br label %49

49:                                               ; preds = %45, %29
  %50 = phi i32 [ %32, %29 ], [ %46, %45 ], !dbg !991
  ret i32 %50, !dbg !1039
}

; Function Attrs: nounwind
declare !dbg !1040 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1043 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1044 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1047 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1053 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1057 ptr @ttyname(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1060 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1064 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1067 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1069, metadata !DIExpression()), !dbg !1070
  store ptr %0, ptr @file_name, align 8, !dbg !1071, !tbaa !766
  ret void, !dbg !1072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1073 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1077, metadata !DIExpression()), !dbg !1078
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1079, !tbaa !1080
  ret void, !dbg !1082
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1083 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1088, !tbaa !766
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1089
  %3 = icmp eq i32 %2, 0, !dbg !1090
  br i1 %3, label %22, label %4, !dbg !1091

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1092, !tbaa !1080, !range !1093, !noundef !795
  %6 = icmp eq i8 %5, 0, !dbg !1092
  br i1 %6, label %11, label %7, !dbg !1094

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1095
  %9 = load i32, ptr %8, align 4, !dbg !1095, !tbaa !828
  %10 = icmp eq i32 %9, 32, !dbg !1096
  br i1 %10, label %22, label %11, !dbg !1097

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #37, !dbg !1098
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1085, metadata !DIExpression()), !dbg !1099
  %13 = load ptr, ptr @file_name, align 8, !dbg !1100, !tbaa !766
  %14 = icmp eq ptr %13, null, !dbg !1100
  %15 = tail call ptr @__errno_location() #40, !dbg !1102
  %16 = load i32, ptr %15, align 4, !dbg !1102, !tbaa !828
  br i1 %14, label %19, label %17, !dbg !1103

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1104
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #37, !dbg !1104
  br label %20, !dbg !1104

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #37, !dbg !1105
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1106, !tbaa !828
  tail call void @_exit(i32 noundef %21) #39, !dbg !1107
  unreachable, !dbg !1107

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1108, !tbaa !766
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1110
  %25 = icmp eq i32 %24, 0, !dbg !1111
  br i1 %25, label %28, label %26, !dbg !1112

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1113, !tbaa !828
  tail call void @_exit(i32 noundef %27) #39, !dbg !1114
  unreachable, !dbg !1114

28:                                               ; preds = %22
  ret void, !dbg !1115
}

; Function Attrs: noreturn
declare !dbg !1116 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1117 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1121, metadata !DIExpression()), !dbg !1125
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1122, metadata !DIExpression()), !dbg !1125
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1123, metadata !DIExpression()), !dbg !1125
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1124, metadata !DIExpression()), !dbg !1125
  tail call fastcc void @flush_stdout(), !dbg !1126
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1127, !tbaa !766
  %6 = icmp eq ptr %5, null, !dbg !1127
  br i1 %6, label %8, label %7, !dbg !1129

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1130
  br label %12, !dbg !1130

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1131, !tbaa !766
  %10 = tail call ptr @getprogname() #38, !dbg !1131
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %10) #37, !dbg !1131
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1135 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1137, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i32 1, metadata !1139, metadata !DIExpression()), !dbg !1142
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1145
  %2 = icmp slt i32 %1, 0, !dbg !1146
  br i1 %2, label %6, label %3, !dbg !1147

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1148, !tbaa !766
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1148
  br label %6, !dbg !1148

6:                                                ; preds = %3, %0
  ret void, !dbg !1149
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1150 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1156
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1152, metadata !DIExpression()), !dbg !1157
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1153, metadata !DIExpression()), !dbg !1157
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1154, metadata !DIExpression()), !dbg !1157
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1155, metadata !DIExpression()), !dbg !1157
  %6 = load ptr, ptr @stderr, align 8, !dbg !1158, !tbaa !766
  call void @llvm.dbg.value(metadata ptr %6, metadata !1159, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %2, metadata !1199, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %3, metadata !1200, metadata !DIExpression()), !dbg !1201
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1203
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1204, !tbaa !828
  %9 = add i32 %8, 1, !dbg !1204
  store i32 %9, ptr @error_message_count, align 4, !dbg !1204, !tbaa !828
  %10 = icmp eq i32 %1, 0, !dbg !1205
  br i1 %10, label %20, label %11, !dbg !1207

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1208, metadata !DIExpression(), metadata !1156, metadata ptr %5, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 %1, metadata !1211, metadata !DIExpression()), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1218
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1219
  call void @llvm.dbg.value(metadata ptr %12, metadata !1212, metadata !DIExpression()), !dbg !1216
  %13 = icmp eq ptr %12, null, !dbg !1220
  br i1 %13, label %14, label %16, !dbg !1222

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #37, !dbg !1223
  call void @llvm.dbg.value(metadata ptr %15, metadata !1212, metadata !DIExpression()), !dbg !1216
  br label %16, !dbg !1224

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1216
  call void @llvm.dbg.value(metadata ptr %17, metadata !1212, metadata !DIExpression()), !dbg !1216
  %18 = load ptr, ptr @stderr, align 8, !dbg !1225, !tbaa !766
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %17) #37, !dbg !1225
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1226
  br label %20, !dbg !1227

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1228, !tbaa !766
  call void @llvm.dbg.value(metadata i32 10, metadata !1229, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %21, metadata !1235, metadata !DIExpression()), !dbg !1236
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1238
  %23 = load ptr, ptr %22, align 8, !dbg !1238, !tbaa !1239
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1238
  %25 = load ptr, ptr %24, align 8, !dbg !1238, !tbaa !1242
  %26 = icmp ult ptr %23, %25, !dbg !1238
  br i1 %26, label %29, label %27, !dbg !1238, !prof !1243

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1238
  br label %31, !dbg !1238

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1238
  store ptr %30, ptr %22, align 8, !dbg !1238, !tbaa !1239
  store i8 10, ptr %23, align 1, !dbg !1238, !tbaa !837
  br label %31, !dbg !1238

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1244, !tbaa !766
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1244
  %34 = icmp eq i32 %0, 0, !dbg !1245
  br i1 %34, label %36, label %35, !dbg !1247

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1248
  unreachable, !dbg !1248

36:                                               ; preds = %31
  ret void, !dbg !1249
}

declare !dbg !1250 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1253 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1256 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1259 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1262 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1266 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1279
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1273, metadata !DIExpression(), metadata !1279, metadata ptr %4, metadata !DIExpression()), !dbg !1280
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1270, metadata !DIExpression()), !dbg !1280
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1271, metadata !DIExpression()), !dbg !1280
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1272, metadata !DIExpression()), !dbg !1280
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1281
  call void @llvm.va_start(ptr nonnull %4), !dbg !1282
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1283
  call void @llvm.va_end(ptr nonnull %4), !dbg !1284
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1285
  ret void, !dbg !1285
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !364 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !375, metadata !DIExpression()), !dbg !1286
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !376, metadata !DIExpression()), !dbg !1286
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !377, metadata !DIExpression()), !dbg !1286
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !378, metadata !DIExpression()), !dbg !1286
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !379, metadata !DIExpression()), !dbg !1286
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !380, metadata !DIExpression()), !dbg !1286
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1287, !tbaa !828
  %8 = icmp eq i32 %7, 0, !dbg !1287
  br i1 %8, label %23, label %9, !dbg !1289

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1290, !tbaa !828
  %11 = icmp eq i32 %10, %3, !dbg !1293
  br i1 %11, label %12, label %22, !dbg !1294

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1295, !tbaa !766
  %14 = icmp eq ptr %13, %2, !dbg !1296
  br i1 %14, label %36, label %15, !dbg !1297

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1298
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1299
  br i1 %18, label %19, label %22, !dbg !1299

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1300
  %21 = icmp eq i32 %20, 0, !dbg !1301
  br i1 %21, label %36, label %22, !dbg !1302

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1303, !tbaa !766
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1304, !tbaa !828
  br label %23, !dbg !1305

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1306
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1307, !tbaa !766
  %25 = icmp eq ptr %24, null, !dbg !1307
  br i1 %25, label %27, label %26, !dbg !1309

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1310
  br label %31, !dbg !1310

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1311, !tbaa !766
  %29 = tail call ptr @getprogname() #38, !dbg !1311
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %29) #37, !dbg !1311
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1313, !tbaa !766
  %33 = icmp eq ptr %2, null, !dbg !1313
  %34 = select i1 %33, ptr @.str.3.34, ptr @.str.2.35, !dbg !1313
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1313
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1314
  br label %36, !dbg !1315

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1315
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1316 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1326
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1325, metadata !DIExpression(), metadata !1326, metadata ptr %6, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1320, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1321, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1322, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1323, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1324, metadata !DIExpression()), !dbg !1327
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1328
  call void @llvm.va_start(ptr nonnull %6), !dbg !1329
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1330
  call void @llvm.va_end(ptr nonnull %6), !dbg !1331
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1332
  ret void, !dbg !1332
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1333 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1336, !tbaa !766
  ret ptr %1, !dbg !1337
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1338 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1340, metadata !DIExpression()), !dbg !1343
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1344
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1341, metadata !DIExpression()), !dbg !1343
  %3 = icmp eq ptr %2, null, !dbg !1345
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1345
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1345
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1342, metadata !DIExpression()), !dbg !1343
  %6 = ptrtoint ptr %5 to i64, !dbg !1346
  %7 = ptrtoint ptr %0 to i64, !dbg !1346
  %8 = sub i64 %6, %7, !dbg !1346
  %9 = icmp sgt i64 %8, 6, !dbg !1348
  br i1 %9, label %10, label %19, !dbg !1349

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1350
  call void @llvm.dbg.value(metadata ptr %11, metadata !1351, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata ptr @.str.44, metadata !1356, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 7, metadata !1357, metadata !DIExpression()), !dbg !1358
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.44, i64 7), !dbg !1360
  %13 = icmp eq i32 %12, 0, !dbg !1361
  br i1 %13, label %14, label %19, !dbg !1362

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1340, metadata !DIExpression()), !dbg !1343
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.45, i64 noundef 3) #38, !dbg !1363
  %16 = icmp eq i32 %15, 0, !dbg !1366
  %17 = select i1 %16, i64 3, i64 0, !dbg !1367
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1367
  br label %19, !dbg !1367

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1343
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1342, metadata !DIExpression()), !dbg !1343
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1340, metadata !DIExpression()), !dbg !1343
  store ptr %20, ptr @program_name, align 8, !dbg !1368, !tbaa !766
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1369, !tbaa !766
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1370, !tbaa !766
  ret void, !dbg !1371
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1372 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !417 {
  %3 = alloca i32, align 4, !DIAssignID !1373
  call void @llvm.dbg.assign(metadata i1 undef, metadata !427, metadata !DIExpression(), metadata !1373, metadata ptr %3, metadata !DIExpression()), !dbg !1374
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1375
  call void @llvm.dbg.assign(metadata i1 undef, metadata !432, metadata !DIExpression(), metadata !1375, metadata ptr %4, metadata !DIExpression()), !dbg !1374
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !424, metadata !DIExpression()), !dbg !1374
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !425, metadata !DIExpression()), !dbg !1374
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1376
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !426, metadata !DIExpression()), !dbg !1374
  %6 = icmp eq ptr %5, %0, !dbg !1377
  br i1 %6, label %7, label %14, !dbg !1379

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1380
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %4, metadata !1382, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %4, metadata !1391, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i32 0, metadata !1397, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i64 8, metadata !1398, metadata !DIExpression()), !dbg !1399
  store i64 0, ptr %4, align 8, !dbg !1401
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1402
  %9 = icmp eq i64 %8, 2, !dbg !1404
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1405
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1406
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1374
  ret ptr %15, !dbg !1406
}

; Function Attrs: nounwind
declare !dbg !1407 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1413 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1418, metadata !DIExpression()), !dbg !1421
  %2 = tail call ptr @__errno_location() #40, !dbg !1422
  %3 = load i32, ptr %2, align 4, !dbg !1422, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1419, metadata !DIExpression()), !dbg !1421
  %4 = icmp eq ptr %0, null, !dbg !1423
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1423
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1424
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1420, metadata !DIExpression()), !dbg !1421
  store i32 %3, ptr %2, align 4, !dbg !1425, !tbaa !828
  ret ptr %6, !dbg !1426
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1427 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1433, metadata !DIExpression()), !dbg !1434
  %2 = icmp eq ptr %0, null, !dbg !1435
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1435
  %4 = load i32, ptr %3, align 8, !dbg !1436, !tbaa !1437
  ret i32 %4, !dbg !1439
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1440 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1444, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1445, metadata !DIExpression()), !dbg !1446
  %3 = icmp eq ptr %0, null, !dbg !1447
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1447
  store i32 %1, ptr %4, align 8, !dbg !1448, !tbaa !1437
  ret void, !dbg !1449
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1454, metadata !DIExpression()), !dbg !1462
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1455, metadata !DIExpression()), !dbg !1462
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1456, metadata !DIExpression()), !dbg !1462
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1457, metadata !DIExpression()), !dbg !1462
  %4 = icmp eq ptr %0, null, !dbg !1463
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1463
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1464
  %7 = lshr i8 %1, 5, !dbg !1465
  %8 = zext nneg i8 %7 to i64, !dbg !1465
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1466
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1458, metadata !DIExpression()), !dbg !1462
  %10 = and i8 %1, 31, !dbg !1467
  %11 = zext nneg i8 %10 to i32, !dbg !1467
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1460, metadata !DIExpression()), !dbg !1462
  %12 = load i32, ptr %9, align 4, !dbg !1468, !tbaa !828
  %13 = lshr i32 %12, %11, !dbg !1469
  %14 = and i32 %13, 1, !dbg !1470
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1461, metadata !DIExpression()), !dbg !1462
  %15 = xor i32 %13, %2, !dbg !1471
  %16 = and i32 %15, 1, !dbg !1471
  %17 = shl nuw i32 %16, %11, !dbg !1472
  %18 = xor i32 %17, %12, !dbg !1473
  store i32 %18, ptr %9, align 4, !dbg !1473, !tbaa !828
  ret i32 %14, !dbg !1474
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1475 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1479, metadata !DIExpression()), !dbg !1482
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1480, metadata !DIExpression()), !dbg !1482
  %3 = icmp eq ptr %0, null, !dbg !1483
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1485
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1479, metadata !DIExpression()), !dbg !1482
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1486
  %6 = load i32, ptr %5, align 4, !dbg !1486, !tbaa !1487
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1481, metadata !DIExpression()), !dbg !1482
  store i32 %1, ptr %5, align 4, !dbg !1488, !tbaa !1487
  ret i32 %6, !dbg !1489
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1490 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1494, metadata !DIExpression()), !dbg !1497
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1495, metadata !DIExpression()), !dbg !1497
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1496, metadata !DIExpression()), !dbg !1497
  %4 = icmp eq ptr %0, null, !dbg !1498
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1500
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !1497
  store i32 10, ptr %5, align 8, !dbg !1501, !tbaa !1437
  %6 = icmp ne ptr %1, null, !dbg !1502
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1504
  br i1 %8, label %10, label %9, !dbg !1504

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1505
  unreachable, !dbg !1505

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1506
  store ptr %1, ptr %11, align 8, !dbg !1507, !tbaa !1508
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1509
  store ptr %2, ptr %12, align 8, !dbg !1510, !tbaa !1511
  ret void, !dbg !1512
}

; Function Attrs: noreturn nounwind
declare !dbg !1513 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1514 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1518, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1519, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1520, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1521, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1522, metadata !DIExpression()), !dbg !1526
  %6 = icmp eq ptr %4, null, !dbg !1527
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1527
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1523, metadata !DIExpression()), !dbg !1526
  %8 = tail call ptr @__errno_location() #40, !dbg !1528
  %9 = load i32, ptr %8, align 4, !dbg !1528, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1524, metadata !DIExpression()), !dbg !1526
  %10 = load i32, ptr %7, align 8, !dbg !1529, !tbaa !1437
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1530
  %12 = load i32, ptr %11, align 4, !dbg !1530, !tbaa !1487
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1531
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1532
  %15 = load ptr, ptr %14, align 8, !dbg !1532, !tbaa !1508
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1533
  %17 = load ptr, ptr %16, align 8, !dbg !1533, !tbaa !1511
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1534
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i32 %9, ptr %8, align 4, !dbg !1535, !tbaa !828
  ret i64 %18, !dbg !1536
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1537 {
  %10 = alloca i32, align 4, !DIAssignID !1605
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1606
  %12 = alloca i32, align 4, !DIAssignID !1607
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1608
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1583, metadata !DIExpression(), metadata !1609, metadata ptr %14, metadata !DIExpression()), !dbg !1610
  %15 = alloca i32, align 4, !DIAssignID !1611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1586, metadata !DIExpression(), metadata !1611, metadata ptr %15, metadata !DIExpression()), !dbg !1612
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1546, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1547, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1548, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1549, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1550, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1551, metadata !DIExpression()), !dbg !1613
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1614
  %17 = icmp eq i64 %16, 1, !dbg !1615
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1552, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1554, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1555, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1556, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1557, metadata !DIExpression()), !dbg !1613
  %18 = trunc i32 %5 to i8, !dbg !1616
  %19 = lshr i8 %18, 1, !dbg !1616
  %20 = and i8 %19, 1, !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1558, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1560, metadata !DIExpression()), !dbg !1613
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1617

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1618
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1619
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1620
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1621
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1613
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1622
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1623
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1560, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1558, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1557, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1556, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1555, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1554, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1546, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1551, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1550, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1547, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.label(metadata !1561), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1562, metadata !DIExpression()), !dbg !1613
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
  ], !dbg !1625

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1547, metadata !DIExpression()), !dbg !1613
  br label %114, !dbg !1626

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1558, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1547, metadata !DIExpression()), !dbg !1613
  %43 = and i8 %37, 1, !dbg !1627
  %44 = icmp eq i8 %43, 0, !dbg !1627
  br i1 %44, label %45, label %114, !dbg !1626

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1629
  br i1 %46, label %114, label %47, !dbg !1632

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1629, !tbaa !837
  br label %114, !dbg !1629

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !533, metadata !DIExpression(), metadata !1607, metadata ptr %12, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.assign(metadata i1 undef, metadata !534, metadata !DIExpression(), metadata !1608, metadata ptr %13, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !530, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %29, metadata !531, metadata !DIExpression()), !dbg !1633
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #37, !dbg !1637
  call void @llvm.dbg.value(metadata ptr %49, metadata !532, metadata !DIExpression()), !dbg !1633
  %50 = icmp eq ptr %49, @.str.11.65, !dbg !1638
  br i1 %50, label %51, label %60, !dbg !1640

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1641
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %13, metadata !1643, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %13, metadata !1651, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 0, metadata !1654, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 8, metadata !1655, metadata !DIExpression()), !dbg !1656
  store i64 0, ptr %13, align 8, !dbg !1658
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1659
  %53 = icmp eq i64 %52, 3, !dbg !1661
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1662
  %57 = icmp eq i32 %29, 9, !dbg !1662
  %58 = select i1 %57, ptr @.str.10.67, ptr @.str.12.68, !dbg !1662
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1662
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1663
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1663
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1633
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1550, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.assign(metadata i1 undef, metadata !533, metadata !DIExpression(), metadata !1605, metadata ptr %10, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !534, metadata !DIExpression(), metadata !1606, metadata ptr %11, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !530, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i32 %29, metadata !531, metadata !DIExpression()), !dbg !1664
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #37, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %62, metadata !532, metadata !DIExpression()), !dbg !1664
  %63 = icmp eq ptr %62, @.str.12.68, !dbg !1667
  br i1 %63, label %64, label %73, !dbg !1668

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1669
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %11, metadata !1643, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata ptr %11, metadata !1651, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i32 0, metadata !1654, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 8, metadata !1655, metadata !DIExpression()), !dbg !1673
  store i64 0, ptr %11, align 8, !dbg !1675
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1676
  %66 = icmp eq i64 %65, 3, !dbg !1677
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1678
  %70 = icmp eq i32 %29, 9, !dbg !1678
  %71 = select i1 %70, ptr @.str.10.67, ptr @.str.12.68, !dbg !1678
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1678
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1679
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1551, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1550, metadata !DIExpression()), !dbg !1613
  %76 = and i8 %37, 1, !dbg !1680
  %77 = icmp eq i8 %76, 0, !dbg !1680
  br i1 %77, label %78, label %93, !dbg !1681

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1563, metadata !DIExpression()), !dbg !1682
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1553, metadata !DIExpression()), !dbg !1613
  %79 = load i8, ptr %74, align 1, !dbg !1683, !tbaa !837
  %80 = icmp eq i8 %79, 0, !dbg !1685
  br i1 %80, label %93, label %81, !dbg !1685

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1563, metadata !DIExpression()), !dbg !1682
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1553, metadata !DIExpression()), !dbg !1613
  %85 = icmp ult i64 %84, %40, !dbg !1686
  br i1 %85, label %86, label %88, !dbg !1689

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1686
  store i8 %82, ptr %87, align 1, !dbg !1686, !tbaa !837
  br label %88, !dbg !1686

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1689
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1553, metadata !DIExpression()), !dbg !1613
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1690
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1563, metadata !DIExpression()), !dbg !1682
  %91 = load i8, ptr %90, align 1, !dbg !1683, !tbaa !837
  %92 = icmp eq i8 %91, 0, !dbg !1685
  br i1 %92, label %93, label %81, !dbg !1685, !llvm.loop !1691

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1693
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1557, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1555, metadata !DIExpression()), !dbg !1613
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1694
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1556, metadata !DIExpression()), !dbg !1613
  br label %114, !dbg !1695

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1557, metadata !DIExpression()), !dbg !1613
  br label %98, !dbg !1696

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1557, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1613
  br label %98, !dbg !1697

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1621
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1558, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1557, metadata !DIExpression()), !dbg !1613
  %101 = and i8 %100, 1, !dbg !1698
  %102 = icmp eq i8 %101, 0, !dbg !1698
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1700
  br label %104, !dbg !1700

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1613
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1558, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1557, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1547, metadata !DIExpression()), !dbg !1613
  %107 = and i8 %106, 1, !dbg !1701
  %108 = icmp eq i8 %107, 0, !dbg !1701
  br i1 %108, label %109, label %114, !dbg !1703

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1704
  br i1 %110, label %114, label %111, !dbg !1707

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1704, !tbaa !837
  br label %114, !dbg !1704

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1558, metadata !DIExpression()), !dbg !1613
  br label %114, !dbg !1708

113:                                              ; preds = %28
  call void @abort() #39, !dbg !1709
  unreachable, !dbg !1709

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1693
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.67, %45 ], [ @.str.10.67, %47 ], [ @.str.10.67, %42 ], [ %34, %28 ], [ @.str.12.68, %109 ], [ @.str.12.68, %111 ], [ @.str.12.68, %104 ], [ @.str.10.67, %41 ], !dbg !1613
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1613
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1613
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1558, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1557, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1556, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1555, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1551, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1550, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1547, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1568, metadata !DIExpression()), !dbg !1710
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
  br label %138, !dbg !1711

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1693
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1618
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1622
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1623
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1712
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1713
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1568, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1560, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1554, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1546, metadata !DIExpression()), !dbg !1613
  %147 = icmp eq i64 %139, -1, !dbg !1714
  br i1 %147, label %148, label %152, !dbg !1715

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1716
  %150 = load i8, ptr %149, align 1, !dbg !1716, !tbaa !837
  %151 = icmp eq i8 %150, 0, !dbg !1717
  br i1 %151, label %612, label %154, !dbg !1718

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1719
  br i1 %153, label %612, label %154, !dbg !1718

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1570, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1573, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1574, metadata !DIExpression()), !dbg !1720
  br i1 %128, label %155, label %170, !dbg !1721

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1723
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1724
  br i1 %157, label %158, label %160, !dbg !1724

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1546, metadata !DIExpression()), !dbg !1613
  br label %160, !dbg !1726

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1726
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1546, metadata !DIExpression()), !dbg !1613
  %162 = icmp ugt i64 %156, %161, !dbg !1727
  br i1 %162, label %170, label %163, !dbg !1728

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1729
  call void @llvm.dbg.value(metadata ptr %164, metadata !1730, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %119, metadata !1733, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %120, metadata !1734, metadata !DIExpression()), !dbg !1735
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1737
  %166 = icmp ne i32 %165, 0, !dbg !1738
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1739
  %168 = xor i1 %166, true, !dbg !1739
  %169 = zext i1 %168 to i8, !dbg !1739
  br i1 %167, label %170, label %666, !dbg !1739

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1720
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1570, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1546, metadata !DIExpression()), !dbg !1613
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1740
  %175 = load i8, ptr %174, align 1, !dbg !1740, !tbaa !837
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1575, metadata !DIExpression()), !dbg !1720
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
  ], !dbg !1741

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1742

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1743

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1573, metadata !DIExpression()), !dbg !1720
  %179 = and i8 %144, 1, !dbg !1747
  %180 = icmp eq i8 %179, 0, !dbg !1747
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1747
  br i1 %181, label %182, label %198, !dbg !1747

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1749
  br i1 %183, label %184, label %186, !dbg !1753

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1749
  store i8 39, ptr %185, align 1, !dbg !1749, !tbaa !837
  br label %186, !dbg !1749

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1753
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1553, metadata !DIExpression()), !dbg !1613
  %188 = icmp ult i64 %187, %146, !dbg !1754
  br i1 %188, label %189, label %191, !dbg !1757

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1754
  store i8 36, ptr %190, align 1, !dbg !1754, !tbaa !837
  br label %191, !dbg !1754

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1757
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1553, metadata !DIExpression()), !dbg !1613
  %193 = icmp ult i64 %192, %146, !dbg !1758
  br i1 %193, label %194, label %196, !dbg !1761

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1758
  store i8 39, ptr %195, align 1, !dbg !1758, !tbaa !837
  br label %196, !dbg !1758

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1761
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1562, metadata !DIExpression()), !dbg !1613
  br label %198, !dbg !1762

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1613
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1553, metadata !DIExpression()), !dbg !1613
  %201 = icmp ult i64 %199, %146, !dbg !1763
  br i1 %201, label %202, label %204, !dbg !1766

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1763
  store i8 92, ptr %203, align 1, !dbg !1763, !tbaa !837
  br label %204, !dbg !1763

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1553, metadata !DIExpression()), !dbg !1613
  br i1 %125, label %206, label %476, !dbg !1767

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1769
  %208 = icmp ult i64 %207, %171, !dbg !1770
  br i1 %208, label %209, label %465, !dbg !1771

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1772
  %211 = load i8, ptr %210, align 1, !dbg !1772, !tbaa !837
  %212 = add i8 %211, -48, !dbg !1773
  %213 = icmp ult i8 %212, 10, !dbg !1773
  br i1 %213, label %214, label %465, !dbg !1773

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1774
  br i1 %215, label %216, label %218, !dbg !1778

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1774
  store i8 48, ptr %217, align 1, !dbg !1774, !tbaa !837
  br label %218, !dbg !1774

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1778
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1553, metadata !DIExpression()), !dbg !1613
  %220 = icmp ult i64 %219, %146, !dbg !1779
  br i1 %220, label %221, label %223, !dbg !1782

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1779
  store i8 48, ptr %222, align 1, !dbg !1779, !tbaa !837
  br label %223, !dbg !1779

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1553, metadata !DIExpression()), !dbg !1613
  br label %465, !dbg !1783

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1784

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1785

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1786

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1788

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1790
  %231 = icmp ult i64 %230, %171, !dbg !1791
  br i1 %231, label %232, label %465, !dbg !1792

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1793
  %234 = load i8, ptr %233, align 1, !dbg !1793, !tbaa !837
  %235 = icmp eq i8 %234, 63, !dbg !1794
  br i1 %235, label %236, label %465, !dbg !1795

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1796
  %238 = load i8, ptr %237, align 1, !dbg !1796, !tbaa !837
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
  ], !dbg !1797

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1798

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1575, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1568, metadata !DIExpression()), !dbg !1710
  %241 = icmp ult i64 %140, %146, !dbg !1800
  br i1 %241, label %242, label %244, !dbg !1803

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1800
  store i8 63, ptr %243, align 1, !dbg !1800, !tbaa !837
  br label %244, !dbg !1800

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1803
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1553, metadata !DIExpression()), !dbg !1613
  %246 = icmp ult i64 %245, %146, !dbg !1804
  br i1 %246, label %247, label %249, !dbg !1807

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1804
  store i8 34, ptr %248, align 1, !dbg !1804, !tbaa !837
  br label %249, !dbg !1804

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1807
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1553, metadata !DIExpression()), !dbg !1613
  %251 = icmp ult i64 %250, %146, !dbg !1808
  br i1 %251, label %252, label %254, !dbg !1811

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1808
  store i8 34, ptr %253, align 1, !dbg !1808, !tbaa !837
  br label %254, !dbg !1808

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1811
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1553, metadata !DIExpression()), !dbg !1613
  %256 = icmp ult i64 %255, %146, !dbg !1812
  br i1 %256, label %257, label %259, !dbg !1815

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1812
  store i8 63, ptr %258, align 1, !dbg !1812, !tbaa !837
  br label %259, !dbg !1812

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1553, metadata !DIExpression()), !dbg !1613
  br label %465, !dbg !1816

261:                                              ; preds = %170
  br label %272, !dbg !1817

262:                                              ; preds = %170
  br label %272, !dbg !1818

263:                                              ; preds = %170
  br label %270, !dbg !1819

264:                                              ; preds = %170
  br label %270, !dbg !1820

265:                                              ; preds = %170
  br label %272, !dbg !1821

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1822

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1823

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1826

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1828

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1829
  call void @llvm.dbg.label(metadata !1576), !dbg !1830
  br i1 %133, label %272, label %655, !dbg !1831

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1829
  call void @llvm.dbg.label(metadata !1579), !dbg !1833
  br i1 %124, label %520, label %476, !dbg !1834

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1835

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1836, !tbaa !837
  %277 = icmp eq i8 %276, 0, !dbg !1838
  br i1 %277, label %278, label %465, !dbg !1839

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1840
  br i1 %279, label %280, label %465, !dbg !1842

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1574, metadata !DIExpression()), !dbg !1720
  br label %281, !dbg !1843

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1574, metadata !DIExpression()), !dbg !1720
  br i1 %133, label %465, label %655, !dbg !1844

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1574, metadata !DIExpression()), !dbg !1720
  br i1 %132, label %284, label %465, !dbg !1846

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1847

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1850
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1852
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1852
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1554, metadata !DIExpression()), !dbg !1613
  %291 = icmp ult i64 %140, %290, !dbg !1853
  br i1 %291, label %292, label %294, !dbg !1856

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1853
  store i8 39, ptr %293, align 1, !dbg !1853, !tbaa !837
  br label %294, !dbg !1853

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1856
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1553, metadata !DIExpression()), !dbg !1613
  %296 = icmp ult i64 %295, %290, !dbg !1857
  br i1 %296, label %297, label %299, !dbg !1860

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1857
  store i8 92, ptr %298, align 1, !dbg !1857, !tbaa !837
  br label %299, !dbg !1857

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1860
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1553, metadata !DIExpression()), !dbg !1613
  %301 = icmp ult i64 %300, %290, !dbg !1861
  br i1 %301, label %302, label %304, !dbg !1864

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1861
  store i8 39, ptr %303, align 1, !dbg !1861, !tbaa !837
  br label %304, !dbg !1861

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1562, metadata !DIExpression()), !dbg !1613
  br label %465, !dbg !1865

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1866

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1580, metadata !DIExpression()), !dbg !1867
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !1868
  %309 = load ptr, ptr %308, align 8, !dbg !1868, !tbaa !766
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1868
  %312 = load i16, ptr %311, align 2, !dbg !1868, !tbaa !869
  %313 = and i16 %312, 16384, !dbg !1870
  %314 = icmp ne i16 %313, 0, !dbg !1870
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1582, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1867
  br label %355, !dbg !1871

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1872
  call void @llvm.dbg.value(metadata ptr %14, metadata !1643, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata ptr %14, metadata !1651, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i32 0, metadata !1654, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 8, metadata !1655, metadata !DIExpression()), !dbg !1875
  store i64 0, ptr %14, align 8, !dbg !1877
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1580, metadata !DIExpression()), !dbg !1867
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1582, metadata !DIExpression()), !dbg !1867
  %316 = icmp eq i64 %171, -1, !dbg !1878
  br i1 %316, label %317, label %319, !dbg !1880

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1881
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1546, metadata !DIExpression()), !dbg !1613
  br label %319, !dbg !1882

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1546, metadata !DIExpression()), !dbg !1613
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1883
  %321 = sub i64 %320, %145, !dbg !1884
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1590, metadata !DIExpression()), !dbg !1612
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1886

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1580, metadata !DIExpression()), !dbg !1867
  %324 = icmp ult i64 %145, %320, !dbg !1887
  br i1 %324, label %326, label %351, !dbg !1889

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1582, metadata !DIExpression()), !dbg !1867
  br label %351, !dbg !1890

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1580, metadata !DIExpression()), !dbg !1867
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1892
  %330 = load i8, ptr %329, align 1, !dbg !1892, !tbaa !837
  %331 = icmp eq i8 %330, 0, !dbg !1889
  br i1 %331, label %351, label %332, !dbg !1893

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1894
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1580, metadata !DIExpression()), !dbg !1867
  %334 = add i64 %333, %145, !dbg !1895
  %335 = icmp eq i64 %333, %321, !dbg !1887
  br i1 %335, label %351, label %326, !dbg !1889, !llvm.loop !1896

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1591, metadata !DIExpression()), !dbg !1897
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1898
  %339 = and i1 %338, %132, !dbg !1898
  br i1 %339, label %340, label %347, !dbg !1898

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1591, metadata !DIExpression()), !dbg !1897
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1899
  %343 = load i8, ptr %342, align 1, !dbg !1899, !tbaa !837
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1901

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1591, metadata !DIExpression()), !dbg !1897
  %346 = icmp eq i64 %345, %322, !dbg !1903
  br i1 %346, label %347, label %340, !dbg !1904, !llvm.loop !1905

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1907, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %348, metadata !1909, metadata !DIExpression()), !dbg !1917
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !1919
  %350 = icmp ne i32 %349, 0, !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1582, metadata !DIExpression()), !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1580, metadata !DIExpression()), !dbg !1867
  br label %351, !dbg !1921

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1582, metadata !DIExpression()), !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1580, metadata !DIExpression()), !dbg !1867
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1923
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1582, metadata !DIExpression()), !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1580, metadata !DIExpression()), !dbg !1867
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1923
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1720
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1924
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1924
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1582, metadata !DIExpression()), !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1580, metadata !DIExpression()), !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1546, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1574, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1720
  %359 = icmp ult i64 %357, 2, !dbg !1925
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1926
  br i1 %361, label %461, label %362, !dbg !1926

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1927
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1599, metadata !DIExpression()), !dbg !1928
  br label %364, !dbg !1929

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1613
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1712
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1710
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1720
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !1930
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1575, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1573, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1570, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1568, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1553, metadata !DIExpression()), !dbg !1613
  br i1 %360, label %417, label %371, !dbg !1931

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !1936

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1573, metadata !DIExpression()), !dbg !1720
  %373 = and i8 %366, 1, !dbg !1939
  %374 = icmp eq i8 %373, 0, !dbg !1939
  %375 = select i1 %132, i1 %374, i1 false, !dbg !1939
  br i1 %375, label %376, label %392, !dbg !1939

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !1941
  br i1 %377, label %378, label %380, !dbg !1945

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1941
  store i8 39, ptr %379, align 1, !dbg !1941, !tbaa !837
  br label %380, !dbg !1941

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1553, metadata !DIExpression()), !dbg !1613
  %382 = icmp ult i64 %381, %146, !dbg !1946
  br i1 %382, label %383, label %385, !dbg !1949

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !1946
  store i8 36, ptr %384, align 1, !dbg !1946, !tbaa !837
  br label %385, !dbg !1946

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !1949
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1553, metadata !DIExpression()), !dbg !1613
  %387 = icmp ult i64 %386, %146, !dbg !1950
  br i1 %387, label %388, label %390, !dbg !1953

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1950
  store i8 39, ptr %389, align 1, !dbg !1950, !tbaa !837
  br label %390, !dbg !1950

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1562, metadata !DIExpression()), !dbg !1613
  br label %392, !dbg !1954

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1613
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1553, metadata !DIExpression()), !dbg !1613
  %395 = icmp ult i64 %393, %146, !dbg !1955
  br i1 %395, label %396, label %398, !dbg !1958

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !1955
  store i8 92, ptr %397, align 1, !dbg !1955, !tbaa !837
  br label %398, !dbg !1955

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !1958
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1553, metadata !DIExpression()), !dbg !1613
  %400 = icmp ult i64 %399, %146, !dbg !1959
  br i1 %400, label %401, label %405, !dbg !1962

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !1959
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !1959
  store i8 %403, ptr %404, align 1, !dbg !1959, !tbaa !837
  br label %405, !dbg !1959

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !1962
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1553, metadata !DIExpression()), !dbg !1613
  %407 = icmp ult i64 %406, %146, !dbg !1963
  br i1 %407, label %408, label %413, !dbg !1966

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !1963
  %411 = or disjoint i8 %410, 48, !dbg !1963
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !1963
  store i8 %411, ptr %412, align 1, !dbg !1963, !tbaa !837
  br label %413, !dbg !1963

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !1966
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1553, metadata !DIExpression()), !dbg !1613
  %415 = and i8 %370, 7, !dbg !1967
  %416 = or disjoint i8 %415, 48, !dbg !1968
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1575, metadata !DIExpression()), !dbg !1720
  br label %426, !dbg !1969

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !1970
  %419 = icmp eq i8 %418, 0, !dbg !1970
  br i1 %419, label %426, label %420, !dbg !1972

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !1973
  br i1 %421, label %422, label %424, !dbg !1977

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1973
  store i8 92, ptr %423, align 1, !dbg !1973, !tbaa !837
  br label %424, !dbg !1973

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1570, metadata !DIExpression()), !dbg !1720
  br label %426, !dbg !1978

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1613
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1712
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1720
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1720
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1575, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1573, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1570, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1553, metadata !DIExpression()), !dbg !1613
  %432 = add i64 %367, 1, !dbg !1979
  %433 = icmp ugt i64 %363, %432, !dbg !1981
  br i1 %433, label %434, label %463, !dbg !1982

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !1983
  %436 = icmp ne i8 %435, 0, !dbg !1983
  %437 = and i8 %430, 1, !dbg !1983
  %438 = icmp eq i8 %437, 0, !dbg !1983
  %439 = select i1 %436, i1 %438, i1 false, !dbg !1983
  br i1 %439, label %440, label %451, !dbg !1983

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !1986
  br i1 %441, label %442, label %444, !dbg !1990

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !1986
  store i8 39, ptr %443, align 1, !dbg !1986, !tbaa !837
  br label %444, !dbg !1986

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !1990
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1553, metadata !DIExpression()), !dbg !1613
  %446 = icmp ult i64 %445, %146, !dbg !1991
  br i1 %446, label %447, label %449, !dbg !1994

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !1991
  store i8 39, ptr %448, align 1, !dbg !1991, !tbaa !837
  br label %449, !dbg !1991

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1562, metadata !DIExpression()), !dbg !1613
  br label %451, !dbg !1995

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !1996
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1553, metadata !DIExpression()), !dbg !1613
  %454 = icmp ult i64 %452, %146, !dbg !1997
  br i1 %454, label %455, label %457, !dbg !2000

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !1997
  store i8 %431, ptr %456, align 1, !dbg !1997, !tbaa !837
  br label %457, !dbg !1997

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1568, metadata !DIExpression()), !dbg !1710
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2001
  %460 = load i8, ptr %459, align 1, !dbg !2001, !tbaa !837
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1575, metadata !DIExpression()), !dbg !1720
  br label %364, !dbg !2002, !llvm.loop !2003

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1575, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1574, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1573, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1570, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1568, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1546, metadata !DIExpression()), !dbg !1613
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1575, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1574, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1573, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1570, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1568, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1546, metadata !DIExpression()), !dbg !1613
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2006
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1613
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1618
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1613
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1613
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1710
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1720
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1720
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1720
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1575, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1574, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1573, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1570, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1568, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1554, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1546, metadata !DIExpression()), !dbg !1613
  br i1 %126, label %487, label %476, !dbg !2007

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
  br i1 %137, label %488, label %509, !dbg !2009

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2010

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
  %499 = lshr i8 %490, 5, !dbg !2011
  %500 = zext nneg i8 %499 to i64, !dbg !2011
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2012
  %502 = load i32, ptr %501, align 4, !dbg !2012, !tbaa !828
  %503 = and i8 %490, 31, !dbg !2013
  %504 = zext nneg i8 %503 to i32, !dbg !2013
  %505 = shl nuw i32 1, %504, !dbg !2014
  %506 = and i32 %502, %505, !dbg !2014
  %507 = icmp eq i32 %506, 0, !dbg !2014
  %508 = and i1 %172, %507, !dbg !2015
  br i1 %508, label %558, label %520, !dbg !2015

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
  br i1 %172, label %558, label %520, !dbg !2016

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2006
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1613
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1618
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1622
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1712
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2017
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1720
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1720
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1575, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1574, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1568, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1554, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1546, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.label(metadata !1602), !dbg !2018
  br i1 %131, label %530, label %659, !dbg !2019

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1573, metadata !DIExpression()), !dbg !1720
  %531 = and i8 %525, 1, !dbg !2021
  %532 = icmp eq i8 %531, 0, !dbg !2021
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2021
  br i1 %533, label %534, label %550, !dbg !2021

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2023
  br i1 %535, label %536, label %538, !dbg !2027

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2023
  store i8 39, ptr %537, align 1, !dbg !2023, !tbaa !837
  br label %538, !dbg !2023

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1553, metadata !DIExpression()), !dbg !1613
  %540 = icmp ult i64 %539, %529, !dbg !2028
  br i1 %540, label %541, label %543, !dbg !2031

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2028
  store i8 36, ptr %542, align 1, !dbg !2028, !tbaa !837
  br label %543, !dbg !2028

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2031
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1553, metadata !DIExpression()), !dbg !1613
  %545 = icmp ult i64 %544, %529, !dbg !2032
  br i1 %545, label %546, label %548, !dbg !2035

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2032
  store i8 39, ptr %547, align 1, !dbg !2032, !tbaa !837
  br label %548, !dbg !2032

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2035
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1562, metadata !DIExpression()), !dbg !1613
  br label %550, !dbg !2036

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1720
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1553, metadata !DIExpression()), !dbg !1613
  %553 = icmp ult i64 %551, %529, !dbg !2037
  br i1 %553, label %554, label %556, !dbg !2040

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2037
  store i8 92, ptr %555, align 1, !dbg !2037, !tbaa !837
  br label %556, !dbg !2037

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2040
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1575, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1574, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1573, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1568, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1554, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1546, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.label(metadata !1603), !dbg !2041
  br label %585, !dbg !2042

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2006
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1613
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1618
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1622
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1712
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2017
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1720
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1720
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2045
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1575, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1574, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1573, metadata !DIExpression()), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1568, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1554, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1546, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.label(metadata !1603), !dbg !2041
  %569 = and i8 %563, 1, !dbg !2042
  %570 = icmp ne i8 %569, 0, !dbg !2042
  %571 = and i8 %565, 1, !dbg !2042
  %572 = icmp eq i8 %571, 0, !dbg !2042
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2042
  br i1 %573, label %574, label %585, !dbg !2042

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2046
  br i1 %575, label %576, label %578, !dbg !2050

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2046
  store i8 39, ptr %577, align 1, !dbg !2046, !tbaa !837
  br label %578, !dbg !2046

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2050
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1553, metadata !DIExpression()), !dbg !1613
  %580 = icmp ult i64 %579, %568, !dbg !2051
  br i1 %580, label %581, label %583, !dbg !2054

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2051
  store i8 39, ptr %582, align 1, !dbg !2051, !tbaa !837
  br label %583, !dbg !2051

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1562, metadata !DIExpression()), !dbg !1613
  br label %585, !dbg !2055

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1720
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1553, metadata !DIExpression()), !dbg !1613
  %595 = icmp ult i64 %593, %586, !dbg !2056
  br i1 %595, label %596, label %598, !dbg !2059

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2056
  store i8 %587, ptr %597, align 1, !dbg !2056, !tbaa !837
  br label %598, !dbg !2056

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2059
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1553, metadata !DIExpression()), !dbg !1613
  %600 = icmp eq i8 %588, 0, !dbg !2060
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2062
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1560, metadata !DIExpression()), !dbg !1613
  br label %602, !dbg !2063

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2006
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1613
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1618
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1622
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1623
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1712
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2017
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1568, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1562, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1560, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1554, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1546, metadata !DIExpression()), !dbg !1613
  %611 = add i64 %609, 1, !dbg !2064
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1568, metadata !DIExpression()), !dbg !1710
  br label %138, !dbg !2065, !llvm.loop !2066

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1544, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1560, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1559, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1554, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1553, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1546, metadata !DIExpression()), !dbg !1613
  %613 = icmp eq i64 %140, 0, !dbg !2068
  %614 = and i1 %132, %613, !dbg !2070
  %615 = xor i1 %614, true, !dbg !2070
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2070
  br i1 %616, label %617, label %655, !dbg !2070

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2071
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2071
  br i1 %621, label %622, label %631, !dbg !2071

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2073
  %624 = icmp eq i8 %623, 0, !dbg !2073
  br i1 %624, label %627, label %625, !dbg !2076

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2077
  br label %672, !dbg !2078

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2079
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2081
  br i1 %630, label %28, label %631, !dbg !2081

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2082
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2084
  br i1 %634, label %635, label %650, !dbg !2084

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1555, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1553, metadata !DIExpression()), !dbg !1613
  %636 = load i8, ptr %119, align 1, !dbg !2085, !tbaa !837
  %637 = icmp eq i8 %636, 0, !dbg !2088
  br i1 %637, label %650, label %638, !dbg !2088

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1555, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1553, metadata !DIExpression()), !dbg !1613
  %642 = icmp ult i64 %641, %146, !dbg !2089
  br i1 %642, label %643, label %645, !dbg !2092

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2089
  store i8 %639, ptr %644, align 1, !dbg !2089, !tbaa !837
  br label %645, !dbg !2089

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1553, metadata !DIExpression()), !dbg !1613
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2093
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1555, metadata !DIExpression()), !dbg !1613
  %648 = load i8, ptr %647, align 1, !dbg !2085, !tbaa !837
  %649 = icmp eq i8 %648, 0, !dbg !2088
  br i1 %649, label %650, label %638, !dbg !2088, !llvm.loop !2094

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1693
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1553, metadata !DIExpression()), !dbg !1613
  %652 = icmp ult i64 %651, %146, !dbg !2096
  br i1 %652, label %653, label %672, !dbg !2098

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2099
  store i8 0, ptr %654, align 1, !dbg !2100, !tbaa !837
  br label %672, !dbg !2099

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1604), !dbg !2101
  %657 = icmp eq i8 %123, 0, !dbg !2102
  %658 = select i1 %657, i32 2, i32 4, !dbg !2102
  br label %666, !dbg !2102

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1604), !dbg !2101
  %662 = icmp eq i32 %115, 2, !dbg !2104
  %663 = icmp eq i8 %123, 0, !dbg !2102
  %664 = select i1 %663, i32 2, i32 4, !dbg !2102
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2102
  br label %666, !dbg !2102

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1547, metadata !DIExpression()), !dbg !1613
  %670 = and i32 %5, -3, !dbg !2105
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2106
  br label %672, !dbg !2107

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2108
}

; Function Attrs: nounwind
declare !dbg !2109 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2112 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2115 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2117 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2121, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2122, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2123, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata ptr %0, metadata !2125, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i64 %1, metadata !2130, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr null, metadata !2131, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr %2, metadata !2132, metadata !DIExpression()), !dbg !2138
  %4 = icmp eq ptr %2, null, !dbg !2140
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2140
  call void @llvm.dbg.value(metadata ptr %5, metadata !2133, metadata !DIExpression()), !dbg !2138
  %6 = tail call ptr @__errno_location() #40, !dbg !2141
  %7 = load i32, ptr %6, align 4, !dbg !2141, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %7, metadata !2134, metadata !DIExpression()), !dbg !2138
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2142
  %9 = load i32, ptr %8, align 4, !dbg !2142, !tbaa !1487
  %10 = or i32 %9, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %10, metadata !2135, metadata !DIExpression()), !dbg !2138
  %11 = load i32, ptr %5, align 8, !dbg !2144, !tbaa !1437
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2145
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2146
  %14 = load ptr, ptr %13, align 8, !dbg !2146, !tbaa !1508
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2147
  %16 = load ptr, ptr %15, align 8, !dbg !2147, !tbaa !1511
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2148
  %18 = add i64 %17, 1, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %18, metadata !2136, metadata !DIExpression()), !dbg !2138
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2150
  call void @llvm.dbg.value(metadata ptr %19, metadata !2137, metadata !DIExpression()), !dbg !2138
  %20 = load i32, ptr %5, align 8, !dbg !2151, !tbaa !1437
  %21 = load ptr, ptr %13, align 8, !dbg !2152, !tbaa !1508
  %22 = load ptr, ptr %15, align 8, !dbg !2153, !tbaa !1511
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2154
  store i32 %7, ptr %6, align 4, !dbg !2155, !tbaa !828
  ret ptr %19, !dbg !2156
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2126 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2125, metadata !DIExpression()), !dbg !2157
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2130, metadata !DIExpression()), !dbg !2157
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2131, metadata !DIExpression()), !dbg !2157
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2132, metadata !DIExpression()), !dbg !2157
  %5 = icmp eq ptr %3, null, !dbg !2158
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2158
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2133, metadata !DIExpression()), !dbg !2157
  %7 = tail call ptr @__errno_location() #40, !dbg !2159
  %8 = load i32, ptr %7, align 4, !dbg !2159, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2134, metadata !DIExpression()), !dbg !2157
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2160
  %10 = load i32, ptr %9, align 4, !dbg !2160, !tbaa !1487
  %11 = icmp eq ptr %2, null, !dbg !2161
  %12 = zext i1 %11 to i32, !dbg !2161
  %13 = or i32 %10, %12, !dbg !2162
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2135, metadata !DIExpression()), !dbg !2157
  %14 = load i32, ptr %6, align 8, !dbg !2163, !tbaa !1437
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2164
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2165
  %17 = load ptr, ptr %16, align 8, !dbg !2165, !tbaa !1508
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2166
  %19 = load ptr, ptr %18, align 8, !dbg !2166, !tbaa !1511
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2167
  %21 = add i64 %20, 1, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2136, metadata !DIExpression()), !dbg !2157
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2169
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2137, metadata !DIExpression()), !dbg !2157
  %23 = load i32, ptr %6, align 8, !dbg !2170, !tbaa !1437
  %24 = load ptr, ptr %16, align 8, !dbg !2171, !tbaa !1508
  %25 = load ptr, ptr %18, align 8, !dbg !2172, !tbaa !1511
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2173
  store i32 %8, ptr %7, align 4, !dbg !2174, !tbaa !828
  br i1 %11, label %28, label %27, !dbg !2175

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2176, !tbaa !2178
  br label %28, !dbg !2179

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2180
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2181 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2186, !tbaa !766
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2183, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2184, metadata !DIExpression()), !dbg !2188
  %2 = load i32, ptr @nslots, align 4, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2184, metadata !DIExpression()), !dbg !2188
  %3 = icmp sgt i32 %2, 1, !dbg !2189
  br i1 %3, label %4, label %6, !dbg !2191

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2189
  br label %10, !dbg !2191

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2192
  %8 = load ptr, ptr %7, align 8, !dbg !2192, !tbaa !2194
  %9 = icmp eq ptr %8, @slot0, !dbg !2196
  br i1 %9, label %17, label %16, !dbg !2197

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2184, metadata !DIExpression()), !dbg !2188
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2198
  %13 = load ptr, ptr %12, align 8, !dbg !2198, !tbaa !2194
  tail call void @free(ptr noundef %13) #37, !dbg !2199
  %14 = add nuw nsw i64 %11, 1, !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2184, metadata !DIExpression()), !dbg !2188
  %15 = icmp eq i64 %14, %5, !dbg !2189
  br i1 %15, label %6, label %10, !dbg !2191, !llvm.loop !2201

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2203
  store i64 256, ptr @slotvec0, align 8, !dbg !2205, !tbaa !2206
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2207, !tbaa !2194
  br label %17, !dbg !2208

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2209
  br i1 %18, label %20, label %19, !dbg !2211

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2212
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2214, !tbaa !766
  br label %20, !dbg !2215

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2216, !tbaa !828
  ret void, !dbg !2217
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2218 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2221 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2223, metadata !DIExpression()), !dbg !2225
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2224, metadata !DIExpression()), !dbg !2225
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2226
  ret ptr %3, !dbg !2227
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2228 {
  %5 = alloca i64, align 8, !DIAssignID !2248
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2242, metadata !DIExpression(), metadata !2248, metadata ptr %5, metadata !DIExpression()), !dbg !2249
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2232, metadata !DIExpression()), !dbg !2250
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2233, metadata !DIExpression()), !dbg !2250
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2234, metadata !DIExpression()), !dbg !2250
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2235, metadata !DIExpression()), !dbg !2250
  %6 = tail call ptr @__errno_location() #40, !dbg !2251
  %7 = load i32, ptr %6, align 4, !dbg !2251, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2236, metadata !DIExpression()), !dbg !2250
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2252, !tbaa !766
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2237, metadata !DIExpression()), !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2238, metadata !DIExpression()), !dbg !2250
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2253
  br i1 %9, label %10, label %11, !dbg !2253

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2255
  unreachable, !dbg !2255

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2256, !tbaa !828
  %13 = icmp sgt i32 %12, %0, !dbg !2257
  br i1 %13, label %32, label %14, !dbg !2258

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2259
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2239, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2260
  %16 = sext i32 %12 to i64, !dbg !2261
  store i64 %16, ptr %5, align 8, !dbg !2262, !tbaa !2178, !DIAssignID !2263
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2242, metadata !DIExpression(), metadata !2263, metadata ptr %5, metadata !DIExpression()), !dbg !2249
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2264
  %18 = add nuw nsw i32 %0, 1, !dbg !2265
  %19 = sub i32 %18, %12, !dbg !2266
  %20 = sext i32 %19 to i64, !dbg !2267
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2268
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2237, metadata !DIExpression()), !dbg !2250
  store ptr %21, ptr @slotvec, align 8, !dbg !2269, !tbaa !766
  br i1 %15, label %22, label %23, !dbg !2270

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2271, !tbaa.struct !2273
  br label %23, !dbg !2274

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2275, !tbaa !828
  %25 = sext i32 %24 to i64, !dbg !2276
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2276
  %27 = load i64, ptr %5, align 8, !dbg !2277, !tbaa !2178
  %28 = sub nsw i64 %27, %25, !dbg !2278
  %29 = shl i64 %28, 4, !dbg !2279
  call void @llvm.dbg.value(metadata ptr %26, metadata !1651, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 0, metadata !1654, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %29, metadata !1655, metadata !DIExpression()), !dbg !2280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2282
  %30 = load i64, ptr %5, align 8, !dbg !2283, !tbaa !2178
  %31 = trunc i64 %30 to i32, !dbg !2283
  store i32 %31, ptr @nslots, align 4, !dbg !2284, !tbaa !828
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2285
  br label %32, !dbg !2286

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2250
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2237, metadata !DIExpression()), !dbg !2250
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2287
  %36 = load i64, ptr %35, align 8, !dbg !2288, !tbaa !2206
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2243, metadata !DIExpression()), !dbg !2289
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2290
  %38 = load ptr, ptr %37, align 8, !dbg !2290, !tbaa !2194
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2245, metadata !DIExpression()), !dbg !2289
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2291
  %40 = load i32, ptr %39, align 4, !dbg !2291, !tbaa !1487
  %41 = or i32 %40, 1, !dbg !2292
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2246, metadata !DIExpression()), !dbg !2289
  %42 = load i32, ptr %3, align 8, !dbg !2293, !tbaa !1437
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2294
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2295
  %45 = load ptr, ptr %44, align 8, !dbg !2295, !tbaa !1508
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2296
  %47 = load ptr, ptr %46, align 8, !dbg !2296, !tbaa !1511
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2297
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2247, metadata !DIExpression()), !dbg !2289
  %49 = icmp ugt i64 %36, %48, !dbg !2298
  br i1 %49, label %60, label %50, !dbg !2300

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2301
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2243, metadata !DIExpression()), !dbg !2289
  store i64 %51, ptr %35, align 8, !dbg !2303, !tbaa !2206
  %52 = icmp eq ptr %38, @slot0, !dbg !2304
  br i1 %52, label %54, label %53, !dbg !2306

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2307
  br label %54, !dbg !2307

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2308
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2245, metadata !DIExpression()), !dbg !2289
  store ptr %55, ptr %37, align 8, !dbg !2309, !tbaa !2194
  %56 = load i32, ptr %3, align 8, !dbg !2310, !tbaa !1437
  %57 = load ptr, ptr %44, align 8, !dbg !2311, !tbaa !1508
  %58 = load ptr, ptr %46, align 8, !dbg !2312, !tbaa !1511
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2313
  br label %60, !dbg !2314

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2289
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2245, metadata !DIExpression()), !dbg !2289
  store i32 %7, ptr %6, align 4, !dbg !2315, !tbaa !828
  ret ptr %61, !dbg !2316
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2317 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2321, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2322, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2323, metadata !DIExpression()), !dbg !2324
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2325
  ret ptr %4, !dbg !2326
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2327 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2329, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 0, metadata !2223, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata ptr %0, metadata !2224, metadata !DIExpression()), !dbg !2331
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2333
  ret ptr %2, !dbg !2334
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2335 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2339, metadata !DIExpression()), !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 0, metadata !2321, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata ptr %0, metadata !2322, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %1, metadata !2323, metadata !DIExpression()), !dbg !2342
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2344
  ret ptr %3, !dbg !2345
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2346 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2354
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2353, metadata !DIExpression(), metadata !2354, metadata ptr %4, metadata !DIExpression()), !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2350, metadata !DIExpression()), !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2351, metadata !DIExpression()), !dbg !2355
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2352, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2357), !dbg !2360
  call void @llvm.dbg.value(metadata i32 %1, metadata !2361, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2366, metadata !DIExpression()), !dbg !2369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2369, !alias.scope !2357, !DIAssignID !2370
  call void @llvm.dbg.assign(metadata i8 0, metadata !2353, metadata !DIExpression(), metadata !2370, metadata ptr %4, metadata !DIExpression()), !dbg !2355
  %5 = icmp eq i32 %1, 10, !dbg !2371
  br i1 %5, label %6, label %7, !dbg !2373

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2374, !noalias !2357
  unreachable, !dbg !2374

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2375, !tbaa !1437, !alias.scope !2357, !DIAssignID !2376
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2376, metadata ptr %4, metadata !DIExpression()), !dbg !2355
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2377
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2378
  ret ptr %8, !dbg !2379
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2380 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2388, metadata !DIExpression(), metadata !2389, metadata ptr %5, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2384, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2385, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2386, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2387, metadata !DIExpression()), !dbg !2390
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %1, metadata !2361, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2366, metadata !DIExpression()), !dbg !2398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2398, !alias.scope !2392, !DIAssignID !2399
  call void @llvm.dbg.assign(metadata i8 0, metadata !2388, metadata !DIExpression(), metadata !2399, metadata ptr %5, metadata !DIExpression()), !dbg !2390
  %6 = icmp eq i32 %1, 10, !dbg !2400
  br i1 %6, label %7, label %8, !dbg !2401

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2402, !noalias !2392
  unreachable, !dbg !2402

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2403, !tbaa !1437, !alias.scope !2392, !DIAssignID !2404
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2404, metadata ptr %5, metadata !DIExpression()), !dbg !2390
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2405
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2406
  ret ptr %9, !dbg !2407
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2408 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2414
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2415
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2413, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2353, metadata !DIExpression(), metadata !2414, metadata ptr %3, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 0, metadata !2350, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 %0, metadata !2351, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata ptr %1, metadata !2352, metadata !DIExpression()), !dbg !2416
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %0, metadata !2361, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2366, metadata !DIExpression()), !dbg !2425
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2425, !alias.scope !2419, !DIAssignID !2426
  call void @llvm.dbg.assign(metadata i8 0, metadata !2353, metadata !DIExpression(), metadata !2426, metadata ptr %3, metadata !DIExpression()), !dbg !2416
  %4 = icmp eq i32 %0, 10, !dbg !2427
  br i1 %4, label %5, label %6, !dbg !2428

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2429, !noalias !2419
  unreachable, !dbg !2429

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2430, !tbaa !1437, !alias.scope !2419, !DIAssignID !2431
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2431, metadata ptr %3, metadata !DIExpression()), !dbg !2416
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2432
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2433
  ret ptr %7, !dbg !2434
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2435 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2442
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2439, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2440, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2388, metadata !DIExpression(), metadata !2442, metadata ptr %4, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 0, metadata !2384, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %0, metadata !2385, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata ptr %1, metadata !2386, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %2, metadata !2387, metadata !DIExpression()), !dbg !2444
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2447), !dbg !2450
  call void @llvm.dbg.value(metadata i32 %0, metadata !2361, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2366, metadata !DIExpression()), !dbg !2453
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2453, !alias.scope !2447, !DIAssignID !2454
  call void @llvm.dbg.assign(metadata i8 0, metadata !2388, metadata !DIExpression(), metadata !2454, metadata ptr %4, metadata !DIExpression()), !dbg !2444
  %5 = icmp eq i32 %0, 10, !dbg !2455
  br i1 %5, label %6, label %7, !dbg !2456

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2457, !noalias !2447
  unreachable, !dbg !2457

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2458, !tbaa !1437, !alias.scope !2447, !DIAssignID !2459
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2459, metadata ptr %4, metadata !DIExpression()), !dbg !2444
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2460
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2461
  ret ptr %8, !dbg !2462
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2463 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2471
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2470, metadata !DIExpression(), metadata !2471, metadata ptr %4, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2467, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2468, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2469, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2474, !tbaa.struct !2475, !DIAssignID !2476
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2470, metadata !DIExpression(), metadata !2476, metadata ptr %4, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1454, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1455, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1457, metadata !DIExpression()), !dbg !2477
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2479
  %6 = lshr i8 %2, 5, !dbg !2480
  %7 = zext nneg i8 %6 to i64, !dbg !2480
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2481
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1458, metadata !DIExpression()), !dbg !2477
  %9 = and i8 %2, 31, !dbg !2482
  %10 = zext nneg i8 %9 to i32, !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1460, metadata !DIExpression()), !dbg !2477
  %11 = load i32, ptr %8, align 4, !dbg !2483, !tbaa !828
  %12 = lshr i32 %11, %10, !dbg !2484
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1461, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2477
  %13 = and i32 %12, 1, !dbg !2485
  %14 = xor i32 %13, 1, !dbg !2485
  %15 = shl nuw i32 %14, %10, !dbg !2486
  %16 = xor i32 %15, %11, !dbg !2487
  store i32 %16, ptr %8, align 4, !dbg !2487, !tbaa !828
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2488
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2489
  ret ptr %17, !dbg !2490
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2491 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2497
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2470, metadata !DIExpression(), metadata !2497, metadata ptr %3, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %0, metadata !2467, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i64 -1, metadata !2468, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %1, metadata !2469, metadata !DIExpression()), !dbg !2499
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2502, !tbaa.struct !2475, !DIAssignID !2503
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2470, metadata !DIExpression(), metadata !2503, metadata ptr %3, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %3, metadata !1454, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %1, metadata !1455, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %1, metadata !1457, metadata !DIExpression()), !dbg !2504
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2506
  %5 = lshr i8 %1, 5, !dbg !2507
  %6 = zext nneg i8 %5 to i64, !dbg !2507
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2508
  call void @llvm.dbg.value(metadata ptr %7, metadata !1458, metadata !DIExpression()), !dbg !2504
  %8 = and i8 %1, 31, !dbg !2509
  %9 = zext nneg i8 %8 to i32, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %9, metadata !1460, metadata !DIExpression()), !dbg !2504
  %10 = load i32, ptr %7, align 4, !dbg !2510, !tbaa !828
  %11 = lshr i32 %10, %9, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %11, metadata !1461, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2504
  %12 = and i32 %11, 1, !dbg !2512
  %13 = xor i32 %12, 1, !dbg !2512
  %14 = shl nuw i32 %13, %9, !dbg !2513
  %15 = xor i32 %14, %10, !dbg !2514
  store i32 %15, ptr %7, align 4, !dbg !2514, !tbaa !828
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2515
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2516
  ret ptr %16, !dbg !2517
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2518 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2521
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8 58, metadata !2496, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2470, metadata !DIExpression(), metadata !2521, metadata ptr %2, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %0, metadata !2467, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i64 -1, metadata !2468, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 58, metadata !2469, metadata !DIExpression()), !dbg !2525
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2528, !tbaa.struct !2475, !DIAssignID !2529
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2470, metadata !DIExpression(), metadata !2529, metadata ptr %2, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %2, metadata !1454, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 58, metadata !1457, metadata !DIExpression()), !dbg !2530
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2532
  call void @llvm.dbg.value(metadata ptr %3, metadata !1458, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 26, metadata !1460, metadata !DIExpression()), !dbg !2530
  %4 = load i32, ptr %3, align 4, !dbg !2533, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %4, metadata !1461, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2530
  %5 = or i32 %4, 67108864, !dbg !2534
  store i32 %5, ptr %3, align 4, !dbg !2534, !tbaa !828
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2535
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2536
  ret ptr %6, !dbg !2537
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2538 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2542
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2540, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2470, metadata !DIExpression(), metadata !2542, metadata ptr %3, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata ptr %0, metadata !2467, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64 %1, metadata !2468, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8 58, metadata !2469, metadata !DIExpression()), !dbg !2544
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2547, !tbaa.struct !2475, !DIAssignID !2548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2470, metadata !DIExpression(), metadata !2548, metadata ptr %3, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata ptr %3, metadata !1454, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 58, metadata !1457, metadata !DIExpression()), !dbg !2549
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2551
  call void @llvm.dbg.value(metadata ptr %4, metadata !1458, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 26, metadata !1460, metadata !DIExpression()), !dbg !2549
  %5 = load i32, ptr %4, align 4, !dbg !2552, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %5, metadata !1461, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2549
  %6 = or i32 %5, 67108864, !dbg !2553
  store i32 %6, ptr %4, align 4, !dbg !2553, !tbaa !828
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2554
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2555
  ret ptr %7, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2557 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2563
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2562, metadata !DIExpression(), metadata !2563, metadata ptr %4, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2366, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2559, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2560, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %1, metadata !2361, metadata !DIExpression()), !dbg !2568
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2568
  %5 = icmp eq i32 %1, 10, !dbg !2569
  br i1 %5, label %6, label %7, !dbg !2570

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2571, !noalias !2572
  unreachable, !dbg !2571

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2568
  store i32 %1, ptr %4, align 8, !dbg !2575, !tbaa.struct !2475, !DIAssignID !2576
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2575
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2575
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2562, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2576, metadata ptr %4, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2562, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2577, metadata ptr %8, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1454, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1457, metadata !DIExpression()), !dbg !2578
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2580
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1458, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1460, metadata !DIExpression()), !dbg !2578
  %10 = load i32, ptr %9, align 4, !dbg !2581, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1461, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2578
  %11 = or i32 %10, 67108864, !dbg !2582
  store i32 %11, ptr %9, align 4, !dbg !2582, !tbaa !828, !DIAssignID !2583
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2562, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2583, metadata ptr %9, metadata !DIExpression()), !dbg !2564
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2584
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2585
  ret ptr %12, !dbg !2586
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2587 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2595
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2591, metadata !DIExpression()), !dbg !2596
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2592, metadata !DIExpression()), !dbg !2596
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2593, metadata !DIExpression()), !dbg !2596
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(), metadata !2595, metadata ptr %5, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %1, metadata !2603, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %2, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %3, metadata !2605, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 -1, metadata !2606, metadata !DIExpression()), !dbg !2607
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2610, !tbaa.struct !2475, !DIAssignID !2611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(), metadata !2611, metadata ptr %5, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2612, metadata ptr undef, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata ptr %1, metadata !1495, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata ptr %2, metadata !1496, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !2613
  store i32 10, ptr %5, align 8, !dbg !2615, !tbaa !1437, !DIAssignID !2616
  call void @llvm.dbg.assign(metadata i32 10, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2616, metadata ptr %5, metadata !DIExpression()), !dbg !2607
  %6 = icmp ne ptr %1, null, !dbg !2617
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2618
  br i1 %8, label %10, label %9, !dbg !2618

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2619
  unreachable, !dbg !2619

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2620
  store ptr %1, ptr %11, align 8, !dbg !2621, !tbaa !1508, !DIAssignID !2622
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2622, metadata ptr %11, metadata !DIExpression()), !dbg !2607
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2623
  store ptr %2, ptr %12, align 8, !dbg !2624, !tbaa !1511, !DIAssignID !2625
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2625, metadata ptr %12, metadata !DIExpression()), !dbg !2607
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2626
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2627
  ret ptr %13, !dbg !2628
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2598 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(), metadata !2629, metadata ptr %6, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2603, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2604, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2605, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2606, metadata !DIExpression()), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2632, !tbaa.struct !2475, !DIAssignID !2633
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(), metadata !2633, metadata ptr %6, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2634, metadata ptr undef, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %6, metadata !1494, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %1, metadata !1495, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %2, metadata !1496, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %6, metadata !1494, metadata !DIExpression()), !dbg !2635
  store i32 10, ptr %6, align 8, !dbg !2637, !tbaa !1437, !DIAssignID !2638
  call void @llvm.dbg.assign(metadata i32 10, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2638, metadata ptr %6, metadata !DIExpression()), !dbg !2630
  %7 = icmp ne ptr %1, null, !dbg !2639
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2640
  br i1 %9, label %11, label %10, !dbg !2640

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2641
  unreachable, !dbg !2641

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2642
  store ptr %1, ptr %12, align 8, !dbg !2643, !tbaa !1508, !DIAssignID !2644
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2644, metadata ptr %12, metadata !DIExpression()), !dbg !2630
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2645
  store ptr %2, ptr %13, align 8, !dbg !2646, !tbaa !1511, !DIAssignID !2647
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2647, metadata ptr %13, metadata !DIExpression()), !dbg !2630
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2648
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2649
  ret ptr %14, !dbg !2650
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2651 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2658
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2655, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2656, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i32 0, metadata !2591, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %0, metadata !2592, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %1, metadata !2593, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %2, metadata !2594, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(), metadata !2658, metadata ptr %4, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 0, metadata !2602, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %1, metadata !2604, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 -1, metadata !2606, metadata !DIExpression()), !dbg !2662
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2665, !tbaa.struct !2475, !DIAssignID !2666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(), metadata !2666, metadata ptr %4, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2667, metadata ptr undef, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %4, metadata !1494, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %0, metadata !1495, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %1, metadata !1496, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %4, metadata !1494, metadata !DIExpression()), !dbg !2668
  store i32 10, ptr %4, align 8, !dbg !2670, !tbaa !1437, !DIAssignID !2671
  call void @llvm.dbg.assign(metadata i32 10, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2671, metadata ptr %4, metadata !DIExpression()), !dbg !2662
  %5 = icmp ne ptr %0, null, !dbg !2672
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2673
  br i1 %7, label %9, label %8, !dbg !2673

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2674
  unreachable, !dbg !2674

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2675
  store ptr %0, ptr %10, align 8, !dbg !2676, !tbaa !1508, !DIAssignID !2677
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2677, metadata ptr %10, metadata !DIExpression()), !dbg !2662
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2678
  store ptr %1, ptr %11, align 8, !dbg !2679, !tbaa !1511, !DIAssignID !2680
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2680, metadata ptr %11, metadata !DIExpression()), !dbg !2662
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2681
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2682
  ret ptr %12, !dbg !2683
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2684 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2692
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2688, metadata !DIExpression()), !dbg !2693
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2689, metadata !DIExpression()), !dbg !2693
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2690, metadata !DIExpression()), !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2691, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(), metadata !2692, metadata ptr %5, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 0, metadata !2602, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %1, metadata !2604, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %3, metadata !2606, metadata !DIExpression()), !dbg !2694
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2697, !tbaa.struct !2475, !DIAssignID !2698
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(), metadata !2698, metadata ptr %5, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2699, metadata ptr undef, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %0, metadata !1495, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %1, metadata !1496, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !2700
  store i32 10, ptr %5, align 8, !dbg !2702, !tbaa !1437, !DIAssignID !2703
  call void @llvm.dbg.assign(metadata i32 10, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2703, metadata ptr %5, metadata !DIExpression()), !dbg !2694
  %6 = icmp ne ptr %0, null, !dbg !2704
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2705
  br i1 %8, label %10, label %9, !dbg !2705

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2706
  unreachable, !dbg !2706

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2707
  store ptr %0, ptr %11, align 8, !dbg !2708, !tbaa !1508, !DIAssignID !2709
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2709, metadata ptr %11, metadata !DIExpression()), !dbg !2694
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2710
  store ptr %1, ptr %12, align 8, !dbg !2711, !tbaa !1511, !DIAssignID !2712
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2597, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2712, metadata ptr %12, metadata !DIExpression()), !dbg !2694
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2713
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2714
  ret ptr %13, !dbg !2715
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2716 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2720, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2721, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2722, metadata !DIExpression()), !dbg !2723
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2724
  ret ptr %4, !dbg !2725
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2726 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2730, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2731, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %0, metadata !2721, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %1, metadata !2722, metadata !DIExpression()), !dbg !2733
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2735
  ret ptr %3, !dbg !2736
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2737 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2741, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2742, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %0, metadata !2720, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %1, metadata !2721, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 -1, metadata !2722, metadata !DIExpression()), !dbg !2744
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2746
  ret ptr %3, !dbg !2747
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2748 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2741, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %0, metadata !2742, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %0, metadata !2721, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 -1, metadata !2722, metadata !DIExpression()), !dbg !2756
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2758
  ret ptr %2, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2760 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2799, metadata !DIExpression()), !dbg !2805
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2800, metadata !DIExpression()), !dbg !2805
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2801, metadata !DIExpression()), !dbg !2805
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2802, metadata !DIExpression()), !dbg !2805
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2803, metadata !DIExpression()), !dbg !2805
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2804, metadata !DIExpression()), !dbg !2805
  %7 = icmp eq ptr %1, null, !dbg !2806
  br i1 %7, label %10, label %8, !dbg !2808

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2809
  br label %12, !dbg !2809

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %2, ptr noundef %3) #37, !dbg !2810
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.3.76, i32 noundef 5) #37, !dbg !2811
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2811
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2812
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.5.78, i32 noundef 5) #37, !dbg !2813
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.79) #37, !dbg !2813
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2814
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
  ], !dbg !2815

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.7.80, i32 noundef 5) #37, !dbg !2816
  %21 = load ptr, ptr %4, align 8, !dbg !2816, !tbaa !766
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2816
  br label %147, !dbg !2818

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.8.81, i32 noundef 5) #37, !dbg !2819
  %25 = load ptr, ptr %4, align 8, !dbg !2819, !tbaa !766
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2819
  %27 = load ptr, ptr %26, align 8, !dbg !2819, !tbaa !766
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2819
  br label %147, !dbg !2820

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.9.82, i32 noundef 5) #37, !dbg !2821
  %31 = load ptr, ptr %4, align 8, !dbg !2821, !tbaa !766
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2821
  %33 = load ptr, ptr %32, align 8, !dbg !2821, !tbaa !766
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2821
  %35 = load ptr, ptr %34, align 8, !dbg !2821, !tbaa !766
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2821
  br label %147, !dbg !2822

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.10.83, i32 noundef 5) #37, !dbg !2823
  %39 = load ptr, ptr %4, align 8, !dbg !2823, !tbaa !766
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2823
  %41 = load ptr, ptr %40, align 8, !dbg !2823, !tbaa !766
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2823
  %43 = load ptr, ptr %42, align 8, !dbg !2823, !tbaa !766
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2823
  %45 = load ptr, ptr %44, align 8, !dbg !2823, !tbaa !766
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2823
  br label %147, !dbg !2824

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.11.84, i32 noundef 5) #37, !dbg !2825
  %49 = load ptr, ptr %4, align 8, !dbg !2825, !tbaa !766
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2825
  %51 = load ptr, ptr %50, align 8, !dbg !2825, !tbaa !766
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2825
  %53 = load ptr, ptr %52, align 8, !dbg !2825, !tbaa !766
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2825
  %55 = load ptr, ptr %54, align 8, !dbg !2825, !tbaa !766
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2825
  %57 = load ptr, ptr %56, align 8, !dbg !2825, !tbaa !766
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2825
  br label %147, !dbg !2826

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.12.85, i32 noundef 5) #37, !dbg !2827
  %61 = load ptr, ptr %4, align 8, !dbg !2827, !tbaa !766
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2827
  %63 = load ptr, ptr %62, align 8, !dbg !2827, !tbaa !766
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2827
  %65 = load ptr, ptr %64, align 8, !dbg !2827, !tbaa !766
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2827
  %67 = load ptr, ptr %66, align 8, !dbg !2827, !tbaa !766
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2827
  %69 = load ptr, ptr %68, align 8, !dbg !2827, !tbaa !766
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2827
  %71 = load ptr, ptr %70, align 8, !dbg !2827, !tbaa !766
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2827
  br label %147, !dbg !2828

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.13.86, i32 noundef 5) #37, !dbg !2829
  %75 = load ptr, ptr %4, align 8, !dbg !2829, !tbaa !766
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2829
  %77 = load ptr, ptr %76, align 8, !dbg !2829, !tbaa !766
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2829
  %79 = load ptr, ptr %78, align 8, !dbg !2829, !tbaa !766
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2829
  %81 = load ptr, ptr %80, align 8, !dbg !2829, !tbaa !766
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2829
  %83 = load ptr, ptr %82, align 8, !dbg !2829, !tbaa !766
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2829
  %85 = load ptr, ptr %84, align 8, !dbg !2829, !tbaa !766
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2829
  %87 = load ptr, ptr %86, align 8, !dbg !2829, !tbaa !766
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2829
  br label %147, !dbg !2830

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.14.87, i32 noundef 5) #37, !dbg !2831
  %91 = load ptr, ptr %4, align 8, !dbg !2831, !tbaa !766
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2831
  %93 = load ptr, ptr %92, align 8, !dbg !2831, !tbaa !766
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2831
  %95 = load ptr, ptr %94, align 8, !dbg !2831, !tbaa !766
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2831
  %97 = load ptr, ptr %96, align 8, !dbg !2831, !tbaa !766
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2831
  %99 = load ptr, ptr %98, align 8, !dbg !2831, !tbaa !766
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2831
  %101 = load ptr, ptr %100, align 8, !dbg !2831, !tbaa !766
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2831
  %103 = load ptr, ptr %102, align 8, !dbg !2831, !tbaa !766
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2831
  %105 = load ptr, ptr %104, align 8, !dbg !2831, !tbaa !766
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2831
  br label %147, !dbg !2832

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.15.88, i32 noundef 5) #37, !dbg !2833
  %109 = load ptr, ptr %4, align 8, !dbg !2833, !tbaa !766
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2833
  %111 = load ptr, ptr %110, align 8, !dbg !2833, !tbaa !766
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2833
  %113 = load ptr, ptr %112, align 8, !dbg !2833, !tbaa !766
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2833
  %115 = load ptr, ptr %114, align 8, !dbg !2833, !tbaa !766
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2833
  %117 = load ptr, ptr %116, align 8, !dbg !2833, !tbaa !766
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2833
  %119 = load ptr, ptr %118, align 8, !dbg !2833, !tbaa !766
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2833
  %121 = load ptr, ptr %120, align 8, !dbg !2833, !tbaa !766
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2833
  %123 = load ptr, ptr %122, align 8, !dbg !2833, !tbaa !766
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2833
  %125 = load ptr, ptr %124, align 8, !dbg !2833, !tbaa !766
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2833
  br label %147, !dbg !2834

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.16.89, i32 noundef 5) #37, !dbg !2835
  %129 = load ptr, ptr %4, align 8, !dbg !2835, !tbaa !766
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2835
  %131 = load ptr, ptr %130, align 8, !dbg !2835, !tbaa !766
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2835
  %133 = load ptr, ptr %132, align 8, !dbg !2835, !tbaa !766
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2835
  %135 = load ptr, ptr %134, align 8, !dbg !2835, !tbaa !766
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2835
  %137 = load ptr, ptr %136, align 8, !dbg !2835, !tbaa !766
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2835
  %139 = load ptr, ptr %138, align 8, !dbg !2835, !tbaa !766
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2835
  %141 = load ptr, ptr %140, align 8, !dbg !2835, !tbaa !766
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2835
  %143 = load ptr, ptr %142, align 8, !dbg !2835, !tbaa !766
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2835
  %145 = load ptr, ptr %144, align 8, !dbg !2835, !tbaa !766
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2835
  br label %147, !dbg !2836

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2837
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2838 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2843, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2844, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2845, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2846, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2847, metadata !DIExpression()), !dbg !2848
  br label %6, !dbg !2849

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2851
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2847, metadata !DIExpression()), !dbg !2848
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2852
  %9 = load ptr, ptr %8, align 8, !dbg !2852, !tbaa !766
  %10 = icmp eq ptr %9, null, !dbg !2854
  %11 = add i64 %7, 1, !dbg !2855
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2847, metadata !DIExpression()), !dbg !2848
  br i1 %10, label %12, label %6, !dbg !2854, !llvm.loop !2856

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2858
  ret void, !dbg !2859
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2860 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2879
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2877, metadata !DIExpression(), metadata !2879, metadata ptr %6, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2872, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2873, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2874, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2875, metadata !DIExpression()), !dbg !2880
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2876, metadata !DIExpression()), !dbg !2880
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2876, metadata !DIExpression()), !dbg !2880
  %10 = icmp ult i32 %9, 41, !dbg !2882
  br i1 %10, label %11, label %16, !dbg !2882

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2882
  %13 = zext nneg i32 %9 to i64, !dbg !2882
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2882
  %15 = add nuw nsw i32 %9, 8, !dbg !2882
  store i32 %15, ptr %4, align 8, !dbg !2882
  br label %19, !dbg !2882

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2882
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2882
  store ptr %18, ptr %7, align 8, !dbg !2882
  br label %19, !dbg !2882

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2882
  %22 = load ptr, ptr %21, align 8, !dbg !2882
  store ptr %22, ptr %6, align 16, !dbg !2885, !tbaa !766
  %23 = icmp eq ptr %22, null, !dbg !2886
  br i1 %23, label %128, label %24, !dbg !2887

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2876, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2876, metadata !DIExpression()), !dbg !2880
  %25 = icmp ult i32 %20, 41, !dbg !2882
  br i1 %25, label %29, label %26, !dbg !2882

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2882
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2882
  store ptr %28, ptr %7, align 8, !dbg !2882
  br label %34, !dbg !2882

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2882
  %31 = zext nneg i32 %20 to i64, !dbg !2882
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2882
  %33 = add nuw nsw i32 %20, 8, !dbg !2882
  store i32 %33, ptr %4, align 8, !dbg !2882
  br label %34, !dbg !2882

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2882
  %37 = load ptr, ptr %36, align 8, !dbg !2882
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2888
  store ptr %37, ptr %38, align 8, !dbg !2885, !tbaa !766
  %39 = icmp eq ptr %37, null, !dbg !2886
  br i1 %39, label %128, label %40, !dbg !2887

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2876, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2876, metadata !DIExpression()), !dbg !2880
  %41 = icmp ult i32 %35, 41, !dbg !2882
  br i1 %41, label %45, label %42, !dbg !2882

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2882
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2882
  store ptr %44, ptr %7, align 8, !dbg !2882
  br label %50, !dbg !2882

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2882
  %47 = zext nneg i32 %35 to i64, !dbg !2882
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2882
  %49 = add nuw nsw i32 %35, 8, !dbg !2882
  store i32 %49, ptr %4, align 8, !dbg !2882
  br label %50, !dbg !2882

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2882
  %53 = load ptr, ptr %52, align 8, !dbg !2882
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2888
  store ptr %53, ptr %54, align 16, !dbg !2885, !tbaa !766
  %55 = icmp eq ptr %53, null, !dbg !2886
  br i1 %55, label %128, label %56, !dbg !2887

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2876, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2876, metadata !DIExpression()), !dbg !2880
  %57 = icmp ult i32 %51, 41, !dbg !2882
  br i1 %57, label %61, label %58, !dbg !2882

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2882
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2882
  store ptr %60, ptr %7, align 8, !dbg !2882
  br label %66, !dbg !2882

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2882
  %63 = zext nneg i32 %51 to i64, !dbg !2882
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2882
  %65 = add nuw nsw i32 %51, 8, !dbg !2882
  store i32 %65, ptr %4, align 8, !dbg !2882
  br label %66, !dbg !2882

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2882
  %69 = load ptr, ptr %68, align 8, !dbg !2882
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2888
  store ptr %69, ptr %70, align 8, !dbg !2885, !tbaa !766
  %71 = icmp eq ptr %69, null, !dbg !2886
  br i1 %71, label %128, label %72, !dbg !2887

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2876, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2876, metadata !DIExpression()), !dbg !2880
  %73 = icmp ult i32 %67, 41, !dbg !2882
  br i1 %73, label %77, label %74, !dbg !2882

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2882
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2882
  store ptr %76, ptr %7, align 8, !dbg !2882
  br label %82, !dbg !2882

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2882
  %79 = zext nneg i32 %67 to i64, !dbg !2882
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2882
  %81 = add nuw nsw i32 %67, 8, !dbg !2882
  store i32 %81, ptr %4, align 8, !dbg !2882
  br label %82, !dbg !2882

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2882
  %85 = load ptr, ptr %84, align 8, !dbg !2882
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2888
  store ptr %85, ptr %86, align 16, !dbg !2885, !tbaa !766
  %87 = icmp eq ptr %85, null, !dbg !2886
  br i1 %87, label %128, label %88, !dbg !2887

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2876, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2876, metadata !DIExpression()), !dbg !2880
  %89 = icmp ult i32 %83, 41, !dbg !2882
  br i1 %89, label %93, label %90, !dbg !2882

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2882
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2882
  store ptr %92, ptr %7, align 8, !dbg !2882
  br label %98, !dbg !2882

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2882
  %95 = zext nneg i32 %83 to i64, !dbg !2882
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2882
  %97 = add nuw nsw i32 %83, 8, !dbg !2882
  store i32 %97, ptr %4, align 8, !dbg !2882
  br label %98, !dbg !2882

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2882
  %100 = load ptr, ptr %99, align 8, !dbg !2882
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2888
  store ptr %100, ptr %101, align 8, !dbg !2885, !tbaa !766
  %102 = icmp eq ptr %100, null, !dbg !2886
  br i1 %102, label %128, label %103, !dbg !2887

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2876, metadata !DIExpression()), !dbg !2880
  %104 = load ptr, ptr %7, align 8, !dbg !2882
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2882
  store ptr %105, ptr %7, align 8, !dbg !2882
  %106 = load ptr, ptr %104, align 8, !dbg !2882
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2888
  store ptr %106, ptr %107, align 16, !dbg !2885, !tbaa !766
  %108 = icmp eq ptr %106, null, !dbg !2886
  br i1 %108, label %128, label %109, !dbg !2887

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2876, metadata !DIExpression()), !dbg !2880
  %110 = load ptr, ptr %7, align 8, !dbg !2882
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2882
  store ptr %111, ptr %7, align 8, !dbg !2882
  %112 = load ptr, ptr %110, align 8, !dbg !2882
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2888
  store ptr %112, ptr %113, align 8, !dbg !2885, !tbaa !766
  %114 = icmp eq ptr %112, null, !dbg !2886
  br i1 %114, label %128, label %115, !dbg !2887

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2876, metadata !DIExpression()), !dbg !2880
  %116 = load ptr, ptr %7, align 8, !dbg !2882
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2882
  store ptr %117, ptr %7, align 8, !dbg !2882
  %118 = load ptr, ptr %116, align 8, !dbg !2882
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2888
  store ptr %118, ptr %119, align 16, !dbg !2885, !tbaa !766
  %120 = icmp eq ptr %118, null, !dbg !2886
  br i1 %120, label %128, label %121, !dbg !2887

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2876, metadata !DIExpression()), !dbg !2880
  %122 = load ptr, ptr %7, align 8, !dbg !2882
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2882
  store ptr %123, ptr %7, align 8, !dbg !2882
  %124 = load ptr, ptr %122, align 8, !dbg !2882
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2888
  store ptr %124, ptr %125, align 8, !dbg !2885, !tbaa !766
  %126 = icmp eq ptr %124, null, !dbg !2886
  %127 = select i1 %126, i64 9, i64 10, !dbg !2887
  br label %128, !dbg !2887

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2889
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2890
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2891
  ret void, !dbg !2891
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2892 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2905
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2900, metadata !DIExpression(), metadata !2905, metadata ptr %5, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2896, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2897, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2898, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2899, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !2907
  call void @llvm.va_start(ptr nonnull %5), !dbg !2908
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2909
  call void @llvm.va_end(ptr nonnull %5), !dbg !2910
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !2911
  ret void, !dbg !2911
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2912 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2913, !tbaa !766
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %1), !dbg !2913
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.17.94, i32 noundef 5) #37, !dbg !2914
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.95) #37, !dbg !2914
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.19.96, i32 noundef 5) #37, !dbg !2915
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.97, ptr noundef nonnull @.str.21) #37, !dbg !2915
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2916
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.98) #37, !dbg !2916
  ret void, !dbg !2917
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2918 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2925, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata ptr %0, metadata !2927, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %2, metadata !2931, metadata !DIExpression()), !dbg !2932
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %4, metadata !2935, metadata !DIExpression()), !dbg !2940
  %5 = icmp eq ptr %4, null, !dbg !2942
  br i1 %5, label %6, label %7, !dbg !2944

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2945
  unreachable, !dbg !2945

7:                                                ; preds = %3
  ret ptr %4, !dbg !2946
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2928 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2927, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2931, metadata !DIExpression()), !dbg !2947
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2948
  call void @llvm.dbg.value(metadata ptr %4, metadata !2935, metadata !DIExpression()), !dbg !2949
  %5 = icmp eq ptr %4, null, !dbg !2951
  br i1 %5, label %6, label %7, !dbg !2952

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2953
  unreachable, !dbg !2953

7:                                                ; preds = %3
  ret ptr %4, !dbg !2954
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2955 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2959, metadata !DIExpression()), !dbg !2960
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2961
  call void @llvm.dbg.value(metadata ptr %2, metadata !2935, metadata !DIExpression()), !dbg !2962
  %3 = icmp eq ptr %2, null, !dbg !2964
  br i1 %3, label %4, label %5, !dbg !2965

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2966
  unreachable, !dbg !2966

5:                                                ; preds = %1
  ret ptr %2, !dbg !2967
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2968 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2969 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2973, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %0, metadata !2975, metadata !DIExpression()), !dbg !2979
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2981
  call void @llvm.dbg.value(metadata ptr %2, metadata !2935, metadata !DIExpression()), !dbg !2982
  %3 = icmp eq ptr %2, null, !dbg !2984
  br i1 %3, label %4, label %5, !dbg !2985

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2986
  unreachable, !dbg !2986

5:                                                ; preds = %1
  ret ptr %2, !dbg !2987
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2988 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2992, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 %0, metadata !2959, metadata !DIExpression()), !dbg !2994
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2996
  call void @llvm.dbg.value(metadata ptr %2, metadata !2935, metadata !DIExpression()), !dbg !2997
  %3 = icmp eq ptr %2, null, !dbg !2999
  br i1 %3, label %4, label %5, !dbg !3000

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3001
  unreachable, !dbg !3001

5:                                                ; preds = %1
  ret ptr %2, !dbg !3002
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3003 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3007, metadata !DIExpression()), !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %0, metadata !3010, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3014, metadata !DIExpression()), !dbg !3015
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3017
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3018
  call void @llvm.dbg.value(metadata ptr %4, metadata !2935, metadata !DIExpression()), !dbg !3019
  %5 = icmp eq ptr %4, null, !dbg !3021
  br i1 %5, label %6, label %7, !dbg !3022

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3023
  unreachable, !dbg !3023

7:                                                ; preds = %2
  ret ptr %4, !dbg !3024
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3025 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3026 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3030, metadata !DIExpression()), !dbg !3032
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3031, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata ptr %0, metadata !3010, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %1, metadata !3014, metadata !DIExpression()), !dbg !3039
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3041
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3042
  call void @llvm.dbg.value(metadata ptr %4, metadata !2935, metadata !DIExpression()), !dbg !3043
  %5 = icmp eq ptr %4, null, !dbg !3045
  br i1 %5, label %6, label %7, !dbg !3046

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3047
  unreachable, !dbg !3047

7:                                                ; preds = %2
  ret ptr %4, !dbg !3048
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3049 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3056
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3054, metadata !DIExpression()), !dbg !3056
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3055, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %0, metadata !3057, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %2, metadata !3061, metadata !DIExpression()), !dbg !3062
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3064
  call void @llvm.dbg.value(metadata ptr %4, metadata !2935, metadata !DIExpression()), !dbg !3065
  %5 = icmp eq ptr %4, null, !dbg !3067
  br i1 %5, label %6, label %7, !dbg !3068

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3069
  unreachable, !dbg !3069

7:                                                ; preds = %3
  ret ptr %4, !dbg !3070
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3071 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3075, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr null, metadata !2927, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i64 %0, metadata !2930, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !3078
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3080
  call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !3081
  %4 = icmp eq ptr %3, null, !dbg !3083
  br i1 %4, label %5, label %6, !dbg !3084

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3085
  unreachable, !dbg !3085

6:                                                ; preds = %2
  ret ptr %3, !dbg !3086
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3087 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3091, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr null, metadata !3053, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %0, metadata !3054, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %1, metadata !3055, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr null, metadata !3057, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %0, metadata !3060, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3061, metadata !DIExpression()), !dbg !3096
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3098
  call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !3099
  %4 = icmp eq ptr %3, null, !dbg !3101
  br i1 %4, label %5, label %6, !dbg !3102

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3103
  unreachable, !dbg !3103

6:                                                ; preds = %2
  ret ptr %3, !dbg !3104
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3105 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3111
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %0, metadata !701, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %1, metadata !702, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 1, metadata !703, metadata !DIExpression()), !dbg !3112
  %3 = load i64, ptr %1, align 8, !dbg !3114, !tbaa !2178
  call void @llvm.dbg.value(metadata i64 %3, metadata !704, metadata !DIExpression()), !dbg !3112
  %4 = icmp eq ptr %0, null, !dbg !3115
  br i1 %4, label %5, label %8, !dbg !3117

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3118
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3121
  br label %15, !dbg !3121

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3122
  %10 = add nuw i64 %9, 1, !dbg !3122
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3122
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3122
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %13, metadata !704, metadata !DIExpression()), !dbg !3112
  br i1 %12, label %14, label %15, !dbg !3125

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3126
  unreachable, !dbg !3126

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3112
  call void @llvm.dbg.value(metadata i64 %16, metadata !704, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %0, metadata !2927, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %16, metadata !2930, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 1, metadata !2931, metadata !DIExpression()), !dbg !3127
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3129
  call void @llvm.dbg.value(metadata ptr %17, metadata !2935, metadata !DIExpression()), !dbg !3130
  %18 = icmp eq ptr %17, null, !dbg !3132
  br i1 %18, label %19, label %20, !dbg !3133

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3134
  unreachable, !dbg !3134

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !701, metadata !DIExpression()), !dbg !3112
  store i64 %16, ptr %1, align 8, !dbg !3135, !tbaa !2178
  ret ptr %17, !dbg !3136
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !696 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !701, metadata !DIExpression()), !dbg !3137
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !702, metadata !DIExpression()), !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !703, metadata !DIExpression()), !dbg !3137
  %4 = load i64, ptr %1, align 8, !dbg !3138, !tbaa !2178
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !704, metadata !DIExpression()), !dbg !3137
  %5 = icmp eq ptr %0, null, !dbg !3139
  br i1 %5, label %6, label %13, !dbg !3140

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3141
  br i1 %7, label %8, label %20, !dbg !3142

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !704, metadata !DIExpression()), !dbg !3137
  %10 = icmp ugt i64 %2, 128, !dbg !3145
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !704, metadata !DIExpression()), !dbg !3137
  br label %20, !dbg !3147

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3148
  %15 = add nuw i64 %14, 1, !dbg !3148
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3148
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3148
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !704, metadata !DIExpression()), !dbg !3137
  br i1 %17, label %19, label %20, !dbg !3149

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3150
  unreachable, !dbg !3150

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !704, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata ptr %0, metadata !2927, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %21, metadata !2930, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %2, metadata !2931, metadata !DIExpression()), !dbg !3151
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3153
  call void @llvm.dbg.value(metadata ptr %22, metadata !2935, metadata !DIExpression()), !dbg !3154
  %23 = icmp eq ptr %22, null, !dbg !3156
  br i1 %23, label %24, label %25, !dbg !3157

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3158
  unreachable, !dbg !3158

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !701, metadata !DIExpression()), !dbg !3137
  store i64 %21, ptr %1, align 8, !dbg !3159, !tbaa !2178
  ret ptr %22, !dbg !3160
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !708 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !717, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !718, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !719, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !720, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !721, metadata !DIExpression()), !dbg !3161
  %6 = load i64, ptr %1, align 8, !dbg !3162, !tbaa !2178
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !722, metadata !DIExpression()), !dbg !3161
  %7 = ashr i64 %6, 1, !dbg !3163
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3163
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3163
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !723, metadata !DIExpression()), !dbg !3161
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !723, metadata !DIExpression()), !dbg !3161
  %12 = icmp sgt i64 %3, -1, !dbg !3166
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3168
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !723, metadata !DIExpression()), !dbg !3161
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3169
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3169
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !724, metadata !DIExpression()), !dbg !3161
  %18 = icmp slt i64 %17, 128, !dbg !3169
  %19 = select i1 %18, i64 128, i64 0, !dbg !3169
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !725, metadata !DIExpression()), !dbg !3161
  %21 = icmp eq i64 %20, 0, !dbg !3170
  br i1 %21, label %26, label %22, !dbg !3172

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !723, metadata !DIExpression()), !dbg !3161
  %24 = srem i64 %20, %4, !dbg !3175
  %25 = sub nsw i64 %20, %24, !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !724, metadata !DIExpression()), !dbg !3161
  br label %26, !dbg !3177

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3161
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !724, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !723, metadata !DIExpression()), !dbg !3161
  %29 = icmp eq ptr %0, null, !dbg !3178
  br i1 %29, label %30, label %31, !dbg !3180

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3181, !tbaa !2178
  br label %31, !dbg !3182

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3183
  %33 = icmp slt i64 %32, %2, !dbg !3185
  br i1 %33, label %34, label %46, !dbg !3186

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3187
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3187
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !723, metadata !DIExpression()), !dbg !3161
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3188
  br i1 %40, label %45, label %41, !dbg !3188

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3189
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3189
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !724, metadata !DIExpression()), !dbg !3161
  br i1 %43, label %45, label %46, !dbg !3190

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3191
  unreachable, !dbg !3191

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3161
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !724, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !723, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr %0, metadata !3007, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i64 %48, metadata !3008, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata ptr %0, metadata !3010, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %48, metadata !3014, metadata !DIExpression()), !dbg !3194
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3196
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3197
  call void @llvm.dbg.value(metadata ptr %50, metadata !2935, metadata !DIExpression()), !dbg !3198
  %51 = icmp eq ptr %50, null, !dbg !3200
  br i1 %51, label %52, label %53, !dbg !3201

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3202
  unreachable, !dbg !3202

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !717, metadata !DIExpression()), !dbg !3161
  store i64 %47, ptr %1, align 8, !dbg !3203, !tbaa !2178
  ret ptr %50, !dbg !3204
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3205 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %0, metadata !3209, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 1, metadata !3212, metadata !DIExpression()), !dbg !3213
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %2, metadata !2935, metadata !DIExpression()), !dbg !3216
  %3 = icmp eq ptr %2, null, !dbg !3218
  br i1 %3, label %4, label %5, !dbg !3219

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3220
  unreachable, !dbg !3220

5:                                                ; preds = %1
  ret ptr %2, !dbg !3221
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3222 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3210 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3209, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3212, metadata !DIExpression()), !dbg !3223
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3224
  call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !3225
  %4 = icmp eq ptr %3, null, !dbg !3227
  br i1 %4, label %5, label %6, !dbg !3228

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3229
  unreachable, !dbg !3229

6:                                                ; preds = %2
  ret ptr %3, !dbg !3230
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3231 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3233, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %0, metadata !3235, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 1, metadata !3238, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 1, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 1, metadata !3244, metadata !DIExpression()), !dbg !3245
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3247
  call void @llvm.dbg.value(metadata ptr %2, metadata !2935, metadata !DIExpression()), !dbg !3248
  %3 = icmp eq ptr %2, null, !dbg !3250
  br i1 %3, label %4, label %5, !dbg !3251

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3252
  unreachable, !dbg !3252

5:                                                ; preds = %1
  ret ptr %2, !dbg !3253
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3236 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3235, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3238, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()), !dbg !3255
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !3258
  %4 = icmp eq ptr %3, null, !dbg !3260
  br i1 %4, label %5, label %6, !dbg !3261

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3262
  unreachable, !dbg !3262

6:                                                ; preds = %2
  ret ptr %3, !dbg !3263
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3264 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3268, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %1, metadata !2959, metadata !DIExpression()), !dbg !3271
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3273
  call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !3274
  %4 = icmp eq ptr %3, null, !dbg !3276
  br i1 %4, label %5, label %6, !dbg !3277

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3278
  unreachable, !dbg !3278

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3279, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata ptr %0, metadata !3285, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %1, metadata !3286, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3289
  ret ptr %3, !dbg !3290
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3291 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3295, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %1, metadata !2973, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()), !dbg !3300
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3302
  call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !3303
  %4 = icmp eq ptr %3, null, !dbg !3305
  br i1 %4, label %5, label %6, !dbg !3306

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3307
  unreachable, !dbg !3307

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3279, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata ptr %0, metadata !3285, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3286, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3310
  ret ptr %3, !dbg !3311
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3312 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()), !dbg !3319
  %3 = add nsw i64 %1, 1, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %3, metadata !2973, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %3, metadata !2975, metadata !DIExpression()), !dbg !3323
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3325
  call void @llvm.dbg.value(metadata ptr %4, metadata !2935, metadata !DIExpression()), !dbg !3326
  %5 = icmp eq ptr %4, null, !dbg !3328
  br i1 %5, label %6, label %7, !dbg !3329

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3330
  unreachable, !dbg !3330

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3318, metadata !DIExpression()), !dbg !3319
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3331
  store i8 0, ptr %8, align 1, !dbg !3332, !tbaa !837
  call void @llvm.dbg.value(metadata ptr %4, metadata !3279, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata ptr %0, metadata !3285, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %1, metadata !3286, metadata !DIExpression()), !dbg !3333
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3335
  ret ptr %4, !dbg !3336
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3337 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3339, metadata !DIExpression()), !dbg !3340
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3341
  %3 = add i64 %2, 1, !dbg !3342
  call void @llvm.dbg.value(metadata ptr %0, metadata !3268, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %3, metadata !3269, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %3, metadata !2959, metadata !DIExpression()), !dbg !3345
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3347
  call void @llvm.dbg.value(metadata ptr %4, metadata !2935, metadata !DIExpression()), !dbg !3348
  %5 = icmp eq ptr %4, null, !dbg !3350
  br i1 %5, label %6, label %7, !dbg !3351

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3352
  unreachable, !dbg !3352

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3279, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata ptr %0, metadata !3285, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %3, metadata !3286, metadata !DIExpression()), !dbg !3353
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3355
  ret ptr %4, !dbg !3356
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3357 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3362, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3359, metadata !DIExpression()), !dbg !3363
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.109, ptr noundef nonnull @.str.2.110, i32 noundef 5) #37, !dbg !3362
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef %2) #37, !dbg !3362
  %3 = icmp eq i32 %1, 0, !dbg !3362
  tail call void @llvm.assume(i1 %3), !dbg !3362
  tail call void @abort() #39, !dbg !3364
  unreachable, !dbg !3364
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3365 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3403, metadata !DIExpression()), !dbg !3408
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3409
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3404, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3408
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3413
  %3 = load i32, ptr %0, align 8, !dbg !3415, !tbaa !3416
  %4 = and i32 %3, 32, !dbg !3417
  %5 = icmp eq i32 %4, 0, !dbg !3417
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3408
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3418
  %7 = icmp eq i32 %6, 0, !dbg !3419
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3407, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3408
  br i1 %5, label %8, label %18, !dbg !3420

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3422
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3404, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3408
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3423
  %11 = xor i1 %7, true, !dbg !3423
  %12 = sext i1 %11 to i32, !dbg !3423
  br i1 %10, label %21, label %13, !dbg !3423

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3424
  %15 = load i32, ptr %14, align 4, !dbg !3424, !tbaa !828
  %16 = icmp ne i32 %15, 9, !dbg !3425
  %17 = sext i1 %16 to i32, !dbg !3426
  br label %21, !dbg !3426

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3427

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3429
  store i32 0, ptr %20, align 4, !dbg !3431, !tbaa !828
  br label %21, !dbg !3429

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3408
  ret i32 %22, !dbg !3432
}

; Function Attrs: nounwind
declare !dbg !3433 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3437 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3475, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3476, metadata !DIExpression()), !dbg !3479
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3480
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3477, metadata !DIExpression()), !dbg !3479
  %3 = icmp slt i32 %2, 0, !dbg !3481
  br i1 %3, label %4, label %6, !dbg !3483

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3484
  br label %24, !dbg !3485

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3486
  %8 = icmp eq i32 %7, 0, !dbg !3486
  br i1 %8, label %13, label %9, !dbg !3488

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3489
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3490
  %12 = icmp eq i64 %11, -1, !dbg !3491
  br i1 %12, label %16, label %13, !dbg !3492

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3493
  %15 = icmp eq i32 %14, 0, !dbg !3493
  br i1 %15, label %16, label %18, !dbg !3494

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3476, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3478, metadata !DIExpression()), !dbg !3479
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3495
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3478, metadata !DIExpression()), !dbg !3479
  br label %24, !dbg !3496

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3497
  %20 = load i32, ptr %19, align 4, !dbg !3497, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3476, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3478, metadata !DIExpression()), !dbg !3479
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3495
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3478, metadata !DIExpression()), !dbg !3479
  %22 = icmp eq i32 %20, 0, !dbg !3498
  br i1 %22, label %24, label %23, !dbg !3496

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3500, !tbaa !828
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3478, metadata !DIExpression()), !dbg !3479
  br label %24, !dbg !3502

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3479
  ret i32 %25, !dbg !3503
}

; Function Attrs: nofree nounwind
declare !dbg !3504 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3505 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3506 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3507 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3510 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3548, metadata !DIExpression()), !dbg !3549
  %2 = icmp eq ptr %0, null, !dbg !3550
  br i1 %2, label %6, label %3, !dbg !3552

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3553
  %5 = icmp eq i32 %4, 0, !dbg !3553
  br i1 %5, label %6, label %8, !dbg !3554

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3555
  br label %16, !dbg !3556

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3562
  %9 = load i32, ptr %0, align 8, !dbg !3564, !tbaa !3416
  %10 = and i32 %9, 256, !dbg !3566
  %11 = icmp eq i32 %10, 0, !dbg !3566
  br i1 %11, label %14, label %12, !dbg !3567

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3568
  br label %14, !dbg !3568

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3569
  br label %16, !dbg !3570

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3549
  ret i32 %17, !dbg !3571
}

; Function Attrs: nofree nounwind
declare !dbg !3572 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3573 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3612, metadata !DIExpression()), !dbg !3618
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3613, metadata !DIExpression()), !dbg !3618
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3614, metadata !DIExpression()), !dbg !3618
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3619
  %5 = load ptr, ptr %4, align 8, !dbg !3619, !tbaa !3620
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3621
  %7 = load ptr, ptr %6, align 8, !dbg !3621, !tbaa !3622
  %8 = icmp eq ptr %5, %7, !dbg !3623
  br i1 %8, label %9, label %27, !dbg !3624

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3625
  %11 = load ptr, ptr %10, align 8, !dbg !3625, !tbaa !1239
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3626
  %13 = load ptr, ptr %12, align 8, !dbg !3626, !tbaa !3627
  %14 = icmp eq ptr %11, %13, !dbg !3628
  br i1 %14, label %15, label %27, !dbg !3629

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3630
  %17 = load ptr, ptr %16, align 8, !dbg !3630, !tbaa !3631
  %18 = icmp eq ptr %17, null, !dbg !3632
  br i1 %18, label %19, label %27, !dbg !3633

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3634
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3615, metadata !DIExpression()), !dbg !3636
  %22 = icmp eq i64 %21, -1, !dbg !3637
  br i1 %22, label %29, label %23, !dbg !3639

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3640, !tbaa !3416
  %25 = and i32 %24, -17, !dbg !3640
  store i32 %25, ptr %0, align 8, !dbg !3640, !tbaa !3416
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3641
  store i64 %21, ptr %26, align 8, !dbg !3642, !tbaa !3643
  br label %29, !dbg !3644

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3645
  br label %29, !dbg !3646

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3618
  ret i32 %30, !dbg !3647
}

; Function Attrs: nofree nounwind
declare !dbg !3648 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3651 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3656, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3657, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3658, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3659, metadata !DIExpression()), !dbg !3661
  %5 = icmp eq ptr %1, null, !dbg !3662
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3664
  %7 = select i1 %5, ptr @.str.122, ptr %1, !dbg !3664
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3658, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3657, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3656, metadata !DIExpression()), !dbg !3661
  %9 = icmp eq ptr %3, null, !dbg !3665
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3667
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3659, metadata !DIExpression()), !dbg !3661
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3668
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3660, metadata !DIExpression()), !dbg !3661
  %12 = icmp ult i64 %11, -3, !dbg !3669
  br i1 %12, label %13, label %17, !dbg !3671

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3672
  %15 = icmp eq i32 %14, 0, !dbg !3672
  br i1 %15, label %16, label %29, !dbg !3673

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3674, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %10, metadata !3681, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3684, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 8, metadata !3685, metadata !DIExpression()), !dbg !3686
  store i64 0, ptr %10, align 1, !dbg !3688
  br label %29, !dbg !3689

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3690
  br i1 %18, label %19, label %20, !dbg !3692

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3693
  unreachable, !dbg !3693

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3694

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3696
  br i1 %23, label %29, label %24, !dbg !3697

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3698
  br i1 %25, label %29, label %26, !dbg !3701

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3702, !tbaa !837
  %28 = zext i8 %27 to i32, !dbg !3703
  store i32 %28, ptr %6, align 4, !dbg !3704, !tbaa !828
  br label %29, !dbg !3705

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3661
  ret i64 %30, !dbg !3706
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3707 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3713 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3716, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3717, metadata !DIExpression()), !dbg !3719
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3720
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3720
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3718, metadata !DIExpression()), !dbg !3719
  br i1 %5, label %6, label %8, !dbg !3722

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3723
  store i32 12, ptr %7, align 4, !dbg !3725, !tbaa !828
  br label %12, !dbg !3726

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3720
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata ptr %0, metadata !3727, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i64 %9, metadata !3730, metadata !DIExpression()), !dbg !3731
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3733
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3734
  br label %12, !dbg !3735

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3719
  ret ptr %13, !dbg !3736
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3737 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3746
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3742, metadata !DIExpression(), metadata !3746, metadata ptr %2, metadata !DIExpression()), !dbg !3747
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3741, metadata !DIExpression()), !dbg !3747
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3748
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3749
  %4 = icmp eq i32 %3, 0, !dbg !3749
  br i1 %4, label %5, label %12, !dbg !3751

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3752, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata !795, metadata !3755, metadata !DIExpression()), !dbg !3756
  %6 = load i16, ptr %2, align 16, !dbg !3759
  %7 = icmp eq i16 %6, 67, !dbg !3759
  br i1 %7, label %11, label %8, !dbg !3760

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3752, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata ptr @.str.1.127, metadata !3755, metadata !DIExpression()), !dbg !3761
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.127, i64 6), !dbg !3763
  %10 = icmp eq i32 %9, 0, !dbg !3764
  br i1 %10, label %11, label %12, !dbg !3765

11:                                               ; preds = %8, %5
  br label %12, !dbg !3766

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3747
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3767
  ret i1 %13, !dbg !3767
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3768 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3775
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3773, metadata !DIExpression()), !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3774, metadata !DIExpression()), !dbg !3775
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3776
  ret i32 %4, !dbg !3777
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3778 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3783
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3784
  ret ptr %2, !dbg !3785
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3786 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()), !dbg !3790
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3791
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3789, metadata !DIExpression()), !dbg !3790
  ret ptr %2, !dbg !3792
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3793 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3795, metadata !DIExpression()), !dbg !3802
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3796, metadata !DIExpression()), !dbg !3802
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3797, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()), !dbg !3803
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3805
  call void @llvm.dbg.value(metadata ptr %4, metadata !3789, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3798, metadata !DIExpression()), !dbg !3802
  %5 = icmp eq ptr %4, null, !dbg !3806
  br i1 %5, label %6, label %9, !dbg !3807

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3808
  br i1 %7, label %19, label %8, !dbg !3811

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3812, !tbaa !837
  br label %19, !dbg !3813

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3814
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3799, metadata !DIExpression()), !dbg !3815
  %11 = icmp ult i64 %10, %2, !dbg !3816
  br i1 %11, label %12, label %14, !dbg !3818

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3819
  call void @llvm.dbg.value(metadata ptr %1, metadata !3821, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata ptr %4, metadata !3824, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i64 %13, metadata !3825, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3828
  br label %19, !dbg !3829

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3830
  br i1 %15, label %19, label %16, !dbg !3833

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3834
  call void @llvm.dbg.value(metadata ptr %1, metadata !3821, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata ptr %4, metadata !3824, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 %17, metadata !3825, metadata !DIExpression()), !dbg !3836
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3838
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3839
  store i8 0, ptr %18, align 1, !dbg !3840, !tbaa !837
  br label %19, !dbg !3841

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3842
  ret i32 %20, !dbg !3843
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
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !337, !341, !356, !651, !683, !407, !421, !472, !685, !643, !692, !727, !729, !731, !733, !735, !667, !737, !739, !743, !745}
!llvm.ident = !{!747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747, !747}
!llvm.module.flags = !{!748, !749, !750, !751, !752, !753, !754}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tty.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19d46bb11b698354da53d591921bc5e9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 67)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 76)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 50)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 62)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 1)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 10)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 24)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 2)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "longopts", scope: !59, file: !2, line: 49, type: !321, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/tty.o -MD -MP -MF src/.deps/tty.Tpo -c src/tty.c -o src/.tty.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !89, globals: !99, splitDebugInlining: false, nameTableKind: None)
!60 = !{!61, !68, !74}
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 33, baseType: !62, size: 32, elements: !63)
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "TTY_STDIN_NOTTY", value: 1)
!65 = !DIEnumerator(name: "TTY_USAGE", value: 2)
!66 = !DIEnumerator(name: "TTY_WRITE_ERROR", value: 3)
!67 = !DIEnumerator(name: "TTY_TTYNAME_FAILURE", value: 4)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 337, baseType: !70, size: 32, elements: !71)
!69 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!73 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 46, baseType: !62, size: 32, elements: !76)
!75 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!77 = !DIEnumerator(name: "_ISupper", value: 256)
!78 = !DIEnumerator(name: "_ISlower", value: 512)
!79 = !DIEnumerator(name: "_ISalpha", value: 1024)
!80 = !DIEnumerator(name: "_ISdigit", value: 2048)
!81 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!82 = !DIEnumerator(name: "_ISspace", value: 8192)
!83 = !DIEnumerator(name: "_ISprint", value: 16384)
!84 = !DIEnumerator(name: "_ISgraph", value: 32768)
!85 = !DIEnumerator(name: "_ISblank", value: 1)
!86 = !DIEnumerator(name: "_IScntrl", value: 2)
!87 = !DIEnumerator(name: "_ISpunct", value: 4)
!88 = !DIEnumerator(name: "_ISalnum", value: 8)
!89 = !{!90, !91, !70, !92, !93, !96, !98}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 18, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!95 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !100, !105, !110, !115, !117, !119, !122, !204, !209, !211, !213, !218, !220, !222, !224, !229, !231, !233, !235, !240, !245, !247, !249, !251, !253, !255, !257, !259, !264, !269, !274, !276, !278, !280, !282, !284, !289, !291, !293, !298, !303, !308, !313, !315, !317, !319, !57}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 14)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 16)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 17)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !102, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !44, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "silent", scope: !59, file: !2, line: 47, type: !121, isLocal: true, isDefinition: true)
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !124, file: !69, line: 575, type: !70, isLocal: true, isDefinition: true)
!124 = distinct !DISubprogram(name: "oputs_", scope: !69, file: !69, line: 573, type: !125, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !127)
!125 = !DISubroutineType(cc: DW_CC_nocall, types: !126)
!126 = !{null, !96, !96}
!127 = !{!128, !129, !130, !133, !134, !135, !136, !140, !141, !142, !143, !145, !198, !199, !200, !202, !203}
!128 = !DILocalVariable(name: "program", arg: 1, scope: !124, file: !69, line: 573, type: !96)
!129 = !DILocalVariable(name: "option", arg: 2, scope: !124, file: !69, line: 573, type: !96)
!130 = !DILocalVariable(name: "term", scope: !131, file: !69, line: 585, type: !96)
!131 = distinct !DILexicalBlock(scope: !132, file: !69, line: 582, column: 5)
!132 = distinct !DILexicalBlock(scope: !124, file: !69, line: 581, column: 7)
!133 = !DILocalVariable(name: "double_space", scope: !124, file: !69, line: 594, type: !121)
!134 = !DILocalVariable(name: "first_word", scope: !124, file: !69, line: 595, type: !96)
!135 = !DILocalVariable(name: "option_text", scope: !124, file: !69, line: 596, type: !96)
!136 = !DILocalVariable(name: "s", scope: !137, file: !69, line: 608, type: !96)
!137 = distinct !DILexicalBlock(scope: !138, file: !69, line: 605, column: 5)
!138 = distinct !DILexicalBlock(scope: !139, file: !69, line: 604, column: 12)
!139 = distinct !DILexicalBlock(scope: !124, file: !69, line: 597, column: 7)
!140 = !DILocalVariable(name: "spaces", scope: !137, file: !69, line: 609, type: !93)
!141 = !DILocalVariable(name: "anchor_len", scope: !124, file: !69, line: 620, type: !93)
!142 = !DILocalVariable(name: "desc_text", scope: !124, file: !69, line: 625, type: !96)
!143 = !DILocalVariable(name: "__ptr", scope: !144, file: !69, line: 644, type: !96)
!144 = distinct !DILexicalBlock(scope: !124, file: !69, line: 644, column: 3)
!145 = !DILocalVariable(name: "__stream", scope: !144, file: !69, line: 644, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !151)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !167, !169, !170, !171, !175, !176, !178, !179, !182, !184, !187, !190, !191, !192, !193, !194}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !149, file: !150, line: 51, baseType: !70, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !149, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !149, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !149, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !149, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !149, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !149, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !149, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !149, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !149, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !149, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !149, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !149, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !150, line: 36, flags: DIFlagFwdDecl)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !149, file: !150, line: 70, baseType: !168, size: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !149, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !149, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !149, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !173, line: 152, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!174 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !149, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !149, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!177 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !149, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !149, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !150, line: 43, baseType: null)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !149, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !173, line: 153, baseType: !174)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !149, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !150, line: 37, flags: DIFlagFwdDecl)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !149, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !150, line: 38, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !149, file: !150, line: 93, baseType: !168, size: 64, offset: 1344)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !149, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !149, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !149, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !149, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 20)
!198 = !DILocalVariable(name: "__cnt", scope: !144, file: !69, line: 644, type: !93)
!199 = !DILocalVariable(name: "url_program", scope: !124, file: !69, line: 648, type: !96)
!200 = !DILocalVariable(name: "__ptr", scope: !201, file: !69, line: 686, type: !96)
!201 = distinct !DILexicalBlock(scope: !124, file: !69, line: 686, column: 3)
!202 = !DILocalVariable(name: "__stream", scope: !201, file: !69, line: 686, type: !146)
!203 = !DILocalVariable(name: "__cnt", scope: !201, file: !69, line: 686, type: !93)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !69, line: 585, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 5)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !69, line: 586, type: !206, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !69, line: 595, type: !19, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !69, line: 620, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 6)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !54, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !206, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !19, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 3)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !69, line: 650, type: !206, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !215, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !215, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !69, line: 652, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 7)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !69, line: 653, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 8)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !69, line: 654, type: !44, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !69, line: 655, type: !44, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !69, line: 656, type: !44, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !69, line: 657, type: !44, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !69, line: 663, type: !237, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !69, line: 664, type: !44, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !112, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !261, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 40)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 15)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 61)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !69, line: 679, type: !226, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !69, line: 683, type: !206, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !69, line: 688, type: !206, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !69, line: 691, type: !242, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !69, line: 839, type: !107, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !69, line: 840, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 22)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !69, line: 841, type: !266, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !69, line: 862, type: !19, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !69, line: 868, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 71)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !69, line: 875, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 27)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 51)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 12)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !237, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !215, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !206, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !242, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 1280, elements: !207)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !324, line: 50, size: 256, elements: !325)
!324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!325 = !{!326, !327, !328, !330}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !324, line: 52, baseType: !96, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !323, file: !324, line: 55, baseType: !70, size: 32, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !323, file: !324, line: 56, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !323, file: !324, line: 57, baseType: !70, size: 32, offset: 192)
!331 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !334, line: 3, type: !266, isLocal: true, isDefinition: true)
!334 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "Version", scope: !337, file: !334, line: 3, type: !96, isLocal: false, isDefinition: true)
!337 = distinct !DICompileUnit(language: DW_LANG_C11, file: !334, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !338, splitDebugInlining: false, nameTableKind: None)
!338 = !{!332, !335}
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "file_name", scope: !341, file: !342, line: 45, type: !96, isLocal: true, isDefinition: true)
!341 = distinct !DICompileUnit(language: DW_LANG_C11, file: !342, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !343, splitDebugInlining: false, nameTableKind: None)
!342 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!343 = !{!344, !346, !348, !350, !339, !352}
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !342, line: 121, type: !237, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !342, line: 121, type: !310, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !342, line: 123, type: !237, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !342, line: 126, type: !226, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !341, file: !342, line: 55, type: !121, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !356, file: !357, line: 66, type: !402, isLocal: false, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C11, file: !357, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !358, globals: !359, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!358 = !{!91, !98}
!359 = !{!360, !362, !381, !383, !385, !387, !354, !389, !391, !393, !395, !400}
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !357, line: 272, type: !206, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "old_file_name", scope: !364, file: !357, line: 304, type: !96, isLocal: true, isDefinition: true)
!364 = distinct !DISubprogram(name: "verror_at_line", scope: !357, file: !357, line: 298, type: !365, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !374)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !70, !70, !96, !62, !96, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !369)
!369 = !{!370, !371, !372, !373}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !368, file: !357, baseType: !62, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !368, file: !357, baseType: !62, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !368, file: !357, baseType: !91, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !368, file: !357, baseType: !91, size: 64, offset: 128)
!374 = !{!375, !376, !377, !378, !379, !380}
!375 = !DILocalVariable(name: "status", arg: 1, scope: !364, file: !357, line: 298, type: !70)
!376 = !DILocalVariable(name: "errnum", arg: 2, scope: !364, file: !357, line: 298, type: !70)
!377 = !DILocalVariable(name: "file_name", arg: 3, scope: !364, file: !357, line: 298, type: !96)
!378 = !DILocalVariable(name: "line_number", arg: 4, scope: !364, file: !357, line: 298, type: !62)
!379 = !DILocalVariable(name: "message", arg: 5, scope: !364, file: !357, line: 298, type: !96)
!380 = !DILocalVariable(name: "args", arg: 6, scope: !364, file: !357, line: 298, type: !367)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "old_line_number", scope: !364, file: !357, line: 305, type: !62, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !357, line: 338, type: !19, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !357, line: 346, type: !242, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !357, line: 346, type: !54, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "error_message_count", scope: !356, file: !357, line: 69, type: !62, isLocal: false, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !356, file: !357, line: 295, type: !70, isLocal: false, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !357, line: 208, type: !237, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !357, line: 208, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 21)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !357, line: 214, type: !206, isLocal: true, isDefinition: true)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null}
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "program_name", scope: !407, file: !408, line: 31, type: !96, isLocal: false, isDefinition: true)
!407 = distinct !DICompileUnit(language: DW_LANG_C11, file: !408, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !409, globals: !410, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!409 = !{!91, !90}
!410 = !{!405, !411, !413}
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !408, line: 46, type: !242, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !408, line: 49, type: !19, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "utf07FF", scope: !417, file: !418, line: 46, type: !445, isLocal: true, isDefinition: true)
!417 = distinct !DISubprogram(name: "proper_name_lite", scope: !418, file: !418, line: 38, type: !419, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !423)
!418 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!419 = !DISubroutineType(types: !420)
!420 = !{!96, !96, !96}
!421 = distinct !DICompileUnit(language: DW_LANG_C11, file: !418, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !422, splitDebugInlining: false, nameTableKind: None)
!422 = !{!415}
!423 = !{!424, !425, !426, !427, !432}
!424 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !417, file: !418, line: 38, type: !96)
!425 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !417, file: !418, line: 38, type: !96)
!426 = !DILocalVariable(name: "translation", scope: !417, file: !418, line: 40, type: !96)
!427 = !DILocalVariable(name: "w", scope: !417, file: !418, line: 47, type: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !429, line: 37, baseType: !430)
!429 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !173, line: 57, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !62)
!432 = !DILocalVariable(name: "mbs", scope: !417, file: !418, line: 48, type: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !434, line: 6, baseType: !435)
!434 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !436, line: 21, baseType: !437)
!436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 13, size: 64, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !437, file: !436, line: 15, baseType: !70, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !437, file: !436, line: 20, baseType: !441, size: 32, offset: 32)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !436, line: 16, size: 32, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !441, file: !436, line: 18, baseType: !62, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !441, file: !436, line: 19, baseType: !19, size: 32)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !55)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !448, line: 78, type: !242, isLocal: true, isDefinition: true)
!448 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !448, line: 79, type: !215, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !448, line: 80, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 13)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !448, line: 81, type: !453, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !448, line: 82, type: !195, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !448, line: 83, type: !54, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !448, line: 84, type: !242, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !448, line: 85, type: !237, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !448, line: 86, type: !237, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !448, line: 87, type: !242, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !472, file: !448, line: 76, type: !558, isLocal: false, isDefinition: true)
!472 = distinct !DICompileUnit(language: DW_LANG_C11, file: !448, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !473, retainedTypes: !493, globals: !494, splitDebugInlining: false, nameTableKind: None)
!473 = !{!474, !488, !74}
!474 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !475, line: 42, baseType: !62, size: 32, elements: !476)
!475 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!477 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!478 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!479 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!480 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!481 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!482 = !DIEnumerator(name: "c_quoting_style", value: 5)
!483 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!484 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!485 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!486 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!487 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!488 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !475, line: 254, baseType: !62, size: 32, elements: !489)
!489 = !{!490, !491, !492}
!490 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!491 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!492 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!493 = !{!91, !70, !92, !93}
!494 = !{!446, !449, !451, !456, !458, !460, !462, !464, !466, !468, !470, !495, !499, !509, !511, !516, !518, !520, !522, !524, !547, !554, !556}
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !472, file: !448, line: 92, type: !497, isLocal: false, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 320, elements: !45)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !472, file: !448, line: 1040, type: !501, isLocal: false, isDefinition: true)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !448, line: 56, size: 448, elements: !502)
!502 = !{!503, !504, !505, !507, !508}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !501, file: !448, line: 59, baseType: !474, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !448, line: 62, baseType: !70, size: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !501, file: !448, line: 66, baseType: !506, size: 256, offset: 64)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !243)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !501, file: !448, line: 69, baseType: !96, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !501, file: !448, line: 72, baseType: !96, size: 64, offset: 384)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !472, file: !448, line: 107, type: !501, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "slot0", scope: !472, file: !448, line: 831, type: !513, isLocal: true, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 256)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !448, line: 321, type: !54, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !448, line: 357, type: !54, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !448, line: 358, type: !54, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !448, line: 199, type: !237, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "quote", scope: !526, file: !448, line: 228, type: !545, isLocal: true, isDefinition: true)
!526 = distinct !DISubprogram(name: "gettext_quote", scope: !448, file: !448, line: 197, type: !527, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!96, !96, !474}
!529 = !{!530, !531, !532, !533, !534}
!530 = !DILocalVariable(name: "msgid", arg: 1, scope: !526, file: !448, line: 197, type: !96)
!531 = !DILocalVariable(name: "s", arg: 2, scope: !526, file: !448, line: 197, type: !474)
!532 = !DILocalVariable(name: "translation", scope: !526, file: !448, line: 199, type: !96)
!533 = !DILocalVariable(name: "w", scope: !526, file: !448, line: 229, type: !428)
!534 = !DILocalVariable(name: "mbs", scope: !526, file: !448, line: 230, type: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !434, line: 6, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !436, line: 21, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 13, size: 64, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !537, file: !436, line: 15, baseType: !70, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !537, file: !436, line: 20, baseType: !541, size: 32, offset: 32)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !537, file: !436, line: 16, size: 32, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !541, file: !436, line: 18, baseType: !62, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !541, file: !436, line: 19, baseType: !19, size: 32)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !546)
!546 = !{!56, !21}
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "slotvec", scope: !472, file: !448, line: 834, type: !549, isLocal: true, isDefinition: true)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !448, line: 823, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !550, file: !448, line: 825, baseType: !93, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !550, file: !448, line: 826, baseType: !90, size: 64, offset: 64)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "nslots", scope: !472, file: !448, line: 832, type: !70, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "slotvec0", scope: !472, file: !448, line: 833, type: !550, isLocal: true, isDefinition: true)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 704, elements: !560)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!560 = !{!561}
!561 = !DISubrange(count: 11)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !564, line: 67, type: !310, isLocal: true, isDefinition: true)
!564 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !564, line: 69, type: !237, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !564, line: 83, type: !237, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !564, line: 83, type: !19, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !564, line: 85, type: !54, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !564, line: 88, type: !575, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 171)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !564, line: 88, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 34)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !564, line: 105, type: !107, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !564, line: 109, type: !9, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !564, line: 113, type: !589, isLocal: true, isDefinition: true)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 28)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !564, line: 120, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 32)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !564, line: 127, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 36)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !564, line: 134, type: !261, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !564, line: 142, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 44)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !564, line: 150, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 48)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !564, line: 159, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 52)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !564, line: 170, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 60)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !564, line: 248, type: !195, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !564, line: 248, type: !286, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !564, line: 254, type: !195, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !564, line: 254, type: !102, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !564, line: 254, type: !261, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !564, line: 259, type: !3, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !564, line: 259, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 29)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !643, file: !644, line: 26, type: !646, isLocal: false, isDefinition: true)
!643 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !645, splitDebugInlining: false, nameTableKind: None)
!644 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!645 = !{!641}
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 376, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 47)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "exit_failure", scope: !651, file: !652, line: 24, type: !654, isLocal: false, isDefinition: true)
!651 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !653, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!653 = !{!649}
!654 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !657, line: 34, type: !226, isLocal: true, isDefinition: true)
!657 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !657, line: 34, type: !237, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !657, line: 34, type: !112, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !664, line: 108, type: !39, isLocal: true, isDefinition: true)
!664 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "internal_state", scope: !667, file: !664, line: 97, type: !670, isLocal: true, isDefinition: true)
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !664, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !668, globals: !669, splitDebugInlining: false, nameTableKind: None)
!668 = !{!91, !93, !98}
!669 = !{!662, !665}
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !434, line: 6, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !436, line: 21, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 13, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !672, file: !436, line: 15, baseType: !70, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !672, file: !436, line: 20, baseType: !676, size: 32, offset: 32)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !436, line: 16, size: 32, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !676, file: !436, line: 18, baseType: !62, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !676, file: !436, line: 19, baseType: !19, size: 32)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !682, line: 35, type: !215, isLocal: true, isDefinition: true)
!682 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!683 = distinct !DICompileUnit(language: DW_LANG_C11, file: !684, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!685 = distinct !DICompileUnit(language: DW_LANG_C11, file: !564, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !686, retainedTypes: !690, globals: !691, splitDebugInlining: false, nameTableKind: None)
!686 = !{!687}
!687 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !564, line: 40, baseType: !62, size: 32, elements: !688)
!688 = !{!689}
!689 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!690 = !{!91}
!691 = !{!562, !565, !567, !569, !571, !573, !578, !583, !585, !587, !592, !597, !602, !604, !609, !614, !619, !624, !626, !628, !630, !632, !634, !636}
!692 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !694, retainedTypes: !726, splitDebugInlining: false, nameTableKind: None)
!693 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!694 = !{!695, !707}
!695 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !696, file: !693, line: 188, baseType: !62, size: 32, elements: !705)
!696 = distinct !DISubprogram(name: "x2nrealloc", scope: !693, file: !693, line: 176, type: !697, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !700)
!697 = !DISubroutineType(types: !698)
!698 = !{!91, !91, !699, !93}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!700 = !{!701, !702, !703, !704}
!701 = !DILocalVariable(name: "p", arg: 1, scope: !696, file: !693, line: 176, type: !91)
!702 = !DILocalVariable(name: "pn", arg: 2, scope: !696, file: !693, line: 176, type: !699)
!703 = !DILocalVariable(name: "s", arg: 3, scope: !696, file: !693, line: 176, type: !93)
!704 = !DILocalVariable(name: "n", scope: !696, file: !693, line: 178, type: !93)
!705 = !{!706}
!706 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!707 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !708, file: !693, line: 228, baseType: !62, size: 32, elements: !705)
!708 = distinct !DISubprogram(name: "xpalloc", scope: !693, file: !693, line: 223, type: !709, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !716)
!709 = !DISubroutineType(types: !710)
!710 = !{!91, !91, !711, !712, !714, !712}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !713, line: 130, baseType: !714)
!713 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !715, line: 18, baseType: !174)
!715 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725}
!717 = !DILocalVariable(name: "pa", arg: 1, scope: !708, file: !693, line: 223, type: !91)
!718 = !DILocalVariable(name: "pn", arg: 2, scope: !708, file: !693, line: 223, type: !711)
!719 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !708, file: !693, line: 223, type: !712)
!720 = !DILocalVariable(name: "n_max", arg: 4, scope: !708, file: !693, line: 223, type: !714)
!721 = !DILocalVariable(name: "s", arg: 5, scope: !708, file: !693, line: 223, type: !712)
!722 = !DILocalVariable(name: "n0", scope: !708, file: !693, line: 230, type: !712)
!723 = !DILocalVariable(name: "n", scope: !708, file: !693, line: 237, type: !712)
!724 = !DILocalVariable(name: "nbytes", scope: !708, file: !693, line: 248, type: !712)
!725 = !DILocalVariable(name: "adjusted_nbytes", scope: !708, file: !693, line: 252, type: !712)
!726 = !{!90, !91}
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !728, splitDebugInlining: false, nameTableKind: None)
!728 = !{!655, !658, !660}
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !690, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !690, splitDebugInlining: false, nameTableKind: None)
!736 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!737 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !690, splitDebugInlining: false, nameTableKind: None)
!738 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!739 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !740, splitDebugInlining: false, nameTableKind: None)
!740 = !{!741, !680}
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !682, line: 35, type: !54, isLocal: true, isDefinition: true)
!743 = distinct !DICompileUnit(language: DW_LANG_C11, file: !744, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!744 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!745 = distinct !DICompileUnit(language: DW_LANG_C11, file: !746, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !690, splitDebugInlining: false, nameTableKind: None)
!746 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!747 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!748 = !{i32 7, !"Dwarf Version", i32 5}
!749 = !{i32 2, !"Debug Info Version", i32 3}
!750 = !{i32 1, !"wchar_size", i32 4}
!751 = !{i32 8, !"PIC Level", i32 2}
!752 = !{i32 7, !"PIE Level", i32 2}
!753 = !{i32 7, !"uwtable", i32 2}
!754 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!755 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 59, type: !756, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !70}
!758 = !{!759}
!759 = !DILocalVariable(name: "status", arg: 1, scope: !755, file: !2, line: 59, type: !70)
!760 = !DILocation(line: 0, scope: !755)
!761 = !DILocation(line: 61, column: 14, scope: !762)
!762 = distinct !DILexicalBlock(scope: !755, file: !2, line: 61, column: 7)
!763 = !DILocation(line: 61, column: 7, scope: !755)
!764 = !DILocation(line: 62, column: 5, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !2, line: 62, column: 5)
!766 = !{!767, !767, i64 0}
!767 = !{!"any pointer", !768, i64 0}
!768 = !{!"omnipotent char", !769, i64 0}
!769 = !{!"Simple C/C++ TBAA"}
!770 = !DILocation(line: 65, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !762, file: !2, line: 64, column: 5)
!772 = !DILocation(line: 66, column: 7, scope: !771)
!773 = !DILocation(line: 70, column: 7, scope: !771)
!774 = !DILocation(line: 74, column: 7, scope: !771)
!775 = !DILocation(line: 75, column: 7, scope: !771)
!776 = !DILocalVariable(name: "program", arg: 1, scope: !777, file: !69, line: 836, type: !96)
!777 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !778, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !96}
!780 = !{!776, !781, !788, !789, !791, !792}
!781 = !DILocalVariable(name: "infomap", scope: !777, file: !69, line: 838, type: !782)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 896, elements: !238)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !777, file: !69, line: 838, size: 128, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !784, file: !69, line: 838, baseType: !96, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !784, file: !69, line: 838, baseType: !96, size: 64, offset: 64)
!788 = !DILocalVariable(name: "node", scope: !777, file: !69, line: 848, type: !96)
!789 = !DILocalVariable(name: "map_prog", scope: !777, file: !69, line: 849, type: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!791 = !DILocalVariable(name: "lc_messages", scope: !777, file: !69, line: 861, type: !96)
!792 = !DILocalVariable(name: "url_program", scope: !777, file: !69, line: 874, type: !96)
!793 = !DILocation(line: 0, scope: !777, inlinedAt: !794)
!794 = distinct !DILocation(line: 76, column: 7, scope: !771)
!795 = !{}
!796 = !DILocation(line: 857, column: 3, scope: !777, inlinedAt: !794)
!797 = !DILocation(line: 861, column: 29, scope: !777, inlinedAt: !794)
!798 = !DILocation(line: 862, column: 7, scope: !799, inlinedAt: !794)
!799 = distinct !DILexicalBlock(scope: !777, file: !69, line: 862, column: 7)
!800 = !DILocation(line: 862, column: 19, scope: !799, inlinedAt: !794)
!801 = !DILocation(line: 862, column: 22, scope: !799, inlinedAt: !794)
!802 = !DILocation(line: 862, column: 7, scope: !777, inlinedAt: !794)
!803 = !DILocation(line: 868, column: 7, scope: !804, inlinedAt: !794)
!804 = distinct !DILexicalBlock(scope: !799, file: !69, line: 863, column: 5)
!805 = !DILocation(line: 870, column: 5, scope: !804, inlinedAt: !794)
!806 = !DILocation(line: 875, column: 3, scope: !777, inlinedAt: !794)
!807 = !DILocation(line: 877, column: 3, scope: !777, inlinedAt: !794)
!808 = !DILocation(line: 78, column: 3, scope: !755)
!809 = !DISubprogram(name: "dcgettext", scope: !810, file: !810, line: 51, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!811 = !DISubroutineType(types: !812)
!812 = !{!90, !96, !96, !70}
!813 = !DISubprogram(name: "__fprintf_chk", scope: !814, file: !814, line: 93, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!815 = !DISubroutineType(types: !816)
!816 = !{!70, !817, !70, !818, null}
!817 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!818 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!819 = !DISubprogram(name: "__printf_chk", scope: !814, file: !814, line: 95, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!820 = !DISubroutineType(types: !821)
!821 = !{!70, !70, !818, null}
!822 = !DISubprogram(name: "fputs_unlocked", scope: !823, file: !823, line: 691, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!823 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!824 = !DISubroutineType(types: !825)
!825 = !{!70, !818, !817}
!826 = !DILocation(line: 0, scope: !124)
!827 = !DILocation(line: 581, column: 7, scope: !132)
!828 = !{!829, !829, i64 0}
!829 = !{!"int", !768, i64 0}
!830 = !DILocation(line: 581, column: 19, scope: !132)
!831 = !DILocation(line: 581, column: 7, scope: !124)
!832 = !DILocation(line: 585, column: 26, scope: !131)
!833 = !DILocation(line: 0, scope: !131)
!834 = !DILocation(line: 586, column: 23, scope: !131)
!835 = !DILocation(line: 586, column: 28, scope: !131)
!836 = !DILocation(line: 586, column: 32, scope: !131)
!837 = !{!768, !768, i64 0}
!838 = !DILocation(line: 586, column: 38, scope: !131)
!839 = !DILocalVariable(name: "__s1", arg: 1, scope: !840, file: !841, line: 1359, type: !96)
!840 = distinct !DISubprogram(name: "streq", scope: !841, file: !841, line: 1359, type: !842, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !844)
!841 = !DIFile(filename: "./lib/string.h", directory: "/src")
!842 = !DISubroutineType(types: !843)
!843 = !{!121, !96, !96}
!844 = !{!839, !845}
!845 = !DILocalVariable(name: "__s2", arg: 2, scope: !840, file: !841, line: 1359, type: !96)
!846 = !DILocation(line: 0, scope: !840, inlinedAt: !847)
!847 = distinct !DILocation(line: 586, column: 41, scope: !131)
!848 = !DILocation(line: 1361, column: 11, scope: !840, inlinedAt: !847)
!849 = !DILocation(line: 1361, column: 10, scope: !840, inlinedAt: !847)
!850 = !DILocation(line: 586, column: 19, scope: !131)
!851 = !DILocation(line: 587, column: 5, scope: !131)
!852 = !DILocation(line: 588, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !124, file: !69, line: 588, column: 7)
!854 = !DILocation(line: 588, column: 7, scope: !124)
!855 = !DILocation(line: 590, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !853, file: !69, line: 589, column: 5)
!857 = !DILocation(line: 591, column: 7, scope: !856)
!858 = !DILocation(line: 595, column: 37, scope: !124)
!859 = !DILocation(line: 595, column: 35, scope: !124)
!860 = !DILocation(line: 596, column: 29, scope: !124)
!861 = !DILocation(line: 597, column: 8, scope: !139)
!862 = !DILocation(line: 597, column: 7, scope: !124)
!863 = !DILocation(line: 604, column: 24, scope: !138)
!864 = !DILocation(line: 604, column: 12, scope: !139)
!865 = !DILocation(line: 0, scope: !137)
!866 = !DILocation(line: 610, column: 16, scope: !137)
!867 = !DILocation(line: 610, column: 7, scope: !137)
!868 = !DILocation(line: 611, column: 21, scope: !137)
!869 = !{!870, !870, i64 0}
!870 = !{!"short", !768, i64 0}
!871 = !DILocation(line: 611, column: 19, scope: !137)
!872 = !DILocation(line: 611, column: 16, scope: !137)
!873 = !DILocation(line: 610, column: 30, scope: !137)
!874 = distinct !{!874, !867, !868, !875}
!875 = !{!"llvm.loop.mustprogress"}
!876 = !DILocation(line: 612, column: 18, scope: !877)
!877 = distinct !DILexicalBlock(scope: !137, file: !69, line: 612, column: 11)
!878 = !DILocation(line: 612, column: 11, scope: !137)
!879 = !DILocation(line: 620, column: 23, scope: !124)
!880 = !DILocation(line: 625, column: 39, scope: !124)
!881 = !DILocation(line: 626, column: 3, scope: !124)
!882 = !DILocation(line: 626, column: 10, scope: !124)
!883 = !DILocation(line: 626, column: 21, scope: !124)
!884 = !DILocation(line: 628, column: 44, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !69, line: 628, column: 11)
!886 = distinct !DILexicalBlock(scope: !124, file: !69, line: 627, column: 5)
!887 = !DILocation(line: 628, column: 32, scope: !885)
!888 = !DILocation(line: 628, column: 49, scope: !885)
!889 = !DILocation(line: 628, column: 11, scope: !886)
!890 = !DILocation(line: 630, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !69, line: 630, column: 11)
!892 = !DILocation(line: 630, column: 11, scope: !886)
!893 = !DILocation(line: 632, column: 26, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !69, line: 632, column: 15)
!895 = distinct !DILexicalBlock(scope: !891, file: !69, line: 631, column: 9)
!896 = !DILocation(line: 632, column: 34, scope: !894)
!897 = !DILocation(line: 632, column: 37, scope: !894)
!898 = !DILocation(line: 632, column: 15, scope: !895)
!899 = !DILocation(line: 636, column: 16, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !69, line: 636, column: 15)
!901 = !DILocation(line: 636, column: 29, scope: !900)
!902 = !DILocation(line: 640, column: 16, scope: !886)
!903 = distinct !{!903, !881, !904, !875}
!904 = !DILocation(line: 641, column: 5, scope: !124)
!905 = !DILocation(line: 644, column: 3, scope: !124)
!906 = !DILocation(line: 0, scope: !840, inlinedAt: !907)
!907 = distinct !DILocation(line: 648, column: 31, scope: !124)
!908 = !DILocation(line: 0, scope: !840, inlinedAt: !909)
!909 = distinct !DILocation(line: 649, column: 31, scope: !124)
!910 = !DILocation(line: 0, scope: !840, inlinedAt: !911)
!911 = distinct !DILocation(line: 650, column: 31, scope: !124)
!912 = !DILocation(line: 0, scope: !840, inlinedAt: !913)
!913 = distinct !DILocation(line: 651, column: 31, scope: !124)
!914 = !DILocation(line: 0, scope: !840, inlinedAt: !915)
!915 = distinct !DILocation(line: 652, column: 31, scope: !124)
!916 = !DILocation(line: 0, scope: !840, inlinedAt: !917)
!917 = distinct !DILocation(line: 653, column: 31, scope: !124)
!918 = !DILocation(line: 0, scope: !840, inlinedAt: !919)
!919 = distinct !DILocation(line: 654, column: 31, scope: !124)
!920 = !DILocation(line: 0, scope: !840, inlinedAt: !921)
!921 = distinct !DILocation(line: 655, column: 31, scope: !124)
!922 = !DILocation(line: 0, scope: !840, inlinedAt: !923)
!923 = distinct !DILocation(line: 656, column: 31, scope: !124)
!924 = !DILocation(line: 0, scope: !840, inlinedAt: !925)
!925 = distinct !DILocation(line: 657, column: 31, scope: !124)
!926 = !DILocation(line: 663, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !124, file: !69, line: 663, column: 7)
!928 = !DILocation(line: 664, column: 7, scope: !927)
!929 = !DILocation(line: 664, column: 10, scope: !927)
!930 = !DILocation(line: 663, column: 7, scope: !124)
!931 = !DILocation(line: 669, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !69, line: 665, column: 5)
!933 = !DILocation(line: 671, column: 5, scope: !932)
!934 = !DILocation(line: 676, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !927, file: !69, line: 673, column: 5)
!936 = !DILocation(line: 679, column: 3, scope: !124)
!937 = !DILocation(line: 683, column: 3, scope: !124)
!938 = !DILocation(line: 686, column: 3, scope: !124)
!939 = !DILocation(line: 688, column: 3, scope: !124)
!940 = !DILocation(line: 691, column: 3, scope: !124)
!941 = !DILocation(line: 695, column: 3, scope: !124)
!942 = !DILocation(line: 696, column: 1, scope: !124)
!943 = !DISubprogram(name: "setlocale", scope: !944, file: !944, line: 122, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!944 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!945 = !DISubroutineType(types: !946)
!946 = !{!90, !70, !96}
!947 = !DISubprogram(name: "strncmp", scope: !948, file: !948, line: 159, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!949 = !DISubroutineType(types: !950)
!950 = !{!70, !96, !96, !93}
!951 = !DISubprogram(name: "exit", scope: !952, file: !952, line: 624, type: !756, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!952 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!953 = !DISubprogram(name: "getenv", scope: !952, file: !952, line: 641, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DISubroutineType(types: !955)
!955 = !{!90, !96}
!956 = !DISubprogram(name: "strcmp", scope: !948, file: !948, line: 156, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DISubroutineType(types: !958)
!958 = !{!70, !96, !96}
!959 = !DISubprogram(name: "strspn", scope: !948, file: !948, line: 297, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DISubroutineType(types: !961)
!961 = !{!95, !96, !96}
!962 = !DISubprogram(name: "strchr", scope: !948, file: !948, line: 246, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DISubroutineType(types: !964)
!964 = !{!90, !96, !70}
!965 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !DISubroutineType(types: !967)
!967 = !{!968}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!971 = !DISubprogram(name: "strcspn", scope: !948, file: !948, line: 293, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!972 = !DISubprogram(name: "fwrite_unlocked", scope: !823, file: !823, line: 704, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubroutineType(types: !974)
!974 = !{!93, !975, !93, !93, !817}
!975 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!978 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !979, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !982)
!979 = !DISubroutineType(types: !980)
!980 = !{!70, !70, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!982 = !{!983, !984, !985, !986, !987, !988}
!983 = !DILocalVariable(name: "argc", arg: 1, scope: !978, file: !2, line: 82, type: !70)
!984 = !DILocalVariable(name: "argv", arg: 2, scope: !978, file: !2, line: 82, type: !981)
!985 = !DILocalVariable(name: "optc", scope: !978, file: !2, line: 84, type: !70)
!986 = !DILocalVariable(name: "status", scope: !978, file: !2, line: 121, type: !70)
!987 = !DILocalVariable(name: "tty", scope: !978, file: !2, line: 122, type: !96)
!988 = !DILocalVariable(name: "ttyname_err", scope: !989, file: !2, line: 128, type: !70)
!989 = distinct !DILexicalBlock(scope: !990, file: !2, line: 127, column: 5)
!990 = distinct !DILexicalBlock(scope: !978, file: !2, line: 124, column: 7)
!991 = !DILocation(line: 0, scope: !978)
!992 = !DILocation(line: 87, column: 21, scope: !978)
!993 = !DILocation(line: 87, column: 3, scope: !978)
!994 = !DILocation(line: 88, column: 3, scope: !978)
!995 = !DILocation(line: 89, column: 3, scope: !978)
!996 = !DILocation(line: 90, column: 3, scope: !978)
!997 = !DILocalVariable(name: "status", arg: 1, scope: !998, file: !69, line: 102, type: !70)
!998 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !69, file: !69, line: 102, type: !756, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !999)
!999 = !{!997}
!1000 = !DILocation(line: 0, scope: !998, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 92, column: 3, scope: !978)
!1002 = !DILocation(line: 105, column: 18, scope: !1003, inlinedAt: !1001)
!1003 = distinct !DILexicalBlock(scope: !998, file: !69, line: 104, column: 7)
!1004 = !DILocation(line: 93, column: 3, scope: !978)
!1005 = !DILocation(line: 95, column: 3, scope: !978)
!1006 = !DILocation(line: 95, column: 18, scope: !978)
!1007 = !DILocation(line: 100, column: 18, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 98, column: 9)
!1009 = distinct !DILexicalBlock(scope: !978, file: !2, line: 96, column: 5)
!1010 = distinct !{!1010, !1005, !1011, !875}
!1011 = !DILocation(line: 110, column: 5, scope: !978)
!1012 = !DILocation(line: 103, column: 9, scope: !1008)
!1013 = !DILocation(line: 105, column: 9, scope: !1008)
!1014 = !DILocation(line: 108, column: 11, scope: !1008)
!1015 = !DILocation(line: 112, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !978, file: !2, line: 112, column: 7)
!1017 = !DILocation(line: 112, column: 14, scope: !1016)
!1018 = !DILocation(line: 112, column: 7, scope: !978)
!1019 = !DILocation(line: 114, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 113, column: 5)
!1021 = !DILocation(line: 115, column: 7, scope: !1020)
!1022 = !DILocation(line: 118, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !978, file: !2, line: 118, column: 7)
!1024 = !DILocation(line: 118, column: 7, scope: !978)
!1025 = !DILocation(line: 119, column: 12, scope: !1023)
!1026 = !DILocation(line: 119, column: 5, scope: !1023)
!1027 = !DILocation(line: 122, column: 21, scope: !978)
!1028 = !DILocation(line: 124, column: 7, scope: !990)
!1029 = !DILocation(line: 124, column: 7, scope: !978)
!1030 = !DILocation(line: 128, column: 25, scope: !989)
!1031 = !DILocation(line: 0, scope: !989)
!1032 = !DILocation(line: 129, column: 11, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !989, file: !2, line: 129, column: 11)
!1034 = !DILocation(line: 129, column: 11, scope: !989)
!1035 = !DILocation(line: 130, column: 9, scope: !1033)
!1036 = !DILocation(line: 131, column: 13, scope: !989)
!1037 = !DILocation(line: 0, scope: !990)
!1038 = !DILocation(line: 135, column: 3, scope: !978)
!1039 = !DILocation(line: 137, column: 1, scope: !978)
!1040 = !DISubprogram(name: "bindtextdomain", scope: !810, file: !810, line: 86, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!90, !96, !96}
!1043 = !DISubprogram(name: "textdomain", scope: !810, file: !810, line: 82, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DISubprogram(name: "atexit", scope: !952, file: !952, line: 602, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!70, !402}
!1047 = !DISubprogram(name: "getopt_long", scope: !324, file: !324, line: 66, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!70, !70, !1050, !96, !1052, !329}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1053 = !DISubprogram(name: "isatty", scope: !1054, file: !1054, line: 809, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!70, !70}
!1057 = !DISubprogram(name: "ttyname", scope: !1054, file: !1054, line: 799, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!90, !70}
!1060 = !DISubprogram(name: "__errno_location", scope: !1061, file: !1061, line: 37, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1061 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!329}
!1064 = !DISubprogram(name: "puts", scope: !823, file: !823, line: 661, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!70, !96}
!1067 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !342, file: !342, line: 50, type: !778, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1068)
!1068 = !{!1069}
!1069 = !DILocalVariable(name: "file", arg: 1, scope: !1067, file: !342, line: 50, type: !96)
!1070 = !DILocation(line: 0, scope: !1067)
!1071 = !DILocation(line: 52, column: 13, scope: !1067)
!1072 = !DILocation(line: 53, column: 1, scope: !1067)
!1073 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !342, file: !342, line: 87, type: !1074, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !121}
!1076 = !{!1077}
!1077 = !DILocalVariable(name: "ignore", arg: 1, scope: !1073, file: !342, line: 87, type: !121)
!1078 = !DILocation(line: 0, scope: !1073)
!1079 = !DILocation(line: 89, column: 16, scope: !1073)
!1080 = !{!1081, !1081, i64 0}
!1081 = !{!"_Bool", !768, i64 0}
!1082 = !DILocation(line: 90, column: 1, scope: !1073)
!1083 = distinct !DISubprogram(name: "close_stdout", scope: !342, file: !342, line: 116, type: !403, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1084)
!1084 = !{!1085}
!1085 = !DILocalVariable(name: "write_error", scope: !1086, file: !342, line: 121, type: !96)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !342, line: 120, column: 5)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !342, line: 118, column: 7)
!1088 = !DILocation(line: 118, column: 21, scope: !1087)
!1089 = !DILocation(line: 118, column: 7, scope: !1087)
!1090 = !DILocation(line: 118, column: 29, scope: !1087)
!1091 = !DILocation(line: 119, column: 7, scope: !1087)
!1092 = !DILocation(line: 119, column: 12, scope: !1087)
!1093 = !{i8 0, i8 2}
!1094 = !DILocation(line: 119, column: 25, scope: !1087)
!1095 = !DILocation(line: 119, column: 28, scope: !1087)
!1096 = !DILocation(line: 119, column: 34, scope: !1087)
!1097 = !DILocation(line: 118, column: 7, scope: !1083)
!1098 = !DILocation(line: 121, column: 33, scope: !1086)
!1099 = !DILocation(line: 0, scope: !1086)
!1100 = !DILocation(line: 122, column: 11, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1086, file: !342, line: 122, column: 11)
!1102 = !DILocation(line: 0, scope: !1101)
!1103 = !DILocation(line: 122, column: 11, scope: !1086)
!1104 = !DILocation(line: 123, column: 9, scope: !1101)
!1105 = !DILocation(line: 126, column: 9, scope: !1101)
!1106 = !DILocation(line: 128, column: 14, scope: !1086)
!1107 = !DILocation(line: 128, column: 7, scope: !1086)
!1108 = !DILocation(line: 133, column: 42, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1083, file: !342, line: 133, column: 7)
!1110 = !DILocation(line: 133, column: 28, scope: !1109)
!1111 = !DILocation(line: 133, column: 50, scope: !1109)
!1112 = !DILocation(line: 133, column: 7, scope: !1083)
!1113 = !DILocation(line: 134, column: 12, scope: !1109)
!1114 = !DILocation(line: 134, column: 5, scope: !1109)
!1115 = !DILocation(line: 135, column: 1, scope: !1083)
!1116 = !DISubprogram(name: "_exit", scope: !1054, file: !1054, line: 624, type: !756, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1117 = distinct !DISubprogram(name: "verror", scope: !357, file: !357, line: 251, type: !1118, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !70, !70, !96, !367}
!1120 = !{!1121, !1122, !1123, !1124}
!1121 = !DILocalVariable(name: "status", arg: 1, scope: !1117, file: !357, line: 251, type: !70)
!1122 = !DILocalVariable(name: "errnum", arg: 2, scope: !1117, file: !357, line: 251, type: !70)
!1123 = !DILocalVariable(name: "message", arg: 3, scope: !1117, file: !357, line: 251, type: !96)
!1124 = !DILocalVariable(name: "args", arg: 4, scope: !1117, file: !357, line: 251, type: !367)
!1125 = !DILocation(line: 0, scope: !1117)
!1126 = !DILocation(line: 261, column: 3, scope: !1117)
!1127 = !DILocation(line: 265, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1117, file: !357, line: 265, column: 7)
!1129 = !DILocation(line: 265, column: 7, scope: !1117)
!1130 = !DILocation(line: 266, column: 5, scope: !1128)
!1131 = !DILocation(line: 272, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !357, line: 268, column: 5)
!1133 = !DILocation(line: 276, column: 3, scope: !1117)
!1134 = !DILocation(line: 282, column: 1, scope: !1117)
!1135 = distinct !DISubprogram(name: "flush_stdout", scope: !357, file: !357, line: 163, type: !403, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1136)
!1136 = !{!1137}
!1137 = !DILocalVariable(name: "stdout_fd", scope: !1135, file: !357, line: 166, type: !70)
!1138 = !DILocation(line: 0, scope: !1135)
!1139 = !DILocalVariable(name: "fd", arg: 1, scope: !1140, file: !357, line: 145, type: !70)
!1140 = distinct !DISubprogram(name: "is_open", scope: !357, file: !357, line: 145, type: !1055, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1141)
!1141 = !{!1139}
!1142 = !DILocation(line: 0, scope: !1140, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 182, column: 25, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !357, line: 182, column: 7)
!1145 = !DILocation(line: 157, column: 15, scope: !1140, inlinedAt: !1143)
!1146 = !DILocation(line: 157, column: 12, scope: !1140, inlinedAt: !1143)
!1147 = !DILocation(line: 182, column: 7, scope: !1135)
!1148 = !DILocation(line: 184, column: 5, scope: !1144)
!1149 = !DILocation(line: 185, column: 1, scope: !1135)
!1150 = distinct !DISubprogram(name: "error_tail", scope: !357, file: !357, line: 219, type: !1118, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1151)
!1151 = !{!1152, !1153, !1154, !1155}
!1152 = !DILocalVariable(name: "status", arg: 1, scope: !1150, file: !357, line: 219, type: !70)
!1153 = !DILocalVariable(name: "errnum", arg: 2, scope: !1150, file: !357, line: 219, type: !70)
!1154 = !DILocalVariable(name: "message", arg: 3, scope: !1150, file: !357, line: 219, type: !96)
!1155 = !DILocalVariable(name: "args", arg: 4, scope: !1150, file: !357, line: 219, type: !367)
!1156 = distinct !DIAssignID()
!1157 = !DILocation(line: 0, scope: !1150)
!1158 = !DILocation(line: 229, column: 13, scope: !1150)
!1159 = !DILocalVariable(name: "__stream", arg: 1, scope: !1160, file: !814, line: 132, type: !1163)
!1160 = distinct !DISubprogram(name: "vfprintf", scope: !814, file: !814, line: 132, type: !1161, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1198)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!70, !1163, !818, !367}
!1163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1164)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1166, file: !150, line: 51, baseType: !70, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1166, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1166, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1166, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1166, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1166, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1166, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1166, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1166, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1166, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1166, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1166, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1166, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1166, file: !150, line: 70, baseType: !1182, size: 64, offset: 832)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1166, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1166, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1166, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1166, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1166, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1166, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1166, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1166, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1166, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1166, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1166, file: !150, line: 93, baseType: !1182, size: 64, offset: 1344)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1166, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1166, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1166, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1166, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!1198 = !{!1159, !1199, !1200}
!1199 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1160, file: !814, line: 133, type: !818)
!1200 = !DILocalVariable(name: "__ap", arg: 3, scope: !1160, file: !814, line: 133, type: !367)
!1201 = !DILocation(line: 0, scope: !1160, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 229, column: 3, scope: !1150)
!1203 = !DILocation(line: 135, column: 10, scope: !1160, inlinedAt: !1202)
!1204 = !DILocation(line: 232, column: 3, scope: !1150)
!1205 = !DILocation(line: 233, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1150, file: !357, line: 233, column: 7)
!1207 = !DILocation(line: 233, column: 7, scope: !1150)
!1208 = !DILocalVariable(name: "errbuf", scope: !1209, file: !357, line: 193, type: !1213)
!1209 = distinct !DISubprogram(name: "print_errno_message", scope: !357, file: !357, line: 188, type: !756, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1210)
!1210 = !{!1211, !1212, !1208}
!1211 = !DILocalVariable(name: "errnum", arg: 1, scope: !1209, file: !357, line: 188, type: !70)
!1212 = !DILocalVariable(name: "s", scope: !1209, file: !357, line: 190, type: !96)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 1024)
!1216 = !DILocation(line: 0, scope: !1209, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 234, column: 5, scope: !1206)
!1218 = !DILocation(line: 193, column: 3, scope: !1209, inlinedAt: !1217)
!1219 = !DILocation(line: 195, column: 7, scope: !1209, inlinedAt: !1217)
!1220 = !DILocation(line: 207, column: 9, scope: !1221, inlinedAt: !1217)
!1221 = distinct !DILexicalBlock(scope: !1209, file: !357, line: 207, column: 7)
!1222 = !DILocation(line: 207, column: 7, scope: !1209, inlinedAt: !1217)
!1223 = !DILocation(line: 208, column: 9, scope: !1221, inlinedAt: !1217)
!1224 = !DILocation(line: 208, column: 5, scope: !1221, inlinedAt: !1217)
!1225 = !DILocation(line: 214, column: 3, scope: !1209, inlinedAt: !1217)
!1226 = !DILocation(line: 216, column: 1, scope: !1209, inlinedAt: !1217)
!1227 = !DILocation(line: 234, column: 5, scope: !1206)
!1228 = !DILocation(line: 238, column: 3, scope: !1150)
!1229 = !DILocalVariable(name: "__c", arg: 1, scope: !1230, file: !1231, line: 101, type: !70)
!1230 = distinct !DISubprogram(name: "putc_unlocked", scope: !1231, file: !1231, line: 101, type: !1232, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1234)
!1231 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!70, !70, !1164}
!1234 = !{!1229, !1235}
!1235 = !DILocalVariable(name: "__stream", arg: 2, scope: !1230, file: !1231, line: 101, type: !1164)
!1236 = !DILocation(line: 0, scope: !1230, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 238, column: 3, scope: !1150)
!1238 = !DILocation(line: 103, column: 10, scope: !1230, inlinedAt: !1237)
!1239 = !{!1240, !767, i64 40}
!1240 = !{!"_IO_FILE", !829, i64 0, !767, i64 8, !767, i64 16, !767, i64 24, !767, i64 32, !767, i64 40, !767, i64 48, !767, i64 56, !767, i64 64, !767, i64 72, !767, i64 80, !767, i64 88, !767, i64 96, !767, i64 104, !829, i64 112, !829, i64 116, !1241, i64 120, !870, i64 128, !768, i64 130, !768, i64 131, !767, i64 136, !1241, i64 144, !767, i64 152, !767, i64 160, !767, i64 168, !767, i64 176, !1241, i64 184, !829, i64 192, !768, i64 196}
!1241 = !{!"long", !768, i64 0}
!1242 = !{!1240, !767, i64 48}
!1243 = !{!"branch_weights", i32 2000, i32 1}
!1244 = !DILocation(line: 240, column: 3, scope: !1150)
!1245 = !DILocation(line: 241, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1150, file: !357, line: 241, column: 7)
!1247 = !DILocation(line: 241, column: 7, scope: !1150)
!1248 = !DILocation(line: 242, column: 5, scope: !1246)
!1249 = !DILocation(line: 243, column: 1, scope: !1150)
!1250 = !DISubprogram(name: "__vfprintf_chk", scope: !814, file: !814, line: 96, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!70, !1163, !70, !818, !367}
!1253 = !DISubprogram(name: "strerror_r", scope: !948, file: !948, line: 444, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!90, !70, !90, !93}
!1256 = !DISubprogram(name: "__overflow", scope: !823, file: !823, line: 886, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!70, !1164, !70}
!1259 = !DISubprogram(name: "fflush_unlocked", scope: !823, file: !823, line: 239, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!70, !1164}
!1262 = !DISubprogram(name: "fcntl", scope: !1263, file: !1263, line: 149, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1263 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!70, !70, !70, null}
!1266 = distinct !DISubprogram(name: "error", scope: !357, file: !357, line: 285, type: !1267, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1269)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !70, !70, !96, null}
!1269 = !{!1270, !1271, !1272, !1273}
!1270 = !DILocalVariable(name: "status", arg: 1, scope: !1266, file: !357, line: 285, type: !70)
!1271 = !DILocalVariable(name: "errnum", arg: 2, scope: !1266, file: !357, line: 285, type: !70)
!1272 = !DILocalVariable(name: "message", arg: 3, scope: !1266, file: !357, line: 285, type: !96)
!1273 = !DILocalVariable(name: "ap", scope: !1266, file: !357, line: 287, type: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !823, line: 52, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1276, line: 12, baseType: !1277)
!1276 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !357, baseType: !1278)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 192, elements: !40)
!1279 = distinct !DIAssignID()
!1280 = !DILocation(line: 0, scope: !1266)
!1281 = !DILocation(line: 287, column: 3, scope: !1266)
!1282 = !DILocation(line: 288, column: 3, scope: !1266)
!1283 = !DILocation(line: 289, column: 3, scope: !1266)
!1284 = !DILocation(line: 290, column: 3, scope: !1266)
!1285 = !DILocation(line: 291, column: 1, scope: !1266)
!1286 = !DILocation(line: 0, scope: !364)
!1287 = !DILocation(line: 302, column: 7, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !364, file: !357, line: 302, column: 7)
!1289 = !DILocation(line: 302, column: 7, scope: !364)
!1290 = !DILocation(line: 307, column: 11, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !357, line: 307, column: 11)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !357, line: 303, column: 5)
!1293 = !DILocation(line: 307, column: 27, scope: !1291)
!1294 = !DILocation(line: 308, column: 11, scope: !1291)
!1295 = !DILocation(line: 308, column: 28, scope: !1291)
!1296 = !DILocation(line: 308, column: 25, scope: !1291)
!1297 = !DILocation(line: 309, column: 15, scope: !1291)
!1298 = !DILocation(line: 309, column: 33, scope: !1291)
!1299 = !DILocation(line: 310, column: 19, scope: !1291)
!1300 = !DILocation(line: 311, column: 22, scope: !1291)
!1301 = !DILocation(line: 311, column: 56, scope: !1291)
!1302 = !DILocation(line: 307, column: 11, scope: !1292)
!1303 = !DILocation(line: 316, column: 21, scope: !1292)
!1304 = !DILocation(line: 317, column: 23, scope: !1292)
!1305 = !DILocation(line: 318, column: 5, scope: !1292)
!1306 = !DILocation(line: 327, column: 3, scope: !364)
!1307 = !DILocation(line: 331, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !364, file: !357, line: 331, column: 7)
!1309 = !DILocation(line: 331, column: 7, scope: !364)
!1310 = !DILocation(line: 332, column: 5, scope: !1308)
!1311 = !DILocation(line: 338, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !357, line: 334, column: 5)
!1313 = !DILocation(line: 346, column: 3, scope: !364)
!1314 = !DILocation(line: 350, column: 3, scope: !364)
!1315 = !DILocation(line: 356, column: 1, scope: !364)
!1316 = distinct !DISubprogram(name: "error_at_line", scope: !357, file: !357, line: 359, type: !1317, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !70, !70, !96, !62, !96, null}
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325}
!1320 = !DILocalVariable(name: "status", arg: 1, scope: !1316, file: !357, line: 359, type: !70)
!1321 = !DILocalVariable(name: "errnum", arg: 2, scope: !1316, file: !357, line: 359, type: !70)
!1322 = !DILocalVariable(name: "file_name", arg: 3, scope: !1316, file: !357, line: 359, type: !96)
!1323 = !DILocalVariable(name: "line_number", arg: 4, scope: !1316, file: !357, line: 360, type: !62)
!1324 = !DILocalVariable(name: "message", arg: 5, scope: !1316, file: !357, line: 360, type: !96)
!1325 = !DILocalVariable(name: "ap", scope: !1316, file: !357, line: 362, type: !1274)
!1326 = distinct !DIAssignID()
!1327 = !DILocation(line: 0, scope: !1316)
!1328 = !DILocation(line: 362, column: 3, scope: !1316)
!1329 = !DILocation(line: 363, column: 3, scope: !1316)
!1330 = !DILocation(line: 364, column: 3, scope: !1316)
!1331 = !DILocation(line: 366, column: 3, scope: !1316)
!1332 = !DILocation(line: 367, column: 1, scope: !1316)
!1333 = distinct !DISubprogram(name: "getprogname", scope: !684, file: !684, line: 54, type: !1334, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!96}
!1336 = !DILocation(line: 58, column: 10, scope: !1333)
!1337 = !DILocation(line: 58, column: 3, scope: !1333)
!1338 = distinct !DISubprogram(name: "set_program_name", scope: !408, file: !408, line: 37, type: !778, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !1339)
!1339 = !{!1340, !1341, !1342}
!1340 = !DILocalVariable(name: "argv0", arg: 1, scope: !1338, file: !408, line: 37, type: !96)
!1341 = !DILocalVariable(name: "slash", scope: !1338, file: !408, line: 44, type: !96)
!1342 = !DILocalVariable(name: "base", scope: !1338, file: !408, line: 45, type: !96)
!1343 = !DILocation(line: 0, scope: !1338)
!1344 = !DILocation(line: 44, column: 23, scope: !1338)
!1345 = !DILocation(line: 45, column: 22, scope: !1338)
!1346 = !DILocation(line: 46, column: 17, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1338, file: !408, line: 46, column: 7)
!1348 = !DILocation(line: 46, column: 9, scope: !1347)
!1349 = !DILocation(line: 46, column: 25, scope: !1347)
!1350 = !DILocation(line: 46, column: 40, scope: !1347)
!1351 = !DILocalVariable(name: "__s1", arg: 1, scope: !1352, file: !841, line: 974, type: !976)
!1352 = distinct !DISubprogram(name: "memeq", scope: !841, file: !841, line: 974, type: !1353, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!121, !976, !976, !93}
!1355 = !{!1351, !1356, !1357}
!1356 = !DILocalVariable(name: "__s2", arg: 2, scope: !1352, file: !841, line: 974, type: !976)
!1357 = !DILocalVariable(name: "__n", arg: 3, scope: !1352, file: !841, line: 974, type: !93)
!1358 = !DILocation(line: 0, scope: !1352, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 46, column: 28, scope: !1347)
!1360 = !DILocation(line: 976, column: 11, scope: !1352, inlinedAt: !1359)
!1361 = !DILocation(line: 976, column: 10, scope: !1352, inlinedAt: !1359)
!1362 = !DILocation(line: 46, column: 7, scope: !1338)
!1363 = !DILocation(line: 49, column: 11, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !408, line: 49, column: 11)
!1365 = distinct !DILexicalBlock(scope: !1347, file: !408, line: 47, column: 5)
!1366 = !DILocation(line: 49, column: 36, scope: !1364)
!1367 = !DILocation(line: 49, column: 11, scope: !1365)
!1368 = !DILocation(line: 65, column: 16, scope: !1338)
!1369 = !DILocation(line: 71, column: 27, scope: !1338)
!1370 = !DILocation(line: 74, column: 33, scope: !1338)
!1371 = !DILocation(line: 76, column: 1, scope: !1338)
!1372 = !DISubprogram(name: "strrchr", scope: !948, file: !948, line: 273, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1373 = distinct !DIAssignID()
!1374 = !DILocation(line: 0, scope: !417)
!1375 = distinct !DIAssignID()
!1376 = !DILocation(line: 40, column: 29, scope: !417)
!1377 = !DILocation(line: 41, column: 19, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !417, file: !418, line: 41, column: 7)
!1379 = !DILocation(line: 41, column: 7, scope: !417)
!1380 = !DILocation(line: 47, column: 3, scope: !417)
!1381 = !DILocation(line: 48, column: 3, scope: !417)
!1382 = !DILocalVariable(name: "ps", arg: 1, scope: !1383, file: !1384, line: 1135, type: !1387)
!1383 = distinct !DISubprogram(name: "mbszero", scope: !1384, file: !1384, line: 1135, type: !1385, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !1388)
!1384 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !1387}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!1388 = !{!1382}
!1389 = !DILocation(line: 0, scope: !1383, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 48, column: 18, scope: !417)
!1391 = !DILocalVariable(name: "__dest", arg: 1, scope: !1392, file: !1393, line: 57, type: !91)
!1392 = distinct !DISubprogram(name: "memset", scope: !1393, file: !1393, line: 57, type: !1394, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !1396)
!1393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!91, !91, !70, !93}
!1396 = !{!1391, !1397, !1398}
!1397 = !DILocalVariable(name: "__ch", arg: 2, scope: !1392, file: !1393, line: 57, type: !70)
!1398 = !DILocalVariable(name: "__len", arg: 3, scope: !1392, file: !1393, line: 57, type: !93)
!1399 = !DILocation(line: 0, scope: !1392, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 1137, column: 3, scope: !1383, inlinedAt: !1390)
!1401 = !DILocation(line: 59, column: 10, scope: !1392, inlinedAt: !1400)
!1402 = !DILocation(line: 49, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !417, file: !418, line: 49, column: 7)
!1404 = !DILocation(line: 49, column: 39, scope: !1403)
!1405 = !DILocation(line: 49, column: 44, scope: !1403)
!1406 = !DILocation(line: 54, column: 1, scope: !417)
!1407 = !DISubprogram(name: "mbrtoc32", scope: !429, file: !429, line: 57, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!93, !1410, !818, !93, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1387)
!1413 = distinct !DISubprogram(name: "clone_quoting_options", scope: !448, file: !448, line: 113, type: !1414, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1417)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1416, !1416}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!1417 = !{!1418, !1419, !1420}
!1418 = !DILocalVariable(name: "o", arg: 1, scope: !1413, file: !448, line: 113, type: !1416)
!1419 = !DILocalVariable(name: "saved_errno", scope: !1413, file: !448, line: 115, type: !70)
!1420 = !DILocalVariable(name: "p", scope: !1413, file: !448, line: 116, type: !1416)
!1421 = !DILocation(line: 0, scope: !1413)
!1422 = !DILocation(line: 115, column: 21, scope: !1413)
!1423 = !DILocation(line: 116, column: 40, scope: !1413)
!1424 = !DILocation(line: 116, column: 31, scope: !1413)
!1425 = !DILocation(line: 118, column: 9, scope: !1413)
!1426 = !DILocation(line: 119, column: 3, scope: !1413)
!1427 = distinct !DISubprogram(name: "get_quoting_style", scope: !448, file: !448, line: 124, type: !1428, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1432)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!474, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!1432 = !{!1433}
!1433 = !DILocalVariable(name: "o", arg: 1, scope: !1427, file: !448, line: 124, type: !1430)
!1434 = !DILocation(line: 0, scope: !1427)
!1435 = !DILocation(line: 126, column: 11, scope: !1427)
!1436 = !DILocation(line: 126, column: 46, scope: !1427)
!1437 = !{!1438, !829, i64 0}
!1438 = !{!"quoting_options", !829, i64 0, !829, i64 4, !768, i64 8, !767, i64 40, !767, i64 48}
!1439 = !DILocation(line: 126, column: 3, scope: !1427)
!1440 = distinct !DISubprogram(name: "set_quoting_style", scope: !448, file: !448, line: 132, type: !1441, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1416, !474}
!1443 = !{!1444, !1445}
!1444 = !DILocalVariable(name: "o", arg: 1, scope: !1440, file: !448, line: 132, type: !1416)
!1445 = !DILocalVariable(name: "s", arg: 2, scope: !1440, file: !448, line: 132, type: !474)
!1446 = !DILocation(line: 0, scope: !1440)
!1447 = !DILocation(line: 134, column: 4, scope: !1440)
!1448 = !DILocation(line: 134, column: 45, scope: !1440)
!1449 = !DILocation(line: 135, column: 1, scope: !1440)
!1450 = distinct !DISubprogram(name: "set_char_quoting", scope: !448, file: !448, line: 143, type: !1451, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!70, !1416, !4, !70}
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1460, !1461}
!1454 = !DILocalVariable(name: "o", arg: 1, scope: !1450, file: !448, line: 143, type: !1416)
!1455 = !DILocalVariable(name: "c", arg: 2, scope: !1450, file: !448, line: 143, type: !4)
!1456 = !DILocalVariable(name: "i", arg: 3, scope: !1450, file: !448, line: 143, type: !70)
!1457 = !DILocalVariable(name: "uc", scope: !1450, file: !448, line: 145, type: !98)
!1458 = !DILocalVariable(name: "p", scope: !1450, file: !448, line: 146, type: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1460 = !DILocalVariable(name: "shift", scope: !1450, file: !448, line: 148, type: !70)
!1461 = !DILocalVariable(name: "r", scope: !1450, file: !448, line: 149, type: !62)
!1462 = !DILocation(line: 0, scope: !1450)
!1463 = !DILocation(line: 147, column: 6, scope: !1450)
!1464 = !DILocation(line: 147, column: 41, scope: !1450)
!1465 = !DILocation(line: 147, column: 62, scope: !1450)
!1466 = !DILocation(line: 147, column: 57, scope: !1450)
!1467 = !DILocation(line: 148, column: 15, scope: !1450)
!1468 = !DILocation(line: 149, column: 21, scope: !1450)
!1469 = !DILocation(line: 149, column: 24, scope: !1450)
!1470 = !DILocation(line: 149, column: 34, scope: !1450)
!1471 = !DILocation(line: 150, column: 19, scope: !1450)
!1472 = !DILocation(line: 150, column: 24, scope: !1450)
!1473 = !DILocation(line: 150, column: 6, scope: !1450)
!1474 = !DILocation(line: 151, column: 3, scope: !1450)
!1475 = distinct !DISubprogram(name: "set_quoting_flags", scope: !448, file: !448, line: 159, type: !1476, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!70, !1416, !70}
!1478 = !{!1479, !1480, !1481}
!1479 = !DILocalVariable(name: "o", arg: 1, scope: !1475, file: !448, line: 159, type: !1416)
!1480 = !DILocalVariable(name: "i", arg: 2, scope: !1475, file: !448, line: 159, type: !70)
!1481 = !DILocalVariable(name: "r", scope: !1475, file: !448, line: 163, type: !70)
!1482 = !DILocation(line: 0, scope: !1475)
!1483 = !DILocation(line: 161, column: 8, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1475, file: !448, line: 161, column: 7)
!1485 = !DILocation(line: 161, column: 7, scope: !1475)
!1486 = !DILocation(line: 163, column: 14, scope: !1475)
!1487 = !{!1438, !829, i64 4}
!1488 = !DILocation(line: 164, column: 12, scope: !1475)
!1489 = !DILocation(line: 165, column: 3, scope: !1475)
!1490 = distinct !DISubprogram(name: "set_custom_quoting", scope: !448, file: !448, line: 169, type: !1491, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1416, !96, !96}
!1493 = !{!1494, !1495, !1496}
!1494 = !DILocalVariable(name: "o", arg: 1, scope: !1490, file: !448, line: 169, type: !1416)
!1495 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1490, file: !448, line: 170, type: !96)
!1496 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1490, file: !448, line: 170, type: !96)
!1497 = !DILocation(line: 0, scope: !1490)
!1498 = !DILocation(line: 172, column: 8, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1490, file: !448, line: 172, column: 7)
!1500 = !DILocation(line: 172, column: 7, scope: !1490)
!1501 = !DILocation(line: 174, column: 12, scope: !1490)
!1502 = !DILocation(line: 175, column: 8, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1490, file: !448, line: 175, column: 7)
!1504 = !DILocation(line: 175, column: 19, scope: !1503)
!1505 = !DILocation(line: 176, column: 5, scope: !1503)
!1506 = !DILocation(line: 177, column: 6, scope: !1490)
!1507 = !DILocation(line: 177, column: 17, scope: !1490)
!1508 = !{!1438, !767, i64 40}
!1509 = !DILocation(line: 178, column: 6, scope: !1490)
!1510 = !DILocation(line: 178, column: 18, scope: !1490)
!1511 = !{!1438, !767, i64 48}
!1512 = !DILocation(line: 179, column: 1, scope: !1490)
!1513 = !DISubprogram(name: "abort", scope: !952, file: !952, line: 598, type: !403, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1514 = distinct !DISubprogram(name: "quotearg_buffer", scope: !448, file: !448, line: 774, type: !1515, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!93, !90, !93, !96, !93, !1430}
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1518 = !DILocalVariable(name: "buffer", arg: 1, scope: !1514, file: !448, line: 774, type: !90)
!1519 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1514, file: !448, line: 774, type: !93)
!1520 = !DILocalVariable(name: "arg", arg: 3, scope: !1514, file: !448, line: 775, type: !96)
!1521 = !DILocalVariable(name: "argsize", arg: 4, scope: !1514, file: !448, line: 775, type: !93)
!1522 = !DILocalVariable(name: "o", arg: 5, scope: !1514, file: !448, line: 776, type: !1430)
!1523 = !DILocalVariable(name: "p", scope: !1514, file: !448, line: 778, type: !1430)
!1524 = !DILocalVariable(name: "saved_errno", scope: !1514, file: !448, line: 779, type: !70)
!1525 = !DILocalVariable(name: "r", scope: !1514, file: !448, line: 780, type: !93)
!1526 = !DILocation(line: 0, scope: !1514)
!1527 = !DILocation(line: 778, column: 37, scope: !1514)
!1528 = !DILocation(line: 779, column: 21, scope: !1514)
!1529 = !DILocation(line: 781, column: 43, scope: !1514)
!1530 = !DILocation(line: 781, column: 53, scope: !1514)
!1531 = !DILocation(line: 781, column: 63, scope: !1514)
!1532 = !DILocation(line: 782, column: 43, scope: !1514)
!1533 = !DILocation(line: 782, column: 58, scope: !1514)
!1534 = !DILocation(line: 780, column: 14, scope: !1514)
!1535 = !DILocation(line: 783, column: 9, scope: !1514)
!1536 = !DILocation(line: 784, column: 3, scope: !1514)
!1537 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !448, file: !448, line: 251, type: !1538, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1542)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!93, !90, !93, !96, !93, !474, !70, !1540, !96, !96}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1568, !1570, !1573, !1574, !1575, !1576, !1579, !1580, !1582, !1583, !1586, !1590, !1591, !1599, !1602, !1603, !1604}
!1543 = !DILocalVariable(name: "buffer", arg: 1, scope: !1537, file: !448, line: 251, type: !90)
!1544 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1537, file: !448, line: 251, type: !93)
!1545 = !DILocalVariable(name: "arg", arg: 3, scope: !1537, file: !448, line: 252, type: !96)
!1546 = !DILocalVariable(name: "argsize", arg: 4, scope: !1537, file: !448, line: 252, type: !93)
!1547 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1537, file: !448, line: 253, type: !474)
!1548 = !DILocalVariable(name: "flags", arg: 6, scope: !1537, file: !448, line: 253, type: !70)
!1549 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1537, file: !448, line: 254, type: !1540)
!1550 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1537, file: !448, line: 255, type: !96)
!1551 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1537, file: !448, line: 256, type: !96)
!1552 = !DILocalVariable(name: "unibyte_locale", scope: !1537, file: !448, line: 258, type: !121)
!1553 = !DILocalVariable(name: "len", scope: !1537, file: !448, line: 260, type: !93)
!1554 = !DILocalVariable(name: "orig_buffersize", scope: !1537, file: !448, line: 261, type: !93)
!1555 = !DILocalVariable(name: "quote_string", scope: !1537, file: !448, line: 262, type: !96)
!1556 = !DILocalVariable(name: "quote_string_len", scope: !1537, file: !448, line: 263, type: !93)
!1557 = !DILocalVariable(name: "backslash_escapes", scope: !1537, file: !448, line: 264, type: !121)
!1558 = !DILocalVariable(name: "elide_outer_quotes", scope: !1537, file: !448, line: 265, type: !121)
!1559 = !DILocalVariable(name: "encountered_single_quote", scope: !1537, file: !448, line: 266, type: !121)
!1560 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1537, file: !448, line: 267, type: !121)
!1561 = !DILabel(scope: !1537, name: "process_input", file: !448, line: 308)
!1562 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1537, file: !448, line: 309, type: !121)
!1563 = !DILocalVariable(name: "lq", scope: !1564, file: !448, line: 361, type: !96)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !448, line: 361, column: 11)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !448, line: 360, column: 13)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !448, line: 333, column: 7)
!1567 = distinct !DILexicalBlock(scope: !1537, file: !448, line: 312, column: 5)
!1568 = !DILocalVariable(name: "i", scope: !1569, file: !448, line: 395, type: !93)
!1569 = distinct !DILexicalBlock(scope: !1537, file: !448, line: 395, column: 3)
!1570 = !DILocalVariable(name: "is_right_quote", scope: !1571, file: !448, line: 397, type: !121)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !448, line: 396, column: 5)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !448, line: 395, column: 3)
!1573 = !DILocalVariable(name: "escaping", scope: !1571, file: !448, line: 398, type: !121)
!1574 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1571, file: !448, line: 399, type: !121)
!1575 = !DILocalVariable(name: "c", scope: !1571, file: !448, line: 417, type: !98)
!1576 = !DILabel(scope: !1577, name: "c_and_shell_escape", file: !448, line: 502)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !448, line: 478, column: 9)
!1578 = distinct !DILexicalBlock(scope: !1571, file: !448, line: 419, column: 9)
!1579 = !DILabel(scope: !1577, name: "c_escape", file: !448, line: 507)
!1580 = !DILocalVariable(name: "m", scope: !1581, file: !448, line: 598, type: !93)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !448, line: 596, column: 11)
!1582 = !DILocalVariable(name: "printable", scope: !1581, file: !448, line: 600, type: !121)
!1583 = !DILocalVariable(name: "mbs", scope: !1584, file: !448, line: 609, type: !535)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !448, line: 608, column: 15)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !448, line: 602, column: 17)
!1586 = !DILocalVariable(name: "w", scope: !1587, file: !448, line: 618, type: !428)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !448, line: 617, column: 19)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !448, line: 616, column: 17)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !448, line: 616, column: 17)
!1590 = !DILocalVariable(name: "bytes", scope: !1587, file: !448, line: 619, type: !93)
!1591 = !DILocalVariable(name: "j", scope: !1592, file: !448, line: 648, type: !93)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !448, line: 648, column: 29)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !448, line: 647, column: 27)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !448, line: 645, column: 29)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !448, line: 636, column: 23)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !448, line: 628, column: 30)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !448, line: 623, column: 30)
!1598 = distinct !DILexicalBlock(scope: !1587, file: !448, line: 621, column: 25)
!1599 = !DILocalVariable(name: "ilim", scope: !1600, file: !448, line: 674, type: !93)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !448, line: 671, column: 15)
!1601 = distinct !DILexicalBlock(scope: !1581, file: !448, line: 670, column: 17)
!1602 = !DILabel(scope: !1571, name: "store_escape", file: !448, line: 709)
!1603 = !DILabel(scope: !1571, name: "store_c", file: !448, line: 712)
!1604 = !DILabel(scope: !1537, name: "force_outer_quoting_style", file: !448, line: 753)
!1605 = distinct !DIAssignID()
!1606 = distinct !DIAssignID()
!1607 = distinct !DIAssignID()
!1608 = distinct !DIAssignID()
!1609 = distinct !DIAssignID()
!1610 = !DILocation(line: 0, scope: !1584)
!1611 = distinct !DIAssignID()
!1612 = !DILocation(line: 0, scope: !1587)
!1613 = !DILocation(line: 0, scope: !1537)
!1614 = !DILocation(line: 258, column: 25, scope: !1537)
!1615 = !DILocation(line: 258, column: 36, scope: !1537)
!1616 = !DILocation(line: 265, column: 8, scope: !1537)
!1617 = !DILocation(line: 267, column: 3, scope: !1537)
!1618 = !DILocation(line: 261, column: 10, scope: !1537)
!1619 = !DILocation(line: 262, column: 15, scope: !1537)
!1620 = !DILocation(line: 263, column: 10, scope: !1537)
!1621 = !DILocation(line: 264, column: 8, scope: !1537)
!1622 = !DILocation(line: 266, column: 8, scope: !1537)
!1623 = !DILocation(line: 267, column: 8, scope: !1537)
!1624 = !DILocation(line: 308, column: 2, scope: !1537)
!1625 = !DILocation(line: 311, column: 3, scope: !1537)
!1626 = !DILocation(line: 318, column: 11, scope: !1567)
!1627 = !DILocation(line: 318, column: 12, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1567, file: !448, line: 318, column: 11)
!1629 = !DILocation(line: 319, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !448, line: 319, column: 9)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !448, line: 319, column: 9)
!1632 = !DILocation(line: 319, column: 9, scope: !1631)
!1633 = !DILocation(line: 0, scope: !526, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 357, column: 26, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !448, line: 335, column: 11)
!1636 = distinct !DILexicalBlock(scope: !1566, file: !448, line: 334, column: 13)
!1637 = !DILocation(line: 199, column: 29, scope: !526, inlinedAt: !1634)
!1638 = !DILocation(line: 201, column: 19, scope: !1639, inlinedAt: !1634)
!1639 = distinct !DILexicalBlock(scope: !526, file: !448, line: 201, column: 7)
!1640 = !DILocation(line: 201, column: 7, scope: !526, inlinedAt: !1634)
!1641 = !DILocation(line: 229, column: 3, scope: !526, inlinedAt: !1634)
!1642 = !DILocation(line: 230, column: 3, scope: !526, inlinedAt: !1634)
!1643 = !DILocalVariable(name: "ps", arg: 1, scope: !1644, file: !1384, line: 1135, type: !1647)
!1644 = distinct !DISubprogram(name: "mbszero", scope: !1384, file: !1384, line: 1135, type: !1645, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1648)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!1648 = !{!1643}
!1649 = !DILocation(line: 0, scope: !1644, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 230, column: 18, scope: !526, inlinedAt: !1634)
!1651 = !DILocalVariable(name: "__dest", arg: 1, scope: !1652, file: !1393, line: 57, type: !91)
!1652 = distinct !DISubprogram(name: "memset", scope: !1393, file: !1393, line: 57, type: !1394, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1653)
!1653 = !{!1651, !1654, !1655}
!1654 = !DILocalVariable(name: "__ch", arg: 2, scope: !1652, file: !1393, line: 57, type: !70)
!1655 = !DILocalVariable(name: "__len", arg: 3, scope: !1652, file: !1393, line: 57, type: !93)
!1656 = !DILocation(line: 0, scope: !1652, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 1137, column: 3, scope: !1644, inlinedAt: !1650)
!1658 = !DILocation(line: 59, column: 10, scope: !1652, inlinedAt: !1657)
!1659 = !DILocation(line: 231, column: 7, scope: !1660, inlinedAt: !1634)
!1660 = distinct !DILexicalBlock(scope: !526, file: !448, line: 231, column: 7)
!1661 = !DILocation(line: 231, column: 40, scope: !1660, inlinedAt: !1634)
!1662 = !DILocation(line: 231, column: 45, scope: !1660, inlinedAt: !1634)
!1663 = !DILocation(line: 235, column: 1, scope: !526, inlinedAt: !1634)
!1664 = !DILocation(line: 0, scope: !526, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 358, column: 27, scope: !1635)
!1666 = !DILocation(line: 199, column: 29, scope: !526, inlinedAt: !1665)
!1667 = !DILocation(line: 201, column: 19, scope: !1639, inlinedAt: !1665)
!1668 = !DILocation(line: 201, column: 7, scope: !526, inlinedAt: !1665)
!1669 = !DILocation(line: 229, column: 3, scope: !526, inlinedAt: !1665)
!1670 = !DILocation(line: 230, column: 3, scope: !526, inlinedAt: !1665)
!1671 = !DILocation(line: 0, scope: !1644, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 230, column: 18, scope: !526, inlinedAt: !1665)
!1673 = !DILocation(line: 0, scope: !1652, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 1137, column: 3, scope: !1644, inlinedAt: !1672)
!1675 = !DILocation(line: 59, column: 10, scope: !1652, inlinedAt: !1674)
!1676 = !DILocation(line: 231, column: 7, scope: !1660, inlinedAt: !1665)
!1677 = !DILocation(line: 231, column: 40, scope: !1660, inlinedAt: !1665)
!1678 = !DILocation(line: 231, column: 45, scope: !1660, inlinedAt: !1665)
!1679 = !DILocation(line: 235, column: 1, scope: !526, inlinedAt: !1665)
!1680 = !DILocation(line: 360, column: 14, scope: !1565)
!1681 = !DILocation(line: 360, column: 13, scope: !1566)
!1682 = !DILocation(line: 0, scope: !1564)
!1683 = !DILocation(line: 361, column: 45, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1564, file: !448, line: 361, column: 11)
!1685 = !DILocation(line: 361, column: 11, scope: !1564)
!1686 = !DILocation(line: 362, column: 13, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !448, line: 362, column: 13)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !448, line: 362, column: 13)
!1689 = !DILocation(line: 362, column: 13, scope: !1688)
!1690 = !DILocation(line: 361, column: 52, scope: !1684)
!1691 = distinct !{!1691, !1685, !1692, !875}
!1692 = !DILocation(line: 362, column: 13, scope: !1564)
!1693 = !DILocation(line: 260, column: 10, scope: !1537)
!1694 = !DILocation(line: 365, column: 28, scope: !1566)
!1695 = !DILocation(line: 367, column: 7, scope: !1567)
!1696 = !DILocation(line: 370, column: 7, scope: !1567)
!1697 = !DILocation(line: 373, column: 7, scope: !1567)
!1698 = !DILocation(line: 376, column: 12, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1567, file: !448, line: 376, column: 11)
!1700 = !DILocation(line: 376, column: 11, scope: !1567)
!1701 = !DILocation(line: 381, column: 12, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1567, file: !448, line: 381, column: 11)
!1703 = !DILocation(line: 381, column: 11, scope: !1567)
!1704 = !DILocation(line: 382, column: 9, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !448, line: 382, column: 9)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !448, line: 382, column: 9)
!1707 = !DILocation(line: 382, column: 9, scope: !1706)
!1708 = !DILocation(line: 389, column: 7, scope: !1567)
!1709 = !DILocation(line: 392, column: 7, scope: !1567)
!1710 = !DILocation(line: 0, scope: !1569)
!1711 = !DILocation(line: 395, column: 8, scope: !1569)
!1712 = !DILocation(line: 309, column: 8, scope: !1537)
!1713 = !DILocation(line: 395, scope: !1569)
!1714 = !DILocation(line: 395, column: 34, scope: !1572)
!1715 = !DILocation(line: 395, column: 26, scope: !1572)
!1716 = !DILocation(line: 395, column: 48, scope: !1572)
!1717 = !DILocation(line: 395, column: 55, scope: !1572)
!1718 = !DILocation(line: 395, column: 3, scope: !1569)
!1719 = !DILocation(line: 395, column: 67, scope: !1572)
!1720 = !DILocation(line: 0, scope: !1571)
!1721 = !DILocation(line: 402, column: 11, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1571, file: !448, line: 401, column: 11)
!1723 = !DILocation(line: 404, column: 17, scope: !1722)
!1724 = !DILocation(line: 405, column: 39, scope: !1722)
!1725 = !DILocation(line: 409, column: 32, scope: !1722)
!1726 = !DILocation(line: 405, column: 19, scope: !1722)
!1727 = !DILocation(line: 405, column: 15, scope: !1722)
!1728 = !DILocation(line: 410, column: 11, scope: !1722)
!1729 = !DILocation(line: 410, column: 25, scope: !1722)
!1730 = !DILocalVariable(name: "__s1", arg: 1, scope: !1731, file: !841, line: 974, type: !976)
!1731 = distinct !DISubprogram(name: "memeq", scope: !841, file: !841, line: 974, type: !1353, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1732)
!1732 = !{!1730, !1733, !1734}
!1733 = !DILocalVariable(name: "__s2", arg: 2, scope: !1731, file: !841, line: 974, type: !976)
!1734 = !DILocalVariable(name: "__n", arg: 3, scope: !1731, file: !841, line: 974, type: !93)
!1735 = !DILocation(line: 0, scope: !1731, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 410, column: 14, scope: !1722)
!1737 = !DILocation(line: 976, column: 11, scope: !1731, inlinedAt: !1736)
!1738 = !DILocation(line: 976, column: 10, scope: !1731, inlinedAt: !1736)
!1739 = !DILocation(line: 401, column: 11, scope: !1571)
!1740 = !DILocation(line: 417, column: 25, scope: !1571)
!1741 = !DILocation(line: 418, column: 7, scope: !1571)
!1742 = !DILocation(line: 421, column: 15, scope: !1578)
!1743 = !DILocation(line: 423, column: 15, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !448, line: 423, column: 15)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !448, line: 422, column: 13)
!1746 = distinct !DILexicalBlock(scope: !1578, file: !448, line: 421, column: 15)
!1747 = !DILocation(line: 423, column: 15, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !448, line: 423, column: 15)
!1749 = !DILocation(line: 423, column: 15, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !448, line: 423, column: 15)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !448, line: 423, column: 15)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !448, line: 423, column: 15)
!1753 = !DILocation(line: 423, column: 15, scope: !1751)
!1754 = !DILocation(line: 423, column: 15, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !448, line: 423, column: 15)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !448, line: 423, column: 15)
!1757 = !DILocation(line: 423, column: 15, scope: !1756)
!1758 = !DILocation(line: 423, column: 15, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !448, line: 423, column: 15)
!1760 = distinct !DILexicalBlock(scope: !1752, file: !448, line: 423, column: 15)
!1761 = !DILocation(line: 423, column: 15, scope: !1760)
!1762 = !DILocation(line: 423, column: 15, scope: !1752)
!1763 = !DILocation(line: 423, column: 15, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !448, line: 423, column: 15)
!1765 = distinct !DILexicalBlock(scope: !1744, file: !448, line: 423, column: 15)
!1766 = !DILocation(line: 423, column: 15, scope: !1765)
!1767 = !DILocation(line: 431, column: 19, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1745, file: !448, line: 430, column: 19)
!1769 = !DILocation(line: 431, column: 24, scope: !1768)
!1770 = !DILocation(line: 431, column: 28, scope: !1768)
!1771 = !DILocation(line: 431, column: 38, scope: !1768)
!1772 = !DILocation(line: 431, column: 48, scope: !1768)
!1773 = !DILocation(line: 431, column: 59, scope: !1768)
!1774 = !DILocation(line: 433, column: 19, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !448, line: 433, column: 19)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !448, line: 433, column: 19)
!1777 = distinct !DILexicalBlock(scope: !1768, file: !448, line: 432, column: 17)
!1778 = !DILocation(line: 433, column: 19, scope: !1776)
!1779 = !DILocation(line: 434, column: 19, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !448, line: 434, column: 19)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !448, line: 434, column: 19)
!1782 = !DILocation(line: 434, column: 19, scope: !1781)
!1783 = !DILocation(line: 435, column: 17, scope: !1777)
!1784 = !DILocation(line: 442, column: 20, scope: !1746)
!1785 = !DILocation(line: 447, column: 11, scope: !1578)
!1786 = !DILocation(line: 450, column: 19, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1578, file: !448, line: 448, column: 13)
!1788 = !DILocation(line: 456, column: 19, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1787, file: !448, line: 455, column: 19)
!1790 = !DILocation(line: 456, column: 24, scope: !1789)
!1791 = !DILocation(line: 456, column: 28, scope: !1789)
!1792 = !DILocation(line: 456, column: 38, scope: !1789)
!1793 = !DILocation(line: 456, column: 41, scope: !1789)
!1794 = !DILocation(line: 456, column: 52, scope: !1789)
!1795 = !DILocation(line: 455, column: 19, scope: !1787)
!1796 = !DILocation(line: 457, column: 25, scope: !1789)
!1797 = !DILocation(line: 457, column: 17, scope: !1789)
!1798 = !DILocation(line: 464, column: 25, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1789, file: !448, line: 458, column: 19)
!1800 = !DILocation(line: 468, column: 21, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !448, line: 468, column: 21)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !448, line: 468, column: 21)
!1803 = !DILocation(line: 468, column: 21, scope: !1802)
!1804 = !DILocation(line: 469, column: 21, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !448, line: 469, column: 21)
!1806 = distinct !DILexicalBlock(scope: !1799, file: !448, line: 469, column: 21)
!1807 = !DILocation(line: 469, column: 21, scope: !1806)
!1808 = !DILocation(line: 470, column: 21, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !448, line: 470, column: 21)
!1810 = distinct !DILexicalBlock(scope: !1799, file: !448, line: 470, column: 21)
!1811 = !DILocation(line: 470, column: 21, scope: !1810)
!1812 = !DILocation(line: 471, column: 21, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !448, line: 471, column: 21)
!1814 = distinct !DILexicalBlock(scope: !1799, file: !448, line: 471, column: 21)
!1815 = !DILocation(line: 471, column: 21, scope: !1814)
!1816 = !DILocation(line: 472, column: 21, scope: !1799)
!1817 = !DILocation(line: 482, column: 33, scope: !1577)
!1818 = !DILocation(line: 483, column: 33, scope: !1577)
!1819 = !DILocation(line: 485, column: 33, scope: !1577)
!1820 = !DILocation(line: 486, column: 33, scope: !1577)
!1821 = !DILocation(line: 487, column: 33, scope: !1577)
!1822 = !DILocation(line: 490, column: 17, scope: !1577)
!1823 = !DILocation(line: 492, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !448, line: 491, column: 15)
!1825 = distinct !DILexicalBlock(scope: !1577, file: !448, line: 490, column: 17)
!1826 = !DILocation(line: 499, column: 35, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1577, file: !448, line: 499, column: 17)
!1828 = !DILocation(line: 499, column: 57, scope: !1827)
!1829 = !DILocation(line: 0, scope: !1577)
!1830 = !DILocation(line: 502, column: 11, scope: !1577)
!1831 = !DILocation(line: 504, column: 17, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1577, file: !448, line: 503, column: 17)
!1833 = !DILocation(line: 507, column: 11, scope: !1577)
!1834 = !DILocation(line: 508, column: 17, scope: !1577)
!1835 = !DILocation(line: 517, column: 15, scope: !1578)
!1836 = !DILocation(line: 517, column: 40, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1578, file: !448, line: 517, column: 15)
!1838 = !DILocation(line: 517, column: 47, scope: !1837)
!1839 = !DILocation(line: 517, column: 18, scope: !1837)
!1840 = !DILocation(line: 521, column: 17, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1578, file: !448, line: 521, column: 15)
!1842 = !DILocation(line: 521, column: 15, scope: !1578)
!1843 = !DILocation(line: 525, column: 11, scope: !1578)
!1844 = !DILocation(line: 537, column: 15, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1578, file: !448, line: 536, column: 15)
!1846 = !DILocation(line: 544, column: 15, scope: !1578)
!1847 = !DILocation(line: 546, column: 19, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !448, line: 545, column: 13)
!1849 = distinct !DILexicalBlock(scope: !1578, file: !448, line: 544, column: 15)
!1850 = !DILocation(line: 549, column: 19, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !448, line: 549, column: 19)
!1852 = !DILocation(line: 549, column: 30, scope: !1851)
!1853 = !DILocation(line: 558, column: 15, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !448, line: 558, column: 15)
!1855 = distinct !DILexicalBlock(scope: !1848, file: !448, line: 558, column: 15)
!1856 = !DILocation(line: 558, column: 15, scope: !1855)
!1857 = !DILocation(line: 559, column: 15, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !448, line: 559, column: 15)
!1859 = distinct !DILexicalBlock(scope: !1848, file: !448, line: 559, column: 15)
!1860 = !DILocation(line: 559, column: 15, scope: !1859)
!1861 = !DILocation(line: 560, column: 15, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !448, line: 560, column: 15)
!1863 = distinct !DILexicalBlock(scope: !1848, file: !448, line: 560, column: 15)
!1864 = !DILocation(line: 560, column: 15, scope: !1863)
!1865 = !DILocation(line: 562, column: 13, scope: !1848)
!1866 = !DILocation(line: 602, column: 17, scope: !1581)
!1867 = !DILocation(line: 0, scope: !1581)
!1868 = !DILocation(line: 605, column: 29, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1585, file: !448, line: 603, column: 15)
!1870 = !DILocation(line: 605, column: 27, scope: !1869)
!1871 = !DILocation(line: 606, column: 15, scope: !1869)
!1872 = !DILocation(line: 609, column: 17, scope: !1584)
!1873 = !DILocation(line: 0, scope: !1644, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 609, column: 32, scope: !1584)
!1875 = !DILocation(line: 0, scope: !1652, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 1137, column: 3, scope: !1644, inlinedAt: !1874)
!1877 = !DILocation(line: 59, column: 10, scope: !1652, inlinedAt: !1876)
!1878 = !DILocation(line: 613, column: 29, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1584, file: !448, line: 613, column: 21)
!1880 = !DILocation(line: 613, column: 21, scope: !1584)
!1881 = !DILocation(line: 614, column: 29, scope: !1879)
!1882 = !DILocation(line: 614, column: 19, scope: !1879)
!1883 = !DILocation(line: 618, column: 21, scope: !1587)
!1884 = !DILocation(line: 620, column: 54, scope: !1587)
!1885 = !DILocation(line: 619, column: 36, scope: !1587)
!1886 = !DILocation(line: 621, column: 25, scope: !1587)
!1887 = !DILocation(line: 631, column: 38, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1596, file: !448, line: 629, column: 23)
!1889 = !DILocation(line: 631, column: 48, scope: !1888)
!1890 = !DILocation(line: 626, column: 25, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1597, file: !448, line: 624, column: 23)
!1892 = !DILocation(line: 631, column: 51, scope: !1888)
!1893 = !DILocation(line: 631, column: 25, scope: !1888)
!1894 = !DILocation(line: 632, column: 28, scope: !1888)
!1895 = !DILocation(line: 631, column: 34, scope: !1888)
!1896 = distinct !{!1896, !1893, !1894, !875}
!1897 = !DILocation(line: 0, scope: !1592)
!1898 = !DILocation(line: 646, column: 29, scope: !1594)
!1899 = !DILocation(line: 649, column: 39, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1592, file: !448, line: 648, column: 29)
!1901 = !DILocation(line: 649, column: 31, scope: !1900)
!1902 = !DILocation(line: 648, column: 60, scope: !1900)
!1903 = !DILocation(line: 648, column: 50, scope: !1900)
!1904 = !DILocation(line: 648, column: 29, scope: !1592)
!1905 = distinct !{!1905, !1904, !1906, !875}
!1906 = !DILocation(line: 654, column: 33, scope: !1592)
!1907 = !DILocation(line: 657, column: 43, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1595, file: !448, line: 657, column: 29)
!1909 = !DILocalVariable(name: "wc", arg: 1, scope: !1910, file: !1911, line: 865, type: !1914)
!1910 = distinct !DISubprogram(name: "c32isprint", scope: !1911, file: !1911, line: 865, type: !1912, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1916)
!1911 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!70, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1915, line: 20, baseType: !62)
!1915 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1916 = !{!1909}
!1917 = !DILocation(line: 0, scope: !1910, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 657, column: 31, scope: !1908)
!1919 = !DILocation(line: 871, column: 10, scope: !1910, inlinedAt: !1918)
!1920 = !DILocation(line: 657, column: 31, scope: !1908)
!1921 = !DILocation(line: 664, column: 23, scope: !1587)
!1922 = !DILocation(line: 665, column: 19, scope: !1588)
!1923 = !DILocation(line: 666, column: 15, scope: !1585)
!1924 = !DILocation(line: 0, scope: !1585)
!1925 = !DILocation(line: 670, column: 19, scope: !1601)
!1926 = !DILocation(line: 670, column: 23, scope: !1601)
!1927 = !DILocation(line: 674, column: 33, scope: !1600)
!1928 = !DILocation(line: 0, scope: !1600)
!1929 = !DILocation(line: 676, column: 17, scope: !1600)
!1930 = !DILocation(line: 398, column: 12, scope: !1571)
!1931 = !DILocation(line: 678, column: 43, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !448, line: 678, column: 25)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !448, line: 677, column: 19)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !448, line: 676, column: 17)
!1935 = distinct !DILexicalBlock(scope: !1600, file: !448, line: 676, column: 17)
!1936 = !DILocation(line: 680, column: 25, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !448, line: 680, column: 25)
!1938 = distinct !DILexicalBlock(scope: !1932, file: !448, line: 679, column: 23)
!1939 = !DILocation(line: 680, column: 25, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !448, line: 680, column: 25)
!1941 = !DILocation(line: 680, column: 25, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !448, line: 680, column: 25)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !448, line: 680, column: 25)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !448, line: 680, column: 25)
!1945 = !DILocation(line: 680, column: 25, scope: !1943)
!1946 = !DILocation(line: 680, column: 25, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !448, line: 680, column: 25)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !448, line: 680, column: 25)
!1949 = !DILocation(line: 680, column: 25, scope: !1948)
!1950 = !DILocation(line: 680, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !448, line: 680, column: 25)
!1952 = distinct !DILexicalBlock(scope: !1944, file: !448, line: 680, column: 25)
!1953 = !DILocation(line: 680, column: 25, scope: !1952)
!1954 = !DILocation(line: 680, column: 25, scope: !1944)
!1955 = !DILocation(line: 680, column: 25, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !448, line: 680, column: 25)
!1957 = distinct !DILexicalBlock(scope: !1937, file: !448, line: 680, column: 25)
!1958 = !DILocation(line: 680, column: 25, scope: !1957)
!1959 = !DILocation(line: 681, column: 25, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !448, line: 681, column: 25)
!1961 = distinct !DILexicalBlock(scope: !1938, file: !448, line: 681, column: 25)
!1962 = !DILocation(line: 681, column: 25, scope: !1961)
!1963 = !DILocation(line: 682, column: 25, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !448, line: 682, column: 25)
!1965 = distinct !DILexicalBlock(scope: !1938, file: !448, line: 682, column: 25)
!1966 = !DILocation(line: 682, column: 25, scope: !1965)
!1967 = !DILocation(line: 683, column: 38, scope: !1938)
!1968 = !DILocation(line: 683, column: 33, scope: !1938)
!1969 = !DILocation(line: 684, column: 23, scope: !1938)
!1970 = !DILocation(line: 685, column: 30, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1932, file: !448, line: 685, column: 30)
!1972 = !DILocation(line: 685, column: 30, scope: !1932)
!1973 = !DILocation(line: 687, column: 25, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !448, line: 687, column: 25)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !448, line: 687, column: 25)
!1976 = distinct !DILexicalBlock(scope: !1971, file: !448, line: 686, column: 23)
!1977 = !DILocation(line: 687, column: 25, scope: !1975)
!1978 = !DILocation(line: 689, column: 23, scope: !1976)
!1979 = !DILocation(line: 690, column: 35, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1933, file: !448, line: 690, column: 25)
!1981 = !DILocation(line: 690, column: 30, scope: !1980)
!1982 = !DILocation(line: 690, column: 25, scope: !1933)
!1983 = !DILocation(line: 692, column: 21, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !448, line: 692, column: 21)
!1985 = distinct !DILexicalBlock(scope: !1933, file: !448, line: 692, column: 21)
!1986 = !DILocation(line: 692, column: 21, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !448, line: 692, column: 21)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !448, line: 692, column: 21)
!1989 = distinct !DILexicalBlock(scope: !1984, file: !448, line: 692, column: 21)
!1990 = !DILocation(line: 692, column: 21, scope: !1988)
!1991 = !DILocation(line: 692, column: 21, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !448, line: 692, column: 21)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !448, line: 692, column: 21)
!1994 = !DILocation(line: 692, column: 21, scope: !1993)
!1995 = !DILocation(line: 692, column: 21, scope: !1989)
!1996 = !DILocation(line: 0, scope: !1933)
!1997 = !DILocation(line: 693, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !448, line: 693, column: 21)
!1999 = distinct !DILexicalBlock(scope: !1933, file: !448, line: 693, column: 21)
!2000 = !DILocation(line: 693, column: 21, scope: !1999)
!2001 = !DILocation(line: 694, column: 25, scope: !1933)
!2002 = !DILocation(line: 676, column: 17, scope: !1934)
!2003 = distinct !{!2003, !2004, !2005}
!2004 = !DILocation(line: 676, column: 17, scope: !1935)
!2005 = !DILocation(line: 695, column: 19, scope: !1935)
!2006 = !DILocation(line: 409, column: 30, scope: !1722)
!2007 = !DILocation(line: 702, column: 34, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1571, file: !448, line: 702, column: 11)
!2009 = !DILocation(line: 704, column: 14, scope: !2008)
!2010 = !DILocation(line: 705, column: 14, scope: !2008)
!2011 = !DILocation(line: 705, column: 35, scope: !2008)
!2012 = !DILocation(line: 705, column: 17, scope: !2008)
!2013 = !DILocation(line: 705, column: 47, scope: !2008)
!2014 = !DILocation(line: 705, column: 65, scope: !2008)
!2015 = !DILocation(line: 706, column: 11, scope: !2008)
!2016 = !DILocation(line: 702, column: 11, scope: !1571)
!2017 = !DILocation(line: 395, column: 15, scope: !1569)
!2018 = !DILocation(line: 709, column: 5, scope: !1571)
!2019 = !DILocation(line: 710, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1571, file: !448, line: 710, column: 7)
!2021 = !DILocation(line: 710, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2020, file: !448, line: 710, column: 7)
!2023 = !DILocation(line: 710, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !448, line: 710, column: 7)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !448, line: 710, column: 7)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !448, line: 710, column: 7)
!2027 = !DILocation(line: 710, column: 7, scope: !2025)
!2028 = !DILocation(line: 710, column: 7, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !448, line: 710, column: 7)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !448, line: 710, column: 7)
!2031 = !DILocation(line: 710, column: 7, scope: !2030)
!2032 = !DILocation(line: 710, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !448, line: 710, column: 7)
!2034 = distinct !DILexicalBlock(scope: !2026, file: !448, line: 710, column: 7)
!2035 = !DILocation(line: 710, column: 7, scope: !2034)
!2036 = !DILocation(line: 710, column: 7, scope: !2026)
!2037 = !DILocation(line: 710, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !448, line: 710, column: 7)
!2039 = distinct !DILexicalBlock(scope: !2020, file: !448, line: 710, column: 7)
!2040 = !DILocation(line: 710, column: 7, scope: !2039)
!2041 = !DILocation(line: 712, column: 5, scope: !1571)
!2042 = !DILocation(line: 713, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !448, line: 713, column: 7)
!2044 = distinct !DILexicalBlock(scope: !1571, file: !448, line: 713, column: 7)
!2045 = !DILocation(line: 417, column: 21, scope: !1571)
!2046 = !DILocation(line: 713, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !448, line: 713, column: 7)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !448, line: 713, column: 7)
!2049 = distinct !DILexicalBlock(scope: !2043, file: !448, line: 713, column: 7)
!2050 = !DILocation(line: 713, column: 7, scope: !2048)
!2051 = !DILocation(line: 713, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !448, line: 713, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !448, line: 713, column: 7)
!2054 = !DILocation(line: 713, column: 7, scope: !2053)
!2055 = !DILocation(line: 713, column: 7, scope: !2049)
!2056 = !DILocation(line: 714, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !448, line: 714, column: 7)
!2058 = distinct !DILexicalBlock(scope: !1571, file: !448, line: 714, column: 7)
!2059 = !DILocation(line: 714, column: 7, scope: !2058)
!2060 = !DILocation(line: 716, column: 13, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1571, file: !448, line: 716, column: 11)
!2062 = !DILocation(line: 716, column: 11, scope: !1571)
!2063 = !DILocation(line: 718, column: 5, scope: !1572)
!2064 = !DILocation(line: 395, column: 82, scope: !1572)
!2065 = !DILocation(line: 395, column: 3, scope: !1572)
!2066 = distinct !{!2066, !1718, !2067, !875}
!2067 = !DILocation(line: 718, column: 5, scope: !1569)
!2068 = !DILocation(line: 720, column: 11, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1537, file: !448, line: 720, column: 7)
!2070 = !DILocation(line: 720, column: 16, scope: !2069)
!2071 = !DILocation(line: 728, column: 51, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1537, file: !448, line: 728, column: 7)
!2073 = !DILocation(line: 731, column: 11, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !448, line: 731, column: 11)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !448, line: 730, column: 5)
!2076 = !DILocation(line: 731, column: 11, scope: !2075)
!2077 = !DILocation(line: 732, column: 16, scope: !2074)
!2078 = !DILocation(line: 732, column: 9, scope: !2074)
!2079 = !DILocation(line: 736, column: 18, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2074, file: !448, line: 736, column: 16)
!2081 = !DILocation(line: 736, column: 29, scope: !2080)
!2082 = !DILocation(line: 745, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1537, file: !448, line: 745, column: 7)
!2084 = !DILocation(line: 745, column: 20, scope: !2083)
!2085 = !DILocation(line: 746, column: 12, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !448, line: 746, column: 5)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !448, line: 746, column: 5)
!2088 = !DILocation(line: 746, column: 5, scope: !2087)
!2089 = !DILocation(line: 747, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !448, line: 747, column: 7)
!2091 = distinct !DILexicalBlock(scope: !2086, file: !448, line: 747, column: 7)
!2092 = !DILocation(line: 747, column: 7, scope: !2091)
!2093 = !DILocation(line: 746, column: 39, scope: !2086)
!2094 = distinct !{!2094, !2088, !2095, !875}
!2095 = !DILocation(line: 747, column: 7, scope: !2087)
!2096 = !DILocation(line: 749, column: 11, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1537, file: !448, line: 749, column: 7)
!2098 = !DILocation(line: 749, column: 7, scope: !1537)
!2099 = !DILocation(line: 750, column: 5, scope: !2097)
!2100 = !DILocation(line: 750, column: 17, scope: !2097)
!2101 = !DILocation(line: 753, column: 2, scope: !1537)
!2102 = !DILocation(line: 756, column: 51, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1537, file: !448, line: 756, column: 7)
!2104 = !DILocation(line: 756, column: 21, scope: !2103)
!2105 = !DILocation(line: 760, column: 42, scope: !1537)
!2106 = !DILocation(line: 758, column: 10, scope: !1537)
!2107 = !DILocation(line: 758, column: 3, scope: !1537)
!2108 = !DILocation(line: 762, column: 1, scope: !1537)
!2109 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !952, file: !952, line: 98, type: !2110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!93}
!2112 = !DISubprogram(name: "strlen", scope: !948, file: !948, line: 407, type: !2113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!95, !96}
!2115 = !DISubprogram(name: "iswprint", scope: !2116, file: !2116, line: 120, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2117 = distinct !DISubprogram(name: "quotearg_alloc", scope: !448, file: !448, line: 788, type: !2118, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!90, !96, !93, !1430}
!2120 = !{!2121, !2122, !2123}
!2121 = !DILocalVariable(name: "arg", arg: 1, scope: !2117, file: !448, line: 788, type: !96)
!2122 = !DILocalVariable(name: "argsize", arg: 2, scope: !2117, file: !448, line: 788, type: !93)
!2123 = !DILocalVariable(name: "o", arg: 3, scope: !2117, file: !448, line: 789, type: !1430)
!2124 = !DILocation(line: 0, scope: !2117)
!2125 = !DILocalVariable(name: "arg", arg: 1, scope: !2126, file: !448, line: 801, type: !96)
!2126 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !448, file: !448, line: 801, type: !2127, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!90, !96, !93, !699, !1430}
!2129 = !{!2125, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137}
!2130 = !DILocalVariable(name: "argsize", arg: 2, scope: !2126, file: !448, line: 801, type: !93)
!2131 = !DILocalVariable(name: "size", arg: 3, scope: !2126, file: !448, line: 801, type: !699)
!2132 = !DILocalVariable(name: "o", arg: 4, scope: !2126, file: !448, line: 802, type: !1430)
!2133 = !DILocalVariable(name: "p", scope: !2126, file: !448, line: 804, type: !1430)
!2134 = !DILocalVariable(name: "saved_errno", scope: !2126, file: !448, line: 805, type: !70)
!2135 = !DILocalVariable(name: "flags", scope: !2126, file: !448, line: 807, type: !70)
!2136 = !DILocalVariable(name: "bufsize", scope: !2126, file: !448, line: 808, type: !93)
!2137 = !DILocalVariable(name: "buf", scope: !2126, file: !448, line: 812, type: !90)
!2138 = !DILocation(line: 0, scope: !2126, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 791, column: 10, scope: !2117)
!2140 = !DILocation(line: 804, column: 37, scope: !2126, inlinedAt: !2139)
!2141 = !DILocation(line: 805, column: 21, scope: !2126, inlinedAt: !2139)
!2142 = !DILocation(line: 807, column: 18, scope: !2126, inlinedAt: !2139)
!2143 = !DILocation(line: 807, column: 24, scope: !2126, inlinedAt: !2139)
!2144 = !DILocation(line: 808, column: 72, scope: !2126, inlinedAt: !2139)
!2145 = !DILocation(line: 809, column: 56, scope: !2126, inlinedAt: !2139)
!2146 = !DILocation(line: 810, column: 49, scope: !2126, inlinedAt: !2139)
!2147 = !DILocation(line: 811, column: 49, scope: !2126, inlinedAt: !2139)
!2148 = !DILocation(line: 808, column: 20, scope: !2126, inlinedAt: !2139)
!2149 = !DILocation(line: 811, column: 62, scope: !2126, inlinedAt: !2139)
!2150 = !DILocation(line: 812, column: 15, scope: !2126, inlinedAt: !2139)
!2151 = !DILocation(line: 813, column: 60, scope: !2126, inlinedAt: !2139)
!2152 = !DILocation(line: 815, column: 32, scope: !2126, inlinedAt: !2139)
!2153 = !DILocation(line: 815, column: 47, scope: !2126, inlinedAt: !2139)
!2154 = !DILocation(line: 813, column: 3, scope: !2126, inlinedAt: !2139)
!2155 = !DILocation(line: 816, column: 9, scope: !2126, inlinedAt: !2139)
!2156 = !DILocation(line: 791, column: 3, scope: !2117)
!2157 = !DILocation(line: 0, scope: !2126)
!2158 = !DILocation(line: 804, column: 37, scope: !2126)
!2159 = !DILocation(line: 805, column: 21, scope: !2126)
!2160 = !DILocation(line: 807, column: 18, scope: !2126)
!2161 = !DILocation(line: 807, column: 27, scope: !2126)
!2162 = !DILocation(line: 807, column: 24, scope: !2126)
!2163 = !DILocation(line: 808, column: 72, scope: !2126)
!2164 = !DILocation(line: 809, column: 56, scope: !2126)
!2165 = !DILocation(line: 810, column: 49, scope: !2126)
!2166 = !DILocation(line: 811, column: 49, scope: !2126)
!2167 = !DILocation(line: 808, column: 20, scope: !2126)
!2168 = !DILocation(line: 811, column: 62, scope: !2126)
!2169 = !DILocation(line: 812, column: 15, scope: !2126)
!2170 = !DILocation(line: 813, column: 60, scope: !2126)
!2171 = !DILocation(line: 815, column: 32, scope: !2126)
!2172 = !DILocation(line: 815, column: 47, scope: !2126)
!2173 = !DILocation(line: 813, column: 3, scope: !2126)
!2174 = !DILocation(line: 816, column: 9, scope: !2126)
!2175 = !DILocation(line: 817, column: 7, scope: !2126)
!2176 = !DILocation(line: 818, column: 11, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2126, file: !448, line: 817, column: 7)
!2178 = !{!1241, !1241, i64 0}
!2179 = !DILocation(line: 818, column: 5, scope: !2177)
!2180 = !DILocation(line: 819, column: 3, scope: !2126)
!2181 = distinct !DISubprogram(name: "quotearg_free", scope: !448, file: !448, line: 837, type: !403, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2182)
!2182 = !{!2183, !2184}
!2183 = !DILocalVariable(name: "sv", scope: !2181, file: !448, line: 839, type: !549)
!2184 = !DILocalVariable(name: "i", scope: !2185, file: !448, line: 840, type: !70)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !448, line: 840, column: 3)
!2186 = !DILocation(line: 839, column: 24, scope: !2181)
!2187 = !DILocation(line: 0, scope: !2181)
!2188 = !DILocation(line: 0, scope: !2185)
!2189 = !DILocation(line: 840, column: 21, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !448, line: 840, column: 3)
!2191 = !DILocation(line: 840, column: 3, scope: !2185)
!2192 = !DILocation(line: 842, column: 13, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2181, file: !448, line: 842, column: 7)
!2194 = !{!2195, !767, i64 8}
!2195 = !{!"slotvec", !1241, i64 0, !767, i64 8}
!2196 = !DILocation(line: 842, column: 17, scope: !2193)
!2197 = !DILocation(line: 842, column: 7, scope: !2181)
!2198 = !DILocation(line: 841, column: 17, scope: !2190)
!2199 = !DILocation(line: 841, column: 5, scope: !2190)
!2200 = !DILocation(line: 840, column: 32, scope: !2190)
!2201 = distinct !{!2201, !2191, !2202, !875}
!2202 = !DILocation(line: 841, column: 20, scope: !2185)
!2203 = !DILocation(line: 844, column: 7, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2193, file: !448, line: 843, column: 5)
!2205 = !DILocation(line: 845, column: 21, scope: !2204)
!2206 = !{!2195, !1241, i64 0}
!2207 = !DILocation(line: 846, column: 20, scope: !2204)
!2208 = !DILocation(line: 847, column: 5, scope: !2204)
!2209 = !DILocation(line: 848, column: 10, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2181, file: !448, line: 848, column: 7)
!2211 = !DILocation(line: 848, column: 7, scope: !2181)
!2212 = !DILocation(line: 850, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !448, line: 849, column: 5)
!2214 = !DILocation(line: 851, column: 15, scope: !2213)
!2215 = !DILocation(line: 852, column: 5, scope: !2213)
!2216 = !DILocation(line: 853, column: 10, scope: !2181)
!2217 = !DILocation(line: 854, column: 1, scope: !2181)
!2218 = !DISubprogram(name: "free", scope: !1384, file: !1384, line: 786, type: !2219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !91}
!2221 = distinct !DISubprogram(name: "quotearg_n", scope: !448, file: !448, line: 919, type: !945, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2222)
!2222 = !{!2223, !2224}
!2223 = !DILocalVariable(name: "n", arg: 1, scope: !2221, file: !448, line: 919, type: !70)
!2224 = !DILocalVariable(name: "arg", arg: 2, scope: !2221, file: !448, line: 919, type: !96)
!2225 = !DILocation(line: 0, scope: !2221)
!2226 = !DILocation(line: 921, column: 10, scope: !2221)
!2227 = !DILocation(line: 921, column: 3, scope: !2221)
!2228 = distinct !DISubprogram(name: "quotearg_n_options", scope: !448, file: !448, line: 866, type: !2229, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!90, !70, !96, !93, !1430}
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2242, !2243, !2245, !2246, !2247}
!2232 = !DILocalVariable(name: "n", arg: 1, scope: !2228, file: !448, line: 866, type: !70)
!2233 = !DILocalVariable(name: "arg", arg: 2, scope: !2228, file: !448, line: 866, type: !96)
!2234 = !DILocalVariable(name: "argsize", arg: 3, scope: !2228, file: !448, line: 866, type: !93)
!2235 = !DILocalVariable(name: "options", arg: 4, scope: !2228, file: !448, line: 867, type: !1430)
!2236 = !DILocalVariable(name: "saved_errno", scope: !2228, file: !448, line: 869, type: !70)
!2237 = !DILocalVariable(name: "sv", scope: !2228, file: !448, line: 871, type: !549)
!2238 = !DILocalVariable(name: "nslots_max", scope: !2228, file: !448, line: 873, type: !70)
!2239 = !DILocalVariable(name: "preallocated", scope: !2240, file: !448, line: 879, type: !121)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !448, line: 878, column: 5)
!2241 = distinct !DILexicalBlock(scope: !2228, file: !448, line: 877, column: 7)
!2242 = !DILocalVariable(name: "new_nslots", scope: !2240, file: !448, line: 880, type: !712)
!2243 = !DILocalVariable(name: "size", scope: !2244, file: !448, line: 891, type: !93)
!2244 = distinct !DILexicalBlock(scope: !2228, file: !448, line: 890, column: 3)
!2245 = !DILocalVariable(name: "val", scope: !2244, file: !448, line: 892, type: !90)
!2246 = !DILocalVariable(name: "flags", scope: !2244, file: !448, line: 894, type: !70)
!2247 = !DILocalVariable(name: "qsize", scope: !2244, file: !448, line: 895, type: !93)
!2248 = distinct !DIAssignID()
!2249 = !DILocation(line: 0, scope: !2240)
!2250 = !DILocation(line: 0, scope: !2228)
!2251 = !DILocation(line: 869, column: 21, scope: !2228)
!2252 = !DILocation(line: 871, column: 24, scope: !2228)
!2253 = !DILocation(line: 874, column: 17, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2228, file: !448, line: 874, column: 7)
!2255 = !DILocation(line: 875, column: 5, scope: !2254)
!2256 = !DILocation(line: 877, column: 7, scope: !2241)
!2257 = !DILocation(line: 877, column: 14, scope: !2241)
!2258 = !DILocation(line: 877, column: 7, scope: !2228)
!2259 = !DILocation(line: 879, column: 31, scope: !2240)
!2260 = !DILocation(line: 880, column: 7, scope: !2240)
!2261 = !DILocation(line: 880, column: 26, scope: !2240)
!2262 = !DILocation(line: 880, column: 13, scope: !2240)
!2263 = distinct !DIAssignID()
!2264 = !DILocation(line: 882, column: 31, scope: !2240)
!2265 = !DILocation(line: 883, column: 33, scope: !2240)
!2266 = !DILocation(line: 883, column: 42, scope: !2240)
!2267 = !DILocation(line: 883, column: 31, scope: !2240)
!2268 = !DILocation(line: 882, column: 22, scope: !2240)
!2269 = !DILocation(line: 882, column: 15, scope: !2240)
!2270 = !DILocation(line: 884, column: 11, scope: !2240)
!2271 = !DILocation(line: 885, column: 15, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2240, file: !448, line: 884, column: 11)
!2273 = !{i64 0, i64 8, !2178, i64 8, i64 8, !766}
!2274 = !DILocation(line: 885, column: 9, scope: !2272)
!2275 = !DILocation(line: 886, column: 20, scope: !2240)
!2276 = !DILocation(line: 886, column: 18, scope: !2240)
!2277 = !DILocation(line: 886, column: 32, scope: !2240)
!2278 = !DILocation(line: 886, column: 43, scope: !2240)
!2279 = !DILocation(line: 886, column: 53, scope: !2240)
!2280 = !DILocation(line: 0, scope: !1652, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 886, column: 7, scope: !2240)
!2282 = !DILocation(line: 59, column: 10, scope: !1652, inlinedAt: !2281)
!2283 = !DILocation(line: 887, column: 16, scope: !2240)
!2284 = !DILocation(line: 887, column: 14, scope: !2240)
!2285 = !DILocation(line: 888, column: 5, scope: !2241)
!2286 = !DILocation(line: 888, column: 5, scope: !2240)
!2287 = !DILocation(line: 891, column: 19, scope: !2244)
!2288 = !DILocation(line: 891, column: 25, scope: !2244)
!2289 = !DILocation(line: 0, scope: !2244)
!2290 = !DILocation(line: 892, column: 23, scope: !2244)
!2291 = !DILocation(line: 894, column: 26, scope: !2244)
!2292 = !DILocation(line: 894, column: 32, scope: !2244)
!2293 = !DILocation(line: 896, column: 55, scope: !2244)
!2294 = !DILocation(line: 897, column: 55, scope: !2244)
!2295 = !DILocation(line: 898, column: 55, scope: !2244)
!2296 = !DILocation(line: 899, column: 55, scope: !2244)
!2297 = !DILocation(line: 895, column: 20, scope: !2244)
!2298 = !DILocation(line: 901, column: 14, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2244, file: !448, line: 901, column: 9)
!2300 = !DILocation(line: 901, column: 9, scope: !2244)
!2301 = !DILocation(line: 903, column: 35, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !448, line: 902, column: 7)
!2303 = !DILocation(line: 903, column: 20, scope: !2302)
!2304 = !DILocation(line: 904, column: 17, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !448, line: 904, column: 13)
!2306 = !DILocation(line: 904, column: 13, scope: !2302)
!2307 = !DILocation(line: 905, column: 11, scope: !2305)
!2308 = !DILocation(line: 906, column: 27, scope: !2302)
!2309 = !DILocation(line: 906, column: 19, scope: !2302)
!2310 = !DILocation(line: 907, column: 69, scope: !2302)
!2311 = !DILocation(line: 909, column: 44, scope: !2302)
!2312 = !DILocation(line: 910, column: 44, scope: !2302)
!2313 = !DILocation(line: 907, column: 9, scope: !2302)
!2314 = !DILocation(line: 911, column: 7, scope: !2302)
!2315 = !DILocation(line: 913, column: 11, scope: !2244)
!2316 = !DILocation(line: 914, column: 5, scope: !2244)
!2317 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !448, file: !448, line: 925, type: !2318, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!90, !70, !96, !93}
!2320 = !{!2321, !2322, !2323}
!2321 = !DILocalVariable(name: "n", arg: 1, scope: !2317, file: !448, line: 925, type: !70)
!2322 = !DILocalVariable(name: "arg", arg: 2, scope: !2317, file: !448, line: 925, type: !96)
!2323 = !DILocalVariable(name: "argsize", arg: 3, scope: !2317, file: !448, line: 925, type: !93)
!2324 = !DILocation(line: 0, scope: !2317)
!2325 = !DILocation(line: 927, column: 10, scope: !2317)
!2326 = !DILocation(line: 927, column: 3, scope: !2317)
!2327 = distinct !DISubprogram(name: "quotearg", scope: !448, file: !448, line: 931, type: !954, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2328)
!2328 = !{!2329}
!2329 = !DILocalVariable(name: "arg", arg: 1, scope: !2327, file: !448, line: 931, type: !96)
!2330 = !DILocation(line: 0, scope: !2327)
!2331 = !DILocation(line: 0, scope: !2221, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 933, column: 10, scope: !2327)
!2333 = !DILocation(line: 921, column: 10, scope: !2221, inlinedAt: !2332)
!2334 = !DILocation(line: 933, column: 3, scope: !2327)
!2335 = distinct !DISubprogram(name: "quotearg_mem", scope: !448, file: !448, line: 937, type: !2336, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!90, !96, !93}
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "arg", arg: 1, scope: !2335, file: !448, line: 937, type: !96)
!2340 = !DILocalVariable(name: "argsize", arg: 2, scope: !2335, file: !448, line: 937, type: !93)
!2341 = !DILocation(line: 0, scope: !2335)
!2342 = !DILocation(line: 0, scope: !2317, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 939, column: 10, scope: !2335)
!2344 = !DILocation(line: 927, column: 10, scope: !2317, inlinedAt: !2343)
!2345 = !DILocation(line: 939, column: 3, scope: !2335)
!2346 = distinct !DISubprogram(name: "quotearg_n_style", scope: !448, file: !448, line: 943, type: !2347, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!90, !70, !474, !96}
!2349 = !{!2350, !2351, !2352, !2353}
!2350 = !DILocalVariable(name: "n", arg: 1, scope: !2346, file: !448, line: 943, type: !70)
!2351 = !DILocalVariable(name: "s", arg: 2, scope: !2346, file: !448, line: 943, type: !474)
!2352 = !DILocalVariable(name: "arg", arg: 3, scope: !2346, file: !448, line: 943, type: !96)
!2353 = !DILocalVariable(name: "o", scope: !2346, file: !448, line: 945, type: !1431)
!2354 = distinct !DIAssignID()
!2355 = !DILocation(line: 0, scope: !2346)
!2356 = !DILocation(line: 945, column: 3, scope: !2346)
!2357 = !{!2358}
!2358 = distinct !{!2358, !2359, !"quoting_options_from_style: argument 0"}
!2359 = distinct !{!2359, !"quoting_options_from_style"}
!2360 = !DILocation(line: 945, column: 36, scope: !2346)
!2361 = !DILocalVariable(name: "style", arg: 1, scope: !2362, file: !448, line: 183, type: !474)
!2362 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !448, file: !448, line: 183, type: !2363, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!501, !474}
!2365 = !{!2361, !2366}
!2366 = !DILocalVariable(name: "o", scope: !2362, file: !448, line: 185, type: !501)
!2367 = !DILocation(line: 0, scope: !2362, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 945, column: 36, scope: !2346)
!2369 = !DILocation(line: 185, column: 26, scope: !2362, inlinedAt: !2368)
!2370 = distinct !DIAssignID()
!2371 = !DILocation(line: 186, column: 13, scope: !2372, inlinedAt: !2368)
!2372 = distinct !DILexicalBlock(scope: !2362, file: !448, line: 186, column: 7)
!2373 = !DILocation(line: 186, column: 7, scope: !2362, inlinedAt: !2368)
!2374 = !DILocation(line: 187, column: 5, scope: !2372, inlinedAt: !2368)
!2375 = !DILocation(line: 188, column: 11, scope: !2362, inlinedAt: !2368)
!2376 = distinct !DIAssignID()
!2377 = !DILocation(line: 946, column: 10, scope: !2346)
!2378 = !DILocation(line: 947, column: 1, scope: !2346)
!2379 = !DILocation(line: 946, column: 3, scope: !2346)
!2380 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !448, file: !448, line: 950, type: !2381, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!90, !70, !474, !96, !93}
!2383 = !{!2384, !2385, !2386, !2387, !2388}
!2384 = !DILocalVariable(name: "n", arg: 1, scope: !2380, file: !448, line: 950, type: !70)
!2385 = !DILocalVariable(name: "s", arg: 2, scope: !2380, file: !448, line: 950, type: !474)
!2386 = !DILocalVariable(name: "arg", arg: 3, scope: !2380, file: !448, line: 951, type: !96)
!2387 = !DILocalVariable(name: "argsize", arg: 4, scope: !2380, file: !448, line: 951, type: !93)
!2388 = !DILocalVariable(name: "o", scope: !2380, file: !448, line: 953, type: !1431)
!2389 = distinct !DIAssignID()
!2390 = !DILocation(line: 0, scope: !2380)
!2391 = !DILocation(line: 953, column: 3, scope: !2380)
!2392 = !{!2393}
!2393 = distinct !{!2393, !2394, !"quoting_options_from_style: argument 0"}
!2394 = distinct !{!2394, !"quoting_options_from_style"}
!2395 = !DILocation(line: 953, column: 36, scope: !2380)
!2396 = !DILocation(line: 0, scope: !2362, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 953, column: 36, scope: !2380)
!2398 = !DILocation(line: 185, column: 26, scope: !2362, inlinedAt: !2397)
!2399 = distinct !DIAssignID()
!2400 = !DILocation(line: 186, column: 13, scope: !2372, inlinedAt: !2397)
!2401 = !DILocation(line: 186, column: 7, scope: !2362, inlinedAt: !2397)
!2402 = !DILocation(line: 187, column: 5, scope: !2372, inlinedAt: !2397)
!2403 = !DILocation(line: 188, column: 11, scope: !2362, inlinedAt: !2397)
!2404 = distinct !DIAssignID()
!2405 = !DILocation(line: 954, column: 10, scope: !2380)
!2406 = !DILocation(line: 955, column: 1, scope: !2380)
!2407 = !DILocation(line: 954, column: 3, scope: !2380)
!2408 = distinct !DISubprogram(name: "quotearg_style", scope: !448, file: !448, line: 958, type: !2409, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!90, !474, !96}
!2411 = !{!2412, !2413}
!2412 = !DILocalVariable(name: "s", arg: 1, scope: !2408, file: !448, line: 958, type: !474)
!2413 = !DILocalVariable(name: "arg", arg: 2, scope: !2408, file: !448, line: 958, type: !96)
!2414 = distinct !DIAssignID()
!2415 = !DILocation(line: 0, scope: !2408)
!2416 = !DILocation(line: 0, scope: !2346, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 960, column: 10, scope: !2408)
!2418 = !DILocation(line: 945, column: 3, scope: !2346, inlinedAt: !2417)
!2419 = !{!2420}
!2420 = distinct !{!2420, !2421, !"quoting_options_from_style: argument 0"}
!2421 = distinct !{!2421, !"quoting_options_from_style"}
!2422 = !DILocation(line: 945, column: 36, scope: !2346, inlinedAt: !2417)
!2423 = !DILocation(line: 0, scope: !2362, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 945, column: 36, scope: !2346, inlinedAt: !2417)
!2425 = !DILocation(line: 185, column: 26, scope: !2362, inlinedAt: !2424)
!2426 = distinct !DIAssignID()
!2427 = !DILocation(line: 186, column: 13, scope: !2372, inlinedAt: !2424)
!2428 = !DILocation(line: 186, column: 7, scope: !2362, inlinedAt: !2424)
!2429 = !DILocation(line: 187, column: 5, scope: !2372, inlinedAt: !2424)
!2430 = !DILocation(line: 188, column: 11, scope: !2362, inlinedAt: !2424)
!2431 = distinct !DIAssignID()
!2432 = !DILocation(line: 946, column: 10, scope: !2346, inlinedAt: !2417)
!2433 = !DILocation(line: 947, column: 1, scope: !2346, inlinedAt: !2417)
!2434 = !DILocation(line: 960, column: 3, scope: !2408)
!2435 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !448, file: !448, line: 964, type: !2436, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!90, !474, !96, !93}
!2438 = !{!2439, !2440, !2441}
!2439 = !DILocalVariable(name: "s", arg: 1, scope: !2435, file: !448, line: 964, type: !474)
!2440 = !DILocalVariable(name: "arg", arg: 2, scope: !2435, file: !448, line: 964, type: !96)
!2441 = !DILocalVariable(name: "argsize", arg: 3, scope: !2435, file: !448, line: 964, type: !93)
!2442 = distinct !DIAssignID()
!2443 = !DILocation(line: 0, scope: !2435)
!2444 = !DILocation(line: 0, scope: !2380, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 966, column: 10, scope: !2435)
!2446 = !DILocation(line: 953, column: 3, scope: !2380, inlinedAt: !2445)
!2447 = !{!2448}
!2448 = distinct !{!2448, !2449, !"quoting_options_from_style: argument 0"}
!2449 = distinct !{!2449, !"quoting_options_from_style"}
!2450 = !DILocation(line: 953, column: 36, scope: !2380, inlinedAt: !2445)
!2451 = !DILocation(line: 0, scope: !2362, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 953, column: 36, scope: !2380, inlinedAt: !2445)
!2453 = !DILocation(line: 185, column: 26, scope: !2362, inlinedAt: !2452)
!2454 = distinct !DIAssignID()
!2455 = !DILocation(line: 186, column: 13, scope: !2372, inlinedAt: !2452)
!2456 = !DILocation(line: 186, column: 7, scope: !2362, inlinedAt: !2452)
!2457 = !DILocation(line: 187, column: 5, scope: !2372, inlinedAt: !2452)
!2458 = !DILocation(line: 188, column: 11, scope: !2362, inlinedAt: !2452)
!2459 = distinct !DIAssignID()
!2460 = !DILocation(line: 954, column: 10, scope: !2380, inlinedAt: !2445)
!2461 = !DILocation(line: 955, column: 1, scope: !2380, inlinedAt: !2445)
!2462 = !DILocation(line: 966, column: 3, scope: !2435)
!2463 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !448, file: !448, line: 970, type: !2464, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!90, !96, !93, !4}
!2466 = !{!2467, !2468, !2469, !2470}
!2467 = !DILocalVariable(name: "arg", arg: 1, scope: !2463, file: !448, line: 970, type: !96)
!2468 = !DILocalVariable(name: "argsize", arg: 2, scope: !2463, file: !448, line: 970, type: !93)
!2469 = !DILocalVariable(name: "ch", arg: 3, scope: !2463, file: !448, line: 970, type: !4)
!2470 = !DILocalVariable(name: "options", scope: !2463, file: !448, line: 972, type: !501)
!2471 = distinct !DIAssignID()
!2472 = !DILocation(line: 0, scope: !2463)
!2473 = !DILocation(line: 972, column: 3, scope: !2463)
!2474 = !DILocation(line: 973, column: 13, scope: !2463)
!2475 = !{i64 0, i64 4, !828, i64 4, i64 4, !828, i64 8, i64 32, !837, i64 40, i64 8, !766, i64 48, i64 8, !766}
!2476 = distinct !DIAssignID()
!2477 = !DILocation(line: 0, scope: !1450, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 974, column: 3, scope: !2463)
!2479 = !DILocation(line: 147, column: 41, scope: !1450, inlinedAt: !2478)
!2480 = !DILocation(line: 147, column: 62, scope: !1450, inlinedAt: !2478)
!2481 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2478)
!2482 = !DILocation(line: 148, column: 15, scope: !1450, inlinedAt: !2478)
!2483 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2478)
!2484 = !DILocation(line: 149, column: 24, scope: !1450, inlinedAt: !2478)
!2485 = !DILocation(line: 150, column: 19, scope: !1450, inlinedAt: !2478)
!2486 = !DILocation(line: 150, column: 24, scope: !1450, inlinedAt: !2478)
!2487 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2478)
!2488 = !DILocation(line: 975, column: 10, scope: !2463)
!2489 = !DILocation(line: 976, column: 1, scope: !2463)
!2490 = !DILocation(line: 975, column: 3, scope: !2463)
!2491 = distinct !DISubprogram(name: "quotearg_char", scope: !448, file: !448, line: 979, type: !2492, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!90, !96, !4}
!2494 = !{!2495, !2496}
!2495 = !DILocalVariable(name: "arg", arg: 1, scope: !2491, file: !448, line: 979, type: !96)
!2496 = !DILocalVariable(name: "ch", arg: 2, scope: !2491, file: !448, line: 979, type: !4)
!2497 = distinct !DIAssignID()
!2498 = !DILocation(line: 0, scope: !2491)
!2499 = !DILocation(line: 0, scope: !2463, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 981, column: 10, scope: !2491)
!2501 = !DILocation(line: 972, column: 3, scope: !2463, inlinedAt: !2500)
!2502 = !DILocation(line: 973, column: 13, scope: !2463, inlinedAt: !2500)
!2503 = distinct !DIAssignID()
!2504 = !DILocation(line: 0, scope: !1450, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 974, column: 3, scope: !2463, inlinedAt: !2500)
!2506 = !DILocation(line: 147, column: 41, scope: !1450, inlinedAt: !2505)
!2507 = !DILocation(line: 147, column: 62, scope: !1450, inlinedAt: !2505)
!2508 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2505)
!2509 = !DILocation(line: 148, column: 15, scope: !1450, inlinedAt: !2505)
!2510 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2505)
!2511 = !DILocation(line: 149, column: 24, scope: !1450, inlinedAt: !2505)
!2512 = !DILocation(line: 150, column: 19, scope: !1450, inlinedAt: !2505)
!2513 = !DILocation(line: 150, column: 24, scope: !1450, inlinedAt: !2505)
!2514 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2505)
!2515 = !DILocation(line: 975, column: 10, scope: !2463, inlinedAt: !2500)
!2516 = !DILocation(line: 976, column: 1, scope: !2463, inlinedAt: !2500)
!2517 = !DILocation(line: 981, column: 3, scope: !2491)
!2518 = distinct !DISubprogram(name: "quotearg_colon", scope: !448, file: !448, line: 985, type: !954, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2519)
!2519 = !{!2520}
!2520 = !DILocalVariable(name: "arg", arg: 1, scope: !2518, file: !448, line: 985, type: !96)
!2521 = distinct !DIAssignID()
!2522 = !DILocation(line: 0, scope: !2518)
!2523 = !DILocation(line: 0, scope: !2491, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 987, column: 10, scope: !2518)
!2525 = !DILocation(line: 0, scope: !2463, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 981, column: 10, scope: !2491, inlinedAt: !2524)
!2527 = !DILocation(line: 972, column: 3, scope: !2463, inlinedAt: !2526)
!2528 = !DILocation(line: 973, column: 13, scope: !2463, inlinedAt: !2526)
!2529 = distinct !DIAssignID()
!2530 = !DILocation(line: 0, scope: !1450, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 974, column: 3, scope: !2463, inlinedAt: !2526)
!2532 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2531)
!2533 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2531)
!2534 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2531)
!2535 = !DILocation(line: 975, column: 10, scope: !2463, inlinedAt: !2526)
!2536 = !DILocation(line: 976, column: 1, scope: !2463, inlinedAt: !2526)
!2537 = !DILocation(line: 987, column: 3, scope: !2518)
!2538 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !448, file: !448, line: 991, type: !2336, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2539)
!2539 = !{!2540, !2541}
!2540 = !DILocalVariable(name: "arg", arg: 1, scope: !2538, file: !448, line: 991, type: !96)
!2541 = !DILocalVariable(name: "argsize", arg: 2, scope: !2538, file: !448, line: 991, type: !93)
!2542 = distinct !DIAssignID()
!2543 = !DILocation(line: 0, scope: !2538)
!2544 = !DILocation(line: 0, scope: !2463, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 993, column: 10, scope: !2538)
!2546 = !DILocation(line: 972, column: 3, scope: !2463, inlinedAt: !2545)
!2547 = !DILocation(line: 973, column: 13, scope: !2463, inlinedAt: !2545)
!2548 = distinct !DIAssignID()
!2549 = !DILocation(line: 0, scope: !1450, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 974, column: 3, scope: !2463, inlinedAt: !2545)
!2551 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2550)
!2552 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2550)
!2553 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2550)
!2554 = !DILocation(line: 975, column: 10, scope: !2463, inlinedAt: !2545)
!2555 = !DILocation(line: 976, column: 1, scope: !2463, inlinedAt: !2545)
!2556 = !DILocation(line: 993, column: 3, scope: !2538)
!2557 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !448, file: !448, line: 997, type: !2347, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2558)
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DILocalVariable(name: "n", arg: 1, scope: !2557, file: !448, line: 997, type: !70)
!2560 = !DILocalVariable(name: "s", arg: 2, scope: !2557, file: !448, line: 997, type: !474)
!2561 = !DILocalVariable(name: "arg", arg: 3, scope: !2557, file: !448, line: 997, type: !96)
!2562 = !DILocalVariable(name: "options", scope: !2557, file: !448, line: 999, type: !501)
!2563 = distinct !DIAssignID()
!2564 = !DILocation(line: 0, scope: !2557)
!2565 = !DILocation(line: 185, column: 26, scope: !2362, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1000, column: 13, scope: !2557)
!2567 = !DILocation(line: 999, column: 3, scope: !2557)
!2568 = !DILocation(line: 0, scope: !2362, inlinedAt: !2566)
!2569 = !DILocation(line: 186, column: 13, scope: !2372, inlinedAt: !2566)
!2570 = !DILocation(line: 186, column: 7, scope: !2362, inlinedAt: !2566)
!2571 = !DILocation(line: 187, column: 5, scope: !2372, inlinedAt: !2566)
!2572 = !{!2573}
!2573 = distinct !{!2573, !2574, !"quoting_options_from_style: argument 0"}
!2574 = distinct !{!2574, !"quoting_options_from_style"}
!2575 = !DILocation(line: 1000, column: 13, scope: !2557)
!2576 = distinct !DIAssignID()
!2577 = distinct !DIAssignID()
!2578 = !DILocation(line: 0, scope: !1450, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1001, column: 3, scope: !2557)
!2580 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2579)
!2581 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2579)
!2582 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2579)
!2583 = distinct !DIAssignID()
!2584 = !DILocation(line: 1002, column: 10, scope: !2557)
!2585 = !DILocation(line: 1003, column: 1, scope: !2557)
!2586 = !DILocation(line: 1002, column: 3, scope: !2557)
!2587 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !448, file: !448, line: 1006, type: !2588, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!90, !70, !96, !96, !96}
!2590 = !{!2591, !2592, !2593, !2594}
!2591 = !DILocalVariable(name: "n", arg: 1, scope: !2587, file: !448, line: 1006, type: !70)
!2592 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2587, file: !448, line: 1006, type: !96)
!2593 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2587, file: !448, line: 1007, type: !96)
!2594 = !DILocalVariable(name: "arg", arg: 4, scope: !2587, file: !448, line: 1007, type: !96)
!2595 = distinct !DIAssignID()
!2596 = !DILocation(line: 0, scope: !2587)
!2597 = !DILocalVariable(name: "o", scope: !2598, file: !448, line: 1018, type: !501)
!2598 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !448, file: !448, line: 1014, type: !2599, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!90, !70, !96, !96, !96, !93}
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2597}
!2602 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !448, line: 1014, type: !70)
!2603 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2598, file: !448, line: 1014, type: !96)
!2604 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2598, file: !448, line: 1015, type: !96)
!2605 = !DILocalVariable(name: "arg", arg: 4, scope: !2598, file: !448, line: 1016, type: !96)
!2606 = !DILocalVariable(name: "argsize", arg: 5, scope: !2598, file: !448, line: 1016, type: !93)
!2607 = !DILocation(line: 0, scope: !2598, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 1009, column: 10, scope: !2587)
!2609 = !DILocation(line: 1018, column: 3, scope: !2598, inlinedAt: !2608)
!2610 = !DILocation(line: 1018, column: 30, scope: !2598, inlinedAt: !2608)
!2611 = distinct !DIAssignID()
!2612 = distinct !DIAssignID()
!2613 = !DILocation(line: 0, scope: !1490, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 1019, column: 3, scope: !2598, inlinedAt: !2608)
!2615 = !DILocation(line: 174, column: 12, scope: !1490, inlinedAt: !2614)
!2616 = distinct !DIAssignID()
!2617 = !DILocation(line: 175, column: 8, scope: !1503, inlinedAt: !2614)
!2618 = !DILocation(line: 175, column: 19, scope: !1503, inlinedAt: !2614)
!2619 = !DILocation(line: 176, column: 5, scope: !1503, inlinedAt: !2614)
!2620 = !DILocation(line: 177, column: 6, scope: !1490, inlinedAt: !2614)
!2621 = !DILocation(line: 177, column: 17, scope: !1490, inlinedAt: !2614)
!2622 = distinct !DIAssignID()
!2623 = !DILocation(line: 178, column: 6, scope: !1490, inlinedAt: !2614)
!2624 = !DILocation(line: 178, column: 18, scope: !1490, inlinedAt: !2614)
!2625 = distinct !DIAssignID()
!2626 = !DILocation(line: 1020, column: 10, scope: !2598, inlinedAt: !2608)
!2627 = !DILocation(line: 1021, column: 1, scope: !2598, inlinedAt: !2608)
!2628 = !DILocation(line: 1009, column: 3, scope: !2587)
!2629 = distinct !DIAssignID()
!2630 = !DILocation(line: 0, scope: !2598)
!2631 = !DILocation(line: 1018, column: 3, scope: !2598)
!2632 = !DILocation(line: 1018, column: 30, scope: !2598)
!2633 = distinct !DIAssignID()
!2634 = distinct !DIAssignID()
!2635 = !DILocation(line: 0, scope: !1490, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1019, column: 3, scope: !2598)
!2637 = !DILocation(line: 174, column: 12, scope: !1490, inlinedAt: !2636)
!2638 = distinct !DIAssignID()
!2639 = !DILocation(line: 175, column: 8, scope: !1503, inlinedAt: !2636)
!2640 = !DILocation(line: 175, column: 19, scope: !1503, inlinedAt: !2636)
!2641 = !DILocation(line: 176, column: 5, scope: !1503, inlinedAt: !2636)
!2642 = !DILocation(line: 177, column: 6, scope: !1490, inlinedAt: !2636)
!2643 = !DILocation(line: 177, column: 17, scope: !1490, inlinedAt: !2636)
!2644 = distinct !DIAssignID()
!2645 = !DILocation(line: 178, column: 6, scope: !1490, inlinedAt: !2636)
!2646 = !DILocation(line: 178, column: 18, scope: !1490, inlinedAt: !2636)
!2647 = distinct !DIAssignID()
!2648 = !DILocation(line: 1020, column: 10, scope: !2598)
!2649 = !DILocation(line: 1021, column: 1, scope: !2598)
!2650 = !DILocation(line: 1020, column: 3, scope: !2598)
!2651 = distinct !DISubprogram(name: "quotearg_custom", scope: !448, file: !448, line: 1024, type: !2652, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!90, !96, !96, !96}
!2654 = !{!2655, !2656, !2657}
!2655 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2651, file: !448, line: 1024, type: !96)
!2656 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2651, file: !448, line: 1024, type: !96)
!2657 = !DILocalVariable(name: "arg", arg: 3, scope: !2651, file: !448, line: 1025, type: !96)
!2658 = distinct !DIAssignID()
!2659 = !DILocation(line: 0, scope: !2651)
!2660 = !DILocation(line: 0, scope: !2587, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1027, column: 10, scope: !2651)
!2662 = !DILocation(line: 0, scope: !2598, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 1009, column: 10, scope: !2587, inlinedAt: !2661)
!2664 = !DILocation(line: 1018, column: 3, scope: !2598, inlinedAt: !2663)
!2665 = !DILocation(line: 1018, column: 30, scope: !2598, inlinedAt: !2663)
!2666 = distinct !DIAssignID()
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 0, scope: !1490, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 1019, column: 3, scope: !2598, inlinedAt: !2663)
!2670 = !DILocation(line: 174, column: 12, scope: !1490, inlinedAt: !2669)
!2671 = distinct !DIAssignID()
!2672 = !DILocation(line: 175, column: 8, scope: !1503, inlinedAt: !2669)
!2673 = !DILocation(line: 175, column: 19, scope: !1503, inlinedAt: !2669)
!2674 = !DILocation(line: 176, column: 5, scope: !1503, inlinedAt: !2669)
!2675 = !DILocation(line: 177, column: 6, scope: !1490, inlinedAt: !2669)
!2676 = !DILocation(line: 177, column: 17, scope: !1490, inlinedAt: !2669)
!2677 = distinct !DIAssignID()
!2678 = !DILocation(line: 178, column: 6, scope: !1490, inlinedAt: !2669)
!2679 = !DILocation(line: 178, column: 18, scope: !1490, inlinedAt: !2669)
!2680 = distinct !DIAssignID()
!2681 = !DILocation(line: 1020, column: 10, scope: !2598, inlinedAt: !2663)
!2682 = !DILocation(line: 1021, column: 1, scope: !2598, inlinedAt: !2663)
!2683 = !DILocation(line: 1027, column: 3, scope: !2651)
!2684 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !448, file: !448, line: 1031, type: !2685, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!90, !96, !96, !96, !93}
!2687 = !{!2688, !2689, !2690, !2691}
!2688 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2684, file: !448, line: 1031, type: !96)
!2689 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2684, file: !448, line: 1031, type: !96)
!2690 = !DILocalVariable(name: "arg", arg: 3, scope: !2684, file: !448, line: 1032, type: !96)
!2691 = !DILocalVariable(name: "argsize", arg: 4, scope: !2684, file: !448, line: 1032, type: !93)
!2692 = distinct !DIAssignID()
!2693 = !DILocation(line: 0, scope: !2684)
!2694 = !DILocation(line: 0, scope: !2598, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1034, column: 10, scope: !2684)
!2696 = !DILocation(line: 1018, column: 3, scope: !2598, inlinedAt: !2695)
!2697 = !DILocation(line: 1018, column: 30, scope: !2598, inlinedAt: !2695)
!2698 = distinct !DIAssignID()
!2699 = distinct !DIAssignID()
!2700 = !DILocation(line: 0, scope: !1490, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 1019, column: 3, scope: !2598, inlinedAt: !2695)
!2702 = !DILocation(line: 174, column: 12, scope: !1490, inlinedAt: !2701)
!2703 = distinct !DIAssignID()
!2704 = !DILocation(line: 175, column: 8, scope: !1503, inlinedAt: !2701)
!2705 = !DILocation(line: 175, column: 19, scope: !1503, inlinedAt: !2701)
!2706 = !DILocation(line: 176, column: 5, scope: !1503, inlinedAt: !2701)
!2707 = !DILocation(line: 177, column: 6, scope: !1490, inlinedAt: !2701)
!2708 = !DILocation(line: 177, column: 17, scope: !1490, inlinedAt: !2701)
!2709 = distinct !DIAssignID()
!2710 = !DILocation(line: 178, column: 6, scope: !1490, inlinedAt: !2701)
!2711 = !DILocation(line: 178, column: 18, scope: !1490, inlinedAt: !2701)
!2712 = distinct !DIAssignID()
!2713 = !DILocation(line: 1020, column: 10, scope: !2598, inlinedAt: !2695)
!2714 = !DILocation(line: 1021, column: 1, scope: !2598, inlinedAt: !2695)
!2715 = !DILocation(line: 1034, column: 3, scope: !2684)
!2716 = distinct !DISubprogram(name: "quote_n_mem", scope: !448, file: !448, line: 1049, type: !2717, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2719)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!96, !70, !96, !93}
!2719 = !{!2720, !2721, !2722}
!2720 = !DILocalVariable(name: "n", arg: 1, scope: !2716, file: !448, line: 1049, type: !70)
!2721 = !DILocalVariable(name: "arg", arg: 2, scope: !2716, file: !448, line: 1049, type: !96)
!2722 = !DILocalVariable(name: "argsize", arg: 3, scope: !2716, file: !448, line: 1049, type: !93)
!2723 = !DILocation(line: 0, scope: !2716)
!2724 = !DILocation(line: 1051, column: 10, scope: !2716)
!2725 = !DILocation(line: 1051, column: 3, scope: !2716)
!2726 = distinct !DISubprogram(name: "quote_mem", scope: !448, file: !448, line: 1055, type: !2727, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!96, !96, !93}
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "arg", arg: 1, scope: !2726, file: !448, line: 1055, type: !96)
!2731 = !DILocalVariable(name: "argsize", arg: 2, scope: !2726, file: !448, line: 1055, type: !93)
!2732 = !DILocation(line: 0, scope: !2726)
!2733 = !DILocation(line: 0, scope: !2716, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 1057, column: 10, scope: !2726)
!2735 = !DILocation(line: 1051, column: 10, scope: !2716, inlinedAt: !2734)
!2736 = !DILocation(line: 1057, column: 3, scope: !2726)
!2737 = distinct !DISubprogram(name: "quote_n", scope: !448, file: !448, line: 1061, type: !2738, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!96, !70, !96}
!2740 = !{!2741, !2742}
!2741 = !DILocalVariable(name: "n", arg: 1, scope: !2737, file: !448, line: 1061, type: !70)
!2742 = !DILocalVariable(name: "arg", arg: 2, scope: !2737, file: !448, line: 1061, type: !96)
!2743 = !DILocation(line: 0, scope: !2737)
!2744 = !DILocation(line: 0, scope: !2716, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1063, column: 10, scope: !2737)
!2746 = !DILocation(line: 1051, column: 10, scope: !2716, inlinedAt: !2745)
!2747 = !DILocation(line: 1063, column: 3, scope: !2737)
!2748 = distinct !DISubprogram(name: "quote", scope: !448, file: !448, line: 1067, type: !2749, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!96, !96}
!2751 = !{!2752}
!2752 = !DILocalVariable(name: "arg", arg: 1, scope: !2748, file: !448, line: 1067, type: !96)
!2753 = !DILocation(line: 0, scope: !2748)
!2754 = !DILocation(line: 0, scope: !2737, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 1069, column: 10, scope: !2748)
!2756 = !DILocation(line: 0, scope: !2716, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1063, column: 10, scope: !2737, inlinedAt: !2755)
!2758 = !DILocation(line: 1051, column: 10, scope: !2716, inlinedAt: !2757)
!2759 = !DILocation(line: 1069, column: 3, scope: !2748)
!2760 = distinct !DISubprogram(name: "version_etc_arn", scope: !564, file: !564, line: 61, type: !2761, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !2798)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{null, !2763, !96, !96, !96, !2797, !93}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !2766)
!2766 = !{!2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2765, file: !150, line: 51, baseType: !70, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2765, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2765, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2765, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2765, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2765, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2765, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2765, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2765, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2765, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2765, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2765, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2765, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2765, file: !150, line: 70, baseType: !2781, size: 64, offset: 832)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2765, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2765, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2765, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2765, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2765, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2765, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2765, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2765, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2765, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2765, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2765, file: !150, line: 93, baseType: !2781, size: 64, offset: 1344)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2765, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2765, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2765, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2765, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804}
!2799 = !DILocalVariable(name: "stream", arg: 1, scope: !2760, file: !564, line: 61, type: !2763)
!2800 = !DILocalVariable(name: "command_name", arg: 2, scope: !2760, file: !564, line: 62, type: !96)
!2801 = !DILocalVariable(name: "package", arg: 3, scope: !2760, file: !564, line: 62, type: !96)
!2802 = !DILocalVariable(name: "version", arg: 4, scope: !2760, file: !564, line: 63, type: !96)
!2803 = !DILocalVariable(name: "authors", arg: 5, scope: !2760, file: !564, line: 64, type: !2797)
!2804 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2760, file: !564, line: 64, type: !93)
!2805 = !DILocation(line: 0, scope: !2760)
!2806 = !DILocation(line: 66, column: 7, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2760, file: !564, line: 66, column: 7)
!2808 = !DILocation(line: 66, column: 7, scope: !2760)
!2809 = !DILocation(line: 67, column: 5, scope: !2807)
!2810 = !DILocation(line: 69, column: 5, scope: !2807)
!2811 = !DILocation(line: 83, column: 3, scope: !2760)
!2812 = !DILocation(line: 85, column: 3, scope: !2760)
!2813 = !DILocation(line: 88, column: 3, scope: !2760)
!2814 = !DILocation(line: 95, column: 3, scope: !2760)
!2815 = !DILocation(line: 97, column: 3, scope: !2760)
!2816 = !DILocation(line: 105, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2760, file: !564, line: 98, column: 5)
!2818 = !DILocation(line: 106, column: 7, scope: !2817)
!2819 = !DILocation(line: 109, column: 7, scope: !2817)
!2820 = !DILocation(line: 110, column: 7, scope: !2817)
!2821 = !DILocation(line: 113, column: 7, scope: !2817)
!2822 = !DILocation(line: 115, column: 7, scope: !2817)
!2823 = !DILocation(line: 120, column: 7, scope: !2817)
!2824 = !DILocation(line: 122, column: 7, scope: !2817)
!2825 = !DILocation(line: 127, column: 7, scope: !2817)
!2826 = !DILocation(line: 129, column: 7, scope: !2817)
!2827 = !DILocation(line: 134, column: 7, scope: !2817)
!2828 = !DILocation(line: 137, column: 7, scope: !2817)
!2829 = !DILocation(line: 142, column: 7, scope: !2817)
!2830 = !DILocation(line: 145, column: 7, scope: !2817)
!2831 = !DILocation(line: 150, column: 7, scope: !2817)
!2832 = !DILocation(line: 154, column: 7, scope: !2817)
!2833 = !DILocation(line: 159, column: 7, scope: !2817)
!2834 = !DILocation(line: 163, column: 7, scope: !2817)
!2835 = !DILocation(line: 170, column: 7, scope: !2817)
!2836 = !DILocation(line: 174, column: 7, scope: !2817)
!2837 = !DILocation(line: 176, column: 1, scope: !2760)
!2838 = distinct !DISubprogram(name: "version_etc_ar", scope: !564, file: !564, line: 183, type: !2839, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !2763, !96, !96, !96, !2797}
!2841 = !{!2842, !2843, !2844, !2845, !2846, !2847}
!2842 = !DILocalVariable(name: "stream", arg: 1, scope: !2838, file: !564, line: 183, type: !2763)
!2843 = !DILocalVariable(name: "command_name", arg: 2, scope: !2838, file: !564, line: 184, type: !96)
!2844 = !DILocalVariable(name: "package", arg: 3, scope: !2838, file: !564, line: 184, type: !96)
!2845 = !DILocalVariable(name: "version", arg: 4, scope: !2838, file: !564, line: 185, type: !96)
!2846 = !DILocalVariable(name: "authors", arg: 5, scope: !2838, file: !564, line: 185, type: !2797)
!2847 = !DILocalVariable(name: "n_authors", scope: !2838, file: !564, line: 187, type: !93)
!2848 = !DILocation(line: 0, scope: !2838)
!2849 = !DILocation(line: 189, column: 8, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2838, file: !564, line: 189, column: 3)
!2851 = !DILocation(line: 189, scope: !2850)
!2852 = !DILocation(line: 189, column: 23, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2850, file: !564, line: 189, column: 3)
!2854 = !DILocation(line: 189, column: 3, scope: !2850)
!2855 = !DILocation(line: 189, column: 52, scope: !2853)
!2856 = distinct !{!2856, !2854, !2857, !875}
!2857 = !DILocation(line: 190, column: 5, scope: !2850)
!2858 = !DILocation(line: 191, column: 3, scope: !2838)
!2859 = !DILocation(line: 192, column: 1, scope: !2838)
!2860 = distinct !DISubprogram(name: "version_etc_va", scope: !564, file: !564, line: 199, type: !2861, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !2870)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !2763, !96, !96, !96, !2863}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2865)
!2865 = !{!2866, !2867, !2868, !2869}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2864, file: !564, line: 192, baseType: !62, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2864, file: !564, line: 192, baseType: !62, size: 32, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2864, file: !564, line: 192, baseType: !91, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2864, file: !564, line: 192, baseType: !91, size: 64, offset: 128)
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876, !2877}
!2871 = !DILocalVariable(name: "stream", arg: 1, scope: !2860, file: !564, line: 199, type: !2763)
!2872 = !DILocalVariable(name: "command_name", arg: 2, scope: !2860, file: !564, line: 200, type: !96)
!2873 = !DILocalVariable(name: "package", arg: 3, scope: !2860, file: !564, line: 200, type: !96)
!2874 = !DILocalVariable(name: "version", arg: 4, scope: !2860, file: !564, line: 201, type: !96)
!2875 = !DILocalVariable(name: "authors", arg: 5, scope: !2860, file: !564, line: 201, type: !2863)
!2876 = !DILocalVariable(name: "n_authors", scope: !2860, file: !564, line: 203, type: !93)
!2877 = !DILocalVariable(name: "authtab", scope: !2860, file: !564, line: 204, type: !2878)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !45)
!2879 = distinct !DIAssignID()
!2880 = !DILocation(line: 0, scope: !2860)
!2881 = !DILocation(line: 204, column: 3, scope: !2860)
!2882 = !DILocation(line: 208, column: 35, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !564, line: 206, column: 3)
!2884 = distinct !DILexicalBlock(scope: !2860, file: !564, line: 206, column: 3)
!2885 = !DILocation(line: 208, column: 33, scope: !2883)
!2886 = !DILocation(line: 208, column: 67, scope: !2883)
!2887 = !DILocation(line: 206, column: 3, scope: !2884)
!2888 = !DILocation(line: 208, column: 14, scope: !2883)
!2889 = !DILocation(line: 0, scope: !2884)
!2890 = !DILocation(line: 211, column: 3, scope: !2860)
!2891 = !DILocation(line: 213, column: 1, scope: !2860)
!2892 = distinct !DISubprogram(name: "version_etc", scope: !564, file: !564, line: 230, type: !2893, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2763, !96, !96, !96, null}
!2895 = !{!2896, !2897, !2898, !2899, !2900}
!2896 = !DILocalVariable(name: "stream", arg: 1, scope: !2892, file: !564, line: 230, type: !2763)
!2897 = !DILocalVariable(name: "command_name", arg: 2, scope: !2892, file: !564, line: 231, type: !96)
!2898 = !DILocalVariable(name: "package", arg: 3, scope: !2892, file: !564, line: 231, type: !96)
!2899 = !DILocalVariable(name: "version", arg: 4, scope: !2892, file: !564, line: 232, type: !96)
!2900 = !DILocalVariable(name: "authors", scope: !2892, file: !564, line: 234, type: !2901)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !823, line: 52, baseType: !2902)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1276, line: 12, baseType: !2903)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !564, baseType: !2904)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2864, size: 192, elements: !40)
!2905 = distinct !DIAssignID()
!2906 = !DILocation(line: 0, scope: !2892)
!2907 = !DILocation(line: 234, column: 3, scope: !2892)
!2908 = !DILocation(line: 235, column: 3, scope: !2892)
!2909 = !DILocation(line: 236, column: 3, scope: !2892)
!2910 = !DILocation(line: 237, column: 3, scope: !2892)
!2911 = !DILocation(line: 238, column: 1, scope: !2892)
!2912 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !564, file: !564, line: 241, type: !403, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685)
!2913 = !DILocation(line: 243, column: 3, scope: !2912)
!2914 = !DILocation(line: 248, column: 3, scope: !2912)
!2915 = !DILocation(line: 254, column: 3, scope: !2912)
!2916 = !DILocation(line: 259, column: 3, scope: !2912)
!2917 = !DILocation(line: 261, column: 1, scope: !2912)
!2918 = distinct !DISubprogram(name: "xnrealloc", scope: !2919, file: !2919, line: 147, type: !2920, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2922)
!2919 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!91, !91, !93, !93}
!2922 = !{!2923, !2924, !2925}
!2923 = !DILocalVariable(name: "p", arg: 1, scope: !2918, file: !2919, line: 147, type: !91)
!2924 = !DILocalVariable(name: "n", arg: 2, scope: !2918, file: !2919, line: 147, type: !93)
!2925 = !DILocalVariable(name: "s", arg: 3, scope: !2918, file: !2919, line: 147, type: !93)
!2926 = !DILocation(line: 0, scope: !2918)
!2927 = !DILocalVariable(name: "p", arg: 1, scope: !2928, file: !693, line: 83, type: !91)
!2928 = distinct !DISubprogram(name: "xreallocarray", scope: !693, file: !693, line: 83, type: !2920, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2929)
!2929 = !{!2927, !2930, !2931}
!2930 = !DILocalVariable(name: "n", arg: 2, scope: !2928, file: !693, line: 83, type: !93)
!2931 = !DILocalVariable(name: "s", arg: 3, scope: !2928, file: !693, line: 83, type: !93)
!2932 = !DILocation(line: 0, scope: !2928, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 149, column: 10, scope: !2918)
!2934 = !DILocation(line: 85, column: 25, scope: !2928, inlinedAt: !2933)
!2935 = !DILocalVariable(name: "p", arg: 1, scope: !2936, file: !693, line: 37, type: !91)
!2936 = distinct !DISubprogram(name: "check_nonnull", scope: !693, file: !693, line: 37, type: !2937, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!91, !91}
!2939 = !{!2935}
!2940 = !DILocation(line: 0, scope: !2936, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 85, column: 10, scope: !2928, inlinedAt: !2933)
!2942 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !2941)
!2943 = distinct !DILexicalBlock(scope: !2936, file: !693, line: 39, column: 7)
!2944 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !2941)
!2945 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !2941)
!2946 = !DILocation(line: 149, column: 3, scope: !2918)
!2947 = !DILocation(line: 0, scope: !2928)
!2948 = !DILocation(line: 85, column: 25, scope: !2928)
!2949 = !DILocation(line: 0, scope: !2936, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 85, column: 10, scope: !2928)
!2951 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !2950)
!2952 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !2950)
!2953 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !2950)
!2954 = !DILocation(line: 85, column: 3, scope: !2928)
!2955 = distinct !DISubprogram(name: "xmalloc", scope: !693, file: !693, line: 47, type: !2956, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!91, !93}
!2958 = !{!2959}
!2959 = !DILocalVariable(name: "s", arg: 1, scope: !2955, file: !693, line: 47, type: !93)
!2960 = !DILocation(line: 0, scope: !2955)
!2961 = !DILocation(line: 49, column: 25, scope: !2955)
!2962 = !DILocation(line: 0, scope: !2936, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 49, column: 10, scope: !2955)
!2964 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !2963)
!2965 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !2963)
!2966 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !2963)
!2967 = !DILocation(line: 49, column: 3, scope: !2955)
!2968 = !DISubprogram(name: "malloc", scope: !952, file: !952, line: 540, type: !2956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2969 = distinct !DISubprogram(name: "ximalloc", scope: !693, file: !693, line: 53, type: !2970, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!91, !712}
!2972 = !{!2973}
!2973 = !DILocalVariable(name: "s", arg: 1, scope: !2969, file: !693, line: 53, type: !712)
!2974 = !DILocation(line: 0, scope: !2969)
!2975 = !DILocalVariable(name: "s", arg: 1, scope: !2976, file: !2977, line: 55, type: !712)
!2976 = distinct !DISubprogram(name: "imalloc", scope: !2977, file: !2977, line: 55, type: !2970, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2978)
!2977 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2978 = !{!2975}
!2979 = !DILocation(line: 0, scope: !2976, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 55, column: 25, scope: !2969)
!2981 = !DILocation(line: 57, column: 26, scope: !2976, inlinedAt: !2980)
!2982 = !DILocation(line: 0, scope: !2936, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 55, column: 10, scope: !2969)
!2984 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !2983)
!2985 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !2983)
!2986 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !2983)
!2987 = !DILocation(line: 55, column: 3, scope: !2969)
!2988 = distinct !DISubprogram(name: "xcharalloc", scope: !693, file: !693, line: 59, type: !2989, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!90, !93}
!2991 = !{!2992}
!2992 = !DILocalVariable(name: "n", arg: 1, scope: !2988, file: !693, line: 59, type: !93)
!2993 = !DILocation(line: 0, scope: !2988)
!2994 = !DILocation(line: 0, scope: !2955, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 61, column: 10, scope: !2988)
!2996 = !DILocation(line: 49, column: 25, scope: !2955, inlinedAt: !2995)
!2997 = !DILocation(line: 0, scope: !2936, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 49, column: 10, scope: !2955, inlinedAt: !2995)
!2999 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !2998)
!3000 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !2998)
!3001 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !2998)
!3002 = !DILocation(line: 61, column: 3, scope: !2988)
!3003 = distinct !DISubprogram(name: "xrealloc", scope: !693, file: !693, line: 68, type: !3004, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!91, !91, !93}
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "p", arg: 1, scope: !3003, file: !693, line: 68, type: !91)
!3008 = !DILocalVariable(name: "s", arg: 2, scope: !3003, file: !693, line: 68, type: !93)
!3009 = !DILocation(line: 0, scope: !3003)
!3010 = !DILocalVariable(name: "ptr", arg: 1, scope: !3011, file: !3012, line: 2057, type: !91)
!3011 = distinct !DISubprogram(name: "rpl_realloc", scope: !3012, file: !3012, line: 2057, type: !3004, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3013)
!3012 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3013 = !{!3010, !3014}
!3014 = !DILocalVariable(name: "size", arg: 2, scope: !3011, file: !3012, line: 2057, type: !93)
!3015 = !DILocation(line: 0, scope: !3011, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 70, column: 25, scope: !3003)
!3017 = !DILocation(line: 2059, column: 24, scope: !3011, inlinedAt: !3016)
!3018 = !DILocation(line: 2059, column: 10, scope: !3011, inlinedAt: !3016)
!3019 = !DILocation(line: 0, scope: !2936, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 70, column: 10, scope: !3003)
!3021 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3020)
!3022 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3020)
!3023 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3020)
!3024 = !DILocation(line: 70, column: 3, scope: !3003)
!3025 = !DISubprogram(name: "realloc", scope: !952, file: !952, line: 551, type: !3004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3026 = distinct !DISubprogram(name: "xirealloc", scope: !693, file: !693, line: 74, type: !3027, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!91, !91, !712}
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "p", arg: 1, scope: !3026, file: !693, line: 74, type: !91)
!3031 = !DILocalVariable(name: "s", arg: 2, scope: !3026, file: !693, line: 74, type: !712)
!3032 = !DILocation(line: 0, scope: !3026)
!3033 = !DILocalVariable(name: "p", arg: 1, scope: !3034, file: !2977, line: 66, type: !91)
!3034 = distinct !DISubprogram(name: "irealloc", scope: !2977, file: !2977, line: 66, type: !3027, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3035)
!3035 = !{!3033, !3036}
!3036 = !DILocalVariable(name: "s", arg: 2, scope: !3034, file: !2977, line: 66, type: !712)
!3037 = !DILocation(line: 0, scope: !3034, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 76, column: 25, scope: !3026)
!3039 = !DILocation(line: 0, scope: !3011, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 68, column: 26, scope: !3034, inlinedAt: !3038)
!3041 = !DILocation(line: 2059, column: 24, scope: !3011, inlinedAt: !3040)
!3042 = !DILocation(line: 2059, column: 10, scope: !3011, inlinedAt: !3040)
!3043 = !DILocation(line: 0, scope: !2936, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 76, column: 10, scope: !3026)
!3045 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3044)
!3046 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3044)
!3047 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3044)
!3048 = !DILocation(line: 76, column: 3, scope: !3026)
!3049 = distinct !DISubprogram(name: "xireallocarray", scope: !693, file: !693, line: 89, type: !3050, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!91, !91, !712, !712}
!3052 = !{!3053, !3054, !3055}
!3053 = !DILocalVariable(name: "p", arg: 1, scope: !3049, file: !693, line: 89, type: !91)
!3054 = !DILocalVariable(name: "n", arg: 2, scope: !3049, file: !693, line: 89, type: !712)
!3055 = !DILocalVariable(name: "s", arg: 3, scope: !3049, file: !693, line: 89, type: !712)
!3056 = !DILocation(line: 0, scope: !3049)
!3057 = !DILocalVariable(name: "p", arg: 1, scope: !3058, file: !2977, line: 98, type: !91)
!3058 = distinct !DISubprogram(name: "ireallocarray", scope: !2977, file: !2977, line: 98, type: !3050, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3059)
!3059 = !{!3057, !3060, !3061}
!3060 = !DILocalVariable(name: "n", arg: 2, scope: !3058, file: !2977, line: 98, type: !712)
!3061 = !DILocalVariable(name: "s", arg: 3, scope: !3058, file: !2977, line: 98, type: !712)
!3062 = !DILocation(line: 0, scope: !3058, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 91, column: 25, scope: !3049)
!3064 = !DILocation(line: 101, column: 13, scope: !3058, inlinedAt: !3063)
!3065 = !DILocation(line: 0, scope: !2936, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 91, column: 10, scope: !3049)
!3067 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3066)
!3068 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3066)
!3069 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3066)
!3070 = !DILocation(line: 91, column: 3, scope: !3049)
!3071 = distinct !DISubprogram(name: "xnmalloc", scope: !693, file: !693, line: 98, type: !3072, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!91, !93, !93}
!3074 = !{!3075, !3076}
!3075 = !DILocalVariable(name: "n", arg: 1, scope: !3071, file: !693, line: 98, type: !93)
!3076 = !DILocalVariable(name: "s", arg: 2, scope: !3071, file: !693, line: 98, type: !93)
!3077 = !DILocation(line: 0, scope: !3071)
!3078 = !DILocation(line: 0, scope: !2928, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 100, column: 10, scope: !3071)
!3080 = !DILocation(line: 85, column: 25, scope: !2928, inlinedAt: !3079)
!3081 = !DILocation(line: 0, scope: !2936, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 85, column: 10, scope: !2928, inlinedAt: !3079)
!3083 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3082)
!3084 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3082)
!3085 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3082)
!3086 = !DILocation(line: 100, column: 3, scope: !3071)
!3087 = distinct !DISubprogram(name: "xinmalloc", scope: !693, file: !693, line: 104, type: !3088, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!91, !712, !712}
!3090 = !{!3091, !3092}
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !693, line: 104, type: !712)
!3092 = !DILocalVariable(name: "s", arg: 2, scope: !3087, file: !693, line: 104, type: !712)
!3093 = !DILocation(line: 0, scope: !3087)
!3094 = !DILocation(line: 0, scope: !3049, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 106, column: 10, scope: !3087)
!3096 = !DILocation(line: 0, scope: !3058, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 91, column: 25, scope: !3049, inlinedAt: !3095)
!3098 = !DILocation(line: 101, column: 13, scope: !3058, inlinedAt: !3097)
!3099 = !DILocation(line: 0, scope: !2936, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 91, column: 10, scope: !3049, inlinedAt: !3095)
!3101 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3100)
!3102 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3100)
!3103 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3100)
!3104 = !DILocation(line: 106, column: 3, scope: !3087)
!3105 = distinct !DISubprogram(name: "x2realloc", scope: !693, file: !693, line: 116, type: !3106, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!91, !91, !699}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "p", arg: 1, scope: !3105, file: !693, line: 116, type: !91)
!3110 = !DILocalVariable(name: "ps", arg: 2, scope: !3105, file: !693, line: 116, type: !699)
!3111 = !DILocation(line: 0, scope: !3105)
!3112 = !DILocation(line: 0, scope: !696, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 118, column: 10, scope: !3105)
!3114 = !DILocation(line: 178, column: 14, scope: !696, inlinedAt: !3113)
!3115 = !DILocation(line: 180, column: 9, scope: !3116, inlinedAt: !3113)
!3116 = distinct !DILexicalBlock(scope: !696, file: !693, line: 180, column: 7)
!3117 = !DILocation(line: 180, column: 7, scope: !696, inlinedAt: !3113)
!3118 = !DILocation(line: 182, column: 13, scope: !3119, inlinedAt: !3113)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !693, line: 182, column: 11)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !693, line: 181, column: 5)
!3121 = !DILocation(line: 182, column: 11, scope: !3120, inlinedAt: !3113)
!3122 = !DILocation(line: 197, column: 11, scope: !3123, inlinedAt: !3113)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !693, line: 197, column: 11)
!3124 = distinct !DILexicalBlock(scope: !3116, file: !693, line: 195, column: 5)
!3125 = !DILocation(line: 197, column: 11, scope: !3124, inlinedAt: !3113)
!3126 = !DILocation(line: 198, column: 9, scope: !3123, inlinedAt: !3113)
!3127 = !DILocation(line: 0, scope: !2928, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 201, column: 7, scope: !696, inlinedAt: !3113)
!3129 = !DILocation(line: 85, column: 25, scope: !2928, inlinedAt: !3128)
!3130 = !DILocation(line: 0, scope: !2936, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 85, column: 10, scope: !2928, inlinedAt: !3128)
!3132 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3131)
!3133 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3131)
!3134 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3131)
!3135 = !DILocation(line: 202, column: 7, scope: !696, inlinedAt: !3113)
!3136 = !DILocation(line: 118, column: 3, scope: !3105)
!3137 = !DILocation(line: 0, scope: !696)
!3138 = !DILocation(line: 178, column: 14, scope: !696)
!3139 = !DILocation(line: 180, column: 9, scope: !3116)
!3140 = !DILocation(line: 180, column: 7, scope: !696)
!3141 = !DILocation(line: 182, column: 13, scope: !3119)
!3142 = !DILocation(line: 182, column: 11, scope: !3120)
!3143 = !DILocation(line: 190, column: 30, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3119, file: !693, line: 183, column: 9)
!3145 = !DILocation(line: 191, column: 16, scope: !3144)
!3146 = !DILocation(line: 191, column: 13, scope: !3144)
!3147 = !DILocation(line: 192, column: 9, scope: !3144)
!3148 = !DILocation(line: 197, column: 11, scope: !3123)
!3149 = !DILocation(line: 197, column: 11, scope: !3124)
!3150 = !DILocation(line: 198, column: 9, scope: !3123)
!3151 = !DILocation(line: 0, scope: !2928, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 201, column: 7, scope: !696)
!3153 = !DILocation(line: 85, column: 25, scope: !2928, inlinedAt: !3152)
!3154 = !DILocation(line: 0, scope: !2936, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 85, column: 10, scope: !2928, inlinedAt: !3152)
!3156 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3155)
!3157 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3155)
!3158 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3155)
!3159 = !DILocation(line: 202, column: 7, scope: !696)
!3160 = !DILocation(line: 203, column: 3, scope: !696)
!3161 = !DILocation(line: 0, scope: !708)
!3162 = !DILocation(line: 230, column: 14, scope: !708)
!3163 = !DILocation(line: 238, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !708, file: !693, line: 238, column: 7)
!3165 = !DILocation(line: 238, column: 7, scope: !708)
!3166 = !DILocation(line: 240, column: 9, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !708, file: !693, line: 240, column: 7)
!3168 = !DILocation(line: 240, column: 18, scope: !3167)
!3169 = !DILocation(line: 253, column: 8, scope: !708)
!3170 = !DILocation(line: 256, column: 7, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !708, file: !693, line: 256, column: 7)
!3172 = !DILocation(line: 256, column: 7, scope: !708)
!3173 = !DILocation(line: 258, column: 27, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !693, line: 257, column: 5)
!3175 = !DILocation(line: 259, column: 50, scope: !3174)
!3176 = !DILocation(line: 259, column: 32, scope: !3174)
!3177 = !DILocation(line: 260, column: 5, scope: !3174)
!3178 = !DILocation(line: 262, column: 9, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !708, file: !693, line: 262, column: 7)
!3180 = !DILocation(line: 262, column: 7, scope: !708)
!3181 = !DILocation(line: 263, column: 9, scope: !3179)
!3182 = !DILocation(line: 263, column: 5, scope: !3179)
!3183 = !DILocation(line: 264, column: 9, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !708, file: !693, line: 264, column: 7)
!3185 = !DILocation(line: 264, column: 14, scope: !3184)
!3186 = !DILocation(line: 265, column: 7, scope: !3184)
!3187 = !DILocation(line: 265, column: 11, scope: !3184)
!3188 = !DILocation(line: 266, column: 11, scope: !3184)
!3189 = !DILocation(line: 267, column: 14, scope: !3184)
!3190 = !DILocation(line: 264, column: 7, scope: !708)
!3191 = !DILocation(line: 268, column: 5, scope: !3184)
!3192 = !DILocation(line: 0, scope: !3003, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 269, column: 8, scope: !708)
!3194 = !DILocation(line: 0, scope: !3011, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 70, column: 25, scope: !3003, inlinedAt: !3193)
!3196 = !DILocation(line: 2059, column: 24, scope: !3011, inlinedAt: !3195)
!3197 = !DILocation(line: 2059, column: 10, scope: !3011, inlinedAt: !3195)
!3198 = !DILocation(line: 0, scope: !2936, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 70, column: 10, scope: !3003, inlinedAt: !3193)
!3200 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3199)
!3201 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3199)
!3202 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3199)
!3203 = !DILocation(line: 270, column: 7, scope: !708)
!3204 = !DILocation(line: 271, column: 3, scope: !708)
!3205 = distinct !DISubprogram(name: "xzalloc", scope: !693, file: !693, line: 279, type: !2956, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3206)
!3206 = !{!3207}
!3207 = !DILocalVariable(name: "s", arg: 1, scope: !3205, file: !693, line: 279, type: !93)
!3208 = !DILocation(line: 0, scope: !3205)
!3209 = !DILocalVariable(name: "n", arg: 1, scope: !3210, file: !693, line: 294, type: !93)
!3210 = distinct !DISubprogram(name: "xcalloc", scope: !693, file: !693, line: 294, type: !3072, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3211)
!3211 = !{!3209, !3212}
!3212 = !DILocalVariable(name: "s", arg: 2, scope: !3210, file: !693, line: 294, type: !93)
!3213 = !DILocation(line: 0, scope: !3210, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 281, column: 10, scope: !3205)
!3215 = !DILocation(line: 296, column: 25, scope: !3210, inlinedAt: !3214)
!3216 = !DILocation(line: 0, scope: !2936, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 296, column: 10, scope: !3210, inlinedAt: !3214)
!3218 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3217)
!3219 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3217)
!3220 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3217)
!3221 = !DILocation(line: 281, column: 3, scope: !3205)
!3222 = !DISubprogram(name: "calloc", scope: !952, file: !952, line: 543, type: !3072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3223 = !DILocation(line: 0, scope: !3210)
!3224 = !DILocation(line: 296, column: 25, scope: !3210)
!3225 = !DILocation(line: 0, scope: !2936, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 296, column: 10, scope: !3210)
!3227 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3226)
!3228 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3226)
!3229 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3226)
!3230 = !DILocation(line: 296, column: 3, scope: !3210)
!3231 = distinct !DISubprogram(name: "xizalloc", scope: !693, file: !693, line: 285, type: !2970, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3232)
!3232 = !{!3233}
!3233 = !DILocalVariable(name: "s", arg: 1, scope: !3231, file: !693, line: 285, type: !712)
!3234 = !DILocation(line: 0, scope: !3231)
!3235 = !DILocalVariable(name: "n", arg: 1, scope: !3236, file: !693, line: 300, type: !712)
!3236 = distinct !DISubprogram(name: "xicalloc", scope: !693, file: !693, line: 300, type: !3088, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3237)
!3237 = !{!3235, !3238}
!3238 = !DILocalVariable(name: "s", arg: 2, scope: !3236, file: !693, line: 300, type: !712)
!3239 = !DILocation(line: 0, scope: !3236, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 287, column: 10, scope: !3231)
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3242, file: !2977, line: 77, type: !712)
!3242 = distinct !DISubprogram(name: "icalloc", scope: !2977, file: !2977, line: 77, type: !3088, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3243)
!3243 = !{!3241, !3244}
!3244 = !DILocalVariable(name: "s", arg: 2, scope: !3242, file: !2977, line: 77, type: !712)
!3245 = !DILocation(line: 0, scope: !3242, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 302, column: 25, scope: !3236, inlinedAt: !3240)
!3247 = !DILocation(line: 91, column: 10, scope: !3242, inlinedAt: !3246)
!3248 = !DILocation(line: 0, scope: !2936, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 302, column: 10, scope: !3236, inlinedAt: !3240)
!3250 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3249)
!3251 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3249)
!3252 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3249)
!3253 = !DILocation(line: 287, column: 3, scope: !3231)
!3254 = !DILocation(line: 0, scope: !3236)
!3255 = !DILocation(line: 0, scope: !3242, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 302, column: 25, scope: !3236)
!3257 = !DILocation(line: 91, column: 10, scope: !3242, inlinedAt: !3256)
!3258 = !DILocation(line: 0, scope: !2936, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 302, column: 10, scope: !3236)
!3260 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3259)
!3261 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3259)
!3262 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3259)
!3263 = !DILocation(line: 302, column: 3, scope: !3236)
!3264 = distinct !DISubprogram(name: "xmemdup", scope: !693, file: !693, line: 310, type: !3265, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!91, !976, !93}
!3267 = !{!3268, !3269}
!3268 = !DILocalVariable(name: "p", arg: 1, scope: !3264, file: !693, line: 310, type: !976)
!3269 = !DILocalVariable(name: "s", arg: 2, scope: !3264, file: !693, line: 310, type: !93)
!3270 = !DILocation(line: 0, scope: !3264)
!3271 = !DILocation(line: 0, scope: !2955, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 312, column: 18, scope: !3264)
!3273 = !DILocation(line: 49, column: 25, scope: !2955, inlinedAt: !3272)
!3274 = !DILocation(line: 0, scope: !2936, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 49, column: 10, scope: !2955, inlinedAt: !3272)
!3276 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3275)
!3277 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3275)
!3278 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3275)
!3279 = !DILocalVariable(name: "__dest", arg: 1, scope: !3280, file: !1393, line: 26, type: !3283)
!3280 = distinct !DISubprogram(name: "memcpy", scope: !1393, file: !1393, line: 26, type: !3281, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3284)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!91, !3283, !975, !93}
!3283 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3284 = !{!3279, !3285, !3286}
!3285 = !DILocalVariable(name: "__src", arg: 2, scope: !3280, file: !1393, line: 26, type: !975)
!3286 = !DILocalVariable(name: "__len", arg: 3, scope: !3280, file: !1393, line: 26, type: !93)
!3287 = !DILocation(line: 0, scope: !3280, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 312, column: 10, scope: !3264)
!3289 = !DILocation(line: 29, column: 10, scope: !3280, inlinedAt: !3288)
!3290 = !DILocation(line: 312, column: 3, scope: !3264)
!3291 = distinct !DISubprogram(name: "ximemdup", scope: !693, file: !693, line: 316, type: !3292, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!91, !976, !712}
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "p", arg: 1, scope: !3291, file: !693, line: 316, type: !976)
!3296 = !DILocalVariable(name: "s", arg: 2, scope: !3291, file: !693, line: 316, type: !712)
!3297 = !DILocation(line: 0, scope: !3291)
!3298 = !DILocation(line: 0, scope: !2969, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 318, column: 18, scope: !3291)
!3300 = !DILocation(line: 0, scope: !2976, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 55, column: 25, scope: !2969, inlinedAt: !3299)
!3302 = !DILocation(line: 57, column: 26, scope: !2976, inlinedAt: !3301)
!3303 = !DILocation(line: 0, scope: !2936, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 55, column: 10, scope: !2969, inlinedAt: !3299)
!3305 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3304)
!3306 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3304)
!3307 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3304)
!3308 = !DILocation(line: 0, scope: !3280, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 318, column: 10, scope: !3291)
!3310 = !DILocation(line: 29, column: 10, scope: !3280, inlinedAt: !3309)
!3311 = !DILocation(line: 318, column: 3, scope: !3291)
!3312 = distinct !DISubprogram(name: "ximemdup0", scope: !693, file: !693, line: 325, type: !3313, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!90, !976, !712}
!3315 = !{!3316, !3317, !3318}
!3316 = !DILocalVariable(name: "p", arg: 1, scope: !3312, file: !693, line: 325, type: !976)
!3317 = !DILocalVariable(name: "s", arg: 2, scope: !3312, file: !693, line: 325, type: !712)
!3318 = !DILocalVariable(name: "result", scope: !3312, file: !693, line: 327, type: !90)
!3319 = !DILocation(line: 0, scope: !3312)
!3320 = !DILocation(line: 327, column: 30, scope: !3312)
!3321 = !DILocation(line: 0, scope: !2969, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 327, column: 18, scope: !3312)
!3323 = !DILocation(line: 0, scope: !2976, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 55, column: 25, scope: !2969, inlinedAt: !3322)
!3325 = !DILocation(line: 57, column: 26, scope: !2976, inlinedAt: !3324)
!3326 = !DILocation(line: 0, scope: !2936, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 55, column: 10, scope: !2969, inlinedAt: !3322)
!3328 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3327)
!3329 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3327)
!3330 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3327)
!3331 = !DILocation(line: 328, column: 3, scope: !3312)
!3332 = !DILocation(line: 328, column: 13, scope: !3312)
!3333 = !DILocation(line: 0, scope: !3280, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 329, column: 10, scope: !3312)
!3335 = !DILocation(line: 29, column: 10, scope: !3280, inlinedAt: !3334)
!3336 = !DILocation(line: 329, column: 3, scope: !3312)
!3337 = distinct !DISubprogram(name: "xstrdup", scope: !693, file: !693, line: 335, type: !954, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3338)
!3338 = !{!3339}
!3339 = !DILocalVariable(name: "string", arg: 1, scope: !3337, file: !693, line: 335, type: !96)
!3340 = !DILocation(line: 0, scope: !3337)
!3341 = !DILocation(line: 337, column: 27, scope: !3337)
!3342 = !DILocation(line: 337, column: 43, scope: !3337)
!3343 = !DILocation(line: 0, scope: !3264, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 337, column: 10, scope: !3337)
!3345 = !DILocation(line: 0, scope: !2955, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 312, column: 18, scope: !3264, inlinedAt: !3344)
!3347 = !DILocation(line: 49, column: 25, scope: !2955, inlinedAt: !3346)
!3348 = !DILocation(line: 0, scope: !2936, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 49, column: 10, scope: !2955, inlinedAt: !3346)
!3350 = !DILocation(line: 39, column: 8, scope: !2943, inlinedAt: !3349)
!3351 = !DILocation(line: 39, column: 7, scope: !2936, inlinedAt: !3349)
!3352 = !DILocation(line: 40, column: 5, scope: !2943, inlinedAt: !3349)
!3353 = !DILocation(line: 0, scope: !3280, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 312, column: 10, scope: !3264, inlinedAt: !3344)
!3355 = !DILocation(line: 29, column: 10, scope: !3280, inlinedAt: !3354)
!3356 = !DILocation(line: 337, column: 3, scope: !3337)
!3357 = distinct !DISubprogram(name: "xalloc_die", scope: !657, file: !657, line: 32, type: !403, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3358)
!3358 = !{!3359}
!3359 = !DILocalVariable(name: "__errstatus", scope: !3360, file: !657, line: 34, type: !3361)
!3360 = distinct !DILexicalBlock(scope: !3357, file: !657, line: 34, column: 3)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3362 = !DILocation(line: 34, column: 3, scope: !3360)
!3363 = !DILocation(line: 0, scope: !3360)
!3364 = !DILocation(line: 40, column: 3, scope: !3357)
!3365 = distinct !DISubprogram(name: "close_stream", scope: !730, file: !730, line: 55, type: !3366, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3402)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!70, !3368}
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3370)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3370, file: !150, line: 51, baseType: !70, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3370, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3370, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3370, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3370, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3370, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3370, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3370, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3370, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3370, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3370, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3370, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3370, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3370, file: !150, line: 70, baseType: !3386, size: 64, offset: 832)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3370, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3370, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3370, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3370, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3370, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3370, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3370, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3370, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3370, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3370, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3370, file: !150, line: 93, baseType: !3386, size: 64, offset: 1344)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3370, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3370, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3370, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3370, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3402 = !{!3403, !3404, !3406, !3407}
!3403 = !DILocalVariable(name: "stream", arg: 1, scope: !3365, file: !730, line: 55, type: !3368)
!3404 = !DILocalVariable(name: "some_pending", scope: !3365, file: !730, line: 57, type: !3405)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!3406 = !DILocalVariable(name: "prev_fail", scope: !3365, file: !730, line: 58, type: !3405)
!3407 = !DILocalVariable(name: "fclose_fail", scope: !3365, file: !730, line: 59, type: !3405)
!3408 = !DILocation(line: 0, scope: !3365)
!3409 = !DILocation(line: 57, column: 30, scope: !3365)
!3410 = !DILocalVariable(name: "__stream", arg: 1, scope: !3411, file: !1231, line: 135, type: !3368)
!3411 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1231, file: !1231, line: 135, type: !3366, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3412)
!3412 = !{!3410}
!3413 = !DILocation(line: 0, scope: !3411, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 58, column: 27, scope: !3365)
!3415 = !DILocation(line: 137, column: 10, scope: !3411, inlinedAt: !3414)
!3416 = !{!1240, !829, i64 0}
!3417 = !DILocation(line: 58, column: 43, scope: !3365)
!3418 = !DILocation(line: 59, column: 29, scope: !3365)
!3419 = !DILocation(line: 59, column: 45, scope: !3365)
!3420 = !DILocation(line: 69, column: 17, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3365, file: !730, line: 69, column: 7)
!3422 = !DILocation(line: 57, column: 50, scope: !3365)
!3423 = !DILocation(line: 69, column: 33, scope: !3421)
!3424 = !DILocation(line: 69, column: 53, scope: !3421)
!3425 = !DILocation(line: 69, column: 59, scope: !3421)
!3426 = !DILocation(line: 69, column: 7, scope: !3365)
!3427 = !DILocation(line: 71, column: 11, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3421, file: !730, line: 70, column: 5)
!3429 = !DILocation(line: 72, column: 9, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3428, file: !730, line: 71, column: 11)
!3431 = !DILocation(line: 72, column: 15, scope: !3430)
!3432 = !DILocation(line: 77, column: 1, scope: !3365)
!3433 = !DISubprogram(name: "__fpending", scope: !3434, file: !3434, line: 75, type: !3435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3434 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!93, !3368}
!3437 = distinct !DISubprogram(name: "rpl_fclose", scope: !732, file: !732, line: 58, type: !3438, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3474)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!70, !3440}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3442)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3442, file: !150, line: 51, baseType: !70, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3442, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3442, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3442, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3442, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3442, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3442, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3442, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3442, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3442, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3442, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3442, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3442, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3442, file: !150, line: 70, baseType: !3458, size: 64, offset: 832)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3442, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3442, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3442, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3442, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3442, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3442, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3442, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3442, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3442, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3442, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3442, file: !150, line: 93, baseType: !3458, size: 64, offset: 1344)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3442, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3442, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3442, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3442, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3474 = !{!3475, !3476, !3477, !3478}
!3475 = !DILocalVariable(name: "fp", arg: 1, scope: !3437, file: !732, line: 58, type: !3440)
!3476 = !DILocalVariable(name: "saved_errno", scope: !3437, file: !732, line: 60, type: !70)
!3477 = !DILocalVariable(name: "fd", scope: !3437, file: !732, line: 63, type: !70)
!3478 = !DILocalVariable(name: "result", scope: !3437, file: !732, line: 74, type: !70)
!3479 = !DILocation(line: 0, scope: !3437)
!3480 = !DILocation(line: 63, column: 12, scope: !3437)
!3481 = !DILocation(line: 64, column: 10, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3437, file: !732, line: 64, column: 7)
!3483 = !DILocation(line: 64, column: 7, scope: !3437)
!3484 = !DILocation(line: 65, column: 12, scope: !3482)
!3485 = !DILocation(line: 65, column: 5, scope: !3482)
!3486 = !DILocation(line: 70, column: 9, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3437, file: !732, line: 70, column: 7)
!3488 = !DILocation(line: 70, column: 23, scope: !3487)
!3489 = !DILocation(line: 70, column: 33, scope: !3487)
!3490 = !DILocation(line: 70, column: 26, scope: !3487)
!3491 = !DILocation(line: 70, column: 59, scope: !3487)
!3492 = !DILocation(line: 71, column: 7, scope: !3487)
!3493 = !DILocation(line: 71, column: 10, scope: !3487)
!3494 = !DILocation(line: 70, column: 7, scope: !3437)
!3495 = !DILocation(line: 100, column: 12, scope: !3437)
!3496 = !DILocation(line: 105, column: 7, scope: !3437)
!3497 = !DILocation(line: 72, column: 19, scope: !3487)
!3498 = !DILocation(line: 105, column: 19, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3437, file: !732, line: 105, column: 7)
!3500 = !DILocation(line: 107, column: 13, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3499, file: !732, line: 106, column: 5)
!3502 = !DILocation(line: 109, column: 5, scope: !3501)
!3503 = !DILocation(line: 112, column: 1, scope: !3437)
!3504 = !DISubprogram(name: "fileno", scope: !823, file: !823, line: 809, type: !3438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3505 = !DISubprogram(name: "fclose", scope: !823, file: !823, line: 178, type: !3438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3506 = !DISubprogram(name: "__freading", scope: !3434, file: !3434, line: 51, type: !3438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3507 = !DISubprogram(name: "lseek", scope: !1054, file: !1054, line: 339, type: !3508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!172, !70, !172, !70}
!3510 = distinct !DISubprogram(name: "rpl_fflush", scope: !734, file: !734, line: 130, type: !3511, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3547)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!70, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3515)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3515, file: !150, line: 51, baseType: !70, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3515, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3515, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3515, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3515, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3515, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3515, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3515, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3515, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3515, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3515, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3515, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3515, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3515, file: !150, line: 70, baseType: !3531, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3515, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3515, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3515, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3515, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3515, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3515, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3515, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3515, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3515, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3515, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3515, file: !150, line: 93, baseType: !3531, size: 64, offset: 1344)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3515, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3515, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3515, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3515, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3547 = !{!3548}
!3548 = !DILocalVariable(name: "stream", arg: 1, scope: !3510, file: !734, line: 130, type: !3513)
!3549 = !DILocation(line: 0, scope: !3510)
!3550 = !DILocation(line: 151, column: 14, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3510, file: !734, line: 151, column: 7)
!3552 = !DILocation(line: 151, column: 22, scope: !3551)
!3553 = !DILocation(line: 151, column: 27, scope: !3551)
!3554 = !DILocation(line: 151, column: 7, scope: !3510)
!3555 = !DILocation(line: 152, column: 12, scope: !3551)
!3556 = !DILocation(line: 152, column: 5, scope: !3551)
!3557 = !DILocalVariable(name: "fp", arg: 1, scope: !3558, file: !734, line: 42, type: !3513)
!3558 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !734, file: !734, line: 42, type: !3559, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !3513}
!3561 = !{!3557}
!3562 = !DILocation(line: 0, scope: !3558, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 157, column: 3, scope: !3510)
!3564 = !DILocation(line: 44, column: 12, scope: !3565, inlinedAt: !3563)
!3565 = distinct !DILexicalBlock(scope: !3558, file: !734, line: 44, column: 7)
!3566 = !DILocation(line: 44, column: 19, scope: !3565, inlinedAt: !3563)
!3567 = !DILocation(line: 44, column: 7, scope: !3558, inlinedAt: !3563)
!3568 = !DILocation(line: 46, column: 5, scope: !3565, inlinedAt: !3563)
!3569 = !DILocation(line: 159, column: 10, scope: !3510)
!3570 = !DILocation(line: 159, column: 3, scope: !3510)
!3571 = !DILocation(line: 236, column: 1, scope: !3510)
!3572 = !DISubprogram(name: "fflush", scope: !823, file: !823, line: 230, type: !3511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3573 = distinct !DISubprogram(name: "rpl_fseeko", scope: !736, file: !736, line: 28, type: !3574, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3611)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!70, !3576, !3610, !70}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3578)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3579)
!3579 = !{!3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3578, file: !150, line: 51, baseType: !70, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3578, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3578, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3578, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3578, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3578, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3578, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3578, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3578, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3578, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3578, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3578, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3578, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3578, file: !150, line: 70, baseType: !3594, size: 64, offset: 832)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3578, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3578, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3578, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3578, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3578, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3578, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3578, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3578, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3578, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3578, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3578, file: !150, line: 93, baseType: !3594, size: 64, offset: 1344)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3578, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3578, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3578, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3578, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !823, line: 63, baseType: !172)
!3611 = !{!3612, !3613, !3614, !3615}
!3612 = !DILocalVariable(name: "fp", arg: 1, scope: !3573, file: !736, line: 28, type: !3576)
!3613 = !DILocalVariable(name: "offset", arg: 2, scope: !3573, file: !736, line: 28, type: !3610)
!3614 = !DILocalVariable(name: "whence", arg: 3, scope: !3573, file: !736, line: 28, type: !70)
!3615 = !DILocalVariable(name: "pos", scope: !3616, file: !736, line: 123, type: !3610)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !736, line: 119, column: 5)
!3617 = distinct !DILexicalBlock(scope: !3573, file: !736, line: 55, column: 7)
!3618 = !DILocation(line: 0, scope: !3573)
!3619 = !DILocation(line: 55, column: 12, scope: !3617)
!3620 = !{!1240, !767, i64 16}
!3621 = !DILocation(line: 55, column: 33, scope: !3617)
!3622 = !{!1240, !767, i64 8}
!3623 = !DILocation(line: 55, column: 25, scope: !3617)
!3624 = !DILocation(line: 56, column: 7, scope: !3617)
!3625 = !DILocation(line: 56, column: 15, scope: !3617)
!3626 = !DILocation(line: 56, column: 37, scope: !3617)
!3627 = !{!1240, !767, i64 32}
!3628 = !DILocation(line: 56, column: 29, scope: !3617)
!3629 = !DILocation(line: 57, column: 7, scope: !3617)
!3630 = !DILocation(line: 57, column: 15, scope: !3617)
!3631 = !{!1240, !767, i64 72}
!3632 = !DILocation(line: 57, column: 29, scope: !3617)
!3633 = !DILocation(line: 55, column: 7, scope: !3573)
!3634 = !DILocation(line: 123, column: 26, scope: !3616)
!3635 = !DILocation(line: 123, column: 19, scope: !3616)
!3636 = !DILocation(line: 0, scope: !3616)
!3637 = !DILocation(line: 124, column: 15, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3616, file: !736, line: 124, column: 11)
!3639 = !DILocation(line: 124, column: 11, scope: !3616)
!3640 = !DILocation(line: 135, column: 19, scope: !3616)
!3641 = !DILocation(line: 136, column: 12, scope: !3616)
!3642 = !DILocation(line: 136, column: 20, scope: !3616)
!3643 = !{!1240, !1241, i64 144}
!3644 = !DILocation(line: 167, column: 7, scope: !3616)
!3645 = !DILocation(line: 169, column: 10, scope: !3573)
!3646 = !DILocation(line: 169, column: 3, scope: !3573)
!3647 = !DILocation(line: 170, column: 1, scope: !3573)
!3648 = !DISubprogram(name: "fseeko", scope: !823, file: !823, line: 736, type: !3649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!70, !3576, !172, !70}
!3651 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !664, file: !664, line: 100, type: !3652, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3655)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!93, !1411, !96, !93, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!3655 = !{!3656, !3657, !3658, !3659, !3660}
!3656 = !DILocalVariable(name: "pwc", arg: 1, scope: !3651, file: !664, line: 100, type: !1411)
!3657 = !DILocalVariable(name: "s", arg: 2, scope: !3651, file: !664, line: 100, type: !96)
!3658 = !DILocalVariable(name: "n", arg: 3, scope: !3651, file: !664, line: 100, type: !93)
!3659 = !DILocalVariable(name: "ps", arg: 4, scope: !3651, file: !664, line: 100, type: !3654)
!3660 = !DILocalVariable(name: "ret", scope: !3651, file: !664, line: 130, type: !93)
!3661 = !DILocation(line: 0, scope: !3651)
!3662 = !DILocation(line: 105, column: 9, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3651, file: !664, line: 105, column: 7)
!3664 = !DILocation(line: 105, column: 7, scope: !3651)
!3665 = !DILocation(line: 117, column: 10, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3651, file: !664, line: 117, column: 7)
!3667 = !DILocation(line: 117, column: 7, scope: !3651)
!3668 = !DILocation(line: 130, column: 16, scope: !3651)
!3669 = !DILocation(line: 135, column: 11, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3651, file: !664, line: 135, column: 7)
!3671 = !DILocation(line: 135, column: 25, scope: !3670)
!3672 = !DILocation(line: 135, column: 30, scope: !3670)
!3673 = !DILocation(line: 135, column: 7, scope: !3651)
!3674 = !DILocalVariable(name: "ps", arg: 1, scope: !3675, file: !1384, line: 1135, type: !3654)
!3675 = distinct !DISubprogram(name: "mbszero", scope: !1384, file: !1384, line: 1135, type: !3676, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !3654}
!3678 = !{!3674}
!3679 = !DILocation(line: 0, scope: !3675, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 137, column: 5, scope: !3670)
!3681 = !DILocalVariable(name: "__dest", arg: 1, scope: !3682, file: !1393, line: 57, type: !91)
!3682 = distinct !DISubprogram(name: "memset", scope: !1393, file: !1393, line: 57, type: !1394, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3683)
!3683 = !{!3681, !3684, !3685}
!3684 = !DILocalVariable(name: "__ch", arg: 2, scope: !3682, file: !1393, line: 57, type: !70)
!3685 = !DILocalVariable(name: "__len", arg: 3, scope: !3682, file: !1393, line: 57, type: !93)
!3686 = !DILocation(line: 0, scope: !3682, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 1137, column: 3, scope: !3675, inlinedAt: !3680)
!3688 = !DILocation(line: 59, column: 10, scope: !3682, inlinedAt: !3687)
!3689 = !DILocation(line: 137, column: 5, scope: !3670)
!3690 = !DILocation(line: 138, column: 11, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3651, file: !664, line: 138, column: 7)
!3692 = !DILocation(line: 138, column: 7, scope: !3651)
!3693 = !DILocation(line: 139, column: 5, scope: !3691)
!3694 = !DILocation(line: 143, column: 26, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3651, file: !664, line: 143, column: 7)
!3696 = !DILocation(line: 143, column: 41, scope: !3695)
!3697 = !DILocation(line: 143, column: 7, scope: !3651)
!3698 = !DILocation(line: 145, column: 15, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !664, line: 145, column: 11)
!3700 = distinct !DILexicalBlock(scope: !3695, file: !664, line: 144, column: 5)
!3701 = !DILocation(line: 145, column: 11, scope: !3700)
!3702 = !DILocation(line: 146, column: 32, scope: !3699)
!3703 = !DILocation(line: 146, column: 16, scope: !3699)
!3704 = !DILocation(line: 146, column: 14, scope: !3699)
!3705 = !DILocation(line: 146, column: 9, scope: !3699)
!3706 = !DILocation(line: 286, column: 1, scope: !3651)
!3707 = !DISubprogram(name: "mbsinit", scope: !3708, file: !3708, line: 293, type: !3709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3708 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!70, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!3713 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !738, file: !738, line: 27, type: !2920, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3714)
!3714 = !{!3715, !3716, !3717, !3718}
!3715 = !DILocalVariable(name: "ptr", arg: 1, scope: !3713, file: !738, line: 27, type: !91)
!3716 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3713, file: !738, line: 27, type: !93)
!3717 = !DILocalVariable(name: "size", arg: 3, scope: !3713, file: !738, line: 27, type: !93)
!3718 = !DILocalVariable(name: "nbytes", scope: !3713, file: !738, line: 29, type: !93)
!3719 = !DILocation(line: 0, scope: !3713)
!3720 = !DILocation(line: 30, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3713, file: !738, line: 30, column: 7)
!3722 = !DILocation(line: 30, column: 7, scope: !3713)
!3723 = !DILocation(line: 32, column: 7, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !738, line: 31, column: 5)
!3725 = !DILocation(line: 32, column: 13, scope: !3724)
!3726 = !DILocation(line: 33, column: 7, scope: !3724)
!3727 = !DILocalVariable(name: "ptr", arg: 1, scope: !3728, file: !3012, line: 2057, type: !91)
!3728 = distinct !DISubprogram(name: "rpl_realloc", scope: !3012, file: !3012, line: 2057, type: !3004, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3729)
!3729 = !{!3727, !3730}
!3730 = !DILocalVariable(name: "size", arg: 2, scope: !3728, file: !3012, line: 2057, type: !93)
!3731 = !DILocation(line: 0, scope: !3728, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 37, column: 10, scope: !3713)
!3733 = !DILocation(line: 2059, column: 24, scope: !3728, inlinedAt: !3732)
!3734 = !DILocation(line: 2059, column: 10, scope: !3728, inlinedAt: !3732)
!3735 = !DILocation(line: 37, column: 3, scope: !3713)
!3736 = !DILocation(line: 38, column: 1, scope: !3713)
!3737 = distinct !DISubprogram(name: "hard_locale", scope: !682, file: !682, line: 28, type: !3738, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!121, !70}
!3740 = !{!3741, !3742}
!3741 = !DILocalVariable(name: "category", arg: 1, scope: !3737, file: !682, line: 28, type: !70)
!3742 = !DILocalVariable(name: "locale", scope: !3737, file: !682, line: 30, type: !3743)
!3743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3744)
!3744 = !{!3745}
!3745 = !DISubrange(count: 257)
!3746 = distinct !DIAssignID()
!3747 = !DILocation(line: 0, scope: !3737)
!3748 = !DILocation(line: 30, column: 3, scope: !3737)
!3749 = !DILocation(line: 32, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3737, file: !682, line: 32, column: 7)
!3751 = !DILocation(line: 32, column: 7, scope: !3737)
!3752 = !DILocalVariable(name: "__s1", arg: 1, scope: !3753, file: !841, line: 1359, type: !96)
!3753 = distinct !DISubprogram(name: "streq", scope: !841, file: !841, line: 1359, type: !842, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3754)
!3754 = !{!3752, !3755}
!3755 = !DILocalVariable(name: "__s2", arg: 2, scope: !3753, file: !841, line: 1359, type: !96)
!3756 = !DILocation(line: 0, scope: !3753, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 35, column: 9, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3737, file: !682, line: 35, column: 7)
!3759 = !DILocation(line: 1361, column: 11, scope: !3753, inlinedAt: !3757)
!3760 = !DILocation(line: 35, column: 29, scope: !3758)
!3761 = !DILocation(line: 0, scope: !3753, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 35, column: 32, scope: !3758)
!3763 = !DILocation(line: 1361, column: 11, scope: !3753, inlinedAt: !3762)
!3764 = !DILocation(line: 1361, column: 10, scope: !3753, inlinedAt: !3762)
!3765 = !DILocation(line: 35, column: 7, scope: !3737)
!3766 = !DILocation(line: 46, column: 3, scope: !3737)
!3767 = !DILocation(line: 47, column: 1, scope: !3737)
!3768 = distinct !DISubprogram(name: "setlocale_null_r", scope: !744, file: !744, line: 154, type: !3769, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!70, !70, !90, !93}
!3771 = !{!3772, !3773, !3774}
!3772 = !DILocalVariable(name: "category", arg: 1, scope: !3768, file: !744, line: 154, type: !70)
!3773 = !DILocalVariable(name: "buf", arg: 2, scope: !3768, file: !744, line: 154, type: !90)
!3774 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3768, file: !744, line: 154, type: !93)
!3775 = !DILocation(line: 0, scope: !3768)
!3776 = !DILocation(line: 159, column: 10, scope: !3768)
!3777 = !DILocation(line: 159, column: 3, scope: !3768)
!3778 = distinct !DISubprogram(name: "setlocale_null", scope: !744, file: !744, line: 186, type: !3779, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!96, !70}
!3781 = !{!3782}
!3782 = !DILocalVariable(name: "category", arg: 1, scope: !3778, file: !744, line: 186, type: !70)
!3783 = !DILocation(line: 0, scope: !3778)
!3784 = !DILocation(line: 189, column: 10, scope: !3778)
!3785 = !DILocation(line: 189, column: 3, scope: !3778)
!3786 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !746, file: !746, line: 35, type: !3779, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3787)
!3787 = !{!3788, !3789}
!3788 = !DILocalVariable(name: "category", arg: 1, scope: !3786, file: !746, line: 35, type: !70)
!3789 = !DILocalVariable(name: "result", scope: !3786, file: !746, line: 37, type: !96)
!3790 = !DILocation(line: 0, scope: !3786)
!3791 = !DILocation(line: 37, column: 24, scope: !3786)
!3792 = !DILocation(line: 62, column: 3, scope: !3786)
!3793 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !746, file: !746, line: 66, type: !3769, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799}
!3795 = !DILocalVariable(name: "category", arg: 1, scope: !3793, file: !746, line: 66, type: !70)
!3796 = !DILocalVariable(name: "buf", arg: 2, scope: !3793, file: !746, line: 66, type: !90)
!3797 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3793, file: !746, line: 66, type: !93)
!3798 = !DILocalVariable(name: "result", scope: !3793, file: !746, line: 111, type: !96)
!3799 = !DILocalVariable(name: "length", scope: !3800, file: !746, line: 125, type: !93)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !746, line: 124, column: 5)
!3801 = distinct !DILexicalBlock(scope: !3793, file: !746, line: 113, column: 7)
!3802 = !DILocation(line: 0, scope: !3793)
!3803 = !DILocation(line: 0, scope: !3786, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 111, column: 24, scope: !3793)
!3805 = !DILocation(line: 37, column: 24, scope: !3786, inlinedAt: !3804)
!3806 = !DILocation(line: 113, column: 14, scope: !3801)
!3807 = !DILocation(line: 113, column: 7, scope: !3793)
!3808 = !DILocation(line: 116, column: 19, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !746, line: 116, column: 11)
!3810 = distinct !DILexicalBlock(scope: !3801, file: !746, line: 114, column: 5)
!3811 = !DILocation(line: 116, column: 11, scope: !3810)
!3812 = !DILocation(line: 120, column: 16, scope: !3809)
!3813 = !DILocation(line: 120, column: 9, scope: !3809)
!3814 = !DILocation(line: 125, column: 23, scope: !3800)
!3815 = !DILocation(line: 0, scope: !3800)
!3816 = !DILocation(line: 126, column: 18, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3800, file: !746, line: 126, column: 11)
!3818 = !DILocation(line: 126, column: 11, scope: !3800)
!3819 = !DILocation(line: 128, column: 39, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3817, file: !746, line: 127, column: 9)
!3821 = !DILocalVariable(name: "__dest", arg: 1, scope: !3822, file: !1393, line: 26, type: !3283)
!3822 = distinct !DISubprogram(name: "memcpy", scope: !1393, file: !1393, line: 26, type: !3281, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3823)
!3823 = !{!3821, !3824, !3825}
!3824 = !DILocalVariable(name: "__src", arg: 2, scope: !3822, file: !1393, line: 26, type: !975)
!3825 = !DILocalVariable(name: "__len", arg: 3, scope: !3822, file: !1393, line: 26, type: !93)
!3826 = !DILocation(line: 0, scope: !3822, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 128, column: 11, scope: !3820)
!3828 = !DILocation(line: 29, column: 10, scope: !3822, inlinedAt: !3827)
!3829 = !DILocation(line: 129, column: 11, scope: !3820)
!3830 = !DILocation(line: 133, column: 23, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !746, line: 133, column: 15)
!3832 = distinct !DILexicalBlock(scope: !3817, file: !746, line: 132, column: 9)
!3833 = !DILocation(line: 133, column: 15, scope: !3832)
!3834 = !DILocation(line: 138, column: 44, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !746, line: 134, column: 13)
!3836 = !DILocation(line: 0, scope: !3822, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 138, column: 15, scope: !3835)
!3838 = !DILocation(line: 29, column: 10, scope: !3822, inlinedAt: !3837)
!3839 = !DILocation(line: 139, column: 15, scope: !3835)
!3840 = !DILocation(line: 139, column: 32, scope: !3835)
!3841 = !DILocation(line: 140, column: 13, scope: !3835)
!3842 = !DILocation(line: 0, scope: !3801)
!3843 = !DILocation(line: 145, column: 1, scope: !3793)
