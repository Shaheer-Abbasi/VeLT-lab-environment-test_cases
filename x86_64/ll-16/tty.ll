; ModuleID = 'src/tty.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !392
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !362
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !382
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !384
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !386
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !388
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !390
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !394
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !396
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !401
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !406
@.str.44 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !412
@.str.1.45 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !414
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !416
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !447
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !450
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !452
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !457
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !459
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !461
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !463
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !465
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !467
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !469
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.55, ptr @.str.1.56, ptr @.str.2.57, ptr @.str.3.58, ptr @.str.4.59, ptr @.str.5.60, ptr @.str.6.61, ptr @.str.7.62, ptr @.str.8.63, ptr @.str.9.64, ptr null], align 16, !dbg !471
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !496
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !510
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !548
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !555
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !512
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !557
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !500
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !517
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !519
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !521
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !523
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !525
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !563
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !566
@.str.2.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !568
@.str.3.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !570
@.str.4.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !572
@.str.5.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !574
@.str.6.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !579
@.str.7.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !584
@.str.8.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !586
@.str.9.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !588
@.str.10.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !593
@.str.11.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !598
@.str.12.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !603
@.str.13.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !605
@.str.14.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !610
@.str.15.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !615
@.str.16.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !620
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !625
@.str.18.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !627
@.str.19.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !629
@.str.20.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !631
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !633
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !635
@.str.23.98 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !637
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !642
@exit_failure = dso_local global i32 1, align 4, !dbg !650
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !656
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !659
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !661
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !663
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !666
@.str.1.127 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !681

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !755 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !759, metadata !DIExpression()), !dbg !760
  %2 = icmp eq i32 %0, 0, !dbg !761
  br i1 %2, label %8, label %3, !dbg !763

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !764, !tbaa !766
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !764
  %6 = load ptr, ptr @program_name, align 8, !dbg !764, !tbaa !766
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !764
  br label %32, !dbg !764

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !770
  %10 = load ptr, ptr @program_name, align 8, !dbg !770, !tbaa !766
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !770
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !772
  %13 = load ptr, ptr @stdout, align 8, !dbg !772, !tbaa !766
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !772
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !773
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !773
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !774
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !774
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !775
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !775
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !776, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !788, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr poison, metadata !788, metadata !DIExpression()), !dbg !793
  tail call void @emit_bug_reporting_address() #36, !dbg !795
  %18 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !796
  call void @llvm.dbg.value(metadata ptr %18, metadata !791, metadata !DIExpression()), !dbg !793
  %19 = icmp eq ptr %18, null, !dbg !797
  br i1 %19, label %27, label %20, !dbg !799

20:                                               ; preds = %8
  %21 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #37, !dbg !800
  %22 = icmp eq i32 %21, 0, !dbg !800
  br i1 %22, label %27, label %23, !dbg !801

23:                                               ; preds = %20
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #36, !dbg !802
  %25 = load ptr, ptr @stdout, align 8, !dbg !802, !tbaa !766
  %26 = tail call i32 @fputs_unlocked(ptr noundef %24, ptr noundef %25), !dbg !802
  br label %27, !dbg !804

27:                                               ; preds = %8, %20, %23
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !788, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !792, metadata !DIExpression()), !dbg !793
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #36, !dbg !805
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %28, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #36, !dbg !805
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #36, !dbg !806
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #36, !dbg !806
  br label %32

32:                                               ; preds = %27, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !807
  unreachable, !dbg !807
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !808 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !813 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !819 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !822 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !124 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !128, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr %0, metadata !129, metadata !DIExpression()), !dbg !826
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !827, !tbaa !828
  %3 = icmp eq i32 %2, -1, !dbg !830
  br i1 %3, label %4, label %16, !dbg !831

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #36, !dbg !832
  call void @llvm.dbg.value(metadata ptr %5, metadata !130, metadata !DIExpression()), !dbg !833
  %6 = icmp eq ptr %5, null, !dbg !834
  br i1 %6, label %14, label %7, !dbg !835

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !836, !tbaa !837
  %9 = icmp eq i8 %8, 0, !dbg !836
  br i1 %9, label %14, label %10, !dbg !838

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !839, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !845, metadata !DIExpression()), !dbg !846
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #37, !dbg !848
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
  br label %128, !dbg !857

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !133, metadata !DIExpression()), !dbg !826
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #37, !dbg !858
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !859
  call void @llvm.dbg.value(metadata ptr %24, metadata !134, metadata !DIExpression()), !dbg !826
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !860
  call void @llvm.dbg.value(metadata ptr %25, metadata !135, metadata !DIExpression()), !dbg !826
  %26 = icmp eq ptr %25, null, !dbg !861
  br i1 %26, label %58, label %27, !dbg !862

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !863
  br i1 %28, label %58, label %29, !dbg !864

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !136, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i64 0, metadata !140, metadata !DIExpression()), !dbg !865
  %30 = icmp ult ptr %24, %25, !dbg !866
  br i1 %30, label %31, label %52, !dbg !867

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !826
  %33 = load ptr, ptr %32, align 8, !tbaa !766
  br label %34, !dbg !867

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !136, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i64 %36, metadata !140, metadata !DIExpression()), !dbg !865
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !868
  call void @llvm.dbg.value(metadata ptr %37, metadata !136, metadata !DIExpression()), !dbg !865
  %38 = load i8, ptr %35, align 1, !dbg !868, !tbaa !837
  %39 = sext i8 %38 to i64, !dbg !868
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !868
  %41 = load i16, ptr %40, align 2, !dbg !868, !tbaa !869
  %42 = freeze i16 %41, !dbg !871
  %43 = lshr i16 %42, 13, !dbg !871
  %44 = and i16 %43, 1, !dbg !871
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !872
  call void @llvm.dbg.value(metadata i64 %46, metadata !140, metadata !DIExpression()), !dbg !865
  %47 = icmp ult ptr %37, %25, !dbg !866
  %48 = icmp ult i64 %46, 2, !dbg !873
  %49 = select i1 %47, i1 %48, i1 false, !dbg !873
  br i1 %49, label %34, label %50, !dbg !867, !llvm.loop !874

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !876
  br i1 %51, label %52, label %54, !dbg !878

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !878

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !878
  call void @llvm.dbg.value(metadata i8 %57, metadata !133, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr %56, metadata !135, metadata !DIExpression()), !dbg !826
  br label %58, !dbg !879

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !826
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !826
  call void @llvm.dbg.value(metadata i8 %60, metadata !133, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr %59, metadata !135, metadata !DIExpression()), !dbg !826
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.19) #37, !dbg !880
  call void @llvm.dbg.value(metadata i64 %61, metadata !141, metadata !DIExpression()), !dbg !826
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !881
  call void @llvm.dbg.value(metadata ptr %62, metadata !142, metadata !DIExpression()), !dbg !826
  br label %63, !dbg !882

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !826
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !826
  call void @llvm.dbg.value(metadata i8 %65, metadata !133, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr %64, metadata !142, metadata !DIExpression()), !dbg !826
  %66 = load i8, ptr %64, align 1, !dbg !883, !tbaa !837
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !884

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !885
  %69 = load i8, ptr %68, align 1, !dbg !888, !tbaa !837
  %70 = icmp eq i8 %69, 45, !dbg !889
  %71 = select i1 %70, i8 0, i8 %65, !dbg !890
  br label %72, !dbg !890

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !826
  call void @llvm.dbg.value(metadata i8 %73, metadata !133, metadata !DIExpression()), !dbg !826
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !891
  %75 = load ptr, ptr %74, align 8, !dbg !891, !tbaa !766
  %76 = sext i8 %66 to i64, !dbg !891
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !891
  %78 = load i16, ptr %77, align 2, !dbg !891, !tbaa !869
  %79 = and i16 %78, 8192, !dbg !891
  %80 = icmp eq i16 %79, 0, !dbg !891
  br i1 %80, label %96, label %81, !dbg !893

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !894
  br i1 %82, label %98, label %83, !dbg !897

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !898
  %85 = load i8, ptr %84, align 1, !dbg !898, !tbaa !837
  %86 = sext i8 %85 to i64, !dbg !898
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !898
  %88 = load i16, ptr %87, align 2, !dbg !898, !tbaa !869
  %89 = and i16 %88, 8192, !dbg !898
  %90 = icmp eq i16 %89, 0, !dbg !898
  br i1 %90, label %91, label %98, !dbg !899

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !900
  %93 = icmp ne i8 %92, 0, !dbg !900
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !902
  br i1 %95, label %96, label %98, !dbg !902

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !903
  call void @llvm.dbg.value(metadata ptr %97, metadata !142, metadata !DIExpression()), !dbg !826
  br label %63, !dbg !882, !llvm.loop !904

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !906
  %100 = load ptr, ptr @stdout, align 8, !dbg !906, !tbaa !766
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !199, metadata !DIExpression()), !dbg !826
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #37, !dbg !927
  %103 = icmp eq i32 %102, 0, !dbg !927
  br i1 %103, label %107, label %104, !dbg !929

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #37, !dbg !930
  %106 = icmp eq i32 %105, 0, !dbg !930
  br i1 %106, label %107, label %110, !dbg !931

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !932
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !932
  br label %113, !dbg !934

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !935
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !935
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !937, !tbaa !766
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %114), !dbg !937
  %116 = load ptr, ptr @stdout, align 8, !dbg !938, !tbaa !766
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %116), !dbg !938
  %118 = ptrtoint ptr %64 to i64, !dbg !939
  %119 = sub i64 %118, %99, !dbg !939
  %120 = load ptr, ptr @stdout, align 8, !dbg !939, !tbaa !766
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !939
  %122 = load ptr, ptr @stdout, align 8, !dbg !940, !tbaa !766
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %122), !dbg !940
  %124 = load ptr, ptr @stdout, align 8, !dbg !941, !tbaa !766
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %124), !dbg !941
  %126 = load ptr, ptr @stdout, align 8, !dbg !942, !tbaa !766
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !942
  br label %128, !dbg !943

128:                                              ; preds = %113, %19
  ret void, !dbg !943
}

; Function Attrs: nounwind
declare !dbg !944 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !948 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !952 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !954 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !957 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !960 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !963 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !966 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !972 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !973 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !979 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !984, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr %1, metadata !985, metadata !DIExpression()), !dbg !992
  %3 = load ptr, ptr %1, align 8, !dbg !993, !tbaa !766
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !994
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #36, !dbg !995
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #36, !dbg !996
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #36, !dbg !997
  call void @llvm.dbg.value(metadata i32 3, metadata !998, metadata !DIExpression()), !dbg !1001
  store volatile i32 3, ptr @exit_failure, align 4, !dbg !1003, !tbaa !828
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1005
  br label %8, !dbg !1006

8:                                                ; preds = %10, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1007
  call void @llvm.dbg.value(metadata i32 %9, metadata !986, metadata !DIExpression()), !dbg !992
  switch i32 %9, label %16 [
    i32 -1, label %17
    i32 115, label %10
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1006

10:                                               ; preds = %8
  store i1 true, ptr @silent, align 1, !dbg !1008
  br label %8, !dbg !1006, !llvm.loop !1011

11:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #40, !dbg !1013
  unreachable, !dbg !1013

12:                                               ; preds = %8
  %13 = load ptr, ptr @stdout, align 8, !dbg !1014, !tbaa !766
  %14 = load ptr, ptr @Version, align 8, !dbg !1014, !tbaa !766
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #36, !dbg !1014
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %14, ptr noundef %15, ptr noundef null) #36, !dbg !1014
  tail call void @exit(i32 noundef 0) #38, !dbg !1014
  unreachable, !dbg !1014

16:                                               ; preds = %8
  tail call void @usage(i32 noundef 2) #40, !dbg !1015
  unreachable, !dbg !1015

17:                                               ; preds = %8
  %18 = load i32, ptr @optind, align 4, !dbg !1016, !tbaa !828
  %19 = icmp slt i32 %18, %0, !dbg !1018
  br i1 %19, label %20, label %27, !dbg !1019

20:                                               ; preds = %17
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !1020
  %22 = load i32, ptr @optind, align 4, !dbg !1020, !tbaa !828
  %23 = sext i32 %22 to i64, !dbg !1020
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23, !dbg !1020
  %25 = load ptr, ptr %24, align 8, !dbg !1020, !tbaa !766
  %26 = tail call ptr @quote(ptr noundef %25) #36, !dbg !1020
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %21, ptr noundef %26) #36, !dbg !1020
  tail call void @usage(i32 noundef 2) #40, !dbg !1022
  unreachable, !dbg !1022

27:                                               ; preds = %17
  %28 = load i1, ptr @silent, align 1, !dbg !1023
  br i1 %28, label %29, label %33, !dbg !1025

29:                                               ; preds = %27
  %30 = tail call i32 @isatty(i32 noundef 0) #36, !dbg !1026
  %31 = icmp eq i32 %30, 0, !dbg !1026
  %32 = zext i1 %31 to i32, !dbg !1026
  br label %49, !dbg !1027

33:                                               ; preds = %27
  %34 = tail call ptr @ttyname(i32 noundef 0) #36, !dbg !1028
  call void @llvm.dbg.value(metadata ptr %34, metadata !988, metadata !DIExpression()), !dbg !992
  %35 = icmp eq ptr %34, null, !dbg !1029
  br i1 %35, label %36, label %45, !dbg !1030

36:                                               ; preds = %33
  %37 = tail call ptr @__errno_location() #39, !dbg !1031
  %38 = load i32, ptr %37, align 4, !dbg !1031, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %38, metadata !989, metadata !DIExpression()), !dbg !1032
  %39 = tail call i32 @isatty(i32 noundef 0) #36, !dbg !1033
  %40 = icmp eq i32 %39, 0, !dbg !1033
  br i1 %40, label %43, label %41, !dbg !1035

41:                                               ; preds = %36
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #36, !dbg !1036
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 4, i32 noundef %38, ptr noundef %42) #36, !dbg !1036
  unreachable, !dbg !1036

43:                                               ; preds = %36
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #36, !dbg !1037
  call void @llvm.dbg.value(metadata ptr %44, metadata !988, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 1, metadata !987, metadata !DIExpression()), !dbg !992
  br label %45

45:                                               ; preds = %33, %43
  %46 = phi i32 [ 1, %43 ], [ 0, %33 ], !dbg !1038
  %47 = phi ptr [ %44, %43 ], [ %34, %33 ], !dbg !992
  call void @llvm.dbg.value(metadata ptr %47, metadata !988, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 %46, metadata !987, metadata !DIExpression()), !dbg !992
  %48 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %47), !dbg !1039
  br label %49

49:                                               ; preds = %45, %29
  %50 = phi i32 [ %32, %29 ], [ %46, %45 ], !dbg !992
  ret i32 %50, !dbg !1040
}

; Function Attrs: nounwind
declare !dbg !1041 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1044 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1045 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1048 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1054 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1058 ptr @ttyname(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1061 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1065 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1068 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1070, metadata !DIExpression()), !dbg !1071
  store ptr %0, ptr @file_name, align 8, !dbg !1072, !tbaa !766
  ret void, !dbg !1073
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1074 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1078, metadata !DIExpression()), !dbg !1079
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1080, !tbaa !1081
  ret void, !dbg !1083
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1084 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1089, !tbaa !766
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1090
  %3 = icmp eq i32 %2, 0, !dbg !1091
  br i1 %3, label %22, label %4, !dbg !1092

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1093, !tbaa !1081, !range !1094, !noundef !812
  %6 = icmp eq i8 %5, 0, !dbg !1093
  br i1 %6, label %11, label %7, !dbg !1095

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1096
  %9 = load i32, ptr %8, align 4, !dbg !1096, !tbaa !828
  %10 = icmp eq i32 %9, 32, !dbg !1097
  br i1 %10, label %22, label %11, !dbg !1098

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #36, !dbg !1099
  call void @llvm.dbg.value(metadata ptr %12, metadata !1086, metadata !DIExpression()), !dbg !1100
  %13 = load ptr, ptr @file_name, align 8, !dbg !1101, !tbaa !766
  %14 = icmp eq ptr %13, null, !dbg !1101
  %15 = tail call ptr @__errno_location() #39, !dbg !1103
  %16 = load i32, ptr %15, align 4, !dbg !1103, !tbaa !828
  br i1 %14, label %19, label %17, !dbg !1104

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1105
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #36, !dbg !1105
  br label %20, !dbg !1105

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #36, !dbg !1106
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1107, !tbaa !828
  tail call void @_exit(i32 noundef %21) #38, !dbg !1108
  unreachable, !dbg !1108

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1109, !tbaa !766
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1111
  %25 = icmp eq i32 %24, 0, !dbg !1112
  br i1 %25, label %28, label %26, !dbg !1113

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1114, !tbaa !828
  tail call void @_exit(i32 noundef %27) #38, !dbg !1115
  unreachable, !dbg !1115

28:                                               ; preds = %22
  ret void, !dbg !1116
}

; Function Attrs: noreturn
declare !dbg !1117 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1122, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i32 %1, metadata !1123, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata ptr %2, metadata !1124, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata ptr %3, metadata !1125, metadata !DIExpression()), !dbg !1126
  tail call fastcc void @flush_stdout(), !dbg !1127
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1128, !tbaa !766
  %6 = icmp eq ptr %5, null, !dbg !1128
  br i1 %6, label %8, label %7, !dbg !1130

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1131
  br label %12, !dbg !1131

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1132, !tbaa !766
  %10 = tail call ptr @getprogname() #37, !dbg !1132
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %10) #36, !dbg !1132
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1134
  ret void, !dbg !1135
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1136 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1138, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 1, metadata !1140, metadata !DIExpression()), !dbg !1143
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1146
  %2 = icmp slt i32 %1, 0, !dbg !1147
  br i1 %2, label %6, label %3, !dbg !1148

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1149, !tbaa !766
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1149
  br label %6, !dbg !1149

6:                                                ; preds = %3, %0
  ret void, !dbg !1150
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1151 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1153, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i32 %1, metadata !1154, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata ptr %2, metadata !1155, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata ptr %3, metadata !1156, metadata !DIExpression()), !dbg !1157
  %6 = load ptr, ptr @stderr, align 8, !dbg !1158, !tbaa !766
  call void @llvm.dbg.value(metadata ptr %6, metadata !1159, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %2, metadata !1199, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %3, metadata !1200, metadata !DIExpression()), !dbg !1201
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1203
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1204, !tbaa !828
  %9 = add i32 %8, 1, !dbg !1204
  store i32 %9, ptr @error_message_count, align 4, !dbg !1204, !tbaa !828
  %10 = icmp eq i32 %1, 0, !dbg !1205
  br i1 %10, label %20, label %11, !dbg !1207

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1208, metadata !DIExpression()), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1218
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1212, metadata !DIExpression()), !dbg !1219
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1220
  call void @llvm.dbg.value(metadata ptr %12, metadata !1211, metadata !DIExpression()), !dbg !1216
  %13 = icmp eq ptr %12, null, !dbg !1221
  br i1 %13, label %14, label %16, !dbg !1223

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #36, !dbg !1224
  call void @llvm.dbg.value(metadata ptr %15, metadata !1211, metadata !DIExpression()), !dbg !1216
  br label %16, !dbg !1225

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1216
  call void @llvm.dbg.value(metadata ptr %17, metadata !1211, metadata !DIExpression()), !dbg !1216
  %18 = load ptr, ptr @stderr, align 8, !dbg !1226, !tbaa !766
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %17) #36, !dbg !1226
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1227
  br label %20, !dbg !1228

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1229, !tbaa !766
  call void @llvm.dbg.value(metadata i32 10, metadata !1230, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata ptr %21, metadata !1236, metadata !DIExpression()), !dbg !1237
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1239
  %23 = load ptr, ptr %22, align 8, !dbg !1239, !tbaa !1240
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1239
  %25 = load ptr, ptr %24, align 8, !dbg !1239, !tbaa !1243
  %26 = icmp ult ptr %23, %25, !dbg !1239
  br i1 %26, label %29, label %27, !dbg !1239, !prof !1244

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1239
  br label %31, !dbg !1239

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1239
  store ptr %30, ptr %22, align 8, !dbg !1239, !tbaa !1240
  store i8 10, ptr %23, align 1, !dbg !1239, !tbaa !837
  br label %31, !dbg !1239

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1245, !tbaa !766
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1245
  %34 = icmp eq i32 %0, 0, !dbg !1246
  br i1 %34, label %36, label %35, !dbg !1248

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1249
  unreachable, !dbg !1249

36:                                               ; preds = %31
  ret void, !dbg !1250
}

declare !dbg !1251 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1254 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1257 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1260 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1263 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1267 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1271, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %1, metadata !1272, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata ptr %2, metadata !1273, metadata !DIExpression()), !dbg !1280
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1281
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1274, metadata !DIExpression()), !dbg !1282
  call void @llvm.va_start(ptr nonnull %4), !dbg !1283
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1284
  call void @llvm.va_end(ptr nonnull %4), !dbg !1285
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1286
  ret void, !dbg !1286
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !376, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i32 %1, metadata !377, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata ptr %2, metadata !378, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i32 %3, metadata !379, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata ptr %4, metadata !380, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata ptr %5, metadata !381, metadata !DIExpression()), !dbg !1287
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1288, !tbaa !828
  %8 = icmp eq i32 %7, 0, !dbg !1288
  br i1 %8, label %23, label %9, !dbg !1290

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1291, !tbaa !828
  %11 = icmp eq i32 %10, %3, !dbg !1294
  br i1 %11, label %12, label %22, !dbg !1295

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1296, !tbaa !766
  %14 = icmp eq ptr %13, %2, !dbg !1297
  br i1 %14, label %36, label %15, !dbg !1298

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1299
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1300
  br i1 %18, label %19, label %22, !dbg !1300

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1301
  %21 = icmp eq i32 %20, 0, !dbg !1302
  br i1 %21, label %36, label %22, !dbg !1303

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1304, !tbaa !766
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1305, !tbaa !828
  br label %23, !dbg !1306

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1307
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1308, !tbaa !766
  %25 = icmp eq ptr %24, null, !dbg !1308
  br i1 %25, label %27, label %26, !dbg !1310

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1311
  br label %31, !dbg !1311

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1312, !tbaa !766
  %29 = tail call ptr @getprogname() #37, !dbg !1312
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %29) #36, !dbg !1312
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1314, !tbaa !766
  %33 = icmp eq ptr %2, null, !dbg !1314
  %34 = select i1 %33, ptr @.str.3.34, ptr @.str.2.35, !dbg !1314
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1314
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1315
  br label %36, !dbg !1316

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1316
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1317 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1321, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %1, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %2, metadata !1323, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %3, metadata !1324, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %4, metadata !1325, metadata !DIExpression()), !dbg !1327
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1328
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1326, metadata !DIExpression()), !dbg !1329
  call void @llvm.va_start(ptr nonnull %6), !dbg !1330
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1331
  call void @llvm.va_end(ptr nonnull %6), !dbg !1332
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1333
  ret void, !dbg !1333
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1334 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1337, !tbaa !766
  ret ptr %1, !dbg !1338
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1339 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1341, metadata !DIExpression()), !dbg !1344
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %2, metadata !1342, metadata !DIExpression()), !dbg !1344
  %3 = icmp eq ptr %2, null, !dbg !1346
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1346
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1346
  call void @llvm.dbg.value(metadata ptr %5, metadata !1343, metadata !DIExpression()), !dbg !1344
  %6 = ptrtoint ptr %5 to i64, !dbg !1347
  %7 = ptrtoint ptr %0 to i64, !dbg !1347
  %8 = sub i64 %6, %7, !dbg !1347
  %9 = icmp sgt i64 %8, 6, !dbg !1349
  br i1 %9, label %10, label %19, !dbg !1350

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1351
  call void @llvm.dbg.value(metadata ptr %11, metadata !1352, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr @.str.44, metadata !1357, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 7, metadata !1358, metadata !DIExpression()), !dbg !1359
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.44, i64 7), !dbg !1361
  %13 = icmp eq i32 %12, 0, !dbg !1362
  br i1 %13, label %14, label %19, !dbg !1363

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1341, metadata !DIExpression()), !dbg !1344
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.45, i64 noundef 3) #37, !dbg !1364
  %16 = icmp eq i32 %15, 0, !dbg !1367
  %17 = select i1 %16, i64 3, i64 0, !dbg !1368
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1368
  br label %19, !dbg !1368

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1344
  call void @llvm.dbg.value(metadata ptr %21, metadata !1343, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata ptr %20, metadata !1341, metadata !DIExpression()), !dbg !1344
  store ptr %20, ptr @program_name, align 8, !dbg !1369, !tbaa !766
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1370, !tbaa !766
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1371, !tbaa !766
  ret void, !dbg !1372
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1373 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !418 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !425, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata ptr %1, metadata !426, metadata !DIExpression()), !dbg !1374
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %5, metadata !427, metadata !DIExpression()), !dbg !1374
  %6 = icmp eq ptr %5, %0, !dbg !1376
  br i1 %6, label %7, label %14, !dbg !1378

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1379
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %4, metadata !433, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata ptr %4, metadata !1382, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %4, metadata !1391, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i32 0, metadata !1397, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i64 8, metadata !1398, metadata !DIExpression()), !dbg !1399
  store i64 0, ptr %4, align 8, !dbg !1401
  call void @llvm.dbg.value(metadata ptr %3, metadata !428, metadata !DIExpression(DW_OP_deref)), !dbg !1374
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1402
  %9 = icmp eq i64 %8, 2, !dbg !1404
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !428, metadata !DIExpression()), !dbg !1374
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1405
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1406
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1374
  ret ptr %15, !dbg !1406
}

; Function Attrs: nounwind
declare !dbg !1407 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1413 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1418, metadata !DIExpression()), !dbg !1421
  %2 = tail call ptr @__errno_location() #39, !dbg !1422
  %3 = load i32, ptr %2, align 4, !dbg !1422, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %3, metadata !1419, metadata !DIExpression()), !dbg !1421
  %4 = icmp eq ptr %0, null, !dbg !1423
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1423
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1424
  call void @llvm.dbg.value(metadata ptr %6, metadata !1420, metadata !DIExpression()), !dbg !1421
  store i32 %3, ptr %2, align 4, !dbg !1425, !tbaa !828
  ret ptr %6, !dbg !1426
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1427 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1433, metadata !DIExpression()), !dbg !1434
  %2 = icmp eq ptr %0, null, !dbg !1435
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1435
  %4 = load i32, ptr %3, align 8, !dbg !1436, !tbaa !1437
  ret i32 %4, !dbg !1439
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1440 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1444, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %1, metadata !1445, metadata !DIExpression()), !dbg !1446
  %3 = icmp eq ptr %0, null, !dbg !1447
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1447
  store i32 %1, ptr %4, align 8, !dbg !1448, !tbaa !1437
  ret void, !dbg !1449
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1450 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1454, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %1, metadata !1455, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %2, metadata !1456, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %1, metadata !1457, metadata !DIExpression()), !dbg !1462
  %4 = icmp eq ptr %0, null, !dbg !1463
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1463
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1464
  %7 = lshr i8 %1, 5, !dbg !1465
  %8 = zext i8 %7 to i64, !dbg !1465
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1466
  call void @llvm.dbg.value(metadata ptr %9, metadata !1458, metadata !DIExpression()), !dbg !1462
  %10 = and i8 %1, 31, !dbg !1467
  %11 = zext i8 %10 to i32, !dbg !1467
  call void @llvm.dbg.value(metadata i32 %11, metadata !1460, metadata !DIExpression()), !dbg !1462
  %12 = load i32, ptr %9, align 4, !dbg !1468, !tbaa !828
  %13 = lshr i32 %12, %11, !dbg !1469
  %14 = and i32 %13, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i32 %14, metadata !1461, metadata !DIExpression()), !dbg !1462
  %15 = xor i32 %13, %2, !dbg !1471
  %16 = and i32 %15, 1, !dbg !1471
  %17 = shl nuw i32 %16, %11, !dbg !1472
  %18 = xor i32 %17, %12, !dbg !1473
  store i32 %18, ptr %9, align 4, !dbg !1473, !tbaa !828
  ret i32 %14, !dbg !1474
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1475 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1479, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i32 %1, metadata !1480, metadata !DIExpression()), !dbg !1482
  %3 = icmp eq ptr %0, null, !dbg !1483
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1485
  call void @llvm.dbg.value(metadata ptr %4, metadata !1479, metadata !DIExpression()), !dbg !1482
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1486
  %6 = load i32, ptr %5, align 4, !dbg !1486, !tbaa !1487
  call void @llvm.dbg.value(metadata i32 %6, metadata !1481, metadata !DIExpression()), !dbg !1482
  store i32 %1, ptr %5, align 4, !dbg !1488, !tbaa !1487
  ret i32 %6, !dbg !1489
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1490 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1494, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %1, metadata !1495, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %2, metadata !1496, metadata !DIExpression()), !dbg !1497
  %4 = icmp eq ptr %0, null, !dbg !1498
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !1497
  store i32 10, ptr %5, align 8, !dbg !1501, !tbaa !1437
  %6 = icmp ne ptr %1, null, !dbg !1502
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1504
  br i1 %8, label %10, label %9, !dbg !1504

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1505
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1518, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %1, metadata !1519, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %2, metadata !1520, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %3, metadata !1521, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %4, metadata !1522, metadata !DIExpression()), !dbg !1526
  %6 = icmp eq ptr %4, null, !dbg !1527
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %7, metadata !1523, metadata !DIExpression()), !dbg !1526
  %8 = tail call ptr @__errno_location() #39, !dbg !1528
  %9 = load i32, ptr %8, align 4, !dbg !1528, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %9, metadata !1524, metadata !DIExpression()), !dbg !1526
  %10 = load i32, ptr %7, align 8, !dbg !1529, !tbaa !1437
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1530
  %12 = load i32, ptr %11, align 4, !dbg !1530, !tbaa !1487
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1531
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1532
  %15 = load ptr, ptr %14, align 8, !dbg !1532, !tbaa !1508
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1533
  %17 = load ptr, ptr %16, align 8, !dbg !1533, !tbaa !1511
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %18, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i32 %9, ptr %8, align 4, !dbg !1535, !tbaa !828
  ret i64 %18, !dbg !1536
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1537 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %1, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %3, metadata !1546, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %4, metadata !1547, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %5, metadata !1548, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %6, metadata !1549, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %7, metadata !1550, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %8, metadata !1551, metadata !DIExpression()), !dbg !1605
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1606
  %17 = icmp eq i64 %16, 1, !dbg !1607
  call void @llvm.dbg.value(metadata i1 %17, metadata !1552, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1605
  call void @llvm.dbg.value(metadata i64 0, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 0, metadata !1554, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr null, metadata !1555, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 0, metadata !1556, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 0, metadata !1557, metadata !DIExpression()), !dbg !1605
  %18 = trunc i32 %5 to i8, !dbg !1608
  %19 = lshr i8 %18, 1, !dbg !1608
  %20 = and i8 %19, 1, !dbg !1608
  call void @llvm.dbg.value(metadata i8 %20, metadata !1558, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 0, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 1, metadata !1560, metadata !DIExpression()), !dbg !1605
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1609

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1610
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1611
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1612
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1613
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1605
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1614
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1615
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %39, metadata !1560, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %38, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %37, metadata !1558, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %36, metadata !1557, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %35, metadata !1556, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %34, metadata !1555, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %33, metadata !1554, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 0, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %32, metadata !1546, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %31, metadata !1551, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %30, metadata !1550, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %29, metadata !1547, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.label(metadata !1598), !dbg !1616
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1605
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
  ], !dbg !1617

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 5, metadata !1547, metadata !DIExpression()), !dbg !1605
  br label %115, !dbg !1618

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1558, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 5, metadata !1547, metadata !DIExpression()), !dbg !1605
  %43 = and i8 %37, 1, !dbg !1619
  %44 = icmp eq i8 %43, 0, !dbg !1619
  br i1 %44, label %45, label %115, !dbg !1618

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1621
  br i1 %46, label %115, label %47, !dbg !1624

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1621, !tbaa !837
  br label %115, !dbg !1621

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !531, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %29, metadata !532, metadata !DIExpression()), !dbg !1625
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #36, !dbg !1629
  call void @llvm.dbg.value(metadata ptr %49, metadata !533, metadata !DIExpression()), !dbg !1625
  %50 = icmp eq ptr %49, @.str.11.65, !dbg !1630
  br i1 %50, label %51, label %60, !dbg !1632

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1633
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1634
  call void @llvm.dbg.declare(metadata ptr %13, metadata !535, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata ptr %13, metadata !1636, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata ptr %13, metadata !1644, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 0, metadata !1647, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 8, metadata !1648, metadata !DIExpression()), !dbg !1649
  store i64 0, ptr %13, align 8, !dbg !1651
  call void @llvm.dbg.value(metadata ptr %12, metadata !534, metadata !DIExpression(DW_OP_deref)), !dbg !1625
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1652
  %53 = icmp eq i64 %52, 3, !dbg !1654
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !534, metadata !DIExpression()), !dbg !1625
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1655
  %57 = icmp eq i32 %29, 9, !dbg !1655
  %58 = select i1 %57, ptr @.str.10.67, ptr @.str.12.68, !dbg !1655
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1655
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1656
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1625
  call void @llvm.dbg.value(metadata ptr %61, metadata !1550, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !531, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 %29, metadata !532, metadata !DIExpression()), !dbg !1657
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #36, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %62, metadata !533, metadata !DIExpression()), !dbg !1657
  %63 = icmp eq ptr %62, @.str.12.68, !dbg !1660
  br i1 %63, label %64, label %73, !dbg !1661

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1662
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1663
  call void @llvm.dbg.declare(metadata ptr %11, metadata !535, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata ptr %11, metadata !1636, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata ptr %11, metadata !1644, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i32 0, metadata !1647, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 8, metadata !1648, metadata !DIExpression()), !dbg !1667
  store i64 0, ptr %11, align 8, !dbg !1669
  call void @llvm.dbg.value(metadata ptr %10, metadata !534, metadata !DIExpression(DW_OP_deref)), !dbg !1657
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1670
  %66 = icmp eq i64 %65, 3, !dbg !1671
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !534, metadata !DIExpression()), !dbg !1657
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1672
  %70 = icmp eq i32 %29, 9, !dbg !1672
  %71 = select i1 %70, ptr @.str.10.67, ptr @.str.12.68, !dbg !1672
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1673
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1551, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %74, metadata !1550, metadata !DIExpression()), !dbg !1605
  %76 = and i8 %37, 1, !dbg !1674
  %77 = icmp eq i8 %76, 0, !dbg !1674
  br i1 %77, label %78, label %93, !dbg !1675

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1562, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 0, metadata !1553, metadata !DIExpression()), !dbg !1605
  %79 = load i8, ptr %74, align 1, !dbg !1677, !tbaa !837
  %80 = icmp eq i8 %79, 0, !dbg !1679
  br i1 %80, label %93, label %81, !dbg !1679

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1562, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %84, metadata !1553, metadata !DIExpression()), !dbg !1605
  %85 = icmp ult i64 %84, %40, !dbg !1680
  br i1 %85, label %86, label %88, !dbg !1683

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1680
  store i8 %82, ptr %87, align 1, !dbg !1680, !tbaa !837
  br label %88, !dbg !1680

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %89, metadata !1553, metadata !DIExpression()), !dbg !1605
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %90, metadata !1562, metadata !DIExpression()), !dbg !1676
  %91 = load i8, ptr %90, align 1, !dbg !1677, !tbaa !837
  %92 = icmp eq i8 %91, 0, !dbg !1679
  br i1 %92, label %93, label %81, !dbg !1679, !llvm.loop !1685

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1687
  call void @llvm.dbg.value(metadata i64 %94, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 1, metadata !1557, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %75, metadata !1555, metadata !DIExpression()), !dbg !1605
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %95, metadata !1556, metadata !DIExpression()), !dbg !1605
  br label %115, !dbg !1689

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1557, metadata !DIExpression()), !dbg !1605
  br label %97, !dbg !1690

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1605
  call void @llvm.dbg.value(metadata i8 %98, metadata !1557, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1605
  br label %99, !dbg !1691

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1613
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1605
  call void @llvm.dbg.value(metadata i8 %101, metadata !1558, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %100, metadata !1557, metadata !DIExpression()), !dbg !1605
  %102 = and i8 %101, 1, !dbg !1692
  %103 = icmp eq i8 %102, 0, !dbg !1692
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1694
  br label %105, !dbg !1694

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1605
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1608
  call void @llvm.dbg.value(metadata i8 %107, metadata !1558, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %106, metadata !1557, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 2, metadata !1547, metadata !DIExpression()), !dbg !1605
  %108 = and i8 %107, 1, !dbg !1695
  %109 = icmp eq i8 %108, 0, !dbg !1695
  br i1 %109, label %110, label %115, !dbg !1697

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1698
  br i1 %111, label %115, label %112, !dbg !1701

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1698, !tbaa !837
  br label %115, !dbg !1698

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1558, metadata !DIExpression()), !dbg !1605
  br label %115, !dbg !1702

114:                                              ; preds = %28
  call void @abort() #38, !dbg !1703
  unreachable, !dbg !1703

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1687
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.67, %45 ], [ @.str.10.67, %47 ], [ @.str.10.67, %42 ], [ %34, %28 ], [ @.str.12.68, %110 ], [ @.str.12.68, %112 ], [ @.str.12.68, %105 ], [ @.str.10.67, %41 ], !dbg !1605
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1605
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1605
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1605
  call void @llvm.dbg.value(metadata i8 %123, metadata !1558, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %122, metadata !1557, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %121, metadata !1556, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %120, metadata !1555, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %119, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %118, metadata !1551, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %117, metadata !1550, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %116, metadata !1547, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 0, metadata !1567, metadata !DIExpression()), !dbg !1704
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
  br label %138, !dbg !1705

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1687
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1610
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1614
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1615
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1706
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1707
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %145, metadata !1567, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %144, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %143, metadata !1560, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %142, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %141, metadata !1554, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %140, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %139, metadata !1546, metadata !DIExpression()), !dbg !1605
  %147 = icmp eq i64 %139, -1, !dbg !1708
  br i1 %147, label %148, label %152, !dbg !1709

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1710
  %150 = load i8, ptr %149, align 1, !dbg !1710, !tbaa !837
  %151 = icmp eq i8 %150, 0, !dbg !1711
  br i1 %151, label %627, label %154, !dbg !1712

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1713
  br i1 %153, label %627, label %154, !dbg !1712

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1569, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 0, metadata !1572, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 0, metadata !1573, metadata !DIExpression()), !dbg !1714
  br i1 %129, label %155, label %170, !dbg !1715

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1717
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1718
  br i1 %157, label %158, label %160, !dbg !1718

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %159, metadata !1546, metadata !DIExpression()), !dbg !1605
  br label %160, !dbg !1720

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1720
  call void @llvm.dbg.value(metadata i64 %161, metadata !1546, metadata !DIExpression()), !dbg !1605
  %162 = icmp ugt i64 %156, %161, !dbg !1721
  br i1 %162, label %170, label %163, !dbg !1722

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1723
  call void @llvm.dbg.value(metadata ptr %164, metadata !1724, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata ptr %120, metadata !1727, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %121, metadata !1728, metadata !DIExpression()), !dbg !1729
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1731
  %166 = icmp ne i32 %165, 0, !dbg !1732
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1733
  %168 = xor i1 %166, true, !dbg !1733
  %169 = zext i1 %168 to i8, !dbg !1733
  br i1 %167, label %170, label %688, !dbg !1733

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1714
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %173, metadata !1569, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %171, metadata !1546, metadata !DIExpression()), !dbg !1605
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1734
  %175 = load i8, ptr %174, align 1, !dbg !1734, !tbaa !837
  call void @llvm.dbg.value(metadata i8 %175, metadata !1574, metadata !DIExpression()), !dbg !1714
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
  ], !dbg !1735

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1736

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1737

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1572, metadata !DIExpression()), !dbg !1714
  %179 = and i8 %144, 1, !dbg !1741
  %180 = icmp eq i8 %179, 0, !dbg !1741
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1741
  br i1 %181, label %182, label %198, !dbg !1741

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1743
  br i1 %183, label %184, label %186, !dbg !1747

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1743
  store i8 39, ptr %185, align 1, !dbg !1743, !tbaa !837
  br label %186, !dbg !1743

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %187, metadata !1553, metadata !DIExpression()), !dbg !1605
  %188 = icmp ult i64 %187, %146, !dbg !1748
  br i1 %188, label %189, label %191, !dbg !1751

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1748
  store i8 36, ptr %190, align 1, !dbg !1748, !tbaa !837
  br label %191, !dbg !1748

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %192, metadata !1553, metadata !DIExpression()), !dbg !1605
  %193 = icmp ult i64 %192, %146, !dbg !1752
  br i1 %193, label %194, label %196, !dbg !1755

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1752
  store i8 39, ptr %195, align 1, !dbg !1752, !tbaa !837
  br label %196, !dbg !1752

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %197, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 1, metadata !1561, metadata !DIExpression()), !dbg !1605
  br label %198, !dbg !1756

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1605
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1605
  call void @llvm.dbg.value(metadata i8 %200, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %199, metadata !1553, metadata !DIExpression()), !dbg !1605
  %201 = icmp ult i64 %199, %146, !dbg !1757
  br i1 %201, label %202, label %204, !dbg !1760

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1757
  store i8 92, ptr %203, align 1, !dbg !1757, !tbaa !837
  br label %204, !dbg !1757

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %205, metadata !1553, metadata !DIExpression()), !dbg !1605
  br i1 %126, label %206, label %491, !dbg !1761

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1763
  %208 = icmp ult i64 %207, %171, !dbg !1764
  br i1 %208, label %209, label %480, !dbg !1765

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1766
  %211 = load i8, ptr %210, align 1, !dbg !1766, !tbaa !837
  %212 = add i8 %211, -48, !dbg !1767
  %213 = icmp ult i8 %212, 10, !dbg !1767
  br i1 %213, label %214, label %480, !dbg !1767

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1768
  br i1 %215, label %216, label %218, !dbg !1772

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1768
  store i8 48, ptr %217, align 1, !dbg !1768, !tbaa !837
  br label %218, !dbg !1768

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %219, metadata !1553, metadata !DIExpression()), !dbg !1605
  %220 = icmp ult i64 %219, %146, !dbg !1773
  br i1 %220, label %221, label %223, !dbg !1776

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1773
  store i8 48, ptr %222, align 1, !dbg !1773, !tbaa !837
  br label %223, !dbg !1773

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %224, metadata !1553, metadata !DIExpression()), !dbg !1605
  br label %480, !dbg !1777

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1778

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1779

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1780

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1782

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1784
  %231 = icmp ult i64 %230, %171, !dbg !1785
  br i1 %231, label %232, label %480, !dbg !1786

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1787
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1788
  %235 = load i8, ptr %234, align 1, !dbg !1788, !tbaa !837
  %236 = icmp eq i8 %235, 63, !dbg !1789
  br i1 %236, label %237, label %480, !dbg !1790

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1791
  %239 = load i8, ptr %238, align 1, !dbg !1791, !tbaa !837
  %240 = sext i8 %239 to i32, !dbg !1791
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
  ], !dbg !1792

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1793

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1574, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %230, metadata !1567, metadata !DIExpression()), !dbg !1704
  %243 = icmp ult i64 %140, %146, !dbg !1795
  br i1 %243, label %244, label %246, !dbg !1798

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1795
  store i8 63, ptr %245, align 1, !dbg !1795, !tbaa !837
  br label %246, !dbg !1795

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %247, metadata !1553, metadata !DIExpression()), !dbg !1605
  %248 = icmp ult i64 %247, %146, !dbg !1799
  br i1 %248, label %249, label %251, !dbg !1802

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1799
  store i8 34, ptr %250, align 1, !dbg !1799, !tbaa !837
  br label %251, !dbg !1799

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %252, metadata !1553, metadata !DIExpression()), !dbg !1605
  %253 = icmp ult i64 %252, %146, !dbg !1803
  br i1 %253, label %254, label %256, !dbg !1806

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1803
  store i8 34, ptr %255, align 1, !dbg !1803, !tbaa !837
  br label %256, !dbg !1803

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %257, metadata !1553, metadata !DIExpression()), !dbg !1605
  %258 = icmp ult i64 %257, %146, !dbg !1807
  br i1 %258, label %259, label %261, !dbg !1810

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1807
  store i8 63, ptr %260, align 1, !dbg !1807, !tbaa !837
  br label %261, !dbg !1807

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %262, metadata !1553, metadata !DIExpression()), !dbg !1605
  br label %480, !dbg !1811

263:                                              ; preds = %170
  br label %274, !dbg !1812

264:                                              ; preds = %170
  br label %274, !dbg !1813

265:                                              ; preds = %170
  br label %272, !dbg !1814

266:                                              ; preds = %170
  br label %272, !dbg !1815

267:                                              ; preds = %170
  br label %274, !dbg !1816

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1817

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1818

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1821

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1823

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1824
  call void @llvm.dbg.label(metadata !1599), !dbg !1825
  br i1 %134, label %274, label %670, !dbg !1826

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1824
  call void @llvm.dbg.label(metadata !1601), !dbg !1828
  br i1 %125, label %535, label %491, !dbg !1829

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1830

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1831, !tbaa !837
  %279 = icmp eq i8 %278, 0, !dbg !1833
  br i1 %279, label %280, label %480, !dbg !1834

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1835
  br i1 %281, label %282, label %480, !dbg !1837

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1573, metadata !DIExpression()), !dbg !1714
  br label %283, !dbg !1838

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %284, metadata !1573, metadata !DIExpression()), !dbg !1714
  br i1 %134, label %480, label %670, !dbg !1839

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 1, metadata !1573, metadata !DIExpression()), !dbg !1714
  br i1 %133, label %286, label %480, !dbg !1841

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1842

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1845
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1847
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1847
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %292, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %291, metadata !1554, metadata !DIExpression()), !dbg !1605
  %293 = icmp ult i64 %140, %292, !dbg !1848
  br i1 %293, label %294, label %296, !dbg !1851

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1848
  store i8 39, ptr %295, align 1, !dbg !1848, !tbaa !837
  br label %296, !dbg !1848

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %297, metadata !1553, metadata !DIExpression()), !dbg !1605
  %298 = icmp ult i64 %297, %292, !dbg !1852
  br i1 %298, label %299, label %301, !dbg !1855

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1852
  store i8 92, ptr %300, align 1, !dbg !1852, !tbaa !837
  br label %301, !dbg !1852

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %302, metadata !1553, metadata !DIExpression()), !dbg !1605
  %303 = icmp ult i64 %302, %292, !dbg !1856
  br i1 %303, label %304, label %306, !dbg !1859

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1856
  store i8 39, ptr %305, align 1, !dbg !1856, !tbaa !837
  br label %306, !dbg !1856

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %307, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1605
  br label %480, !dbg !1860

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1861

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1575, metadata !DIExpression()), !dbg !1862
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !1863
  %311 = load ptr, ptr %310, align 8, !dbg !1863, !tbaa !766
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1863
  %314 = load i16, ptr %313, align 2, !dbg !1863, !tbaa !869
  %315 = lshr i16 %314, 14, !dbg !1865
  %316 = trunc i16 %315 to i8, !dbg !1865
  %317 = and i8 %316, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i8 %317, metadata !1578, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %171, metadata !1546, metadata !DIExpression()), !dbg !1605
  %318 = icmp eq i8 %317, 0, !dbg !1866
  call void @llvm.dbg.value(metadata i1 %318, metadata !1573, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1714
  br label %368, !dbg !1867

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1868
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1579, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata ptr %14, metadata !1636, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr %14, metadata !1644, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1647, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 8, metadata !1648, metadata !DIExpression()), !dbg !1872
  store i64 0, ptr %14, align 8, !dbg !1874
  call void @llvm.dbg.value(metadata i64 0, metadata !1575, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1578, metadata !DIExpression()), !dbg !1862
  %320 = icmp eq i64 %171, -1, !dbg !1875
  br i1 %320, label %321, label %323, !dbg !1877

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %322, metadata !1546, metadata !DIExpression()), !dbg !1605
  br label %323, !dbg !1879

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1714
  call void @llvm.dbg.value(metadata i64 %324, metadata !1546, metadata !DIExpression()), !dbg !1605
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1880
  %325 = sub i64 %324, %145, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %15, metadata !1582, metadata !DIExpression(DW_OP_deref)), !dbg !1882
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %326, metadata !1586, metadata !DIExpression()), !dbg !1882
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1884

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1575, metadata !DIExpression()), !dbg !1862
  %328 = icmp ugt i64 %324, %145, !dbg !1885
  br i1 %328, label %331, label %329, !dbg !1887

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1578, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1575, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1888
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %324, metadata !1546, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i1 true, metadata !1573, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1714
  br label %368, !dbg !1867

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1578, metadata !DIExpression()), !dbg !1862
  br label %360, !dbg !1890

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1575, metadata !DIExpression()), !dbg !1862
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1892
  %335 = load i8, ptr %334, align 1, !dbg !1892, !tbaa !837
  %336 = icmp eq i8 %335, 0, !dbg !1887
  br i1 %336, label %363, label %337, !dbg !1893

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %338, metadata !1575, metadata !DIExpression()), !dbg !1862
  %339 = add i64 %338, %145, !dbg !1895
  %340 = icmp eq i64 %338, %325, !dbg !1885
  br i1 %340, label %363, label %331, !dbg !1887, !llvm.loop !1896

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1897
  %344 = and i1 %343, %133, !dbg !1897
  call void @llvm.dbg.value(metadata i64 1, metadata !1587, metadata !DIExpression()), !dbg !1898
  br i1 %344, label %345, label %354, !dbg !1897

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1587, metadata !DIExpression()), !dbg !1898
  %347 = add i64 %346, %145, !dbg !1899
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1901
  %349 = load i8, ptr %348, align 1, !dbg !1901, !tbaa !837
  %350 = sext i8 %349 to i32, !dbg !1901
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1902

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %352, metadata !1587, metadata !DIExpression()), !dbg !1898
  %353 = icmp eq i64 %352, %326, !dbg !1904
  br i1 %353, label %354, label %345, !dbg !1905, !llvm.loop !1906

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1908, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %355, metadata !1582, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i32 %355, metadata !1910, metadata !DIExpression()), !dbg !1918
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !1920
  %357 = icmp ne i32 %356, 0, !dbg !1921
  %358 = zext i1 %357 to i8, !dbg !1922
  call void @llvm.dbg.value(metadata i8 %358, metadata !1578, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %326, metadata !1575, metadata !DIExpression()), !dbg !1862
  br label %363, !dbg !1923

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1578, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1575, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1888
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1889
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1578, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1575, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1888
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %324, metadata !1546, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i1 %361, metadata !1573, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1714
  br label %368, !dbg !1867

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1578, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %364, metadata !1575, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1888
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %324, metadata !1546, metadata !DIExpression()), !dbg !1605
  %366 = icmp eq i8 %365, 0, !dbg !1866
  call void @llvm.dbg.value(metadata i1 %366, metadata !1573, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1714
  %367 = icmp ugt i64 %364, 1, !dbg !1924
  br i1 %367, label %374, label %368, !dbg !1867

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1925
  br i1 %373, label %374, label %480, !dbg !1925

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %379, metadata !1595, metadata !DIExpression()), !dbg !1927
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1928

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1605
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1706
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1704
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1714
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !1929
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %387, metadata !1574, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %386, metadata !1572, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %385, metadata !1569, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %384, metadata !1567, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %383, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %382, metadata !1553, metadata !DIExpression()), !dbg !1605
  br i1 %380, label %388, label %434, !dbg !1930

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !1935

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1572, metadata !DIExpression()), !dbg !1714
  %390 = and i8 %383, 1, !dbg !1938
  %391 = icmp eq i8 %390, 0, !dbg !1938
  %392 = select i1 %133, i1 %391, i1 false, !dbg !1938
  br i1 %392, label %393, label %409, !dbg !1938

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !1940
  br i1 %394, label %395, label %397, !dbg !1944

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1940
  store i8 39, ptr %396, align 1, !dbg !1940, !tbaa !837
  br label %397, !dbg !1940

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %398, metadata !1553, metadata !DIExpression()), !dbg !1605
  %399 = icmp ult i64 %398, %146, !dbg !1945
  br i1 %399, label %400, label %402, !dbg !1948

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !1945
  store i8 36, ptr %401, align 1, !dbg !1945, !tbaa !837
  br label %402, !dbg !1945

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %403, metadata !1553, metadata !DIExpression()), !dbg !1605
  %404 = icmp ult i64 %403, %146, !dbg !1949
  br i1 %404, label %405, label %407, !dbg !1952

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !1949
  store i8 39, ptr %406, align 1, !dbg !1949, !tbaa !837
  br label %407, !dbg !1949

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %408, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 1, metadata !1561, metadata !DIExpression()), !dbg !1605
  br label %409, !dbg !1953

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1605
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1605
  call void @llvm.dbg.value(metadata i8 %411, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %410, metadata !1553, metadata !DIExpression()), !dbg !1605
  %412 = icmp ult i64 %410, %146, !dbg !1954
  br i1 %412, label %413, label %415, !dbg !1957

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !1954
  store i8 92, ptr %414, align 1, !dbg !1954, !tbaa !837
  br label %415, !dbg !1954

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %416, metadata !1553, metadata !DIExpression()), !dbg !1605
  %417 = icmp ult i64 %416, %146, !dbg !1958
  br i1 %417, label %418, label %422, !dbg !1961

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !1958
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !1958
  store i8 %420, ptr %421, align 1, !dbg !1958, !tbaa !837
  br label %422, !dbg !1958

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %423, metadata !1553, metadata !DIExpression()), !dbg !1605
  %424 = icmp ult i64 %423, %146, !dbg !1962
  br i1 %424, label %425, label %430, !dbg !1965

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !1962
  %428 = or i8 %427, 48, !dbg !1962
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !1962
  store i8 %428, ptr %429, align 1, !dbg !1962, !tbaa !837
  br label %430, !dbg !1962

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %431, metadata !1553, metadata !DIExpression()), !dbg !1605
  %432 = and i8 %387, 7, !dbg !1966
  %433 = or i8 %432, 48, !dbg !1967
  call void @llvm.dbg.value(metadata i8 %433, metadata !1574, metadata !DIExpression()), !dbg !1714
  br label %443, !dbg !1968

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !1969
  %436 = icmp eq i8 %435, 0, !dbg !1969
  br i1 %436, label %443, label %437, !dbg !1971

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !1972
  br i1 %438, label %439, label %441, !dbg !1976

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1972
  store i8 92, ptr %440, align 1, !dbg !1972, !tbaa !837
  br label %441, !dbg !1972

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %442, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 0, metadata !1569, metadata !DIExpression()), !dbg !1714
  br label %443, !dbg !1977

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1605
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1706
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1714
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1714
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %448, metadata !1574, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %447, metadata !1572, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %446, metadata !1569, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %445, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %444, metadata !1553, metadata !DIExpression()), !dbg !1605
  %449 = add i64 %384, 1, !dbg !1978
  %450 = icmp ugt i64 %379, %449, !dbg !1980
  br i1 %450, label %451, label %478, !dbg !1981

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !1982
  %453 = icmp ne i8 %452, 0, !dbg !1982
  %454 = and i8 %447, 1, !dbg !1982
  %455 = icmp eq i8 %454, 0, !dbg !1982
  %456 = select i1 %453, i1 %455, i1 false, !dbg !1982
  br i1 %456, label %457, label %468, !dbg !1982

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !1985
  br i1 %458, label %459, label %461, !dbg !1989

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !1985
  store i8 39, ptr %460, align 1, !dbg !1985, !tbaa !837
  br label %461, !dbg !1985

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %462, metadata !1553, metadata !DIExpression()), !dbg !1605
  %463 = icmp ult i64 %462, %146, !dbg !1990
  br i1 %463, label %464, label %466, !dbg !1993

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !1990
  store i8 39, ptr %465, align 1, !dbg !1990, !tbaa !837
  br label %466, !dbg !1990

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %467, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1605
  br label %468, !dbg !1994

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !1995
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1605
  call void @llvm.dbg.value(metadata i8 %470, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %469, metadata !1553, metadata !DIExpression()), !dbg !1605
  %471 = icmp ult i64 %469, %146, !dbg !1996
  br i1 %471, label %472, label %474, !dbg !1999

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !1996
  store i8 %448, ptr %473, align 1, !dbg !1996, !tbaa !837
  br label %474, !dbg !1996

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %475, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %449, metadata !1567, metadata !DIExpression()), !dbg !1704
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2000
  %477 = load i8, ptr %476, align 1, !dbg !2000, !tbaa !837
  call void @llvm.dbg.value(metadata i8 %477, metadata !1574, metadata !DIExpression()), !dbg !1714
  br label %381, !dbg !2001, !llvm.loop !2002

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i8 %448, metadata !1574, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %479, metadata !1573, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %447, metadata !1572, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %446, metadata !1569, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %384, metadata !1567, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %445, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %444, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %378, metadata !1546, metadata !DIExpression()), !dbg !1605
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2005
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1605
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1610
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1605
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1605
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1704
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1714
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1714
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1714
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %489, metadata !1574, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %488, metadata !1573, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %487, metadata !1572, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %173, metadata !1569, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %486, metadata !1567, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %485, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %484, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %483, metadata !1554, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %482, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %481, metadata !1546, metadata !DIExpression()), !dbg !1605
  br i1 %127, label %502, label %491, !dbg !2006

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
  br i1 %137, label %503, label %524, !dbg !2008

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2009

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
  %514 = lshr i8 %505, 5, !dbg !2010
  %515 = zext i8 %514 to i64, !dbg !2010
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2011
  %517 = load i32, ptr %516, align 4, !dbg !2011, !tbaa !828
  %518 = and i8 %505, 31, !dbg !2012
  %519 = zext i8 %518 to i32, !dbg !2012
  %520 = shl nuw i32 1, %519, !dbg !2013
  %521 = and i32 %517, %520, !dbg !2013
  %522 = icmp eq i32 %521, 0, !dbg !2013
  %523 = and i1 %172, %522, !dbg !2014
  br i1 %523, label %573, label %535, !dbg !2014

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
  br i1 %172, label %573, label %535, !dbg !2015

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2005
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1605
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1610
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1614
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1706
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2016
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1714
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1714
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %543, metadata !1574, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %542, metadata !1573, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %541, metadata !1567, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %540, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %539, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %538, metadata !1554, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %537, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %536, metadata !1546, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.label(metadata !1602), !dbg !2017
  br i1 %132, label %545, label %674, !dbg !2018

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1572, metadata !DIExpression()), !dbg !1714
  %546 = and i8 %540, 1, !dbg !2020
  %547 = icmp eq i8 %546, 0, !dbg !2020
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2020
  br i1 %548, label %549, label %565, !dbg !2020

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2022
  br i1 %550, label %551, label %553, !dbg !2026

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2022
  store i8 39, ptr %552, align 1, !dbg !2022, !tbaa !837
  br label %553, !dbg !2022

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %554, metadata !1553, metadata !DIExpression()), !dbg !1605
  %555 = icmp ult i64 %554, %544, !dbg !2027
  br i1 %555, label %556, label %558, !dbg !2030

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2027
  store i8 36, ptr %557, align 1, !dbg !2027, !tbaa !837
  br label %558, !dbg !2027

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %559, metadata !1553, metadata !DIExpression()), !dbg !1605
  %560 = icmp ult i64 %559, %544, !dbg !2031
  br i1 %560, label %561, label %563, !dbg !2034

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2031
  store i8 39, ptr %562, align 1, !dbg !2031, !tbaa !837
  br label %563, !dbg !2031

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %564, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 1, metadata !1561, metadata !DIExpression()), !dbg !1605
  br label %565, !dbg !2035

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1714
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1605
  call void @llvm.dbg.value(metadata i8 %567, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %566, metadata !1553, metadata !DIExpression()), !dbg !1605
  %568 = icmp ult i64 %566, %544, !dbg !2036
  br i1 %568, label %569, label %571, !dbg !2039

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2036
  store i8 92, ptr %570, align 1, !dbg !2036, !tbaa !837
  br label %571, !dbg !2036

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %544, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %543, metadata !1574, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %542, metadata !1573, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 1, metadata !1572, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %541, metadata !1567, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %567, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %539, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %538, metadata !1554, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %572, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %536, metadata !1546, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.label(metadata !1603), !dbg !2040
  br label %600, !dbg !2041

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2005
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1605
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1610
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1614
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1706
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2016
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1714
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1714
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2044
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %582, metadata !1574, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %581, metadata !1573, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %580, metadata !1572, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %579, metadata !1567, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %578, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %577, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %576, metadata !1554, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %575, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %574, metadata !1546, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.label(metadata !1603), !dbg !2040
  %584 = and i8 %578, 1, !dbg !2041
  %585 = icmp ne i8 %584, 0, !dbg !2041
  %586 = and i8 %580, 1, !dbg !2041
  %587 = icmp eq i8 %586, 0, !dbg !2041
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2041
  br i1 %588, label %589, label %600, !dbg !2041

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2045
  br i1 %590, label %591, label %593, !dbg !2049

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2045
  store i8 39, ptr %592, align 1, !dbg !2045, !tbaa !837
  br label %593, !dbg !2045

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %594, metadata !1553, metadata !DIExpression()), !dbg !1605
  %595 = icmp ult i64 %594, %583, !dbg !2050
  br i1 %595, label %596, label %598, !dbg !2053

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2050
  store i8 39, ptr %597, align 1, !dbg !2050, !tbaa !837
  br label %598, !dbg !2050

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %599, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1605
  br label %600, !dbg !2054

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1714
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1605
  call void @llvm.dbg.value(metadata i8 %609, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %608, metadata !1553, metadata !DIExpression()), !dbg !1605
  %610 = icmp ult i64 %608, %601, !dbg !2055
  br i1 %610, label %611, label %613, !dbg !2058

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2055
  store i8 %602, ptr %612, align 1, !dbg !2055, !tbaa !837
  br label %613, !dbg !2055

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %614, metadata !1553, metadata !DIExpression()), !dbg !1605
  %615 = icmp eq i8 %603, 0, !dbg !2059
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2061
  call void @llvm.dbg.value(metadata i8 %616, metadata !1560, metadata !DIExpression()), !dbg !1605
  br label %617, !dbg !2062

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2005
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1605
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1610
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1614
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1615
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1706
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2016
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %624, metadata !1567, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %623, metadata !1561, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %622, metadata !1560, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %621, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %620, metadata !1554, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %619, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %618, metadata !1546, metadata !DIExpression()), !dbg !1605
  %626 = add i64 %624, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %626, metadata !1567, metadata !DIExpression()), !dbg !1704
  br label %138, !dbg !2064, !llvm.loop !2065

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1544, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %143, metadata !1560, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %142, metadata !1559, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %141, metadata !1554, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %140, metadata !1553, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %139, metadata !1546, metadata !DIExpression()), !dbg !1605
  %628 = icmp eq i64 %140, 0, !dbg !2067
  %629 = and i1 %133, %628, !dbg !2069
  %630 = xor i1 %629, true, !dbg !2069
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2069
  br i1 %631, label %632, label %670, !dbg !2069

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2070
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2070
  br i1 %636, label %637, label %646, !dbg !2070

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2072
  %639 = icmp eq i8 %638, 0, !dbg !2072
  br i1 %639, label %642, label %640, !dbg !2075

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2076
  br label %694, !dbg !2077

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2078
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2080
  br i1 %645, label %28, label %646, !dbg !2080

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2081
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2083
  br i1 %649, label %650, label %665, !dbg !2083

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1555, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %140, metadata !1553, metadata !DIExpression()), !dbg !1605
  %651 = load i8, ptr %120, align 1, !dbg !2084, !tbaa !837
  %652 = icmp eq i8 %651, 0, !dbg !2087
  br i1 %652, label %665, label %653, !dbg !2087

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1555, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %656, metadata !1553, metadata !DIExpression()), !dbg !1605
  %657 = icmp ult i64 %656, %146, !dbg !2088
  br i1 %657, label %658, label %660, !dbg !2091

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2088
  store i8 %654, ptr %659, align 1, !dbg !2088, !tbaa !837
  br label %660, !dbg !2088

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %661, metadata !1553, metadata !DIExpression()), !dbg !1605
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2092
  call void @llvm.dbg.value(metadata ptr %662, metadata !1555, metadata !DIExpression()), !dbg !1605
  %663 = load i8, ptr %662, align 1, !dbg !2084, !tbaa !837
  %664 = icmp eq i8 %663, 0, !dbg !2087
  br i1 %664, label %665, label %653, !dbg !2087, !llvm.loop !2093

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1687
  call void @llvm.dbg.value(metadata i64 %666, metadata !1553, metadata !DIExpression()), !dbg !1605
  %667 = icmp ult i64 %666, %146, !dbg !2095
  br i1 %667, label %668, label %694, !dbg !2097

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2098
  store i8 0, ptr %669, align 1, !dbg !2099, !tbaa !837
  br label %694, !dbg !2098

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1604), !dbg !2100
  %672 = icmp eq i8 %124, 0, !dbg !2101
  %673 = select i1 %672, i32 2, i32 4, !dbg !2101
  br label %684, !dbg !2101

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2101
  %678 = select i1 %677, i32 2, i32 4, !dbg !2101
  br label %679, !dbg !2103

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1604), !dbg !2100
  %683 = icmp eq i32 %116, 2, !dbg !2103
  br i1 %683, label %684, label %688, !dbg !2101

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2101

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1547, metadata !DIExpression()), !dbg !1605
  %692 = and i32 %5, -3, !dbg !2104
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2105
  br label %694, !dbg !2106

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2107
}

; Function Attrs: nounwind
declare !dbg !2108 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2111 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2114 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2116 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2120, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %1, metadata !2121, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata ptr %2, metadata !2122, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata ptr %0, metadata !2124, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %1, metadata !2129, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata ptr null, metadata !2130, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata ptr %2, metadata !2131, metadata !DIExpression()), !dbg !2137
  %4 = icmp eq ptr %2, null, !dbg !2139
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2139
  call void @llvm.dbg.value(metadata ptr %5, metadata !2132, metadata !DIExpression()), !dbg !2137
  %6 = tail call ptr @__errno_location() #39, !dbg !2140
  %7 = load i32, ptr %6, align 4, !dbg !2140, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %7, metadata !2133, metadata !DIExpression()), !dbg !2137
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2141
  %9 = load i32, ptr %8, align 4, !dbg !2141, !tbaa !1487
  %10 = or i32 %9, 1, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %10, metadata !2134, metadata !DIExpression()), !dbg !2137
  %11 = load i32, ptr %5, align 8, !dbg !2143, !tbaa !1437
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2144
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2145
  %14 = load ptr, ptr %13, align 8, !dbg !2145, !tbaa !1508
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2146
  %16 = load ptr, ptr %15, align 8, !dbg !2146, !tbaa !1511
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2147
  %18 = add i64 %17, 1, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %18, metadata !2135, metadata !DIExpression()), !dbg !2137
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %19, metadata !2136, metadata !DIExpression()), !dbg !2137
  %20 = load i32, ptr %5, align 8, !dbg !2150, !tbaa !1437
  %21 = load ptr, ptr %13, align 8, !dbg !2151, !tbaa !1508
  %22 = load ptr, ptr %15, align 8, !dbg !2152, !tbaa !1511
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2153
  store i32 %7, ptr %6, align 4, !dbg !2154, !tbaa !828
  ret ptr %19, !dbg !2155
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2124, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %1, metadata !2129, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata ptr %2, metadata !2130, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata ptr %3, metadata !2131, metadata !DIExpression()), !dbg !2156
  %5 = icmp eq ptr %3, null, !dbg !2157
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2157
  call void @llvm.dbg.value(metadata ptr %6, metadata !2132, metadata !DIExpression()), !dbg !2156
  %7 = tail call ptr @__errno_location() #39, !dbg !2158
  %8 = load i32, ptr %7, align 4, !dbg !2158, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %8, metadata !2133, metadata !DIExpression()), !dbg !2156
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2159
  %10 = load i32, ptr %9, align 4, !dbg !2159, !tbaa !1487
  %11 = icmp eq ptr %2, null, !dbg !2160
  %12 = zext i1 %11 to i32, !dbg !2160
  %13 = or i32 %10, %12, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %13, metadata !2134, metadata !DIExpression()), !dbg !2156
  %14 = load i32, ptr %6, align 8, !dbg !2162, !tbaa !1437
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2163
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2164
  %17 = load ptr, ptr %16, align 8, !dbg !2164, !tbaa !1508
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2165
  %19 = load ptr, ptr %18, align 8, !dbg !2165, !tbaa !1511
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2166
  %21 = add i64 %20, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %21, metadata !2135, metadata !DIExpression()), !dbg !2156
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2168
  call void @llvm.dbg.value(metadata ptr %22, metadata !2136, metadata !DIExpression()), !dbg !2156
  %23 = load i32, ptr %6, align 8, !dbg !2169, !tbaa !1437
  %24 = load ptr, ptr %16, align 8, !dbg !2170, !tbaa !1508
  %25 = load ptr, ptr %18, align 8, !dbg !2171, !tbaa !1511
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2172
  store i32 %8, ptr %7, align 4, !dbg !2173, !tbaa !828
  br i1 %11, label %28, label %27, !dbg !2174

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2175, !tbaa !2177
  br label %28, !dbg !2178

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2179
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2180 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2185, !tbaa !766
  call void @llvm.dbg.value(metadata ptr %1, metadata !2182, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 1, metadata !2183, metadata !DIExpression()), !dbg !2187
  %2 = load i32, ptr @nslots, align 4, !tbaa !828
  call void @llvm.dbg.value(metadata i32 1, metadata !2183, metadata !DIExpression()), !dbg !2187
  %3 = icmp sgt i32 %2, 1, !dbg !2188
  br i1 %3, label %4, label %6, !dbg !2190

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2188
  br label %10, !dbg !2190

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2191
  %8 = load ptr, ptr %7, align 8, !dbg !2191, !tbaa !2193
  %9 = icmp eq ptr %8, @slot0, !dbg !2195
  br i1 %9, label %17, label %16, !dbg !2196

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2183, metadata !DIExpression()), !dbg !2187
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2197
  %13 = load ptr, ptr %12, align 8, !dbg !2197, !tbaa !2193
  tail call void @free(ptr noundef %13) #36, !dbg !2198
  %14 = add nuw nsw i64 %11, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %14, metadata !2183, metadata !DIExpression()), !dbg !2187
  %15 = icmp eq i64 %14, %5, !dbg !2188
  br i1 %15, label %6, label %10, !dbg !2190, !llvm.loop !2200

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2202
  store i64 256, ptr @slotvec0, align 8, !dbg !2204, !tbaa !2205
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2206, !tbaa !2193
  br label %17, !dbg !2207

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2208
  br i1 %18, label %20, label %19, !dbg !2210

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2211
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2213, !tbaa !766
  br label %20, !dbg !2214

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2215, !tbaa !828
  ret void, !dbg !2216
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2217 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2220 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2222, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata ptr %1, metadata !2223, metadata !DIExpression()), !dbg !2224
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2225
  ret ptr %3, !dbg !2226
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2227 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2231, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %1, metadata !2232, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i64 %2, metadata !2233, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %3, metadata !2234, metadata !DIExpression()), !dbg !2247
  %6 = tail call ptr @__errno_location() #39, !dbg !2248
  %7 = load i32, ptr %6, align 4, !dbg !2248, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %7, metadata !2235, metadata !DIExpression()), !dbg !2247
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2249, !tbaa !766
  call void @llvm.dbg.value(metadata ptr %8, metadata !2236, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2237, metadata !DIExpression()), !dbg !2247
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2250
  br i1 %9, label %10, label %11, !dbg !2250

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2252
  unreachable, !dbg !2252

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2253, !tbaa !828
  %13 = icmp sgt i32 %12, %0, !dbg !2254
  br i1 %13, label %32, label %14, !dbg !2255

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2256
  call void @llvm.dbg.value(metadata i1 %15, metadata !2238, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2258
  %16 = sext i32 %12 to i64, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %16, metadata !2241, metadata !DIExpression()), !dbg !2257
  store i64 %16, ptr %5, align 8, !dbg !2260, !tbaa !2177
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2261
  %18 = add nuw nsw i32 %0, 1, !dbg !2262
  %19 = sub i32 %18, %12, !dbg !2263
  %20 = sext i32 %19 to i64, !dbg !2264
  call void @llvm.dbg.value(metadata ptr %5, metadata !2241, metadata !DIExpression(DW_OP_deref)), !dbg !2257
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2265
  call void @llvm.dbg.value(metadata ptr %21, metadata !2236, metadata !DIExpression()), !dbg !2247
  store ptr %21, ptr @slotvec, align 8, !dbg !2266, !tbaa !766
  br i1 %15, label %22, label %23, !dbg !2267

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2268, !tbaa.struct !2270
  br label %23, !dbg !2271

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2272, !tbaa !828
  %25 = sext i32 %24 to i64, !dbg !2273
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2273
  %27 = load i64, ptr %5, align 8, !dbg !2274, !tbaa !2177
  call void @llvm.dbg.value(metadata i64 %27, metadata !2241, metadata !DIExpression()), !dbg !2257
  %28 = sub nsw i64 %27, %25, !dbg !2275
  %29 = shl i64 %28, 4, !dbg !2276
  call void @llvm.dbg.value(metadata ptr %26, metadata !1644, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 0, metadata !1647, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %29, metadata !1648, metadata !DIExpression()), !dbg !2277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2279
  %30 = load i64, ptr %5, align 8, !dbg !2280, !tbaa !2177
  call void @llvm.dbg.value(metadata i64 %30, metadata !2241, metadata !DIExpression()), !dbg !2257
  %31 = trunc i64 %30 to i32, !dbg !2280
  store i32 %31, ptr @nslots, align 4, !dbg !2281, !tbaa !828
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2282
  br label %32, !dbg !2283

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2247
  call void @llvm.dbg.value(metadata ptr %33, metadata !2236, metadata !DIExpression()), !dbg !2247
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2284
  %36 = load i64, ptr %35, align 8, !dbg !2285, !tbaa !2205
  call void @llvm.dbg.value(metadata i64 %36, metadata !2242, metadata !DIExpression()), !dbg !2286
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2287
  %38 = load ptr, ptr %37, align 8, !dbg !2287, !tbaa !2193
  call void @llvm.dbg.value(metadata ptr %38, metadata !2244, metadata !DIExpression()), !dbg !2286
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2288
  %40 = load i32, ptr %39, align 4, !dbg !2288, !tbaa !1487
  %41 = or i32 %40, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %41, metadata !2245, metadata !DIExpression()), !dbg !2286
  %42 = load i32, ptr %3, align 8, !dbg !2290, !tbaa !1437
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2291
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2292
  %45 = load ptr, ptr %44, align 8, !dbg !2292, !tbaa !1508
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2293
  %47 = load ptr, ptr %46, align 8, !dbg !2293, !tbaa !1511
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %48, metadata !2246, metadata !DIExpression()), !dbg !2286
  %49 = icmp ugt i64 %36, %48, !dbg !2295
  br i1 %49, label %60, label %50, !dbg !2297

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %51, metadata !2242, metadata !DIExpression()), !dbg !2286
  store i64 %51, ptr %35, align 8, !dbg !2300, !tbaa !2205
  %52 = icmp eq ptr %38, @slot0, !dbg !2301
  br i1 %52, label %54, label %53, !dbg !2303

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2304
  br label %54, !dbg !2304

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2305
  call void @llvm.dbg.value(metadata ptr %55, metadata !2244, metadata !DIExpression()), !dbg !2286
  store ptr %55, ptr %37, align 8, !dbg !2306, !tbaa !2193
  %56 = load i32, ptr %3, align 8, !dbg !2307, !tbaa !1437
  %57 = load ptr, ptr %44, align 8, !dbg !2308, !tbaa !1508
  %58 = load ptr, ptr %46, align 8, !dbg !2309, !tbaa !1511
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2310
  br label %60, !dbg !2311

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2286
  call void @llvm.dbg.value(metadata ptr %61, metadata !2244, metadata !DIExpression()), !dbg !2286
  store i32 %7, ptr %6, align 4, !dbg !2312, !tbaa !828
  ret ptr %61, !dbg !2313
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2318, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata ptr %1, metadata !2319, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i64 %2, metadata !2320, metadata !DIExpression()), !dbg !2321
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2322
  ret ptr %4, !dbg !2323
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2324 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2326, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i32 0, metadata !2222, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata ptr %0, metadata !2223, metadata !DIExpression()), !dbg !2328
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2330
  ret ptr %2, !dbg !2331
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2332 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %1, metadata !2337, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 0, metadata !2318, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %0, metadata !2319, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 %1, metadata !2320, metadata !DIExpression()), !dbg !2339
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2341
  ret ptr %3, !dbg !2342
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2343 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2347, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %2, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2350, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2354), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %1, metadata !2358, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2366, !alias.scope !2354
  %5 = icmp eq i32 %1, 10, !dbg !2367
  br i1 %5, label %6, label %7, !dbg !2369

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2370, !noalias !2354
  unreachable, !dbg !2370

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2371, !tbaa !1437, !alias.scope !2354
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2372
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2373
  ret ptr %8, !dbg !2374
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2375 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i32 %1, metadata !2380, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata ptr %2, metadata !2381, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %3, metadata !2382, metadata !DIExpression()), !dbg !2384
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2385
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2383, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2387), !dbg !2390
  call void @llvm.dbg.value(metadata i32 %1, metadata !2358, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2363, metadata !DIExpression()), !dbg !2393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2393, !alias.scope !2387
  %6 = icmp eq i32 %1, 10, !dbg !2394
  br i1 %6, label %7, label %8, !dbg !2395

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2396, !noalias !2387
  unreachable, !dbg !2396

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2397, !tbaa !1437, !alias.scope !2387
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2398
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2399
  ret ptr %9, !dbg !2400
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2401 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2405, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata ptr %1, metadata !2406, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 0, metadata !2347, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata ptr %1, metadata !2349, metadata !DIExpression()), !dbg !2408
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2350, metadata !DIExpression()), !dbg !2411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412), !dbg !2415
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2363, metadata !DIExpression()), !dbg !2418
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2418, !alias.scope !2412
  %4 = icmp eq i32 %0, 10, !dbg !2419
  br i1 %4, label %5, label %6, !dbg !2420

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2421, !noalias !2412
  unreachable, !dbg !2421

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2422, !tbaa !1437, !alias.scope !2412
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2423
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2424
  ret ptr %7, !dbg !2425
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2426 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata ptr %1, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 %2, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 0, metadata !2379, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata ptr %1, metadata !2381, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 %2, metadata !2382, metadata !DIExpression()), !dbg !2434
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2436
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2383, metadata !DIExpression()), !dbg !2437
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2363, metadata !DIExpression()), !dbg !2444
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2444, !alias.scope !2438
  %5 = icmp eq i32 %0, 10, !dbg !2445
  br i1 %5, label %6, label %7, !dbg !2446

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2447, !noalias !2438
  unreachable, !dbg !2447

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2448, !tbaa !1437, !alias.scope !2438
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2449
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2450
  ret ptr %8, !dbg !2451
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2452 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i64 %1, metadata !2457, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %2, metadata !2458, metadata !DIExpression()), !dbg !2460
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2461
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2459, metadata !DIExpression()), !dbg !2462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2463, !tbaa.struct !2464
  call void @llvm.dbg.value(metadata ptr %4, metadata !1454, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 %2, metadata !1455, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 %2, metadata !1457, metadata !DIExpression()), !dbg !2465
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2467
  %6 = lshr i8 %2, 5, !dbg !2468
  %7 = zext i8 %6 to i64, !dbg !2468
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2469
  call void @llvm.dbg.value(metadata ptr %8, metadata !1458, metadata !DIExpression()), !dbg !2465
  %9 = and i8 %2, 31, !dbg !2470
  %10 = zext i8 %9 to i32, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %10, metadata !1460, metadata !DIExpression()), !dbg !2465
  %11 = load i32, ptr %8, align 4, !dbg !2471, !tbaa !828
  %12 = lshr i32 %11, %10, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %12, metadata !1461, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2465
  %13 = and i32 %12, 1, !dbg !2473
  %14 = xor i32 %13, 1, !dbg !2473
  %15 = shl nuw i32 %14, %10, !dbg !2474
  %16 = xor i32 %15, %11, !dbg !2475
  store i32 %16, ptr %8, align 4, !dbg !2475, !tbaa !828
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2476
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2477
  ret ptr %17, !dbg !2478
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2479 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %1, metadata !2484, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 -1, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 %1, metadata !2458, metadata !DIExpression()), !dbg !2486
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2488
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2459, metadata !DIExpression()), !dbg !2489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2490, !tbaa.struct !2464
  call void @llvm.dbg.value(metadata ptr %3, metadata !1454, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 %1, metadata !1455, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 %1, metadata !1457, metadata !DIExpression()), !dbg !2491
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2493
  %5 = lshr i8 %1, 5, !dbg !2494
  %6 = zext i8 %5 to i64, !dbg !2494
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2495
  call void @llvm.dbg.value(metadata ptr %7, metadata !1458, metadata !DIExpression()), !dbg !2491
  %8 = and i8 %1, 31, !dbg !2496
  %9 = zext i8 %8 to i32, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %9, metadata !1460, metadata !DIExpression()), !dbg !2491
  %10 = load i32, ptr %7, align 4, !dbg !2497, !tbaa !828
  %11 = lshr i32 %10, %9, !dbg !2498
  call void @llvm.dbg.value(metadata i32 %11, metadata !1461, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2491
  %12 = and i32 %11, 1, !dbg !2499
  %13 = xor i32 %12, 1, !dbg !2499
  %14 = shl nuw i32 %13, %9, !dbg !2500
  %15 = xor i32 %14, %10, !dbg !2501
  store i32 %15, ptr %7, align 4, !dbg !2501, !tbaa !828
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2502
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2503
  ret ptr %16, !dbg !2504
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2505 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2507, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata ptr %0, metadata !2483, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 58, metadata !2484, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 -1, metadata !2457, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 58, metadata !2458, metadata !DIExpression()), !dbg !2511
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2513
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2459, metadata !DIExpression()), !dbg !2514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2515, !tbaa.struct !2464
  call void @llvm.dbg.value(metadata ptr %2, metadata !1454, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 58, metadata !1457, metadata !DIExpression()), !dbg !2516
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2518
  call void @llvm.dbg.value(metadata ptr %3, metadata !1458, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 26, metadata !1460, metadata !DIExpression()), !dbg !2516
  %4 = load i32, ptr %3, align 4, !dbg !2519, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %4, metadata !1461, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2516
  %5 = or i32 %4, 67108864, !dbg !2520
  store i32 %5, ptr %3, align 4, !dbg !2520, !tbaa !828
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2521
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2522
  ret ptr %6, !dbg !2523
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2524 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i64 %1, metadata !2457, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 58, metadata !2458, metadata !DIExpression()), !dbg !2529
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2531
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2459, metadata !DIExpression()), !dbg !2532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2533, !tbaa.struct !2464
  call void @llvm.dbg.value(metadata ptr %3, metadata !1454, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 58, metadata !1457, metadata !DIExpression()), !dbg !2534
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2536
  call void @llvm.dbg.value(metadata ptr %4, metadata !1458, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 26, metadata !1460, metadata !DIExpression()), !dbg !2534
  %5 = load i32, ptr %4, align 4, !dbg !2537, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %5, metadata !1461, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2534
  %6 = or i32 %5, 67108864, !dbg !2538
  store i32 %6, ptr %4, align 4, !dbg !2538, !tbaa !828
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2539
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2540
  ret ptr %7, !dbg !2541
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2542 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2363, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 %1, metadata !2545, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata ptr %2, metadata !2546, metadata !DIExpression()), !dbg !2550
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2547, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 %1, metadata !2358, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 0, metadata !2363, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2553
  %5 = icmp eq i32 %1, 10, !dbg !2554
  br i1 %5, label %6, label %7, !dbg !2555

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2556, !noalias !2557
  unreachable, !dbg !2556

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2363, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2553
  store i32 %1, ptr %4, align 8, !dbg !2560, !tbaa.struct !2464
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %4, metadata !1454, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 58, metadata !1457, metadata !DIExpression()), !dbg !2561
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2563
  call void @llvm.dbg.value(metadata ptr %9, metadata !1458, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 26, metadata !1460, metadata !DIExpression()), !dbg !2561
  %10 = load i32, ptr %9, align 4, !dbg !2564, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %10, metadata !1461, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2561
  %11 = or i32 %10, 67108864, !dbg !2565
  store i32 %11, ptr %9, align 4, !dbg !2565, !tbaa !828
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2566
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2567
  ret ptr %12, !dbg !2568
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2569 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2573, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %1, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %2, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %3, metadata !2576, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %1, metadata !2583, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %2, metadata !2584, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %3, metadata !2585, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 -1, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2590
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2587, metadata !DIExpression()), !dbg !2591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2592, !tbaa.struct !2464
  call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata ptr %1, metadata !1495, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata ptr %2, metadata !1496, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !2593
  store i32 10, ptr %5, align 8, !dbg !2595, !tbaa !1437
  %6 = icmp ne ptr %1, null, !dbg !2596
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2597
  br i1 %8, label %10, label %9, !dbg !2597

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2598
  unreachable, !dbg !2598

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2599
  store ptr %1, ptr %11, align 8, !dbg !2600, !tbaa !1508
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2601
  store ptr %2, ptr %12, align 8, !dbg !2602, !tbaa !1511
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2603
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2604
  ret ptr %13, !dbg !2605
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2579 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata ptr %1, metadata !2583, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata ptr %2, metadata !2584, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata ptr %3, metadata !2585, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %4, metadata !2586, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2607
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2587, metadata !DIExpression()), !dbg !2608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2609, !tbaa.struct !2464
  call void @llvm.dbg.value(metadata ptr %6, metadata !1494, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %1, metadata !1495, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %2, metadata !1496, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %6, metadata !1494, metadata !DIExpression()), !dbg !2610
  store i32 10, ptr %6, align 8, !dbg !2612, !tbaa !1437
  %7 = icmp ne ptr %1, null, !dbg !2613
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2614
  br i1 %9, label %11, label %10, !dbg !2614

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2615
  unreachable, !dbg !2615

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2616
  store ptr %1, ptr %12, align 8, !dbg !2617, !tbaa !1508
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2618
  store ptr %2, ptr %13, align 8, !dbg !2619, !tbaa !1511
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2620
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2621
  ret ptr %14, !dbg !2622
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2623 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2627, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %1, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %2, metadata !2629, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 0, metadata !2573, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %0, metadata !2574, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %1, metadata !2575, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %2, metadata !2576, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2578, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %0, metadata !2583, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %1, metadata !2584, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %2, metadata !2585, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 -1, metadata !2586, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2635
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2587, metadata !DIExpression()), !dbg !2636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2637, !tbaa.struct !2464
  call void @llvm.dbg.value(metadata ptr %4, metadata !1494, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %0, metadata !1495, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %1, metadata !1496, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %4, metadata !1494, metadata !DIExpression()), !dbg !2638
  store i32 10, ptr %4, align 8, !dbg !2640, !tbaa !1437
  %5 = icmp ne ptr %0, null, !dbg !2641
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2642
  br i1 %7, label %9, label %8, !dbg !2642

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2643
  unreachable, !dbg !2643

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2644
  store ptr %0, ptr %10, align 8, !dbg !2645, !tbaa !1508
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2646
  store ptr %1, ptr %11, align 8, !dbg !2647, !tbaa !1511
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2648
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2649
  ret ptr %12, !dbg !2650
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2651 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2655, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %1, metadata !2656, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %2, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %3, metadata !2658, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i32 0, metadata !2578, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %0, metadata !2583, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %1, metadata !2584, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %2, metadata !2585, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %3, metadata !2586, metadata !DIExpression()), !dbg !2660
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2662
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2587, metadata !DIExpression()), !dbg !2663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2664, !tbaa.struct !2464
  call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %0, metadata !1495, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %1, metadata !1496, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !2665
  store i32 10, ptr %5, align 8, !dbg !2667, !tbaa !1437
  %6 = icmp ne ptr %0, null, !dbg !2668
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2669
  br i1 %8, label %10, label %9, !dbg !2669

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2670
  unreachable, !dbg !2670

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2671
  store ptr %0, ptr %11, align 8, !dbg !2672, !tbaa !1508
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2673
  store ptr %1, ptr %12, align 8, !dbg !2674, !tbaa !1511
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2675
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2676
  ret ptr %13, !dbg !2677
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2682, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %1, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i64 %2, metadata !2684, metadata !DIExpression()), !dbg !2685
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2686
  ret ptr %4, !dbg !2687
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2688 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %1, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 0, metadata !2682, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %0, metadata !2683, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %1, metadata !2684, metadata !DIExpression()), !dbg !2695
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2697
  ret ptr %3, !dbg !2698
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2703, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr %1, metadata !2704, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %0, metadata !2682, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %1, metadata !2683, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 -1, metadata !2684, metadata !DIExpression()), !dbg !2706
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2708
  ret ptr %3, !dbg !2709
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2710 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i32 0, metadata !2703, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %0, metadata !2704, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 0, metadata !2682, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata ptr %0, metadata !2683, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 -1, metadata !2684, metadata !DIExpression()), !dbg !2718
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2720
  ret ptr %2, !dbg !2721
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2722 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2761, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %1, metadata !2762, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %2, metadata !2763, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %3, metadata !2764, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %4, metadata !2765, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %5, metadata !2766, metadata !DIExpression()), !dbg !2767
  %7 = icmp eq ptr %1, null, !dbg !2768
  br i1 %7, label %10, label %8, !dbg !2770

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2771
  br label %12, !dbg !2771

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %2, ptr noundef %3) #36, !dbg !2772
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.3.76, i32 noundef 5) #36, !dbg !2773
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2773
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2774
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.5.78, i32 noundef 5) #36, !dbg !2775
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.79) #36, !dbg !2775
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2776
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
  ], !dbg !2777

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.7.80, i32 noundef 5) #36, !dbg !2778
  %21 = load ptr, ptr %4, align 8, !dbg !2778, !tbaa !766
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2778
  br label %147, !dbg !2780

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.8.81, i32 noundef 5) #36, !dbg !2781
  %25 = load ptr, ptr %4, align 8, !dbg !2781, !tbaa !766
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2781
  %27 = load ptr, ptr %26, align 8, !dbg !2781, !tbaa !766
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2781
  br label %147, !dbg !2782

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.9.82, i32 noundef 5) #36, !dbg !2783
  %31 = load ptr, ptr %4, align 8, !dbg !2783, !tbaa !766
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2783
  %33 = load ptr, ptr %32, align 8, !dbg !2783, !tbaa !766
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2783
  %35 = load ptr, ptr %34, align 8, !dbg !2783, !tbaa !766
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2783
  br label %147, !dbg !2784

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.10.83, i32 noundef 5) #36, !dbg !2785
  %39 = load ptr, ptr %4, align 8, !dbg !2785, !tbaa !766
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2785
  %41 = load ptr, ptr %40, align 8, !dbg !2785, !tbaa !766
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2785
  %43 = load ptr, ptr %42, align 8, !dbg !2785, !tbaa !766
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2785
  %45 = load ptr, ptr %44, align 8, !dbg !2785, !tbaa !766
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2785
  br label %147, !dbg !2786

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.11.84, i32 noundef 5) #36, !dbg !2787
  %49 = load ptr, ptr %4, align 8, !dbg !2787, !tbaa !766
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2787
  %51 = load ptr, ptr %50, align 8, !dbg !2787, !tbaa !766
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2787
  %53 = load ptr, ptr %52, align 8, !dbg !2787, !tbaa !766
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2787
  %55 = load ptr, ptr %54, align 8, !dbg !2787, !tbaa !766
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2787
  %57 = load ptr, ptr %56, align 8, !dbg !2787, !tbaa !766
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2787
  br label %147, !dbg !2788

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.12.85, i32 noundef 5) #36, !dbg !2789
  %61 = load ptr, ptr %4, align 8, !dbg !2789, !tbaa !766
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2789
  %63 = load ptr, ptr %62, align 8, !dbg !2789, !tbaa !766
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2789
  %65 = load ptr, ptr %64, align 8, !dbg !2789, !tbaa !766
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2789
  %67 = load ptr, ptr %66, align 8, !dbg !2789, !tbaa !766
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2789
  %69 = load ptr, ptr %68, align 8, !dbg !2789, !tbaa !766
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2789
  %71 = load ptr, ptr %70, align 8, !dbg !2789, !tbaa !766
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2789
  br label %147, !dbg !2790

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.13.86, i32 noundef 5) #36, !dbg !2791
  %75 = load ptr, ptr %4, align 8, !dbg !2791, !tbaa !766
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2791
  %77 = load ptr, ptr %76, align 8, !dbg !2791, !tbaa !766
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2791
  %79 = load ptr, ptr %78, align 8, !dbg !2791, !tbaa !766
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2791
  %81 = load ptr, ptr %80, align 8, !dbg !2791, !tbaa !766
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2791
  %83 = load ptr, ptr %82, align 8, !dbg !2791, !tbaa !766
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2791
  %85 = load ptr, ptr %84, align 8, !dbg !2791, !tbaa !766
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2791
  %87 = load ptr, ptr %86, align 8, !dbg !2791, !tbaa !766
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2791
  br label %147, !dbg !2792

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.14.87, i32 noundef 5) #36, !dbg !2793
  %91 = load ptr, ptr %4, align 8, !dbg !2793, !tbaa !766
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2793
  %93 = load ptr, ptr %92, align 8, !dbg !2793, !tbaa !766
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2793
  %95 = load ptr, ptr %94, align 8, !dbg !2793, !tbaa !766
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2793
  %97 = load ptr, ptr %96, align 8, !dbg !2793, !tbaa !766
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2793
  %99 = load ptr, ptr %98, align 8, !dbg !2793, !tbaa !766
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2793
  %101 = load ptr, ptr %100, align 8, !dbg !2793, !tbaa !766
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2793
  %103 = load ptr, ptr %102, align 8, !dbg !2793, !tbaa !766
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2793
  %105 = load ptr, ptr %104, align 8, !dbg !2793, !tbaa !766
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2793
  br label %147, !dbg !2794

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.15.88, i32 noundef 5) #36, !dbg !2795
  %109 = load ptr, ptr %4, align 8, !dbg !2795, !tbaa !766
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2795
  %111 = load ptr, ptr %110, align 8, !dbg !2795, !tbaa !766
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2795
  %113 = load ptr, ptr %112, align 8, !dbg !2795, !tbaa !766
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2795
  %115 = load ptr, ptr %114, align 8, !dbg !2795, !tbaa !766
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2795
  %117 = load ptr, ptr %116, align 8, !dbg !2795, !tbaa !766
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2795
  %119 = load ptr, ptr %118, align 8, !dbg !2795, !tbaa !766
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2795
  %121 = load ptr, ptr %120, align 8, !dbg !2795, !tbaa !766
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2795
  %123 = load ptr, ptr %122, align 8, !dbg !2795, !tbaa !766
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2795
  %125 = load ptr, ptr %124, align 8, !dbg !2795, !tbaa !766
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2795
  br label %147, !dbg !2796

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.16.89, i32 noundef 5) #36, !dbg !2797
  %129 = load ptr, ptr %4, align 8, !dbg !2797, !tbaa !766
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2797
  %131 = load ptr, ptr %130, align 8, !dbg !2797, !tbaa !766
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2797
  %133 = load ptr, ptr %132, align 8, !dbg !2797, !tbaa !766
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2797
  %135 = load ptr, ptr %134, align 8, !dbg !2797, !tbaa !766
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2797
  %137 = load ptr, ptr %136, align 8, !dbg !2797, !tbaa !766
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2797
  %139 = load ptr, ptr %138, align 8, !dbg !2797, !tbaa !766
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2797
  %141 = load ptr, ptr %140, align 8, !dbg !2797, !tbaa !766
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2797
  %143 = load ptr, ptr %142, align 8, !dbg !2797, !tbaa !766
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2797
  %145 = load ptr, ptr %144, align 8, !dbg !2797, !tbaa !766
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2797
  br label %147, !dbg !2798

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2799
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2800 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2804, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %1, metadata !2805, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %2, metadata !2806, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %3, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %4, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 0, metadata !2809, metadata !DIExpression()), !dbg !2810
  br label %6, !dbg !2811

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2813
  call void @llvm.dbg.value(metadata i64 %7, metadata !2809, metadata !DIExpression()), !dbg !2810
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2814
  %9 = load ptr, ptr %8, align 8, !dbg !2814, !tbaa !766
  %10 = icmp eq ptr %9, null, !dbg !2816
  %11 = add i64 %7, 1, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %11, metadata !2809, metadata !DIExpression()), !dbg !2810
  br i1 %10, label %12, label %6, !dbg !2816, !llvm.loop !2818

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2820
  ret void, !dbg !2821
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2822 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2834, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %1, metadata !2835, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %2, metadata !2836, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %3, metadata !2837, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %4, metadata !2838, metadata !DIExpression()), !dbg !2842
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2843
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 0, metadata !2839, metadata !DIExpression()), !dbg !2842
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2839, metadata !DIExpression()), !dbg !2842
  %10 = icmp ult i32 %9, 41, !dbg !2845
  br i1 %10, label %11, label %16, !dbg !2845

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2845
  %13 = zext i32 %9 to i64, !dbg !2845
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2845
  %15 = add nuw nsw i32 %9, 8, !dbg !2845
  store i32 %15, ptr %4, align 8, !dbg !2845
  br label %19, !dbg !2845

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2845
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2845
  store ptr %18, ptr %7, align 8, !dbg !2845
  br label %19, !dbg !2845

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2845
  %22 = load ptr, ptr %21, align 8, !dbg !2845
  store ptr %22, ptr %6, align 16, !dbg !2848, !tbaa !766
  %23 = icmp eq ptr %22, null, !dbg !2849
  br i1 %23, label %128, label %24, !dbg !2850

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 1, metadata !2839, metadata !DIExpression()), !dbg !2842
  %25 = icmp ult i32 %20, 41, !dbg !2845
  br i1 %25, label %29, label %26, !dbg !2845

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2845
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2845
  store ptr %28, ptr %7, align 8, !dbg !2845
  br label %34, !dbg !2845

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2845
  %31 = zext i32 %20 to i64, !dbg !2845
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2845
  %33 = add nuw nsw i32 %20, 8, !dbg !2845
  store i32 %33, ptr %4, align 8, !dbg !2845
  br label %34, !dbg !2845

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2845
  %37 = load ptr, ptr %36, align 8, !dbg !2845
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2851
  store ptr %37, ptr %38, align 8, !dbg !2848, !tbaa !766
  %39 = icmp eq ptr %37, null, !dbg !2849
  br i1 %39, label %128, label %40, !dbg !2850

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 2, metadata !2839, metadata !DIExpression()), !dbg !2842
  %41 = icmp ult i32 %35, 41, !dbg !2845
  br i1 %41, label %45, label %42, !dbg !2845

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2845
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2845
  store ptr %44, ptr %7, align 8, !dbg !2845
  br label %50, !dbg !2845

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2845
  %47 = zext i32 %35 to i64, !dbg !2845
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2845
  %49 = add nuw nsw i32 %35, 8, !dbg !2845
  store i32 %49, ptr %4, align 8, !dbg !2845
  br label %50, !dbg !2845

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2845
  %53 = load ptr, ptr %52, align 8, !dbg !2845
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2851
  store ptr %53, ptr %54, align 16, !dbg !2848, !tbaa !766
  %55 = icmp eq ptr %53, null, !dbg !2849
  br i1 %55, label %128, label %56, !dbg !2850

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 3, metadata !2839, metadata !DIExpression()), !dbg !2842
  %57 = icmp ult i32 %51, 41, !dbg !2845
  br i1 %57, label %61, label %58, !dbg !2845

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2845
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2845
  store ptr %60, ptr %7, align 8, !dbg !2845
  br label %66, !dbg !2845

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2845
  %63 = zext i32 %51 to i64, !dbg !2845
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2845
  %65 = add nuw nsw i32 %51, 8, !dbg !2845
  store i32 %65, ptr %4, align 8, !dbg !2845
  br label %66, !dbg !2845

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2845
  %69 = load ptr, ptr %68, align 8, !dbg !2845
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2851
  store ptr %69, ptr %70, align 8, !dbg !2848, !tbaa !766
  %71 = icmp eq ptr %69, null, !dbg !2849
  br i1 %71, label %128, label %72, !dbg !2850

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 4, metadata !2839, metadata !DIExpression()), !dbg !2842
  %73 = icmp ult i32 %67, 41, !dbg !2845
  br i1 %73, label %77, label %74, !dbg !2845

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2845
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2845
  store ptr %76, ptr %7, align 8, !dbg !2845
  br label %82, !dbg !2845

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2845
  %79 = zext i32 %67 to i64, !dbg !2845
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2845
  %81 = add nuw nsw i32 %67, 8, !dbg !2845
  store i32 %81, ptr %4, align 8, !dbg !2845
  br label %82, !dbg !2845

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2845
  %85 = load ptr, ptr %84, align 8, !dbg !2845
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2851
  store ptr %85, ptr %86, align 16, !dbg !2848, !tbaa !766
  %87 = icmp eq ptr %85, null, !dbg !2849
  br i1 %87, label %128, label %88, !dbg !2850

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 5, metadata !2839, metadata !DIExpression()), !dbg !2842
  %89 = icmp ult i32 %83, 41, !dbg !2845
  br i1 %89, label %93, label %90, !dbg !2845

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2845
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2845
  store ptr %92, ptr %7, align 8, !dbg !2845
  br label %98, !dbg !2845

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2845
  %95 = zext i32 %83 to i64, !dbg !2845
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2845
  %97 = add nuw nsw i32 %83, 8, !dbg !2845
  store i32 %97, ptr %4, align 8, !dbg !2845
  br label %98, !dbg !2845

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2845
  %100 = load ptr, ptr %99, align 8, !dbg !2845
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2851
  store ptr %100, ptr %101, align 8, !dbg !2848, !tbaa !766
  %102 = icmp eq ptr %100, null, !dbg !2849
  br i1 %102, label %128, label %103, !dbg !2850

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2839, metadata !DIExpression()), !dbg !2842
  %104 = load ptr, ptr %7, align 8, !dbg !2845
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2845
  store ptr %105, ptr %7, align 8, !dbg !2845
  %106 = load ptr, ptr %104, align 8, !dbg !2845
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2851
  store ptr %106, ptr %107, align 16, !dbg !2848, !tbaa !766
  %108 = icmp eq ptr %106, null, !dbg !2849
  br i1 %108, label %128, label %109, !dbg !2850

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2839, metadata !DIExpression()), !dbg !2842
  %110 = load ptr, ptr %7, align 8, !dbg !2845
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2845
  store ptr %111, ptr %7, align 8, !dbg !2845
  %112 = load ptr, ptr %110, align 8, !dbg !2845
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2851
  store ptr %112, ptr %113, align 8, !dbg !2848, !tbaa !766
  %114 = icmp eq ptr %112, null, !dbg !2849
  br i1 %114, label %128, label %115, !dbg !2850

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2839, metadata !DIExpression()), !dbg !2842
  %116 = load ptr, ptr %7, align 8, !dbg !2845
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2845
  store ptr %117, ptr %7, align 8, !dbg !2845
  %118 = load ptr, ptr %116, align 8, !dbg !2845
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2851
  store ptr %118, ptr %119, align 16, !dbg !2848, !tbaa !766
  %120 = icmp eq ptr %118, null, !dbg !2849
  br i1 %120, label %128, label %121, !dbg !2850

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2839, metadata !DIExpression()), !dbg !2842
  %122 = load ptr, ptr %7, align 8, !dbg !2845
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2845
  store ptr %123, ptr %7, align 8, !dbg !2845
  %124 = load ptr, ptr %122, align 8, !dbg !2845
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2851
  store ptr %124, ptr %125, align 8, !dbg !2848, !tbaa !766
  %126 = icmp eq ptr %124, null, !dbg !2849
  %127 = select i1 %126, i64 9, i64 10, !dbg !2850
  br label %128, !dbg !2850

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2852
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2853
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2854
  ret void, !dbg !2854
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2855 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2859, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %1, metadata !2860, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %2, metadata !2861, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %3, metadata !2862, metadata !DIExpression()), !dbg !2868
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !2869
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2863, metadata !DIExpression()), !dbg !2870
  call void @llvm.va_start(ptr nonnull %5), !dbg !2871
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2872
  call void @llvm.va_end(ptr nonnull %5), !dbg !2873
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !2874
  ret void, !dbg !2874
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2875 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2876, !tbaa !766
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %1), !dbg !2876
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.17.94, i32 noundef 5) #36, !dbg !2877
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.95) #36, !dbg !2877
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.19.96, i32 noundef 5) #36, !dbg !2878
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.97, ptr noundef nonnull @.str.21) #36, !dbg !2878
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2879
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.98) #36, !dbg !2879
  ret void, !dbg !2880
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2881 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %1, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %2, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %2, metadata !2894, metadata !DIExpression()), !dbg !2895
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2897
  call void @llvm.dbg.value(metadata ptr %4, metadata !2898, metadata !DIExpression()), !dbg !2903
  %5 = icmp eq ptr %4, null, !dbg !2905
  br i1 %5, label %6, label %7, !dbg !2907

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2908
  unreachable, !dbg !2908

7:                                                ; preds = %3
  ret ptr %4, !dbg !2909
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2891 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %1, metadata !2893, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %2, metadata !2894, metadata !DIExpression()), !dbg !2910
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2911
  call void @llvm.dbg.value(metadata ptr %4, metadata !2898, metadata !DIExpression()), !dbg !2912
  %5 = icmp eq ptr %4, null, !dbg !2914
  br i1 %5, label %6, label %7, !dbg !2915

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2916
  unreachable, !dbg !2916

7:                                                ; preds = %3
  ret ptr %4, !dbg !2917
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2918 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2922, metadata !DIExpression()), !dbg !2923
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2924
  call void @llvm.dbg.value(metadata ptr %2, metadata !2898, metadata !DIExpression()), !dbg !2925
  %3 = icmp eq ptr %2, null, !dbg !2927
  br i1 %3, label %4, label %5, !dbg !2928

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2929
  unreachable, !dbg !2929

5:                                                ; preds = %1
  ret ptr %2, !dbg !2930
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2931 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2932 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %0, metadata !2938, metadata !DIExpression()), !dbg !2942
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2944
  call void @llvm.dbg.value(metadata ptr %2, metadata !2898, metadata !DIExpression()), !dbg !2945
  %3 = icmp eq ptr %2, null, !dbg !2947
  br i1 %3, label %4, label %5, !dbg !2948

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2949
  unreachable, !dbg !2949

5:                                                ; preds = %1
  ret ptr %2, !dbg !2950
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2951 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %0, metadata !2922, metadata !DIExpression()), !dbg !2957
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2959
  call void @llvm.dbg.value(metadata ptr %2, metadata !2898, metadata !DIExpression()), !dbg !2960
  %3 = icmp eq ptr %2, null, !dbg !2962
  br i1 %3, label %4, label %5, !dbg !2963

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2964
  unreachable, !dbg !2964

5:                                                ; preds = %1
  ret ptr %2, !dbg !2965
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2966 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2970, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 %1, metadata !2977, metadata !DIExpression()), !dbg !2978
  %3 = icmp eq i64 %1, 0, !dbg !2980
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2980
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2981
  call void @llvm.dbg.value(metadata ptr %5, metadata !2898, metadata !DIExpression()), !dbg !2982
  %6 = icmp eq ptr %5, null, !dbg !2984
  br i1 %6, label %7, label %8, !dbg !2985

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2986
  unreachable, !dbg !2986

8:                                                ; preds = %2
  ret ptr %5, !dbg !2987
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2988 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2989 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2993, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %1, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %0, metadata !2996, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %1, metadata !2999, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %1, metadata !2977, metadata !DIExpression()), !dbg !3002
  %3 = icmp eq i64 %1, 0, !dbg !3004
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3004
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3005
  call void @llvm.dbg.value(metadata ptr %5, metadata !2898, metadata !DIExpression()), !dbg !3006
  %6 = icmp eq ptr %5, null, !dbg !3008
  br i1 %6, label %7, label %8, !dbg !3009

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3010
  unreachable, !dbg !3010

8:                                                ; preds = %2
  ret ptr %5, !dbg !3011
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3012 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %1, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %2, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3023, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %2, metadata !3024, metadata !DIExpression()), !dbg !3025
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3027
  call void @llvm.dbg.value(metadata ptr %4, metadata !2898, metadata !DIExpression()), !dbg !3028
  %5 = icmp eq ptr %4, null, !dbg !3030
  br i1 %5, label %6, label %7, !dbg !3031

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3032
  unreachable, !dbg !3032

7:                                                ; preds = %3
  ret ptr %4, !dbg !3033
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3034 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %1, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr null, metadata !2890, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()), !dbg !3041
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3043
  call void @llvm.dbg.value(metadata ptr %3, metadata !2898, metadata !DIExpression()), !dbg !3044
  %4 = icmp eq ptr %3, null, !dbg !3046
  br i1 %4, label %5, label %6, !dbg !3047

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3048
  unreachable, !dbg !3048

6:                                                ; preds = %2
  ret ptr %3, !dbg !3049
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3050 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3054, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 %1, metadata !3055, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr null, metadata !3016, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 %0, metadata !3017, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 %1, metadata !3018, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr null, metadata !3020, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %0, metadata !3023, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %1, metadata !3024, metadata !DIExpression()), !dbg !3059
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %3, metadata !2898, metadata !DIExpression()), !dbg !3062
  %4 = icmp eq ptr %3, null, !dbg !3064
  br i1 %4, label %5, label %6, !dbg !3065

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3066
  unreachable, !dbg !3066

6:                                                ; preds = %2
  ret ptr %3, !dbg !3067
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3068 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %1, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %0, metadata !702, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %1, metadata !703, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 1, metadata !704, metadata !DIExpression()), !dbg !3075
  %3 = load i64, ptr %1, align 8, !dbg !3077, !tbaa !2177
  call void @llvm.dbg.value(metadata i64 %3, metadata !705, metadata !DIExpression()), !dbg !3075
  %4 = icmp eq ptr %0, null, !dbg !3078
  br i1 %4, label %5, label %8, !dbg !3080

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3081
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3084
  br label %15, !dbg !3084

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3085
  %10 = add nuw i64 %9, 1, !dbg !3085
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3085
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3085
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %13, metadata !705, metadata !DIExpression()), !dbg !3075
  br i1 %12, label %14, label %15, !dbg !3088

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3089
  unreachable, !dbg !3089

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3075
  call void @llvm.dbg.value(metadata i64 %16, metadata !705, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %16, metadata !2893, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 1, metadata !2894, metadata !DIExpression()), !dbg !3090
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3092
  call void @llvm.dbg.value(metadata ptr %17, metadata !2898, metadata !DIExpression()), !dbg !3093
  %18 = icmp eq ptr %17, null, !dbg !3095
  br i1 %18, label %19, label %20, !dbg !3096

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3097
  unreachable, !dbg !3097

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !702, metadata !DIExpression()), !dbg !3075
  store i64 %16, ptr %1, align 8, !dbg !3098, !tbaa !2177
  ret ptr %17, !dbg !3099
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !697 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !702, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %1, metadata !703, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %2, metadata !704, metadata !DIExpression()), !dbg !3100
  %4 = load i64, ptr %1, align 8, !dbg !3101, !tbaa !2177
  call void @llvm.dbg.value(metadata i64 %4, metadata !705, metadata !DIExpression()), !dbg !3100
  %5 = icmp eq ptr %0, null, !dbg !3102
  br i1 %5, label %6, label %13, !dbg !3103

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3104
  br i1 %7, label %8, label %20, !dbg !3105

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %9, metadata !705, metadata !DIExpression()), !dbg !3100
  %10 = icmp ugt i64 %2, 128, !dbg !3108
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %12, metadata !705, metadata !DIExpression()), !dbg !3100
  br label %20, !dbg !3110

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3111
  %15 = add nuw i64 %14, 1, !dbg !3111
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3111
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3111
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %18, metadata !705, metadata !DIExpression()), !dbg !3100
  br i1 %17, label %19, label %20, !dbg !3112

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3113
  unreachable, !dbg !3113

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3100
  call void @llvm.dbg.value(metadata i64 %21, metadata !705, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %21, metadata !2893, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %2, metadata !2894, metadata !DIExpression()), !dbg !3114
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3116
  call void @llvm.dbg.value(metadata ptr %22, metadata !2898, metadata !DIExpression()), !dbg !3117
  %23 = icmp eq ptr %22, null, !dbg !3119
  br i1 %23, label %24, label %25, !dbg !3120

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3121
  unreachable, !dbg !3121

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !702, metadata !DIExpression()), !dbg !3100
  store i64 %21, ptr %1, align 8, !dbg !3122, !tbaa !2177
  ret ptr %22, !dbg !3123
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !709 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !717, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %1, metadata !718, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %2, metadata !719, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %3, metadata !720, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %4, metadata !721, metadata !DIExpression()), !dbg !3124
  %6 = load i64, ptr %1, align 8, !dbg !3125, !tbaa !2177
  call void @llvm.dbg.value(metadata i64 %6, metadata !722, metadata !DIExpression()), !dbg !3124
  %7 = ashr i64 %6, 1, !dbg !3126
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3126
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3126
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %10, metadata !723, metadata !DIExpression()), !dbg !3124
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %11, metadata !723, metadata !DIExpression()), !dbg !3124
  %12 = icmp sgt i64 %3, -1, !dbg !3129
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3131
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %15, metadata !723, metadata !DIExpression()), !dbg !3124
  %16 = icmp slt i64 %4, 0, !dbg !3132
  br i1 %16, label %17, label %30, !dbg !3132

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3132
  br i1 %18, label %19, label %24, !dbg !3132

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3132
  %21 = udiv i64 9223372036854775807, %20, !dbg !3132
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3132
  br i1 %23, label %46, label %43, !dbg !3132

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3132
  br i1 %25, label %43, label %26, !dbg !3132

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3132
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3132
  %29 = icmp ult i64 %28, %15, !dbg !3132
  br i1 %29, label %46, label %43, !dbg !3132

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3132
  br i1 %31, label %43, label %32, !dbg !3132

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3132
  br i1 %33, label %34, label %40, !dbg !3132

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3132
  br i1 %35, label %43, label %36, !dbg !3132

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3132
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3132
  %39 = icmp ult i64 %38, %4, !dbg !3132
  br i1 %39, label %46, label %43, !dbg !3132

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3132
  br i1 %42, label %46, label %43, !dbg !3132

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !724, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3124
  %44 = mul i64 %15, %4, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %44, metadata !724, metadata !DIExpression()), !dbg !3124
  %45 = icmp slt i64 %44, 128, !dbg !3132
  br i1 %45, label %46, label %51, !dbg !3132

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !725, metadata !DIExpression()), !dbg !3124
  %48 = sdiv i64 %47, %4, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %48, metadata !723, metadata !DIExpression()), !dbg !3124
  %49 = srem i64 %47, %4, !dbg !3136
  %50 = sub nsw i64 %47, %49, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %50, metadata !724, metadata !DIExpression()), !dbg !3124
  br label %51, !dbg !3138

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3124
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3124
  call void @llvm.dbg.value(metadata i64 %53, metadata !724, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %52, metadata !723, metadata !DIExpression()), !dbg !3124
  %54 = icmp eq ptr %0, null, !dbg !3139
  br i1 %54, label %55, label %56, !dbg !3141

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3142, !tbaa !2177
  br label %56, !dbg !3143

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3144
  %58 = icmp slt i64 %57, %2, !dbg !3146
  br i1 %58, label %59, label %96, !dbg !3147

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3148
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3148
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %62, metadata !723, metadata !DIExpression()), !dbg !3124
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3149
  br i1 %65, label %95, label %66, !dbg !3149

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3150

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3150
  br i1 %68, label %69, label %74, !dbg !3150

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3150
  %71 = udiv i64 9223372036854775807, %70, !dbg !3150
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3150
  br i1 %73, label %95, label %93, !dbg !3150

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3150
  br i1 %75, label %93, label %76, !dbg !3150

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3150
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3150
  %79 = icmp ult i64 %78, %62, !dbg !3150
  br i1 %79, label %95, label %93, !dbg !3150

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3150
  br i1 %81, label %93, label %82, !dbg !3150

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3150
  br i1 %83, label %84, label %90, !dbg !3150

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3150
  br i1 %85, label %93, label %86, !dbg !3150

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3150
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3150
  %89 = icmp ult i64 %88, %4, !dbg !3150
  br i1 %89, label %95, label %93, !dbg !3150

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3150
  br i1 %92, label %95, label %93, !dbg !3150

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !724, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3124
  %94 = mul i64 %62, %4, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %94, metadata !724, metadata !DIExpression()), !dbg !3124
  br label %96, !dbg !3151

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3152
  unreachable, !dbg !3152

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3124
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3124
  call void @llvm.dbg.value(metadata i64 %98, metadata !724, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %97, metadata !723, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %0, metadata !2970, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %98, metadata !2971, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %98, metadata !2977, metadata !DIExpression()), !dbg !3155
  %99 = icmp eq i64 %98, 0, !dbg !3157
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3157
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3158
  call void @llvm.dbg.value(metadata ptr %101, metadata !2898, metadata !DIExpression()), !dbg !3159
  %102 = icmp eq ptr %101, null, !dbg !3161
  br i1 %102, label %103, label %104, !dbg !3162

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3163
  unreachable, !dbg !3163

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !717, metadata !DIExpression()), !dbg !3124
  store i64 %97, ptr %1, align 8, !dbg !3164, !tbaa !2177
  ret ptr %101, !dbg !3165
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3166 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %0, metadata !3170, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 1, metadata !3173, metadata !DIExpression()), !dbg !3174
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3176
  call void @llvm.dbg.value(metadata ptr %2, metadata !2898, metadata !DIExpression()), !dbg !3177
  %3 = icmp eq ptr %2, null, !dbg !3179
  br i1 %3, label %4, label %5, !dbg !3180

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3181
  unreachable, !dbg !3181

5:                                                ; preds = %1
  ret ptr %2, !dbg !3182
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3183 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3171 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3170, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !3173, metadata !DIExpression()), !dbg !3184
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3185
  call void @llvm.dbg.value(metadata ptr %3, metadata !2898, metadata !DIExpression()), !dbg !3186
  %4 = icmp eq ptr %3, null, !dbg !3188
  br i1 %4, label %5, label %6, !dbg !3189

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3190
  unreachable, !dbg !3190

6:                                                ; preds = %2
  ret ptr %3, !dbg !3191
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3192 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %0, metadata !3196, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 1, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %0, metadata !3202, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 1, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %0, metadata !3202, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 1, metadata !3205, metadata !DIExpression()), !dbg !3206
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %2, metadata !2898, metadata !DIExpression()), !dbg !3209
  %3 = icmp eq ptr %2, null, !dbg !3211
  br i1 %3, label %4, label %5, !dbg !3212

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3213
  unreachable, !dbg !3213

5:                                                ; preds = %1
  ret ptr %2, !dbg !3214
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3197 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3196, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %1, metadata !3199, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %0, metadata !3202, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3205, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %0, metadata !3202, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3205, metadata !DIExpression()), !dbg !3216
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %3, metadata !2898, metadata !DIExpression()), !dbg !3219
  %4 = icmp eq ptr %3, null, !dbg !3221
  br i1 %4, label %5, label %6, !dbg !3222

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3223
  unreachable, !dbg !3223

6:                                                ; preds = %2
  ret ptr %3, !dbg !3224
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3225 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3229, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %1, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %1, metadata !2922, metadata !DIExpression()), !dbg !3232
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3234
  call void @llvm.dbg.value(metadata ptr %3, metadata !2898, metadata !DIExpression()), !dbg !3235
  %4 = icmp eq ptr %3, null, !dbg !3237
  br i1 %4, label %5, label %6, !dbg !3238

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3239
  unreachable, !dbg !3239

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3240, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata ptr %0, metadata !3246, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3250
  ret ptr %3, !dbg !3251
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3252 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3256, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3257, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !2936, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()), !dbg !3261
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3263
  call void @llvm.dbg.value(metadata ptr %3, metadata !2898, metadata !DIExpression()), !dbg !3264
  %4 = icmp eq ptr %3, null, !dbg !3266
  br i1 %4, label %5, label %6, !dbg !3267

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3268
  unreachable, !dbg !3268

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3240, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata ptr %0, metadata !3246, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3269
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3271
  ret ptr %3, !dbg !3272
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3273 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3277, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()), !dbg !3280
  %3 = add nsw i64 %1, 1, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %3, metadata !2936, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %3, metadata !2938, metadata !DIExpression()), !dbg !3284
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3286
  call void @llvm.dbg.value(metadata ptr %4, metadata !2898, metadata !DIExpression()), !dbg !3287
  %5 = icmp eq ptr %4, null, !dbg !3289
  br i1 %5, label %6, label %7, !dbg !3290

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3291
  unreachable, !dbg !3291

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3279, metadata !DIExpression()), !dbg !3280
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3292
  store i8 0, ptr %8, align 1, !dbg !3293, !tbaa !837
  call void @llvm.dbg.value(metadata ptr %4, metadata !3240, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %0, metadata !3246, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3296
  ret ptr %4, !dbg !3297
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3298 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3300, metadata !DIExpression()), !dbg !3301
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3302
  %3 = add i64 %2, 1, !dbg !3303
  call void @llvm.dbg.value(metadata ptr %0, metadata !3229, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %3, metadata !3230, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %3, metadata !2922, metadata !DIExpression()), !dbg !3306
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3308
  call void @llvm.dbg.value(metadata ptr %4, metadata !2898, metadata !DIExpression()), !dbg !3309
  %5 = icmp eq ptr %4, null, !dbg !3311
  br i1 %5, label %6, label %7, !dbg !3312

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3313
  unreachable, !dbg !3313

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3240, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata ptr %0, metadata !3246, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %3, metadata !3247, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3316
  ret ptr %4, !dbg !3317
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3318 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3323, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %1, metadata !3320, metadata !DIExpression()), !dbg !3324
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.109, ptr noundef nonnull @.str.2.110, i32 noundef 5) #36, !dbg !3323
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef %2) #36, !dbg !3323
  %3 = icmp eq i32 %1, 0, !dbg !3323
  tail call void @llvm.assume(i1 %3), !dbg !3323
  tail call void @abort() #38, !dbg !3325
  unreachable, !dbg !3325
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3326 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3364, metadata !DIExpression()), !dbg !3369
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3370
  call void @llvm.dbg.value(metadata i1 poison, metadata !3365, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %0, metadata !3371, metadata !DIExpression()), !dbg !3374
  %3 = load i32, ptr %0, align 8, !dbg !3376, !tbaa !3377
  %4 = and i32 %3, 32, !dbg !3378
  %5 = icmp eq i32 %4, 0, !dbg !3378
  call void @llvm.dbg.value(metadata i1 %5, metadata !3367, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3369
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3379
  %7 = icmp eq i32 %6, 0, !dbg !3380
  call void @llvm.dbg.value(metadata i1 %7, metadata !3368, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3369
  br i1 %5, label %8, label %18, !dbg !3381

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3383
  call void @llvm.dbg.value(metadata i1 %9, metadata !3365, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3369
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3384
  %11 = xor i1 %7, true, !dbg !3384
  %12 = sext i1 %11 to i32, !dbg !3384
  br i1 %10, label %21, label %13, !dbg !3384

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3385
  %15 = load i32, ptr %14, align 4, !dbg !3385, !tbaa !828
  %16 = icmp ne i32 %15, 9, !dbg !3386
  %17 = sext i1 %16 to i32, !dbg !3387
  br label %21, !dbg !3387

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3388

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3390
  store i32 0, ptr %20, align 4, !dbg !3392, !tbaa !828
  br label %21, !dbg !3390

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3369
  ret i32 %22, !dbg !3393
}

; Function Attrs: nounwind
declare !dbg !3394 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3398 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3436, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i32 0, metadata !3437, metadata !DIExpression()), !dbg !3440
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3441
  call void @llvm.dbg.value(metadata i32 %2, metadata !3438, metadata !DIExpression()), !dbg !3440
  %3 = icmp slt i32 %2, 0, !dbg !3442
  br i1 %3, label %4, label %6, !dbg !3444

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3445
  br label %24, !dbg !3446

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3447
  %8 = icmp eq i32 %7, 0, !dbg !3447
  br i1 %8, label %13, label %9, !dbg !3449

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3450
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3451
  %12 = icmp eq i64 %11, -1, !dbg !3452
  br i1 %12, label %16, label %13, !dbg !3453

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3454
  %15 = icmp eq i32 %14, 0, !dbg !3454
  br i1 %15, label %16, label %18, !dbg !3455

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i32 0, metadata !3439, metadata !DIExpression()), !dbg !3440
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %17, metadata !3439, metadata !DIExpression()), !dbg !3440
  br label %24, !dbg !3457

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3458
  %20 = load i32, ptr %19, align 4, !dbg !3458, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %20, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i32 0, metadata !3439, metadata !DIExpression()), !dbg !3440
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %21, metadata !3439, metadata !DIExpression()), !dbg !3440
  %22 = icmp eq i32 %20, 0, !dbg !3459
  br i1 %22, label %24, label %23, !dbg !3457

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3461, !tbaa !828
  call void @llvm.dbg.value(metadata i32 -1, metadata !3439, metadata !DIExpression()), !dbg !3440
  br label %24, !dbg !3463

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3440
  ret i32 %25, !dbg !3464
}

; Function Attrs: nofree nounwind
declare !dbg !3465 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3466 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3467 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3468 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3471 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3509, metadata !DIExpression()), !dbg !3510
  %2 = icmp eq ptr %0, null, !dbg !3511
  br i1 %2, label %6, label %3, !dbg !3513

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3514
  %5 = icmp eq i32 %4, 0, !dbg !3514
  br i1 %5, label %6, label %8, !dbg !3515

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3516
  br label %16, !dbg !3517

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3523
  %9 = load i32, ptr %0, align 8, !dbg !3525, !tbaa !3377
  %10 = and i32 %9, 256, !dbg !3527
  %11 = icmp eq i32 %10, 0, !dbg !3527
  br i1 %11, label %14, label %12, !dbg !3528

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3529
  br label %14, !dbg !3529

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3530
  br label %16, !dbg !3531

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3510
  ret i32 %17, !dbg !3532
}

; Function Attrs: nofree nounwind
declare !dbg !3533 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3534 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3573, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i64 %1, metadata !3574, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 %2, metadata !3575, metadata !DIExpression()), !dbg !3579
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3580
  %5 = load ptr, ptr %4, align 8, !dbg !3580, !tbaa !3581
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3582
  %7 = load ptr, ptr %6, align 8, !dbg !3582, !tbaa !3583
  %8 = icmp eq ptr %5, %7, !dbg !3584
  br i1 %8, label %9, label %27, !dbg !3585

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3586
  %11 = load ptr, ptr %10, align 8, !dbg !3586, !tbaa !1240
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3587
  %13 = load ptr, ptr %12, align 8, !dbg !3587, !tbaa !3588
  %14 = icmp eq ptr %11, %13, !dbg !3589
  br i1 %14, label %15, label %27, !dbg !3590

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3591
  %17 = load ptr, ptr %16, align 8, !dbg !3591, !tbaa !3592
  %18 = icmp eq ptr %17, null, !dbg !3593
  br i1 %18, label %19, label %27, !dbg !3594

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3595
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %21, metadata !3576, metadata !DIExpression()), !dbg !3597
  %22 = icmp eq i64 %21, -1, !dbg !3598
  br i1 %22, label %29, label %23, !dbg !3600

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3601, !tbaa !3377
  %25 = and i32 %24, -17, !dbg !3601
  store i32 %25, ptr %0, align 8, !dbg !3601, !tbaa !3377
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3602
  store i64 %21, ptr %26, align 8, !dbg !3603, !tbaa !3604
  br label %29, !dbg !3605

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3606
  br label %29, !dbg !3607

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3579
  ret i32 %30, !dbg !3608
}

; Function Attrs: nofree nounwind
declare !dbg !3609 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3612 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3617, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %1, metadata !3618, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %2, metadata !3619, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %3, metadata !3620, metadata !DIExpression()), !dbg !3622
  %5 = icmp eq ptr %1, null, !dbg !3623
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3625
  %7 = select i1 %5, ptr @.str.122, ptr %1, !dbg !3625
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3625
  call void @llvm.dbg.value(metadata i64 %8, metadata !3619, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %7, metadata !3618, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %6, metadata !3617, metadata !DIExpression()), !dbg !3622
  %9 = icmp eq ptr %3, null, !dbg !3626
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3628
  call void @llvm.dbg.value(metadata ptr %10, metadata !3620, metadata !DIExpression()), !dbg !3622
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %11, metadata !3621, metadata !DIExpression()), !dbg !3622
  %12 = icmp ult i64 %11, -3, !dbg !3630
  br i1 %12, label %13, label %17, !dbg !3632

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3633
  %15 = icmp eq i32 %14, 0, !dbg !3633
  br i1 %15, label %16, label %29, !dbg !3634

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3635, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata ptr %10, metadata !3642, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 0, metadata !3645, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 8, metadata !3646, metadata !DIExpression()), !dbg !3647
  store i64 0, ptr %10, align 1, !dbg !3649
  br label %29, !dbg !3650

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3651
  br i1 %18, label %19, label %20, !dbg !3653

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3654
  unreachable, !dbg !3654

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3655

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3657
  br i1 %23, label %29, label %24, !dbg !3658

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3659
  br i1 %25, label %29, label %26, !dbg !3662

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3663, !tbaa !837
  %28 = zext i8 %27 to i32, !dbg !3664
  store i32 %28, ptr %6, align 4, !dbg !3665, !tbaa !828
  br label %29, !dbg !3666

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3622
  ret i64 %30, !dbg !3667
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3668 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3674 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3676, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %1, metadata !3677, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %2, metadata !3678, metadata !DIExpression()), !dbg !3680
  %4 = icmp eq i64 %2, 0, !dbg !3681
  br i1 %4, label %8, label %5, !dbg !3681

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3681
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3681
  br i1 %7, label %13, label %8, !dbg !3681

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3679, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3680
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3679, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3680
  %9 = mul i64 %2, %1, !dbg !3681
  call void @llvm.dbg.value(metadata i64 %9, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %9, metadata !3686, metadata !DIExpression()), !dbg !3687
  %10 = icmp eq i64 %9, 0, !dbg !3689
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3689
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3690
  br label %15, !dbg !3691

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3679, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3680
  %14 = tail call ptr @__errno_location() #39, !dbg !3692
  store i32 12, ptr %14, align 4, !dbg !3694, !tbaa !828
  br label %15, !dbg !3695

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3680
  ret ptr %16, !dbg !3696
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3697 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3701, metadata !DIExpression()), !dbg !3706
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3707
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3702, metadata !DIExpression()), !dbg !3708
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3709
  %4 = icmp eq i32 %3, 0, !dbg !3709
  br i1 %4, label %5, label %12, !dbg !3711

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3712, metadata !DIExpression()), !dbg !3716
  %6 = load i16, ptr %2, align 16, !dbg !3719
  %7 = icmp eq i16 %6, 67, !dbg !3719
  br i1 %7, label %11, label %8, !dbg !3720

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3712, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata ptr @.str.1.127, metadata !3715, metadata !DIExpression()), !dbg !3721
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.127, i64 6), !dbg !3723
  %10 = icmp eq i32 %9, 0, !dbg !3724
  br i1 %10, label %11, label %12, !dbg !3725

11:                                               ; preds = %8, %5
  br label %12, !dbg !3726

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3706
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3727
  ret i1 %13, !dbg !3727
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3728 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3732, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %1, metadata !3733, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i64 %2, metadata !3734, metadata !DIExpression()), !dbg !3735
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3736
  ret i32 %4, !dbg !3737
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3742, metadata !DIExpression()), !dbg !3743
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3744
  ret ptr %2, !dbg !3745
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3746 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3748, metadata !DIExpression()), !dbg !3750
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3751
  call void @llvm.dbg.value(metadata ptr %2, metadata !3749, metadata !DIExpression()), !dbg !3750
  ret ptr %2, !dbg !3752
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3753 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3755, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %1, metadata !3756, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %2, metadata !3757, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %0, metadata !3748, metadata !DIExpression()), !dbg !3763
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3765
  call void @llvm.dbg.value(metadata ptr %4, metadata !3749, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata ptr %4, metadata !3758, metadata !DIExpression()), !dbg !3762
  %5 = icmp eq ptr %4, null, !dbg !3766
  br i1 %5, label %6, label %9, !dbg !3767

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3768
  br i1 %7, label %19, label %8, !dbg !3771

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3772, !tbaa !837
  br label %19, !dbg !3773

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3774
  call void @llvm.dbg.value(metadata i64 %10, metadata !3759, metadata !DIExpression()), !dbg !3775
  %11 = icmp ult i64 %10, %2, !dbg !3776
  br i1 %11, label %12, label %14, !dbg !3778

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3779
  call void @llvm.dbg.value(metadata ptr %1, metadata !3781, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata ptr %4, metadata !3784, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i64 %13, metadata !3785, metadata !DIExpression()), !dbg !3786
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3788
  br label %19, !dbg !3789

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3790
  br i1 %15, label %19, label %16, !dbg !3793

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3794
  call void @llvm.dbg.value(metadata ptr %1, metadata !3781, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %4, metadata !3784, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 %17, metadata !3785, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3798
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3799
  store i8 0, ptr %18, align 1, !dbg !3800, !tbaa !837
  br label %19, !dbg !3801

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3802
  ret i32 %20, !dbg !3803
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
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !337, !341, !356, !652, !684, !408, !422, !473, !686, !644, !693, !727, !729, !731, !733, !735, !668, !737, !740, !744, !746}
!llvm.ident = !{!748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748}
!llvm.module.flags = !{!749, !750, !751, !752, !753, !754}

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
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !89, globals: !99, splitDebugInlining: false, nameTableKind: None)
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
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!337 = distinct !DICompileUnit(language: DW_LANG_C11, file: !334, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !338, splitDebugInlining: false, nameTableKind: None)
!338 = !{!332, !335}
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "file_name", scope: !341, file: !342, line: 45, type: !96, isLocal: true, isDefinition: true)
!341 = distinct !DICompileUnit(language: DW_LANG_C11, file: !342, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !343, splitDebugInlining: false, nameTableKind: None)
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
!355 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !356, file: !357, line: 66, type: !403, isLocal: false, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C11, file: !357, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !358, globals: !359, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!358 = !{!91, !98}
!359 = !{!360, !362, !382, !384, !386, !388, !354, !390, !392, !394, !396, !401}
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !357, line: 272, type: !206, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "old_file_name", scope: !364, file: !357, line: 304, type: !96, isLocal: true, isDefinition: true)
!364 = distinct !DISubprogram(name: "verror_at_line", scope: !357, file: !357, line: 298, type: !365, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !375)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !70, !70, !96, !62, !96, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !369)
!369 = !{!370, !372, !373, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !368, file: !371, baseType: !62, size: 32)
!371 = !DIFile(filename: "lib/error.c", directory: "/src")
!372 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !368, file: !371, baseType: !62, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !368, file: !371, baseType: !91, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !368, file: !371, baseType: !91, size: 64, offset: 128)
!375 = !{!376, !377, !378, !379, !380, !381}
!376 = !DILocalVariable(name: "status", arg: 1, scope: !364, file: !357, line: 298, type: !70)
!377 = !DILocalVariable(name: "errnum", arg: 2, scope: !364, file: !357, line: 298, type: !70)
!378 = !DILocalVariable(name: "file_name", arg: 3, scope: !364, file: !357, line: 298, type: !96)
!379 = !DILocalVariable(name: "line_number", arg: 4, scope: !364, file: !357, line: 298, type: !62)
!380 = !DILocalVariable(name: "message", arg: 5, scope: !364, file: !357, line: 298, type: !96)
!381 = !DILocalVariable(name: "args", arg: 6, scope: !364, file: !357, line: 298, type: !367)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "old_line_number", scope: !364, file: !357, line: 305, type: !62, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !357, line: 338, type: !19, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !357, line: 346, type: !242, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !357, line: 346, type: !54, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "error_message_count", scope: !356, file: !357, line: 69, type: !62, isLocal: false, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !356, file: !357, line: 295, type: !70, isLocal: false, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !357, line: 208, type: !237, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !357, line: 208, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 21)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !357, line: 214, type: !206, isLocal: true, isDefinition: true)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{null}
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "program_name", scope: !408, file: !409, line: 31, type: !96, isLocal: false, isDefinition: true)
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !410, globals: !411, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!410 = !{!90}
!411 = !{!406, !412, !414}
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !409, line: 46, type: !242, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !409, line: 49, type: !19, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "utf07FF", scope: !418, file: !419, line: 46, type: !446, isLocal: true, isDefinition: true)
!418 = distinct !DISubprogram(name: "proper_name_lite", scope: !419, file: !419, line: 38, type: !420, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !424)
!419 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!420 = !DISubroutineType(types: !421)
!421 = !{!96, !96, !96}
!422 = distinct !DICompileUnit(language: DW_LANG_C11, file: !419, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !423, splitDebugInlining: false, nameTableKind: None)
!423 = !{!416}
!424 = !{!425, !426, !427, !428, !433}
!425 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !418, file: !419, line: 38, type: !96)
!426 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !418, file: !419, line: 38, type: !96)
!427 = !DILocalVariable(name: "translation", scope: !418, file: !419, line: 40, type: !96)
!428 = !DILocalVariable(name: "w", scope: !418, file: !419, line: 47, type: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !430, line: 37, baseType: !431)
!430 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !173, line: 57, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !62)
!433 = !DILocalVariable(name: "mbs", scope: !418, file: !419, line: 48, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !435, line: 6, baseType: !436)
!435 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !437, line: 21, baseType: !438)
!437 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 13, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !438, file: !437, line: 15, baseType: !70, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !438, file: !437, line: 20, baseType: !442, size: 32, offset: 32)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !437, line: 16, size: 32, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !442, file: !437, line: 18, baseType: !62, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !442, file: !437, line: 19, baseType: !19, size: 32)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !55)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !449, line: 78, type: !242, isLocal: true, isDefinition: true)
!449 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !449, line: 79, type: !215, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !449, line: 80, type: !454, isLocal: true, isDefinition: true)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 13)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !449, line: 81, type: !454, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !449, line: 82, type: !195, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !449, line: 83, type: !54, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !449, line: 84, type: !242, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !449, line: 85, type: !237, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !449, line: 86, type: !237, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !449, line: 87, type: !242, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !473, file: !449, line: 76, type: !559, isLocal: false, isDefinition: true)
!473 = distinct !DICompileUnit(language: DW_LANG_C11, file: !449, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !474, retainedTypes: !494, globals: !495, splitDebugInlining: false, nameTableKind: None)
!474 = !{!475, !489, !74}
!475 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !476, line: 42, baseType: !62, size: 32, elements: !477)
!476 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488}
!478 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!479 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!480 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!481 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!482 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!483 = !DIEnumerator(name: "c_quoting_style", value: 5)
!484 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!485 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!486 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!487 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!488 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !476, line: 254, baseType: !62, size: 32, elements: !490)
!490 = !{!491, !492, !493}
!491 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!492 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!493 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!494 = !{!70, !92, !93}
!495 = !{!447, !450, !452, !457, !459, !461, !463, !465, !467, !469, !471, !496, !500, !510, !512, !517, !519, !521, !523, !525, !548, !555, !557}
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !473, file: !449, line: 92, type: !498, isLocal: false, isDefinition: true)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 320, elements: !45)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !473, file: !449, line: 1040, type: !502, isLocal: false, isDefinition: true)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !449, line: 56, size: 448, elements: !503)
!503 = !{!504, !505, !506, !508, !509}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !502, file: !449, line: 59, baseType: !475, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !449, line: 62, baseType: !70, size: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !502, file: !449, line: 66, baseType: !507, size: 256, offset: 64)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !243)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !502, file: !449, line: 69, baseType: !96, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !502, file: !449, line: 72, baseType: !96, size: 64, offset: 384)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !473, file: !449, line: 107, type: !502, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "slot0", scope: !473, file: !449, line: 831, type: !514, isLocal: true, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 256)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !449, line: 321, type: !54, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !449, line: 357, type: !54, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !449, line: 358, type: !54, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !449, line: 199, type: !237, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "quote", scope: !527, file: !449, line: 228, type: !546, isLocal: true, isDefinition: true)
!527 = distinct !DISubprogram(name: "gettext_quote", scope: !449, file: !449, line: 197, type: !528, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!96, !96, !475}
!530 = !{!531, !532, !533, !534, !535}
!531 = !DILocalVariable(name: "msgid", arg: 1, scope: !527, file: !449, line: 197, type: !96)
!532 = !DILocalVariable(name: "s", arg: 2, scope: !527, file: !449, line: 197, type: !475)
!533 = !DILocalVariable(name: "translation", scope: !527, file: !449, line: 199, type: !96)
!534 = !DILocalVariable(name: "w", scope: !527, file: !449, line: 229, type: !429)
!535 = !DILocalVariable(name: "mbs", scope: !527, file: !449, line: 230, type: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !435, line: 6, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !437, line: 21, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 13, size: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !538, file: !437, line: 15, baseType: !70, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !538, file: !437, line: 20, baseType: !542, size: 32, offset: 32)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !437, line: 16, size: 32, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !542, file: !437, line: 18, baseType: !62, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !542, file: !437, line: 19, baseType: !19, size: 32)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !547)
!547 = !{!56, !21}
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "slotvec", scope: !473, file: !449, line: 834, type: !550, isLocal: true, isDefinition: true)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !449, line: 823, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !551, file: !449, line: 825, baseType: !93, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !551, file: !449, line: 826, baseType: !90, size: 64, offset: 64)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "nslots", scope: !473, file: !449, line: 832, type: !70, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "slotvec0", scope: !473, file: !449, line: 833, type: !551, isLocal: true, isDefinition: true)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 704, elements: !561)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!561 = !{!562}
!562 = !DISubrange(count: 11)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !565, line: 67, type: !310, isLocal: true, isDefinition: true)
!565 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !565, line: 69, type: !237, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !565, line: 83, type: !237, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !565, line: 83, type: !19, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !565, line: 85, type: !54, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !565, line: 88, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 171)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !565, line: 88, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 34)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !565, line: 105, type: !107, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !565, line: 109, type: !9, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !565, line: 113, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 28)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !565, line: 120, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 32)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !565, line: 127, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 36)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !565, line: 134, type: !261, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !565, line: 142, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 44)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !565, line: 150, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 48)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !565, line: 159, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 52)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !565, line: 170, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 60)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !565, line: 248, type: !195, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !565, line: 248, type: !286, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !565, line: 254, type: !195, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !565, line: 254, type: !102, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !565, line: 254, type: !261, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !565, line: 259, type: !3, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !565, line: 259, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 29)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !644, file: !645, line: 26, type: !647, isLocal: false, isDefinition: true)
!644 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !646, splitDebugInlining: false, nameTableKind: None)
!645 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!646 = !{!642}
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 376, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 47)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "exit_failure", scope: !652, file: !653, line: 24, type: !655, isLocal: false, isDefinition: true)
!652 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !654, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!654 = !{!650}
!655 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !658, line: 34, type: !226, isLocal: true, isDefinition: true)
!658 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !658, line: 34, type: !237, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !658, line: 34, type: !112, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !665, line: 108, type: !39, isLocal: true, isDefinition: true)
!665 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "internal_state", scope: !668, file: !665, line: 97, type: !671, isLocal: true, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !665, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !669, globals: !670, splitDebugInlining: false, nameTableKind: None)
!669 = !{!91, !93, !98}
!670 = !{!663, !666}
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !435, line: 6, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !437, line: 21, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 13, size: 64, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !673, file: !437, line: 15, baseType: !70, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !673, file: !437, line: 20, baseType: !677, size: 32, offset: 32)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !437, line: 16, size: 32, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !677, file: !437, line: 18, baseType: !62, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !677, file: !437, line: 19, baseType: !19, size: 32)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !683, line: 35, type: !215, isLocal: true, isDefinition: true)
!683 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !685, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!685 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!686 = distinct !DICompileUnit(language: DW_LANG_C11, file: !565, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !687, retainedTypes: !691, globals: !692, splitDebugInlining: false, nameTableKind: None)
!687 = !{!688}
!688 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !565, line: 40, baseType: !62, size: 32, elements: !689)
!689 = !{!690}
!690 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!691 = !{!91}
!692 = !{!563, !566, !568, !570, !572, !574, !579, !584, !586, !588, !593, !598, !603, !605, !610, !615, !620, !625, !627, !629, !631, !633, !635, !637}
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !695, retainedTypes: !726, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!695 = !{!696, !708}
!696 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !697, file: !694, line: 188, baseType: !62, size: 32, elements: !706)
!697 = distinct !DISubprogram(name: "x2nrealloc", scope: !694, file: !694, line: 176, type: !698, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !701)
!698 = !DISubroutineType(types: !699)
!699 = !{!91, !91, !700, !93}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!701 = !{!702, !703, !704, !705}
!702 = !DILocalVariable(name: "p", arg: 1, scope: !697, file: !694, line: 176, type: !91)
!703 = !DILocalVariable(name: "pn", arg: 2, scope: !697, file: !694, line: 176, type: !700)
!704 = !DILocalVariable(name: "s", arg: 3, scope: !697, file: !694, line: 176, type: !93)
!705 = !DILocalVariable(name: "n", scope: !697, file: !694, line: 178, type: !93)
!706 = !{!707}
!707 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!708 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !709, file: !694, line: 228, baseType: !62, size: 32, elements: !706)
!709 = distinct !DISubprogram(name: "xpalloc", scope: !694, file: !694, line: 223, type: !710, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !716)
!710 = !DISubroutineType(types: !711)
!711 = !{!91, !91, !712, !713, !715, !713}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !714, line: 130, baseType: !715)
!714 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !94, line: 35, baseType: !174)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725}
!717 = !DILocalVariable(name: "pa", arg: 1, scope: !709, file: !694, line: 223, type: !91)
!718 = !DILocalVariable(name: "pn", arg: 2, scope: !709, file: !694, line: 223, type: !712)
!719 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !709, file: !694, line: 223, type: !713)
!720 = !DILocalVariable(name: "n_max", arg: 4, scope: !709, file: !694, line: 223, type: !715)
!721 = !DILocalVariable(name: "s", arg: 5, scope: !709, file: !694, line: 223, type: !713)
!722 = !DILocalVariable(name: "n0", scope: !709, file: !694, line: 230, type: !713)
!723 = !DILocalVariable(name: "n", scope: !709, file: !694, line: 237, type: !713)
!724 = !DILocalVariable(name: "nbytes", scope: !709, file: !694, line: 248, type: !713)
!725 = !DILocalVariable(name: "adjusted_nbytes", scope: !709, file: !694, line: 252, type: !713)
!726 = !{!90, !91, !121, !174, !95}
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !658, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !728, splitDebugInlining: false, nameTableKind: None)
!728 = !{!656, !659, !661}
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !691, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !691, splitDebugInlining: false, nameTableKind: None)
!736 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!737 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !739, splitDebugInlining: false, nameTableKind: None)
!738 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!739 = !{!121, !95, !91}
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !741, splitDebugInlining: false, nameTableKind: None)
!741 = !{!742, !681}
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !683, line: 35, type: !54, isLocal: true, isDefinition: true)
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!745 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !691, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!748 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!749 = !{i32 7, !"Dwarf Version", i32 5}
!750 = !{i32 2, !"Debug Info Version", i32 3}
!751 = !{i32 1, !"wchar_size", i32 4}
!752 = !{i32 8, !"PIC Level", i32 2}
!753 = !{i32 7, !"PIE Level", i32 2}
!754 = !{i32 7, !"uwtable", i32 2}
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
!795 = !DILocation(line: 857, column: 3, scope: !777, inlinedAt: !794)
!796 = !DILocation(line: 861, column: 29, scope: !777, inlinedAt: !794)
!797 = !DILocation(line: 862, column: 7, scope: !798, inlinedAt: !794)
!798 = distinct !DILexicalBlock(scope: !777, file: !69, line: 862, column: 7)
!799 = !DILocation(line: 862, column: 19, scope: !798, inlinedAt: !794)
!800 = !DILocation(line: 862, column: 22, scope: !798, inlinedAt: !794)
!801 = !DILocation(line: 862, column: 7, scope: !777, inlinedAt: !794)
!802 = !DILocation(line: 868, column: 7, scope: !803, inlinedAt: !794)
!803 = distinct !DILexicalBlock(scope: !798, file: !69, line: 863, column: 5)
!804 = !DILocation(line: 870, column: 5, scope: !803, inlinedAt: !794)
!805 = !DILocation(line: 875, column: 3, scope: !777, inlinedAt: !794)
!806 = !DILocation(line: 877, column: 3, scope: !777, inlinedAt: !794)
!807 = !DILocation(line: 78, column: 3, scope: !755)
!808 = !DISubprogram(name: "dcgettext", scope: !809, file: !809, line: 51, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!809 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!810 = !DISubroutineType(types: !811)
!811 = !{!90, !96, !96, !70}
!812 = !{}
!813 = !DISubprogram(name: "__fprintf_chk", scope: !814, file: !814, line: 93, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!815 = !DISubroutineType(types: !816)
!816 = !{!70, !817, !70, !818, null}
!817 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!818 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!819 = !DISubprogram(name: "__printf_chk", scope: !814, file: !814, line: 95, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!820 = !DISubroutineType(types: !821)
!821 = !{!70, !70, !818, null}
!822 = !DISubprogram(name: "fputs_unlocked", scope: !823, file: !823, line: 691, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
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
!879 = !DILocation(line: 618, column: 5, scope: !137)
!880 = !DILocation(line: 620, column: 23, scope: !124)
!881 = !DILocation(line: 625, column: 39, scope: !124)
!882 = !DILocation(line: 626, column: 3, scope: !124)
!883 = !DILocation(line: 626, column: 10, scope: !124)
!884 = !DILocation(line: 626, column: 21, scope: !124)
!885 = !DILocation(line: 628, column: 44, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !69, line: 628, column: 11)
!887 = distinct !DILexicalBlock(scope: !124, file: !69, line: 627, column: 5)
!888 = !DILocation(line: 628, column: 32, scope: !886)
!889 = !DILocation(line: 628, column: 49, scope: !886)
!890 = !DILocation(line: 628, column: 11, scope: !887)
!891 = !DILocation(line: 630, column: 11, scope: !892)
!892 = distinct !DILexicalBlock(scope: !887, file: !69, line: 630, column: 11)
!893 = !DILocation(line: 630, column: 11, scope: !887)
!894 = !DILocation(line: 632, column: 26, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !69, line: 632, column: 15)
!896 = distinct !DILexicalBlock(scope: !892, file: !69, line: 631, column: 9)
!897 = !DILocation(line: 632, column: 34, scope: !895)
!898 = !DILocation(line: 632, column: 37, scope: !895)
!899 = !DILocation(line: 632, column: 15, scope: !896)
!900 = !DILocation(line: 636, column: 16, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !69, line: 636, column: 15)
!902 = !DILocation(line: 636, column: 29, scope: !901)
!903 = !DILocation(line: 640, column: 16, scope: !887)
!904 = distinct !{!904, !882, !905, !875}
!905 = !DILocation(line: 641, column: 5, scope: !124)
!906 = !DILocation(line: 644, column: 3, scope: !124)
!907 = !DILocation(line: 0, scope: !840, inlinedAt: !908)
!908 = distinct !DILocation(line: 648, column: 31, scope: !124)
!909 = !DILocation(line: 0, scope: !840, inlinedAt: !910)
!910 = distinct !DILocation(line: 649, column: 31, scope: !124)
!911 = !DILocation(line: 0, scope: !840, inlinedAt: !912)
!912 = distinct !DILocation(line: 650, column: 31, scope: !124)
!913 = !DILocation(line: 0, scope: !840, inlinedAt: !914)
!914 = distinct !DILocation(line: 651, column: 31, scope: !124)
!915 = !DILocation(line: 0, scope: !840, inlinedAt: !916)
!916 = distinct !DILocation(line: 652, column: 31, scope: !124)
!917 = !DILocation(line: 0, scope: !840, inlinedAt: !918)
!918 = distinct !DILocation(line: 653, column: 31, scope: !124)
!919 = !DILocation(line: 0, scope: !840, inlinedAt: !920)
!920 = distinct !DILocation(line: 654, column: 31, scope: !124)
!921 = !DILocation(line: 0, scope: !840, inlinedAt: !922)
!922 = distinct !DILocation(line: 655, column: 31, scope: !124)
!923 = !DILocation(line: 0, scope: !840, inlinedAt: !924)
!924 = distinct !DILocation(line: 656, column: 31, scope: !124)
!925 = !DILocation(line: 0, scope: !840, inlinedAt: !926)
!926 = distinct !DILocation(line: 657, column: 31, scope: !124)
!927 = !DILocation(line: 663, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !124, file: !69, line: 663, column: 7)
!929 = !DILocation(line: 664, column: 7, scope: !928)
!930 = !DILocation(line: 664, column: 10, scope: !928)
!931 = !DILocation(line: 663, column: 7, scope: !124)
!932 = !DILocation(line: 669, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !69, line: 665, column: 5)
!934 = !DILocation(line: 671, column: 5, scope: !933)
!935 = !DILocation(line: 676, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !928, file: !69, line: 673, column: 5)
!937 = !DILocation(line: 679, column: 3, scope: !124)
!938 = !DILocation(line: 683, column: 3, scope: !124)
!939 = !DILocation(line: 686, column: 3, scope: !124)
!940 = !DILocation(line: 688, column: 3, scope: !124)
!941 = !DILocation(line: 691, column: 3, scope: !124)
!942 = !DILocation(line: 695, column: 3, scope: !124)
!943 = !DILocation(line: 696, column: 1, scope: !124)
!944 = !DISubprogram(name: "setlocale", scope: !945, file: !945, line: 122, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!945 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!946 = !DISubroutineType(types: !947)
!947 = !{!90, !70, !96}
!948 = !DISubprogram(name: "strncmp", scope: !949, file: !949, line: 159, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!949 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!950 = !DISubroutineType(types: !951)
!951 = !{!70, !96, !96, !93}
!952 = !DISubprogram(name: "exit", scope: !953, file: !953, line: 624, type: !756, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !812)
!953 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!954 = !DISubprogram(name: "getenv", scope: !953, file: !953, line: 641, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!955 = !DISubroutineType(types: !956)
!956 = !{!90, !96}
!957 = !DISubprogram(name: "strcmp", scope: !949, file: !949, line: 156, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!958 = !DISubroutineType(types: !959)
!959 = !{!70, !96, !96}
!960 = !DISubprogram(name: "strspn", scope: !949, file: !949, line: 297, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!961 = !DISubroutineType(types: !962)
!962 = !{!95, !96, !96}
!963 = !DISubprogram(name: "strchr", scope: !949, file: !949, line: 246, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!964 = !DISubroutineType(types: !965)
!965 = !{!90, !96, !70}
!966 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!967 = !DISubroutineType(types: !968)
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!972 = !DISubprogram(name: "strcspn", scope: !949, file: !949, line: 293, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!973 = !DISubprogram(name: "fwrite_unlocked", scope: !823, file: !823, line: 704, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!974 = !DISubroutineType(types: !975)
!975 = !{!93, !976, !93, !93, !817}
!976 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!979 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !980, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !983)
!980 = !DISubroutineType(types: !981)
!981 = !{!70, !70, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!983 = !{!984, !985, !986, !987, !988, !989}
!984 = !DILocalVariable(name: "argc", arg: 1, scope: !979, file: !2, line: 82, type: !70)
!985 = !DILocalVariable(name: "argv", arg: 2, scope: !979, file: !2, line: 82, type: !982)
!986 = !DILocalVariable(name: "optc", scope: !979, file: !2, line: 84, type: !70)
!987 = !DILocalVariable(name: "status", scope: !979, file: !2, line: 121, type: !70)
!988 = !DILocalVariable(name: "tty", scope: !979, file: !2, line: 122, type: !96)
!989 = !DILocalVariable(name: "ttyname_err", scope: !990, file: !2, line: 128, type: !70)
!990 = distinct !DILexicalBlock(scope: !991, file: !2, line: 127, column: 5)
!991 = distinct !DILexicalBlock(scope: !979, file: !2, line: 124, column: 7)
!992 = !DILocation(line: 0, scope: !979)
!993 = !DILocation(line: 87, column: 21, scope: !979)
!994 = !DILocation(line: 87, column: 3, scope: !979)
!995 = !DILocation(line: 88, column: 3, scope: !979)
!996 = !DILocation(line: 89, column: 3, scope: !979)
!997 = !DILocation(line: 90, column: 3, scope: !979)
!998 = !DILocalVariable(name: "status", arg: 1, scope: !999, file: !69, line: 102, type: !70)
!999 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !69, file: !69, line: 102, type: !756, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1000)
!1000 = !{!998}
!1001 = !DILocation(line: 0, scope: !999, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 92, column: 3, scope: !979)
!1003 = !DILocation(line: 105, column: 18, scope: !1004, inlinedAt: !1002)
!1004 = distinct !DILexicalBlock(scope: !999, file: !69, line: 104, column: 7)
!1005 = !DILocation(line: 93, column: 3, scope: !979)
!1006 = !DILocation(line: 95, column: 3, scope: !979)
!1007 = !DILocation(line: 95, column: 18, scope: !979)
!1008 = !DILocation(line: 100, column: 18, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 98, column: 9)
!1010 = distinct !DILexicalBlock(scope: !979, file: !2, line: 96, column: 5)
!1011 = distinct !{!1011, !1006, !1012, !875}
!1012 = !DILocation(line: 110, column: 5, scope: !979)
!1013 = !DILocation(line: 103, column: 9, scope: !1009)
!1014 = !DILocation(line: 105, column: 9, scope: !1009)
!1015 = !DILocation(line: 108, column: 11, scope: !1009)
!1016 = !DILocation(line: 112, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !979, file: !2, line: 112, column: 7)
!1018 = !DILocation(line: 112, column: 14, scope: !1017)
!1019 = !DILocation(line: 112, column: 7, scope: !979)
!1020 = !DILocation(line: 114, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 113, column: 5)
!1022 = !DILocation(line: 115, column: 7, scope: !1021)
!1023 = !DILocation(line: 118, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !979, file: !2, line: 118, column: 7)
!1025 = !DILocation(line: 118, column: 7, scope: !979)
!1026 = !DILocation(line: 119, column: 12, scope: !1024)
!1027 = !DILocation(line: 119, column: 5, scope: !1024)
!1028 = !DILocation(line: 122, column: 21, scope: !979)
!1029 = !DILocation(line: 124, column: 7, scope: !991)
!1030 = !DILocation(line: 124, column: 7, scope: !979)
!1031 = !DILocation(line: 128, column: 25, scope: !990)
!1032 = !DILocation(line: 0, scope: !990)
!1033 = !DILocation(line: 129, column: 11, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !990, file: !2, line: 129, column: 11)
!1035 = !DILocation(line: 129, column: 11, scope: !990)
!1036 = !DILocation(line: 130, column: 9, scope: !1034)
!1037 = !DILocation(line: 131, column: 13, scope: !990)
!1038 = !DILocation(line: 0, scope: !991)
!1039 = !DILocation(line: 135, column: 3, scope: !979)
!1040 = !DILocation(line: 137, column: 1, scope: !979)
!1041 = !DISubprogram(name: "bindtextdomain", scope: !809, file: !809, line: 86, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!90, !96, !96}
!1044 = !DISubprogram(name: "textdomain", scope: !809, file: !809, line: 82, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1045 = !DISubprogram(name: "atexit", scope: !953, file: !953, line: 602, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!70, !403}
!1048 = !DISubprogram(name: "getopt_long", scope: !324, file: !324, line: 66, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!70, !70, !1051, !96, !1053, !329}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1054 = !DISubprogram(name: "isatty", scope: !1055, file: !1055, line: 809, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1055 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!70, !70}
!1058 = !DISubprogram(name: "ttyname", scope: !1055, file: !1055, line: 799, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!90, !70}
!1061 = !DISubprogram(name: "__errno_location", scope: !1062, file: !1062, line: 37, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1062 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!329}
!1065 = !DISubprogram(name: "puts", scope: !823, file: !823, line: 661, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!70, !96}
!1068 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !342, file: !342, line: 50, type: !778, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1069)
!1069 = !{!1070}
!1070 = !DILocalVariable(name: "file", arg: 1, scope: !1068, file: !342, line: 50, type: !96)
!1071 = !DILocation(line: 0, scope: !1068)
!1072 = !DILocation(line: 52, column: 13, scope: !1068)
!1073 = !DILocation(line: 53, column: 1, scope: !1068)
!1074 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !342, file: !342, line: 87, type: !1075, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !121}
!1077 = !{!1078}
!1078 = !DILocalVariable(name: "ignore", arg: 1, scope: !1074, file: !342, line: 87, type: !121)
!1079 = !DILocation(line: 0, scope: !1074)
!1080 = !DILocation(line: 89, column: 16, scope: !1074)
!1081 = !{!1082, !1082, i64 0}
!1082 = !{!"_Bool", !768, i64 0}
!1083 = !DILocation(line: 90, column: 1, scope: !1074)
!1084 = distinct !DISubprogram(name: "close_stdout", scope: !342, file: !342, line: 116, type: !404, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1085)
!1085 = !{!1086}
!1086 = !DILocalVariable(name: "write_error", scope: !1087, file: !342, line: 121, type: !96)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !342, line: 120, column: 5)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !342, line: 118, column: 7)
!1089 = !DILocation(line: 118, column: 21, scope: !1088)
!1090 = !DILocation(line: 118, column: 7, scope: !1088)
!1091 = !DILocation(line: 118, column: 29, scope: !1088)
!1092 = !DILocation(line: 119, column: 7, scope: !1088)
!1093 = !DILocation(line: 119, column: 12, scope: !1088)
!1094 = !{i8 0, i8 2}
!1095 = !DILocation(line: 119, column: 25, scope: !1088)
!1096 = !DILocation(line: 119, column: 28, scope: !1088)
!1097 = !DILocation(line: 119, column: 34, scope: !1088)
!1098 = !DILocation(line: 118, column: 7, scope: !1084)
!1099 = !DILocation(line: 121, column: 33, scope: !1087)
!1100 = !DILocation(line: 0, scope: !1087)
!1101 = !DILocation(line: 122, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1087, file: !342, line: 122, column: 11)
!1103 = !DILocation(line: 0, scope: !1102)
!1104 = !DILocation(line: 122, column: 11, scope: !1087)
!1105 = !DILocation(line: 123, column: 9, scope: !1102)
!1106 = !DILocation(line: 126, column: 9, scope: !1102)
!1107 = !DILocation(line: 128, column: 14, scope: !1087)
!1108 = !DILocation(line: 128, column: 7, scope: !1087)
!1109 = !DILocation(line: 133, column: 42, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1084, file: !342, line: 133, column: 7)
!1111 = !DILocation(line: 133, column: 28, scope: !1110)
!1112 = !DILocation(line: 133, column: 50, scope: !1110)
!1113 = !DILocation(line: 133, column: 7, scope: !1084)
!1114 = !DILocation(line: 134, column: 12, scope: !1110)
!1115 = !DILocation(line: 134, column: 5, scope: !1110)
!1116 = !DILocation(line: 135, column: 1, scope: !1084)
!1117 = !DISubprogram(name: "_exit", scope: !1055, file: !1055, line: 624, type: !756, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1118 = distinct !DISubprogram(name: "verror", scope: !357, file: !357, line: 251, type: !1119, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !70, !70, !96, !367}
!1121 = !{!1122, !1123, !1124, !1125}
!1122 = !DILocalVariable(name: "status", arg: 1, scope: !1118, file: !357, line: 251, type: !70)
!1123 = !DILocalVariable(name: "errnum", arg: 2, scope: !1118, file: !357, line: 251, type: !70)
!1124 = !DILocalVariable(name: "message", arg: 3, scope: !1118, file: !357, line: 251, type: !96)
!1125 = !DILocalVariable(name: "args", arg: 4, scope: !1118, file: !357, line: 251, type: !367)
!1126 = !DILocation(line: 0, scope: !1118)
!1127 = !DILocation(line: 261, column: 3, scope: !1118)
!1128 = !DILocation(line: 265, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1118, file: !357, line: 265, column: 7)
!1130 = !DILocation(line: 265, column: 7, scope: !1118)
!1131 = !DILocation(line: 266, column: 5, scope: !1129)
!1132 = !DILocation(line: 272, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !357, line: 268, column: 5)
!1134 = !DILocation(line: 276, column: 3, scope: !1118)
!1135 = !DILocation(line: 282, column: 1, scope: !1118)
!1136 = distinct !DISubprogram(name: "flush_stdout", scope: !357, file: !357, line: 163, type: !404, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1137)
!1137 = !{!1138}
!1138 = !DILocalVariable(name: "stdout_fd", scope: !1136, file: !357, line: 166, type: !70)
!1139 = !DILocation(line: 0, scope: !1136)
!1140 = !DILocalVariable(name: "fd", arg: 1, scope: !1141, file: !357, line: 145, type: !70)
!1141 = distinct !DISubprogram(name: "is_open", scope: !357, file: !357, line: 145, type: !1056, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1142)
!1142 = !{!1140}
!1143 = !DILocation(line: 0, scope: !1141, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 182, column: 25, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1136, file: !357, line: 182, column: 7)
!1146 = !DILocation(line: 157, column: 15, scope: !1141, inlinedAt: !1144)
!1147 = !DILocation(line: 157, column: 12, scope: !1141, inlinedAt: !1144)
!1148 = !DILocation(line: 182, column: 7, scope: !1136)
!1149 = !DILocation(line: 184, column: 5, scope: !1145)
!1150 = !DILocation(line: 185, column: 1, scope: !1136)
!1151 = distinct !DISubprogram(name: "error_tail", scope: !357, file: !357, line: 219, type: !1119, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1152)
!1152 = !{!1153, !1154, !1155, !1156}
!1153 = !DILocalVariable(name: "status", arg: 1, scope: !1151, file: !357, line: 219, type: !70)
!1154 = !DILocalVariable(name: "errnum", arg: 2, scope: !1151, file: !357, line: 219, type: !70)
!1155 = !DILocalVariable(name: "message", arg: 3, scope: !1151, file: !357, line: 219, type: !96)
!1156 = !DILocalVariable(name: "args", arg: 4, scope: !1151, file: !357, line: 219, type: !367)
!1157 = !DILocation(line: 0, scope: !1151)
!1158 = !DILocation(line: 229, column: 13, scope: !1151)
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
!1202 = distinct !DILocation(line: 229, column: 3, scope: !1151)
!1203 = !DILocation(line: 135, column: 10, scope: !1160, inlinedAt: !1202)
!1204 = !DILocation(line: 232, column: 3, scope: !1151)
!1205 = !DILocation(line: 233, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1151, file: !357, line: 233, column: 7)
!1207 = !DILocation(line: 233, column: 7, scope: !1151)
!1208 = !DILocalVariable(name: "errnum", arg: 1, scope: !1209, file: !357, line: 188, type: !70)
!1209 = distinct !DISubprogram(name: "print_errno_message", scope: !357, file: !357, line: 188, type: !756, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1210)
!1210 = !{!1208, !1211, !1212}
!1211 = !DILocalVariable(name: "s", scope: !1209, file: !357, line: 190, type: !96)
!1212 = !DILocalVariable(name: "errbuf", scope: !1209, file: !357, line: 193, type: !1213)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 1024)
!1216 = !DILocation(line: 0, scope: !1209, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 234, column: 5, scope: !1206)
!1218 = !DILocation(line: 193, column: 3, scope: !1209, inlinedAt: !1217)
!1219 = !DILocation(line: 193, column: 8, scope: !1209, inlinedAt: !1217)
!1220 = !DILocation(line: 195, column: 7, scope: !1209, inlinedAt: !1217)
!1221 = !DILocation(line: 207, column: 9, scope: !1222, inlinedAt: !1217)
!1222 = distinct !DILexicalBlock(scope: !1209, file: !357, line: 207, column: 7)
!1223 = !DILocation(line: 207, column: 7, scope: !1209, inlinedAt: !1217)
!1224 = !DILocation(line: 208, column: 9, scope: !1222, inlinedAt: !1217)
!1225 = !DILocation(line: 208, column: 5, scope: !1222, inlinedAt: !1217)
!1226 = !DILocation(line: 214, column: 3, scope: !1209, inlinedAt: !1217)
!1227 = !DILocation(line: 216, column: 1, scope: !1209, inlinedAt: !1217)
!1228 = !DILocation(line: 234, column: 5, scope: !1206)
!1229 = !DILocation(line: 238, column: 3, scope: !1151)
!1230 = !DILocalVariable(name: "__c", arg: 1, scope: !1231, file: !1232, line: 101, type: !70)
!1231 = distinct !DISubprogram(name: "putc_unlocked", scope: !1232, file: !1232, line: 101, type: !1233, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1235)
!1232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!70, !70, !1164}
!1235 = !{!1230, !1236}
!1236 = !DILocalVariable(name: "__stream", arg: 2, scope: !1231, file: !1232, line: 101, type: !1164)
!1237 = !DILocation(line: 0, scope: !1231, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 238, column: 3, scope: !1151)
!1239 = !DILocation(line: 103, column: 10, scope: !1231, inlinedAt: !1238)
!1240 = !{!1241, !767, i64 40}
!1241 = !{!"_IO_FILE", !829, i64 0, !767, i64 8, !767, i64 16, !767, i64 24, !767, i64 32, !767, i64 40, !767, i64 48, !767, i64 56, !767, i64 64, !767, i64 72, !767, i64 80, !767, i64 88, !767, i64 96, !767, i64 104, !829, i64 112, !829, i64 116, !1242, i64 120, !870, i64 128, !768, i64 130, !768, i64 131, !767, i64 136, !1242, i64 144, !767, i64 152, !767, i64 160, !767, i64 168, !767, i64 176, !1242, i64 184, !829, i64 192, !768, i64 196}
!1242 = !{!"long", !768, i64 0}
!1243 = !{!1241, !767, i64 48}
!1244 = !{!"branch_weights", i32 2000, i32 1}
!1245 = !DILocation(line: 240, column: 3, scope: !1151)
!1246 = !DILocation(line: 241, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1151, file: !357, line: 241, column: 7)
!1248 = !DILocation(line: 241, column: 7, scope: !1151)
!1249 = !DILocation(line: 242, column: 5, scope: !1247)
!1250 = !DILocation(line: 243, column: 1, scope: !1151)
!1251 = !DISubprogram(name: "__vfprintf_chk", scope: !814, file: !814, line: 96, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!70, !1163, !70, !818, !367}
!1254 = !DISubprogram(name: "strerror_r", scope: !949, file: !949, line: 444, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!90, !70, !90, !93}
!1257 = !DISubprogram(name: "__overflow", scope: !823, file: !823, line: 886, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!70, !1164, !70}
!1260 = !DISubprogram(name: "fflush_unlocked", scope: !823, file: !823, line: 239, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!70, !1164}
!1263 = !DISubprogram(name: "fcntl", scope: !1264, file: !1264, line: 149, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1264 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!70, !70, !70, null}
!1267 = distinct !DISubprogram(name: "error", scope: !357, file: !357, line: 285, type: !1268, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !70, !70, !96, null}
!1270 = !{!1271, !1272, !1273, !1274}
!1271 = !DILocalVariable(name: "status", arg: 1, scope: !1267, file: !357, line: 285, type: !70)
!1272 = !DILocalVariable(name: "errnum", arg: 2, scope: !1267, file: !357, line: 285, type: !70)
!1273 = !DILocalVariable(name: "message", arg: 3, scope: !1267, file: !357, line: 285, type: !96)
!1274 = !DILocalVariable(name: "ap", scope: !1267, file: !357, line: 287, type: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !823, line: 52, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1277, line: 14, baseType: !1278)
!1277 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !371, baseType: !1279)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 192, elements: !40)
!1280 = !DILocation(line: 0, scope: !1267)
!1281 = !DILocation(line: 287, column: 3, scope: !1267)
!1282 = !DILocation(line: 287, column: 11, scope: !1267)
!1283 = !DILocation(line: 288, column: 3, scope: !1267)
!1284 = !DILocation(line: 289, column: 3, scope: !1267)
!1285 = !DILocation(line: 290, column: 3, scope: !1267)
!1286 = !DILocation(line: 291, column: 1, scope: !1267)
!1287 = !DILocation(line: 0, scope: !364)
!1288 = !DILocation(line: 302, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !364, file: !357, line: 302, column: 7)
!1290 = !DILocation(line: 302, column: 7, scope: !364)
!1291 = !DILocation(line: 307, column: 11, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !357, line: 307, column: 11)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !357, line: 303, column: 5)
!1294 = !DILocation(line: 307, column: 27, scope: !1292)
!1295 = !DILocation(line: 308, column: 11, scope: !1292)
!1296 = !DILocation(line: 308, column: 28, scope: !1292)
!1297 = !DILocation(line: 308, column: 25, scope: !1292)
!1298 = !DILocation(line: 309, column: 15, scope: !1292)
!1299 = !DILocation(line: 309, column: 33, scope: !1292)
!1300 = !DILocation(line: 310, column: 19, scope: !1292)
!1301 = !DILocation(line: 311, column: 22, scope: !1292)
!1302 = !DILocation(line: 311, column: 56, scope: !1292)
!1303 = !DILocation(line: 307, column: 11, scope: !1293)
!1304 = !DILocation(line: 316, column: 21, scope: !1293)
!1305 = !DILocation(line: 317, column: 23, scope: !1293)
!1306 = !DILocation(line: 318, column: 5, scope: !1293)
!1307 = !DILocation(line: 327, column: 3, scope: !364)
!1308 = !DILocation(line: 331, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !364, file: !357, line: 331, column: 7)
!1310 = !DILocation(line: 331, column: 7, scope: !364)
!1311 = !DILocation(line: 332, column: 5, scope: !1309)
!1312 = !DILocation(line: 338, column: 7, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !357, line: 334, column: 5)
!1314 = !DILocation(line: 346, column: 3, scope: !364)
!1315 = !DILocation(line: 350, column: 3, scope: !364)
!1316 = !DILocation(line: 356, column: 1, scope: !364)
!1317 = distinct !DISubprogram(name: "error_at_line", scope: !357, file: !357, line: 359, type: !1318, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !70, !70, !96, !62, !96, null}
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326}
!1321 = !DILocalVariable(name: "status", arg: 1, scope: !1317, file: !357, line: 359, type: !70)
!1322 = !DILocalVariable(name: "errnum", arg: 2, scope: !1317, file: !357, line: 359, type: !70)
!1323 = !DILocalVariable(name: "file_name", arg: 3, scope: !1317, file: !357, line: 359, type: !96)
!1324 = !DILocalVariable(name: "line_number", arg: 4, scope: !1317, file: !357, line: 360, type: !62)
!1325 = !DILocalVariable(name: "message", arg: 5, scope: !1317, file: !357, line: 360, type: !96)
!1326 = !DILocalVariable(name: "ap", scope: !1317, file: !357, line: 362, type: !1275)
!1327 = !DILocation(line: 0, scope: !1317)
!1328 = !DILocation(line: 362, column: 3, scope: !1317)
!1329 = !DILocation(line: 362, column: 11, scope: !1317)
!1330 = !DILocation(line: 363, column: 3, scope: !1317)
!1331 = !DILocation(line: 364, column: 3, scope: !1317)
!1332 = !DILocation(line: 366, column: 3, scope: !1317)
!1333 = !DILocation(line: 367, column: 1, scope: !1317)
!1334 = distinct !DISubprogram(name: "getprogname", scope: !685, file: !685, line: 54, type: !1335, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !812)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!96}
!1337 = !DILocation(line: 58, column: 10, scope: !1334)
!1338 = !DILocation(line: 58, column: 3, scope: !1334)
!1339 = distinct !DISubprogram(name: "set_program_name", scope: !409, file: !409, line: 37, type: !778, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1340)
!1340 = !{!1341, !1342, !1343}
!1341 = !DILocalVariable(name: "argv0", arg: 1, scope: !1339, file: !409, line: 37, type: !96)
!1342 = !DILocalVariable(name: "slash", scope: !1339, file: !409, line: 44, type: !96)
!1343 = !DILocalVariable(name: "base", scope: !1339, file: !409, line: 45, type: !96)
!1344 = !DILocation(line: 0, scope: !1339)
!1345 = !DILocation(line: 44, column: 23, scope: !1339)
!1346 = !DILocation(line: 45, column: 22, scope: !1339)
!1347 = !DILocation(line: 46, column: 17, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1339, file: !409, line: 46, column: 7)
!1349 = !DILocation(line: 46, column: 9, scope: !1348)
!1350 = !DILocation(line: 46, column: 25, scope: !1348)
!1351 = !DILocation(line: 46, column: 40, scope: !1348)
!1352 = !DILocalVariable(name: "__s1", arg: 1, scope: !1353, file: !841, line: 974, type: !977)
!1353 = distinct !DISubprogram(name: "memeq", scope: !841, file: !841, line: 974, type: !1354, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!121, !977, !977, !93}
!1356 = !{!1352, !1357, !1358}
!1357 = !DILocalVariable(name: "__s2", arg: 2, scope: !1353, file: !841, line: 974, type: !977)
!1358 = !DILocalVariable(name: "__n", arg: 3, scope: !1353, file: !841, line: 974, type: !93)
!1359 = !DILocation(line: 0, scope: !1353, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 46, column: 28, scope: !1348)
!1361 = !DILocation(line: 976, column: 11, scope: !1353, inlinedAt: !1360)
!1362 = !DILocation(line: 976, column: 10, scope: !1353, inlinedAt: !1360)
!1363 = !DILocation(line: 46, column: 7, scope: !1339)
!1364 = !DILocation(line: 49, column: 11, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !409, line: 49, column: 11)
!1366 = distinct !DILexicalBlock(scope: !1348, file: !409, line: 47, column: 5)
!1367 = !DILocation(line: 49, column: 36, scope: !1365)
!1368 = !DILocation(line: 49, column: 11, scope: !1366)
!1369 = !DILocation(line: 65, column: 16, scope: !1339)
!1370 = !DILocation(line: 71, column: 27, scope: !1339)
!1371 = !DILocation(line: 74, column: 33, scope: !1339)
!1372 = !DILocation(line: 76, column: 1, scope: !1339)
!1373 = !DISubprogram(name: "strrchr", scope: !949, file: !949, line: 273, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1374 = !DILocation(line: 0, scope: !418)
!1375 = !DILocation(line: 40, column: 29, scope: !418)
!1376 = !DILocation(line: 41, column: 19, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !418, file: !419, line: 41, column: 7)
!1378 = !DILocation(line: 41, column: 7, scope: !418)
!1379 = !DILocation(line: 47, column: 3, scope: !418)
!1380 = !DILocation(line: 48, column: 3, scope: !418)
!1381 = !DILocation(line: 48, column: 13, scope: !418)
!1382 = !DILocalVariable(name: "ps", arg: 1, scope: !1383, file: !1384, line: 1135, type: !1387)
!1383 = distinct !DISubprogram(name: "mbszero", scope: !1384, file: !1384, line: 1135, type: !1385, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1388)
!1384 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !1387}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!1388 = !{!1382}
!1389 = !DILocation(line: 0, scope: !1383, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 48, column: 18, scope: !418)
!1391 = !DILocalVariable(name: "__dest", arg: 1, scope: !1392, file: !1393, line: 57, type: !91)
!1392 = distinct !DISubprogram(name: "memset", scope: !1393, file: !1393, line: 57, type: !1394, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1396)
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
!1403 = distinct !DILexicalBlock(scope: !418, file: !419, line: 49, column: 7)
!1404 = !DILocation(line: 49, column: 39, scope: !1403)
!1405 = !DILocation(line: 49, column: 44, scope: !1403)
!1406 = !DILocation(line: 54, column: 1, scope: !418)
!1407 = !DISubprogram(name: "mbrtoc32", scope: !430, file: !430, line: 57, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!93, !1410, !818, !93, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1387)
!1413 = distinct !DISubprogram(name: "clone_quoting_options", scope: !449, file: !449, line: 113, type: !1414, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1417)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1416, !1416}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!1417 = !{!1418, !1419, !1420}
!1418 = !DILocalVariable(name: "o", arg: 1, scope: !1413, file: !449, line: 113, type: !1416)
!1419 = !DILocalVariable(name: "saved_errno", scope: !1413, file: !449, line: 115, type: !70)
!1420 = !DILocalVariable(name: "p", scope: !1413, file: !449, line: 116, type: !1416)
!1421 = !DILocation(line: 0, scope: !1413)
!1422 = !DILocation(line: 115, column: 21, scope: !1413)
!1423 = !DILocation(line: 116, column: 40, scope: !1413)
!1424 = !DILocation(line: 116, column: 31, scope: !1413)
!1425 = !DILocation(line: 118, column: 9, scope: !1413)
!1426 = !DILocation(line: 119, column: 3, scope: !1413)
!1427 = distinct !DISubprogram(name: "get_quoting_style", scope: !449, file: !449, line: 124, type: !1428, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1432)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!475, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!1432 = !{!1433}
!1433 = !DILocalVariable(name: "o", arg: 1, scope: !1427, file: !449, line: 124, type: !1430)
!1434 = !DILocation(line: 0, scope: !1427)
!1435 = !DILocation(line: 126, column: 11, scope: !1427)
!1436 = !DILocation(line: 126, column: 46, scope: !1427)
!1437 = !{!1438, !768, i64 0}
!1438 = !{!"quoting_options", !768, i64 0, !829, i64 4, !768, i64 8, !767, i64 40, !767, i64 48}
!1439 = !DILocation(line: 126, column: 3, scope: !1427)
!1440 = distinct !DISubprogram(name: "set_quoting_style", scope: !449, file: !449, line: 132, type: !1441, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1416, !475}
!1443 = !{!1444, !1445}
!1444 = !DILocalVariable(name: "o", arg: 1, scope: !1440, file: !449, line: 132, type: !1416)
!1445 = !DILocalVariable(name: "s", arg: 2, scope: !1440, file: !449, line: 132, type: !475)
!1446 = !DILocation(line: 0, scope: !1440)
!1447 = !DILocation(line: 134, column: 4, scope: !1440)
!1448 = !DILocation(line: 134, column: 45, scope: !1440)
!1449 = !DILocation(line: 135, column: 1, scope: !1440)
!1450 = distinct !DISubprogram(name: "set_char_quoting", scope: !449, file: !449, line: 143, type: !1451, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!70, !1416, !4, !70}
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1460, !1461}
!1454 = !DILocalVariable(name: "o", arg: 1, scope: !1450, file: !449, line: 143, type: !1416)
!1455 = !DILocalVariable(name: "c", arg: 2, scope: !1450, file: !449, line: 143, type: !4)
!1456 = !DILocalVariable(name: "i", arg: 3, scope: !1450, file: !449, line: 143, type: !70)
!1457 = !DILocalVariable(name: "uc", scope: !1450, file: !449, line: 145, type: !98)
!1458 = !DILocalVariable(name: "p", scope: !1450, file: !449, line: 146, type: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1460 = !DILocalVariable(name: "shift", scope: !1450, file: !449, line: 148, type: !70)
!1461 = !DILocalVariable(name: "r", scope: !1450, file: !449, line: 149, type: !62)
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
!1475 = distinct !DISubprogram(name: "set_quoting_flags", scope: !449, file: !449, line: 159, type: !1476, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!70, !1416, !70}
!1478 = !{!1479, !1480, !1481}
!1479 = !DILocalVariable(name: "o", arg: 1, scope: !1475, file: !449, line: 159, type: !1416)
!1480 = !DILocalVariable(name: "i", arg: 2, scope: !1475, file: !449, line: 159, type: !70)
!1481 = !DILocalVariable(name: "r", scope: !1475, file: !449, line: 163, type: !70)
!1482 = !DILocation(line: 0, scope: !1475)
!1483 = !DILocation(line: 161, column: 8, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1475, file: !449, line: 161, column: 7)
!1485 = !DILocation(line: 161, column: 7, scope: !1475)
!1486 = !DILocation(line: 163, column: 14, scope: !1475)
!1487 = !{!1438, !829, i64 4}
!1488 = !DILocation(line: 164, column: 12, scope: !1475)
!1489 = !DILocation(line: 165, column: 3, scope: !1475)
!1490 = distinct !DISubprogram(name: "set_custom_quoting", scope: !449, file: !449, line: 169, type: !1491, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1416, !96, !96}
!1493 = !{!1494, !1495, !1496}
!1494 = !DILocalVariable(name: "o", arg: 1, scope: !1490, file: !449, line: 169, type: !1416)
!1495 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1490, file: !449, line: 170, type: !96)
!1496 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1490, file: !449, line: 170, type: !96)
!1497 = !DILocation(line: 0, scope: !1490)
!1498 = !DILocation(line: 172, column: 8, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1490, file: !449, line: 172, column: 7)
!1500 = !DILocation(line: 172, column: 7, scope: !1490)
!1501 = !DILocation(line: 174, column: 12, scope: !1490)
!1502 = !DILocation(line: 175, column: 8, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1490, file: !449, line: 175, column: 7)
!1504 = !DILocation(line: 175, column: 19, scope: !1503)
!1505 = !DILocation(line: 176, column: 5, scope: !1503)
!1506 = !DILocation(line: 177, column: 6, scope: !1490)
!1507 = !DILocation(line: 177, column: 17, scope: !1490)
!1508 = !{!1438, !767, i64 40}
!1509 = !DILocation(line: 178, column: 6, scope: !1490)
!1510 = !DILocation(line: 178, column: 18, scope: !1490)
!1511 = !{!1438, !767, i64 48}
!1512 = !DILocation(line: 179, column: 1, scope: !1490)
!1513 = !DISubprogram(name: "abort", scope: !953, file: !953, line: 598, type: !404, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !812)
!1514 = distinct !DISubprogram(name: "quotearg_buffer", scope: !449, file: !449, line: 774, type: !1515, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!93, !90, !93, !96, !93, !1430}
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1518 = !DILocalVariable(name: "buffer", arg: 1, scope: !1514, file: !449, line: 774, type: !90)
!1519 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1514, file: !449, line: 774, type: !93)
!1520 = !DILocalVariable(name: "arg", arg: 3, scope: !1514, file: !449, line: 775, type: !96)
!1521 = !DILocalVariable(name: "argsize", arg: 4, scope: !1514, file: !449, line: 775, type: !93)
!1522 = !DILocalVariable(name: "o", arg: 5, scope: !1514, file: !449, line: 776, type: !1430)
!1523 = !DILocalVariable(name: "p", scope: !1514, file: !449, line: 778, type: !1430)
!1524 = !DILocalVariable(name: "saved_errno", scope: !1514, file: !449, line: 779, type: !70)
!1525 = !DILocalVariable(name: "r", scope: !1514, file: !449, line: 780, type: !93)
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
!1537 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !449, file: !449, line: 251, type: !1538, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1542)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!93, !90, !93, !96, !93, !475, !70, !1540, !96, !96}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1567, !1569, !1572, !1573, !1574, !1575, !1578, !1579, !1582, !1586, !1587, !1595, !1598, !1599, !1601, !1602, !1603, !1604}
!1543 = !DILocalVariable(name: "buffer", arg: 1, scope: !1537, file: !449, line: 251, type: !90)
!1544 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1537, file: !449, line: 251, type: !93)
!1545 = !DILocalVariable(name: "arg", arg: 3, scope: !1537, file: !449, line: 252, type: !96)
!1546 = !DILocalVariable(name: "argsize", arg: 4, scope: !1537, file: !449, line: 252, type: !93)
!1547 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1537, file: !449, line: 253, type: !475)
!1548 = !DILocalVariable(name: "flags", arg: 6, scope: !1537, file: !449, line: 253, type: !70)
!1549 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1537, file: !449, line: 254, type: !1540)
!1550 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1537, file: !449, line: 255, type: !96)
!1551 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1537, file: !449, line: 256, type: !96)
!1552 = !DILocalVariable(name: "unibyte_locale", scope: !1537, file: !449, line: 258, type: !121)
!1553 = !DILocalVariable(name: "len", scope: !1537, file: !449, line: 260, type: !93)
!1554 = !DILocalVariable(name: "orig_buffersize", scope: !1537, file: !449, line: 261, type: !93)
!1555 = !DILocalVariable(name: "quote_string", scope: !1537, file: !449, line: 262, type: !96)
!1556 = !DILocalVariable(name: "quote_string_len", scope: !1537, file: !449, line: 263, type: !93)
!1557 = !DILocalVariable(name: "backslash_escapes", scope: !1537, file: !449, line: 264, type: !121)
!1558 = !DILocalVariable(name: "elide_outer_quotes", scope: !1537, file: !449, line: 265, type: !121)
!1559 = !DILocalVariable(name: "encountered_single_quote", scope: !1537, file: !449, line: 266, type: !121)
!1560 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1537, file: !449, line: 267, type: !121)
!1561 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1537, file: !449, line: 309, type: !121)
!1562 = !DILocalVariable(name: "lq", scope: !1563, file: !449, line: 361, type: !96)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !449, line: 361, column: 11)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !449, line: 360, column: 13)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !449, line: 333, column: 7)
!1566 = distinct !DILexicalBlock(scope: !1537, file: !449, line: 312, column: 5)
!1567 = !DILocalVariable(name: "i", scope: !1568, file: !449, line: 395, type: !93)
!1568 = distinct !DILexicalBlock(scope: !1537, file: !449, line: 395, column: 3)
!1569 = !DILocalVariable(name: "is_right_quote", scope: !1570, file: !449, line: 397, type: !121)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !449, line: 396, column: 5)
!1571 = distinct !DILexicalBlock(scope: !1568, file: !449, line: 395, column: 3)
!1572 = !DILocalVariable(name: "escaping", scope: !1570, file: !449, line: 398, type: !121)
!1573 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1570, file: !449, line: 399, type: !121)
!1574 = !DILocalVariable(name: "c", scope: !1570, file: !449, line: 417, type: !98)
!1575 = !DILocalVariable(name: "m", scope: !1576, file: !449, line: 598, type: !93)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !449, line: 596, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1570, file: !449, line: 419, column: 9)
!1578 = !DILocalVariable(name: "printable", scope: !1576, file: !449, line: 600, type: !121)
!1579 = !DILocalVariable(name: "mbs", scope: !1580, file: !449, line: 609, type: !536)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !449, line: 608, column: 15)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !449, line: 602, column: 17)
!1582 = !DILocalVariable(name: "w", scope: !1583, file: !449, line: 618, type: !429)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !449, line: 617, column: 19)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !449, line: 616, column: 17)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !449, line: 616, column: 17)
!1586 = !DILocalVariable(name: "bytes", scope: !1583, file: !449, line: 619, type: !93)
!1587 = !DILocalVariable(name: "j", scope: !1588, file: !449, line: 648, type: !93)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !449, line: 648, column: 29)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !449, line: 647, column: 27)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !449, line: 645, column: 29)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !449, line: 636, column: 23)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !449, line: 628, column: 30)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !449, line: 623, column: 30)
!1594 = distinct !DILexicalBlock(scope: !1583, file: !449, line: 621, column: 25)
!1595 = !DILocalVariable(name: "ilim", scope: !1596, file: !449, line: 674, type: !93)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !449, line: 671, column: 15)
!1597 = distinct !DILexicalBlock(scope: !1576, file: !449, line: 670, column: 17)
!1598 = !DILabel(scope: !1537, name: "process_input", file: !449, line: 308)
!1599 = !DILabel(scope: !1600, name: "c_and_shell_escape", file: !449, line: 502)
!1600 = distinct !DILexicalBlock(scope: !1577, file: !449, line: 478, column: 9)
!1601 = !DILabel(scope: !1600, name: "c_escape", file: !449, line: 507)
!1602 = !DILabel(scope: !1570, name: "store_escape", file: !449, line: 709)
!1603 = !DILabel(scope: !1570, name: "store_c", file: !449, line: 712)
!1604 = !DILabel(scope: !1537, name: "force_outer_quoting_style", file: !449, line: 753)
!1605 = !DILocation(line: 0, scope: !1537)
!1606 = !DILocation(line: 258, column: 25, scope: !1537)
!1607 = !DILocation(line: 258, column: 36, scope: !1537)
!1608 = !DILocation(line: 265, column: 8, scope: !1537)
!1609 = !DILocation(line: 267, column: 3, scope: !1537)
!1610 = !DILocation(line: 261, column: 10, scope: !1537)
!1611 = !DILocation(line: 262, column: 15, scope: !1537)
!1612 = !DILocation(line: 263, column: 10, scope: !1537)
!1613 = !DILocation(line: 264, column: 8, scope: !1537)
!1614 = !DILocation(line: 266, column: 8, scope: !1537)
!1615 = !DILocation(line: 267, column: 8, scope: !1537)
!1616 = !DILocation(line: 308, column: 2, scope: !1537)
!1617 = !DILocation(line: 311, column: 3, scope: !1537)
!1618 = !DILocation(line: 318, column: 11, scope: !1566)
!1619 = !DILocation(line: 318, column: 12, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1566, file: !449, line: 318, column: 11)
!1621 = !DILocation(line: 319, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !449, line: 319, column: 9)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !449, line: 319, column: 9)
!1624 = !DILocation(line: 319, column: 9, scope: !1623)
!1625 = !DILocation(line: 0, scope: !527, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 357, column: 26, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !449, line: 335, column: 11)
!1628 = distinct !DILexicalBlock(scope: !1565, file: !449, line: 334, column: 13)
!1629 = !DILocation(line: 199, column: 29, scope: !527, inlinedAt: !1626)
!1630 = !DILocation(line: 201, column: 19, scope: !1631, inlinedAt: !1626)
!1631 = distinct !DILexicalBlock(scope: !527, file: !449, line: 201, column: 7)
!1632 = !DILocation(line: 201, column: 7, scope: !527, inlinedAt: !1626)
!1633 = !DILocation(line: 229, column: 3, scope: !527, inlinedAt: !1626)
!1634 = !DILocation(line: 230, column: 3, scope: !527, inlinedAt: !1626)
!1635 = !DILocation(line: 230, column: 13, scope: !527, inlinedAt: !1626)
!1636 = !DILocalVariable(name: "ps", arg: 1, scope: !1637, file: !1384, line: 1135, type: !1640)
!1637 = distinct !DISubprogram(name: "mbszero", scope: !1384, file: !1384, line: 1135, type: !1638, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1641)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !1640}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!1641 = !{!1636}
!1642 = !DILocation(line: 0, scope: !1637, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 230, column: 18, scope: !527, inlinedAt: !1626)
!1644 = !DILocalVariable(name: "__dest", arg: 1, scope: !1645, file: !1393, line: 57, type: !91)
!1645 = distinct !DISubprogram(name: "memset", scope: !1393, file: !1393, line: 57, type: !1394, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1646)
!1646 = !{!1644, !1647, !1648}
!1647 = !DILocalVariable(name: "__ch", arg: 2, scope: !1645, file: !1393, line: 57, type: !70)
!1648 = !DILocalVariable(name: "__len", arg: 3, scope: !1645, file: !1393, line: 57, type: !93)
!1649 = !DILocation(line: 0, scope: !1645, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 1137, column: 3, scope: !1637, inlinedAt: !1643)
!1651 = !DILocation(line: 59, column: 10, scope: !1645, inlinedAt: !1650)
!1652 = !DILocation(line: 231, column: 7, scope: !1653, inlinedAt: !1626)
!1653 = distinct !DILexicalBlock(scope: !527, file: !449, line: 231, column: 7)
!1654 = !DILocation(line: 231, column: 40, scope: !1653, inlinedAt: !1626)
!1655 = !DILocation(line: 231, column: 45, scope: !1653, inlinedAt: !1626)
!1656 = !DILocation(line: 235, column: 1, scope: !527, inlinedAt: !1626)
!1657 = !DILocation(line: 0, scope: !527, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 358, column: 27, scope: !1627)
!1659 = !DILocation(line: 199, column: 29, scope: !527, inlinedAt: !1658)
!1660 = !DILocation(line: 201, column: 19, scope: !1631, inlinedAt: !1658)
!1661 = !DILocation(line: 201, column: 7, scope: !527, inlinedAt: !1658)
!1662 = !DILocation(line: 229, column: 3, scope: !527, inlinedAt: !1658)
!1663 = !DILocation(line: 230, column: 3, scope: !527, inlinedAt: !1658)
!1664 = !DILocation(line: 230, column: 13, scope: !527, inlinedAt: !1658)
!1665 = !DILocation(line: 0, scope: !1637, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 230, column: 18, scope: !527, inlinedAt: !1658)
!1667 = !DILocation(line: 0, scope: !1645, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 1137, column: 3, scope: !1637, inlinedAt: !1666)
!1669 = !DILocation(line: 59, column: 10, scope: !1645, inlinedAt: !1668)
!1670 = !DILocation(line: 231, column: 7, scope: !1653, inlinedAt: !1658)
!1671 = !DILocation(line: 231, column: 40, scope: !1653, inlinedAt: !1658)
!1672 = !DILocation(line: 231, column: 45, scope: !1653, inlinedAt: !1658)
!1673 = !DILocation(line: 235, column: 1, scope: !527, inlinedAt: !1658)
!1674 = !DILocation(line: 360, column: 14, scope: !1564)
!1675 = !DILocation(line: 360, column: 13, scope: !1565)
!1676 = !DILocation(line: 0, scope: !1563)
!1677 = !DILocation(line: 361, column: 45, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1563, file: !449, line: 361, column: 11)
!1679 = !DILocation(line: 361, column: 11, scope: !1563)
!1680 = !DILocation(line: 362, column: 13, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !449, line: 362, column: 13)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !449, line: 362, column: 13)
!1683 = !DILocation(line: 362, column: 13, scope: !1682)
!1684 = !DILocation(line: 361, column: 52, scope: !1678)
!1685 = distinct !{!1685, !1679, !1686, !875}
!1686 = !DILocation(line: 362, column: 13, scope: !1563)
!1687 = !DILocation(line: 260, column: 10, scope: !1537)
!1688 = !DILocation(line: 365, column: 28, scope: !1565)
!1689 = !DILocation(line: 367, column: 7, scope: !1566)
!1690 = !DILocation(line: 370, column: 7, scope: !1566)
!1691 = !DILocation(line: 373, column: 7, scope: !1566)
!1692 = !DILocation(line: 376, column: 12, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1566, file: !449, line: 376, column: 11)
!1694 = !DILocation(line: 376, column: 11, scope: !1566)
!1695 = !DILocation(line: 381, column: 12, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1566, file: !449, line: 381, column: 11)
!1697 = !DILocation(line: 381, column: 11, scope: !1566)
!1698 = !DILocation(line: 382, column: 9, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !449, line: 382, column: 9)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !449, line: 382, column: 9)
!1701 = !DILocation(line: 382, column: 9, scope: !1700)
!1702 = !DILocation(line: 389, column: 7, scope: !1566)
!1703 = !DILocation(line: 392, column: 7, scope: !1566)
!1704 = !DILocation(line: 0, scope: !1568)
!1705 = !DILocation(line: 395, column: 8, scope: !1568)
!1706 = !DILocation(line: 309, column: 8, scope: !1537)
!1707 = !DILocation(line: 395, scope: !1568)
!1708 = !DILocation(line: 395, column: 34, scope: !1571)
!1709 = !DILocation(line: 395, column: 26, scope: !1571)
!1710 = !DILocation(line: 395, column: 48, scope: !1571)
!1711 = !DILocation(line: 395, column: 55, scope: !1571)
!1712 = !DILocation(line: 395, column: 3, scope: !1568)
!1713 = !DILocation(line: 395, column: 67, scope: !1571)
!1714 = !DILocation(line: 0, scope: !1570)
!1715 = !DILocation(line: 402, column: 11, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1570, file: !449, line: 401, column: 11)
!1717 = !DILocation(line: 404, column: 17, scope: !1716)
!1718 = !DILocation(line: 405, column: 39, scope: !1716)
!1719 = !DILocation(line: 409, column: 32, scope: !1716)
!1720 = !DILocation(line: 405, column: 19, scope: !1716)
!1721 = !DILocation(line: 405, column: 15, scope: !1716)
!1722 = !DILocation(line: 410, column: 11, scope: !1716)
!1723 = !DILocation(line: 410, column: 25, scope: !1716)
!1724 = !DILocalVariable(name: "__s1", arg: 1, scope: !1725, file: !841, line: 974, type: !977)
!1725 = distinct !DISubprogram(name: "memeq", scope: !841, file: !841, line: 974, type: !1354, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1726)
!1726 = !{!1724, !1727, !1728}
!1727 = !DILocalVariable(name: "__s2", arg: 2, scope: !1725, file: !841, line: 974, type: !977)
!1728 = !DILocalVariable(name: "__n", arg: 3, scope: !1725, file: !841, line: 974, type: !93)
!1729 = !DILocation(line: 0, scope: !1725, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 410, column: 14, scope: !1716)
!1731 = !DILocation(line: 976, column: 11, scope: !1725, inlinedAt: !1730)
!1732 = !DILocation(line: 976, column: 10, scope: !1725, inlinedAt: !1730)
!1733 = !DILocation(line: 401, column: 11, scope: !1570)
!1734 = !DILocation(line: 417, column: 25, scope: !1570)
!1735 = !DILocation(line: 418, column: 7, scope: !1570)
!1736 = !DILocation(line: 421, column: 15, scope: !1577)
!1737 = !DILocation(line: 423, column: 15, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !449, line: 423, column: 15)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !449, line: 422, column: 13)
!1740 = distinct !DILexicalBlock(scope: !1577, file: !449, line: 421, column: 15)
!1741 = !DILocation(line: 423, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !449, line: 423, column: 15)
!1743 = !DILocation(line: 423, column: 15, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !449, line: 423, column: 15)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !449, line: 423, column: 15)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !449, line: 423, column: 15)
!1747 = !DILocation(line: 423, column: 15, scope: !1745)
!1748 = !DILocation(line: 423, column: 15, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !449, line: 423, column: 15)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !449, line: 423, column: 15)
!1751 = !DILocation(line: 423, column: 15, scope: !1750)
!1752 = !DILocation(line: 423, column: 15, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !449, line: 423, column: 15)
!1754 = distinct !DILexicalBlock(scope: !1746, file: !449, line: 423, column: 15)
!1755 = !DILocation(line: 423, column: 15, scope: !1754)
!1756 = !DILocation(line: 423, column: 15, scope: !1746)
!1757 = !DILocation(line: 423, column: 15, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !449, line: 423, column: 15)
!1759 = distinct !DILexicalBlock(scope: !1738, file: !449, line: 423, column: 15)
!1760 = !DILocation(line: 423, column: 15, scope: !1759)
!1761 = !DILocation(line: 431, column: 19, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1739, file: !449, line: 430, column: 19)
!1763 = !DILocation(line: 431, column: 24, scope: !1762)
!1764 = !DILocation(line: 431, column: 28, scope: !1762)
!1765 = !DILocation(line: 431, column: 38, scope: !1762)
!1766 = !DILocation(line: 431, column: 48, scope: !1762)
!1767 = !DILocation(line: 431, column: 59, scope: !1762)
!1768 = !DILocation(line: 433, column: 19, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !449, line: 433, column: 19)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !449, line: 433, column: 19)
!1771 = distinct !DILexicalBlock(scope: !1762, file: !449, line: 432, column: 17)
!1772 = !DILocation(line: 433, column: 19, scope: !1770)
!1773 = !DILocation(line: 434, column: 19, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !449, line: 434, column: 19)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !449, line: 434, column: 19)
!1776 = !DILocation(line: 434, column: 19, scope: !1775)
!1777 = !DILocation(line: 435, column: 17, scope: !1771)
!1778 = !DILocation(line: 442, column: 20, scope: !1740)
!1779 = !DILocation(line: 447, column: 11, scope: !1577)
!1780 = !DILocation(line: 450, column: 19, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1577, file: !449, line: 448, column: 13)
!1782 = !DILocation(line: 456, column: 19, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1781, file: !449, line: 455, column: 19)
!1784 = !DILocation(line: 456, column: 24, scope: !1783)
!1785 = !DILocation(line: 456, column: 28, scope: !1783)
!1786 = !DILocation(line: 456, column: 38, scope: !1783)
!1787 = !DILocation(line: 456, column: 47, scope: !1783)
!1788 = !DILocation(line: 456, column: 41, scope: !1783)
!1789 = !DILocation(line: 456, column: 52, scope: !1783)
!1790 = !DILocation(line: 455, column: 19, scope: !1781)
!1791 = !DILocation(line: 457, column: 25, scope: !1783)
!1792 = !DILocation(line: 457, column: 17, scope: !1783)
!1793 = !DILocation(line: 464, column: 25, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1783, file: !449, line: 458, column: 19)
!1795 = !DILocation(line: 468, column: 21, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !449, line: 468, column: 21)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !449, line: 468, column: 21)
!1798 = !DILocation(line: 468, column: 21, scope: !1797)
!1799 = !DILocation(line: 469, column: 21, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !449, line: 469, column: 21)
!1801 = distinct !DILexicalBlock(scope: !1794, file: !449, line: 469, column: 21)
!1802 = !DILocation(line: 469, column: 21, scope: !1801)
!1803 = !DILocation(line: 470, column: 21, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !449, line: 470, column: 21)
!1805 = distinct !DILexicalBlock(scope: !1794, file: !449, line: 470, column: 21)
!1806 = !DILocation(line: 470, column: 21, scope: !1805)
!1807 = !DILocation(line: 471, column: 21, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !449, line: 471, column: 21)
!1809 = distinct !DILexicalBlock(scope: !1794, file: !449, line: 471, column: 21)
!1810 = !DILocation(line: 471, column: 21, scope: !1809)
!1811 = !DILocation(line: 472, column: 21, scope: !1794)
!1812 = !DILocation(line: 482, column: 33, scope: !1600)
!1813 = !DILocation(line: 483, column: 33, scope: !1600)
!1814 = !DILocation(line: 485, column: 33, scope: !1600)
!1815 = !DILocation(line: 486, column: 33, scope: !1600)
!1816 = !DILocation(line: 487, column: 33, scope: !1600)
!1817 = !DILocation(line: 490, column: 17, scope: !1600)
!1818 = !DILocation(line: 492, column: 21, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !449, line: 491, column: 15)
!1820 = distinct !DILexicalBlock(scope: !1600, file: !449, line: 490, column: 17)
!1821 = !DILocation(line: 499, column: 35, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1600, file: !449, line: 499, column: 17)
!1823 = !DILocation(line: 499, column: 57, scope: !1822)
!1824 = !DILocation(line: 0, scope: !1600)
!1825 = !DILocation(line: 502, column: 11, scope: !1600)
!1826 = !DILocation(line: 504, column: 17, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1600, file: !449, line: 503, column: 17)
!1828 = !DILocation(line: 507, column: 11, scope: !1600)
!1829 = !DILocation(line: 508, column: 17, scope: !1600)
!1830 = !DILocation(line: 517, column: 15, scope: !1577)
!1831 = !DILocation(line: 517, column: 40, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1577, file: !449, line: 517, column: 15)
!1833 = !DILocation(line: 517, column: 47, scope: !1832)
!1834 = !DILocation(line: 517, column: 18, scope: !1832)
!1835 = !DILocation(line: 521, column: 17, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1577, file: !449, line: 521, column: 15)
!1837 = !DILocation(line: 521, column: 15, scope: !1577)
!1838 = !DILocation(line: 525, column: 11, scope: !1577)
!1839 = !DILocation(line: 537, column: 15, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1577, file: !449, line: 536, column: 15)
!1841 = !DILocation(line: 544, column: 15, scope: !1577)
!1842 = !DILocation(line: 546, column: 19, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !449, line: 545, column: 13)
!1844 = distinct !DILexicalBlock(scope: !1577, file: !449, line: 544, column: 15)
!1845 = !DILocation(line: 549, column: 19, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !449, line: 549, column: 19)
!1847 = !DILocation(line: 549, column: 30, scope: !1846)
!1848 = !DILocation(line: 558, column: 15, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !449, line: 558, column: 15)
!1850 = distinct !DILexicalBlock(scope: !1843, file: !449, line: 558, column: 15)
!1851 = !DILocation(line: 558, column: 15, scope: !1850)
!1852 = !DILocation(line: 559, column: 15, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !449, line: 559, column: 15)
!1854 = distinct !DILexicalBlock(scope: !1843, file: !449, line: 559, column: 15)
!1855 = !DILocation(line: 559, column: 15, scope: !1854)
!1856 = !DILocation(line: 560, column: 15, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !449, line: 560, column: 15)
!1858 = distinct !DILexicalBlock(scope: !1843, file: !449, line: 560, column: 15)
!1859 = !DILocation(line: 560, column: 15, scope: !1858)
!1860 = !DILocation(line: 562, column: 13, scope: !1843)
!1861 = !DILocation(line: 602, column: 17, scope: !1576)
!1862 = !DILocation(line: 0, scope: !1576)
!1863 = !DILocation(line: 605, column: 29, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1581, file: !449, line: 603, column: 15)
!1865 = !DILocation(line: 605, column: 27, scope: !1864)
!1866 = !DILocation(line: 668, column: 40, scope: !1576)
!1867 = !DILocation(line: 670, column: 23, scope: !1597)
!1868 = !DILocation(line: 609, column: 17, scope: !1580)
!1869 = !DILocation(line: 609, column: 27, scope: !1580)
!1870 = !DILocation(line: 0, scope: !1637, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 609, column: 32, scope: !1580)
!1872 = !DILocation(line: 0, scope: !1645, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 1137, column: 3, scope: !1637, inlinedAt: !1871)
!1874 = !DILocation(line: 59, column: 10, scope: !1645, inlinedAt: !1873)
!1875 = !DILocation(line: 613, column: 29, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1580, file: !449, line: 613, column: 21)
!1877 = !DILocation(line: 613, column: 21, scope: !1580)
!1878 = !DILocation(line: 614, column: 29, scope: !1876)
!1879 = !DILocation(line: 614, column: 19, scope: !1876)
!1880 = !DILocation(line: 618, column: 21, scope: !1583)
!1881 = !DILocation(line: 620, column: 54, scope: !1583)
!1882 = !DILocation(line: 0, scope: !1583)
!1883 = !DILocation(line: 619, column: 36, scope: !1583)
!1884 = !DILocation(line: 621, column: 25, scope: !1583)
!1885 = !DILocation(line: 631, column: 38, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1592, file: !449, line: 629, column: 23)
!1887 = !DILocation(line: 631, column: 48, scope: !1886)
!1888 = !DILocation(line: 665, column: 19, scope: !1584)
!1889 = !DILocation(line: 666, column: 15, scope: !1581)
!1890 = !DILocation(line: 626, column: 25, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1593, file: !449, line: 624, column: 23)
!1892 = !DILocation(line: 631, column: 51, scope: !1886)
!1893 = !DILocation(line: 631, column: 25, scope: !1886)
!1894 = !DILocation(line: 632, column: 28, scope: !1886)
!1895 = !DILocation(line: 631, column: 34, scope: !1886)
!1896 = distinct !{!1896, !1893, !1894, !875}
!1897 = !DILocation(line: 646, column: 29, scope: !1590)
!1898 = !DILocation(line: 0, scope: !1588)
!1899 = !DILocation(line: 649, column: 49, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1588, file: !449, line: 648, column: 29)
!1901 = !DILocation(line: 649, column: 39, scope: !1900)
!1902 = !DILocation(line: 649, column: 31, scope: !1900)
!1903 = !DILocation(line: 648, column: 60, scope: !1900)
!1904 = !DILocation(line: 648, column: 50, scope: !1900)
!1905 = !DILocation(line: 648, column: 29, scope: !1588)
!1906 = distinct !{!1906, !1905, !1907, !875}
!1907 = !DILocation(line: 654, column: 33, scope: !1588)
!1908 = !DILocation(line: 657, column: 43, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1591, file: !449, line: 657, column: 29)
!1910 = !DILocalVariable(name: "wc", arg: 1, scope: !1911, file: !1912, line: 865, type: !1915)
!1911 = distinct !DISubprogram(name: "c32isprint", scope: !1912, file: !1912, line: 865, type: !1913, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1917)
!1912 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!70, !1915}
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1916, line: 20, baseType: !62)
!1916 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1917 = !{!1910}
!1918 = !DILocation(line: 0, scope: !1911, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 657, column: 31, scope: !1909)
!1920 = !DILocation(line: 871, column: 10, scope: !1911, inlinedAt: !1919)
!1921 = !DILocation(line: 657, column: 31, scope: !1909)
!1922 = !DILocation(line: 657, column: 29, scope: !1591)
!1923 = !DILocation(line: 664, column: 23, scope: !1583)
!1924 = !DILocation(line: 670, column: 19, scope: !1597)
!1925 = !DILocation(line: 670, column: 45, scope: !1597)
!1926 = !DILocation(line: 674, column: 33, scope: !1596)
!1927 = !DILocation(line: 0, scope: !1596)
!1928 = !DILocation(line: 676, column: 17, scope: !1596)
!1929 = !DILocation(line: 398, column: 12, scope: !1570)
!1930 = !DILocation(line: 678, column: 43, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !449, line: 678, column: 25)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !449, line: 677, column: 19)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !449, line: 676, column: 17)
!1934 = distinct !DILexicalBlock(scope: !1596, file: !449, line: 676, column: 17)
!1935 = !DILocation(line: 680, column: 25, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !449, line: 680, column: 25)
!1937 = distinct !DILexicalBlock(scope: !1931, file: !449, line: 679, column: 23)
!1938 = !DILocation(line: 680, column: 25, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !449, line: 680, column: 25)
!1940 = !DILocation(line: 680, column: 25, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !449, line: 680, column: 25)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !449, line: 680, column: 25)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !449, line: 680, column: 25)
!1944 = !DILocation(line: 680, column: 25, scope: !1942)
!1945 = !DILocation(line: 680, column: 25, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !449, line: 680, column: 25)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !449, line: 680, column: 25)
!1948 = !DILocation(line: 680, column: 25, scope: !1947)
!1949 = !DILocation(line: 680, column: 25, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !449, line: 680, column: 25)
!1951 = distinct !DILexicalBlock(scope: !1943, file: !449, line: 680, column: 25)
!1952 = !DILocation(line: 680, column: 25, scope: !1951)
!1953 = !DILocation(line: 680, column: 25, scope: !1943)
!1954 = !DILocation(line: 680, column: 25, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !449, line: 680, column: 25)
!1956 = distinct !DILexicalBlock(scope: !1936, file: !449, line: 680, column: 25)
!1957 = !DILocation(line: 680, column: 25, scope: !1956)
!1958 = !DILocation(line: 681, column: 25, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !449, line: 681, column: 25)
!1960 = distinct !DILexicalBlock(scope: !1937, file: !449, line: 681, column: 25)
!1961 = !DILocation(line: 681, column: 25, scope: !1960)
!1962 = !DILocation(line: 682, column: 25, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !449, line: 682, column: 25)
!1964 = distinct !DILexicalBlock(scope: !1937, file: !449, line: 682, column: 25)
!1965 = !DILocation(line: 682, column: 25, scope: !1964)
!1966 = !DILocation(line: 683, column: 38, scope: !1937)
!1967 = !DILocation(line: 683, column: 33, scope: !1937)
!1968 = !DILocation(line: 684, column: 23, scope: !1937)
!1969 = !DILocation(line: 685, column: 30, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1931, file: !449, line: 685, column: 30)
!1971 = !DILocation(line: 685, column: 30, scope: !1931)
!1972 = !DILocation(line: 687, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !449, line: 687, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !449, line: 687, column: 25)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !449, line: 686, column: 23)
!1976 = !DILocation(line: 687, column: 25, scope: !1974)
!1977 = !DILocation(line: 689, column: 23, scope: !1975)
!1978 = !DILocation(line: 690, column: 35, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1932, file: !449, line: 690, column: 25)
!1980 = !DILocation(line: 690, column: 30, scope: !1979)
!1981 = !DILocation(line: 690, column: 25, scope: !1932)
!1982 = !DILocation(line: 692, column: 21, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !449, line: 692, column: 21)
!1984 = distinct !DILexicalBlock(scope: !1932, file: !449, line: 692, column: 21)
!1985 = !DILocation(line: 692, column: 21, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !449, line: 692, column: 21)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !449, line: 692, column: 21)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !449, line: 692, column: 21)
!1989 = !DILocation(line: 692, column: 21, scope: !1987)
!1990 = !DILocation(line: 692, column: 21, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !449, line: 692, column: 21)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !449, line: 692, column: 21)
!1993 = !DILocation(line: 692, column: 21, scope: !1992)
!1994 = !DILocation(line: 692, column: 21, scope: !1988)
!1995 = !DILocation(line: 0, scope: !1932)
!1996 = !DILocation(line: 693, column: 21, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !449, line: 693, column: 21)
!1998 = distinct !DILexicalBlock(scope: !1932, file: !449, line: 693, column: 21)
!1999 = !DILocation(line: 693, column: 21, scope: !1998)
!2000 = !DILocation(line: 694, column: 25, scope: !1932)
!2001 = !DILocation(line: 676, column: 17, scope: !1933)
!2002 = distinct !{!2002, !2003, !2004}
!2003 = !DILocation(line: 676, column: 17, scope: !1934)
!2004 = !DILocation(line: 695, column: 19, scope: !1934)
!2005 = !DILocation(line: 409, column: 30, scope: !1716)
!2006 = !DILocation(line: 702, column: 34, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1570, file: !449, line: 702, column: 11)
!2008 = !DILocation(line: 704, column: 14, scope: !2007)
!2009 = !DILocation(line: 705, column: 14, scope: !2007)
!2010 = !DILocation(line: 705, column: 35, scope: !2007)
!2011 = !DILocation(line: 705, column: 17, scope: !2007)
!2012 = !DILocation(line: 705, column: 47, scope: !2007)
!2013 = !DILocation(line: 705, column: 65, scope: !2007)
!2014 = !DILocation(line: 706, column: 11, scope: !2007)
!2015 = !DILocation(line: 702, column: 11, scope: !1570)
!2016 = !DILocation(line: 395, column: 15, scope: !1568)
!2017 = !DILocation(line: 709, column: 5, scope: !1570)
!2018 = !DILocation(line: 710, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1570, file: !449, line: 710, column: 7)
!2020 = !DILocation(line: 710, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2019, file: !449, line: 710, column: 7)
!2022 = !DILocation(line: 710, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !449, line: 710, column: 7)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !449, line: 710, column: 7)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !449, line: 710, column: 7)
!2026 = !DILocation(line: 710, column: 7, scope: !2024)
!2027 = !DILocation(line: 710, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !449, line: 710, column: 7)
!2029 = distinct !DILexicalBlock(scope: !2025, file: !449, line: 710, column: 7)
!2030 = !DILocation(line: 710, column: 7, scope: !2029)
!2031 = !DILocation(line: 710, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !449, line: 710, column: 7)
!2033 = distinct !DILexicalBlock(scope: !2025, file: !449, line: 710, column: 7)
!2034 = !DILocation(line: 710, column: 7, scope: !2033)
!2035 = !DILocation(line: 710, column: 7, scope: !2025)
!2036 = !DILocation(line: 710, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !449, line: 710, column: 7)
!2038 = distinct !DILexicalBlock(scope: !2019, file: !449, line: 710, column: 7)
!2039 = !DILocation(line: 710, column: 7, scope: !2038)
!2040 = !DILocation(line: 712, column: 5, scope: !1570)
!2041 = !DILocation(line: 713, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !449, line: 713, column: 7)
!2043 = distinct !DILexicalBlock(scope: !1570, file: !449, line: 713, column: 7)
!2044 = !DILocation(line: 417, column: 21, scope: !1570)
!2045 = !DILocation(line: 713, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !449, line: 713, column: 7)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !449, line: 713, column: 7)
!2048 = distinct !DILexicalBlock(scope: !2042, file: !449, line: 713, column: 7)
!2049 = !DILocation(line: 713, column: 7, scope: !2047)
!2050 = !DILocation(line: 713, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !449, line: 713, column: 7)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !449, line: 713, column: 7)
!2053 = !DILocation(line: 713, column: 7, scope: !2052)
!2054 = !DILocation(line: 713, column: 7, scope: !2048)
!2055 = !DILocation(line: 714, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !449, line: 714, column: 7)
!2057 = distinct !DILexicalBlock(scope: !1570, file: !449, line: 714, column: 7)
!2058 = !DILocation(line: 714, column: 7, scope: !2057)
!2059 = !DILocation(line: 716, column: 13, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1570, file: !449, line: 716, column: 11)
!2061 = !DILocation(line: 716, column: 11, scope: !1570)
!2062 = !DILocation(line: 718, column: 5, scope: !1571)
!2063 = !DILocation(line: 395, column: 82, scope: !1571)
!2064 = !DILocation(line: 395, column: 3, scope: !1571)
!2065 = distinct !{!2065, !1712, !2066, !875}
!2066 = !DILocation(line: 718, column: 5, scope: !1568)
!2067 = !DILocation(line: 720, column: 11, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1537, file: !449, line: 720, column: 7)
!2069 = !DILocation(line: 720, column: 16, scope: !2068)
!2070 = !DILocation(line: 728, column: 51, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1537, file: !449, line: 728, column: 7)
!2072 = !DILocation(line: 731, column: 11, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !449, line: 731, column: 11)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !449, line: 730, column: 5)
!2075 = !DILocation(line: 731, column: 11, scope: !2074)
!2076 = !DILocation(line: 732, column: 16, scope: !2073)
!2077 = !DILocation(line: 732, column: 9, scope: !2073)
!2078 = !DILocation(line: 736, column: 18, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !449, line: 736, column: 16)
!2080 = !DILocation(line: 736, column: 29, scope: !2079)
!2081 = !DILocation(line: 745, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1537, file: !449, line: 745, column: 7)
!2083 = !DILocation(line: 745, column: 20, scope: !2082)
!2084 = !DILocation(line: 746, column: 12, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !449, line: 746, column: 5)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !449, line: 746, column: 5)
!2087 = !DILocation(line: 746, column: 5, scope: !2086)
!2088 = !DILocation(line: 747, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !449, line: 747, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2085, file: !449, line: 747, column: 7)
!2091 = !DILocation(line: 747, column: 7, scope: !2090)
!2092 = !DILocation(line: 746, column: 39, scope: !2085)
!2093 = distinct !{!2093, !2087, !2094, !875}
!2094 = !DILocation(line: 747, column: 7, scope: !2086)
!2095 = !DILocation(line: 749, column: 11, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1537, file: !449, line: 749, column: 7)
!2097 = !DILocation(line: 749, column: 7, scope: !1537)
!2098 = !DILocation(line: 750, column: 5, scope: !2096)
!2099 = !DILocation(line: 750, column: 17, scope: !2096)
!2100 = !DILocation(line: 753, column: 2, scope: !1537)
!2101 = !DILocation(line: 756, column: 51, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1537, file: !449, line: 756, column: 7)
!2103 = !DILocation(line: 756, column: 21, scope: !2102)
!2104 = !DILocation(line: 760, column: 42, scope: !1537)
!2105 = !DILocation(line: 758, column: 10, scope: !1537)
!2106 = !DILocation(line: 758, column: 3, scope: !1537)
!2107 = !DILocation(line: 762, column: 1, scope: !1537)
!2108 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !953, file: !953, line: 98, type: !2109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!93}
!2111 = !DISubprogram(name: "strlen", scope: !949, file: !949, line: 407, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!95, !96}
!2114 = !DISubprogram(name: "iswprint", scope: !2115, file: !2115, line: 120, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!2115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2116 = distinct !DISubprogram(name: "quotearg_alloc", scope: !449, file: !449, line: 788, type: !2117, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!90, !96, !93, !1430}
!2119 = !{!2120, !2121, !2122}
!2120 = !DILocalVariable(name: "arg", arg: 1, scope: !2116, file: !449, line: 788, type: !96)
!2121 = !DILocalVariable(name: "argsize", arg: 2, scope: !2116, file: !449, line: 788, type: !93)
!2122 = !DILocalVariable(name: "o", arg: 3, scope: !2116, file: !449, line: 789, type: !1430)
!2123 = !DILocation(line: 0, scope: !2116)
!2124 = !DILocalVariable(name: "arg", arg: 1, scope: !2125, file: !449, line: 801, type: !96)
!2125 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !449, file: !449, line: 801, type: !2126, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!90, !96, !93, !700, !1430}
!2128 = !{!2124, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136}
!2129 = !DILocalVariable(name: "argsize", arg: 2, scope: !2125, file: !449, line: 801, type: !93)
!2130 = !DILocalVariable(name: "size", arg: 3, scope: !2125, file: !449, line: 801, type: !700)
!2131 = !DILocalVariable(name: "o", arg: 4, scope: !2125, file: !449, line: 802, type: !1430)
!2132 = !DILocalVariable(name: "p", scope: !2125, file: !449, line: 804, type: !1430)
!2133 = !DILocalVariable(name: "saved_errno", scope: !2125, file: !449, line: 805, type: !70)
!2134 = !DILocalVariable(name: "flags", scope: !2125, file: !449, line: 807, type: !70)
!2135 = !DILocalVariable(name: "bufsize", scope: !2125, file: !449, line: 808, type: !93)
!2136 = !DILocalVariable(name: "buf", scope: !2125, file: !449, line: 812, type: !90)
!2137 = !DILocation(line: 0, scope: !2125, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 791, column: 10, scope: !2116)
!2139 = !DILocation(line: 804, column: 37, scope: !2125, inlinedAt: !2138)
!2140 = !DILocation(line: 805, column: 21, scope: !2125, inlinedAt: !2138)
!2141 = !DILocation(line: 807, column: 18, scope: !2125, inlinedAt: !2138)
!2142 = !DILocation(line: 807, column: 24, scope: !2125, inlinedAt: !2138)
!2143 = !DILocation(line: 808, column: 72, scope: !2125, inlinedAt: !2138)
!2144 = !DILocation(line: 809, column: 56, scope: !2125, inlinedAt: !2138)
!2145 = !DILocation(line: 810, column: 49, scope: !2125, inlinedAt: !2138)
!2146 = !DILocation(line: 811, column: 49, scope: !2125, inlinedAt: !2138)
!2147 = !DILocation(line: 808, column: 20, scope: !2125, inlinedAt: !2138)
!2148 = !DILocation(line: 811, column: 62, scope: !2125, inlinedAt: !2138)
!2149 = !DILocation(line: 812, column: 15, scope: !2125, inlinedAt: !2138)
!2150 = !DILocation(line: 813, column: 60, scope: !2125, inlinedAt: !2138)
!2151 = !DILocation(line: 815, column: 32, scope: !2125, inlinedAt: !2138)
!2152 = !DILocation(line: 815, column: 47, scope: !2125, inlinedAt: !2138)
!2153 = !DILocation(line: 813, column: 3, scope: !2125, inlinedAt: !2138)
!2154 = !DILocation(line: 816, column: 9, scope: !2125, inlinedAt: !2138)
!2155 = !DILocation(line: 791, column: 3, scope: !2116)
!2156 = !DILocation(line: 0, scope: !2125)
!2157 = !DILocation(line: 804, column: 37, scope: !2125)
!2158 = !DILocation(line: 805, column: 21, scope: !2125)
!2159 = !DILocation(line: 807, column: 18, scope: !2125)
!2160 = !DILocation(line: 807, column: 27, scope: !2125)
!2161 = !DILocation(line: 807, column: 24, scope: !2125)
!2162 = !DILocation(line: 808, column: 72, scope: !2125)
!2163 = !DILocation(line: 809, column: 56, scope: !2125)
!2164 = !DILocation(line: 810, column: 49, scope: !2125)
!2165 = !DILocation(line: 811, column: 49, scope: !2125)
!2166 = !DILocation(line: 808, column: 20, scope: !2125)
!2167 = !DILocation(line: 811, column: 62, scope: !2125)
!2168 = !DILocation(line: 812, column: 15, scope: !2125)
!2169 = !DILocation(line: 813, column: 60, scope: !2125)
!2170 = !DILocation(line: 815, column: 32, scope: !2125)
!2171 = !DILocation(line: 815, column: 47, scope: !2125)
!2172 = !DILocation(line: 813, column: 3, scope: !2125)
!2173 = !DILocation(line: 816, column: 9, scope: !2125)
!2174 = !DILocation(line: 817, column: 7, scope: !2125)
!2175 = !DILocation(line: 818, column: 11, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2125, file: !449, line: 817, column: 7)
!2177 = !{!1242, !1242, i64 0}
!2178 = !DILocation(line: 818, column: 5, scope: !2176)
!2179 = !DILocation(line: 819, column: 3, scope: !2125)
!2180 = distinct !DISubprogram(name: "quotearg_free", scope: !449, file: !449, line: 837, type: !404, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2181)
!2181 = !{!2182, !2183}
!2182 = !DILocalVariable(name: "sv", scope: !2180, file: !449, line: 839, type: !550)
!2183 = !DILocalVariable(name: "i", scope: !2184, file: !449, line: 840, type: !70)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !449, line: 840, column: 3)
!2185 = !DILocation(line: 839, column: 24, scope: !2180)
!2186 = !DILocation(line: 0, scope: !2180)
!2187 = !DILocation(line: 0, scope: !2184)
!2188 = !DILocation(line: 840, column: 21, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2184, file: !449, line: 840, column: 3)
!2190 = !DILocation(line: 840, column: 3, scope: !2184)
!2191 = !DILocation(line: 842, column: 13, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2180, file: !449, line: 842, column: 7)
!2193 = !{!2194, !767, i64 8}
!2194 = !{!"slotvec", !1242, i64 0, !767, i64 8}
!2195 = !DILocation(line: 842, column: 17, scope: !2192)
!2196 = !DILocation(line: 842, column: 7, scope: !2180)
!2197 = !DILocation(line: 841, column: 17, scope: !2189)
!2198 = !DILocation(line: 841, column: 5, scope: !2189)
!2199 = !DILocation(line: 840, column: 32, scope: !2189)
!2200 = distinct !{!2200, !2190, !2201, !875}
!2201 = !DILocation(line: 841, column: 20, scope: !2184)
!2202 = !DILocation(line: 844, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2192, file: !449, line: 843, column: 5)
!2204 = !DILocation(line: 845, column: 21, scope: !2203)
!2205 = !{!2194, !1242, i64 0}
!2206 = !DILocation(line: 846, column: 20, scope: !2203)
!2207 = !DILocation(line: 847, column: 5, scope: !2203)
!2208 = !DILocation(line: 848, column: 10, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2180, file: !449, line: 848, column: 7)
!2210 = !DILocation(line: 848, column: 7, scope: !2180)
!2211 = !DILocation(line: 850, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2209, file: !449, line: 849, column: 5)
!2213 = !DILocation(line: 851, column: 15, scope: !2212)
!2214 = !DILocation(line: 852, column: 5, scope: !2212)
!2215 = !DILocation(line: 853, column: 10, scope: !2180)
!2216 = !DILocation(line: 854, column: 1, scope: !2180)
!2217 = !DISubprogram(name: "free", scope: !1384, file: !1384, line: 786, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !91}
!2220 = distinct !DISubprogram(name: "quotearg_n", scope: !449, file: !449, line: 919, type: !946, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2221)
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "n", arg: 1, scope: !2220, file: !449, line: 919, type: !70)
!2223 = !DILocalVariable(name: "arg", arg: 2, scope: !2220, file: !449, line: 919, type: !96)
!2224 = !DILocation(line: 0, scope: !2220)
!2225 = !DILocation(line: 921, column: 10, scope: !2220)
!2226 = !DILocation(line: 921, column: 3, scope: !2220)
!2227 = distinct !DISubprogram(name: "quotearg_n_options", scope: !449, file: !449, line: 866, type: !2228, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!90, !70, !96, !93, !1430}
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2241, !2242, !2244, !2245, !2246}
!2231 = !DILocalVariable(name: "n", arg: 1, scope: !2227, file: !449, line: 866, type: !70)
!2232 = !DILocalVariable(name: "arg", arg: 2, scope: !2227, file: !449, line: 866, type: !96)
!2233 = !DILocalVariable(name: "argsize", arg: 3, scope: !2227, file: !449, line: 866, type: !93)
!2234 = !DILocalVariable(name: "options", arg: 4, scope: !2227, file: !449, line: 867, type: !1430)
!2235 = !DILocalVariable(name: "saved_errno", scope: !2227, file: !449, line: 869, type: !70)
!2236 = !DILocalVariable(name: "sv", scope: !2227, file: !449, line: 871, type: !550)
!2237 = !DILocalVariable(name: "nslots_max", scope: !2227, file: !449, line: 873, type: !70)
!2238 = !DILocalVariable(name: "preallocated", scope: !2239, file: !449, line: 879, type: !121)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !449, line: 878, column: 5)
!2240 = distinct !DILexicalBlock(scope: !2227, file: !449, line: 877, column: 7)
!2241 = !DILocalVariable(name: "new_nslots", scope: !2239, file: !449, line: 880, type: !713)
!2242 = !DILocalVariable(name: "size", scope: !2243, file: !449, line: 891, type: !93)
!2243 = distinct !DILexicalBlock(scope: !2227, file: !449, line: 890, column: 3)
!2244 = !DILocalVariable(name: "val", scope: !2243, file: !449, line: 892, type: !90)
!2245 = !DILocalVariable(name: "flags", scope: !2243, file: !449, line: 894, type: !70)
!2246 = !DILocalVariable(name: "qsize", scope: !2243, file: !449, line: 895, type: !93)
!2247 = !DILocation(line: 0, scope: !2227)
!2248 = !DILocation(line: 869, column: 21, scope: !2227)
!2249 = !DILocation(line: 871, column: 24, scope: !2227)
!2250 = !DILocation(line: 874, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2227, file: !449, line: 874, column: 7)
!2252 = !DILocation(line: 875, column: 5, scope: !2251)
!2253 = !DILocation(line: 877, column: 7, scope: !2240)
!2254 = !DILocation(line: 877, column: 14, scope: !2240)
!2255 = !DILocation(line: 877, column: 7, scope: !2227)
!2256 = !DILocation(line: 879, column: 31, scope: !2239)
!2257 = !DILocation(line: 0, scope: !2239)
!2258 = !DILocation(line: 880, column: 7, scope: !2239)
!2259 = !DILocation(line: 880, column: 26, scope: !2239)
!2260 = !DILocation(line: 880, column: 13, scope: !2239)
!2261 = !DILocation(line: 882, column: 31, scope: !2239)
!2262 = !DILocation(line: 883, column: 33, scope: !2239)
!2263 = !DILocation(line: 883, column: 42, scope: !2239)
!2264 = !DILocation(line: 883, column: 31, scope: !2239)
!2265 = !DILocation(line: 882, column: 22, scope: !2239)
!2266 = !DILocation(line: 882, column: 15, scope: !2239)
!2267 = !DILocation(line: 884, column: 11, scope: !2239)
!2268 = !DILocation(line: 885, column: 15, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2239, file: !449, line: 884, column: 11)
!2270 = !{i64 0, i64 8, !2177, i64 8, i64 8, !766}
!2271 = !DILocation(line: 885, column: 9, scope: !2269)
!2272 = !DILocation(line: 886, column: 20, scope: !2239)
!2273 = !DILocation(line: 886, column: 18, scope: !2239)
!2274 = !DILocation(line: 886, column: 32, scope: !2239)
!2275 = !DILocation(line: 886, column: 43, scope: !2239)
!2276 = !DILocation(line: 886, column: 53, scope: !2239)
!2277 = !DILocation(line: 0, scope: !1645, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 886, column: 7, scope: !2239)
!2279 = !DILocation(line: 59, column: 10, scope: !1645, inlinedAt: !2278)
!2280 = !DILocation(line: 887, column: 16, scope: !2239)
!2281 = !DILocation(line: 887, column: 14, scope: !2239)
!2282 = !DILocation(line: 888, column: 5, scope: !2240)
!2283 = !DILocation(line: 888, column: 5, scope: !2239)
!2284 = !DILocation(line: 891, column: 19, scope: !2243)
!2285 = !DILocation(line: 891, column: 25, scope: !2243)
!2286 = !DILocation(line: 0, scope: !2243)
!2287 = !DILocation(line: 892, column: 23, scope: !2243)
!2288 = !DILocation(line: 894, column: 26, scope: !2243)
!2289 = !DILocation(line: 894, column: 32, scope: !2243)
!2290 = !DILocation(line: 896, column: 55, scope: !2243)
!2291 = !DILocation(line: 897, column: 55, scope: !2243)
!2292 = !DILocation(line: 898, column: 55, scope: !2243)
!2293 = !DILocation(line: 899, column: 55, scope: !2243)
!2294 = !DILocation(line: 895, column: 20, scope: !2243)
!2295 = !DILocation(line: 901, column: 14, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2243, file: !449, line: 901, column: 9)
!2297 = !DILocation(line: 901, column: 9, scope: !2243)
!2298 = !DILocation(line: 903, column: 35, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !449, line: 902, column: 7)
!2300 = !DILocation(line: 903, column: 20, scope: !2299)
!2301 = !DILocation(line: 904, column: 17, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !449, line: 904, column: 13)
!2303 = !DILocation(line: 904, column: 13, scope: !2299)
!2304 = !DILocation(line: 905, column: 11, scope: !2302)
!2305 = !DILocation(line: 906, column: 27, scope: !2299)
!2306 = !DILocation(line: 906, column: 19, scope: !2299)
!2307 = !DILocation(line: 907, column: 69, scope: !2299)
!2308 = !DILocation(line: 909, column: 44, scope: !2299)
!2309 = !DILocation(line: 910, column: 44, scope: !2299)
!2310 = !DILocation(line: 907, column: 9, scope: !2299)
!2311 = !DILocation(line: 911, column: 7, scope: !2299)
!2312 = !DILocation(line: 913, column: 11, scope: !2243)
!2313 = !DILocation(line: 914, column: 5, scope: !2243)
!2314 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !449, file: !449, line: 925, type: !2315, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!90, !70, !96, !93}
!2317 = !{!2318, !2319, !2320}
!2318 = !DILocalVariable(name: "n", arg: 1, scope: !2314, file: !449, line: 925, type: !70)
!2319 = !DILocalVariable(name: "arg", arg: 2, scope: !2314, file: !449, line: 925, type: !96)
!2320 = !DILocalVariable(name: "argsize", arg: 3, scope: !2314, file: !449, line: 925, type: !93)
!2321 = !DILocation(line: 0, scope: !2314)
!2322 = !DILocation(line: 927, column: 10, scope: !2314)
!2323 = !DILocation(line: 927, column: 3, scope: !2314)
!2324 = distinct !DISubprogram(name: "quotearg", scope: !449, file: !449, line: 931, type: !955, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2325)
!2325 = !{!2326}
!2326 = !DILocalVariable(name: "arg", arg: 1, scope: !2324, file: !449, line: 931, type: !96)
!2327 = !DILocation(line: 0, scope: !2324)
!2328 = !DILocation(line: 0, scope: !2220, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 933, column: 10, scope: !2324)
!2330 = !DILocation(line: 921, column: 10, scope: !2220, inlinedAt: !2329)
!2331 = !DILocation(line: 933, column: 3, scope: !2324)
!2332 = distinct !DISubprogram(name: "quotearg_mem", scope: !449, file: !449, line: 937, type: !2333, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!90, !96, !93}
!2335 = !{!2336, !2337}
!2336 = !DILocalVariable(name: "arg", arg: 1, scope: !2332, file: !449, line: 937, type: !96)
!2337 = !DILocalVariable(name: "argsize", arg: 2, scope: !2332, file: !449, line: 937, type: !93)
!2338 = !DILocation(line: 0, scope: !2332)
!2339 = !DILocation(line: 0, scope: !2314, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 939, column: 10, scope: !2332)
!2341 = !DILocation(line: 927, column: 10, scope: !2314, inlinedAt: !2340)
!2342 = !DILocation(line: 939, column: 3, scope: !2332)
!2343 = distinct !DISubprogram(name: "quotearg_n_style", scope: !449, file: !449, line: 943, type: !2344, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!90, !70, !475, !96}
!2346 = !{!2347, !2348, !2349, !2350}
!2347 = !DILocalVariable(name: "n", arg: 1, scope: !2343, file: !449, line: 943, type: !70)
!2348 = !DILocalVariable(name: "s", arg: 2, scope: !2343, file: !449, line: 943, type: !475)
!2349 = !DILocalVariable(name: "arg", arg: 3, scope: !2343, file: !449, line: 943, type: !96)
!2350 = !DILocalVariable(name: "o", scope: !2343, file: !449, line: 945, type: !1431)
!2351 = !DILocation(line: 0, scope: !2343)
!2352 = !DILocation(line: 945, column: 3, scope: !2343)
!2353 = !DILocation(line: 945, column: 32, scope: !2343)
!2354 = !{!2355}
!2355 = distinct !{!2355, !2356, !"quoting_options_from_style: argument 0"}
!2356 = distinct !{!2356, !"quoting_options_from_style"}
!2357 = !DILocation(line: 945, column: 36, scope: !2343)
!2358 = !DILocalVariable(name: "style", arg: 1, scope: !2359, file: !449, line: 183, type: !475)
!2359 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !449, file: !449, line: 183, type: !2360, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!502, !475}
!2362 = !{!2358, !2363}
!2363 = !DILocalVariable(name: "o", scope: !2359, file: !449, line: 185, type: !502)
!2364 = !DILocation(line: 0, scope: !2359, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 945, column: 36, scope: !2343)
!2366 = !DILocation(line: 185, column: 26, scope: !2359, inlinedAt: !2365)
!2367 = !DILocation(line: 186, column: 13, scope: !2368, inlinedAt: !2365)
!2368 = distinct !DILexicalBlock(scope: !2359, file: !449, line: 186, column: 7)
!2369 = !DILocation(line: 186, column: 7, scope: !2359, inlinedAt: !2365)
!2370 = !DILocation(line: 187, column: 5, scope: !2368, inlinedAt: !2365)
!2371 = !DILocation(line: 188, column: 11, scope: !2359, inlinedAt: !2365)
!2372 = !DILocation(line: 946, column: 10, scope: !2343)
!2373 = !DILocation(line: 947, column: 1, scope: !2343)
!2374 = !DILocation(line: 946, column: 3, scope: !2343)
!2375 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !449, file: !449, line: 950, type: !2376, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!90, !70, !475, !96, !93}
!2378 = !{!2379, !2380, !2381, !2382, !2383}
!2379 = !DILocalVariable(name: "n", arg: 1, scope: !2375, file: !449, line: 950, type: !70)
!2380 = !DILocalVariable(name: "s", arg: 2, scope: !2375, file: !449, line: 950, type: !475)
!2381 = !DILocalVariable(name: "arg", arg: 3, scope: !2375, file: !449, line: 951, type: !96)
!2382 = !DILocalVariable(name: "argsize", arg: 4, scope: !2375, file: !449, line: 951, type: !93)
!2383 = !DILocalVariable(name: "o", scope: !2375, file: !449, line: 953, type: !1431)
!2384 = !DILocation(line: 0, scope: !2375)
!2385 = !DILocation(line: 953, column: 3, scope: !2375)
!2386 = !DILocation(line: 953, column: 32, scope: !2375)
!2387 = !{!2388}
!2388 = distinct !{!2388, !2389, !"quoting_options_from_style: argument 0"}
!2389 = distinct !{!2389, !"quoting_options_from_style"}
!2390 = !DILocation(line: 953, column: 36, scope: !2375)
!2391 = !DILocation(line: 0, scope: !2359, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 953, column: 36, scope: !2375)
!2393 = !DILocation(line: 185, column: 26, scope: !2359, inlinedAt: !2392)
!2394 = !DILocation(line: 186, column: 13, scope: !2368, inlinedAt: !2392)
!2395 = !DILocation(line: 186, column: 7, scope: !2359, inlinedAt: !2392)
!2396 = !DILocation(line: 187, column: 5, scope: !2368, inlinedAt: !2392)
!2397 = !DILocation(line: 188, column: 11, scope: !2359, inlinedAt: !2392)
!2398 = !DILocation(line: 954, column: 10, scope: !2375)
!2399 = !DILocation(line: 955, column: 1, scope: !2375)
!2400 = !DILocation(line: 954, column: 3, scope: !2375)
!2401 = distinct !DISubprogram(name: "quotearg_style", scope: !449, file: !449, line: 958, type: !2402, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!90, !475, !96}
!2404 = !{!2405, !2406}
!2405 = !DILocalVariable(name: "s", arg: 1, scope: !2401, file: !449, line: 958, type: !475)
!2406 = !DILocalVariable(name: "arg", arg: 2, scope: !2401, file: !449, line: 958, type: !96)
!2407 = !DILocation(line: 0, scope: !2401)
!2408 = !DILocation(line: 0, scope: !2343, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 960, column: 10, scope: !2401)
!2410 = !DILocation(line: 945, column: 3, scope: !2343, inlinedAt: !2409)
!2411 = !DILocation(line: 945, column: 32, scope: !2343, inlinedAt: !2409)
!2412 = !{!2413}
!2413 = distinct !{!2413, !2414, !"quoting_options_from_style: argument 0"}
!2414 = distinct !{!2414, !"quoting_options_from_style"}
!2415 = !DILocation(line: 945, column: 36, scope: !2343, inlinedAt: !2409)
!2416 = !DILocation(line: 0, scope: !2359, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 945, column: 36, scope: !2343, inlinedAt: !2409)
!2418 = !DILocation(line: 185, column: 26, scope: !2359, inlinedAt: !2417)
!2419 = !DILocation(line: 186, column: 13, scope: !2368, inlinedAt: !2417)
!2420 = !DILocation(line: 186, column: 7, scope: !2359, inlinedAt: !2417)
!2421 = !DILocation(line: 187, column: 5, scope: !2368, inlinedAt: !2417)
!2422 = !DILocation(line: 188, column: 11, scope: !2359, inlinedAt: !2417)
!2423 = !DILocation(line: 946, column: 10, scope: !2343, inlinedAt: !2409)
!2424 = !DILocation(line: 947, column: 1, scope: !2343, inlinedAt: !2409)
!2425 = !DILocation(line: 960, column: 3, scope: !2401)
!2426 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !449, file: !449, line: 964, type: !2427, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!90, !475, !96, !93}
!2429 = !{!2430, !2431, !2432}
!2430 = !DILocalVariable(name: "s", arg: 1, scope: !2426, file: !449, line: 964, type: !475)
!2431 = !DILocalVariable(name: "arg", arg: 2, scope: !2426, file: !449, line: 964, type: !96)
!2432 = !DILocalVariable(name: "argsize", arg: 3, scope: !2426, file: !449, line: 964, type: !93)
!2433 = !DILocation(line: 0, scope: !2426)
!2434 = !DILocation(line: 0, scope: !2375, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 966, column: 10, scope: !2426)
!2436 = !DILocation(line: 953, column: 3, scope: !2375, inlinedAt: !2435)
!2437 = !DILocation(line: 953, column: 32, scope: !2375, inlinedAt: !2435)
!2438 = !{!2439}
!2439 = distinct !{!2439, !2440, !"quoting_options_from_style: argument 0"}
!2440 = distinct !{!2440, !"quoting_options_from_style"}
!2441 = !DILocation(line: 953, column: 36, scope: !2375, inlinedAt: !2435)
!2442 = !DILocation(line: 0, scope: !2359, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 953, column: 36, scope: !2375, inlinedAt: !2435)
!2444 = !DILocation(line: 185, column: 26, scope: !2359, inlinedAt: !2443)
!2445 = !DILocation(line: 186, column: 13, scope: !2368, inlinedAt: !2443)
!2446 = !DILocation(line: 186, column: 7, scope: !2359, inlinedAt: !2443)
!2447 = !DILocation(line: 187, column: 5, scope: !2368, inlinedAt: !2443)
!2448 = !DILocation(line: 188, column: 11, scope: !2359, inlinedAt: !2443)
!2449 = !DILocation(line: 954, column: 10, scope: !2375, inlinedAt: !2435)
!2450 = !DILocation(line: 955, column: 1, scope: !2375, inlinedAt: !2435)
!2451 = !DILocation(line: 966, column: 3, scope: !2426)
!2452 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !449, file: !449, line: 970, type: !2453, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!90, !96, !93, !4}
!2455 = !{!2456, !2457, !2458, !2459}
!2456 = !DILocalVariable(name: "arg", arg: 1, scope: !2452, file: !449, line: 970, type: !96)
!2457 = !DILocalVariable(name: "argsize", arg: 2, scope: !2452, file: !449, line: 970, type: !93)
!2458 = !DILocalVariable(name: "ch", arg: 3, scope: !2452, file: !449, line: 970, type: !4)
!2459 = !DILocalVariable(name: "options", scope: !2452, file: !449, line: 972, type: !502)
!2460 = !DILocation(line: 0, scope: !2452)
!2461 = !DILocation(line: 972, column: 3, scope: !2452)
!2462 = !DILocation(line: 972, column: 26, scope: !2452)
!2463 = !DILocation(line: 973, column: 13, scope: !2452)
!2464 = !{i64 0, i64 4, !837, i64 4, i64 4, !828, i64 8, i64 32, !837, i64 40, i64 8, !766, i64 48, i64 8, !766}
!2465 = !DILocation(line: 0, scope: !1450, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 974, column: 3, scope: !2452)
!2467 = !DILocation(line: 147, column: 41, scope: !1450, inlinedAt: !2466)
!2468 = !DILocation(line: 147, column: 62, scope: !1450, inlinedAt: !2466)
!2469 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2466)
!2470 = !DILocation(line: 148, column: 15, scope: !1450, inlinedAt: !2466)
!2471 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2466)
!2472 = !DILocation(line: 149, column: 24, scope: !1450, inlinedAt: !2466)
!2473 = !DILocation(line: 150, column: 19, scope: !1450, inlinedAt: !2466)
!2474 = !DILocation(line: 150, column: 24, scope: !1450, inlinedAt: !2466)
!2475 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2466)
!2476 = !DILocation(line: 975, column: 10, scope: !2452)
!2477 = !DILocation(line: 976, column: 1, scope: !2452)
!2478 = !DILocation(line: 975, column: 3, scope: !2452)
!2479 = distinct !DISubprogram(name: "quotearg_char", scope: !449, file: !449, line: 979, type: !2480, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!90, !96, !4}
!2482 = !{!2483, !2484}
!2483 = !DILocalVariable(name: "arg", arg: 1, scope: !2479, file: !449, line: 979, type: !96)
!2484 = !DILocalVariable(name: "ch", arg: 2, scope: !2479, file: !449, line: 979, type: !4)
!2485 = !DILocation(line: 0, scope: !2479)
!2486 = !DILocation(line: 0, scope: !2452, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 981, column: 10, scope: !2479)
!2488 = !DILocation(line: 972, column: 3, scope: !2452, inlinedAt: !2487)
!2489 = !DILocation(line: 972, column: 26, scope: !2452, inlinedAt: !2487)
!2490 = !DILocation(line: 973, column: 13, scope: !2452, inlinedAt: !2487)
!2491 = !DILocation(line: 0, scope: !1450, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 974, column: 3, scope: !2452, inlinedAt: !2487)
!2493 = !DILocation(line: 147, column: 41, scope: !1450, inlinedAt: !2492)
!2494 = !DILocation(line: 147, column: 62, scope: !1450, inlinedAt: !2492)
!2495 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2492)
!2496 = !DILocation(line: 148, column: 15, scope: !1450, inlinedAt: !2492)
!2497 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2492)
!2498 = !DILocation(line: 149, column: 24, scope: !1450, inlinedAt: !2492)
!2499 = !DILocation(line: 150, column: 19, scope: !1450, inlinedAt: !2492)
!2500 = !DILocation(line: 150, column: 24, scope: !1450, inlinedAt: !2492)
!2501 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2492)
!2502 = !DILocation(line: 975, column: 10, scope: !2452, inlinedAt: !2487)
!2503 = !DILocation(line: 976, column: 1, scope: !2452, inlinedAt: !2487)
!2504 = !DILocation(line: 981, column: 3, scope: !2479)
!2505 = distinct !DISubprogram(name: "quotearg_colon", scope: !449, file: !449, line: 985, type: !955, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2506)
!2506 = !{!2507}
!2507 = !DILocalVariable(name: "arg", arg: 1, scope: !2505, file: !449, line: 985, type: !96)
!2508 = !DILocation(line: 0, scope: !2505)
!2509 = !DILocation(line: 0, scope: !2479, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 987, column: 10, scope: !2505)
!2511 = !DILocation(line: 0, scope: !2452, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 981, column: 10, scope: !2479, inlinedAt: !2510)
!2513 = !DILocation(line: 972, column: 3, scope: !2452, inlinedAt: !2512)
!2514 = !DILocation(line: 972, column: 26, scope: !2452, inlinedAt: !2512)
!2515 = !DILocation(line: 973, column: 13, scope: !2452, inlinedAt: !2512)
!2516 = !DILocation(line: 0, scope: !1450, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 974, column: 3, scope: !2452, inlinedAt: !2512)
!2518 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2517)
!2519 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2517)
!2520 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2517)
!2521 = !DILocation(line: 975, column: 10, scope: !2452, inlinedAt: !2512)
!2522 = !DILocation(line: 976, column: 1, scope: !2452, inlinedAt: !2512)
!2523 = !DILocation(line: 987, column: 3, scope: !2505)
!2524 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !449, file: !449, line: 991, type: !2333, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2525)
!2525 = !{!2526, !2527}
!2526 = !DILocalVariable(name: "arg", arg: 1, scope: !2524, file: !449, line: 991, type: !96)
!2527 = !DILocalVariable(name: "argsize", arg: 2, scope: !2524, file: !449, line: 991, type: !93)
!2528 = !DILocation(line: 0, scope: !2524)
!2529 = !DILocation(line: 0, scope: !2452, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 993, column: 10, scope: !2524)
!2531 = !DILocation(line: 972, column: 3, scope: !2452, inlinedAt: !2530)
!2532 = !DILocation(line: 972, column: 26, scope: !2452, inlinedAt: !2530)
!2533 = !DILocation(line: 973, column: 13, scope: !2452, inlinedAt: !2530)
!2534 = !DILocation(line: 0, scope: !1450, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 974, column: 3, scope: !2452, inlinedAt: !2530)
!2536 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2535)
!2537 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2535)
!2538 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2535)
!2539 = !DILocation(line: 975, column: 10, scope: !2452, inlinedAt: !2530)
!2540 = !DILocation(line: 976, column: 1, scope: !2452, inlinedAt: !2530)
!2541 = !DILocation(line: 993, column: 3, scope: !2524)
!2542 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !449, file: !449, line: 997, type: !2344, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2543)
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DILocalVariable(name: "n", arg: 1, scope: !2542, file: !449, line: 997, type: !70)
!2545 = !DILocalVariable(name: "s", arg: 2, scope: !2542, file: !449, line: 997, type: !475)
!2546 = !DILocalVariable(name: "arg", arg: 3, scope: !2542, file: !449, line: 997, type: !96)
!2547 = !DILocalVariable(name: "options", scope: !2542, file: !449, line: 999, type: !502)
!2548 = !DILocation(line: 185, column: 26, scope: !2359, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 1000, column: 13, scope: !2542)
!2550 = !DILocation(line: 0, scope: !2542)
!2551 = !DILocation(line: 999, column: 3, scope: !2542)
!2552 = !DILocation(line: 999, column: 26, scope: !2542)
!2553 = !DILocation(line: 0, scope: !2359, inlinedAt: !2549)
!2554 = !DILocation(line: 186, column: 13, scope: !2368, inlinedAt: !2549)
!2555 = !DILocation(line: 186, column: 7, scope: !2359, inlinedAt: !2549)
!2556 = !DILocation(line: 187, column: 5, scope: !2368, inlinedAt: !2549)
!2557 = !{!2558}
!2558 = distinct !{!2558, !2559, !"quoting_options_from_style: argument 0"}
!2559 = distinct !{!2559, !"quoting_options_from_style"}
!2560 = !DILocation(line: 1000, column: 13, scope: !2542)
!2561 = !DILocation(line: 0, scope: !1450, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 1001, column: 3, scope: !2542)
!2563 = !DILocation(line: 147, column: 57, scope: !1450, inlinedAt: !2562)
!2564 = !DILocation(line: 149, column: 21, scope: !1450, inlinedAt: !2562)
!2565 = !DILocation(line: 150, column: 6, scope: !1450, inlinedAt: !2562)
!2566 = !DILocation(line: 1002, column: 10, scope: !2542)
!2567 = !DILocation(line: 1003, column: 1, scope: !2542)
!2568 = !DILocation(line: 1002, column: 3, scope: !2542)
!2569 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !449, file: !449, line: 1006, type: !2570, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!90, !70, !96, !96, !96}
!2572 = !{!2573, !2574, !2575, !2576}
!2573 = !DILocalVariable(name: "n", arg: 1, scope: !2569, file: !449, line: 1006, type: !70)
!2574 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2569, file: !449, line: 1006, type: !96)
!2575 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2569, file: !449, line: 1007, type: !96)
!2576 = !DILocalVariable(name: "arg", arg: 4, scope: !2569, file: !449, line: 1007, type: !96)
!2577 = !DILocation(line: 0, scope: !2569)
!2578 = !DILocalVariable(name: "n", arg: 1, scope: !2579, file: !449, line: 1014, type: !70)
!2579 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !449, file: !449, line: 1014, type: !2580, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!90, !70, !96, !96, !96, !93}
!2582 = !{!2578, !2583, !2584, !2585, !2586, !2587}
!2583 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2579, file: !449, line: 1014, type: !96)
!2584 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2579, file: !449, line: 1015, type: !96)
!2585 = !DILocalVariable(name: "arg", arg: 4, scope: !2579, file: !449, line: 1016, type: !96)
!2586 = !DILocalVariable(name: "argsize", arg: 5, scope: !2579, file: !449, line: 1016, type: !93)
!2587 = !DILocalVariable(name: "o", scope: !2579, file: !449, line: 1018, type: !502)
!2588 = !DILocation(line: 0, scope: !2579, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 1009, column: 10, scope: !2569)
!2590 = !DILocation(line: 1018, column: 3, scope: !2579, inlinedAt: !2589)
!2591 = !DILocation(line: 1018, column: 26, scope: !2579, inlinedAt: !2589)
!2592 = !DILocation(line: 1018, column: 30, scope: !2579, inlinedAt: !2589)
!2593 = !DILocation(line: 0, scope: !1490, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1019, column: 3, scope: !2579, inlinedAt: !2589)
!2595 = !DILocation(line: 174, column: 12, scope: !1490, inlinedAt: !2594)
!2596 = !DILocation(line: 175, column: 8, scope: !1503, inlinedAt: !2594)
!2597 = !DILocation(line: 175, column: 19, scope: !1503, inlinedAt: !2594)
!2598 = !DILocation(line: 176, column: 5, scope: !1503, inlinedAt: !2594)
!2599 = !DILocation(line: 177, column: 6, scope: !1490, inlinedAt: !2594)
!2600 = !DILocation(line: 177, column: 17, scope: !1490, inlinedAt: !2594)
!2601 = !DILocation(line: 178, column: 6, scope: !1490, inlinedAt: !2594)
!2602 = !DILocation(line: 178, column: 18, scope: !1490, inlinedAt: !2594)
!2603 = !DILocation(line: 1020, column: 10, scope: !2579, inlinedAt: !2589)
!2604 = !DILocation(line: 1021, column: 1, scope: !2579, inlinedAt: !2589)
!2605 = !DILocation(line: 1009, column: 3, scope: !2569)
!2606 = !DILocation(line: 0, scope: !2579)
!2607 = !DILocation(line: 1018, column: 3, scope: !2579)
!2608 = !DILocation(line: 1018, column: 26, scope: !2579)
!2609 = !DILocation(line: 1018, column: 30, scope: !2579)
!2610 = !DILocation(line: 0, scope: !1490, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1019, column: 3, scope: !2579)
!2612 = !DILocation(line: 174, column: 12, scope: !1490, inlinedAt: !2611)
!2613 = !DILocation(line: 175, column: 8, scope: !1503, inlinedAt: !2611)
!2614 = !DILocation(line: 175, column: 19, scope: !1503, inlinedAt: !2611)
!2615 = !DILocation(line: 176, column: 5, scope: !1503, inlinedAt: !2611)
!2616 = !DILocation(line: 177, column: 6, scope: !1490, inlinedAt: !2611)
!2617 = !DILocation(line: 177, column: 17, scope: !1490, inlinedAt: !2611)
!2618 = !DILocation(line: 178, column: 6, scope: !1490, inlinedAt: !2611)
!2619 = !DILocation(line: 178, column: 18, scope: !1490, inlinedAt: !2611)
!2620 = !DILocation(line: 1020, column: 10, scope: !2579)
!2621 = !DILocation(line: 1021, column: 1, scope: !2579)
!2622 = !DILocation(line: 1020, column: 3, scope: !2579)
!2623 = distinct !DISubprogram(name: "quotearg_custom", scope: !449, file: !449, line: 1024, type: !2624, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!90, !96, !96, !96}
!2626 = !{!2627, !2628, !2629}
!2627 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2623, file: !449, line: 1024, type: !96)
!2628 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2623, file: !449, line: 1024, type: !96)
!2629 = !DILocalVariable(name: "arg", arg: 3, scope: !2623, file: !449, line: 1025, type: !96)
!2630 = !DILocation(line: 0, scope: !2623)
!2631 = !DILocation(line: 0, scope: !2569, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 1027, column: 10, scope: !2623)
!2633 = !DILocation(line: 0, scope: !2579, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 1009, column: 10, scope: !2569, inlinedAt: !2632)
!2635 = !DILocation(line: 1018, column: 3, scope: !2579, inlinedAt: !2634)
!2636 = !DILocation(line: 1018, column: 26, scope: !2579, inlinedAt: !2634)
!2637 = !DILocation(line: 1018, column: 30, scope: !2579, inlinedAt: !2634)
!2638 = !DILocation(line: 0, scope: !1490, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 1019, column: 3, scope: !2579, inlinedAt: !2634)
!2640 = !DILocation(line: 174, column: 12, scope: !1490, inlinedAt: !2639)
!2641 = !DILocation(line: 175, column: 8, scope: !1503, inlinedAt: !2639)
!2642 = !DILocation(line: 175, column: 19, scope: !1503, inlinedAt: !2639)
!2643 = !DILocation(line: 176, column: 5, scope: !1503, inlinedAt: !2639)
!2644 = !DILocation(line: 177, column: 6, scope: !1490, inlinedAt: !2639)
!2645 = !DILocation(line: 177, column: 17, scope: !1490, inlinedAt: !2639)
!2646 = !DILocation(line: 178, column: 6, scope: !1490, inlinedAt: !2639)
!2647 = !DILocation(line: 178, column: 18, scope: !1490, inlinedAt: !2639)
!2648 = !DILocation(line: 1020, column: 10, scope: !2579, inlinedAt: !2634)
!2649 = !DILocation(line: 1021, column: 1, scope: !2579, inlinedAt: !2634)
!2650 = !DILocation(line: 1027, column: 3, scope: !2623)
!2651 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !449, file: !449, line: 1031, type: !2652, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!90, !96, !96, !96, !93}
!2654 = !{!2655, !2656, !2657, !2658}
!2655 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2651, file: !449, line: 1031, type: !96)
!2656 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2651, file: !449, line: 1031, type: !96)
!2657 = !DILocalVariable(name: "arg", arg: 3, scope: !2651, file: !449, line: 1032, type: !96)
!2658 = !DILocalVariable(name: "argsize", arg: 4, scope: !2651, file: !449, line: 1032, type: !93)
!2659 = !DILocation(line: 0, scope: !2651)
!2660 = !DILocation(line: 0, scope: !2579, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1034, column: 10, scope: !2651)
!2662 = !DILocation(line: 1018, column: 3, scope: !2579, inlinedAt: !2661)
!2663 = !DILocation(line: 1018, column: 26, scope: !2579, inlinedAt: !2661)
!2664 = !DILocation(line: 1018, column: 30, scope: !2579, inlinedAt: !2661)
!2665 = !DILocation(line: 0, scope: !1490, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 1019, column: 3, scope: !2579, inlinedAt: !2661)
!2667 = !DILocation(line: 174, column: 12, scope: !1490, inlinedAt: !2666)
!2668 = !DILocation(line: 175, column: 8, scope: !1503, inlinedAt: !2666)
!2669 = !DILocation(line: 175, column: 19, scope: !1503, inlinedAt: !2666)
!2670 = !DILocation(line: 176, column: 5, scope: !1503, inlinedAt: !2666)
!2671 = !DILocation(line: 177, column: 6, scope: !1490, inlinedAt: !2666)
!2672 = !DILocation(line: 177, column: 17, scope: !1490, inlinedAt: !2666)
!2673 = !DILocation(line: 178, column: 6, scope: !1490, inlinedAt: !2666)
!2674 = !DILocation(line: 178, column: 18, scope: !1490, inlinedAt: !2666)
!2675 = !DILocation(line: 1020, column: 10, scope: !2579, inlinedAt: !2661)
!2676 = !DILocation(line: 1021, column: 1, scope: !2579, inlinedAt: !2661)
!2677 = !DILocation(line: 1034, column: 3, scope: !2651)
!2678 = distinct !DISubprogram(name: "quote_n_mem", scope: !449, file: !449, line: 1049, type: !2679, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!96, !70, !96, !93}
!2681 = !{!2682, !2683, !2684}
!2682 = !DILocalVariable(name: "n", arg: 1, scope: !2678, file: !449, line: 1049, type: !70)
!2683 = !DILocalVariable(name: "arg", arg: 2, scope: !2678, file: !449, line: 1049, type: !96)
!2684 = !DILocalVariable(name: "argsize", arg: 3, scope: !2678, file: !449, line: 1049, type: !93)
!2685 = !DILocation(line: 0, scope: !2678)
!2686 = !DILocation(line: 1051, column: 10, scope: !2678)
!2687 = !DILocation(line: 1051, column: 3, scope: !2678)
!2688 = distinct !DISubprogram(name: "quote_mem", scope: !449, file: !449, line: 1055, type: !2689, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!96, !96, !93}
!2691 = !{!2692, !2693}
!2692 = !DILocalVariable(name: "arg", arg: 1, scope: !2688, file: !449, line: 1055, type: !96)
!2693 = !DILocalVariable(name: "argsize", arg: 2, scope: !2688, file: !449, line: 1055, type: !93)
!2694 = !DILocation(line: 0, scope: !2688)
!2695 = !DILocation(line: 0, scope: !2678, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1057, column: 10, scope: !2688)
!2697 = !DILocation(line: 1051, column: 10, scope: !2678, inlinedAt: !2696)
!2698 = !DILocation(line: 1057, column: 3, scope: !2688)
!2699 = distinct !DISubprogram(name: "quote_n", scope: !449, file: !449, line: 1061, type: !2700, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!96, !70, !96}
!2702 = !{!2703, !2704}
!2703 = !DILocalVariable(name: "n", arg: 1, scope: !2699, file: !449, line: 1061, type: !70)
!2704 = !DILocalVariable(name: "arg", arg: 2, scope: !2699, file: !449, line: 1061, type: !96)
!2705 = !DILocation(line: 0, scope: !2699)
!2706 = !DILocation(line: 0, scope: !2678, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1063, column: 10, scope: !2699)
!2708 = !DILocation(line: 1051, column: 10, scope: !2678, inlinedAt: !2707)
!2709 = !DILocation(line: 1063, column: 3, scope: !2699)
!2710 = distinct !DISubprogram(name: "quote", scope: !449, file: !449, line: 1067, type: !2711, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!96, !96}
!2713 = !{!2714}
!2714 = !DILocalVariable(name: "arg", arg: 1, scope: !2710, file: !449, line: 1067, type: !96)
!2715 = !DILocation(line: 0, scope: !2710)
!2716 = !DILocation(line: 0, scope: !2699, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 1069, column: 10, scope: !2710)
!2718 = !DILocation(line: 0, scope: !2678, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 1063, column: 10, scope: !2699, inlinedAt: !2717)
!2720 = !DILocation(line: 1051, column: 10, scope: !2678, inlinedAt: !2719)
!2721 = !DILocation(line: 1069, column: 3, scope: !2710)
!2722 = distinct !DISubprogram(name: "version_etc_arn", scope: !565, file: !565, line: 61, type: !2723, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2760)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2725, !96, !96, !96, !2759, !93}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !2727)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !2728)
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2727, file: !150, line: 51, baseType: !70, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2727, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2727, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2727, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2727, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2727, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2727, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2727, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2727, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2727, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2727, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2727, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2727, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2727, file: !150, line: 70, baseType: !2743, size: 64, offset: 832)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2727, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2727, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2727, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2727, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2727, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2727, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2727, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2727, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2727, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2727, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2727, file: !150, line: 93, baseType: !2743, size: 64, offset: 1344)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2727, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2727, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2727, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2727, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766}
!2761 = !DILocalVariable(name: "stream", arg: 1, scope: !2722, file: !565, line: 61, type: !2725)
!2762 = !DILocalVariable(name: "command_name", arg: 2, scope: !2722, file: !565, line: 62, type: !96)
!2763 = !DILocalVariable(name: "package", arg: 3, scope: !2722, file: !565, line: 62, type: !96)
!2764 = !DILocalVariable(name: "version", arg: 4, scope: !2722, file: !565, line: 63, type: !96)
!2765 = !DILocalVariable(name: "authors", arg: 5, scope: !2722, file: !565, line: 64, type: !2759)
!2766 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2722, file: !565, line: 64, type: !93)
!2767 = !DILocation(line: 0, scope: !2722)
!2768 = !DILocation(line: 66, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2722, file: !565, line: 66, column: 7)
!2770 = !DILocation(line: 66, column: 7, scope: !2722)
!2771 = !DILocation(line: 67, column: 5, scope: !2769)
!2772 = !DILocation(line: 69, column: 5, scope: !2769)
!2773 = !DILocation(line: 83, column: 3, scope: !2722)
!2774 = !DILocation(line: 85, column: 3, scope: !2722)
!2775 = !DILocation(line: 88, column: 3, scope: !2722)
!2776 = !DILocation(line: 95, column: 3, scope: !2722)
!2777 = !DILocation(line: 97, column: 3, scope: !2722)
!2778 = !DILocation(line: 105, column: 7, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2722, file: !565, line: 98, column: 5)
!2780 = !DILocation(line: 106, column: 7, scope: !2779)
!2781 = !DILocation(line: 109, column: 7, scope: !2779)
!2782 = !DILocation(line: 110, column: 7, scope: !2779)
!2783 = !DILocation(line: 113, column: 7, scope: !2779)
!2784 = !DILocation(line: 115, column: 7, scope: !2779)
!2785 = !DILocation(line: 120, column: 7, scope: !2779)
!2786 = !DILocation(line: 122, column: 7, scope: !2779)
!2787 = !DILocation(line: 127, column: 7, scope: !2779)
!2788 = !DILocation(line: 129, column: 7, scope: !2779)
!2789 = !DILocation(line: 134, column: 7, scope: !2779)
!2790 = !DILocation(line: 137, column: 7, scope: !2779)
!2791 = !DILocation(line: 142, column: 7, scope: !2779)
!2792 = !DILocation(line: 145, column: 7, scope: !2779)
!2793 = !DILocation(line: 150, column: 7, scope: !2779)
!2794 = !DILocation(line: 154, column: 7, scope: !2779)
!2795 = !DILocation(line: 159, column: 7, scope: !2779)
!2796 = !DILocation(line: 163, column: 7, scope: !2779)
!2797 = !DILocation(line: 170, column: 7, scope: !2779)
!2798 = !DILocation(line: 174, column: 7, scope: !2779)
!2799 = !DILocation(line: 176, column: 1, scope: !2722)
!2800 = distinct !DISubprogram(name: "version_etc_ar", scope: !565, file: !565, line: 183, type: !2801, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{null, !2725, !96, !96, !96, !2759}
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809}
!2804 = !DILocalVariable(name: "stream", arg: 1, scope: !2800, file: !565, line: 183, type: !2725)
!2805 = !DILocalVariable(name: "command_name", arg: 2, scope: !2800, file: !565, line: 184, type: !96)
!2806 = !DILocalVariable(name: "package", arg: 3, scope: !2800, file: !565, line: 184, type: !96)
!2807 = !DILocalVariable(name: "version", arg: 4, scope: !2800, file: !565, line: 185, type: !96)
!2808 = !DILocalVariable(name: "authors", arg: 5, scope: !2800, file: !565, line: 185, type: !2759)
!2809 = !DILocalVariable(name: "n_authors", scope: !2800, file: !565, line: 187, type: !93)
!2810 = !DILocation(line: 0, scope: !2800)
!2811 = !DILocation(line: 189, column: 8, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2800, file: !565, line: 189, column: 3)
!2813 = !DILocation(line: 189, scope: !2812)
!2814 = !DILocation(line: 189, column: 23, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2812, file: !565, line: 189, column: 3)
!2816 = !DILocation(line: 189, column: 3, scope: !2812)
!2817 = !DILocation(line: 189, column: 52, scope: !2815)
!2818 = distinct !{!2818, !2816, !2819, !875}
!2819 = !DILocation(line: 190, column: 5, scope: !2812)
!2820 = !DILocation(line: 191, column: 3, scope: !2800)
!2821 = !DILocation(line: 192, column: 1, scope: !2800)
!2822 = distinct !DISubprogram(name: "version_etc_va", scope: !565, file: !565, line: 199, type: !2823, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2833)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{null, !2725, !96, !96, !96, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2827)
!2827 = !{!2828, !2830, !2831, !2832}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2826, file: !2829, line: 192, baseType: !62, size: 32)
!2829 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2826, file: !2829, line: 192, baseType: !62, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2826, file: !2829, line: 192, baseType: !91, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2826, file: !2829, line: 192, baseType: !91, size: 64, offset: 128)
!2833 = !{!2834, !2835, !2836, !2837, !2838, !2839, !2840}
!2834 = !DILocalVariable(name: "stream", arg: 1, scope: !2822, file: !565, line: 199, type: !2725)
!2835 = !DILocalVariable(name: "command_name", arg: 2, scope: !2822, file: !565, line: 200, type: !96)
!2836 = !DILocalVariable(name: "package", arg: 3, scope: !2822, file: !565, line: 200, type: !96)
!2837 = !DILocalVariable(name: "version", arg: 4, scope: !2822, file: !565, line: 201, type: !96)
!2838 = !DILocalVariable(name: "authors", arg: 5, scope: !2822, file: !565, line: 201, type: !2825)
!2839 = !DILocalVariable(name: "n_authors", scope: !2822, file: !565, line: 203, type: !93)
!2840 = !DILocalVariable(name: "authtab", scope: !2822, file: !565, line: 204, type: !2841)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !45)
!2842 = !DILocation(line: 0, scope: !2822)
!2843 = !DILocation(line: 204, column: 3, scope: !2822)
!2844 = !DILocation(line: 204, column: 15, scope: !2822)
!2845 = !DILocation(line: 208, column: 35, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !565, line: 206, column: 3)
!2847 = distinct !DILexicalBlock(scope: !2822, file: !565, line: 206, column: 3)
!2848 = !DILocation(line: 208, column: 33, scope: !2846)
!2849 = !DILocation(line: 208, column: 67, scope: !2846)
!2850 = !DILocation(line: 206, column: 3, scope: !2847)
!2851 = !DILocation(line: 208, column: 14, scope: !2846)
!2852 = !DILocation(line: 0, scope: !2847)
!2853 = !DILocation(line: 211, column: 3, scope: !2822)
!2854 = !DILocation(line: 213, column: 1, scope: !2822)
!2855 = distinct !DISubprogram(name: "version_etc", scope: !565, file: !565, line: 230, type: !2856, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !2725, !96, !96, !96, null}
!2858 = !{!2859, !2860, !2861, !2862, !2863}
!2859 = !DILocalVariable(name: "stream", arg: 1, scope: !2855, file: !565, line: 230, type: !2725)
!2860 = !DILocalVariable(name: "command_name", arg: 2, scope: !2855, file: !565, line: 231, type: !96)
!2861 = !DILocalVariable(name: "package", arg: 3, scope: !2855, file: !565, line: 231, type: !96)
!2862 = !DILocalVariable(name: "version", arg: 4, scope: !2855, file: !565, line: 232, type: !96)
!2863 = !DILocalVariable(name: "authors", scope: !2855, file: !565, line: 234, type: !2864)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !823, line: 52, baseType: !2865)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1277, line: 14, baseType: !2866)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2829, baseType: !2867)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2826, size: 192, elements: !40)
!2868 = !DILocation(line: 0, scope: !2855)
!2869 = !DILocation(line: 234, column: 3, scope: !2855)
!2870 = !DILocation(line: 234, column: 11, scope: !2855)
!2871 = !DILocation(line: 235, column: 3, scope: !2855)
!2872 = !DILocation(line: 236, column: 3, scope: !2855)
!2873 = !DILocation(line: 237, column: 3, scope: !2855)
!2874 = !DILocation(line: 238, column: 1, scope: !2855)
!2875 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !565, file: !565, line: 241, type: !404, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !812)
!2876 = !DILocation(line: 243, column: 3, scope: !2875)
!2877 = !DILocation(line: 248, column: 3, scope: !2875)
!2878 = !DILocation(line: 254, column: 3, scope: !2875)
!2879 = !DILocation(line: 259, column: 3, scope: !2875)
!2880 = !DILocation(line: 261, column: 1, scope: !2875)
!2881 = distinct !DISubprogram(name: "xnrealloc", scope: !2882, file: !2882, line: 147, type: !2883, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2885)
!2882 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!91, !91, !93, !93}
!2885 = !{!2886, !2887, !2888}
!2886 = !DILocalVariable(name: "p", arg: 1, scope: !2881, file: !2882, line: 147, type: !91)
!2887 = !DILocalVariable(name: "n", arg: 2, scope: !2881, file: !2882, line: 147, type: !93)
!2888 = !DILocalVariable(name: "s", arg: 3, scope: !2881, file: !2882, line: 147, type: !93)
!2889 = !DILocation(line: 0, scope: !2881)
!2890 = !DILocalVariable(name: "p", arg: 1, scope: !2891, file: !694, line: 83, type: !91)
!2891 = distinct !DISubprogram(name: "xreallocarray", scope: !694, file: !694, line: 83, type: !2883, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2892)
!2892 = !{!2890, !2893, !2894}
!2893 = !DILocalVariable(name: "n", arg: 2, scope: !2891, file: !694, line: 83, type: !93)
!2894 = !DILocalVariable(name: "s", arg: 3, scope: !2891, file: !694, line: 83, type: !93)
!2895 = !DILocation(line: 0, scope: !2891, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 149, column: 10, scope: !2881)
!2897 = !DILocation(line: 85, column: 25, scope: !2891, inlinedAt: !2896)
!2898 = !DILocalVariable(name: "p", arg: 1, scope: !2899, file: !694, line: 37, type: !91)
!2899 = distinct !DISubprogram(name: "check_nonnull", scope: !694, file: !694, line: 37, type: !2900, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!91, !91}
!2902 = !{!2898}
!2903 = !DILocation(line: 0, scope: !2899, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 85, column: 10, scope: !2891, inlinedAt: !2896)
!2905 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !2904)
!2906 = distinct !DILexicalBlock(scope: !2899, file: !694, line: 39, column: 7)
!2907 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !2904)
!2908 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !2904)
!2909 = !DILocation(line: 149, column: 3, scope: !2881)
!2910 = !DILocation(line: 0, scope: !2891)
!2911 = !DILocation(line: 85, column: 25, scope: !2891)
!2912 = !DILocation(line: 0, scope: !2899, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 85, column: 10, scope: !2891)
!2914 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !2913)
!2915 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !2913)
!2916 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !2913)
!2917 = !DILocation(line: 85, column: 3, scope: !2891)
!2918 = distinct !DISubprogram(name: "xmalloc", scope: !694, file: !694, line: 47, type: !2919, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!91, !93}
!2921 = !{!2922}
!2922 = !DILocalVariable(name: "s", arg: 1, scope: !2918, file: !694, line: 47, type: !93)
!2923 = !DILocation(line: 0, scope: !2918)
!2924 = !DILocation(line: 49, column: 25, scope: !2918)
!2925 = !DILocation(line: 0, scope: !2899, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 49, column: 10, scope: !2918)
!2927 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !2926)
!2928 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !2926)
!2929 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !2926)
!2930 = !DILocation(line: 49, column: 3, scope: !2918)
!2931 = !DISubprogram(name: "malloc", scope: !953, file: !953, line: 540, type: !2919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!2932 = distinct !DISubprogram(name: "ximalloc", scope: !694, file: !694, line: 53, type: !2933, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!91, !713}
!2935 = !{!2936}
!2936 = !DILocalVariable(name: "s", arg: 1, scope: !2932, file: !694, line: 53, type: !713)
!2937 = !DILocation(line: 0, scope: !2932)
!2938 = !DILocalVariable(name: "s", arg: 1, scope: !2939, file: !2940, line: 55, type: !713)
!2939 = distinct !DISubprogram(name: "imalloc", scope: !2940, file: !2940, line: 55, type: !2933, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2941)
!2940 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2941 = !{!2938}
!2942 = !DILocation(line: 0, scope: !2939, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 55, column: 25, scope: !2932)
!2944 = !DILocation(line: 57, column: 26, scope: !2939, inlinedAt: !2943)
!2945 = !DILocation(line: 0, scope: !2899, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 55, column: 10, scope: !2932)
!2947 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !2946)
!2948 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !2946)
!2949 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !2946)
!2950 = !DILocation(line: 55, column: 3, scope: !2932)
!2951 = distinct !DISubprogram(name: "xcharalloc", scope: !694, file: !694, line: 59, type: !2952, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!90, !93}
!2954 = !{!2955}
!2955 = !DILocalVariable(name: "n", arg: 1, scope: !2951, file: !694, line: 59, type: !93)
!2956 = !DILocation(line: 0, scope: !2951)
!2957 = !DILocation(line: 0, scope: !2918, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 61, column: 10, scope: !2951)
!2959 = !DILocation(line: 49, column: 25, scope: !2918, inlinedAt: !2958)
!2960 = !DILocation(line: 0, scope: !2899, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 49, column: 10, scope: !2918, inlinedAt: !2958)
!2962 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !2961)
!2963 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !2961)
!2964 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !2961)
!2965 = !DILocation(line: 61, column: 3, scope: !2951)
!2966 = distinct !DISubprogram(name: "xrealloc", scope: !694, file: !694, line: 68, type: !2967, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!91, !91, !93}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "p", arg: 1, scope: !2966, file: !694, line: 68, type: !91)
!2971 = !DILocalVariable(name: "s", arg: 2, scope: !2966, file: !694, line: 68, type: !93)
!2972 = !DILocation(line: 0, scope: !2966)
!2973 = !DILocalVariable(name: "ptr", arg: 1, scope: !2974, file: !2975, line: 2057, type: !91)
!2974 = distinct !DISubprogram(name: "rpl_realloc", scope: !2975, file: !2975, line: 2057, type: !2967, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2976)
!2975 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2976 = !{!2973, !2977}
!2977 = !DILocalVariable(name: "size", arg: 2, scope: !2974, file: !2975, line: 2057, type: !93)
!2978 = !DILocation(line: 0, scope: !2974, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 70, column: 25, scope: !2966)
!2980 = !DILocation(line: 2059, column: 24, scope: !2974, inlinedAt: !2979)
!2981 = !DILocation(line: 2059, column: 10, scope: !2974, inlinedAt: !2979)
!2982 = !DILocation(line: 0, scope: !2899, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 70, column: 10, scope: !2966)
!2984 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !2983)
!2985 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !2983)
!2986 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !2983)
!2987 = !DILocation(line: 70, column: 3, scope: !2966)
!2988 = !DISubprogram(name: "realloc", scope: !953, file: !953, line: 551, type: !2967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!2989 = distinct !DISubprogram(name: "xirealloc", scope: !694, file: !694, line: 74, type: !2990, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!91, !91, !713}
!2992 = !{!2993, !2994}
!2993 = !DILocalVariable(name: "p", arg: 1, scope: !2989, file: !694, line: 74, type: !91)
!2994 = !DILocalVariable(name: "s", arg: 2, scope: !2989, file: !694, line: 74, type: !713)
!2995 = !DILocation(line: 0, scope: !2989)
!2996 = !DILocalVariable(name: "p", arg: 1, scope: !2997, file: !2940, line: 66, type: !91)
!2997 = distinct !DISubprogram(name: "irealloc", scope: !2940, file: !2940, line: 66, type: !2990, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2998)
!2998 = !{!2996, !2999}
!2999 = !DILocalVariable(name: "s", arg: 2, scope: !2997, file: !2940, line: 66, type: !713)
!3000 = !DILocation(line: 0, scope: !2997, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 76, column: 25, scope: !2989)
!3002 = !DILocation(line: 0, scope: !2974, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 68, column: 26, scope: !2997, inlinedAt: !3001)
!3004 = !DILocation(line: 2059, column: 24, scope: !2974, inlinedAt: !3003)
!3005 = !DILocation(line: 2059, column: 10, scope: !2974, inlinedAt: !3003)
!3006 = !DILocation(line: 0, scope: !2899, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 76, column: 10, scope: !2989)
!3008 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3007)
!3009 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3007)
!3010 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3007)
!3011 = !DILocation(line: 76, column: 3, scope: !2989)
!3012 = distinct !DISubprogram(name: "xireallocarray", scope: !694, file: !694, line: 89, type: !3013, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!91, !91, !713, !713}
!3015 = !{!3016, !3017, !3018}
!3016 = !DILocalVariable(name: "p", arg: 1, scope: !3012, file: !694, line: 89, type: !91)
!3017 = !DILocalVariable(name: "n", arg: 2, scope: !3012, file: !694, line: 89, type: !713)
!3018 = !DILocalVariable(name: "s", arg: 3, scope: !3012, file: !694, line: 89, type: !713)
!3019 = !DILocation(line: 0, scope: !3012)
!3020 = !DILocalVariable(name: "p", arg: 1, scope: !3021, file: !2940, line: 98, type: !91)
!3021 = distinct !DISubprogram(name: "ireallocarray", scope: !2940, file: !2940, line: 98, type: !3013, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3022)
!3022 = !{!3020, !3023, !3024}
!3023 = !DILocalVariable(name: "n", arg: 2, scope: !3021, file: !2940, line: 98, type: !713)
!3024 = !DILocalVariable(name: "s", arg: 3, scope: !3021, file: !2940, line: 98, type: !713)
!3025 = !DILocation(line: 0, scope: !3021, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 91, column: 25, scope: !3012)
!3027 = !DILocation(line: 101, column: 13, scope: !3021, inlinedAt: !3026)
!3028 = !DILocation(line: 0, scope: !2899, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 91, column: 10, scope: !3012)
!3030 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3029)
!3031 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3029)
!3032 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3029)
!3033 = !DILocation(line: 91, column: 3, scope: !3012)
!3034 = distinct !DISubprogram(name: "xnmalloc", scope: !694, file: !694, line: 98, type: !3035, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!91, !93, !93}
!3037 = !{!3038, !3039}
!3038 = !DILocalVariable(name: "n", arg: 1, scope: !3034, file: !694, line: 98, type: !93)
!3039 = !DILocalVariable(name: "s", arg: 2, scope: !3034, file: !694, line: 98, type: !93)
!3040 = !DILocation(line: 0, scope: !3034)
!3041 = !DILocation(line: 0, scope: !2891, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 100, column: 10, scope: !3034)
!3043 = !DILocation(line: 85, column: 25, scope: !2891, inlinedAt: !3042)
!3044 = !DILocation(line: 0, scope: !2899, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 85, column: 10, scope: !2891, inlinedAt: !3042)
!3046 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3045)
!3047 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3045)
!3048 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3045)
!3049 = !DILocation(line: 100, column: 3, scope: !3034)
!3050 = distinct !DISubprogram(name: "xinmalloc", scope: !694, file: !694, line: 104, type: !3051, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!91, !713, !713}
!3053 = !{!3054, !3055}
!3054 = !DILocalVariable(name: "n", arg: 1, scope: !3050, file: !694, line: 104, type: !713)
!3055 = !DILocalVariable(name: "s", arg: 2, scope: !3050, file: !694, line: 104, type: !713)
!3056 = !DILocation(line: 0, scope: !3050)
!3057 = !DILocation(line: 0, scope: !3012, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 106, column: 10, scope: !3050)
!3059 = !DILocation(line: 0, scope: !3021, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 91, column: 25, scope: !3012, inlinedAt: !3058)
!3061 = !DILocation(line: 101, column: 13, scope: !3021, inlinedAt: !3060)
!3062 = !DILocation(line: 0, scope: !2899, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 91, column: 10, scope: !3012, inlinedAt: !3058)
!3064 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3063)
!3065 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3063)
!3066 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3063)
!3067 = !DILocation(line: 106, column: 3, scope: !3050)
!3068 = distinct !DISubprogram(name: "x2realloc", scope: !694, file: !694, line: 116, type: !3069, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!91, !91, !700}
!3071 = !{!3072, !3073}
!3072 = !DILocalVariable(name: "p", arg: 1, scope: !3068, file: !694, line: 116, type: !91)
!3073 = !DILocalVariable(name: "ps", arg: 2, scope: !3068, file: !694, line: 116, type: !700)
!3074 = !DILocation(line: 0, scope: !3068)
!3075 = !DILocation(line: 0, scope: !697, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 118, column: 10, scope: !3068)
!3077 = !DILocation(line: 178, column: 14, scope: !697, inlinedAt: !3076)
!3078 = !DILocation(line: 180, column: 9, scope: !3079, inlinedAt: !3076)
!3079 = distinct !DILexicalBlock(scope: !697, file: !694, line: 180, column: 7)
!3080 = !DILocation(line: 180, column: 7, scope: !697, inlinedAt: !3076)
!3081 = !DILocation(line: 182, column: 13, scope: !3082, inlinedAt: !3076)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !694, line: 182, column: 11)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !694, line: 181, column: 5)
!3084 = !DILocation(line: 182, column: 11, scope: !3083, inlinedAt: !3076)
!3085 = !DILocation(line: 197, column: 11, scope: !3086, inlinedAt: !3076)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !694, line: 197, column: 11)
!3087 = distinct !DILexicalBlock(scope: !3079, file: !694, line: 195, column: 5)
!3088 = !DILocation(line: 197, column: 11, scope: !3087, inlinedAt: !3076)
!3089 = !DILocation(line: 198, column: 9, scope: !3086, inlinedAt: !3076)
!3090 = !DILocation(line: 0, scope: !2891, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 201, column: 7, scope: !697, inlinedAt: !3076)
!3092 = !DILocation(line: 85, column: 25, scope: !2891, inlinedAt: !3091)
!3093 = !DILocation(line: 0, scope: !2899, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 85, column: 10, scope: !2891, inlinedAt: !3091)
!3095 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3094)
!3096 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3094)
!3097 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3094)
!3098 = !DILocation(line: 202, column: 7, scope: !697, inlinedAt: !3076)
!3099 = !DILocation(line: 118, column: 3, scope: !3068)
!3100 = !DILocation(line: 0, scope: !697)
!3101 = !DILocation(line: 178, column: 14, scope: !697)
!3102 = !DILocation(line: 180, column: 9, scope: !3079)
!3103 = !DILocation(line: 180, column: 7, scope: !697)
!3104 = !DILocation(line: 182, column: 13, scope: !3082)
!3105 = !DILocation(line: 182, column: 11, scope: !3083)
!3106 = !DILocation(line: 190, column: 30, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3082, file: !694, line: 183, column: 9)
!3108 = !DILocation(line: 191, column: 16, scope: !3107)
!3109 = !DILocation(line: 191, column: 13, scope: !3107)
!3110 = !DILocation(line: 192, column: 9, scope: !3107)
!3111 = !DILocation(line: 197, column: 11, scope: !3086)
!3112 = !DILocation(line: 197, column: 11, scope: !3087)
!3113 = !DILocation(line: 198, column: 9, scope: !3086)
!3114 = !DILocation(line: 0, scope: !2891, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 201, column: 7, scope: !697)
!3116 = !DILocation(line: 85, column: 25, scope: !2891, inlinedAt: !3115)
!3117 = !DILocation(line: 0, scope: !2899, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 85, column: 10, scope: !2891, inlinedAt: !3115)
!3119 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3118)
!3120 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3118)
!3121 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3118)
!3122 = !DILocation(line: 202, column: 7, scope: !697)
!3123 = !DILocation(line: 203, column: 3, scope: !697)
!3124 = !DILocation(line: 0, scope: !709)
!3125 = !DILocation(line: 230, column: 14, scope: !709)
!3126 = !DILocation(line: 238, column: 7, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !709, file: !694, line: 238, column: 7)
!3128 = !DILocation(line: 238, column: 7, scope: !709)
!3129 = !DILocation(line: 240, column: 9, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !709, file: !694, line: 240, column: 7)
!3131 = !DILocation(line: 240, column: 18, scope: !3130)
!3132 = !DILocation(line: 253, column: 8, scope: !709)
!3133 = !DILocation(line: 258, column: 27, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !694, line: 257, column: 5)
!3135 = distinct !DILexicalBlock(scope: !709, file: !694, line: 256, column: 7)
!3136 = !DILocation(line: 259, column: 50, scope: !3134)
!3137 = !DILocation(line: 259, column: 32, scope: !3134)
!3138 = !DILocation(line: 260, column: 5, scope: !3134)
!3139 = !DILocation(line: 262, column: 9, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !709, file: !694, line: 262, column: 7)
!3141 = !DILocation(line: 262, column: 7, scope: !709)
!3142 = !DILocation(line: 263, column: 9, scope: !3140)
!3143 = !DILocation(line: 263, column: 5, scope: !3140)
!3144 = !DILocation(line: 264, column: 9, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !709, file: !694, line: 264, column: 7)
!3146 = !DILocation(line: 264, column: 14, scope: !3145)
!3147 = !DILocation(line: 265, column: 7, scope: !3145)
!3148 = !DILocation(line: 265, column: 11, scope: !3145)
!3149 = !DILocation(line: 266, column: 11, scope: !3145)
!3150 = !DILocation(line: 267, column: 14, scope: !3145)
!3151 = !DILocation(line: 264, column: 7, scope: !709)
!3152 = !DILocation(line: 268, column: 5, scope: !3145)
!3153 = !DILocation(line: 0, scope: !2966, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 269, column: 8, scope: !709)
!3155 = !DILocation(line: 0, scope: !2974, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 70, column: 25, scope: !2966, inlinedAt: !3154)
!3157 = !DILocation(line: 2059, column: 24, scope: !2974, inlinedAt: !3156)
!3158 = !DILocation(line: 2059, column: 10, scope: !2974, inlinedAt: !3156)
!3159 = !DILocation(line: 0, scope: !2899, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 70, column: 10, scope: !2966, inlinedAt: !3154)
!3161 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3160)
!3162 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3160)
!3163 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3160)
!3164 = !DILocation(line: 270, column: 7, scope: !709)
!3165 = !DILocation(line: 271, column: 3, scope: !709)
!3166 = distinct !DISubprogram(name: "xzalloc", scope: !694, file: !694, line: 279, type: !2919, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3167)
!3167 = !{!3168}
!3168 = !DILocalVariable(name: "s", arg: 1, scope: !3166, file: !694, line: 279, type: !93)
!3169 = !DILocation(line: 0, scope: !3166)
!3170 = !DILocalVariable(name: "n", arg: 1, scope: !3171, file: !694, line: 294, type: !93)
!3171 = distinct !DISubprogram(name: "xcalloc", scope: !694, file: !694, line: 294, type: !3035, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3172)
!3172 = !{!3170, !3173}
!3173 = !DILocalVariable(name: "s", arg: 2, scope: !3171, file: !694, line: 294, type: !93)
!3174 = !DILocation(line: 0, scope: !3171, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 281, column: 10, scope: !3166)
!3176 = !DILocation(line: 296, column: 25, scope: !3171, inlinedAt: !3175)
!3177 = !DILocation(line: 0, scope: !2899, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 296, column: 10, scope: !3171, inlinedAt: !3175)
!3179 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3178)
!3180 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3178)
!3181 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3178)
!3182 = !DILocation(line: 281, column: 3, scope: !3166)
!3183 = !DISubprogram(name: "calloc", scope: !953, file: !953, line: 543, type: !3035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!3184 = !DILocation(line: 0, scope: !3171)
!3185 = !DILocation(line: 296, column: 25, scope: !3171)
!3186 = !DILocation(line: 0, scope: !2899, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 296, column: 10, scope: !3171)
!3188 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3187)
!3189 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3187)
!3190 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3187)
!3191 = !DILocation(line: 296, column: 3, scope: !3171)
!3192 = distinct !DISubprogram(name: "xizalloc", scope: !694, file: !694, line: 285, type: !2933, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3193)
!3193 = !{!3194}
!3194 = !DILocalVariable(name: "s", arg: 1, scope: !3192, file: !694, line: 285, type: !713)
!3195 = !DILocation(line: 0, scope: !3192)
!3196 = !DILocalVariable(name: "n", arg: 1, scope: !3197, file: !694, line: 300, type: !713)
!3197 = distinct !DISubprogram(name: "xicalloc", scope: !694, file: !694, line: 300, type: !3051, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3198)
!3198 = !{!3196, !3199}
!3199 = !DILocalVariable(name: "s", arg: 2, scope: !3197, file: !694, line: 300, type: !713)
!3200 = !DILocation(line: 0, scope: !3197, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 287, column: 10, scope: !3192)
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3203, file: !2940, line: 77, type: !713)
!3203 = distinct !DISubprogram(name: "icalloc", scope: !2940, file: !2940, line: 77, type: !3051, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3204)
!3204 = !{!3202, !3205}
!3205 = !DILocalVariable(name: "s", arg: 2, scope: !3203, file: !2940, line: 77, type: !713)
!3206 = !DILocation(line: 0, scope: !3203, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 302, column: 25, scope: !3197, inlinedAt: !3201)
!3208 = !DILocation(line: 91, column: 10, scope: !3203, inlinedAt: !3207)
!3209 = !DILocation(line: 0, scope: !2899, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 302, column: 10, scope: !3197, inlinedAt: !3201)
!3211 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3210)
!3212 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3210)
!3213 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3210)
!3214 = !DILocation(line: 287, column: 3, scope: !3192)
!3215 = !DILocation(line: 0, scope: !3197)
!3216 = !DILocation(line: 0, scope: !3203, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 302, column: 25, scope: !3197)
!3218 = !DILocation(line: 91, column: 10, scope: !3203, inlinedAt: !3217)
!3219 = !DILocation(line: 0, scope: !2899, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 302, column: 10, scope: !3197)
!3221 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3220)
!3222 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3220)
!3223 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3220)
!3224 = !DILocation(line: 302, column: 3, scope: !3197)
!3225 = distinct !DISubprogram(name: "xmemdup", scope: !694, file: !694, line: 310, type: !3226, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!91, !977, !93}
!3228 = !{!3229, !3230}
!3229 = !DILocalVariable(name: "p", arg: 1, scope: !3225, file: !694, line: 310, type: !977)
!3230 = !DILocalVariable(name: "s", arg: 2, scope: !3225, file: !694, line: 310, type: !93)
!3231 = !DILocation(line: 0, scope: !3225)
!3232 = !DILocation(line: 0, scope: !2918, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 312, column: 18, scope: !3225)
!3234 = !DILocation(line: 49, column: 25, scope: !2918, inlinedAt: !3233)
!3235 = !DILocation(line: 0, scope: !2899, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 49, column: 10, scope: !2918, inlinedAt: !3233)
!3237 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3236)
!3238 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3236)
!3239 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3236)
!3240 = !DILocalVariable(name: "__dest", arg: 1, scope: !3241, file: !1393, line: 26, type: !3244)
!3241 = distinct !DISubprogram(name: "memcpy", scope: !1393, file: !1393, line: 26, type: !3242, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3245)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!91, !3244, !976, !93}
!3244 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3245 = !{!3240, !3246, !3247}
!3246 = !DILocalVariable(name: "__src", arg: 2, scope: !3241, file: !1393, line: 26, type: !976)
!3247 = !DILocalVariable(name: "__len", arg: 3, scope: !3241, file: !1393, line: 26, type: !93)
!3248 = !DILocation(line: 0, scope: !3241, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 312, column: 10, scope: !3225)
!3250 = !DILocation(line: 29, column: 10, scope: !3241, inlinedAt: !3249)
!3251 = !DILocation(line: 312, column: 3, scope: !3225)
!3252 = distinct !DISubprogram(name: "ximemdup", scope: !694, file: !694, line: 316, type: !3253, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!91, !977, !713}
!3255 = !{!3256, !3257}
!3256 = !DILocalVariable(name: "p", arg: 1, scope: !3252, file: !694, line: 316, type: !977)
!3257 = !DILocalVariable(name: "s", arg: 2, scope: !3252, file: !694, line: 316, type: !713)
!3258 = !DILocation(line: 0, scope: !3252)
!3259 = !DILocation(line: 0, scope: !2932, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 318, column: 18, scope: !3252)
!3261 = !DILocation(line: 0, scope: !2939, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 55, column: 25, scope: !2932, inlinedAt: !3260)
!3263 = !DILocation(line: 57, column: 26, scope: !2939, inlinedAt: !3262)
!3264 = !DILocation(line: 0, scope: !2899, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 55, column: 10, scope: !2932, inlinedAt: !3260)
!3266 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3265)
!3267 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3265)
!3268 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3265)
!3269 = !DILocation(line: 0, scope: !3241, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 318, column: 10, scope: !3252)
!3271 = !DILocation(line: 29, column: 10, scope: !3241, inlinedAt: !3270)
!3272 = !DILocation(line: 318, column: 3, scope: !3252)
!3273 = distinct !DISubprogram(name: "ximemdup0", scope: !694, file: !694, line: 325, type: !3274, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!90, !977, !713}
!3276 = !{!3277, !3278, !3279}
!3277 = !DILocalVariable(name: "p", arg: 1, scope: !3273, file: !694, line: 325, type: !977)
!3278 = !DILocalVariable(name: "s", arg: 2, scope: !3273, file: !694, line: 325, type: !713)
!3279 = !DILocalVariable(name: "result", scope: !3273, file: !694, line: 327, type: !90)
!3280 = !DILocation(line: 0, scope: !3273)
!3281 = !DILocation(line: 327, column: 30, scope: !3273)
!3282 = !DILocation(line: 0, scope: !2932, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 327, column: 18, scope: !3273)
!3284 = !DILocation(line: 0, scope: !2939, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 55, column: 25, scope: !2932, inlinedAt: !3283)
!3286 = !DILocation(line: 57, column: 26, scope: !2939, inlinedAt: !3285)
!3287 = !DILocation(line: 0, scope: !2899, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 55, column: 10, scope: !2932, inlinedAt: !3283)
!3289 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3288)
!3290 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3288)
!3291 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3288)
!3292 = !DILocation(line: 328, column: 3, scope: !3273)
!3293 = !DILocation(line: 328, column: 13, scope: !3273)
!3294 = !DILocation(line: 0, scope: !3241, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 329, column: 10, scope: !3273)
!3296 = !DILocation(line: 29, column: 10, scope: !3241, inlinedAt: !3295)
!3297 = !DILocation(line: 329, column: 3, scope: !3273)
!3298 = distinct !DISubprogram(name: "xstrdup", scope: !694, file: !694, line: 335, type: !955, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3299)
!3299 = !{!3300}
!3300 = !DILocalVariable(name: "string", arg: 1, scope: !3298, file: !694, line: 335, type: !96)
!3301 = !DILocation(line: 0, scope: !3298)
!3302 = !DILocation(line: 337, column: 27, scope: !3298)
!3303 = !DILocation(line: 337, column: 43, scope: !3298)
!3304 = !DILocation(line: 0, scope: !3225, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 337, column: 10, scope: !3298)
!3306 = !DILocation(line: 0, scope: !2918, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 312, column: 18, scope: !3225, inlinedAt: !3305)
!3308 = !DILocation(line: 49, column: 25, scope: !2918, inlinedAt: !3307)
!3309 = !DILocation(line: 0, scope: !2899, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 49, column: 10, scope: !2918, inlinedAt: !3307)
!3311 = !DILocation(line: 39, column: 8, scope: !2906, inlinedAt: !3310)
!3312 = !DILocation(line: 39, column: 7, scope: !2899, inlinedAt: !3310)
!3313 = !DILocation(line: 40, column: 5, scope: !2906, inlinedAt: !3310)
!3314 = !DILocation(line: 0, scope: !3241, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 312, column: 10, scope: !3225, inlinedAt: !3305)
!3316 = !DILocation(line: 29, column: 10, scope: !3241, inlinedAt: !3315)
!3317 = !DILocation(line: 337, column: 3, scope: !3298)
!3318 = distinct !DISubprogram(name: "xalloc_die", scope: !658, file: !658, line: 32, type: !404, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3319)
!3319 = !{!3320}
!3320 = !DILocalVariable(name: "__errstatus", scope: !3321, file: !658, line: 34, type: !3322)
!3321 = distinct !DILexicalBlock(scope: !3318, file: !658, line: 34, column: 3)
!3322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3323 = !DILocation(line: 34, column: 3, scope: !3321)
!3324 = !DILocation(line: 0, scope: !3321)
!3325 = !DILocation(line: 40, column: 3, scope: !3318)
!3326 = distinct !DISubprogram(name: "close_stream", scope: !730, file: !730, line: 55, type: !3327, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3363)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!70, !3329}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3331, file: !150, line: 51, baseType: !70, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3331, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3331, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3331, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3331, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3331, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3331, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3331, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3331, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3331, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3331, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3331, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3331, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3331, file: !150, line: 70, baseType: !3347, size: 64, offset: 832)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3331, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3331, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3331, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3331, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3331, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3331, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3331, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3331, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3331, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3331, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3331, file: !150, line: 93, baseType: !3347, size: 64, offset: 1344)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3331, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3331, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3331, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3331, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3363 = !{!3364, !3365, !3367, !3368}
!3364 = !DILocalVariable(name: "stream", arg: 1, scope: !3326, file: !730, line: 55, type: !3329)
!3365 = !DILocalVariable(name: "some_pending", scope: !3326, file: !730, line: 57, type: !3366)
!3366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!3367 = !DILocalVariable(name: "prev_fail", scope: !3326, file: !730, line: 58, type: !3366)
!3368 = !DILocalVariable(name: "fclose_fail", scope: !3326, file: !730, line: 59, type: !3366)
!3369 = !DILocation(line: 0, scope: !3326)
!3370 = !DILocation(line: 57, column: 30, scope: !3326)
!3371 = !DILocalVariable(name: "__stream", arg: 1, scope: !3372, file: !1232, line: 135, type: !3329)
!3372 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1232, file: !1232, line: 135, type: !3327, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3373)
!3373 = !{!3371}
!3374 = !DILocation(line: 0, scope: !3372, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 58, column: 27, scope: !3326)
!3376 = !DILocation(line: 137, column: 10, scope: !3372, inlinedAt: !3375)
!3377 = !{!1241, !829, i64 0}
!3378 = !DILocation(line: 58, column: 43, scope: !3326)
!3379 = !DILocation(line: 59, column: 29, scope: !3326)
!3380 = !DILocation(line: 59, column: 45, scope: !3326)
!3381 = !DILocation(line: 69, column: 17, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3326, file: !730, line: 69, column: 7)
!3383 = !DILocation(line: 57, column: 50, scope: !3326)
!3384 = !DILocation(line: 69, column: 33, scope: !3382)
!3385 = !DILocation(line: 69, column: 53, scope: !3382)
!3386 = !DILocation(line: 69, column: 59, scope: !3382)
!3387 = !DILocation(line: 69, column: 7, scope: !3326)
!3388 = !DILocation(line: 71, column: 11, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3382, file: !730, line: 70, column: 5)
!3390 = !DILocation(line: 72, column: 9, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3389, file: !730, line: 71, column: 11)
!3392 = !DILocation(line: 72, column: 15, scope: !3391)
!3393 = !DILocation(line: 77, column: 1, scope: !3326)
!3394 = !DISubprogram(name: "__fpending", scope: !3395, file: !3395, line: 75, type: !3396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!3395 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!93, !3329}
!3398 = distinct !DISubprogram(name: "rpl_fclose", scope: !732, file: !732, line: 58, type: !3399, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3435)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!70, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3403)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3403, file: !150, line: 51, baseType: !70, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3403, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3403, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3403, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3403, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3403, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3403, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3403, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3403, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3403, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3403, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3403, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3403, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3403, file: !150, line: 70, baseType: !3419, size: 64, offset: 832)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3403, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3403, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3403, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3403, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3403, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3403, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3403, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3403, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3403, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3403, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3403, file: !150, line: 93, baseType: !3419, size: 64, offset: 1344)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3403, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3403, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3403, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3403, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3435 = !{!3436, !3437, !3438, !3439}
!3436 = !DILocalVariable(name: "fp", arg: 1, scope: !3398, file: !732, line: 58, type: !3401)
!3437 = !DILocalVariable(name: "saved_errno", scope: !3398, file: !732, line: 60, type: !70)
!3438 = !DILocalVariable(name: "fd", scope: !3398, file: !732, line: 63, type: !70)
!3439 = !DILocalVariable(name: "result", scope: !3398, file: !732, line: 74, type: !70)
!3440 = !DILocation(line: 0, scope: !3398)
!3441 = !DILocation(line: 63, column: 12, scope: !3398)
!3442 = !DILocation(line: 64, column: 10, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3398, file: !732, line: 64, column: 7)
!3444 = !DILocation(line: 64, column: 7, scope: !3398)
!3445 = !DILocation(line: 65, column: 12, scope: !3443)
!3446 = !DILocation(line: 65, column: 5, scope: !3443)
!3447 = !DILocation(line: 70, column: 9, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3398, file: !732, line: 70, column: 7)
!3449 = !DILocation(line: 70, column: 23, scope: !3448)
!3450 = !DILocation(line: 70, column: 33, scope: !3448)
!3451 = !DILocation(line: 70, column: 26, scope: !3448)
!3452 = !DILocation(line: 70, column: 59, scope: !3448)
!3453 = !DILocation(line: 71, column: 7, scope: !3448)
!3454 = !DILocation(line: 71, column: 10, scope: !3448)
!3455 = !DILocation(line: 70, column: 7, scope: !3398)
!3456 = !DILocation(line: 100, column: 12, scope: !3398)
!3457 = !DILocation(line: 105, column: 7, scope: !3398)
!3458 = !DILocation(line: 72, column: 19, scope: !3448)
!3459 = !DILocation(line: 105, column: 19, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3398, file: !732, line: 105, column: 7)
!3461 = !DILocation(line: 107, column: 13, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3460, file: !732, line: 106, column: 5)
!3463 = !DILocation(line: 109, column: 5, scope: !3462)
!3464 = !DILocation(line: 112, column: 1, scope: !3398)
!3465 = !DISubprogram(name: "fileno", scope: !823, file: !823, line: 809, type: !3399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!3466 = !DISubprogram(name: "fclose", scope: !823, file: !823, line: 178, type: !3399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!3467 = !DISubprogram(name: "__freading", scope: !3395, file: !3395, line: 51, type: !3399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!3468 = !DISubprogram(name: "lseek", scope: !1055, file: !1055, line: 339, type: !3469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!172, !70, !172, !70}
!3471 = distinct !DISubprogram(name: "rpl_fflush", scope: !734, file: !734, line: 130, type: !3472, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3508)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!70, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3476)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3476, file: !150, line: 51, baseType: !70, size: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3476, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3476, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3476, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3476, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3476, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3476, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3476, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3476, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3476, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3476, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3476, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3476, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3476, file: !150, line: 70, baseType: !3492, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3476, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3476, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3476, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3476, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3476, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3476, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3476, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3476, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3476, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3476, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3476, file: !150, line: 93, baseType: !3492, size: 64, offset: 1344)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3476, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3476, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3476, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3476, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3508 = !{!3509}
!3509 = !DILocalVariable(name: "stream", arg: 1, scope: !3471, file: !734, line: 130, type: !3474)
!3510 = !DILocation(line: 0, scope: !3471)
!3511 = !DILocation(line: 151, column: 14, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3471, file: !734, line: 151, column: 7)
!3513 = !DILocation(line: 151, column: 22, scope: !3512)
!3514 = !DILocation(line: 151, column: 27, scope: !3512)
!3515 = !DILocation(line: 151, column: 7, scope: !3471)
!3516 = !DILocation(line: 152, column: 12, scope: !3512)
!3517 = !DILocation(line: 152, column: 5, scope: !3512)
!3518 = !DILocalVariable(name: "fp", arg: 1, scope: !3519, file: !734, line: 42, type: !3474)
!3519 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !734, file: !734, line: 42, type: !3520, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{null, !3474}
!3522 = !{!3518}
!3523 = !DILocation(line: 0, scope: !3519, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 157, column: 3, scope: !3471)
!3525 = !DILocation(line: 44, column: 12, scope: !3526, inlinedAt: !3524)
!3526 = distinct !DILexicalBlock(scope: !3519, file: !734, line: 44, column: 7)
!3527 = !DILocation(line: 44, column: 19, scope: !3526, inlinedAt: !3524)
!3528 = !DILocation(line: 44, column: 7, scope: !3519, inlinedAt: !3524)
!3529 = !DILocation(line: 46, column: 5, scope: !3526, inlinedAt: !3524)
!3530 = !DILocation(line: 159, column: 10, scope: !3471)
!3531 = !DILocation(line: 159, column: 3, scope: !3471)
!3532 = !DILocation(line: 236, column: 1, scope: !3471)
!3533 = !DISubprogram(name: "fflush", scope: !823, file: !823, line: 230, type: !3472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!3534 = distinct !DISubprogram(name: "rpl_fseeko", scope: !736, file: !736, line: 28, type: !3535, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3572)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!70, !3537, !3571, !70}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3539)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3539, file: !150, line: 51, baseType: !70, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3539, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3539, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3539, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3539, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3539, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3539, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3539, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3539, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3539, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3539, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3539, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3539, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3539, file: !150, line: 70, baseType: !3555, size: 64, offset: 832)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3539, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3539, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3539, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3539, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3539, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3539, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3539, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3539, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3539, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3539, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3539, file: !150, line: 93, baseType: !3555, size: 64, offset: 1344)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3539, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3539, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3539, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3539, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !823, line: 63, baseType: !172)
!3572 = !{!3573, !3574, !3575, !3576}
!3573 = !DILocalVariable(name: "fp", arg: 1, scope: !3534, file: !736, line: 28, type: !3537)
!3574 = !DILocalVariable(name: "offset", arg: 2, scope: !3534, file: !736, line: 28, type: !3571)
!3575 = !DILocalVariable(name: "whence", arg: 3, scope: !3534, file: !736, line: 28, type: !70)
!3576 = !DILocalVariable(name: "pos", scope: !3577, file: !736, line: 123, type: !3571)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !736, line: 119, column: 5)
!3578 = distinct !DILexicalBlock(scope: !3534, file: !736, line: 55, column: 7)
!3579 = !DILocation(line: 0, scope: !3534)
!3580 = !DILocation(line: 55, column: 12, scope: !3578)
!3581 = !{!1241, !767, i64 16}
!3582 = !DILocation(line: 55, column: 33, scope: !3578)
!3583 = !{!1241, !767, i64 8}
!3584 = !DILocation(line: 55, column: 25, scope: !3578)
!3585 = !DILocation(line: 56, column: 7, scope: !3578)
!3586 = !DILocation(line: 56, column: 15, scope: !3578)
!3587 = !DILocation(line: 56, column: 37, scope: !3578)
!3588 = !{!1241, !767, i64 32}
!3589 = !DILocation(line: 56, column: 29, scope: !3578)
!3590 = !DILocation(line: 57, column: 7, scope: !3578)
!3591 = !DILocation(line: 57, column: 15, scope: !3578)
!3592 = !{!1241, !767, i64 72}
!3593 = !DILocation(line: 57, column: 29, scope: !3578)
!3594 = !DILocation(line: 55, column: 7, scope: !3534)
!3595 = !DILocation(line: 123, column: 26, scope: !3577)
!3596 = !DILocation(line: 123, column: 19, scope: !3577)
!3597 = !DILocation(line: 0, scope: !3577)
!3598 = !DILocation(line: 124, column: 15, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3577, file: !736, line: 124, column: 11)
!3600 = !DILocation(line: 124, column: 11, scope: !3577)
!3601 = !DILocation(line: 135, column: 19, scope: !3577)
!3602 = !DILocation(line: 136, column: 12, scope: !3577)
!3603 = !DILocation(line: 136, column: 20, scope: !3577)
!3604 = !{!1241, !1242, i64 144}
!3605 = !DILocation(line: 167, column: 7, scope: !3577)
!3606 = !DILocation(line: 169, column: 10, scope: !3534)
!3607 = !DILocation(line: 169, column: 3, scope: !3534)
!3608 = !DILocation(line: 170, column: 1, scope: !3534)
!3609 = !DISubprogram(name: "fseeko", scope: !823, file: !823, line: 736, type: !3610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!70, !3537, !172, !70}
!3612 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !665, file: !665, line: 100, type: !3613, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3616)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!93, !1411, !96, !93, !3615}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!3616 = !{!3617, !3618, !3619, !3620, !3621}
!3617 = !DILocalVariable(name: "pwc", arg: 1, scope: !3612, file: !665, line: 100, type: !1411)
!3618 = !DILocalVariable(name: "s", arg: 2, scope: !3612, file: !665, line: 100, type: !96)
!3619 = !DILocalVariable(name: "n", arg: 3, scope: !3612, file: !665, line: 100, type: !93)
!3620 = !DILocalVariable(name: "ps", arg: 4, scope: !3612, file: !665, line: 100, type: !3615)
!3621 = !DILocalVariable(name: "ret", scope: !3612, file: !665, line: 130, type: !93)
!3622 = !DILocation(line: 0, scope: !3612)
!3623 = !DILocation(line: 105, column: 9, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3612, file: !665, line: 105, column: 7)
!3625 = !DILocation(line: 105, column: 7, scope: !3612)
!3626 = !DILocation(line: 117, column: 10, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3612, file: !665, line: 117, column: 7)
!3628 = !DILocation(line: 117, column: 7, scope: !3612)
!3629 = !DILocation(line: 130, column: 16, scope: !3612)
!3630 = !DILocation(line: 135, column: 11, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3612, file: !665, line: 135, column: 7)
!3632 = !DILocation(line: 135, column: 25, scope: !3631)
!3633 = !DILocation(line: 135, column: 30, scope: !3631)
!3634 = !DILocation(line: 135, column: 7, scope: !3612)
!3635 = !DILocalVariable(name: "ps", arg: 1, scope: !3636, file: !1384, line: 1135, type: !3615)
!3636 = distinct !DISubprogram(name: "mbszero", scope: !1384, file: !1384, line: 1135, type: !3637, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{null, !3615}
!3639 = !{!3635}
!3640 = !DILocation(line: 0, scope: !3636, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 137, column: 5, scope: !3631)
!3642 = !DILocalVariable(name: "__dest", arg: 1, scope: !3643, file: !1393, line: 57, type: !91)
!3643 = distinct !DISubprogram(name: "memset", scope: !1393, file: !1393, line: 57, type: !1394, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3644)
!3644 = !{!3642, !3645, !3646}
!3645 = !DILocalVariable(name: "__ch", arg: 2, scope: !3643, file: !1393, line: 57, type: !70)
!3646 = !DILocalVariable(name: "__len", arg: 3, scope: !3643, file: !1393, line: 57, type: !93)
!3647 = !DILocation(line: 0, scope: !3643, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 1137, column: 3, scope: !3636, inlinedAt: !3641)
!3649 = !DILocation(line: 59, column: 10, scope: !3643, inlinedAt: !3648)
!3650 = !DILocation(line: 137, column: 5, scope: !3631)
!3651 = !DILocation(line: 138, column: 11, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3612, file: !665, line: 138, column: 7)
!3653 = !DILocation(line: 138, column: 7, scope: !3612)
!3654 = !DILocation(line: 139, column: 5, scope: !3652)
!3655 = !DILocation(line: 143, column: 26, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3612, file: !665, line: 143, column: 7)
!3657 = !DILocation(line: 143, column: 41, scope: !3656)
!3658 = !DILocation(line: 143, column: 7, scope: !3612)
!3659 = !DILocation(line: 145, column: 15, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !665, line: 145, column: 11)
!3661 = distinct !DILexicalBlock(scope: !3656, file: !665, line: 144, column: 5)
!3662 = !DILocation(line: 145, column: 11, scope: !3661)
!3663 = !DILocation(line: 146, column: 32, scope: !3660)
!3664 = !DILocation(line: 146, column: 16, scope: !3660)
!3665 = !DILocation(line: 146, column: 14, scope: !3660)
!3666 = !DILocation(line: 146, column: 9, scope: !3660)
!3667 = !DILocation(line: 286, column: 1, scope: !3612)
!3668 = !DISubprogram(name: "mbsinit", scope: !3669, file: !3669, line: 293, type: !3670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !812)
!3669 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!70, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!3674 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !738, file: !738, line: 27, type: !2883, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3675)
!3675 = !{!3676, !3677, !3678, !3679}
!3676 = !DILocalVariable(name: "ptr", arg: 1, scope: !3674, file: !738, line: 27, type: !91)
!3677 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3674, file: !738, line: 27, type: !93)
!3678 = !DILocalVariable(name: "size", arg: 3, scope: !3674, file: !738, line: 27, type: !93)
!3679 = !DILocalVariable(name: "nbytes", scope: !3674, file: !738, line: 29, type: !93)
!3680 = !DILocation(line: 0, scope: !3674)
!3681 = !DILocation(line: 30, column: 7, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3674, file: !738, line: 30, column: 7)
!3683 = !DILocalVariable(name: "ptr", arg: 1, scope: !3684, file: !2975, line: 2057, type: !91)
!3684 = distinct !DISubprogram(name: "rpl_realloc", scope: !2975, file: !2975, line: 2057, type: !2967, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3685)
!3685 = !{!3683, !3686}
!3686 = !DILocalVariable(name: "size", arg: 2, scope: !3684, file: !2975, line: 2057, type: !93)
!3687 = !DILocation(line: 0, scope: !3684, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 37, column: 10, scope: !3674)
!3689 = !DILocation(line: 2059, column: 24, scope: !3684, inlinedAt: !3688)
!3690 = !DILocation(line: 2059, column: 10, scope: !3684, inlinedAt: !3688)
!3691 = !DILocation(line: 37, column: 3, scope: !3674)
!3692 = !DILocation(line: 32, column: 7, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3682, file: !738, line: 31, column: 5)
!3694 = !DILocation(line: 32, column: 13, scope: !3693)
!3695 = !DILocation(line: 33, column: 7, scope: !3693)
!3696 = !DILocation(line: 38, column: 1, scope: !3674)
!3697 = distinct !DISubprogram(name: "hard_locale", scope: !683, file: !683, line: 28, type: !3698, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!121, !70}
!3700 = !{!3701, !3702}
!3701 = !DILocalVariable(name: "category", arg: 1, scope: !3697, file: !683, line: 28, type: !70)
!3702 = !DILocalVariable(name: "locale", scope: !3697, file: !683, line: 30, type: !3703)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3704)
!3704 = !{!3705}
!3705 = !DISubrange(count: 257)
!3706 = !DILocation(line: 0, scope: !3697)
!3707 = !DILocation(line: 30, column: 3, scope: !3697)
!3708 = !DILocation(line: 30, column: 8, scope: !3697)
!3709 = !DILocation(line: 32, column: 7, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3697, file: !683, line: 32, column: 7)
!3711 = !DILocation(line: 32, column: 7, scope: !3697)
!3712 = !DILocalVariable(name: "__s1", arg: 1, scope: !3713, file: !841, line: 1359, type: !96)
!3713 = distinct !DISubprogram(name: "streq", scope: !841, file: !841, line: 1359, type: !842, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3714)
!3714 = !{!3712, !3715}
!3715 = !DILocalVariable(name: "__s2", arg: 2, scope: !3713, file: !841, line: 1359, type: !96)
!3716 = !DILocation(line: 0, scope: !3713, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 35, column: 9, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3697, file: !683, line: 35, column: 7)
!3719 = !DILocation(line: 1361, column: 11, scope: !3713, inlinedAt: !3717)
!3720 = !DILocation(line: 35, column: 29, scope: !3718)
!3721 = !DILocation(line: 0, scope: !3713, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 35, column: 32, scope: !3718)
!3723 = !DILocation(line: 1361, column: 11, scope: !3713, inlinedAt: !3722)
!3724 = !DILocation(line: 1361, column: 10, scope: !3713, inlinedAt: !3722)
!3725 = !DILocation(line: 35, column: 7, scope: !3697)
!3726 = !DILocation(line: 46, column: 3, scope: !3697)
!3727 = !DILocation(line: 47, column: 1, scope: !3697)
!3728 = distinct !DISubprogram(name: "setlocale_null_r", scope: !745, file: !745, line: 154, type: !3729, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!70, !70, !90, !93}
!3731 = !{!3732, !3733, !3734}
!3732 = !DILocalVariable(name: "category", arg: 1, scope: !3728, file: !745, line: 154, type: !70)
!3733 = !DILocalVariable(name: "buf", arg: 2, scope: !3728, file: !745, line: 154, type: !90)
!3734 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3728, file: !745, line: 154, type: !93)
!3735 = !DILocation(line: 0, scope: !3728)
!3736 = !DILocation(line: 159, column: 10, scope: !3728)
!3737 = !DILocation(line: 159, column: 3, scope: !3728)
!3738 = distinct !DISubprogram(name: "setlocale_null", scope: !745, file: !745, line: 186, type: !3739, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!96, !70}
!3741 = !{!3742}
!3742 = !DILocalVariable(name: "category", arg: 1, scope: !3738, file: !745, line: 186, type: !70)
!3743 = !DILocation(line: 0, scope: !3738)
!3744 = !DILocation(line: 189, column: 10, scope: !3738)
!3745 = !DILocation(line: 189, column: 3, scope: !3738)
!3746 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !747, file: !747, line: 35, type: !3739, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3747)
!3747 = !{!3748, !3749}
!3748 = !DILocalVariable(name: "category", arg: 1, scope: !3746, file: !747, line: 35, type: !70)
!3749 = !DILocalVariable(name: "result", scope: !3746, file: !747, line: 37, type: !96)
!3750 = !DILocation(line: 0, scope: !3746)
!3751 = !DILocation(line: 37, column: 24, scope: !3746)
!3752 = !DILocation(line: 62, column: 3, scope: !3746)
!3753 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !747, file: !747, line: 66, type: !3729, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3754)
!3754 = !{!3755, !3756, !3757, !3758, !3759}
!3755 = !DILocalVariable(name: "category", arg: 1, scope: !3753, file: !747, line: 66, type: !70)
!3756 = !DILocalVariable(name: "buf", arg: 2, scope: !3753, file: !747, line: 66, type: !90)
!3757 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3753, file: !747, line: 66, type: !93)
!3758 = !DILocalVariable(name: "result", scope: !3753, file: !747, line: 111, type: !96)
!3759 = !DILocalVariable(name: "length", scope: !3760, file: !747, line: 125, type: !93)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !747, line: 124, column: 5)
!3761 = distinct !DILexicalBlock(scope: !3753, file: !747, line: 113, column: 7)
!3762 = !DILocation(line: 0, scope: !3753)
!3763 = !DILocation(line: 0, scope: !3746, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 111, column: 24, scope: !3753)
!3765 = !DILocation(line: 37, column: 24, scope: !3746, inlinedAt: !3764)
!3766 = !DILocation(line: 113, column: 14, scope: !3761)
!3767 = !DILocation(line: 113, column: 7, scope: !3753)
!3768 = !DILocation(line: 116, column: 19, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !747, line: 116, column: 11)
!3770 = distinct !DILexicalBlock(scope: !3761, file: !747, line: 114, column: 5)
!3771 = !DILocation(line: 116, column: 11, scope: !3770)
!3772 = !DILocation(line: 120, column: 16, scope: !3769)
!3773 = !DILocation(line: 120, column: 9, scope: !3769)
!3774 = !DILocation(line: 125, column: 23, scope: !3760)
!3775 = !DILocation(line: 0, scope: !3760)
!3776 = !DILocation(line: 126, column: 18, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3760, file: !747, line: 126, column: 11)
!3778 = !DILocation(line: 126, column: 11, scope: !3760)
!3779 = !DILocation(line: 128, column: 39, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !747, line: 127, column: 9)
!3781 = !DILocalVariable(name: "__dest", arg: 1, scope: !3782, file: !1393, line: 26, type: !3244)
!3782 = distinct !DISubprogram(name: "memcpy", scope: !1393, file: !1393, line: 26, type: !3242, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3783)
!3783 = !{!3781, !3784, !3785}
!3784 = !DILocalVariable(name: "__src", arg: 2, scope: !3782, file: !1393, line: 26, type: !976)
!3785 = !DILocalVariable(name: "__len", arg: 3, scope: !3782, file: !1393, line: 26, type: !93)
!3786 = !DILocation(line: 0, scope: !3782, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 128, column: 11, scope: !3780)
!3788 = !DILocation(line: 29, column: 10, scope: !3782, inlinedAt: !3787)
!3789 = !DILocation(line: 129, column: 11, scope: !3780)
!3790 = !DILocation(line: 133, column: 23, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !747, line: 133, column: 15)
!3792 = distinct !DILexicalBlock(scope: !3777, file: !747, line: 132, column: 9)
!3793 = !DILocation(line: 133, column: 15, scope: !3792)
!3794 = !DILocation(line: 138, column: 44, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3791, file: !747, line: 134, column: 13)
!3796 = !DILocation(line: 0, scope: !3782, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 138, column: 15, scope: !3795)
!3798 = !DILocation(line: 29, column: 10, scope: !3782, inlinedAt: !3797)
!3799 = !DILocation(line: 139, column: 15, scope: !3795)
!3800 = !DILocation(line: 139, column: 32, scope: !3795)
!3801 = !DILocation(line: 140, column: 13, scope: !3795)
!3802 = !DILocation(line: 0, scope: !3761)
!3803 = !DILocation(line: 145, column: 1, scope: !3753)
