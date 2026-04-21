; ModuleID = 'src/tty.bc'
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
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.51, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !57
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !352
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !344
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !346
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !348
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !350
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !354
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !360
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !396
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !362
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !386
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !388
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !390
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !392
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !394
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !398
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !400
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !405
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !410
@.str.44 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !416
@.str.1.45 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !418
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !420
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !451
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !454
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !456
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !461
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !463
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !465
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !467
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !469
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !471
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !473
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.55, ptr @.str.1.56, ptr @.str.2.57, ptr @.str.3.58, ptr @.str.4.59, ptr @.str.5.60, ptr @.str.6.61, ptr @.str.7.62, ptr @.str.8.63, ptr @.str.9.64, ptr null], align 8, !dbg !475
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !500
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !514
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !552
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !559
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !516
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !561
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !504
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !521
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !523
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !525
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !527
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !529
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !567
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !570
@.str.2.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !572
@.str.3.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !574
@.str.4.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !576
@.str.5.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !578
@.str.6.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !583
@.str.7.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !588
@.str.8.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !590
@.str.9.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !592
@.str.10.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !597
@.str.11.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !602
@.str.12.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !607
@.str.13.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !609
@.str.14.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !614
@.str.15.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !619
@.str.16.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !624
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !629
@.str.18.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !631
@.str.19.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !633
@.str.20.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !635
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !637
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !639
@.str.23.98 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !641
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !646
@exit_failure = dso_local global i32 1, align 4, !dbg !654
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !660
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !663
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !665
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !667
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !670
@.str.127 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !685
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !688

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !761 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !765, metadata !DIExpression()), !dbg !766
  %2 = icmp eq i32 %0, 0, !dbg !767
  br i1 %2, label %8, label %3, !dbg !769

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !770, !tbaa !772
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !770
  %6 = load ptr, ptr @program_name, align 8, !dbg !770, !tbaa !772
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !770
  br label %32, !dbg !770

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !776
  %10 = load ptr, ptr @program_name, align 8, !dbg !776, !tbaa !772
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !776
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !778
  %13 = load ptr, ptr @stdout, align 8, !dbg !778, !tbaa !772
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !778
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !779
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !779
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !780
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !780
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !781
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !781
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !782, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata !801, metadata !795, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata ptr poison, metadata !794, metadata !DIExpression()), !dbg !799
  tail call void @emit_bug_reporting_address() #37, !dbg !802
  %18 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !803
  call void @llvm.dbg.value(metadata ptr %18, metadata !797, metadata !DIExpression()), !dbg !799
  %19 = icmp eq ptr %18, null, !dbg !804
  br i1 %19, label %27, label %20, !dbg !806

20:                                               ; preds = %8
  %21 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #38, !dbg !807
  %22 = icmp eq i32 %21, 0, !dbg !807
  br i1 %22, label %27, label %23, !dbg !808

23:                                               ; preds = %20
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !809
  %25 = load ptr, ptr @stdout, align 8, !dbg !809, !tbaa !772
  %26 = tail call i32 @fputs_unlocked(ptr noundef %24, ptr noundef %25), !dbg !809
  br label %27, !dbg !811

27:                                               ; preds = %8, %20, %23
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !794, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !798, metadata !DIExpression()), !dbg !799
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !812
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %28, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #37, !dbg !812
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !813
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #37, !dbg !813
  br label %32

32:                                               ; preds = %27, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !814
  unreachable, !dbg !814
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !815 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !819 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !825 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !828 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !124 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !128, metadata !DIExpression()), !dbg !831
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !129, metadata !DIExpression()), !dbg !831
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !832, !tbaa !833
  %3 = icmp eq i32 %2, -1, !dbg !835
  br i1 %3, label %4, label %16, !dbg !836

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #37, !dbg !837
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !130, metadata !DIExpression()), !dbg !838
  %6 = icmp eq ptr %5, null, !dbg !839
  br i1 %6, label %14, label %7, !dbg !840

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !841, !tbaa !842
  %9 = icmp eq i8 %8, 0, !dbg !841
  br i1 %9, label %14, label %10, !dbg !843

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !844, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !850, metadata !DIExpression()), !dbg !851
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #38, !dbg !853
  %12 = icmp eq i32 %11, 0, !dbg !854
  %13 = zext i1 %12 to i32, !dbg !843
  br label %14, !dbg !843

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !855, !tbaa !833
  br label %16, !dbg !856

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !857
  %18 = icmp eq i32 %17, 0, !dbg !857
  br i1 %18, label %22, label %19, !dbg !859

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !860, !tbaa !772
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !860
  br label %121, !dbg !862

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !133, metadata !DIExpression()), !dbg !831
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #38, !dbg !863
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !864
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !134, metadata !DIExpression()), !dbg !831
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !865
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !135, metadata !DIExpression()), !dbg !831
  %26 = icmp eq ptr %25, null, !dbg !866
  br i1 %26, label %53, label %27, !dbg !867

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !868
  br i1 %28, label %53, label %29, !dbg !869

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !136, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata i64 0, metadata !140, metadata !DIExpression()), !dbg !870
  %30 = icmp ult ptr %24, %25, !dbg !871
  br i1 %30, label %31, label %53, !dbg !872

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !831
  %33 = load ptr, ptr %32, align 8, !tbaa !772
  br label %34, !dbg !872

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !136, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !140, metadata !DIExpression()), !dbg !870
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !873
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !136, metadata !DIExpression()), !dbg !870
  %38 = load i8, ptr %35, align 1, !dbg !873, !tbaa !842
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !873
  %41 = load i16, ptr %40, align 2, !dbg !873, !tbaa !874
  %42 = freeze i16 %41, !dbg !876
  %43 = lshr i16 %42, 13, !dbg !876
  %44 = and i16 %43, 1, !dbg !876
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !877
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !140, metadata !DIExpression()), !dbg !870
  %47 = icmp ult ptr %37, %25, !dbg !871
  %48 = icmp ult i64 %46, 2, !dbg !878
  %49 = select i1 %47, i1 %48, i1 false, !dbg !878
  br i1 %49, label %34, label %50, !dbg !872, !llvm.loop !879

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !877
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !881
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !883
  br label %53, !dbg !883

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !831
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !133, metadata !DIExpression()), !dbg !831
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !135, metadata !DIExpression()), !dbg !831
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.19) #38, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !141, metadata !DIExpression()), !dbg !831
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !885
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !142, metadata !DIExpression()), !dbg !831
  br label %58, !dbg !886

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !831
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !133, metadata !DIExpression()), !dbg !831
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !142, metadata !DIExpression()), !dbg !831
  %61 = load i8, ptr %59, align 1, !dbg !887, !tbaa !842
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !888

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !889
  %64 = load i8, ptr %63, align 1, !dbg !892, !tbaa !842
  %65 = icmp ne i8 %64, 45, !dbg !893
  %66 = select i1 %65, i1 %60, i1 false, !dbg !894
  br label %67, !dbg !894

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !133, metadata !DIExpression()), !dbg !831
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !895
  %70 = load ptr, ptr %69, align 8, !dbg !895, !tbaa !772
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !895
  %73 = load i16, ptr %72, align 2, !dbg !895, !tbaa !874
  %74 = and i16 %73, 8192, !dbg !895
  %75 = icmp eq i16 %74, 0, !dbg !895
  br i1 %75, label %89, label %76, !dbg !897

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !898
  br i1 %77, label %91, label %78, !dbg !901

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !902
  %80 = load i8, ptr %79, align 1, !dbg !902, !tbaa !842
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !902
  %83 = load i16, ptr %82, align 2, !dbg !902, !tbaa !874
  %84 = and i16 %83, 8192, !dbg !902
  %85 = icmp eq i16 %84, 0, !dbg !902
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !903
  br i1 %88, label %89, label %91, !dbg !903

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !904
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !142, metadata !DIExpression()), !dbg !831
  br label %58, !dbg !886, !llvm.loop !905

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !831
  %92 = ptrtoint ptr %24 to i64, !dbg !907
  %93 = load ptr, ptr @stdout, align 8, !dbg !907, !tbaa !772
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata !801, metadata !850, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !199, metadata !DIExpression()), !dbg !831
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #38, !dbg !928
  %96 = icmp eq i32 %95, 0, !dbg !928
  br i1 %96, label %100, label %97, !dbg !930

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #38, !dbg !931
  %99 = icmp eq i32 %98, 0, !dbg !931
  br i1 %99, label %100, label %103, !dbg !932

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !933
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !933
  br label %106, !dbg !935

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !936
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !936
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !938, !tbaa !772
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %107), !dbg !938
  %109 = load ptr, ptr @stdout, align 8, !dbg !939, !tbaa !772
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %109), !dbg !939
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !940
  %112 = sub i64 %111, %92, !dbg !940
  %113 = load ptr, ptr @stdout, align 8, !dbg !940, !tbaa !772
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !940
  %115 = load ptr, ptr @stdout, align 8, !dbg !941, !tbaa !772
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %115), !dbg !941
  %117 = load ptr, ptr @stdout, align 8, !dbg !942, !tbaa !772
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %117), !dbg !942
  %119 = load ptr, ptr @stdout, align 8, !dbg !943, !tbaa !772
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !943
  br label %121, !dbg !944

121:                                              ; preds = %106, %19
  ret void, !dbg !944
}

; Function Attrs: nounwind
declare !dbg !945 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !949 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !953 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !955 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !958 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !961 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !964 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !967 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !973 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !974 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !980 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !985, metadata !DIExpression()), !dbg !993
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !986, metadata !DIExpression()), !dbg !993
  %3 = load ptr, ptr %1, align 8, !dbg !994, !tbaa !772
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !995
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #37, !dbg !996
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #37, !dbg !997
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #37, !dbg !998
  tail call void @llvm.dbg.value(metadata i32 3, metadata !999, metadata !DIExpression()), !dbg !1002
  store volatile i32 3, ptr @exit_failure, align 4, !dbg !1004, !tbaa !833
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1006
  br label %8, !dbg !1007

8:                                                ; preds = %10, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !987, metadata !DIExpression()), !dbg !993
  switch i32 %9, label %16 [
    i32 -1, label %17
    i32 115, label %10
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !1007

10:                                               ; preds = %8
  store i1 true, ptr @silent, align 1, !dbg !1009
  br label %8, !dbg !1007, !llvm.loop !1012

11:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #41, !dbg !1014
  unreachable, !dbg !1014

12:                                               ; preds = %8
  %13 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !772
  %14 = load ptr, ptr @Version, align 8, !dbg !1015, !tbaa !772
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #37, !dbg !1015
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %14, ptr noundef %15, ptr noundef null) #37, !dbg !1015
  tail call void @exit(i32 noundef 0) #39, !dbg !1015
  unreachable, !dbg !1015

16:                                               ; preds = %8
  tail call void @usage(i32 noundef 2) #41, !dbg !1016
  unreachable, !dbg !1016

17:                                               ; preds = %8
  %18 = load i32, ptr @optind, align 4, !dbg !1017, !tbaa !833
  %19 = icmp slt i32 %18, %0, !dbg !1019
  br i1 %19, label %20, label %27, !dbg !1020

20:                                               ; preds = %17
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1021
  %22 = load i32, ptr @optind, align 4, !dbg !1021, !tbaa !833
  %23 = sext i32 %22 to i64, !dbg !1021
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23, !dbg !1021
  %25 = load ptr, ptr %24, align 8, !dbg !1021, !tbaa !772
  %26 = tail call ptr @quote(ptr noundef %25) #37, !dbg !1021
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %21, ptr noundef %26) #37, !dbg !1021
  tail call void @usage(i32 noundef 2) #41, !dbg !1023
  unreachable, !dbg !1023

27:                                               ; preds = %17
  %28 = load i1, ptr @silent, align 1, !dbg !1024
  br i1 %28, label %29, label %33, !dbg !1026

29:                                               ; preds = %27
  %30 = tail call i32 @isatty(i32 noundef 0) #37, !dbg !1027
  %31 = icmp eq i32 %30, 0, !dbg !1027
  %32 = zext i1 %31 to i32, !dbg !1027
  br label %49, !dbg !1028

33:                                               ; preds = %27
  %34 = tail call ptr @ttyname(i32 noundef 0) #37, !dbg !1029
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !989, metadata !DIExpression()), !dbg !993
  %35 = icmp eq ptr %34, null, !dbg !1030
  br i1 %35, label %36, label %45, !dbg !1031

36:                                               ; preds = %33
  %37 = tail call ptr @__errno_location() #40, !dbg !1032
  %38 = load i32, ptr %37, align 4, !dbg !1032, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !990, metadata !DIExpression()), !dbg !1033
  %39 = tail call i32 @isatty(i32 noundef 0) #37, !dbg !1034
  %40 = icmp eq i32 %39, 0, !dbg !1034
  br i1 %40, label %43, label %41, !dbg !1036

41:                                               ; preds = %36
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !1037
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 4, i32 noundef %38, ptr noundef %42) #37, !dbg !1037
  unreachable, !dbg !1037

43:                                               ; preds = %36
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1038
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !989, metadata !DIExpression()), !dbg !993
  tail call void @llvm.dbg.value(metadata i32 1, metadata !988, metadata !DIExpression()), !dbg !993
  br label %45

45:                                               ; preds = %33, %43
  %46 = phi i32 [ 1, %43 ], [ 0, %33 ], !dbg !1039
  %47 = phi ptr [ %44, %43 ], [ %34, %33 ], !dbg !993
  tail call void @llvm.dbg.value(metadata ptr %47, metadata !989, metadata !DIExpression()), !dbg !993
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !988, metadata !DIExpression()), !dbg !993
  %48 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %47), !dbg !1040
  br label %49

49:                                               ; preds = %45, %29
  %50 = phi i32 [ %32, %29 ], [ %46, %45 ], !dbg !993
  ret i32 %50, !dbg !1041
}

; Function Attrs: nounwind
declare !dbg !1042 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1045 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1046 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1049 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1055 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1059 ptr @ttyname(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1062 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1066 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1069 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1071, metadata !DIExpression()), !dbg !1072
  store ptr %0, ptr @file_name, align 8, !dbg !1073, !tbaa !772
  ret void, !dbg !1074
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1075 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1079, metadata !DIExpression()), !dbg !1080
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1081, !tbaa !1082
  ret void, !dbg !1084
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1085 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1090, !tbaa !772
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1091
  %3 = icmp eq i32 %2, 0, !dbg !1092
  br i1 %3, label %22, label %4, !dbg !1093

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1094, !tbaa !1082, !range !1095, !noundef !801
  %6 = icmp eq i8 %5, 0, !dbg !1094
  br i1 %6, label %11, label %7, !dbg !1096

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1097
  %9 = load i32, ptr %8, align 4, !dbg !1097, !tbaa !833
  %10 = icmp eq i32 %9, 32, !dbg !1098
  br i1 %10, label %22, label %11, !dbg !1099

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #37, !dbg !1100
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1087, metadata !DIExpression()), !dbg !1101
  %13 = load ptr, ptr @file_name, align 8, !dbg !1102, !tbaa !772
  %14 = icmp eq ptr %13, null, !dbg !1102
  %15 = tail call ptr @__errno_location() #40, !dbg !1104
  %16 = load i32, ptr %15, align 4, !dbg !1104, !tbaa !833
  br i1 %14, label %19, label %17, !dbg !1105

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1106
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #37, !dbg !1106
  br label %20, !dbg !1106

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #37, !dbg !1107
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1108, !tbaa !833
  tail call void @_exit(i32 noundef %21) #39, !dbg !1109
  unreachable, !dbg !1109

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1110, !tbaa !772
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1112
  %25 = icmp eq i32 %24, 0, !dbg !1113
  br i1 %25, label %28, label %26, !dbg !1114

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1115, !tbaa !833
  tail call void @_exit(i32 noundef %27) #39, !dbg !1116
  unreachable, !dbg !1116

28:                                               ; preds = %22
  ret void, !dbg !1117
}

; Function Attrs: noreturn
declare !dbg !1118 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1119 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1123, metadata !DIExpression()), !dbg !1127
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1124, metadata !DIExpression()), !dbg !1127
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1125, metadata !DIExpression()), !dbg !1127
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1126, metadata !DIExpression(DW_OP_deref)), !dbg !1127
  tail call fastcc void @flush_stdout(), !dbg !1128
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1129, !tbaa !772
  %7 = icmp eq ptr %6, null, !dbg !1129
  br i1 %7, label %9, label %8, !dbg !1131

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1132
  br label %13, !dbg !1132

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1133, !tbaa !772
  %11 = tail call ptr @getprogname() #38, !dbg !1133
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %11) #37, !dbg !1133
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1135, !tbaa.struct !1136
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1135
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1135
  ret void, !dbg !1137
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1138 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i32 1, metadata !1142, metadata !DIExpression()), !dbg !1145
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1148
  %2 = icmp slt i32 %1, 0, !dbg !1149
  br i1 %2, label %6, label %3, !dbg !1150

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1151, !tbaa !772
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1151
  br label %6, !dbg !1151

6:                                                ; preds = %3, %0
  ret void, !dbg !1152
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1153 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1159
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1155, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1156, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1157, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1158, metadata !DIExpression(DW_OP_deref)), !dbg !1160
  %7 = load ptr, ptr @stderr, align 8, !dbg !1161, !tbaa !772
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1162, !noalias !1206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %7, metadata !1202, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr %2, metadata !1203, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr poison, metadata !1204, metadata !DIExpression(DW_OP_deref)), !dbg !1211
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1162
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1162, !noalias !1206
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1212, !tbaa !833
  %10 = add i32 %9, 1, !dbg !1212
  store i32 %10, ptr @error_message_count, align 4, !dbg !1212, !tbaa !833
  %11 = icmp eq i32 %1, 0, !dbg !1213
  br i1 %11, label %21, label %12, !dbg !1215

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1216, metadata !DIExpression(), metadata !1159, metadata ptr %5, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i32 %1, metadata !1219, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1226
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1227
  call void @llvm.dbg.value(metadata ptr %13, metadata !1220, metadata !DIExpression()), !dbg !1224
  %14 = icmp eq ptr %13, null, !dbg !1228
  br i1 %14, label %15, label %17, !dbg !1230

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #37, !dbg !1231
  call void @llvm.dbg.value(metadata ptr %16, metadata !1220, metadata !DIExpression()), !dbg !1224
  br label %17, !dbg !1232

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1224
  call void @llvm.dbg.value(metadata ptr %18, metadata !1220, metadata !DIExpression()), !dbg !1224
  %19 = load ptr, ptr @stderr, align 8, !dbg !1233, !tbaa !772
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %18) #37, !dbg !1233
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1234
  br label %21, !dbg !1235

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1236, !tbaa !772
  call void @llvm.dbg.value(metadata i32 10, metadata !1237, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr %22, metadata !1243, metadata !DIExpression()), !dbg !1244
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1246
  %24 = load ptr, ptr %23, align 8, !dbg !1246, !tbaa !1247
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1246
  %26 = load ptr, ptr %25, align 8, !dbg !1246, !tbaa !1250
  %27 = icmp ult ptr %24, %26, !dbg !1246
  br i1 %27, label %30, label %28, !dbg !1246, !prof !1251

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1246
  br label %32, !dbg !1246

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1246
  store ptr %31, ptr %23, align 8, !dbg !1246, !tbaa !1247
  store i8 10, ptr %24, align 1, !dbg !1246, !tbaa !842
  br label %32, !dbg !1246

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1252, !tbaa !772
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1252
  %35 = icmp eq i32 %0, 0, !dbg !1253
  br i1 %35, label %37, label %36, !dbg !1255

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1256
  unreachable, !dbg !1256

37:                                               ; preds = %32
  ret void, !dbg !1257
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1258 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1261 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1264 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1267 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1270 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1274 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1282
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1281, metadata !DIExpression(), metadata !1282, metadata ptr %4, metadata !DIExpression()), !dbg !1283
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1278, metadata !DIExpression()), !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1279, metadata !DIExpression()), !dbg !1283
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1280, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1284
  call void @llvm.va_start(ptr nonnull %4), !dbg !1285
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1286, !tbaa.struct !1136
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1286
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1286
  call void @llvm.va_end(ptr nonnull %4), !dbg !1287
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1288
  ret void, !dbg !1288
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !364 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !380, metadata !DIExpression()), !dbg !1289
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !381, metadata !DIExpression()), !dbg !1289
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !1289
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !383, metadata !DIExpression()), !dbg !1289
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !384, metadata !DIExpression()), !dbg !1289
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !385, metadata !DIExpression(DW_OP_deref)), !dbg !1289
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1290, !tbaa !833
  %9 = icmp eq i32 %8, 0, !dbg !1290
  br i1 %9, label %24, label %10, !dbg !1292

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1293, !tbaa !833
  %12 = icmp eq i32 %11, %3, !dbg !1296
  br i1 %12, label %13, label %23, !dbg !1297

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1298, !tbaa !772
  %15 = icmp eq ptr %14, %2, !dbg !1299
  br i1 %15, label %37, label %16, !dbg !1300

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1301
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1302
  br i1 %19, label %20, label %23, !dbg !1302

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1303
  %22 = icmp eq i32 %21, 0, !dbg !1304
  br i1 %22, label %37, label %23, !dbg !1305

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1306, !tbaa !772
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1307, !tbaa !833
  br label %24, !dbg !1308

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1309
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1310, !tbaa !772
  %26 = icmp eq ptr %25, null, !dbg !1310
  br i1 %26, label %28, label %27, !dbg !1312

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1313
  br label %32, !dbg !1313

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1314, !tbaa !772
  %30 = tail call ptr @getprogname() #38, !dbg !1314
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %30) #37, !dbg !1314
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1316, !tbaa !772
  %34 = icmp eq ptr %2, null, !dbg !1316
  %35 = select i1 %34, ptr @.str.3.34, ptr @.str.2.35, !dbg !1316
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1316
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1317, !tbaa.struct !1136
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1317
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1317
  br label %37, !dbg !1318

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1318
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1319 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1329
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1328, metadata !DIExpression(), metadata !1329, metadata ptr %6, metadata !DIExpression()), !dbg !1330
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1323, metadata !DIExpression()), !dbg !1330
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1324, metadata !DIExpression()), !dbg !1330
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1325, metadata !DIExpression()), !dbg !1330
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1326, metadata !DIExpression()), !dbg !1330
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1327, metadata !DIExpression()), !dbg !1330
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1331
  call void @llvm.va_start(ptr nonnull %6), !dbg !1332
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1333, !tbaa.struct !1136
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1333
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1333
  call void @llvm.va_end(ptr nonnull %6), !dbg !1334
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1335
  ret void, !dbg !1335
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1336 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1339, !tbaa !772
  ret ptr %1, !dbg !1340
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1341 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1343, metadata !DIExpression()), !dbg !1346
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1347
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1344, metadata !DIExpression()), !dbg !1346
  %3 = icmp eq ptr %2, null, !dbg !1348
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1348
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1348
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1345, metadata !DIExpression()), !dbg !1346
  %6 = ptrtoint ptr %5 to i64, !dbg !1349
  %7 = ptrtoint ptr %0 to i64, !dbg !1349
  %8 = sub i64 %6, %7, !dbg !1349
  %9 = icmp sgt i64 %8, 6, !dbg !1351
  br i1 %9, label %10, label %19, !dbg !1352

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1353
  call void @llvm.dbg.value(metadata ptr %11, metadata !1354, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata ptr @.str.44, metadata !1359, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 7, metadata !1360, metadata !DIExpression()), !dbg !1361
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.44, i64 7), !dbg !1363
  %13 = icmp eq i32 %12, 0, !dbg !1364
  br i1 %13, label %14, label %19, !dbg !1365

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1343, metadata !DIExpression()), !dbg !1346
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.45, i64 noundef 3) #38, !dbg !1366
  %16 = icmp eq i32 %15, 0, !dbg !1369
  %17 = select i1 %16, i64 3, i64 0, !dbg !1370
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1370
  br label %19, !dbg !1370

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1346
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1345, metadata !DIExpression()), !dbg !1346
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1343, metadata !DIExpression()), !dbg !1346
  store ptr %20, ptr @program_name, align 8, !dbg !1371, !tbaa !772
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1372, !tbaa !772
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1373, !tbaa !772
  ret void, !dbg !1374
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1375 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !422 {
  %3 = alloca i32, align 4, !DIAssignID !1376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !432, metadata !DIExpression(), metadata !1376, metadata ptr %3, metadata !DIExpression()), !dbg !1377
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !1378, metadata ptr %4, metadata !DIExpression()), !dbg !1377
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !429, metadata !DIExpression()), !dbg !1377
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !430, metadata !DIExpression()), !dbg !1377
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1379
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !431, metadata !DIExpression()), !dbg !1377
  %6 = icmp eq ptr %5, %0, !dbg !1380
  br i1 %6, label %7, label %14, !dbg !1382

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1383
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1384
  call void @llvm.dbg.value(metadata ptr %4, metadata !1385, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata ptr %4, metadata !1394, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i32 0, metadata !1400, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i64 8, metadata !1401, metadata !DIExpression()), !dbg !1402
  store i64 0, ptr %4, align 8, !dbg !1404
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1405
  %9 = icmp eq i64 %8, 2, !dbg !1407
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1408
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1377
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1409
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1409
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1377
  ret ptr %15, !dbg !1409
}

; Function Attrs: nounwind
declare !dbg !1410 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1416 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1421, metadata !DIExpression()), !dbg !1424
  %2 = tail call ptr @__errno_location() #40, !dbg !1425
  %3 = load i32, ptr %2, align 4, !dbg !1425, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1422, metadata !DIExpression()), !dbg !1424
  %4 = icmp eq ptr %0, null, !dbg !1426
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1426
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1427
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1423, metadata !DIExpression()), !dbg !1424
  store i32 %3, ptr %2, align 4, !dbg !1428, !tbaa !833
  ret ptr %6, !dbg !1429
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1430 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1436, metadata !DIExpression()), !dbg !1437
  %2 = icmp eq ptr %0, null, !dbg !1438
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1438
  %4 = load i32, ptr %3, align 8, !dbg !1439, !tbaa !1440
  ret i32 %4, !dbg !1442
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1443 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1447, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1448, metadata !DIExpression()), !dbg !1449
  %3 = icmp eq ptr %0, null, !dbg !1450
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1450
  store i32 %1, ptr %4, align 8, !dbg !1451, !tbaa !1440
  ret void, !dbg !1452
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1453 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1457, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1458, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1459, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1460, metadata !DIExpression()), !dbg !1465
  %4 = icmp eq ptr %0, null, !dbg !1466
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1466
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1467
  %7 = lshr i8 %1, 5, !dbg !1468
  %8 = zext nneg i8 %7 to i64, !dbg !1468
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1469
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1461, metadata !DIExpression()), !dbg !1465
  %10 = and i8 %1, 31, !dbg !1470
  %11 = zext nneg i8 %10 to i32, !dbg !1470
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1463, metadata !DIExpression()), !dbg !1465
  %12 = load i32, ptr %9, align 4, !dbg !1471, !tbaa !833
  %13 = lshr i32 %12, %11, !dbg !1472
  %14 = and i32 %13, 1, !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1464, metadata !DIExpression()), !dbg !1465
  %15 = xor i32 %13, %2, !dbg !1474
  %16 = and i32 %15, 1, !dbg !1474
  %17 = shl nuw i32 %16, %11, !dbg !1475
  %18 = xor i32 %17, %12, !dbg !1476
  store i32 %18, ptr %9, align 4, !dbg !1476, !tbaa !833
  ret i32 %14, !dbg !1477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1478 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1482, metadata !DIExpression()), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1483, metadata !DIExpression()), !dbg !1485
  %3 = icmp eq ptr %0, null, !dbg !1486
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1488
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1482, metadata !DIExpression()), !dbg !1485
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1489
  %6 = load i32, ptr %5, align 4, !dbg !1489, !tbaa !1490
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1484, metadata !DIExpression()), !dbg !1485
  store i32 %1, ptr %5, align 4, !dbg !1491, !tbaa !1490
  ret i32 %6, !dbg !1492
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1493 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1497, metadata !DIExpression()), !dbg !1500
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1498, metadata !DIExpression()), !dbg !1500
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1499, metadata !DIExpression()), !dbg !1500
  %4 = icmp eq ptr %0, null, !dbg !1501
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1503
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1497, metadata !DIExpression()), !dbg !1500
  store i32 10, ptr %5, align 8, !dbg !1504, !tbaa !1440
  %6 = icmp ne ptr %1, null, !dbg !1505
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1507
  br i1 %8, label %10, label %9, !dbg !1507

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1508
  unreachable, !dbg !1508

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1509
  store ptr %1, ptr %11, align 8, !dbg !1510, !tbaa !1511
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1512
  store ptr %2, ptr %12, align 8, !dbg !1513, !tbaa !1514
  ret void, !dbg !1515
}

; Function Attrs: noreturn nounwind
declare !dbg !1516 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1517 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1521, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1522, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1523, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1524, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1525, metadata !DIExpression()), !dbg !1529
  %6 = icmp eq ptr %4, null, !dbg !1530
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1530
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1526, metadata !DIExpression()), !dbg !1529
  %8 = tail call ptr @__errno_location() #40, !dbg !1531
  %9 = load i32, ptr %8, align 4, !dbg !1531, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1527, metadata !DIExpression()), !dbg !1529
  %10 = load i32, ptr %7, align 8, !dbg !1532, !tbaa !1440
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1533
  %12 = load i32, ptr %11, align 4, !dbg !1533, !tbaa !1490
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1534
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1535
  %15 = load ptr, ptr %14, align 8, !dbg !1535, !tbaa !1511
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1536
  %17 = load ptr, ptr %16, align 8, !dbg !1536, !tbaa !1514
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1537
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1528, metadata !DIExpression()), !dbg !1529
  store i32 %9, ptr %8, align 4, !dbg !1538, !tbaa !833
  ret i64 %18, !dbg !1539
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1540 {
  %10 = alloca i32, align 4, !DIAssignID !1608
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1609
  %12 = alloca i32, align 4, !DIAssignID !1610
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1611
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1612
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1586, metadata !DIExpression(), metadata !1612, metadata ptr %14, metadata !DIExpression()), !dbg !1613
  %15 = alloca i32, align 4, !DIAssignID !1614
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1589, metadata !DIExpression(), metadata !1614, metadata ptr %15, metadata !DIExpression()), !dbg !1615
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1546, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1548, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1549, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1550, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1551, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1552, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1553, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1554, metadata !DIExpression()), !dbg !1616
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1617
  %17 = icmp eq i64 %16, 1, !dbg !1618
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1557, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1558, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1559, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1560, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1561, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1563, metadata !DIExpression()), !dbg !1616
  %18 = and i32 %5, 2, !dbg !1619
  %19 = icmp ne i32 %18, 0, !dbg !1619
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1619

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1620
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1621
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1622
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1561, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1559, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1558, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1557, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1549, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1554, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1553, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1550, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.label(metadata !1564), !dbg !1623
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1565, metadata !DIExpression()), !dbg !1616
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
  ], !dbg !1624

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1561, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1550, metadata !DIExpression()), !dbg !1616
  br label %101, !dbg !1625

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1561, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1550, metadata !DIExpression()), !dbg !1616
  br i1 %36, label %101, label %42, !dbg !1625

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1626
  br i1 %43, label %101, label %44, !dbg !1630

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1626, !tbaa !842
  br label %101, !dbg !1626

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !538, metadata !DIExpression(), metadata !1610, metadata ptr %12, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.assign(metadata i1 undef, metadata !539, metadata !DIExpression(), metadata !1611, metadata ptr %13, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !535, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i32 %28, metadata !536, metadata !DIExpression()), !dbg !1631
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #37, !dbg !1635
  call void @llvm.dbg.value(metadata ptr %46, metadata !537, metadata !DIExpression()), !dbg !1631
  %47 = icmp eq ptr %46, @.str.11.65, !dbg !1636
  br i1 %47, label %48, label %57, !dbg !1638

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %13, metadata !1641, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %13, metadata !1649, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 0, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 8, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i64 0, ptr %13, align 8, !dbg !1656
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1657
  %50 = icmp eq i64 %49, 3, !dbg !1659
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1660
  %54 = icmp eq i32 %28, 9, !dbg !1660
  %55 = select i1 %54, ptr @.str.10.67, ptr @.str.12.68, !dbg !1660
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1660
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1661
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1661
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1631
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1553, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.assign(metadata i1 undef, metadata !538, metadata !DIExpression(), metadata !1608, metadata ptr %10, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !539, metadata !DIExpression(), metadata !1609, metadata ptr %11, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !535, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 %28, metadata !536, metadata !DIExpression()), !dbg !1662
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #37, !dbg !1664
  call void @llvm.dbg.value(metadata ptr %59, metadata !537, metadata !DIExpression()), !dbg !1662
  %60 = icmp eq ptr %59, @.str.12.68, !dbg !1665
  br i1 %60, label %61, label %70, !dbg !1666

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1667
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %11, metadata !1641, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %11, metadata !1649, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 0, metadata !1652, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64 8, metadata !1653, metadata !DIExpression()), !dbg !1671
  store i64 0, ptr %11, align 8, !dbg !1673
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1674
  %63 = icmp eq i64 %62, 3, !dbg !1675
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1676
  %67 = icmp eq i32 %28, 9, !dbg !1676
  %68 = select i1 %67, ptr @.str.10.67, ptr @.str.12.68, !dbg !1676
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1676
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1677
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1677
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1554, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1553, metadata !DIExpression()), !dbg !1616
  br i1 %36, label %88, label %73, !dbg !1678

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1566, metadata !DIExpression()), !dbg !1679
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1556, metadata !DIExpression()), !dbg !1616
  %74 = load i8, ptr %71, align 1, !dbg !1680, !tbaa !842
  %75 = icmp eq i8 %74, 0, !dbg !1682
  br i1 %75, label %88, label %.preheader11, !dbg !1682

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1682

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1566, metadata !DIExpression()), !dbg !1679
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1556, metadata !DIExpression()), !dbg !1616
  %80 = icmp ult i64 %79, %39, !dbg !1683
  br i1 %80, label %81, label %83, !dbg !1686

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1683
  store i8 %77, ptr %82, align 1, !dbg !1683, !tbaa !842
  br label %83, !dbg !1683

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1686
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1556, metadata !DIExpression()), !dbg !1616
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1687
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1566, metadata !DIExpression()), !dbg !1679
  %86 = load i8, ptr %85, align 1, !dbg !1680, !tbaa !842
  %87 = icmp eq i8 %86, 0, !dbg !1682
  br i1 %87, label %.loopexit12, label %76, !dbg !1682, !llvm.loop !1688

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1686
  br label %88, !dbg !1690

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1691
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1560, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1558, metadata !DIExpression()), !dbg !1616
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1690
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1559, metadata !DIExpression()), !dbg !1616
  br label %101, !dbg !1692

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1561, metadata !DIExpression()), !dbg !1616
  br label %101, !dbg !1693

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1561, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1550, metadata !DIExpression()), !dbg !1616
  br label %101, !dbg !1694

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1561, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1616
  br i1 %36, label %101, label %95, !dbg !1695

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1561, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1550, metadata !DIExpression()), !dbg !1616
  br i1 %36, label %101, label %95, !dbg !1694

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1696
  br i1 %97, label %101, label %98, !dbg !1700

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1696, !tbaa !842
  br label %101, !dbg !1696

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1616
  br label %101, !dbg !1701

100:                                              ; preds = %27
  call void @abort() #39, !dbg !1702
  unreachable, !dbg !1702

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1691
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.67, %42 ], [ @.str.10.67, %44 ], [ @.str.10.67, %41 ], [ %33, %27 ], [ @.str.12.68, %95 ], [ @.str.12.68, %98 ], [ @.str.12.68, %94 ], [ @.str.10.67, %40 ], [ @.str.12.68, %91 ], [ @.str.12.68, %92 ], [ @.str.12.68, %93 ], !dbg !1616
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1616
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1561, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1559, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1558, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1554, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1553, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1550, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1571, metadata !DIExpression()), !dbg !1703
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
  br label %121, !dbg !1704

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1691
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1620
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1705
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1571, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1557, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1549, metadata !DIExpression()), !dbg !1616
  %130 = icmp eq i64 %122, -1, !dbg !1706
  br i1 %130, label %131, label %135, !dbg !1707

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1708
  %133 = load i8, ptr %132, align 1, !dbg !1708, !tbaa !842
  %134 = icmp eq i8 %133, 0, !dbg !1709
  br i1 %134, label %573, label %137, !dbg !1710

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1711
  br i1 %136, label %573, label %137, !dbg !1710

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1573, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1576, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1577, metadata !DIExpression()), !dbg !1712
  br i1 %113, label %138, label %151, !dbg !1713

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1715
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1716
  br i1 %140, label %141, label %143, !dbg !1716

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1717
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1549, metadata !DIExpression()), !dbg !1616
  br label %143, !dbg !1718

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1718
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1549, metadata !DIExpression()), !dbg !1616
  %145 = icmp ugt i64 %139, %144, !dbg !1719
  br i1 %145, label %151, label %146, !dbg !1720

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1721
  call void @llvm.dbg.value(metadata ptr %147, metadata !1722, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata ptr %106, metadata !1725, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i64 %107, metadata !1726, metadata !DIExpression()), !dbg !1727
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1729
  %149 = icmp eq i32 %148, 0, !dbg !1730
  %150 = and i1 %149, %109, !dbg !1731
  br i1 %150, label %.loopexit7, label %151, !dbg !1731

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1573, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1549, metadata !DIExpression()), !dbg !1616
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1732
  %155 = load i8, ptr %154, align 1, !dbg !1732, !tbaa !842
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1578, metadata !DIExpression()), !dbg !1712
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
  ], !dbg !1733

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1734

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1735

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1576, metadata !DIExpression()), !dbg !1712
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1739
  br i1 %159, label %176, label %160, !dbg !1739

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1741
  br i1 %161, label %162, label %164, !dbg !1745

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1741
  store i8 39, ptr %163, align 1, !dbg !1741, !tbaa !842
  br label %164, !dbg !1741

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1745
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1556, metadata !DIExpression()), !dbg !1616
  %166 = icmp ult i64 %165, %129, !dbg !1746
  br i1 %166, label %167, label %169, !dbg !1749

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1746
  store i8 36, ptr %168, align 1, !dbg !1746, !tbaa !842
  br label %169, !dbg !1746

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1749
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1556, metadata !DIExpression()), !dbg !1616
  %171 = icmp ult i64 %170, %129, !dbg !1750
  br i1 %171, label %172, label %174, !dbg !1753

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1750
  store i8 39, ptr %173, align 1, !dbg !1750, !tbaa !842
  br label %174, !dbg !1750

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1753
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1565, metadata !DIExpression()), !dbg !1616
  br label %176, !dbg !1754

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1616
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1556, metadata !DIExpression()), !dbg !1616
  %179 = icmp ult i64 %177, %129, !dbg !1755
  br i1 %179, label %180, label %182, !dbg !1758

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1755
  store i8 92, ptr %181, align 1, !dbg !1755, !tbaa !842
  br label %182, !dbg !1755

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1556, metadata !DIExpression()), !dbg !1616
  br i1 %110, label %184, label %476, !dbg !1759

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1761
  %186 = icmp ult i64 %185, %152, !dbg !1762
  br i1 %186, label %187, label %433, !dbg !1763

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1764
  %189 = load i8, ptr %188, align 1, !dbg !1764, !tbaa !842
  %190 = add i8 %189, -48, !dbg !1765
  %191 = icmp ult i8 %190, 10, !dbg !1765
  br i1 %191, label %192, label %433, !dbg !1765

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1766
  br i1 %193, label %194, label %196, !dbg !1770

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1766
  store i8 48, ptr %195, align 1, !dbg !1766, !tbaa !842
  br label %196, !dbg !1766

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1770
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1556, metadata !DIExpression()), !dbg !1616
  %198 = icmp ult i64 %197, %129, !dbg !1771
  br i1 %198, label %199, label %201, !dbg !1774

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1771
  store i8 48, ptr %200, align 1, !dbg !1771, !tbaa !842
  br label %201, !dbg !1771

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1774
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1556, metadata !DIExpression()), !dbg !1616
  br label %433, !dbg !1775

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1776

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1777

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1778

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1780

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1782
  %209 = icmp ult i64 %208, %152, !dbg !1783
  br i1 %209, label %210, label %433, !dbg !1784

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1785
  %212 = load i8, ptr %211, align 1, !dbg !1785, !tbaa !842
  %213 = icmp eq i8 %212, 63, !dbg !1786
  br i1 %213, label %214, label %433, !dbg !1787

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1788
  %216 = load i8, ptr %215, align 1, !dbg !1788, !tbaa !842
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
  ], !dbg !1789

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1790

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1578, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1571, metadata !DIExpression()), !dbg !1703
  %219 = icmp ult i64 %123, %129, !dbg !1792
  br i1 %219, label %220, label %222, !dbg !1795

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1792
  store i8 63, ptr %221, align 1, !dbg !1792, !tbaa !842
  br label %222, !dbg !1792

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1556, metadata !DIExpression()), !dbg !1616
  %224 = icmp ult i64 %223, %129, !dbg !1796
  br i1 %224, label %225, label %227, !dbg !1799

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1796
  store i8 34, ptr %226, align 1, !dbg !1796, !tbaa !842
  br label %227, !dbg !1796

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1556, metadata !DIExpression()), !dbg !1616
  %229 = icmp ult i64 %228, %129, !dbg !1800
  br i1 %229, label %230, label %232, !dbg !1803

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1800
  store i8 34, ptr %231, align 1, !dbg !1800, !tbaa !842
  br label %232, !dbg !1800

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1803
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1556, metadata !DIExpression()), !dbg !1616
  %234 = icmp ult i64 %233, %129, !dbg !1804
  br i1 %234, label %235, label %237, !dbg !1807

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1804
  store i8 63, ptr %236, align 1, !dbg !1804, !tbaa !842
  br label %237, !dbg !1804

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1807
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1556, metadata !DIExpression()), !dbg !1616
  br label %433, !dbg !1808

239:                                              ; preds = %151
  br label %249, !dbg !1809

240:                                              ; preds = %151
  br label %249, !dbg !1810

241:                                              ; preds = %151
  br label %247, !dbg !1811

242:                                              ; preds = %151
  br label %247, !dbg !1812

243:                                              ; preds = %151
  br label %249, !dbg !1813

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1814

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1815

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1818

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1820
  call void @llvm.dbg.label(metadata !1579), !dbg !1821
  br i1 %118, label %.loopexit8, label %249, !dbg !1822

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1820
  call void @llvm.dbg.label(metadata !1582), !dbg !1824
  br i1 %108, label %487, label %444, !dbg !1825

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1826

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1827, !tbaa !842
  %254 = icmp eq i8 %253, 0, !dbg !1829
  br i1 %254, label %255, label %433, !dbg !1830

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1831
  br i1 %256, label %257, label %433, !dbg !1833

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1577, metadata !DIExpression()), !dbg !1712
  br label %258, !dbg !1834

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1577, metadata !DIExpression()), !dbg !1712
  br i1 %115, label %260, label %433, !dbg !1835

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1837

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1577, metadata !DIExpression()), !dbg !1712
  br i1 %115, label %262, label %433, !dbg !1838

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1839

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1842
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1844
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1844
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1557, metadata !DIExpression()), !dbg !1616
  %269 = icmp ult i64 %123, %268, !dbg !1845
  br i1 %269, label %270, label %272, !dbg !1848

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1845
  store i8 39, ptr %271, align 1, !dbg !1845, !tbaa !842
  br label %272, !dbg !1845

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1848
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1556, metadata !DIExpression()), !dbg !1616
  %274 = icmp ult i64 %273, %268, !dbg !1849
  br i1 %274, label %275, label %277, !dbg !1852

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1849
  store i8 92, ptr %276, align 1, !dbg !1849, !tbaa !842
  br label %277, !dbg !1849

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1556, metadata !DIExpression()), !dbg !1616
  %279 = icmp ult i64 %278, %268, !dbg !1853
  br i1 %279, label %280, label %282, !dbg !1856

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1853
  store i8 39, ptr %281, align 1, !dbg !1853, !tbaa !842
  br label %282, !dbg !1853

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1856
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1565, metadata !DIExpression()), !dbg !1616
  br label %433, !dbg !1857

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1858

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1583, metadata !DIExpression()), !dbg !1859
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !1860
  %287 = load ptr, ptr %286, align 8, !dbg !1860, !tbaa !772
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1860
  %290 = load i16, ptr %289, align 2, !dbg !1860, !tbaa !874
  %291 = and i16 %290, 16384, !dbg !1860
  %292 = icmp ne i16 %291, 0, !dbg !1862
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1585, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1859
  br label %334, !dbg !1863

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %14, metadata !1641, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata ptr %14, metadata !1649, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 0, metadata !1652, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 8, metadata !1653, metadata !DIExpression()), !dbg !1867
  store i64 0, ptr %14, align 8, !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1583, metadata !DIExpression()), !dbg !1859
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1585, metadata !DIExpression()), !dbg !1859
  %294 = icmp eq i64 %152, -1, !dbg !1870
  br i1 %294, label %295, label %297, !dbg !1872

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1873
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1549, metadata !DIExpression()), !dbg !1616
  br label %297, !dbg !1874

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1549, metadata !DIExpression()), !dbg !1616
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1875
  %299 = sub i64 %298, %128, !dbg !1876
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !1877
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1593, metadata !DIExpression()), !dbg !1615
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1878

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1583, metadata !DIExpression()), !dbg !1859
  %302 = icmp ult i64 %128, %298, !dbg !1879
  br i1 %302, label %.preheader5, label %329, !dbg !1881

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1882

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1585, metadata !DIExpression()), !dbg !1859
  br label %329, !dbg !1883

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1583, metadata !DIExpression()), !dbg !1859
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1885
  %308 = load i8, ptr %307, align 1, !dbg !1885, !tbaa !842
  %309 = icmp eq i8 %308, 0, !dbg !1881
  br i1 %309, label %.loopexit6, label %310, !dbg !1882

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1886
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1583, metadata !DIExpression()), !dbg !1859
  %312 = add i64 %311, %128, !dbg !1887
  %313 = icmp eq i64 %311, %299, !dbg !1879
  br i1 %313, label %.loopexit6, label %304, !dbg !1881, !llvm.loop !1888

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1594, metadata !DIExpression()), !dbg !1889
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1890
  %317 = and i1 %316, %109, !dbg !1890
  br i1 %317, label %.preheader3, label %325, !dbg !1890

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1891

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1594, metadata !DIExpression()), !dbg !1889
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1892
  %321 = load i8, ptr %320, align 1, !dbg !1892, !tbaa !842
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1894

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1594, metadata !DIExpression()), !dbg !1889
  %324 = icmp eq i64 %323, %300, !dbg !1896
  br i1 %324, label %.loopexit4, label %318, !dbg !1891, !llvm.loop !1897

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1899

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1899, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %326, metadata !1901, metadata !DIExpression()), !dbg !1909
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !1911
  %328 = icmp ne i32 %327, 0, !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1585, metadata !DIExpression()), !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1583, metadata !DIExpression()), !dbg !1859
  br label %329, !dbg !1913

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1914

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1585, metadata !DIExpression()), !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1583, metadata !DIExpression()), !dbg !1859
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1914
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1915
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1585, metadata !DIExpression()), !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1583, metadata !DIExpression()), !dbg !1859
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1914
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1915
  call void @llvm.dbg.label(metadata !1607), !dbg !1916
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1917
  br label %624, !dbg !1917

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1712
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1919
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1585, metadata !DIExpression()), !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1583, metadata !DIExpression()), !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1549, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1577, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1712
  %338 = icmp ult i64 %336, 2, !dbg !1920
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1921
  br i1 %340, label %433, label %341, !dbg !1921

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1602, metadata !DIExpression()), !dbg !1923
  br label %343, !dbg !1924

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1616
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1703
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1578, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1573, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1571, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1556, metadata !DIExpression()), !dbg !1616
  br i1 %339, label %394, label %350, !dbg !1925

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !1930

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1576, metadata !DIExpression()), !dbg !1712
  %352 = select i1 %110, i1 true, i1 %345, !dbg !1933
  br i1 %352, label %369, label %353, !dbg !1933

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !1935
  br i1 %354, label %355, label %357, !dbg !1939

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1935
  store i8 39, ptr %356, align 1, !dbg !1935, !tbaa !842
  br label %357, !dbg !1935

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1556, metadata !DIExpression()), !dbg !1616
  %359 = icmp ult i64 %358, %129, !dbg !1940
  br i1 %359, label %360, label %362, !dbg !1943

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !1940
  store i8 36, ptr %361, align 1, !dbg !1940, !tbaa !842
  br label %362, !dbg !1940

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1556, metadata !DIExpression()), !dbg !1616
  %364 = icmp ult i64 %363, %129, !dbg !1944
  br i1 %364, label %365, label %367, !dbg !1947

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !1944
  store i8 39, ptr %366, align 1, !dbg !1944, !tbaa !842
  br label %367, !dbg !1944

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !1947
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1565, metadata !DIExpression()), !dbg !1616
  br label %369, !dbg !1948

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1616
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1556, metadata !DIExpression()), !dbg !1616
  %372 = icmp ult i64 %370, %129, !dbg !1949
  br i1 %372, label %373, label %375, !dbg !1952

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !1949
  store i8 92, ptr %374, align 1, !dbg !1949, !tbaa !842
  br label %375, !dbg !1949

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1556, metadata !DIExpression()), !dbg !1616
  %377 = icmp ult i64 %376, %129, !dbg !1953
  br i1 %377, label %378, label %382, !dbg !1956

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !1953
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !1953
  store i8 %380, ptr %381, align 1, !dbg !1953, !tbaa !842
  br label %382, !dbg !1953

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !1956
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1556, metadata !DIExpression()), !dbg !1616
  %384 = icmp ult i64 %383, %129, !dbg !1957
  br i1 %384, label %385, label %390, !dbg !1960

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !1957
  %388 = or disjoint i8 %387, 48, !dbg !1957
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !1957
  store i8 %388, ptr %389, align 1, !dbg !1957, !tbaa !842
  br label %390, !dbg !1957

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !1960
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1556, metadata !DIExpression()), !dbg !1616
  %392 = and i8 %349, 7, !dbg !1961
  %393 = or disjoint i8 %392, 48, !dbg !1962
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1578, metadata !DIExpression()), !dbg !1712
  br label %401, !dbg !1963

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !1964

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !1965
  br i1 %396, label %397, label %399, !dbg !1970

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1965
  store i8 92, ptr %398, align 1, !dbg !1965, !tbaa !842
  br label %399, !dbg !1965

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1573, metadata !DIExpression()), !dbg !1712
  br label %401, !dbg !1971

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1616
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1578, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1573, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1556, metadata !DIExpression()), !dbg !1616
  %407 = add i64 %346, 1, !dbg !1972
  %408 = icmp ugt i64 %342, %407, !dbg !1974
  br i1 %408, label %409, label %.loopexit2, !dbg !1975

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !1976
  %411 = select i1 %410, i1 true, i1 %405, !dbg !1976
  br i1 %411, label %423, label %412, !dbg !1976

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !1979
  br i1 %413, label %414, label %416, !dbg !1983

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !1979
  store i8 39, ptr %415, align 1, !dbg !1979, !tbaa !842
  br label %416, !dbg !1979

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1556, metadata !DIExpression()), !dbg !1616
  %418 = icmp ult i64 %417, %129, !dbg !1984
  br i1 %418, label %419, label %421, !dbg !1987

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !1984
  store i8 39, ptr %420, align 1, !dbg !1984, !tbaa !842
  br label %421, !dbg !1984

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !1987
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1565, metadata !DIExpression()), !dbg !1616
  br label %423, !dbg !1988

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !1989
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1556, metadata !DIExpression()), !dbg !1616
  %426 = icmp ult i64 %424, %129, !dbg !1990
  br i1 %426, label %427, label %429, !dbg !1993

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !1990
  store i8 %406, ptr %428, align 1, !dbg !1990, !tbaa !842
  br label %429, !dbg !1990

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !1993
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1571, metadata !DIExpression()), !dbg !1703
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !1994
  %432 = load i8, ptr %431, align 1, !dbg !1994, !tbaa !842
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1578, metadata !DIExpression()), !dbg !1712
  br label %343, !dbg !1995, !llvm.loop !1996

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !1999
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1616
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1620
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1703
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1712
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1578, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1577, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1573, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1571, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1557, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1549, metadata !DIExpression()), !dbg !1616
  br i1 %111, label %455, label %444, !dbg !2000

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
  br i1 %120, label %456, label %476, !dbg !2002

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2003

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
  %467 = lshr i8 %458, 5, !dbg !2004
  %468 = zext nneg i8 %467 to i64, !dbg !2004
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2005
  %470 = load i32, ptr %469, align 4, !dbg !2005, !tbaa !833
  %471 = and i8 %458, 31, !dbg !2006
  %472 = zext nneg i8 %471 to i32, !dbg !2006
  %473 = shl nuw i32 1, %472, !dbg !2007
  %474 = and i32 %470, %473, !dbg !2007
  %475 = icmp eq i32 %474, 0, !dbg !2007
  br i1 %475, label %476, label %487, !dbg !2008

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
  br i1 %153, label %487, label %523, !dbg !2009

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !1999
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1616
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1620
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2010
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1712
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1578, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1577, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1571, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1557, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1549, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.label(metadata !1605), !dbg !2011
  br i1 %109, label %.loopexit8, label %497, !dbg !2012

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1576, metadata !DIExpression()), !dbg !1712
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2014
  br i1 %498, label %515, label %499, !dbg !2014

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2016
  br i1 %500, label %501, label %503, !dbg !2020

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2016
  store i8 39, ptr %502, align 1, !dbg !2016, !tbaa !842
  br label %503, !dbg !2016

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2020
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1556, metadata !DIExpression()), !dbg !1616
  %505 = icmp ult i64 %504, %496, !dbg !2021
  br i1 %505, label %506, label %508, !dbg !2024

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2021
  store i8 36, ptr %507, align 1, !dbg !2021, !tbaa !842
  br label %508, !dbg !2021

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1556, metadata !DIExpression()), !dbg !1616
  %510 = icmp ult i64 %509, %496, !dbg !2025
  br i1 %510, label %511, label %513, !dbg !2028

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2025
  store i8 39, ptr %512, align 1, !dbg !2025, !tbaa !842
  br label %513, !dbg !2025

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1565, metadata !DIExpression()), !dbg !1616
  br label %515, !dbg !2029

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1712
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1556, metadata !DIExpression()), !dbg !1616
  %518 = icmp ult i64 %516, %496, !dbg !2030
  br i1 %518, label %519, label %521, !dbg !2033

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2030
  store i8 92, ptr %520, align 1, !dbg !2030, !tbaa !842
  br label %521, !dbg !2030

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1578, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1577, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1571, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1557, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1549, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.label(metadata !1606), !dbg !2034
  br label %547, !dbg !2035

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1616
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1712
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1703
  br label %523, !dbg !2035

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !1999
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1616
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1620
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2010
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2038
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1578, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1577, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1571, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1557, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1549, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.label(metadata !1606), !dbg !2034
  %534 = xor i1 %528, true, !dbg !2035
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2035
  br i1 %535, label %547, label %536, !dbg !2035

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2039
  br i1 %537, label %538, label %540, !dbg !2043

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2039
  store i8 39, ptr %539, align 1, !dbg !2039, !tbaa !842
  br label %540, !dbg !2039

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1556, metadata !DIExpression()), !dbg !1616
  %542 = icmp ult i64 %541, %533, !dbg !2044
  br i1 %542, label %543, label %545, !dbg !2047

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2044
  store i8 39, ptr %544, align 1, !dbg !2044, !tbaa !842
  br label %545, !dbg !2044

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2047
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1565, metadata !DIExpression()), !dbg !1616
  br label %547, !dbg !2048

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1712
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1556, metadata !DIExpression()), !dbg !1616
  %557 = icmp ult i64 %555, %548, !dbg !2049
  br i1 %557, label %558, label %560, !dbg !2052

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2049
  store i8 %549, ptr %559, align 1, !dbg !2049, !tbaa !842
  br label %560, !dbg !2049

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2052
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1556, metadata !DIExpression()), !dbg !1616
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1616
  br label %563, !dbg !2054

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !1999
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1616
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1620
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2010
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1571, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1557, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1549, metadata !DIExpression()), !dbg !1616
  %572 = add i64 %570, 1, !dbg !2055
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1571, metadata !DIExpression()), !dbg !1703
  br label %121, !dbg !2056, !llvm.loop !2057

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1691
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1620
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1547, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1562, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1557, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1556, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1549, metadata !DIExpression()), !dbg !1616
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2059
  %575 = xor i1 %109, true, !dbg !2061
  %576 = or i1 %574, %575, !dbg !2061
  %577 = or i1 %576, %110, !dbg !2061
  br i1 %577, label %578, label %.loopexit13, !dbg !2061

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2062
  %580 = xor i1 %.lcssa38, true, !dbg !2062
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2062
  br i1 %581, label %589, label %582, !dbg !2062

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2064

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1620
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2066
  br label %638, !dbg !2068

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2069
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2071
  br i1 %588, label %27, label %589, !dbg !2071

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1616
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1691
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2072
  %592 = or i1 %591, %590, !dbg !2074
  br i1 %592, label %608, label %593, !dbg !2074

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1558, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1556, metadata !DIExpression()), !dbg !1616
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2075, !tbaa !842
  %595 = icmp eq i8 %594, 0, !dbg !2078
  br i1 %595, label %608, label %.preheader, !dbg !2078

.preheader:                                       ; preds = %593
  br label %596, !dbg !2078

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1558, metadata !DIExpression()), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1556, metadata !DIExpression()), !dbg !1616
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2079
  br i1 %600, label %601, label %603, !dbg !2082

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2079
  store i8 %597, ptr %602, align 1, !dbg !2079, !tbaa !842
  br label %603, !dbg !2079

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1556, metadata !DIExpression()), !dbg !1616
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2083
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1558, metadata !DIExpression()), !dbg !1616
  %606 = load i8, ptr %605, align 1, !dbg !2075, !tbaa !842
  %607 = icmp eq i8 %606, 0, !dbg !2078
  br i1 %607, label %.loopexit, label %596, !dbg !2078, !llvm.loop !2084

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2082
  br label %608, !dbg !2086

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1691
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1556, metadata !DIExpression()), !dbg !1616
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2086
  br i1 %610, label %611, label %638, !dbg !2088

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2089
  store i8 0, ptr %612, align 1, !dbg !2090, !tbaa !842
  br label %638, !dbg !2089

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1607), !dbg !1916
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2091
  br i1 %614, label %624, label %630, !dbg !1917

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1712
  br label %615, !dbg !2091

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2091

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2091

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1607), !dbg !1916
  %622 = icmp eq i32 %616, 2, !dbg !2091
  %623 = select i1 %619, i32 4, i32 2, !dbg !1917
  br i1 %622, label %624, label %630, !dbg !1917

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1917

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1718
  br label %630, !dbg !2092

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1550, metadata !DIExpression()), !dbg !1616
  %636 = and i32 %5, -3, !dbg !2092
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2093
  br label %638, !dbg !2094

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2095
}

; Function Attrs: nounwind
declare !dbg !2096 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2099 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2102 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2104 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2108, metadata !DIExpression()), !dbg !2111
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2109, metadata !DIExpression()), !dbg !2111
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2110, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %0, metadata !2112, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %1, metadata !2117, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata ptr null, metadata !2118, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata ptr %2, metadata !2119, metadata !DIExpression()), !dbg !2125
  %4 = icmp eq ptr %2, null, !dbg !2127
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2127
  call void @llvm.dbg.value(metadata ptr %5, metadata !2120, metadata !DIExpression()), !dbg !2125
  %6 = tail call ptr @__errno_location() #40, !dbg !2128
  %7 = load i32, ptr %6, align 4, !dbg !2128, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %7, metadata !2121, metadata !DIExpression()), !dbg !2125
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2129
  %9 = load i32, ptr %8, align 4, !dbg !2129, !tbaa !1490
  %10 = or i32 %9, 1, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %10, metadata !2122, metadata !DIExpression()), !dbg !2125
  %11 = load i32, ptr %5, align 8, !dbg !2131, !tbaa !1440
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2132
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2133
  %14 = load ptr, ptr %13, align 8, !dbg !2133, !tbaa !1511
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2134
  %16 = load ptr, ptr %15, align 8, !dbg !2134, !tbaa !1514
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2135
  %18 = add i64 %17, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %18, metadata !2123, metadata !DIExpression()), !dbg !2125
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2137
  call void @llvm.dbg.value(metadata ptr %19, metadata !2124, metadata !DIExpression()), !dbg !2125
  %20 = load i32, ptr %5, align 8, !dbg !2138, !tbaa !1440
  %21 = load ptr, ptr %13, align 8, !dbg !2139, !tbaa !1511
  %22 = load ptr, ptr %15, align 8, !dbg !2140, !tbaa !1514
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2141
  store i32 %7, ptr %6, align 4, !dbg !2142, !tbaa !833
  ret ptr %19, !dbg !2143
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2113 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2112, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2117, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2118, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2119, metadata !DIExpression()), !dbg !2144
  %5 = icmp eq ptr %3, null, !dbg !2145
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2145
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2120, metadata !DIExpression()), !dbg !2144
  %7 = tail call ptr @__errno_location() #40, !dbg !2146
  %8 = load i32, ptr %7, align 4, !dbg !2146, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2121, metadata !DIExpression()), !dbg !2144
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2147
  %10 = load i32, ptr %9, align 4, !dbg !2147, !tbaa !1490
  %11 = icmp eq ptr %2, null, !dbg !2148
  %12 = zext i1 %11 to i32, !dbg !2148
  %13 = or i32 %10, %12, !dbg !2149
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2122, metadata !DIExpression()), !dbg !2144
  %14 = load i32, ptr %6, align 8, !dbg !2150, !tbaa !1440
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2151
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2152
  %17 = load ptr, ptr %16, align 8, !dbg !2152, !tbaa !1511
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2153
  %19 = load ptr, ptr %18, align 8, !dbg !2153, !tbaa !1514
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2154
  %21 = add i64 %20, 1, !dbg !2155
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2123, metadata !DIExpression()), !dbg !2144
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2156
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2124, metadata !DIExpression()), !dbg !2144
  %23 = load i32, ptr %6, align 8, !dbg !2157, !tbaa !1440
  %24 = load ptr, ptr %16, align 8, !dbg !2158, !tbaa !1511
  %25 = load ptr, ptr %18, align 8, !dbg !2159, !tbaa !1514
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2160
  store i32 %8, ptr %7, align 4, !dbg !2161, !tbaa !833
  br i1 %11, label %28, label %27, !dbg !2162

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2163, !tbaa !2165
  br label %28, !dbg !2166

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2167
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2168 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2173, !tbaa !772
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2170, metadata !DIExpression()), !dbg !2174
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2171, metadata !DIExpression()), !dbg !2175
  %2 = load i32, ptr @nslots, align 4, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2171, metadata !DIExpression()), !dbg !2175
  %3 = icmp sgt i32 %2, 1, !dbg !2176
  br i1 %3, label %4, label %6, !dbg !2178

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2176
  br label %10, !dbg !2178

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2179

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2179
  %8 = load ptr, ptr %7, align 8, !dbg !2179, !tbaa !2181
  %9 = icmp eq ptr %8, @slot0, !dbg !2183
  br i1 %9, label %17, label %16, !dbg !2184

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2171, metadata !DIExpression()), !dbg !2175
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2185
  %13 = load ptr, ptr %12, align 8, !dbg !2185, !tbaa !2181
  tail call void @free(ptr noundef %13) #37, !dbg !2186
  %14 = add nuw nsw i64 %11, 1, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2171, metadata !DIExpression()), !dbg !2175
  %15 = icmp eq i64 %14, %5, !dbg !2176
  br i1 %15, label %.loopexit, label %10, !dbg !2178, !llvm.loop !2188

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2190
  store i64 256, ptr @slotvec0, align 8, !dbg !2192, !tbaa !2193
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2194, !tbaa !2181
  br label %17, !dbg !2195

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2196
  br i1 %18, label %20, label %19, !dbg !2198

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2199
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2201, !tbaa !772
  br label %20, !dbg !2202

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2203, !tbaa !833
  ret void, !dbg !2204
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2205 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2208 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2210, metadata !DIExpression()), !dbg !2212
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2211, metadata !DIExpression()), !dbg !2212
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2213
  ret ptr %3, !dbg !2214
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2215 {
  %5 = alloca i64, align 8, !DIAssignID !2235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2229, metadata !DIExpression(), metadata !2235, metadata ptr %5, metadata !DIExpression()), !dbg !2236
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2219, metadata !DIExpression()), !dbg !2237
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2220, metadata !DIExpression()), !dbg !2237
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2221, metadata !DIExpression()), !dbg !2237
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2222, metadata !DIExpression()), !dbg !2237
  %6 = tail call ptr @__errno_location() #40, !dbg !2238
  %7 = load i32, ptr %6, align 4, !dbg !2238, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2223, metadata !DIExpression()), !dbg !2237
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2239, !tbaa !772
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2224, metadata !DIExpression()), !dbg !2237
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2225, metadata !DIExpression()), !dbg !2237
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2240
  br i1 %9, label %10, label %11, !dbg !2240

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2242
  unreachable, !dbg !2242

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2243, !tbaa !833
  %13 = icmp sgt i32 %12, %0, !dbg !2244
  br i1 %13, label %32, label %14, !dbg !2245

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2246
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2236
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2247
  %16 = sext i32 %12 to i64, !dbg !2248
  store i64 %16, ptr %5, align 8, !dbg !2249, !tbaa !2165, !DIAssignID !2250
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2229, metadata !DIExpression(), metadata !2250, metadata ptr %5, metadata !DIExpression()), !dbg !2236
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2251
  %18 = add nuw nsw i32 %0, 1, !dbg !2252
  %19 = sub i32 %18, %12, !dbg !2253
  %20 = sext i32 %19 to i64, !dbg !2254
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2255
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2224, metadata !DIExpression()), !dbg !2237
  store ptr %21, ptr @slotvec, align 8, !dbg !2256, !tbaa !772
  br i1 %15, label %22, label %23, !dbg !2257

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2258, !tbaa.struct !2260
  br label %23, !dbg !2261

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2262, !tbaa !833
  %25 = sext i32 %24 to i64, !dbg !2263
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2263
  %27 = load i64, ptr %5, align 8, !dbg !2264, !tbaa !2165
  %28 = sub nsw i64 %27, %25, !dbg !2265
  %29 = shl i64 %28, 4, !dbg !2266
  call void @llvm.dbg.value(metadata ptr %26, metadata !1649, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 0, metadata !1652, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %29, metadata !1653, metadata !DIExpression()), !dbg !2267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2269
  %30 = load i64, ptr %5, align 8, !dbg !2270, !tbaa !2165
  %31 = trunc i64 %30 to i32, !dbg !2270
  store i32 %31, ptr @nslots, align 4, !dbg !2271, !tbaa !833
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2272
  br label %32, !dbg !2273

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2237
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2224, metadata !DIExpression()), !dbg !2237
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2274
  %36 = load i64, ptr %35, align 8, !dbg !2275, !tbaa !2193
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2230, metadata !DIExpression()), !dbg !2276
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2277
  %38 = load ptr, ptr %37, align 8, !dbg !2277, !tbaa !2181
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2232, metadata !DIExpression()), !dbg !2276
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2278
  %40 = load i32, ptr %39, align 4, !dbg !2278, !tbaa !1490
  %41 = or i32 %40, 1, !dbg !2279
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2233, metadata !DIExpression()), !dbg !2276
  %42 = load i32, ptr %3, align 8, !dbg !2280, !tbaa !1440
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2281
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2282
  %45 = load ptr, ptr %44, align 8, !dbg !2282, !tbaa !1511
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2283
  %47 = load ptr, ptr %46, align 8, !dbg !2283, !tbaa !1514
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2234, metadata !DIExpression()), !dbg !2276
  %49 = icmp ugt i64 %36, %48, !dbg !2285
  br i1 %49, label %60, label %50, !dbg !2287

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2288
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2230, metadata !DIExpression()), !dbg !2276
  store i64 %51, ptr %35, align 8, !dbg !2290, !tbaa !2193
  %52 = icmp eq ptr %38, @slot0, !dbg !2291
  br i1 %52, label %54, label %53, !dbg !2293

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2294
  br label %54, !dbg !2294

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2295
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2232, metadata !DIExpression()), !dbg !2276
  store ptr %55, ptr %37, align 8, !dbg !2296, !tbaa !2181
  %56 = load i32, ptr %3, align 8, !dbg !2297, !tbaa !1440
  %57 = load ptr, ptr %44, align 8, !dbg !2298, !tbaa !1511
  %58 = load ptr, ptr %46, align 8, !dbg !2299, !tbaa !1514
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2300
  br label %60, !dbg !2301

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2276
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2232, metadata !DIExpression()), !dbg !2276
  store i32 %7, ptr %6, align 4, !dbg !2302, !tbaa !833
  ret ptr %61, !dbg !2303
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2304 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2308, metadata !DIExpression()), !dbg !2311
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2309, metadata !DIExpression()), !dbg !2311
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2310, metadata !DIExpression()), !dbg !2311
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2312
  ret ptr %4, !dbg !2313
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2316, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata ptr %0, metadata !2211, metadata !DIExpression()), !dbg !2318
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2320
  ret ptr %2, !dbg !2321
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2322 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2326, metadata !DIExpression()), !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2327, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata ptr %0, metadata !2309, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i64 %1, metadata !2310, metadata !DIExpression()), !dbg !2329
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2331
  ret ptr %3, !dbg !2332
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2333 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2341
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2340, metadata !DIExpression(), metadata !2341, metadata ptr %4, metadata !DIExpression()), !dbg !2342
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2337, metadata !DIExpression()), !dbg !2342
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2338, metadata !DIExpression()), !dbg !2342
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2339, metadata !DIExpression()), !dbg !2342
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2356, !alias.scope !2344, !DIAssignID !2357
  call void @llvm.dbg.assign(metadata i8 0, metadata !2340, metadata !DIExpression(), metadata !2357, metadata ptr %4, metadata !DIExpression()), !dbg !2342
  %5 = icmp eq i32 %1, 10, !dbg !2358
  br i1 %5, label %6, label %7, !dbg !2360

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2361, !noalias !2344
  unreachable, !dbg !2361

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2362, !tbaa !1440, !alias.scope !2344, !DIAssignID !2363
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2340, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2363, metadata ptr %4, metadata !DIExpression()), !dbg !2342
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2364
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2365
  ret ptr %8, !dbg !2366
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2367 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2375, metadata !DIExpression(), metadata !2376, metadata ptr %5, metadata !DIExpression()), !dbg !2377
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2371, metadata !DIExpression()), !dbg !2377
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2372, metadata !DIExpression()), !dbg !2377
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2373, metadata !DIExpression()), !dbg !2377
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2374, metadata !DIExpression()), !dbg !2377
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2379), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2353, metadata !DIExpression()), !dbg !2385
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2385, !alias.scope !2379, !DIAssignID !2386
  call void @llvm.dbg.assign(metadata i8 0, metadata !2375, metadata !DIExpression(), metadata !2386, metadata ptr %5, metadata !DIExpression()), !dbg !2377
  %6 = icmp eq i32 %1, 10, !dbg !2387
  br i1 %6, label %7, label %8, !dbg !2388

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2389, !noalias !2379
  unreachable, !dbg !2389

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2390, !tbaa !1440, !alias.scope !2379, !DIAssignID !2391
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2375, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2391, metadata ptr %5, metadata !DIExpression()), !dbg !2377
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2392
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2393
  ret ptr %9, !dbg !2394
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2395 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2401
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2399, metadata !DIExpression()), !dbg !2402
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2340, metadata !DIExpression(), metadata !2401, metadata ptr %3, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 0, metadata !2337, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %0, metadata !2338, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata ptr %1, metadata !2339, metadata !DIExpression()), !dbg !2403
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2353, metadata !DIExpression()), !dbg !2412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2412, !alias.scope !2406, !DIAssignID !2413
  call void @llvm.dbg.assign(metadata i8 0, metadata !2340, metadata !DIExpression(), metadata !2413, metadata ptr %3, metadata !DIExpression()), !dbg !2403
  %4 = icmp eq i32 %0, 10, !dbg !2414
  br i1 %4, label %5, label %6, !dbg !2415

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2416, !noalias !2406
  unreachable, !dbg !2416

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2417, !tbaa !1440, !alias.scope !2406, !DIAssignID !2418
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2340, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2418, metadata ptr %3, metadata !DIExpression()), !dbg !2403
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2419
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2420
  ret ptr %7, !dbg !2421
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2422 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2429
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()), !dbg !2430
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2427, metadata !DIExpression()), !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2375, metadata !DIExpression(), metadata !2429, metadata ptr %4, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 0, metadata !2371, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %1, metadata !2373, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %2, metadata !2374, metadata !DIExpression()), !dbg !2431
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434), !dbg !2437
  call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2353, metadata !DIExpression()), !dbg !2440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2440, !alias.scope !2434, !DIAssignID !2441
  call void @llvm.dbg.assign(metadata i8 0, metadata !2375, metadata !DIExpression(), metadata !2441, metadata ptr %4, metadata !DIExpression()), !dbg !2431
  %5 = icmp eq i32 %0, 10, !dbg !2442
  br i1 %5, label %6, label %7, !dbg !2443

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2444, !noalias !2434
  unreachable, !dbg !2444

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2445, !tbaa !1440, !alias.scope !2434, !DIAssignID !2446
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2375, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2446, metadata ptr %4, metadata !DIExpression()), !dbg !2431
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2447
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2448
  ret ptr %8, !dbg !2449
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2450 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2458
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2457, metadata !DIExpression(), metadata !2458, metadata ptr %4, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2454, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2455, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2461, !tbaa.struct !2462, !DIAssignID !2463
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2457, metadata !DIExpression(), metadata !2463, metadata ptr %4, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1457, metadata !DIExpression()), !dbg !2464
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1458, metadata !DIExpression()), !dbg !2464
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1459, metadata !DIExpression()), !dbg !2464
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1460, metadata !DIExpression()), !dbg !2464
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2466
  %6 = lshr i8 %2, 5, !dbg !2467
  %7 = zext nneg i8 %6 to i64, !dbg !2467
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2468
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1461, metadata !DIExpression()), !dbg !2464
  %9 = and i8 %2, 31, !dbg !2469
  %10 = zext nneg i8 %9 to i32, !dbg !2469
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1463, metadata !DIExpression()), !dbg !2464
  %11 = load i32, ptr %8, align 4, !dbg !2470, !tbaa !833
  %12 = lshr i32 %11, %10, !dbg !2471
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1464, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2464
  %13 = and i32 %12, 1, !dbg !2472
  %14 = xor i32 %13, 1, !dbg !2472
  %15 = shl nuw i32 %14, %10, !dbg !2473
  %16 = xor i32 %15, %11, !dbg !2474
  store i32 %16, ptr %8, align 4, !dbg !2474, !tbaa !833
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2475
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2476
  ret ptr %17, !dbg !2477
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2478 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2484
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2482, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2457, metadata !DIExpression(), metadata !2484, metadata ptr %3, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %0, metadata !2454, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 -1, metadata !2455, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 %1, metadata !2456, metadata !DIExpression()), !dbg !2486
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2489, !tbaa.struct !2462, !DIAssignID !2490
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2457, metadata !DIExpression(), metadata !2490, metadata ptr %3, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %3, metadata !1457, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 %1, metadata !1458, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 1, metadata !1459, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 %1, metadata !1460, metadata !DIExpression()), !dbg !2491
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2493
  %5 = lshr i8 %1, 5, !dbg !2494
  %6 = zext nneg i8 %5 to i64, !dbg !2494
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2495
  call void @llvm.dbg.value(metadata ptr %7, metadata !1461, metadata !DIExpression()), !dbg !2491
  %8 = and i8 %1, 31, !dbg !2496
  %9 = zext nneg i8 %8 to i32, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %9, metadata !1463, metadata !DIExpression()), !dbg !2491
  %10 = load i32, ptr %7, align 4, !dbg !2497, !tbaa !833
  %11 = lshr i32 %10, %9, !dbg !2498
  call void @llvm.dbg.value(metadata i32 %11, metadata !1464, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2491
  %12 = and i32 %11, 1, !dbg !2499
  %13 = xor i32 %12, 1, !dbg !2499
  %14 = shl nuw i32 %13, %9, !dbg !2500
  %15 = xor i32 %14, %10, !dbg !2501
  store i32 %15, ptr %7, align 4, !dbg !2501, !tbaa !833
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2502
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2503
  ret ptr %16, !dbg !2504
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2505 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2508
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %0, metadata !2482, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 58, metadata !2483, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2457, metadata !DIExpression(), metadata !2508, metadata ptr %2, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata ptr %0, metadata !2454, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i64 -1, metadata !2455, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 58, metadata !2456, metadata !DIExpression()), !dbg !2512
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2515, !tbaa.struct !2462, !DIAssignID !2516
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2457, metadata !DIExpression(), metadata !2516, metadata ptr %2, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata ptr %2, metadata !1457, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 58, metadata !1458, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 1, metadata !1459, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 58, metadata !1460, metadata !DIExpression()), !dbg !2517
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2519
  call void @llvm.dbg.value(metadata ptr %3, metadata !1461, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 26, metadata !1463, metadata !DIExpression()), !dbg !2517
  %4 = load i32, ptr %3, align 4, !dbg !2520, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %4, metadata !1464, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2517
  %5 = or i32 %4, 67108864, !dbg !2521
  store i32 %5, ptr %3, align 4, !dbg !2521, !tbaa !833
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2522
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2523
  ret ptr %6, !dbg !2524
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2525 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2529
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2530
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2457, metadata !DIExpression(), metadata !2529, metadata ptr %3, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata ptr %0, metadata !2454, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i64 %1, metadata !2455, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 58, metadata !2456, metadata !DIExpression()), !dbg !2531
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2534, !tbaa.struct !2462, !DIAssignID !2535
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2457, metadata !DIExpression(), metadata !2535, metadata ptr %3, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata ptr %3, metadata !1457, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 58, metadata !1458, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 1, metadata !1459, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 58, metadata !1460, metadata !DIExpression()), !dbg !2536
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2538
  call void @llvm.dbg.value(metadata ptr %4, metadata !1461, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 26, metadata !1463, metadata !DIExpression()), !dbg !2536
  %5 = load i32, ptr %4, align 4, !dbg !2539, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %5, metadata !1464, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2536
  %6 = or i32 %5, 67108864, !dbg !2540
  store i32 %6, ptr %4, align 4, !dbg !2540, !tbaa !833
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2541
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2542
  ret ptr %7, !dbg !2543
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2544 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2550
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2549, metadata !DIExpression(), metadata !2550, metadata ptr %4, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2353, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2546, metadata !DIExpression()), !dbg !2551
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2547, metadata !DIExpression()), !dbg !2551
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2548, metadata !DIExpression()), !dbg !2551
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2555
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2555
  %5 = icmp eq i32 %1, 10, !dbg !2556
  br i1 %5, label %6, label %7, !dbg !2557

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2558, !noalias !2559
  unreachable, !dbg !2558

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2555
  store i32 %1, ptr %4, align 8, !dbg !2562, !tbaa.struct !2462, !DIAssignID !2563
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2562
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2549, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2563, metadata ptr %4, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2549, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2564, metadata ptr %8, metadata !DIExpression()), !dbg !2551
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1457, metadata !DIExpression()), !dbg !2565
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1458, metadata !DIExpression()), !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1459, metadata !DIExpression()), !dbg !2565
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1460, metadata !DIExpression()), !dbg !2565
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2567
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1461, metadata !DIExpression()), !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1463, metadata !DIExpression()), !dbg !2565
  %10 = load i32, ptr %9, align 4, !dbg !2568, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1464, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2565
  %11 = or i32 %10, 67108864, !dbg !2569
  store i32 %11, ptr %9, align 4, !dbg !2569, !tbaa !833, !DIAssignID !2570
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2549, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2570, metadata ptr %9, metadata !DIExpression()), !dbg !2551
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2571
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2572
  ret ptr %12, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2574 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2582
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2579, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2580, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2581, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(), metadata !2582, metadata ptr %5, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i32 %0, metadata !2589, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata ptr %1, metadata !2590, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata ptr %2, metadata !2591, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata ptr %3, metadata !2592, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i64 -1, metadata !2593, metadata !DIExpression()), !dbg !2594
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2597, !tbaa.struct !2462, !DIAssignID !2598
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(), metadata !2598, metadata ptr %5, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2599, metadata ptr undef, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata ptr %5, metadata !1497, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %1, metadata !1498, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %2, metadata !1499, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %5, metadata !1497, metadata !DIExpression()), !dbg !2600
  store i32 10, ptr %5, align 8, !dbg !2602, !tbaa !1440, !DIAssignID !2603
  call void @llvm.dbg.assign(metadata i32 10, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2603, metadata ptr %5, metadata !DIExpression()), !dbg !2594
  %6 = icmp ne ptr %1, null, !dbg !2604
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2605
  br i1 %8, label %10, label %9, !dbg !2605

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2606
  unreachable, !dbg !2606

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2607
  store ptr %1, ptr %11, align 8, !dbg !2608, !tbaa !1511, !DIAssignID !2609
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2609, metadata ptr %11, metadata !DIExpression()), !dbg !2594
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2610
  store ptr %2, ptr %12, align 8, !dbg !2611, !tbaa !1514, !DIAssignID !2612
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2612, metadata ptr %12, metadata !DIExpression()), !dbg !2594
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2613
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2614
  ret ptr %13, !dbg !2615
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2585 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2616
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(), metadata !2616, metadata ptr %6, metadata !DIExpression()), !dbg !2617
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2589, metadata !DIExpression()), !dbg !2617
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2590, metadata !DIExpression()), !dbg !2617
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2591, metadata !DIExpression()), !dbg !2617
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2592, metadata !DIExpression()), !dbg !2617
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2593, metadata !DIExpression()), !dbg !2617
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2619, !tbaa.struct !2462, !DIAssignID !2620
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(), metadata !2620, metadata ptr %6, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2621, metadata ptr undef, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata ptr %6, metadata !1497, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %1, metadata !1498, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %2, metadata !1499, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %6, metadata !1497, metadata !DIExpression()), !dbg !2622
  store i32 10, ptr %6, align 8, !dbg !2624, !tbaa !1440, !DIAssignID !2625
  call void @llvm.dbg.assign(metadata i32 10, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2625, metadata ptr %6, metadata !DIExpression()), !dbg !2617
  %7 = icmp ne ptr %1, null, !dbg !2626
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2627
  br i1 %9, label %11, label %10, !dbg !2627

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2628
  unreachable, !dbg !2628

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2629
  store ptr %1, ptr %12, align 8, !dbg !2630, !tbaa !1511, !DIAssignID !2631
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2631, metadata ptr %12, metadata !DIExpression()), !dbg !2617
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2632
  store ptr %2, ptr %13, align 8, !dbg !2633, !tbaa !1514, !DIAssignID !2634
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2634, metadata ptr %13, metadata !DIExpression()), !dbg !2617
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2635
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2636
  ret ptr %14, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2638 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2645
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2642, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2643, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2644, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 0, metadata !2578, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %0, metadata !2579, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %1, metadata !2580, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %2, metadata !2581, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(), metadata !2645, metadata ptr %4, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 0, metadata !2589, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %0, metadata !2590, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %1, metadata !2591, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %2, metadata !2592, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 -1, metadata !2593, metadata !DIExpression()), !dbg !2649
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2652, !tbaa.struct !2462, !DIAssignID !2653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(), metadata !2653, metadata ptr %4, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2654, metadata ptr undef, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %4, metadata !1497, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %0, metadata !1498, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %1, metadata !1499, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %4, metadata !1497, metadata !DIExpression()), !dbg !2655
  store i32 10, ptr %4, align 8, !dbg !2657, !tbaa !1440, !DIAssignID !2658
  call void @llvm.dbg.assign(metadata i32 10, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2658, metadata ptr %4, metadata !DIExpression()), !dbg !2649
  %5 = icmp ne ptr %0, null, !dbg !2659
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2660
  br i1 %7, label %9, label %8, !dbg !2660

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2661
  unreachable, !dbg !2661

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2662
  store ptr %0, ptr %10, align 8, !dbg !2663, !tbaa !1511, !DIAssignID !2664
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2664, metadata ptr %10, metadata !DIExpression()), !dbg !2649
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2665
  store ptr %1, ptr %11, align 8, !dbg !2666, !tbaa !1514, !DIAssignID !2667
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2667, metadata ptr %11, metadata !DIExpression()), !dbg !2649
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2668
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2669
  ret ptr %12, !dbg !2670
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2671 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2679
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2675, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2676, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2677, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2678, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(), metadata !2679, metadata ptr %5, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i32 0, metadata !2589, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %0, metadata !2590, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %1, metadata !2591, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %2, metadata !2592, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %3, metadata !2593, metadata !DIExpression()), !dbg !2681
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2684, !tbaa.struct !2462, !DIAssignID !2685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(), metadata !2685, metadata ptr %5, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2686, metadata ptr undef, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %5, metadata !1497, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %0, metadata !1498, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %1, metadata !1499, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %5, metadata !1497, metadata !DIExpression()), !dbg !2687
  store i32 10, ptr %5, align 8, !dbg !2689, !tbaa !1440, !DIAssignID !2690
  call void @llvm.dbg.assign(metadata i32 10, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2690, metadata ptr %5, metadata !DIExpression()), !dbg !2681
  %6 = icmp ne ptr %0, null, !dbg !2691
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2692
  br i1 %8, label %10, label %9, !dbg !2692

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2693
  unreachable, !dbg !2693

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2694
  store ptr %0, ptr %11, align 8, !dbg !2695, !tbaa !1511, !DIAssignID !2696
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2696, metadata ptr %11, metadata !DIExpression()), !dbg !2681
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2697
  store ptr %1, ptr %12, align 8, !dbg !2698, !tbaa !1514, !DIAssignID !2699
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2584, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2699, metadata ptr %12, metadata !DIExpression()), !dbg !2681
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2700
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2701
  ret ptr %13, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2703 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2708, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2709, metadata !DIExpression()), !dbg !2710
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2711
  ret ptr %4, !dbg !2712
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2713 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2717, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2718, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %0, metadata !2708, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()), !dbg !2720
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2722
  ret ptr %3, !dbg !2723
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2724 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2728, metadata !DIExpression()), !dbg !2730
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2729, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %1, metadata !2708, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 -1, metadata !2709, metadata !DIExpression()), !dbg !2731
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2733
  ret ptr %3, !dbg !2734
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2735 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 0, metadata !2728, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %0, metadata !2708, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 -1, metadata !2709, metadata !DIExpression()), !dbg !2743
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2745
  ret ptr %2, !dbg !2746
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2747 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2786, metadata !DIExpression()), !dbg !2792
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2787, metadata !DIExpression()), !dbg !2792
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2788, metadata !DIExpression()), !dbg !2792
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2789, metadata !DIExpression()), !dbg !2792
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2790, metadata !DIExpression()), !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2791, metadata !DIExpression()), !dbg !2792
  %7 = icmp eq ptr %1, null, !dbg !2793
  br i1 %7, label %10, label %8, !dbg !2795

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2796
  br label %12, !dbg !2796

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %2, ptr noundef %3) #37, !dbg !2797
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.3.76, i32 noundef 5) #37, !dbg !2798
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2798
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2799
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.5.78, i32 noundef 5) #37, !dbg !2800
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.79) #37, !dbg !2800
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2801
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
  ], !dbg !2802

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.7.80, i32 noundef 5) #37, !dbg !2803
  %21 = load ptr, ptr %4, align 8, !dbg !2803, !tbaa !772
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2803
  br label %147, !dbg !2805

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.8.81, i32 noundef 5) #37, !dbg !2806
  %25 = load ptr, ptr %4, align 8, !dbg !2806, !tbaa !772
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2806
  %27 = load ptr, ptr %26, align 8, !dbg !2806, !tbaa !772
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2806
  br label %147, !dbg !2807

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.9.82, i32 noundef 5) #37, !dbg !2808
  %31 = load ptr, ptr %4, align 8, !dbg !2808, !tbaa !772
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2808
  %33 = load ptr, ptr %32, align 8, !dbg !2808, !tbaa !772
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2808
  %35 = load ptr, ptr %34, align 8, !dbg !2808, !tbaa !772
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2808
  br label %147, !dbg !2809

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.10.83, i32 noundef 5) #37, !dbg !2810
  %39 = load ptr, ptr %4, align 8, !dbg !2810, !tbaa !772
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2810
  %41 = load ptr, ptr %40, align 8, !dbg !2810, !tbaa !772
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2810
  %43 = load ptr, ptr %42, align 8, !dbg !2810, !tbaa !772
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2810
  %45 = load ptr, ptr %44, align 8, !dbg !2810, !tbaa !772
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2810
  br label %147, !dbg !2811

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.11.84, i32 noundef 5) #37, !dbg !2812
  %49 = load ptr, ptr %4, align 8, !dbg !2812, !tbaa !772
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2812
  %51 = load ptr, ptr %50, align 8, !dbg !2812, !tbaa !772
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2812
  %53 = load ptr, ptr %52, align 8, !dbg !2812, !tbaa !772
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2812
  %55 = load ptr, ptr %54, align 8, !dbg !2812, !tbaa !772
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2812
  %57 = load ptr, ptr %56, align 8, !dbg !2812, !tbaa !772
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2812
  br label %147, !dbg !2813

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.12.85, i32 noundef 5) #37, !dbg !2814
  %61 = load ptr, ptr %4, align 8, !dbg !2814, !tbaa !772
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2814
  %63 = load ptr, ptr %62, align 8, !dbg !2814, !tbaa !772
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2814
  %65 = load ptr, ptr %64, align 8, !dbg !2814, !tbaa !772
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2814
  %67 = load ptr, ptr %66, align 8, !dbg !2814, !tbaa !772
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2814
  %69 = load ptr, ptr %68, align 8, !dbg !2814, !tbaa !772
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2814
  %71 = load ptr, ptr %70, align 8, !dbg !2814, !tbaa !772
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2814
  br label %147, !dbg !2815

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.13.86, i32 noundef 5) #37, !dbg !2816
  %75 = load ptr, ptr %4, align 8, !dbg !2816, !tbaa !772
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2816
  %77 = load ptr, ptr %76, align 8, !dbg !2816, !tbaa !772
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2816
  %79 = load ptr, ptr %78, align 8, !dbg !2816, !tbaa !772
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2816
  %81 = load ptr, ptr %80, align 8, !dbg !2816, !tbaa !772
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2816
  %83 = load ptr, ptr %82, align 8, !dbg !2816, !tbaa !772
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2816
  %85 = load ptr, ptr %84, align 8, !dbg !2816, !tbaa !772
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2816
  %87 = load ptr, ptr %86, align 8, !dbg !2816, !tbaa !772
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2816
  br label %147, !dbg !2817

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.14.87, i32 noundef 5) #37, !dbg !2818
  %91 = load ptr, ptr %4, align 8, !dbg !2818, !tbaa !772
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2818
  %93 = load ptr, ptr %92, align 8, !dbg !2818, !tbaa !772
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2818
  %95 = load ptr, ptr %94, align 8, !dbg !2818, !tbaa !772
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2818
  %97 = load ptr, ptr %96, align 8, !dbg !2818, !tbaa !772
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2818
  %99 = load ptr, ptr %98, align 8, !dbg !2818, !tbaa !772
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2818
  %101 = load ptr, ptr %100, align 8, !dbg !2818, !tbaa !772
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2818
  %103 = load ptr, ptr %102, align 8, !dbg !2818, !tbaa !772
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2818
  %105 = load ptr, ptr %104, align 8, !dbg !2818, !tbaa !772
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2818
  br label %147, !dbg !2819

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.15.88, i32 noundef 5) #37, !dbg !2820
  %109 = load ptr, ptr %4, align 8, !dbg !2820, !tbaa !772
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2820
  %111 = load ptr, ptr %110, align 8, !dbg !2820, !tbaa !772
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2820
  %113 = load ptr, ptr %112, align 8, !dbg !2820, !tbaa !772
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2820
  %115 = load ptr, ptr %114, align 8, !dbg !2820, !tbaa !772
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2820
  %117 = load ptr, ptr %116, align 8, !dbg !2820, !tbaa !772
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2820
  %119 = load ptr, ptr %118, align 8, !dbg !2820, !tbaa !772
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2820
  %121 = load ptr, ptr %120, align 8, !dbg !2820, !tbaa !772
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2820
  %123 = load ptr, ptr %122, align 8, !dbg !2820, !tbaa !772
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2820
  %125 = load ptr, ptr %124, align 8, !dbg !2820, !tbaa !772
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2820
  br label %147, !dbg !2821

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.16.89, i32 noundef 5) #37, !dbg !2822
  %129 = load ptr, ptr %4, align 8, !dbg !2822, !tbaa !772
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2822
  %131 = load ptr, ptr %130, align 8, !dbg !2822, !tbaa !772
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2822
  %133 = load ptr, ptr %132, align 8, !dbg !2822, !tbaa !772
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2822
  %135 = load ptr, ptr %134, align 8, !dbg !2822, !tbaa !772
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2822
  %137 = load ptr, ptr %136, align 8, !dbg !2822, !tbaa !772
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2822
  %139 = load ptr, ptr %138, align 8, !dbg !2822, !tbaa !772
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2822
  %141 = load ptr, ptr %140, align 8, !dbg !2822, !tbaa !772
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2822
  %143 = load ptr, ptr %142, align 8, !dbg !2822, !tbaa !772
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2822
  %145 = load ptr, ptr %144, align 8, !dbg !2822, !tbaa !772
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2822
  br label %147, !dbg !2823

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2824
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2825 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2829, metadata !DIExpression()), !dbg !2835
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2830, metadata !DIExpression()), !dbg !2835
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2831, metadata !DIExpression()), !dbg !2835
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2832, metadata !DIExpression()), !dbg !2835
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2833, metadata !DIExpression()), !dbg !2835
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2834, metadata !DIExpression()), !dbg !2835
  br label %6, !dbg !2836

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2834, metadata !DIExpression()), !dbg !2835
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2839
  %9 = load ptr, ptr %8, align 8, !dbg !2839, !tbaa !772
  %10 = icmp eq ptr %9, null, !dbg !2841
  %11 = add i64 %7, 1, !dbg !2842
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2834, metadata !DIExpression()), !dbg !2835
  br i1 %10, label %12, label %6, !dbg !2841, !llvm.loop !2843

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2838
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2845
  ret void, !dbg !2846
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2847 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2869
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2867, metadata !DIExpression(), metadata !2869, metadata ptr %6, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2861, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2862, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2863, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2864, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2865, metadata !DIExpression(DW_OP_deref)), !dbg !2870
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2871
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2866, metadata !DIExpression()), !dbg !2870
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2866, metadata !DIExpression()), !dbg !2870
  %10 = icmp sgt i32 %9, -1, !dbg !2872
  br i1 %10, label %18, label %11, !dbg !2872

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2872
  store i32 %12, ptr %7, align 8, !dbg !2872
  %13 = icmp ult i32 %9, -7, !dbg !2872
  br i1 %13, label %14, label %18, !dbg !2872

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2872
  %16 = sext i32 %9 to i64, !dbg !2872
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2872
  br label %22, !dbg !2872

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2872
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2872
  store ptr %21, ptr %4, align 8, !dbg !2872
  br label %22, !dbg !2872

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2872
  %25 = load ptr, ptr %24, align 8, !dbg !2872
  store ptr %25, ptr %6, align 8, !dbg !2875, !tbaa !772
  %26 = icmp eq ptr %25, null, !dbg !2876
  br i1 %26, label %197, label %27, !dbg !2877

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2866, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2866, metadata !DIExpression()), !dbg !2870
  %28 = icmp sgt i32 %23, -1, !dbg !2872
  br i1 %28, label %36, label %29, !dbg !2872

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2872
  store i32 %30, ptr %7, align 8, !dbg !2872
  %31 = icmp ult i32 %23, -7, !dbg !2872
  br i1 %31, label %32, label %36, !dbg !2872

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2872
  %34 = sext i32 %23 to i64, !dbg !2872
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2872
  br label %40, !dbg !2872

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2872
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2872
  store ptr %39, ptr %4, align 8, !dbg !2872
  br label %40, !dbg !2872

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2872
  %43 = load ptr, ptr %42, align 8, !dbg !2872
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2878
  store ptr %43, ptr %44, align 8, !dbg !2875, !tbaa !772
  %45 = icmp eq ptr %43, null, !dbg !2876
  br i1 %45, label %197, label %46, !dbg !2877

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2866, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2866, metadata !DIExpression()), !dbg !2870
  %47 = icmp sgt i32 %41, -1, !dbg !2872
  br i1 %47, label %55, label %48, !dbg !2872

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2872
  store i32 %49, ptr %7, align 8, !dbg !2872
  %50 = icmp ult i32 %41, -7, !dbg !2872
  br i1 %50, label %51, label %55, !dbg !2872

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2872
  %53 = sext i32 %41 to i64, !dbg !2872
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2872
  br label %59, !dbg !2872

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2872
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2872
  store ptr %58, ptr %4, align 8, !dbg !2872
  br label %59, !dbg !2872

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2872
  %62 = load ptr, ptr %61, align 8, !dbg !2872
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2878
  store ptr %62, ptr %63, align 8, !dbg !2875, !tbaa !772
  %64 = icmp eq ptr %62, null, !dbg !2876
  br i1 %64, label %197, label %65, !dbg !2877

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2866, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2866, metadata !DIExpression()), !dbg !2870
  %66 = icmp sgt i32 %60, -1, !dbg !2872
  br i1 %66, label %74, label %67, !dbg !2872

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2872
  store i32 %68, ptr %7, align 8, !dbg !2872
  %69 = icmp ult i32 %60, -7, !dbg !2872
  br i1 %69, label %70, label %74, !dbg !2872

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2872
  %72 = sext i32 %60 to i64, !dbg !2872
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2872
  br label %78, !dbg !2872

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2872
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2872
  store ptr %77, ptr %4, align 8, !dbg !2872
  br label %78, !dbg !2872

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2872
  %81 = load ptr, ptr %80, align 8, !dbg !2872
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2878
  store ptr %81, ptr %82, align 8, !dbg !2875, !tbaa !772
  %83 = icmp eq ptr %81, null, !dbg !2876
  br i1 %83, label %197, label %84, !dbg !2877

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2866, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2866, metadata !DIExpression()), !dbg !2870
  %85 = icmp sgt i32 %79, -1, !dbg !2872
  br i1 %85, label %93, label %86, !dbg !2872

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2872
  store i32 %87, ptr %7, align 8, !dbg !2872
  %88 = icmp ult i32 %79, -7, !dbg !2872
  br i1 %88, label %89, label %93, !dbg !2872

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2872
  %91 = sext i32 %79 to i64, !dbg !2872
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2872
  br label %97, !dbg !2872

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2872
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2872
  store ptr %96, ptr %4, align 8, !dbg !2872
  br label %97, !dbg !2872

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2872
  %100 = load ptr, ptr %99, align 8, !dbg !2872
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2878
  store ptr %100, ptr %101, align 8, !dbg !2875, !tbaa !772
  %102 = icmp eq ptr %100, null, !dbg !2876
  br i1 %102, label %197, label %103, !dbg !2877

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2866, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2866, metadata !DIExpression()), !dbg !2870
  %104 = icmp sgt i32 %98, -1, !dbg !2872
  br i1 %104, label %112, label %105, !dbg !2872

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2872
  store i32 %106, ptr %7, align 8, !dbg !2872
  %107 = icmp ult i32 %98, -7, !dbg !2872
  br i1 %107, label %108, label %112, !dbg !2872

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2872
  %110 = sext i32 %98 to i64, !dbg !2872
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2872
  br label %116, !dbg !2872

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2872
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2872
  store ptr %115, ptr %4, align 8, !dbg !2872
  br label %116, !dbg !2872

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2872
  %119 = load ptr, ptr %118, align 8, !dbg !2872
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2878
  store ptr %119, ptr %120, align 8, !dbg !2875, !tbaa !772
  %121 = icmp eq ptr %119, null, !dbg !2876
  br i1 %121, label %197, label %122, !dbg !2877

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2866, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2866, metadata !DIExpression()), !dbg !2870
  %123 = icmp sgt i32 %117, -1, !dbg !2872
  br i1 %123, label %131, label %124, !dbg !2872

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2872
  store i32 %125, ptr %7, align 8, !dbg !2872
  %126 = icmp ult i32 %117, -7, !dbg !2872
  br i1 %126, label %127, label %131, !dbg !2872

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2872
  %129 = sext i32 %117 to i64, !dbg !2872
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2872
  br label %135, !dbg !2872

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2872
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2872
  store ptr %134, ptr %4, align 8, !dbg !2872
  br label %135, !dbg !2872

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2872
  %138 = load ptr, ptr %137, align 8, !dbg !2872
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2878
  store ptr %138, ptr %139, align 8, !dbg !2875, !tbaa !772
  %140 = icmp eq ptr %138, null, !dbg !2876
  br i1 %140, label %197, label %141, !dbg !2877

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2866, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2866, metadata !DIExpression()), !dbg !2870
  %142 = icmp sgt i32 %136, -1, !dbg !2872
  br i1 %142, label %150, label %143, !dbg !2872

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2872
  store i32 %144, ptr %7, align 8, !dbg !2872
  %145 = icmp ult i32 %136, -7, !dbg !2872
  br i1 %145, label %146, label %150, !dbg !2872

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2872
  %148 = sext i32 %136 to i64, !dbg !2872
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2872
  br label %154, !dbg !2872

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2872
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2872
  store ptr %153, ptr %4, align 8, !dbg !2872
  br label %154, !dbg !2872

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2872
  %157 = load ptr, ptr %156, align 8, !dbg !2872
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2878
  store ptr %157, ptr %158, align 8, !dbg !2875, !tbaa !772
  %159 = icmp eq ptr %157, null, !dbg !2876
  br i1 %159, label %197, label %160, !dbg !2877

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2866, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2866, metadata !DIExpression()), !dbg !2870
  %161 = icmp sgt i32 %155, -1, !dbg !2872
  br i1 %161, label %169, label %162, !dbg !2872

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2872
  store i32 %163, ptr %7, align 8, !dbg !2872
  %164 = icmp ult i32 %155, -7, !dbg !2872
  br i1 %164, label %165, label %169, !dbg !2872

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2872
  %167 = sext i32 %155 to i64, !dbg !2872
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2872
  br label %173, !dbg !2872

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2872
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2872
  store ptr %172, ptr %4, align 8, !dbg !2872
  br label %173, !dbg !2872

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2872
  %176 = load ptr, ptr %175, align 8, !dbg !2872
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2878
  store ptr %176, ptr %177, align 8, !dbg !2875, !tbaa !772
  %178 = icmp eq ptr %176, null, !dbg !2876
  br i1 %178, label %197, label %179, !dbg !2877

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2866, metadata !DIExpression()), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2866, metadata !DIExpression()), !dbg !2870
  %180 = icmp sgt i32 %174, -1, !dbg !2872
  br i1 %180, label %188, label %181, !dbg !2872

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2872
  store i32 %182, ptr %7, align 8, !dbg !2872
  %183 = icmp ult i32 %174, -7, !dbg !2872
  br i1 %183, label %184, label %188, !dbg !2872

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2872
  %186 = sext i32 %174 to i64, !dbg !2872
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2872
  br label %191, !dbg !2872

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2872
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2872
  store ptr %190, ptr %4, align 8, !dbg !2872
  br label %191, !dbg !2872

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2872
  %193 = load ptr, ptr %192, align 8, !dbg !2872
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2878
  store ptr %193, ptr %194, align 8, !dbg !2875, !tbaa !772
  %195 = icmp eq ptr %193, null, !dbg !2876
  %196 = select i1 %195, i64 9, i64 10, !dbg !2877
  br label %197, !dbg !2877

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2879
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2880
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2881
  ret void, !dbg !2881
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2882 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2891
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2890, metadata !DIExpression(), metadata !2891, metadata ptr %5, metadata !DIExpression()), !dbg !2892
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2886, metadata !DIExpression()), !dbg !2892
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2887, metadata !DIExpression()), !dbg !2892
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2888, metadata !DIExpression()), !dbg !2892
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2889, metadata !DIExpression()), !dbg !2892
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2893
  call void @llvm.va_start(ptr nonnull %5), !dbg !2894
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2895, !tbaa.struct !1136
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2895
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2895
  call void @llvm.va_end(ptr nonnull %5), !dbg !2896
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2897
  ret void, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2898 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2899, !tbaa !772
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %1), !dbg !2899
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.17.94, i32 noundef 5) #37, !dbg !2900
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.95) #37, !dbg !2900
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.19.96, i32 noundef 5) #37, !dbg !2901
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.97, ptr noundef nonnull @.str.21) #37, !dbg !2901
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2902
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.98) #37, !dbg !2902
  ret void, !dbg !2903
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2904 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2909, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2910, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2911, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %0, metadata !2913, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %2, metadata !2917, metadata !DIExpression()), !dbg !2918
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2920
  call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !2926
  %5 = icmp eq ptr %4, null, !dbg !2928
  br i1 %5, label %6, label %7, !dbg !2930

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2931
  unreachable, !dbg !2931

7:                                                ; preds = %3
  ret ptr %4, !dbg !2932
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2914 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2913, metadata !DIExpression()), !dbg !2933
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()), !dbg !2933
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2917, metadata !DIExpression()), !dbg !2933
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !2935
  %5 = icmp eq ptr %4, null, !dbg !2937
  br i1 %5, label %6, label %7, !dbg !2938

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2939
  unreachable, !dbg !2939

7:                                                ; preds = %3
  ret ptr %4, !dbg !2940
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2941 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2945, metadata !DIExpression()), !dbg !2946
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2947
  call void @llvm.dbg.value(metadata ptr %2, metadata !2921, metadata !DIExpression()), !dbg !2948
  %3 = icmp eq ptr %2, null, !dbg !2950
  br i1 %3, label %4, label %5, !dbg !2951

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2952
  unreachable, !dbg !2952

5:                                                ; preds = %1
  ret ptr %2, !dbg !2953
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2954 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2955 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %0, metadata !2961, metadata !DIExpression()), !dbg !2965
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2967
  call void @llvm.dbg.value(metadata ptr %2, metadata !2921, metadata !DIExpression()), !dbg !2968
  %3 = icmp eq ptr %2, null, !dbg !2970
  br i1 %3, label %4, label %5, !dbg !2971

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2972
  unreachable, !dbg !2972

5:                                                ; preds = %1
  ret ptr %2, !dbg !2973
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2974 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %0, metadata !2945, metadata !DIExpression()), !dbg !2980
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2982
  call void @llvm.dbg.value(metadata ptr %2, metadata !2921, metadata !DIExpression()), !dbg !2983
  %3 = icmp eq ptr %2, null, !dbg !2985
  br i1 %3, label %4, label %5, !dbg !2986

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2987
  unreachable, !dbg !2987

5:                                                ; preds = %1
  ret ptr %2, !dbg !2988
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2989 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2993, metadata !DIExpression()), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %0, metadata !2996, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %1, metadata !3000, metadata !DIExpression()), !dbg !3001
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3003
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3004
  call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !3005
  %5 = icmp eq ptr %4, null, !dbg !3007
  br i1 %5, label %6, label %7, !dbg !3008

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3009
  unreachable, !dbg !3009

7:                                                ; preds = %2
  ret ptr %4, !dbg !3010
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3011 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3012 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3018
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %0, metadata !3019, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 %1, metadata !3022, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata ptr %0, metadata !2996, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3000, metadata !DIExpression()), !dbg !3025
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3027
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3028
  call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !3029
  %5 = icmp eq ptr %4, null, !dbg !3031
  br i1 %5, label %6, label %7, !dbg !3032

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3033
  unreachable, !dbg !3033

7:                                                ; preds = %2
  ret ptr %4, !dbg !3034
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3035 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3039, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i64 %1, metadata !3046, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i64 %2, metadata !3047, metadata !DIExpression()), !dbg !3048
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3050
  call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !3051
  %5 = icmp eq ptr %4, null, !dbg !3053
  br i1 %5, label %6, label %7, !dbg !3054

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3055
  unreachable, !dbg !3055

7:                                                ; preds = %3
  ret ptr %4, !dbg !3056
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3057 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3061, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr null, metadata !2913, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %0, metadata !2916, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %1, metadata !2917, metadata !DIExpression()), !dbg !3064
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3066
  call void @llvm.dbg.value(metadata ptr %3, metadata !2921, metadata !DIExpression()), !dbg !3067
  %4 = icmp eq ptr %3, null, !dbg !3069
  br i1 %4, label %5, label %6, !dbg !3070

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3071
  unreachable, !dbg !3071

6:                                                ; preds = %2
  ret ptr %3, !dbg !3072
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3073 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3077, metadata !DIExpression()), !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr null, metadata !3039, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %0, metadata !3040, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %1, metadata !3041, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr null, metadata !3043, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %0, metadata !3046, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3047, metadata !DIExpression()), !dbg !3082
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %3, metadata !2921, metadata !DIExpression()), !dbg !3085
  %4 = icmp eq ptr %3, null, !dbg !3087
  br i1 %4, label %5, label %6, !dbg !3088

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3089
  unreachable, !dbg !3089

6:                                                ; preds = %2
  ret ptr %3, !dbg !3090
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3091 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3095, metadata !DIExpression()), !dbg !3097
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3096, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %0, metadata !708, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %1, metadata !709, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 1, metadata !710, metadata !DIExpression()), !dbg !3098
  %3 = load i64, ptr %1, align 8, !dbg !3100, !tbaa !2165
  call void @llvm.dbg.value(metadata i64 %3, metadata !711, metadata !DIExpression()), !dbg !3098
  %4 = icmp eq ptr %0, null, !dbg !3101
  br i1 %4, label %5, label %8, !dbg !3103

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3104
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3107
  br label %15, !dbg !3107

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3108
  %10 = add nuw i64 %9, 1, !dbg !3108
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3108
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3108
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %13, metadata !711, metadata !DIExpression()), !dbg !3098
  br i1 %12, label %14, label %15, !dbg !3111

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3112
  unreachable, !dbg !3112

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3098
  call void @llvm.dbg.value(metadata i64 %16, metadata !711, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %0, metadata !2913, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %16, metadata !2916, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 1, metadata !2917, metadata !DIExpression()), !dbg !3113
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3115
  call void @llvm.dbg.value(metadata ptr %17, metadata !2921, metadata !DIExpression()), !dbg !3116
  %18 = icmp eq ptr %17, null, !dbg !3118
  br i1 %18, label %19, label %20, !dbg !3119

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3120
  unreachable, !dbg !3120

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !708, metadata !DIExpression()), !dbg !3098
  store i64 %16, ptr %1, align 8, !dbg !3121, !tbaa !2165
  ret ptr %17, !dbg !3122
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !703 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !708, metadata !DIExpression()), !dbg !3123
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !709, metadata !DIExpression()), !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !710, metadata !DIExpression()), !dbg !3123
  %4 = load i64, ptr %1, align 8, !dbg !3124, !tbaa !2165
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !711, metadata !DIExpression()), !dbg !3123
  %5 = icmp eq ptr %0, null, !dbg !3125
  br i1 %5, label %6, label %13, !dbg !3126

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3127
  br i1 %7, label %8, label %20, !dbg !3128

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !711, metadata !DIExpression()), !dbg !3123
  %10 = icmp ugt i64 %2, 128, !dbg !3131
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !711, metadata !DIExpression()), !dbg !3123
  br label %20, !dbg !3133

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3134
  %15 = add nuw i64 %14, 1, !dbg !3134
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3134
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3134
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !711, metadata !DIExpression()), !dbg !3123
  br i1 %17, label %19, label %20, !dbg !3135

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3136
  unreachable, !dbg !3136

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !711, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr %0, metadata !2913, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %21, metadata !2916, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %2, metadata !2917, metadata !DIExpression()), !dbg !3137
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3139
  call void @llvm.dbg.value(metadata ptr %22, metadata !2921, metadata !DIExpression()), !dbg !3140
  %23 = icmp eq ptr %22, null, !dbg !3142
  br i1 %23, label %24, label %25, !dbg !3143

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3144
  unreachable, !dbg !3144

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !708, metadata !DIExpression()), !dbg !3123
  store i64 %21, ptr %1, align 8, !dbg !3145, !tbaa !2165
  ret ptr %22, !dbg !3146
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !715 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !724, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !725, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !726, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !727, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !728, metadata !DIExpression()), !dbg !3147
  %6 = load i64, ptr %1, align 8, !dbg !3148, !tbaa !2165
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !729, metadata !DIExpression()), !dbg !3147
  %7 = ashr i64 %6, 1, !dbg !3149
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3149
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3149
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !730, metadata !DIExpression()), !dbg !3147
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !730, metadata !DIExpression()), !dbg !3147
  %12 = icmp sgt i64 %3, -1, !dbg !3152
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3154
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !730, metadata !DIExpression()), !dbg !3147
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3155
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3155
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !731, metadata !DIExpression()), !dbg !3147
  %18 = icmp slt i64 %17, 128, !dbg !3155
  %19 = select i1 %18, i64 128, i64 0, !dbg !3155
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !732, metadata !DIExpression()), !dbg !3147
  %21 = icmp eq i64 %20, 0, !dbg !3156
  br i1 %21, label %28, label %22, !dbg !3158

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !730, metadata !DIExpression()), !dbg !3147
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !731, metadata !DIExpression()), !dbg !3147
  br label %28, !dbg !3162

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3147
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !731, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !730, metadata !DIExpression()), !dbg !3147
  %31 = icmp eq ptr %0, null, !dbg !3163
  br i1 %31, label %32, label %33, !dbg !3165

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3166, !tbaa !2165
  br label %33, !dbg !3167

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3168
  %35 = icmp slt i64 %34, %2, !dbg !3170
  br i1 %35, label %36, label %48, !dbg !3171

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3172
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3172
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !730, metadata !DIExpression()), !dbg !3147
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3173
  br i1 %42, label %47, label %43, !dbg !3173

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3174
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3174
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !731, metadata !DIExpression()), !dbg !3147
  br i1 %45, label %47, label %48, !dbg !3175

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3176
  unreachable, !dbg !3176

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3147
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !731, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !730, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr %0, metadata !2993, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %50, metadata !2994, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata ptr %0, metadata !2996, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 %50, metadata !3000, metadata !DIExpression()), !dbg !3179
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3181
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3182
  call void @llvm.dbg.value(metadata ptr %52, metadata !2921, metadata !DIExpression()), !dbg !3183
  %53 = icmp eq ptr %52, null, !dbg !3185
  br i1 %53, label %54, label %55, !dbg !3186

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3187
  unreachable, !dbg !3187

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !724, metadata !DIExpression()), !dbg !3147
  store i64 %49, ptr %1, align 8, !dbg !3188, !tbaa !2165
  ret ptr %52, !dbg !3189
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3190 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3192, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 1, metadata !3197, metadata !DIExpression()), !dbg !3198
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3200
  call void @llvm.dbg.value(metadata ptr %2, metadata !2921, metadata !DIExpression()), !dbg !3201
  %3 = icmp eq ptr %2, null, !dbg !3203
  br i1 %3, label %4, label %5, !dbg !3204

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3205
  unreachable, !dbg !3205

5:                                                ; preds = %1
  ret ptr %2, !dbg !3206
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3207 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3195 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()), !dbg !3208
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3197, metadata !DIExpression()), !dbg !3208
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3209
  call void @llvm.dbg.value(metadata ptr %3, metadata !2921, metadata !DIExpression()), !dbg !3210
  %4 = icmp eq ptr %3, null, !dbg !3212
  br i1 %4, label %5, label %6, !dbg !3213

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3214
  unreachable, !dbg !3214

6:                                                ; preds = %2
  ret ptr %3, !dbg !3215
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %0, metadata !3220, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 1, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %0, metadata !3226, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 1, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %0, metadata !3226, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 1, metadata !3229, metadata !DIExpression()), !dbg !3230
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3232
  call void @llvm.dbg.value(metadata ptr %2, metadata !2921, metadata !DIExpression()), !dbg !3233
  %3 = icmp eq ptr %2, null, !dbg !3235
  br i1 %3, label %4, label %5, !dbg !3236

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3237
  unreachable, !dbg !3237

5:                                                ; preds = %1
  ret ptr %2, !dbg !3238
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3221 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3220, metadata !DIExpression()), !dbg !3239
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %0, metadata !3226, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %1, metadata !3229, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %0, metadata !3226, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %1, metadata !3229, metadata !DIExpression()), !dbg !3240
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %3, metadata !2921, metadata !DIExpression()), !dbg !3243
  %4 = icmp eq ptr %3, null, !dbg !3245
  br i1 %4, label %5, label %6, !dbg !3246

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3247
  unreachable, !dbg !3247

6:                                                ; preds = %2
  ret ptr %3, !dbg !3248
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3249 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3253, metadata !DIExpression()), !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3254, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !2945, metadata !DIExpression()), !dbg !3256
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3258
  call void @llvm.dbg.value(metadata ptr %3, metadata !2921, metadata !DIExpression()), !dbg !3259
  %4 = icmp eq ptr %3, null, !dbg !3261
  br i1 %4, label %5, label %6, !dbg !3262

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3263
  unreachable, !dbg !3263

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3264, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3274
  ret ptr %3, !dbg !3275
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3276 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %1, metadata !2959, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !2961, metadata !DIExpression()), !dbg !3285
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3287
  call void @llvm.dbg.value(metadata ptr %3, metadata !2921, metadata !DIExpression()), !dbg !3288
  %4 = icmp eq ptr %3, null, !dbg !3290
  br i1 %4, label %5, label %6, !dbg !3291

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3292
  unreachable, !dbg !3292

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3264, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3295
  ret ptr %3, !dbg !3296
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3297 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3301, metadata !DIExpression()), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3302, metadata !DIExpression()), !dbg !3304
  %3 = add nsw i64 %1, 1, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %3, metadata !2959, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %3, metadata !2961, metadata !DIExpression()), !dbg !3308
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3310
  call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !3311
  %5 = icmp eq ptr %4, null, !dbg !3313
  br i1 %5, label %6, label %7, !dbg !3314

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3315
  unreachable, !dbg !3315

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3303, metadata !DIExpression()), !dbg !3304
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3316
  store i8 0, ptr %8, align 1, !dbg !3317, !tbaa !842
  call void @llvm.dbg.value(metadata ptr %4, metadata !3264, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3320
  ret ptr %4, !dbg !3321
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3322 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3324, metadata !DIExpression()), !dbg !3325
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3326
  %3 = add i64 %2, 1, !dbg !3327
  call void @llvm.dbg.value(metadata ptr %0, metadata !3253, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %3, metadata !3254, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %3, metadata !2945, metadata !DIExpression()), !dbg !3330
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3332
  call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !3333
  %5 = icmp eq ptr %4, null, !dbg !3335
  br i1 %5, label %6, label %7, !dbg !3336

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3337
  unreachable, !dbg !3337

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3264, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %3, metadata !3271, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3340
  ret ptr %4, !dbg !3341
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3342 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3347, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3344, metadata !DIExpression()), !dbg !3348
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.109, ptr noundef nonnull @.str.2.110, i32 noundef 5) #37, !dbg !3347
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef %2) #37, !dbg !3347
  %3 = icmp eq i32 %1, 0, !dbg !3347
  tail call void @llvm.assume(i1 %3), !dbg !3347
  tail call void @abort() #39, !dbg !3349
  unreachable, !dbg !3349
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3350 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3388, metadata !DIExpression()), !dbg !3393
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3394
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3389, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3395, metadata !DIExpression()), !dbg !3398
  %3 = load i32, ptr %0, align 8, !dbg !3400, !tbaa !3401
  %4 = and i32 %3, 32, !dbg !3402
  %5 = icmp eq i32 %4, 0, !dbg !3402
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3391, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3393
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3403
  %7 = icmp eq i32 %6, 0, !dbg !3404
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3393
  br i1 %5, label %8, label %18, !dbg !3405

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3407
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3389, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3393
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3408
  %11 = xor i1 %7, true, !dbg !3408
  %12 = sext i1 %11 to i32, !dbg !3408
  br i1 %10, label %21, label %13, !dbg !3408

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3409
  %15 = load i32, ptr %14, align 4, !dbg !3409, !tbaa !833
  %16 = icmp ne i32 %15, 9, !dbg !3410
  %17 = sext i1 %16 to i32, !dbg !3411
  br label %21, !dbg !3411

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3412

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3414
  store i32 0, ptr %20, align 4, !dbg !3416, !tbaa !833
  br label %21, !dbg !3414

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3393
  ret i32 %22, !dbg !3417
}

; Function Attrs: nounwind
declare !dbg !3418 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3422 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3464
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3465
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3462, metadata !DIExpression()), !dbg !3464
  %3 = icmp slt i32 %2, 0, !dbg !3466
  br i1 %3, label %4, label %6, !dbg !3468

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3469
  br label %24, !dbg !3470

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3471
  %8 = icmp eq i32 %7, 0, !dbg !3471
  br i1 %8, label %13, label %9, !dbg !3473

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3474
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3475
  %12 = icmp eq i64 %11, -1, !dbg !3476
  br i1 %12, label %16, label %13, !dbg !3477

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3478
  %15 = icmp eq i32 %14, 0, !dbg !3478
  br i1 %15, label %16, label %18, !dbg !3479

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3463, metadata !DIExpression()), !dbg !3464
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3480
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3463, metadata !DIExpression()), !dbg !3464
  br label %24, !dbg !3481

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3482
  %20 = load i32, ptr %19, align 4, !dbg !3482, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3461, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3463, metadata !DIExpression()), !dbg !3464
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3480
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3463, metadata !DIExpression()), !dbg !3464
  %22 = icmp eq i32 %20, 0, !dbg !3483
  br i1 %22, label %24, label %23, !dbg !3481

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3485, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3463, metadata !DIExpression()), !dbg !3464
  br label %24, !dbg !3487

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3464
  ret i32 %25, !dbg !3488
}

; Function Attrs: nofree nounwind
declare !dbg !3489 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3490 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3491 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3492 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3495 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3534
  %2 = icmp eq ptr %0, null, !dbg !3535
  br i1 %2, label %6, label %3, !dbg !3537

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3538
  %5 = icmp eq i32 %4, 0, !dbg !3538
  br i1 %5, label %6, label %8, !dbg !3539

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3540
  br label %16, !dbg !3541

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3542, metadata !DIExpression()), !dbg !3547
  %9 = load i32, ptr %0, align 8, !dbg !3549, !tbaa !3401
  %10 = and i32 %9, 256, !dbg !3551
  %11 = icmp eq i32 %10, 0, !dbg !3551
  br i1 %11, label %14, label %12, !dbg !3552

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3553
  br label %14, !dbg !3553

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3554
  br label %16, !dbg !3555

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3534
  ret i32 %17, !dbg !3556
}

; Function Attrs: nofree nounwind
declare !dbg !3557 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3558 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3597, metadata !DIExpression()), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3598, metadata !DIExpression()), !dbg !3603
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3599, metadata !DIExpression()), !dbg !3603
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3604
  %5 = load ptr, ptr %4, align 8, !dbg !3604, !tbaa !3605
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3606
  %7 = load ptr, ptr %6, align 8, !dbg !3606, !tbaa !3607
  %8 = icmp eq ptr %5, %7, !dbg !3608
  br i1 %8, label %9, label %27, !dbg !3609

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3610
  %11 = load ptr, ptr %10, align 8, !dbg !3610, !tbaa !1247
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3611
  %13 = load ptr, ptr %12, align 8, !dbg !3611, !tbaa !3612
  %14 = icmp eq ptr %11, %13, !dbg !3613
  br i1 %14, label %15, label %27, !dbg !3614

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3615
  %17 = load ptr, ptr %16, align 8, !dbg !3615, !tbaa !3616
  %18 = icmp eq ptr %17, null, !dbg !3617
  br i1 %18, label %19, label %27, !dbg !3618

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3619
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3600, metadata !DIExpression()), !dbg !3621
  %22 = icmp eq i64 %21, -1, !dbg !3622
  br i1 %22, label %29, label %23, !dbg !3624

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3625, !tbaa !3401
  %25 = and i32 %24, -17, !dbg !3625
  store i32 %25, ptr %0, align 8, !dbg !3625, !tbaa !3401
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3626
  store i64 %21, ptr %26, align 8, !dbg !3627, !tbaa !3628
  br label %29, !dbg !3629

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3630
  br label %29, !dbg !3631

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3603
  ret i32 %30, !dbg !3632
}

; Function Attrs: nofree nounwind
declare !dbg !3633 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3636 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3641, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3642, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3643, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3644, metadata !DIExpression()), !dbg !3646
  %5 = icmp eq ptr %1, null, !dbg !3647
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3649
  %7 = select i1 %5, ptr @.str.122, ptr %1, !dbg !3649
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3643, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3642, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3641, metadata !DIExpression()), !dbg !3646
  %9 = icmp eq ptr %3, null, !dbg !3650
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3652
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3644, metadata !DIExpression()), !dbg !3646
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3653
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3645, metadata !DIExpression()), !dbg !3646
  %12 = icmp ult i64 %11, -3, !dbg !3654
  br i1 %12, label %13, label %17, !dbg !3656

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3657
  %15 = icmp eq i32 %14, 0, !dbg !3657
  br i1 %15, label %16, label %29, !dbg !3658

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3659, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %10, metadata !3666, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i32 0, metadata !3669, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 8, metadata !3670, metadata !DIExpression()), !dbg !3671
  store i64 0, ptr %10, align 1, !dbg !3673
  br label %29, !dbg !3674

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3675
  br i1 %18, label %19, label %20, !dbg !3677

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3678
  unreachable, !dbg !3678

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3679

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3681
  br i1 %23, label %29, label %24, !dbg !3682

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3683
  br i1 %25, label %29, label %26, !dbg !3686

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3687, !tbaa !842
  %28 = zext i8 %27 to i32, !dbg !3688
  store i32 %28, ptr %6, align 4, !dbg !3689, !tbaa !833
  br label %29, !dbg !3690

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3646
  ret i64 %30, !dbg !3691
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3692 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3698 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3700, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3701, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3702, metadata !DIExpression()), !dbg !3704
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3705
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3705
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3703, metadata !DIExpression()), !dbg !3704
  br i1 %5, label %6, label %8, !dbg !3707

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3708
  store i32 12, ptr %7, align 4, !dbg !3710, !tbaa !833
  br label %12, !dbg !3711

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3705
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3703, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %0, metadata !3712, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %9, metadata !3715, metadata !DIExpression()), !dbg !3716
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3718
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3719
  br label %12, !dbg !3720

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3704
  ret ptr %13, !dbg !3721
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3722 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3731
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3727, metadata !DIExpression(), metadata !3731, metadata ptr %2, metadata !DIExpression()), !dbg !3732
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3726, metadata !DIExpression()), !dbg !3732
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3733
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3734
  %4 = icmp eq i32 %3, 0, !dbg !3734
  br i1 %4, label %5, label %12, !dbg !3736

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3737, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata ptr @.str.127, metadata !3740, metadata !DIExpression()), !dbg !3741
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.127, i64 2), !dbg !3744
  %7 = icmp eq i32 %6, 0, !dbg !3745
  br i1 %7, label %11, label %8, !dbg !3746

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3737, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr @.str.1.128, metadata !3740, metadata !DIExpression()), !dbg !3747
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.128, i64 6), !dbg !3749
  %10 = icmp eq i32 %9, 0, !dbg !3750
  br i1 %10, label %11, label %12, !dbg !3751

11:                                               ; preds = %8, %5
  br label %12, !dbg !3752

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3732
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3753
  ret i1 %13, !dbg !3753
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3754 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3758, metadata !DIExpression()), !dbg !3761
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3759, metadata !DIExpression()), !dbg !3761
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3760, metadata !DIExpression()), !dbg !3761
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3762
  ret i32 %4, !dbg !3763
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3764 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3768, metadata !DIExpression()), !dbg !3769
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3770
  ret ptr %2, !dbg !3771
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3772 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3774, metadata !DIExpression()), !dbg !3776
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3777
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3775, metadata !DIExpression()), !dbg !3776
  ret ptr %2, !dbg !3778
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3779 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3781, metadata !DIExpression()), !dbg !3788
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3782, metadata !DIExpression()), !dbg !3788
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3783, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i32 %0, metadata !3774, metadata !DIExpression()), !dbg !3789
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3791
  call void @llvm.dbg.value(metadata ptr %4, metadata !3775, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3784, metadata !DIExpression()), !dbg !3788
  %5 = icmp eq ptr %4, null, !dbg !3792
  br i1 %5, label %6, label %9, !dbg !3793

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3794
  br i1 %7, label %19, label %8, !dbg !3797

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3798, !tbaa !842
  br label %19, !dbg !3799

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3800
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3785, metadata !DIExpression()), !dbg !3801
  %11 = icmp ult i64 %10, %2, !dbg !3802
  br i1 %11, label %12, label %14, !dbg !3804

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3805
  call void @llvm.dbg.value(metadata ptr %1, metadata !3807, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %4, metadata !3810, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 %13, metadata !3811, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3814
  br label %19, !dbg !3815

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3816
  br i1 %15, label %19, label %16, !dbg !3819

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3820
  call void @llvm.dbg.value(metadata ptr %1, metadata !3807, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata ptr %4, metadata !3810, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %17, metadata !3811, metadata !DIExpression()), !dbg !3822
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3824
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3825
  store i8 0, ptr %18, align 1, !dbg !3826, !tbaa !842
  br label %19, !dbg !3827

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3828
  ret i32 %20, !dbg !3829
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
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !337, !341, !356, !656, !690, !412, !426, !477, !692, !648, !699, !734, !736, !738, !740, !742, !672, !744, !746, !748, !750}
!llvm.ident = !{!752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752}
!llvm.module.flags = !{!753, !754, !755, !756, !757, !758, !759, !760}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tty.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19d46bb11b698354da53d591921bc5e9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!72 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!73 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
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
!148 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !151)
!150 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!173 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!324 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!355 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !356, file: !357, line: 66, type: !407, isLocal: false, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C11, file: !357, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !358, globals: !359, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!358 = !{!91, !98}
!359 = !{!360, !362, !386, !388, !390, !392, !354, !394, !396, !398, !400, !405}
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !357, line: 272, type: !206, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "old_file_name", scope: !364, file: !357, line: 304, type: !96, isLocal: true, isDefinition: true)
!364 = distinct !DISubprogram(name: "verror_at_line", scope: !357, file: !357, line: 298, type: !365, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !379)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !70, !70, !96, !62, !96, !367}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !368, line: 52, baseType: !369)
!368 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !370, line: 12, baseType: !371)
!370 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !357, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !373)
!373 = !{!374, !375, !376, !377, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !372, file: !357, baseType: !91, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !372, file: !357, baseType: !91, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !372, file: !357, baseType: !91, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !372, file: !357, baseType: !70, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !372, file: !357, baseType: !70, size: 32, offset: 224)
!379 = !{!380, !381, !382, !383, !384, !385}
!380 = !DILocalVariable(name: "status", arg: 1, scope: !364, file: !357, line: 298, type: !70)
!381 = !DILocalVariable(name: "errnum", arg: 2, scope: !364, file: !357, line: 298, type: !70)
!382 = !DILocalVariable(name: "file_name", arg: 3, scope: !364, file: !357, line: 298, type: !96)
!383 = !DILocalVariable(name: "line_number", arg: 4, scope: !364, file: !357, line: 298, type: !62)
!384 = !DILocalVariable(name: "message", arg: 5, scope: !364, file: !357, line: 298, type: !96)
!385 = !DILocalVariable(name: "args", arg: 6, scope: !364, file: !357, line: 298, type: !367)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "old_line_number", scope: !364, file: !357, line: 305, type: !62, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !357, line: 338, type: !19, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !357, line: 346, type: !242, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !357, line: 346, type: !54, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "error_message_count", scope: !356, file: !357, line: 69, type: !62, isLocal: false, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !356, file: !357, line: 295, type: !70, isLocal: false, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !357, line: 208, type: !237, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !357, line: 208, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 21)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !357, line: 214, type: !206, isLocal: true, isDefinition: true)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null}
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "program_name", scope: !412, file: !413, line: 31, type: !96, isLocal: false, isDefinition: true)
!412 = distinct !DICompileUnit(language: DW_LANG_C11, file: !413, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !414, globals: !415, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!414 = !{!91, !90}
!415 = !{!410, !416, !418}
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !413, line: 46, type: !242, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !413, line: 49, type: !19, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "utf07FF", scope: !422, file: !423, line: 46, type: !450, isLocal: true, isDefinition: true)
!422 = distinct !DISubprogram(name: "proper_name_lite", scope: !423, file: !423, line: 38, type: !424, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !428)
!423 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!424 = !DISubroutineType(types: !425)
!425 = !{!96, !96, !96}
!426 = distinct !DICompileUnit(language: DW_LANG_C11, file: !423, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !427, splitDebugInlining: false, nameTableKind: None)
!427 = !{!420}
!428 = !{!429, !430, !431, !432, !437}
!429 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !422, file: !423, line: 38, type: !96)
!430 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !422, file: !423, line: 38, type: !96)
!431 = !DILocalVariable(name: "translation", scope: !422, file: !423, line: 40, type: !96)
!432 = !DILocalVariable(name: "w", scope: !422, file: !423, line: 47, type: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !434, line: 37, baseType: !435)
!434 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !173, line: 57, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !62)
!437 = !DILocalVariable(name: "mbs", scope: !422, file: !423, line: 48, type: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !439, line: 6, baseType: !440)
!439 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !441, line: 21, baseType: !442)
!441 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 13, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !442, file: !441, line: 15, baseType: !70, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !442, file: !441, line: 20, baseType: !446, size: 32, offset: 32)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !441, line: 16, size: 32, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !446, file: !441, line: 18, baseType: !62, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !446, file: !441, line: 19, baseType: !19, size: 32)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !55)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !453, line: 78, type: !242, isLocal: true, isDefinition: true)
!453 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !453, line: 79, type: !215, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !453, line: 80, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 13)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !453, line: 81, type: !458, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !453, line: 82, type: !195, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !453, line: 83, type: !54, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !453, line: 84, type: !242, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !453, line: 85, type: !237, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !453, line: 86, type: !237, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !453, line: 87, type: !242, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !477, file: !453, line: 76, type: !563, isLocal: false, isDefinition: true)
!477 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !478, retainedTypes: !498, globals: !499, splitDebugInlining: false, nameTableKind: None)
!478 = !{!479, !493, !74}
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !480, line: 42, baseType: !62, size: 32, elements: !481)
!480 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!482 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!483 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!484 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!485 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!486 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!487 = !DIEnumerator(name: "c_quoting_style", value: 5)
!488 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!489 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!490 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!491 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!492 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !480, line: 254, baseType: !62, size: 32, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!496 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!497 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!498 = !{!91, !70, !92, !93}
!499 = !{!451, !454, !456, !461, !463, !465, !467, !469, !471, !473, !475, !500, !504, !514, !516, !521, !523, !525, !527, !529, !552, !559, !561}
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !477, file: !453, line: 92, type: !502, isLocal: false, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 320, elements: !45)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !477, file: !453, line: 1040, type: !506, isLocal: false, isDefinition: true)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !453, line: 56, size: 448, elements: !507)
!507 = !{!508, !509, !510, !512, !513}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !506, file: !453, line: 59, baseType: !479, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !453, line: 62, baseType: !70, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !506, file: !453, line: 66, baseType: !511, size: 256, offset: 64)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !243)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !506, file: !453, line: 69, baseType: !96, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !506, file: !453, line: 72, baseType: !96, size: 64, offset: 384)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !477, file: !453, line: 107, type: !506, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "slot0", scope: !477, file: !453, line: 831, type: !518, isLocal: true, isDefinition: true)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 256)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !453, line: 321, type: !54, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !453, line: 357, type: !54, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !453, line: 358, type: !54, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !453, line: 199, type: !237, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "quote", scope: !531, file: !453, line: 228, type: !550, isLocal: true, isDefinition: true)
!531 = distinct !DISubprogram(name: "gettext_quote", scope: !453, file: !453, line: 197, type: !532, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!96, !96, !479}
!534 = !{!535, !536, !537, !538, !539}
!535 = !DILocalVariable(name: "msgid", arg: 1, scope: !531, file: !453, line: 197, type: !96)
!536 = !DILocalVariable(name: "s", arg: 2, scope: !531, file: !453, line: 197, type: !479)
!537 = !DILocalVariable(name: "translation", scope: !531, file: !453, line: 199, type: !96)
!538 = !DILocalVariable(name: "w", scope: !531, file: !453, line: 229, type: !433)
!539 = !DILocalVariable(name: "mbs", scope: !531, file: !453, line: 230, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !439, line: 6, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !441, line: 21, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 13, size: 64, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !542, file: !441, line: 15, baseType: !70, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !542, file: !441, line: 20, baseType: !546, size: 32, offset: 32)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !441, line: 16, size: 32, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !546, file: !441, line: 18, baseType: !62, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !546, file: !441, line: 19, baseType: !19, size: 32)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !551)
!551 = !{!56, !21}
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "slotvec", scope: !477, file: !453, line: 834, type: !554, isLocal: true, isDefinition: true)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !453, line: 823, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !555, file: !453, line: 825, baseType: !93, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !555, file: !453, line: 826, baseType: !90, size: 64, offset: 64)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "nslots", scope: !477, file: !453, line: 832, type: !70, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "slotvec0", scope: !477, file: !453, line: 833, type: !555, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 704, elements: !565)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!565 = !{!566}
!566 = !DISubrange(count: 11)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !569, line: 67, type: !310, isLocal: true, isDefinition: true)
!569 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !569, line: 69, type: !237, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !569, line: 83, type: !237, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !569, line: 83, type: !19, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !569, line: 85, type: !54, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !569, line: 88, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 171)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !569, line: 88, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 34)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !569, line: 105, type: !107, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !569, line: 109, type: !9, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !569, line: 113, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 28)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !569, line: 120, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 32)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !569, line: 127, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 36)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !569, line: 134, type: !261, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !569, line: 142, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 44)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !569, line: 150, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 48)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !569, line: 159, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 52)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !569, line: 170, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 60)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !569, line: 248, type: !195, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !569, line: 248, type: !286, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !569, line: 254, type: !195, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !569, line: 254, type: !102, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !569, line: 254, type: !261, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !569, line: 259, type: !3, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !569, line: 259, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 29)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !648, file: !649, line: 26, type: !651, isLocal: false, isDefinition: true)
!648 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !650, splitDebugInlining: false, nameTableKind: None)
!649 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!650 = !{!646}
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 376, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 47)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "exit_failure", scope: !656, file: !657, line: 24, type: !659, isLocal: false, isDefinition: true)
!656 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !658, splitDebugInlining: false, nameTableKind: None)
!657 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!658 = !{!654}
!659 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !662, line: 34, type: !226, isLocal: true, isDefinition: true)
!662 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !662, line: 34, type: !237, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !662, line: 34, type: !112, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !669, line: 108, type: !39, isLocal: true, isDefinition: true)
!669 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(name: "internal_state", scope: !672, file: !669, line: 97, type: !675, isLocal: true, isDefinition: true)
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !673, globals: !674, splitDebugInlining: false, nameTableKind: None)
!673 = !{!91, !93, !98}
!674 = !{!667, !670}
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !439, line: 6, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !441, line: 21, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 13, size: 64, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !677, file: !441, line: 15, baseType: !70, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !677, file: !441, line: 20, baseType: !681, size: 32, offset: 32)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !441, line: 16, size: 32, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !681, file: !441, line: 18, baseType: !62, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !681, file: !441, line: 19, baseType: !19, size: 32)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !687, line: 35, type: !54, isLocal: true, isDefinition: true)
!687 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !687, line: 35, type: !215, isLocal: true, isDefinition: true)
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!691 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!692 = distinct !DICompileUnit(language: DW_LANG_C11, file: !569, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !693, retainedTypes: !697, globals: !698, splitDebugInlining: false, nameTableKind: None)
!693 = !{!694}
!694 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !569, line: 40, baseType: !62, size: 32, elements: !695)
!695 = !{!696}
!696 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!697 = !{!91}
!698 = !{!567, !570, !572, !574, !576, !578, !583, !588, !590, !592, !597, !602, !607, !609, !614, !619, !624, !629, !631, !633, !635, !637, !639, !641}
!699 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !701, retainedTypes: !733, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!701 = !{!702, !714}
!702 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !703, file: !700, line: 188, baseType: !62, size: 32, elements: !712)
!703 = distinct !DISubprogram(name: "x2nrealloc", scope: !700, file: !700, line: 176, type: !704, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !707)
!704 = !DISubroutineType(types: !705)
!705 = !{!91, !91, !706, !93}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!707 = !{!708, !709, !710, !711}
!708 = !DILocalVariable(name: "p", arg: 1, scope: !703, file: !700, line: 176, type: !91)
!709 = !DILocalVariable(name: "pn", arg: 2, scope: !703, file: !700, line: 176, type: !706)
!710 = !DILocalVariable(name: "s", arg: 3, scope: !703, file: !700, line: 176, type: !93)
!711 = !DILocalVariable(name: "n", scope: !703, file: !700, line: 178, type: !93)
!712 = !{!713}
!713 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!714 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !715, file: !700, line: 228, baseType: !62, size: 32, elements: !712)
!715 = distinct !DISubprogram(name: "xpalloc", scope: !700, file: !700, line: 223, type: !716, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !723)
!716 = !DISubroutineType(types: !717)
!717 = !{!91, !91, !718, !719, !721, !719}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !720, line: 130, baseType: !721)
!720 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !722, line: 18, baseType: !174)
!722 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732}
!724 = !DILocalVariable(name: "pa", arg: 1, scope: !715, file: !700, line: 223, type: !91)
!725 = !DILocalVariable(name: "pn", arg: 2, scope: !715, file: !700, line: 223, type: !718)
!726 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !715, file: !700, line: 223, type: !719)
!727 = !DILocalVariable(name: "n_max", arg: 4, scope: !715, file: !700, line: 223, type: !721)
!728 = !DILocalVariable(name: "s", arg: 5, scope: !715, file: !700, line: 223, type: !719)
!729 = !DILocalVariable(name: "n0", scope: !715, file: !700, line: 230, type: !719)
!730 = !DILocalVariable(name: "n", scope: !715, file: !700, line: 237, type: !719)
!731 = !DILocalVariable(name: "nbytes", scope: !715, file: !700, line: 248, type: !719)
!732 = !DILocalVariable(name: "adjusted_nbytes", scope: !715, file: !700, line: 252, type: !719)
!733 = !{!90, !91}
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !662, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !735, splitDebugInlining: false, nameTableKind: None)
!735 = !{!660, !663, !665}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!737 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !697, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !697, splitDebugInlining: false, nameTableKind: None)
!743 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !697, splitDebugInlining: false, nameTableKind: None)
!745 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !747, splitDebugInlining: false, nameTableKind: None)
!747 = !{!685, !688}
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!750 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !697, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!752 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!753 = !{i32 7, !"Dwarf Version", i32 5}
!754 = !{i32 2, !"Debug Info Version", i32 3}
!755 = !{i32 1, !"wchar_size", i32 4}
!756 = !{i32 8, !"PIC Level", i32 2}
!757 = !{i32 7, !"PIE Level", i32 2}
!758 = !{i32 7, !"uwtable", i32 2}
!759 = !{i32 7, !"frame-pointer", i32 1}
!760 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!761 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 59, type: !762, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !70}
!764 = !{!765}
!765 = !DILocalVariable(name: "status", arg: 1, scope: !761, file: !2, line: 59, type: !70)
!766 = !DILocation(line: 0, scope: !761)
!767 = !DILocation(line: 61, column: 14, scope: !768)
!768 = distinct !DILexicalBlock(scope: !761, file: !2, line: 61, column: 7)
!769 = !DILocation(line: 61, column: 7, scope: !761)
!770 = !DILocation(line: 62, column: 5, scope: !771)
!771 = distinct !DILexicalBlock(scope: !768, file: !2, line: 62, column: 5)
!772 = !{!773, !773, i64 0}
!773 = !{!"any pointer", !774, i64 0}
!774 = !{!"omnipotent char", !775, i64 0}
!775 = !{!"Simple C/C++ TBAA"}
!776 = !DILocation(line: 65, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !768, file: !2, line: 64, column: 5)
!778 = !DILocation(line: 66, column: 7, scope: !777)
!779 = !DILocation(line: 70, column: 7, scope: !777)
!780 = !DILocation(line: 74, column: 7, scope: !777)
!781 = !DILocation(line: 75, column: 7, scope: !777)
!782 = !DILocalVariable(name: "program", arg: 1, scope: !783, file: !69, line: 836, type: !96)
!783 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !784, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !96}
!786 = !{!782, !787, !794, !795, !797, !798}
!787 = !DILocalVariable(name: "infomap", scope: !783, file: !69, line: 838, type: !788)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 896, elements: !238)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !783, file: !69, line: 838, size: 128, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !790, file: !69, line: 838, baseType: !96, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !790, file: !69, line: 838, baseType: !96, size: 64, offset: 64)
!794 = !DILocalVariable(name: "node", scope: !783, file: !69, line: 848, type: !96)
!795 = !DILocalVariable(name: "map_prog", scope: !783, file: !69, line: 849, type: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!797 = !DILocalVariable(name: "lc_messages", scope: !783, file: !69, line: 861, type: !96)
!798 = !DILocalVariable(name: "url_program", scope: !783, file: !69, line: 874, type: !96)
!799 = !DILocation(line: 0, scope: !783, inlinedAt: !800)
!800 = distinct !DILocation(line: 76, column: 7, scope: !777)
!801 = !{}
!802 = !DILocation(line: 857, column: 3, scope: !783, inlinedAt: !800)
!803 = !DILocation(line: 861, column: 29, scope: !783, inlinedAt: !800)
!804 = !DILocation(line: 862, column: 7, scope: !805, inlinedAt: !800)
!805 = distinct !DILexicalBlock(scope: !783, file: !69, line: 862, column: 7)
!806 = !DILocation(line: 862, column: 19, scope: !805, inlinedAt: !800)
!807 = !DILocation(line: 862, column: 22, scope: !805, inlinedAt: !800)
!808 = !DILocation(line: 862, column: 7, scope: !783, inlinedAt: !800)
!809 = !DILocation(line: 868, column: 7, scope: !810, inlinedAt: !800)
!810 = distinct !DILexicalBlock(scope: !805, file: !69, line: 863, column: 5)
!811 = !DILocation(line: 870, column: 5, scope: !810, inlinedAt: !800)
!812 = !DILocation(line: 875, column: 3, scope: !783, inlinedAt: !800)
!813 = !DILocation(line: 877, column: 3, scope: !783, inlinedAt: !800)
!814 = !DILocation(line: 78, column: 3, scope: !761)
!815 = !DISubprogram(name: "dcgettext", scope: !816, file: !816, line: 51, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!816 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!817 = !DISubroutineType(types: !818)
!818 = !{!90, !96, !96, !70}
!819 = !DISubprogram(name: "__fprintf_chk", scope: !820, file: !820, line: 93, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!820 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!821 = !DISubroutineType(types: !822)
!822 = !{!70, !823, !70, !824, null}
!823 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!824 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!825 = !DISubprogram(name: "__printf_chk", scope: !820, file: !820, line: 95, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!826 = !DISubroutineType(types: !827)
!827 = !{!70, !70, !824, null}
!828 = !DISubprogram(name: "fputs_unlocked", scope: !368, file: !368, line: 691, type: !829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!829 = !DISubroutineType(types: !830)
!830 = !{!70, !824, !823}
!831 = !DILocation(line: 0, scope: !124)
!832 = !DILocation(line: 581, column: 7, scope: !132)
!833 = !{!834, !834, i64 0}
!834 = !{!"int", !774, i64 0}
!835 = !DILocation(line: 581, column: 19, scope: !132)
!836 = !DILocation(line: 581, column: 7, scope: !124)
!837 = !DILocation(line: 585, column: 26, scope: !131)
!838 = !DILocation(line: 0, scope: !131)
!839 = !DILocation(line: 586, column: 23, scope: !131)
!840 = !DILocation(line: 586, column: 28, scope: !131)
!841 = !DILocation(line: 586, column: 32, scope: !131)
!842 = !{!774, !774, i64 0}
!843 = !DILocation(line: 586, column: 38, scope: !131)
!844 = !DILocalVariable(name: "__s1", arg: 1, scope: !845, file: !846, line: 1359, type: !96)
!845 = distinct !DISubprogram(name: "streq", scope: !846, file: !846, line: 1359, type: !847, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !849)
!846 = !DIFile(filename: "./lib/string.h", directory: "/src")
!847 = !DISubroutineType(types: !848)
!848 = !{!121, !96, !96}
!849 = !{!844, !850}
!850 = !DILocalVariable(name: "__s2", arg: 2, scope: !845, file: !846, line: 1359, type: !96)
!851 = !DILocation(line: 0, scope: !845, inlinedAt: !852)
!852 = distinct !DILocation(line: 586, column: 41, scope: !131)
!853 = !DILocation(line: 1361, column: 11, scope: !845, inlinedAt: !852)
!854 = !DILocation(line: 1361, column: 10, scope: !845, inlinedAt: !852)
!855 = !DILocation(line: 586, column: 19, scope: !131)
!856 = !DILocation(line: 587, column: 5, scope: !131)
!857 = !DILocation(line: 588, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !124, file: !69, line: 588, column: 7)
!859 = !DILocation(line: 588, column: 7, scope: !124)
!860 = !DILocation(line: 590, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !69, line: 589, column: 5)
!862 = !DILocation(line: 591, column: 7, scope: !861)
!863 = !DILocation(line: 595, column: 37, scope: !124)
!864 = !DILocation(line: 595, column: 35, scope: !124)
!865 = !DILocation(line: 596, column: 29, scope: !124)
!866 = !DILocation(line: 597, column: 8, scope: !139)
!867 = !DILocation(line: 597, column: 7, scope: !124)
!868 = !DILocation(line: 604, column: 24, scope: !138)
!869 = !DILocation(line: 604, column: 12, scope: !139)
!870 = !DILocation(line: 0, scope: !137)
!871 = !DILocation(line: 610, column: 16, scope: !137)
!872 = !DILocation(line: 610, column: 7, scope: !137)
!873 = !DILocation(line: 611, column: 21, scope: !137)
!874 = !{!875, !875, i64 0}
!875 = !{!"short", !774, i64 0}
!876 = !DILocation(line: 611, column: 19, scope: !137)
!877 = !DILocation(line: 611, column: 16, scope: !137)
!878 = !DILocation(line: 610, column: 30, scope: !137)
!879 = distinct !{!879, !872, !873, !880}
!880 = !{!"llvm.loop.mustprogress"}
!881 = !DILocation(line: 612, column: 18, scope: !882)
!882 = distinct !DILexicalBlock(scope: !137, file: !69, line: 612, column: 11)
!883 = !DILocation(line: 612, column: 11, scope: !137)
!884 = !DILocation(line: 620, column: 23, scope: !124)
!885 = !DILocation(line: 625, column: 39, scope: !124)
!886 = !DILocation(line: 626, column: 3, scope: !124)
!887 = !DILocation(line: 626, column: 10, scope: !124)
!888 = !DILocation(line: 626, column: 21, scope: !124)
!889 = !DILocation(line: 628, column: 44, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !69, line: 628, column: 11)
!891 = distinct !DILexicalBlock(scope: !124, file: !69, line: 627, column: 5)
!892 = !DILocation(line: 628, column: 32, scope: !890)
!893 = !DILocation(line: 628, column: 49, scope: !890)
!894 = !DILocation(line: 628, column: 11, scope: !891)
!895 = !DILocation(line: 630, column: 11, scope: !896)
!896 = distinct !DILexicalBlock(scope: !891, file: !69, line: 630, column: 11)
!897 = !DILocation(line: 630, column: 11, scope: !891)
!898 = !DILocation(line: 632, column: 26, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !69, line: 632, column: 15)
!900 = distinct !DILexicalBlock(scope: !896, file: !69, line: 631, column: 9)
!901 = !DILocation(line: 632, column: 34, scope: !899)
!902 = !DILocation(line: 632, column: 37, scope: !899)
!903 = !DILocation(line: 632, column: 15, scope: !900)
!904 = !DILocation(line: 640, column: 16, scope: !891)
!905 = distinct !{!905, !886, !906, !880}
!906 = !DILocation(line: 641, column: 5, scope: !124)
!907 = !DILocation(line: 644, column: 3, scope: !124)
!908 = !DILocation(line: 0, scope: !845, inlinedAt: !909)
!909 = distinct !DILocation(line: 648, column: 31, scope: !124)
!910 = !DILocation(line: 0, scope: !845, inlinedAt: !911)
!911 = distinct !DILocation(line: 649, column: 31, scope: !124)
!912 = !DILocation(line: 0, scope: !845, inlinedAt: !913)
!913 = distinct !DILocation(line: 650, column: 31, scope: !124)
!914 = !DILocation(line: 0, scope: !845, inlinedAt: !915)
!915 = distinct !DILocation(line: 651, column: 31, scope: !124)
!916 = !DILocation(line: 0, scope: !845, inlinedAt: !917)
!917 = distinct !DILocation(line: 652, column: 31, scope: !124)
!918 = !DILocation(line: 0, scope: !845, inlinedAt: !919)
!919 = distinct !DILocation(line: 653, column: 31, scope: !124)
!920 = !DILocation(line: 0, scope: !845, inlinedAt: !921)
!921 = distinct !DILocation(line: 654, column: 31, scope: !124)
!922 = !DILocation(line: 0, scope: !845, inlinedAt: !923)
!923 = distinct !DILocation(line: 655, column: 31, scope: !124)
!924 = !DILocation(line: 0, scope: !845, inlinedAt: !925)
!925 = distinct !DILocation(line: 656, column: 31, scope: !124)
!926 = !DILocation(line: 0, scope: !845, inlinedAt: !927)
!927 = distinct !DILocation(line: 657, column: 31, scope: !124)
!928 = !DILocation(line: 663, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !124, file: !69, line: 663, column: 7)
!930 = !DILocation(line: 664, column: 7, scope: !929)
!931 = !DILocation(line: 664, column: 10, scope: !929)
!932 = !DILocation(line: 663, column: 7, scope: !124)
!933 = !DILocation(line: 669, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !69, line: 665, column: 5)
!935 = !DILocation(line: 671, column: 5, scope: !934)
!936 = !DILocation(line: 676, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !929, file: !69, line: 673, column: 5)
!938 = !DILocation(line: 679, column: 3, scope: !124)
!939 = !DILocation(line: 683, column: 3, scope: !124)
!940 = !DILocation(line: 686, column: 3, scope: !124)
!941 = !DILocation(line: 688, column: 3, scope: !124)
!942 = !DILocation(line: 691, column: 3, scope: !124)
!943 = !DILocation(line: 695, column: 3, scope: !124)
!944 = !DILocation(line: 696, column: 1, scope: !124)
!945 = !DISubprogram(name: "setlocale", scope: !946, file: !946, line: 122, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!946 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!947 = !DISubroutineType(types: !948)
!948 = !{!90, !70, !96}
!949 = !DISubprogram(name: "strncmp", scope: !950, file: !950, line: 159, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!950 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!951 = !DISubroutineType(types: !952)
!952 = !{!70, !96, !96, !93}
!953 = !DISubprogram(name: "exit", scope: !954, file: !954, line: 624, type: !762, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!954 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!955 = !DISubprogram(name: "getenv", scope: !954, file: !954, line: 641, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DISubroutineType(types: !957)
!957 = !{!90, !96}
!958 = !DISubprogram(name: "strcmp", scope: !950, file: !950, line: 156, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{!70, !96, !96}
!961 = !DISubprogram(name: "strspn", scope: !950, file: !950, line: 297, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{!95, !96, !96}
!964 = !DISubprogram(name: "strchr", scope: !950, file: !950, line: 246, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DISubroutineType(types: !966)
!966 = !{!90, !96, !70}
!967 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubroutineType(types: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!973 = !DISubprogram(name: "strcspn", scope: !950, file: !950, line: 293, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DISubprogram(name: "fwrite_unlocked", scope: !368, file: !368, line: 704, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!975 = !DISubroutineType(types: !976)
!976 = !{!93, !977, !93, !93, !823}
!977 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!980 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !981, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !984)
!981 = !DISubroutineType(types: !982)
!982 = !{!70, !70, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!984 = !{!985, !986, !987, !988, !989, !990}
!985 = !DILocalVariable(name: "argc", arg: 1, scope: !980, file: !2, line: 82, type: !70)
!986 = !DILocalVariable(name: "argv", arg: 2, scope: !980, file: !2, line: 82, type: !983)
!987 = !DILocalVariable(name: "optc", scope: !980, file: !2, line: 84, type: !70)
!988 = !DILocalVariable(name: "status", scope: !980, file: !2, line: 121, type: !70)
!989 = !DILocalVariable(name: "tty", scope: !980, file: !2, line: 122, type: !96)
!990 = !DILocalVariable(name: "ttyname_err", scope: !991, file: !2, line: 128, type: !70)
!991 = distinct !DILexicalBlock(scope: !992, file: !2, line: 127, column: 5)
!992 = distinct !DILexicalBlock(scope: !980, file: !2, line: 124, column: 7)
!993 = !DILocation(line: 0, scope: !980)
!994 = !DILocation(line: 87, column: 21, scope: !980)
!995 = !DILocation(line: 87, column: 3, scope: !980)
!996 = !DILocation(line: 88, column: 3, scope: !980)
!997 = !DILocation(line: 89, column: 3, scope: !980)
!998 = !DILocation(line: 90, column: 3, scope: !980)
!999 = !DILocalVariable(name: "status", arg: 1, scope: !1000, file: !69, line: 102, type: !70)
!1000 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !69, file: !69, line: 102, type: !762, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1001)
!1001 = !{!999}
!1002 = !DILocation(line: 0, scope: !1000, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 92, column: 3, scope: !980)
!1004 = !DILocation(line: 105, column: 18, scope: !1005, inlinedAt: !1003)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !69, line: 104, column: 7)
!1006 = !DILocation(line: 93, column: 3, scope: !980)
!1007 = !DILocation(line: 95, column: 3, scope: !980)
!1008 = !DILocation(line: 95, column: 18, scope: !980)
!1009 = !DILocation(line: 100, column: 18, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 98, column: 9)
!1011 = distinct !DILexicalBlock(scope: !980, file: !2, line: 96, column: 5)
!1012 = distinct !{!1012, !1007, !1013, !880}
!1013 = !DILocation(line: 110, column: 5, scope: !980)
!1014 = !DILocation(line: 103, column: 9, scope: !1010)
!1015 = !DILocation(line: 105, column: 9, scope: !1010)
!1016 = !DILocation(line: 108, column: 11, scope: !1010)
!1017 = !DILocation(line: 112, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !980, file: !2, line: 112, column: 7)
!1019 = !DILocation(line: 112, column: 14, scope: !1018)
!1020 = !DILocation(line: 112, column: 7, scope: !980)
!1021 = !DILocation(line: 114, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 113, column: 5)
!1023 = !DILocation(line: 115, column: 7, scope: !1022)
!1024 = !DILocation(line: 118, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !980, file: !2, line: 118, column: 7)
!1026 = !DILocation(line: 118, column: 7, scope: !980)
!1027 = !DILocation(line: 119, column: 12, scope: !1025)
!1028 = !DILocation(line: 119, column: 5, scope: !1025)
!1029 = !DILocation(line: 122, column: 21, scope: !980)
!1030 = !DILocation(line: 124, column: 7, scope: !992)
!1031 = !DILocation(line: 124, column: 7, scope: !980)
!1032 = !DILocation(line: 128, column: 25, scope: !991)
!1033 = !DILocation(line: 0, scope: !991)
!1034 = !DILocation(line: 129, column: 11, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !991, file: !2, line: 129, column: 11)
!1036 = !DILocation(line: 129, column: 11, scope: !991)
!1037 = !DILocation(line: 130, column: 9, scope: !1035)
!1038 = !DILocation(line: 131, column: 13, scope: !991)
!1039 = !DILocation(line: 0, scope: !992)
!1040 = !DILocation(line: 135, column: 3, scope: !980)
!1041 = !DILocation(line: 137, column: 1, scope: !980)
!1042 = !DISubprogram(name: "bindtextdomain", scope: !816, file: !816, line: 86, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!90, !96, !96}
!1045 = !DISubprogram(name: "textdomain", scope: !816, file: !816, line: 82, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DISubprogram(name: "atexit", scope: !954, file: !954, line: 602, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!70, !407}
!1049 = !DISubprogram(name: "getopt_long", scope: !324, file: !324, line: 66, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!70, !70, !1052, !96, !1054, !329}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1055 = !DISubprogram(name: "isatty", scope: !1056, file: !1056, line: 809, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!70, !70}
!1059 = !DISubprogram(name: "ttyname", scope: !1056, file: !1056, line: 799, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!90, !70}
!1062 = !DISubprogram(name: "__errno_location", scope: !1063, file: !1063, line: 37, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!329}
!1066 = !DISubprogram(name: "puts", scope: !368, file: !368, line: 661, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!70, !96}
!1069 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !342, file: !342, line: 50, type: !784, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1070)
!1070 = !{!1071}
!1071 = !DILocalVariable(name: "file", arg: 1, scope: !1069, file: !342, line: 50, type: !96)
!1072 = !DILocation(line: 0, scope: !1069)
!1073 = !DILocation(line: 52, column: 13, scope: !1069)
!1074 = !DILocation(line: 53, column: 1, scope: !1069)
!1075 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !342, file: !342, line: 87, type: !1076, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !121}
!1078 = !{!1079}
!1079 = !DILocalVariable(name: "ignore", arg: 1, scope: !1075, file: !342, line: 87, type: !121)
!1080 = !DILocation(line: 0, scope: !1075)
!1081 = !DILocation(line: 89, column: 16, scope: !1075)
!1082 = !{!1083, !1083, i64 0}
!1083 = !{!"_Bool", !774, i64 0}
!1084 = !DILocation(line: 90, column: 1, scope: !1075)
!1085 = distinct !DISubprogram(name: "close_stdout", scope: !342, file: !342, line: 116, type: !408, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1086)
!1086 = !{!1087}
!1087 = !DILocalVariable(name: "write_error", scope: !1088, file: !342, line: 121, type: !96)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !342, line: 120, column: 5)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !342, line: 118, column: 7)
!1090 = !DILocation(line: 118, column: 21, scope: !1089)
!1091 = !DILocation(line: 118, column: 7, scope: !1089)
!1092 = !DILocation(line: 118, column: 29, scope: !1089)
!1093 = !DILocation(line: 119, column: 7, scope: !1089)
!1094 = !DILocation(line: 119, column: 12, scope: !1089)
!1095 = !{i8 0, i8 2}
!1096 = !DILocation(line: 119, column: 25, scope: !1089)
!1097 = !DILocation(line: 119, column: 28, scope: !1089)
!1098 = !DILocation(line: 119, column: 34, scope: !1089)
!1099 = !DILocation(line: 118, column: 7, scope: !1085)
!1100 = !DILocation(line: 121, column: 33, scope: !1088)
!1101 = !DILocation(line: 0, scope: !1088)
!1102 = !DILocation(line: 122, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1088, file: !342, line: 122, column: 11)
!1104 = !DILocation(line: 0, scope: !1103)
!1105 = !DILocation(line: 122, column: 11, scope: !1088)
!1106 = !DILocation(line: 123, column: 9, scope: !1103)
!1107 = !DILocation(line: 126, column: 9, scope: !1103)
!1108 = !DILocation(line: 128, column: 14, scope: !1088)
!1109 = !DILocation(line: 128, column: 7, scope: !1088)
!1110 = !DILocation(line: 133, column: 42, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1085, file: !342, line: 133, column: 7)
!1112 = !DILocation(line: 133, column: 28, scope: !1111)
!1113 = !DILocation(line: 133, column: 50, scope: !1111)
!1114 = !DILocation(line: 133, column: 7, scope: !1085)
!1115 = !DILocation(line: 134, column: 12, scope: !1111)
!1116 = !DILocation(line: 134, column: 5, scope: !1111)
!1117 = !DILocation(line: 135, column: 1, scope: !1085)
!1118 = !DISubprogram(name: "_exit", scope: !1056, file: !1056, line: 624, type: !762, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1119 = distinct !DISubprogram(name: "verror", scope: !357, file: !357, line: 251, type: !1120, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !70, !70, !96, !367}
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DILocalVariable(name: "status", arg: 1, scope: !1119, file: !357, line: 251, type: !70)
!1124 = !DILocalVariable(name: "errnum", arg: 2, scope: !1119, file: !357, line: 251, type: !70)
!1125 = !DILocalVariable(name: "message", arg: 3, scope: !1119, file: !357, line: 251, type: !96)
!1126 = !DILocalVariable(name: "args", arg: 4, scope: !1119, file: !357, line: 251, type: !367)
!1127 = !DILocation(line: 0, scope: !1119)
!1128 = !DILocation(line: 261, column: 3, scope: !1119)
!1129 = !DILocation(line: 265, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1119, file: !357, line: 265, column: 7)
!1131 = !DILocation(line: 265, column: 7, scope: !1119)
!1132 = !DILocation(line: 266, column: 5, scope: !1130)
!1133 = !DILocation(line: 272, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !357, line: 268, column: 5)
!1135 = !DILocation(line: 276, column: 3, scope: !1119)
!1136 = !{i64 0, i64 8, !772, i64 8, i64 8, !772, i64 16, i64 8, !772, i64 24, i64 4, !833, i64 28, i64 4, !833}
!1137 = !DILocation(line: 282, column: 1, scope: !1119)
!1138 = distinct !DISubprogram(name: "flush_stdout", scope: !357, file: !357, line: 163, type: !408, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1139)
!1139 = !{!1140}
!1140 = !DILocalVariable(name: "stdout_fd", scope: !1138, file: !357, line: 166, type: !70)
!1141 = !DILocation(line: 0, scope: !1138)
!1142 = !DILocalVariable(name: "fd", arg: 1, scope: !1143, file: !357, line: 145, type: !70)
!1143 = distinct !DISubprogram(name: "is_open", scope: !357, file: !357, line: 145, type: !1057, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1144)
!1144 = !{!1142}
!1145 = !DILocation(line: 0, scope: !1143, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 182, column: 25, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1138, file: !357, line: 182, column: 7)
!1148 = !DILocation(line: 157, column: 15, scope: !1143, inlinedAt: !1146)
!1149 = !DILocation(line: 157, column: 12, scope: !1143, inlinedAt: !1146)
!1150 = !DILocation(line: 182, column: 7, scope: !1138)
!1151 = !DILocation(line: 184, column: 5, scope: !1147)
!1152 = !DILocation(line: 185, column: 1, scope: !1138)
!1153 = distinct !DISubprogram(name: "error_tail", scope: !357, file: !357, line: 219, type: !1120, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1154)
!1154 = !{!1155, !1156, !1157, !1158}
!1155 = !DILocalVariable(name: "status", arg: 1, scope: !1153, file: !357, line: 219, type: !70)
!1156 = !DILocalVariable(name: "errnum", arg: 2, scope: !1153, file: !357, line: 219, type: !70)
!1157 = !DILocalVariable(name: "message", arg: 3, scope: !1153, file: !357, line: 219, type: !96)
!1158 = !DILocalVariable(name: "args", arg: 4, scope: !1153, file: !357, line: 219, type: !367)
!1159 = distinct !DIAssignID()
!1160 = !DILocation(line: 0, scope: !1153)
!1161 = !DILocation(line: 229, column: 13, scope: !1153)
!1162 = !DILocation(line: 135, column: 10, scope: !1163, inlinedAt: !1205)
!1163 = distinct !DISubprogram(name: "vfprintf", scope: !820, file: !820, line: 132, type: !1164, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1201)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!70, !1166, !824, !369}
!1166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !1169)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1169, file: !150, line: 51, baseType: !70, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1169, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1169, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1169, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1169, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1169, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1169, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1169, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1169, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1169, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1169, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1169, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1169, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1169, file: !150, line: 70, baseType: !1185, size: 64, offset: 832)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1169, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1169, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1169, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1169, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1169, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1169, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1169, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1169, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1169, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1169, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1169, file: !150, line: 93, baseType: !1185, size: 64, offset: 1344)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1169, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1169, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1169, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1169, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!1201 = !{!1202, !1203, !1204}
!1202 = !DILocalVariable(name: "__stream", arg: 1, scope: !1163, file: !820, line: 132, type: !1166)
!1203 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1163, file: !820, line: 133, type: !824)
!1204 = !DILocalVariable(name: "__ap", arg: 3, scope: !1163, file: !820, line: 133, type: !369)
!1205 = distinct !DILocation(line: 229, column: 3, scope: !1153)
!1206 = !{!1207, !1209}
!1207 = distinct !{!1207, !1208, !"vfprintf.inline: argument 0"}
!1208 = distinct !{!1208, !"vfprintf.inline"}
!1209 = distinct !{!1209, !1208, !"vfprintf.inline: argument 1"}
!1210 = !DILocation(line: 229, column: 3, scope: !1153)
!1211 = !DILocation(line: 0, scope: !1163, inlinedAt: !1205)
!1212 = !DILocation(line: 232, column: 3, scope: !1153)
!1213 = !DILocation(line: 233, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1153, file: !357, line: 233, column: 7)
!1215 = !DILocation(line: 233, column: 7, scope: !1153)
!1216 = !DILocalVariable(name: "errbuf", scope: !1217, file: !357, line: 193, type: !1221)
!1217 = distinct !DISubprogram(name: "print_errno_message", scope: !357, file: !357, line: 188, type: !762, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1218)
!1218 = !{!1219, !1220, !1216}
!1219 = !DILocalVariable(name: "errnum", arg: 1, scope: !1217, file: !357, line: 188, type: !70)
!1220 = !DILocalVariable(name: "s", scope: !1217, file: !357, line: 190, type: !96)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 1024)
!1224 = !DILocation(line: 0, scope: !1217, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 234, column: 5, scope: !1214)
!1226 = !DILocation(line: 193, column: 3, scope: !1217, inlinedAt: !1225)
!1227 = !DILocation(line: 195, column: 7, scope: !1217, inlinedAt: !1225)
!1228 = !DILocation(line: 207, column: 9, scope: !1229, inlinedAt: !1225)
!1229 = distinct !DILexicalBlock(scope: !1217, file: !357, line: 207, column: 7)
!1230 = !DILocation(line: 207, column: 7, scope: !1217, inlinedAt: !1225)
!1231 = !DILocation(line: 208, column: 9, scope: !1229, inlinedAt: !1225)
!1232 = !DILocation(line: 208, column: 5, scope: !1229, inlinedAt: !1225)
!1233 = !DILocation(line: 214, column: 3, scope: !1217, inlinedAt: !1225)
!1234 = !DILocation(line: 216, column: 1, scope: !1217, inlinedAt: !1225)
!1235 = !DILocation(line: 234, column: 5, scope: !1214)
!1236 = !DILocation(line: 238, column: 3, scope: !1153)
!1237 = !DILocalVariable(name: "__c", arg: 1, scope: !1238, file: !1239, line: 101, type: !70)
!1238 = distinct !DISubprogram(name: "putc_unlocked", scope: !1239, file: !1239, line: 101, type: !1240, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1242)
!1239 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!70, !70, !1167}
!1242 = !{!1237, !1243}
!1243 = !DILocalVariable(name: "__stream", arg: 2, scope: !1238, file: !1239, line: 101, type: !1167)
!1244 = !DILocation(line: 0, scope: !1238, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 238, column: 3, scope: !1153)
!1246 = !DILocation(line: 103, column: 10, scope: !1238, inlinedAt: !1245)
!1247 = !{!1248, !773, i64 40}
!1248 = !{!"_IO_FILE", !834, i64 0, !773, i64 8, !773, i64 16, !773, i64 24, !773, i64 32, !773, i64 40, !773, i64 48, !773, i64 56, !773, i64 64, !773, i64 72, !773, i64 80, !773, i64 88, !773, i64 96, !773, i64 104, !834, i64 112, !834, i64 116, !1249, i64 120, !875, i64 128, !774, i64 130, !774, i64 131, !773, i64 136, !1249, i64 144, !773, i64 152, !773, i64 160, !773, i64 168, !773, i64 176, !1249, i64 184, !834, i64 192, !774, i64 196}
!1249 = !{!"long", !774, i64 0}
!1250 = !{!1248, !773, i64 48}
!1251 = !{!"branch_weights", i32 2000, i32 1}
!1252 = !DILocation(line: 240, column: 3, scope: !1153)
!1253 = !DILocation(line: 241, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1153, file: !357, line: 241, column: 7)
!1255 = !DILocation(line: 241, column: 7, scope: !1153)
!1256 = !DILocation(line: 242, column: 5, scope: !1254)
!1257 = !DILocation(line: 243, column: 1, scope: !1153)
!1258 = !DISubprogram(name: "__vfprintf_chk", scope: !820, file: !820, line: 96, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!70, !1166, !70, !824, !369}
!1261 = !DISubprogram(name: "strerror_r", scope: !950, file: !950, line: 444, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!90, !70, !90, !93}
!1264 = !DISubprogram(name: "__overflow", scope: !368, file: !368, line: 886, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!70, !1167, !70}
!1267 = !DISubprogram(name: "fflush_unlocked", scope: !368, file: !368, line: 239, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!70, !1167}
!1270 = !DISubprogram(name: "fcntl", scope: !1271, file: !1271, line: 149, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1271 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!70, !70, !70, null}
!1274 = distinct !DISubprogram(name: "error", scope: !357, file: !357, line: 285, type: !1275, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !70, !70, !96, null}
!1277 = !{!1278, !1279, !1280, !1281}
!1278 = !DILocalVariable(name: "status", arg: 1, scope: !1274, file: !357, line: 285, type: !70)
!1279 = !DILocalVariable(name: "errnum", arg: 2, scope: !1274, file: !357, line: 285, type: !70)
!1280 = !DILocalVariable(name: "message", arg: 3, scope: !1274, file: !357, line: 285, type: !96)
!1281 = !DILocalVariable(name: "ap", scope: !1274, file: !357, line: 287, type: !367)
!1282 = distinct !DIAssignID()
!1283 = !DILocation(line: 0, scope: !1274)
!1284 = !DILocation(line: 287, column: 3, scope: !1274)
!1285 = !DILocation(line: 288, column: 3, scope: !1274)
!1286 = !DILocation(line: 289, column: 3, scope: !1274)
!1287 = !DILocation(line: 290, column: 3, scope: !1274)
!1288 = !DILocation(line: 291, column: 1, scope: !1274)
!1289 = !DILocation(line: 0, scope: !364)
!1290 = !DILocation(line: 302, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !364, file: !357, line: 302, column: 7)
!1292 = !DILocation(line: 302, column: 7, scope: !364)
!1293 = !DILocation(line: 307, column: 11, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !357, line: 307, column: 11)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !357, line: 303, column: 5)
!1296 = !DILocation(line: 307, column: 27, scope: !1294)
!1297 = !DILocation(line: 308, column: 11, scope: !1294)
!1298 = !DILocation(line: 308, column: 28, scope: !1294)
!1299 = !DILocation(line: 308, column: 25, scope: !1294)
!1300 = !DILocation(line: 309, column: 15, scope: !1294)
!1301 = !DILocation(line: 309, column: 33, scope: !1294)
!1302 = !DILocation(line: 310, column: 19, scope: !1294)
!1303 = !DILocation(line: 311, column: 22, scope: !1294)
!1304 = !DILocation(line: 311, column: 56, scope: !1294)
!1305 = !DILocation(line: 307, column: 11, scope: !1295)
!1306 = !DILocation(line: 316, column: 21, scope: !1295)
!1307 = !DILocation(line: 317, column: 23, scope: !1295)
!1308 = !DILocation(line: 318, column: 5, scope: !1295)
!1309 = !DILocation(line: 327, column: 3, scope: !364)
!1310 = !DILocation(line: 331, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !364, file: !357, line: 331, column: 7)
!1312 = !DILocation(line: 331, column: 7, scope: !364)
!1313 = !DILocation(line: 332, column: 5, scope: !1311)
!1314 = !DILocation(line: 338, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !357, line: 334, column: 5)
!1316 = !DILocation(line: 346, column: 3, scope: !364)
!1317 = !DILocation(line: 350, column: 3, scope: !364)
!1318 = !DILocation(line: 356, column: 1, scope: !364)
!1319 = distinct !DISubprogram(name: "error_at_line", scope: !357, file: !357, line: 359, type: !1320, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !70, !70, !96, !62, !96, null}
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328}
!1323 = !DILocalVariable(name: "status", arg: 1, scope: !1319, file: !357, line: 359, type: !70)
!1324 = !DILocalVariable(name: "errnum", arg: 2, scope: !1319, file: !357, line: 359, type: !70)
!1325 = !DILocalVariable(name: "file_name", arg: 3, scope: !1319, file: !357, line: 359, type: !96)
!1326 = !DILocalVariable(name: "line_number", arg: 4, scope: !1319, file: !357, line: 360, type: !62)
!1327 = !DILocalVariable(name: "message", arg: 5, scope: !1319, file: !357, line: 360, type: !96)
!1328 = !DILocalVariable(name: "ap", scope: !1319, file: !357, line: 362, type: !367)
!1329 = distinct !DIAssignID()
!1330 = !DILocation(line: 0, scope: !1319)
!1331 = !DILocation(line: 362, column: 3, scope: !1319)
!1332 = !DILocation(line: 363, column: 3, scope: !1319)
!1333 = !DILocation(line: 364, column: 3, scope: !1319)
!1334 = !DILocation(line: 366, column: 3, scope: !1319)
!1335 = !DILocation(line: 367, column: 1, scope: !1319)
!1336 = distinct !DISubprogram(name: "getprogname", scope: !691, file: !691, line: 54, type: !1337, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!96}
!1339 = !DILocation(line: 58, column: 10, scope: !1336)
!1340 = !DILocation(line: 58, column: 3, scope: !1336)
!1341 = distinct !DISubprogram(name: "set_program_name", scope: !413, file: !413, line: 37, type: !784, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !1342)
!1342 = !{!1343, !1344, !1345}
!1343 = !DILocalVariable(name: "argv0", arg: 1, scope: !1341, file: !413, line: 37, type: !96)
!1344 = !DILocalVariable(name: "slash", scope: !1341, file: !413, line: 44, type: !96)
!1345 = !DILocalVariable(name: "base", scope: !1341, file: !413, line: 45, type: !96)
!1346 = !DILocation(line: 0, scope: !1341)
!1347 = !DILocation(line: 44, column: 23, scope: !1341)
!1348 = !DILocation(line: 45, column: 22, scope: !1341)
!1349 = !DILocation(line: 46, column: 17, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1341, file: !413, line: 46, column: 7)
!1351 = !DILocation(line: 46, column: 9, scope: !1350)
!1352 = !DILocation(line: 46, column: 25, scope: !1350)
!1353 = !DILocation(line: 46, column: 40, scope: !1350)
!1354 = !DILocalVariable(name: "__s1", arg: 1, scope: !1355, file: !846, line: 974, type: !978)
!1355 = distinct !DISubprogram(name: "memeq", scope: !846, file: !846, line: 974, type: !1356, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!121, !978, !978, !93}
!1358 = !{!1354, !1359, !1360}
!1359 = !DILocalVariable(name: "__s2", arg: 2, scope: !1355, file: !846, line: 974, type: !978)
!1360 = !DILocalVariable(name: "__n", arg: 3, scope: !1355, file: !846, line: 974, type: !93)
!1361 = !DILocation(line: 0, scope: !1355, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 46, column: 28, scope: !1350)
!1363 = !DILocation(line: 976, column: 11, scope: !1355, inlinedAt: !1362)
!1364 = !DILocation(line: 976, column: 10, scope: !1355, inlinedAt: !1362)
!1365 = !DILocation(line: 46, column: 7, scope: !1341)
!1366 = !DILocation(line: 49, column: 11, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !413, line: 49, column: 11)
!1368 = distinct !DILexicalBlock(scope: !1350, file: !413, line: 47, column: 5)
!1369 = !DILocation(line: 49, column: 36, scope: !1367)
!1370 = !DILocation(line: 49, column: 11, scope: !1368)
!1371 = !DILocation(line: 65, column: 16, scope: !1341)
!1372 = !DILocation(line: 71, column: 27, scope: !1341)
!1373 = !DILocation(line: 74, column: 33, scope: !1341)
!1374 = !DILocation(line: 76, column: 1, scope: !1341)
!1375 = !DISubprogram(name: "strrchr", scope: !950, file: !950, line: 273, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = distinct !DIAssignID()
!1377 = !DILocation(line: 0, scope: !422)
!1378 = distinct !DIAssignID()
!1379 = !DILocation(line: 40, column: 29, scope: !422)
!1380 = !DILocation(line: 41, column: 19, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !422, file: !423, line: 41, column: 7)
!1382 = !DILocation(line: 41, column: 7, scope: !422)
!1383 = !DILocation(line: 47, column: 3, scope: !422)
!1384 = !DILocation(line: 48, column: 3, scope: !422)
!1385 = !DILocalVariable(name: "ps", arg: 1, scope: !1386, file: !1387, line: 1135, type: !1390)
!1386 = distinct !DISubprogram(name: "mbszero", scope: !1387, file: !1387, line: 1135, type: !1388, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1391)
!1387 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1391 = !{!1385}
!1392 = !DILocation(line: 0, scope: !1386, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 48, column: 18, scope: !422)
!1394 = !DILocalVariable(name: "__dest", arg: 1, scope: !1395, file: !1396, line: 57, type: !91)
!1395 = distinct !DISubprogram(name: "memset", scope: !1396, file: !1396, line: 57, type: !1397, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1399)
!1396 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!91, !91, !70, !93}
!1399 = !{!1394, !1400, !1401}
!1400 = !DILocalVariable(name: "__ch", arg: 2, scope: !1395, file: !1396, line: 57, type: !70)
!1401 = !DILocalVariable(name: "__len", arg: 3, scope: !1395, file: !1396, line: 57, type: !93)
!1402 = !DILocation(line: 0, scope: !1395, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 1137, column: 3, scope: !1386, inlinedAt: !1393)
!1404 = !DILocation(line: 59, column: 10, scope: !1395, inlinedAt: !1403)
!1405 = !DILocation(line: 49, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !422, file: !423, line: 49, column: 7)
!1407 = !DILocation(line: 49, column: 39, scope: !1406)
!1408 = !DILocation(line: 49, column: 44, scope: !1406)
!1409 = !DILocation(line: 54, column: 1, scope: !422)
!1410 = !DISubprogram(name: "mbrtoc32", scope: !434, file: !434, line: 57, type: !1411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!93, !1413, !824, !93, !1415}
!1413 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1390)
!1416 = distinct !DISubprogram(name: "clone_quoting_options", scope: !453, file: !453, line: 113, type: !1417, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1420)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1419, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1420 = !{!1421, !1422, !1423}
!1421 = !DILocalVariable(name: "o", arg: 1, scope: !1416, file: !453, line: 113, type: !1419)
!1422 = !DILocalVariable(name: "saved_errno", scope: !1416, file: !453, line: 115, type: !70)
!1423 = !DILocalVariable(name: "p", scope: !1416, file: !453, line: 116, type: !1419)
!1424 = !DILocation(line: 0, scope: !1416)
!1425 = !DILocation(line: 115, column: 21, scope: !1416)
!1426 = !DILocation(line: 116, column: 40, scope: !1416)
!1427 = !DILocation(line: 116, column: 31, scope: !1416)
!1428 = !DILocation(line: 118, column: 9, scope: !1416)
!1429 = !DILocation(line: 119, column: 3, scope: !1416)
!1430 = distinct !DISubprogram(name: "get_quoting_style", scope: !453, file: !453, line: 124, type: !1431, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1435)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!479, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!1435 = !{!1436}
!1436 = !DILocalVariable(name: "o", arg: 1, scope: !1430, file: !453, line: 124, type: !1433)
!1437 = !DILocation(line: 0, scope: !1430)
!1438 = !DILocation(line: 126, column: 11, scope: !1430)
!1439 = !DILocation(line: 126, column: 46, scope: !1430)
!1440 = !{!1441, !834, i64 0}
!1441 = !{!"quoting_options", !834, i64 0, !834, i64 4, !774, i64 8, !773, i64 40, !773, i64 48}
!1442 = !DILocation(line: 126, column: 3, scope: !1430)
!1443 = distinct !DISubprogram(name: "set_quoting_style", scope: !453, file: !453, line: 132, type: !1444, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1446)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !1419, !479}
!1446 = !{!1447, !1448}
!1447 = !DILocalVariable(name: "o", arg: 1, scope: !1443, file: !453, line: 132, type: !1419)
!1448 = !DILocalVariable(name: "s", arg: 2, scope: !1443, file: !453, line: 132, type: !479)
!1449 = !DILocation(line: 0, scope: !1443)
!1450 = !DILocation(line: 134, column: 4, scope: !1443)
!1451 = !DILocation(line: 134, column: 45, scope: !1443)
!1452 = !DILocation(line: 135, column: 1, scope: !1443)
!1453 = distinct !DISubprogram(name: "set_char_quoting", scope: !453, file: !453, line: 143, type: !1454, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!70, !1419, !4, !70}
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1463, !1464}
!1457 = !DILocalVariable(name: "o", arg: 1, scope: !1453, file: !453, line: 143, type: !1419)
!1458 = !DILocalVariable(name: "c", arg: 2, scope: !1453, file: !453, line: 143, type: !4)
!1459 = !DILocalVariable(name: "i", arg: 3, scope: !1453, file: !453, line: 143, type: !70)
!1460 = !DILocalVariable(name: "uc", scope: !1453, file: !453, line: 145, type: !98)
!1461 = !DILocalVariable(name: "p", scope: !1453, file: !453, line: 146, type: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1463 = !DILocalVariable(name: "shift", scope: !1453, file: !453, line: 148, type: !70)
!1464 = !DILocalVariable(name: "r", scope: !1453, file: !453, line: 149, type: !62)
!1465 = !DILocation(line: 0, scope: !1453)
!1466 = !DILocation(line: 147, column: 6, scope: !1453)
!1467 = !DILocation(line: 147, column: 41, scope: !1453)
!1468 = !DILocation(line: 147, column: 62, scope: !1453)
!1469 = !DILocation(line: 147, column: 57, scope: !1453)
!1470 = !DILocation(line: 148, column: 15, scope: !1453)
!1471 = !DILocation(line: 149, column: 21, scope: !1453)
!1472 = !DILocation(line: 149, column: 24, scope: !1453)
!1473 = !DILocation(line: 149, column: 34, scope: !1453)
!1474 = !DILocation(line: 150, column: 19, scope: !1453)
!1475 = !DILocation(line: 150, column: 24, scope: !1453)
!1476 = !DILocation(line: 150, column: 6, scope: !1453)
!1477 = !DILocation(line: 151, column: 3, scope: !1453)
!1478 = distinct !DISubprogram(name: "set_quoting_flags", scope: !453, file: !453, line: 159, type: !1479, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!70, !1419, !70}
!1481 = !{!1482, !1483, !1484}
!1482 = !DILocalVariable(name: "o", arg: 1, scope: !1478, file: !453, line: 159, type: !1419)
!1483 = !DILocalVariable(name: "i", arg: 2, scope: !1478, file: !453, line: 159, type: !70)
!1484 = !DILocalVariable(name: "r", scope: !1478, file: !453, line: 163, type: !70)
!1485 = !DILocation(line: 0, scope: !1478)
!1486 = !DILocation(line: 161, column: 8, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !453, line: 161, column: 7)
!1488 = !DILocation(line: 161, column: 7, scope: !1478)
!1489 = !DILocation(line: 163, column: 14, scope: !1478)
!1490 = !{!1441, !834, i64 4}
!1491 = !DILocation(line: 164, column: 12, scope: !1478)
!1492 = !DILocation(line: 165, column: 3, scope: !1478)
!1493 = distinct !DISubprogram(name: "set_custom_quoting", scope: !453, file: !453, line: 169, type: !1494, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !1419, !96, !96}
!1496 = !{!1497, !1498, !1499}
!1497 = !DILocalVariable(name: "o", arg: 1, scope: !1493, file: !453, line: 169, type: !1419)
!1498 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1493, file: !453, line: 170, type: !96)
!1499 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1493, file: !453, line: 170, type: !96)
!1500 = !DILocation(line: 0, scope: !1493)
!1501 = !DILocation(line: 172, column: 8, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !453, line: 172, column: 7)
!1503 = !DILocation(line: 172, column: 7, scope: !1493)
!1504 = !DILocation(line: 174, column: 12, scope: !1493)
!1505 = !DILocation(line: 175, column: 8, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1493, file: !453, line: 175, column: 7)
!1507 = !DILocation(line: 175, column: 19, scope: !1506)
!1508 = !DILocation(line: 176, column: 5, scope: !1506)
!1509 = !DILocation(line: 177, column: 6, scope: !1493)
!1510 = !DILocation(line: 177, column: 17, scope: !1493)
!1511 = !{!1441, !773, i64 40}
!1512 = !DILocation(line: 178, column: 6, scope: !1493)
!1513 = !DILocation(line: 178, column: 18, scope: !1493)
!1514 = !{!1441, !773, i64 48}
!1515 = !DILocation(line: 179, column: 1, scope: !1493)
!1516 = !DISubprogram(name: "abort", scope: !954, file: !954, line: 598, type: !408, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1517 = distinct !DISubprogram(name: "quotearg_buffer", scope: !453, file: !453, line: 774, type: !1518, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!93, !90, !93, !96, !93, !1433}
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1521 = !DILocalVariable(name: "buffer", arg: 1, scope: !1517, file: !453, line: 774, type: !90)
!1522 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1517, file: !453, line: 774, type: !93)
!1523 = !DILocalVariable(name: "arg", arg: 3, scope: !1517, file: !453, line: 775, type: !96)
!1524 = !DILocalVariable(name: "argsize", arg: 4, scope: !1517, file: !453, line: 775, type: !93)
!1525 = !DILocalVariable(name: "o", arg: 5, scope: !1517, file: !453, line: 776, type: !1433)
!1526 = !DILocalVariable(name: "p", scope: !1517, file: !453, line: 778, type: !1433)
!1527 = !DILocalVariable(name: "saved_errno", scope: !1517, file: !453, line: 779, type: !70)
!1528 = !DILocalVariable(name: "r", scope: !1517, file: !453, line: 780, type: !93)
!1529 = !DILocation(line: 0, scope: !1517)
!1530 = !DILocation(line: 778, column: 37, scope: !1517)
!1531 = !DILocation(line: 779, column: 21, scope: !1517)
!1532 = !DILocation(line: 781, column: 43, scope: !1517)
!1533 = !DILocation(line: 781, column: 53, scope: !1517)
!1534 = !DILocation(line: 781, column: 63, scope: !1517)
!1535 = !DILocation(line: 782, column: 43, scope: !1517)
!1536 = !DILocation(line: 782, column: 58, scope: !1517)
!1537 = !DILocation(line: 780, column: 14, scope: !1517)
!1538 = !DILocation(line: 783, column: 9, scope: !1517)
!1539 = !DILocation(line: 784, column: 3, scope: !1517)
!1540 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !453, file: !453, line: 251, type: !1541, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1545)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!93, !90, !93, !96, !93, !479, !70, !1543, !96, !96}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1571, !1573, !1576, !1577, !1578, !1579, !1582, !1583, !1585, !1586, !1589, !1593, !1594, !1602, !1605, !1606, !1607}
!1546 = !DILocalVariable(name: "buffer", arg: 1, scope: !1540, file: !453, line: 251, type: !90)
!1547 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1540, file: !453, line: 251, type: !93)
!1548 = !DILocalVariable(name: "arg", arg: 3, scope: !1540, file: !453, line: 252, type: !96)
!1549 = !DILocalVariable(name: "argsize", arg: 4, scope: !1540, file: !453, line: 252, type: !93)
!1550 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1540, file: !453, line: 253, type: !479)
!1551 = !DILocalVariable(name: "flags", arg: 6, scope: !1540, file: !453, line: 253, type: !70)
!1552 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1540, file: !453, line: 254, type: !1543)
!1553 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1540, file: !453, line: 255, type: !96)
!1554 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1540, file: !453, line: 256, type: !96)
!1555 = !DILocalVariable(name: "unibyte_locale", scope: !1540, file: !453, line: 258, type: !121)
!1556 = !DILocalVariable(name: "len", scope: !1540, file: !453, line: 260, type: !93)
!1557 = !DILocalVariable(name: "orig_buffersize", scope: !1540, file: !453, line: 261, type: !93)
!1558 = !DILocalVariable(name: "quote_string", scope: !1540, file: !453, line: 262, type: !96)
!1559 = !DILocalVariable(name: "quote_string_len", scope: !1540, file: !453, line: 263, type: !93)
!1560 = !DILocalVariable(name: "backslash_escapes", scope: !1540, file: !453, line: 264, type: !121)
!1561 = !DILocalVariable(name: "elide_outer_quotes", scope: !1540, file: !453, line: 265, type: !121)
!1562 = !DILocalVariable(name: "encountered_single_quote", scope: !1540, file: !453, line: 266, type: !121)
!1563 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1540, file: !453, line: 267, type: !121)
!1564 = !DILabel(scope: !1540, name: "process_input", file: !453, line: 308)
!1565 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1540, file: !453, line: 309, type: !121)
!1566 = !DILocalVariable(name: "lq", scope: !1567, file: !453, line: 361, type: !96)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !453, line: 361, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !453, line: 360, column: 13)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !453, line: 333, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1540, file: !453, line: 312, column: 5)
!1571 = !DILocalVariable(name: "i", scope: !1572, file: !453, line: 395, type: !93)
!1572 = distinct !DILexicalBlock(scope: !1540, file: !453, line: 395, column: 3)
!1573 = !DILocalVariable(name: "is_right_quote", scope: !1574, file: !453, line: 397, type: !121)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !453, line: 396, column: 5)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !453, line: 395, column: 3)
!1576 = !DILocalVariable(name: "escaping", scope: !1574, file: !453, line: 398, type: !121)
!1577 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1574, file: !453, line: 399, type: !121)
!1578 = !DILocalVariable(name: "c", scope: !1574, file: !453, line: 417, type: !98)
!1579 = !DILabel(scope: !1580, name: "c_and_shell_escape", file: !453, line: 502)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !453, line: 478, column: 9)
!1581 = distinct !DILexicalBlock(scope: !1574, file: !453, line: 419, column: 9)
!1582 = !DILabel(scope: !1580, name: "c_escape", file: !453, line: 507)
!1583 = !DILocalVariable(name: "m", scope: !1584, file: !453, line: 598, type: !93)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !453, line: 596, column: 11)
!1585 = !DILocalVariable(name: "printable", scope: !1584, file: !453, line: 600, type: !121)
!1586 = !DILocalVariable(name: "mbs", scope: !1587, file: !453, line: 609, type: !540)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !453, line: 608, column: 15)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !453, line: 602, column: 17)
!1589 = !DILocalVariable(name: "w", scope: !1590, file: !453, line: 618, type: !433)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !453, line: 617, column: 19)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !453, line: 616, column: 17)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !453, line: 616, column: 17)
!1593 = !DILocalVariable(name: "bytes", scope: !1590, file: !453, line: 619, type: !93)
!1594 = !DILocalVariable(name: "j", scope: !1595, file: !453, line: 648, type: !93)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !453, line: 648, column: 29)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !453, line: 647, column: 27)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !453, line: 645, column: 29)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !453, line: 636, column: 23)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !453, line: 628, column: 30)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !453, line: 623, column: 30)
!1601 = distinct !DILexicalBlock(scope: !1590, file: !453, line: 621, column: 25)
!1602 = !DILocalVariable(name: "ilim", scope: !1603, file: !453, line: 674, type: !93)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !453, line: 671, column: 15)
!1604 = distinct !DILexicalBlock(scope: !1584, file: !453, line: 670, column: 17)
!1605 = !DILabel(scope: !1574, name: "store_escape", file: !453, line: 709)
!1606 = !DILabel(scope: !1574, name: "store_c", file: !453, line: 712)
!1607 = !DILabel(scope: !1540, name: "force_outer_quoting_style", file: !453, line: 753)
!1608 = distinct !DIAssignID()
!1609 = distinct !DIAssignID()
!1610 = distinct !DIAssignID()
!1611 = distinct !DIAssignID()
!1612 = distinct !DIAssignID()
!1613 = !DILocation(line: 0, scope: !1587)
!1614 = distinct !DIAssignID()
!1615 = !DILocation(line: 0, scope: !1590)
!1616 = !DILocation(line: 0, scope: !1540)
!1617 = !DILocation(line: 258, column: 25, scope: !1540)
!1618 = !DILocation(line: 258, column: 36, scope: !1540)
!1619 = !DILocation(line: 267, column: 3, scope: !1540)
!1620 = !DILocation(line: 261, column: 10, scope: !1540)
!1621 = !DILocation(line: 262, column: 15, scope: !1540)
!1622 = !DILocation(line: 263, column: 10, scope: !1540)
!1623 = !DILocation(line: 308, column: 2, scope: !1540)
!1624 = !DILocation(line: 311, column: 3, scope: !1540)
!1625 = !DILocation(line: 318, column: 11, scope: !1570)
!1626 = !DILocation(line: 319, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !453, line: 319, column: 9)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !453, line: 319, column: 9)
!1629 = distinct !DILexicalBlock(scope: !1570, file: !453, line: 318, column: 11)
!1630 = !DILocation(line: 319, column: 9, scope: !1628)
!1631 = !DILocation(line: 0, scope: !531, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 357, column: 26, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !453, line: 335, column: 11)
!1634 = distinct !DILexicalBlock(scope: !1569, file: !453, line: 334, column: 13)
!1635 = !DILocation(line: 199, column: 29, scope: !531, inlinedAt: !1632)
!1636 = !DILocation(line: 201, column: 19, scope: !1637, inlinedAt: !1632)
!1637 = distinct !DILexicalBlock(scope: !531, file: !453, line: 201, column: 7)
!1638 = !DILocation(line: 201, column: 7, scope: !531, inlinedAt: !1632)
!1639 = !DILocation(line: 229, column: 3, scope: !531, inlinedAt: !1632)
!1640 = !DILocation(line: 230, column: 3, scope: !531, inlinedAt: !1632)
!1641 = !DILocalVariable(name: "ps", arg: 1, scope: !1642, file: !1387, line: 1135, type: !1645)
!1642 = distinct !DISubprogram(name: "mbszero", scope: !1387, file: !1387, line: 1135, type: !1643, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1646)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !1645}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1646 = !{!1641}
!1647 = !DILocation(line: 0, scope: !1642, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 230, column: 18, scope: !531, inlinedAt: !1632)
!1649 = !DILocalVariable(name: "__dest", arg: 1, scope: !1650, file: !1396, line: 57, type: !91)
!1650 = distinct !DISubprogram(name: "memset", scope: !1396, file: !1396, line: 57, type: !1397, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1651)
!1651 = !{!1649, !1652, !1653}
!1652 = !DILocalVariable(name: "__ch", arg: 2, scope: !1650, file: !1396, line: 57, type: !70)
!1653 = !DILocalVariable(name: "__len", arg: 3, scope: !1650, file: !1396, line: 57, type: !93)
!1654 = !DILocation(line: 0, scope: !1650, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 1137, column: 3, scope: !1642, inlinedAt: !1648)
!1656 = !DILocation(line: 59, column: 10, scope: !1650, inlinedAt: !1655)
!1657 = !DILocation(line: 231, column: 7, scope: !1658, inlinedAt: !1632)
!1658 = distinct !DILexicalBlock(scope: !531, file: !453, line: 231, column: 7)
!1659 = !DILocation(line: 231, column: 40, scope: !1658, inlinedAt: !1632)
!1660 = !DILocation(line: 231, column: 45, scope: !1658, inlinedAt: !1632)
!1661 = !DILocation(line: 235, column: 1, scope: !531, inlinedAt: !1632)
!1662 = !DILocation(line: 0, scope: !531, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 358, column: 27, scope: !1633)
!1664 = !DILocation(line: 199, column: 29, scope: !531, inlinedAt: !1663)
!1665 = !DILocation(line: 201, column: 19, scope: !1637, inlinedAt: !1663)
!1666 = !DILocation(line: 201, column: 7, scope: !531, inlinedAt: !1663)
!1667 = !DILocation(line: 229, column: 3, scope: !531, inlinedAt: !1663)
!1668 = !DILocation(line: 230, column: 3, scope: !531, inlinedAt: !1663)
!1669 = !DILocation(line: 0, scope: !1642, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 230, column: 18, scope: !531, inlinedAt: !1663)
!1671 = !DILocation(line: 0, scope: !1650, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 1137, column: 3, scope: !1642, inlinedAt: !1670)
!1673 = !DILocation(line: 59, column: 10, scope: !1650, inlinedAt: !1672)
!1674 = !DILocation(line: 231, column: 7, scope: !1658, inlinedAt: !1663)
!1675 = !DILocation(line: 231, column: 40, scope: !1658, inlinedAt: !1663)
!1676 = !DILocation(line: 231, column: 45, scope: !1658, inlinedAt: !1663)
!1677 = !DILocation(line: 235, column: 1, scope: !531, inlinedAt: !1663)
!1678 = !DILocation(line: 360, column: 13, scope: !1569)
!1679 = !DILocation(line: 0, scope: !1567)
!1680 = !DILocation(line: 361, column: 45, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1567, file: !453, line: 361, column: 11)
!1682 = !DILocation(line: 361, column: 11, scope: !1567)
!1683 = !DILocation(line: 362, column: 13, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !453, line: 362, column: 13)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !453, line: 362, column: 13)
!1686 = !DILocation(line: 362, column: 13, scope: !1685)
!1687 = !DILocation(line: 361, column: 52, scope: !1681)
!1688 = distinct !{!1688, !1682, !1689, !880}
!1689 = !DILocation(line: 362, column: 13, scope: !1567)
!1690 = !DILocation(line: 365, column: 28, scope: !1569)
!1691 = !DILocation(line: 260, column: 10, scope: !1540)
!1692 = !DILocation(line: 367, column: 7, scope: !1570)
!1693 = !DILocation(line: 373, column: 7, scope: !1570)
!1694 = !DILocation(line: 381, column: 11, scope: !1570)
!1695 = !DILocation(line: 376, column: 11, scope: !1570)
!1696 = !DILocation(line: 382, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !453, line: 382, column: 9)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !453, line: 382, column: 9)
!1699 = distinct !DILexicalBlock(scope: !1570, file: !453, line: 381, column: 11)
!1700 = !DILocation(line: 382, column: 9, scope: !1698)
!1701 = !DILocation(line: 389, column: 7, scope: !1570)
!1702 = !DILocation(line: 392, column: 7, scope: !1570)
!1703 = !DILocation(line: 0, scope: !1572)
!1704 = !DILocation(line: 395, column: 8, scope: !1572)
!1705 = !DILocation(line: 395, scope: !1572)
!1706 = !DILocation(line: 395, column: 34, scope: !1575)
!1707 = !DILocation(line: 395, column: 26, scope: !1575)
!1708 = !DILocation(line: 395, column: 48, scope: !1575)
!1709 = !DILocation(line: 395, column: 55, scope: !1575)
!1710 = !DILocation(line: 395, column: 3, scope: !1572)
!1711 = !DILocation(line: 395, column: 67, scope: !1575)
!1712 = !DILocation(line: 0, scope: !1574)
!1713 = !DILocation(line: 402, column: 11, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1574, file: !453, line: 401, column: 11)
!1715 = !DILocation(line: 404, column: 17, scope: !1714)
!1716 = !DILocation(line: 405, column: 39, scope: !1714)
!1717 = !DILocation(line: 409, column: 32, scope: !1714)
!1718 = !DILocation(line: 405, column: 19, scope: !1714)
!1719 = !DILocation(line: 405, column: 15, scope: !1714)
!1720 = !DILocation(line: 410, column: 11, scope: !1714)
!1721 = !DILocation(line: 410, column: 25, scope: !1714)
!1722 = !DILocalVariable(name: "__s1", arg: 1, scope: !1723, file: !846, line: 974, type: !978)
!1723 = distinct !DISubprogram(name: "memeq", scope: !846, file: !846, line: 974, type: !1356, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1724)
!1724 = !{!1722, !1725, !1726}
!1725 = !DILocalVariable(name: "__s2", arg: 2, scope: !1723, file: !846, line: 974, type: !978)
!1726 = !DILocalVariable(name: "__n", arg: 3, scope: !1723, file: !846, line: 974, type: !93)
!1727 = !DILocation(line: 0, scope: !1723, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 410, column: 14, scope: !1714)
!1729 = !DILocation(line: 976, column: 11, scope: !1723, inlinedAt: !1728)
!1730 = !DILocation(line: 976, column: 10, scope: !1723, inlinedAt: !1728)
!1731 = !DILocation(line: 401, column: 11, scope: !1574)
!1732 = !DILocation(line: 417, column: 25, scope: !1574)
!1733 = !DILocation(line: 418, column: 7, scope: !1574)
!1734 = !DILocation(line: 421, column: 15, scope: !1581)
!1735 = !DILocation(line: 423, column: 15, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !453, line: 423, column: 15)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !453, line: 422, column: 13)
!1738 = distinct !DILexicalBlock(scope: !1581, file: !453, line: 421, column: 15)
!1739 = !DILocation(line: 423, column: 15, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !453, line: 423, column: 15)
!1741 = !DILocation(line: 423, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !453, line: 423, column: 15)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !453, line: 423, column: 15)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !453, line: 423, column: 15)
!1745 = !DILocation(line: 423, column: 15, scope: !1743)
!1746 = !DILocation(line: 423, column: 15, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !453, line: 423, column: 15)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !453, line: 423, column: 15)
!1749 = !DILocation(line: 423, column: 15, scope: !1748)
!1750 = !DILocation(line: 423, column: 15, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !453, line: 423, column: 15)
!1752 = distinct !DILexicalBlock(scope: !1744, file: !453, line: 423, column: 15)
!1753 = !DILocation(line: 423, column: 15, scope: !1752)
!1754 = !DILocation(line: 423, column: 15, scope: !1744)
!1755 = !DILocation(line: 423, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !453, line: 423, column: 15)
!1757 = distinct !DILexicalBlock(scope: !1736, file: !453, line: 423, column: 15)
!1758 = !DILocation(line: 423, column: 15, scope: !1757)
!1759 = !DILocation(line: 431, column: 19, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1737, file: !453, line: 430, column: 19)
!1761 = !DILocation(line: 431, column: 24, scope: !1760)
!1762 = !DILocation(line: 431, column: 28, scope: !1760)
!1763 = !DILocation(line: 431, column: 38, scope: !1760)
!1764 = !DILocation(line: 431, column: 48, scope: !1760)
!1765 = !DILocation(line: 431, column: 59, scope: !1760)
!1766 = !DILocation(line: 433, column: 19, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !453, line: 433, column: 19)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !453, line: 433, column: 19)
!1769 = distinct !DILexicalBlock(scope: !1760, file: !453, line: 432, column: 17)
!1770 = !DILocation(line: 433, column: 19, scope: !1768)
!1771 = !DILocation(line: 434, column: 19, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !453, line: 434, column: 19)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !453, line: 434, column: 19)
!1774 = !DILocation(line: 434, column: 19, scope: !1773)
!1775 = !DILocation(line: 435, column: 17, scope: !1769)
!1776 = !DILocation(line: 442, column: 20, scope: !1738)
!1777 = !DILocation(line: 447, column: 11, scope: !1581)
!1778 = !DILocation(line: 450, column: 19, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1581, file: !453, line: 448, column: 13)
!1780 = !DILocation(line: 456, column: 19, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1779, file: !453, line: 455, column: 19)
!1782 = !DILocation(line: 456, column: 24, scope: !1781)
!1783 = !DILocation(line: 456, column: 28, scope: !1781)
!1784 = !DILocation(line: 456, column: 38, scope: !1781)
!1785 = !DILocation(line: 456, column: 41, scope: !1781)
!1786 = !DILocation(line: 456, column: 52, scope: !1781)
!1787 = !DILocation(line: 455, column: 19, scope: !1779)
!1788 = !DILocation(line: 457, column: 25, scope: !1781)
!1789 = !DILocation(line: 457, column: 17, scope: !1781)
!1790 = !DILocation(line: 464, column: 25, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1781, file: !453, line: 458, column: 19)
!1792 = !DILocation(line: 468, column: 21, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !453, line: 468, column: 21)
!1794 = distinct !DILexicalBlock(scope: !1791, file: !453, line: 468, column: 21)
!1795 = !DILocation(line: 468, column: 21, scope: !1794)
!1796 = !DILocation(line: 469, column: 21, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !453, line: 469, column: 21)
!1798 = distinct !DILexicalBlock(scope: !1791, file: !453, line: 469, column: 21)
!1799 = !DILocation(line: 469, column: 21, scope: !1798)
!1800 = !DILocation(line: 470, column: 21, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !453, line: 470, column: 21)
!1802 = distinct !DILexicalBlock(scope: !1791, file: !453, line: 470, column: 21)
!1803 = !DILocation(line: 470, column: 21, scope: !1802)
!1804 = !DILocation(line: 471, column: 21, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !453, line: 471, column: 21)
!1806 = distinct !DILexicalBlock(scope: !1791, file: !453, line: 471, column: 21)
!1807 = !DILocation(line: 471, column: 21, scope: !1806)
!1808 = !DILocation(line: 472, column: 21, scope: !1791)
!1809 = !DILocation(line: 482, column: 33, scope: !1580)
!1810 = !DILocation(line: 483, column: 33, scope: !1580)
!1811 = !DILocation(line: 485, column: 33, scope: !1580)
!1812 = !DILocation(line: 486, column: 33, scope: !1580)
!1813 = !DILocation(line: 487, column: 33, scope: !1580)
!1814 = !DILocation(line: 490, column: 17, scope: !1580)
!1815 = !DILocation(line: 492, column: 21, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !453, line: 491, column: 15)
!1817 = distinct !DILexicalBlock(scope: !1580, file: !453, line: 490, column: 17)
!1818 = !DILocation(line: 499, column: 35, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1580, file: !453, line: 499, column: 17)
!1820 = !DILocation(line: 0, scope: !1580)
!1821 = !DILocation(line: 502, column: 11, scope: !1580)
!1822 = !DILocation(line: 504, column: 17, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1580, file: !453, line: 503, column: 17)
!1824 = !DILocation(line: 507, column: 11, scope: !1580)
!1825 = !DILocation(line: 508, column: 17, scope: !1580)
!1826 = !DILocation(line: 517, column: 15, scope: !1581)
!1827 = !DILocation(line: 517, column: 40, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1581, file: !453, line: 517, column: 15)
!1829 = !DILocation(line: 517, column: 47, scope: !1828)
!1830 = !DILocation(line: 517, column: 18, scope: !1828)
!1831 = !DILocation(line: 521, column: 17, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1581, file: !453, line: 521, column: 15)
!1833 = !DILocation(line: 521, column: 15, scope: !1581)
!1834 = !DILocation(line: 525, column: 11, scope: !1581)
!1835 = !DILocation(line: 537, column: 15, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1581, file: !453, line: 536, column: 15)
!1837 = !DILocation(line: 536, column: 15, scope: !1581)
!1838 = !DILocation(line: 544, column: 15, scope: !1581)
!1839 = !DILocation(line: 546, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !453, line: 545, column: 13)
!1841 = distinct !DILexicalBlock(scope: !1581, file: !453, line: 544, column: 15)
!1842 = !DILocation(line: 549, column: 19, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !453, line: 549, column: 19)
!1844 = !DILocation(line: 549, column: 30, scope: !1843)
!1845 = !DILocation(line: 558, column: 15, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !453, line: 558, column: 15)
!1847 = distinct !DILexicalBlock(scope: !1840, file: !453, line: 558, column: 15)
!1848 = !DILocation(line: 558, column: 15, scope: !1847)
!1849 = !DILocation(line: 559, column: 15, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !453, line: 559, column: 15)
!1851 = distinct !DILexicalBlock(scope: !1840, file: !453, line: 559, column: 15)
!1852 = !DILocation(line: 559, column: 15, scope: !1851)
!1853 = !DILocation(line: 560, column: 15, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !453, line: 560, column: 15)
!1855 = distinct !DILexicalBlock(scope: !1840, file: !453, line: 560, column: 15)
!1856 = !DILocation(line: 560, column: 15, scope: !1855)
!1857 = !DILocation(line: 562, column: 13, scope: !1840)
!1858 = !DILocation(line: 602, column: 17, scope: !1584)
!1859 = !DILocation(line: 0, scope: !1584)
!1860 = !DILocation(line: 605, column: 29, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1588, file: !453, line: 603, column: 15)
!1862 = !DILocation(line: 605, column: 41, scope: !1861)
!1863 = !DILocation(line: 606, column: 15, scope: !1861)
!1864 = !DILocation(line: 609, column: 17, scope: !1587)
!1865 = !DILocation(line: 0, scope: !1642, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 609, column: 32, scope: !1587)
!1867 = !DILocation(line: 0, scope: !1650, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 1137, column: 3, scope: !1642, inlinedAt: !1866)
!1869 = !DILocation(line: 59, column: 10, scope: !1650, inlinedAt: !1868)
!1870 = !DILocation(line: 613, column: 29, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1587, file: !453, line: 613, column: 21)
!1872 = !DILocation(line: 613, column: 21, scope: !1587)
!1873 = !DILocation(line: 614, column: 29, scope: !1871)
!1874 = !DILocation(line: 614, column: 19, scope: !1871)
!1875 = !DILocation(line: 618, column: 21, scope: !1590)
!1876 = !DILocation(line: 620, column: 54, scope: !1590)
!1877 = !DILocation(line: 619, column: 36, scope: !1590)
!1878 = !DILocation(line: 621, column: 25, scope: !1590)
!1879 = !DILocation(line: 631, column: 38, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1599, file: !453, line: 629, column: 23)
!1881 = !DILocation(line: 631, column: 48, scope: !1880)
!1882 = !DILocation(line: 631, column: 25, scope: !1880)
!1883 = !DILocation(line: 626, column: 25, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1600, file: !453, line: 624, column: 23)
!1885 = !DILocation(line: 631, column: 51, scope: !1880)
!1886 = !DILocation(line: 632, column: 28, scope: !1880)
!1887 = !DILocation(line: 631, column: 34, scope: !1880)
!1888 = distinct !{!1888, !1882, !1886, !880}
!1889 = !DILocation(line: 0, scope: !1595)
!1890 = !DILocation(line: 646, column: 29, scope: !1597)
!1891 = !DILocation(line: 648, column: 29, scope: !1595)
!1892 = !DILocation(line: 649, column: 39, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1595, file: !453, line: 648, column: 29)
!1894 = !DILocation(line: 649, column: 31, scope: !1893)
!1895 = !DILocation(line: 648, column: 60, scope: !1893)
!1896 = !DILocation(line: 648, column: 50, scope: !1893)
!1897 = distinct !{!1897, !1891, !1898, !880}
!1898 = !DILocation(line: 654, column: 33, scope: !1595)
!1899 = !DILocation(line: 657, column: 43, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1598, file: !453, line: 657, column: 29)
!1901 = !DILocalVariable(name: "wc", arg: 1, scope: !1902, file: !1903, line: 865, type: !1906)
!1902 = distinct !DISubprogram(name: "c32isprint", scope: !1903, file: !1903, line: 865, type: !1904, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1908)
!1903 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!70, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1907, line: 20, baseType: !62)
!1907 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1908 = !{!1901}
!1909 = !DILocation(line: 0, scope: !1902, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 657, column: 31, scope: !1900)
!1911 = !DILocation(line: 871, column: 10, scope: !1902, inlinedAt: !1910)
!1912 = !DILocation(line: 657, column: 31, scope: !1900)
!1913 = !DILocation(line: 664, column: 23, scope: !1590)
!1914 = !DILocation(line: 665, column: 19, scope: !1591)
!1915 = !DILocation(line: 666, column: 15, scope: !1588)
!1916 = !DILocation(line: 753, column: 2, scope: !1540)
!1917 = !DILocation(line: 756, column: 51, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1540, file: !453, line: 756, column: 7)
!1919 = !DILocation(line: 0, scope: !1588)
!1920 = !DILocation(line: 670, column: 19, scope: !1604)
!1921 = !DILocation(line: 670, column: 23, scope: !1604)
!1922 = !DILocation(line: 674, column: 33, scope: !1603)
!1923 = !DILocation(line: 0, scope: !1603)
!1924 = !DILocation(line: 676, column: 17, scope: !1603)
!1925 = !DILocation(line: 678, column: 43, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !453, line: 678, column: 25)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !453, line: 677, column: 19)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !453, line: 676, column: 17)
!1929 = distinct !DILexicalBlock(scope: !1603, file: !453, line: 676, column: 17)
!1930 = !DILocation(line: 680, column: 25, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !453, line: 680, column: 25)
!1932 = distinct !DILexicalBlock(scope: !1926, file: !453, line: 679, column: 23)
!1933 = !DILocation(line: 680, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !453, line: 680, column: 25)
!1935 = !DILocation(line: 680, column: 25, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !453, line: 680, column: 25)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !453, line: 680, column: 25)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !453, line: 680, column: 25)
!1939 = !DILocation(line: 680, column: 25, scope: !1937)
!1940 = !DILocation(line: 680, column: 25, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !453, line: 680, column: 25)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !453, line: 680, column: 25)
!1943 = !DILocation(line: 680, column: 25, scope: !1942)
!1944 = !DILocation(line: 680, column: 25, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !453, line: 680, column: 25)
!1946 = distinct !DILexicalBlock(scope: !1938, file: !453, line: 680, column: 25)
!1947 = !DILocation(line: 680, column: 25, scope: !1946)
!1948 = !DILocation(line: 680, column: 25, scope: !1938)
!1949 = !DILocation(line: 680, column: 25, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !453, line: 680, column: 25)
!1951 = distinct !DILexicalBlock(scope: !1931, file: !453, line: 680, column: 25)
!1952 = !DILocation(line: 680, column: 25, scope: !1951)
!1953 = !DILocation(line: 681, column: 25, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !453, line: 681, column: 25)
!1955 = distinct !DILexicalBlock(scope: !1932, file: !453, line: 681, column: 25)
!1956 = !DILocation(line: 681, column: 25, scope: !1955)
!1957 = !DILocation(line: 682, column: 25, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !453, line: 682, column: 25)
!1959 = distinct !DILexicalBlock(scope: !1932, file: !453, line: 682, column: 25)
!1960 = !DILocation(line: 682, column: 25, scope: !1959)
!1961 = !DILocation(line: 683, column: 38, scope: !1932)
!1962 = !DILocation(line: 683, column: 33, scope: !1932)
!1963 = !DILocation(line: 684, column: 23, scope: !1932)
!1964 = !DILocation(line: 685, column: 30, scope: !1926)
!1965 = !DILocation(line: 687, column: 25, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !453, line: 687, column: 25)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !453, line: 687, column: 25)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !453, line: 686, column: 23)
!1969 = distinct !DILexicalBlock(scope: !1926, file: !453, line: 685, column: 30)
!1970 = !DILocation(line: 687, column: 25, scope: !1967)
!1971 = !DILocation(line: 689, column: 23, scope: !1968)
!1972 = !DILocation(line: 690, column: 35, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1927, file: !453, line: 690, column: 25)
!1974 = !DILocation(line: 690, column: 30, scope: !1973)
!1975 = !DILocation(line: 690, column: 25, scope: !1927)
!1976 = !DILocation(line: 692, column: 21, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !453, line: 692, column: 21)
!1978 = distinct !DILexicalBlock(scope: !1927, file: !453, line: 692, column: 21)
!1979 = !DILocation(line: 692, column: 21, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !453, line: 692, column: 21)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !453, line: 692, column: 21)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !453, line: 692, column: 21)
!1983 = !DILocation(line: 692, column: 21, scope: !1981)
!1984 = !DILocation(line: 692, column: 21, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !453, line: 692, column: 21)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !453, line: 692, column: 21)
!1987 = !DILocation(line: 692, column: 21, scope: !1986)
!1988 = !DILocation(line: 692, column: 21, scope: !1982)
!1989 = !DILocation(line: 0, scope: !1927)
!1990 = !DILocation(line: 693, column: 21, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !453, line: 693, column: 21)
!1992 = distinct !DILexicalBlock(scope: !1927, file: !453, line: 693, column: 21)
!1993 = !DILocation(line: 693, column: 21, scope: !1992)
!1994 = !DILocation(line: 694, column: 25, scope: !1927)
!1995 = !DILocation(line: 676, column: 17, scope: !1928)
!1996 = distinct !{!1996, !1997, !1998}
!1997 = !DILocation(line: 676, column: 17, scope: !1929)
!1998 = !DILocation(line: 695, column: 19, scope: !1929)
!1999 = !DILocation(line: 409, column: 30, scope: !1714)
!2000 = !DILocation(line: 702, column: 34, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1574, file: !453, line: 702, column: 11)
!2002 = !DILocation(line: 704, column: 14, scope: !2001)
!2003 = !DILocation(line: 705, column: 14, scope: !2001)
!2004 = !DILocation(line: 705, column: 35, scope: !2001)
!2005 = !DILocation(line: 705, column: 17, scope: !2001)
!2006 = !DILocation(line: 705, column: 47, scope: !2001)
!2007 = !DILocation(line: 705, column: 65, scope: !2001)
!2008 = !DILocation(line: 706, column: 11, scope: !2001)
!2009 = !DILocation(line: 702, column: 11, scope: !1574)
!2010 = !DILocation(line: 395, column: 15, scope: !1572)
!2011 = !DILocation(line: 709, column: 5, scope: !1574)
!2012 = !DILocation(line: 710, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1574, file: !453, line: 710, column: 7)
!2014 = !DILocation(line: 710, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2013, file: !453, line: 710, column: 7)
!2016 = !DILocation(line: 710, column: 7, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !453, line: 710, column: 7)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !453, line: 710, column: 7)
!2019 = distinct !DILexicalBlock(scope: !2015, file: !453, line: 710, column: 7)
!2020 = !DILocation(line: 710, column: 7, scope: !2018)
!2021 = !DILocation(line: 710, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !453, line: 710, column: 7)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !453, line: 710, column: 7)
!2024 = !DILocation(line: 710, column: 7, scope: !2023)
!2025 = !DILocation(line: 710, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !453, line: 710, column: 7)
!2027 = distinct !DILexicalBlock(scope: !2019, file: !453, line: 710, column: 7)
!2028 = !DILocation(line: 710, column: 7, scope: !2027)
!2029 = !DILocation(line: 710, column: 7, scope: !2019)
!2030 = !DILocation(line: 710, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !453, line: 710, column: 7)
!2032 = distinct !DILexicalBlock(scope: !2013, file: !453, line: 710, column: 7)
!2033 = !DILocation(line: 710, column: 7, scope: !2032)
!2034 = !DILocation(line: 712, column: 5, scope: !1574)
!2035 = !DILocation(line: 713, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !453, line: 713, column: 7)
!2037 = distinct !DILexicalBlock(scope: !1574, file: !453, line: 713, column: 7)
!2038 = !DILocation(line: 417, column: 21, scope: !1574)
!2039 = !DILocation(line: 713, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !453, line: 713, column: 7)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !453, line: 713, column: 7)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !453, line: 713, column: 7)
!2043 = !DILocation(line: 713, column: 7, scope: !2041)
!2044 = !DILocation(line: 713, column: 7, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !453, line: 713, column: 7)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !453, line: 713, column: 7)
!2047 = !DILocation(line: 713, column: 7, scope: !2046)
!2048 = !DILocation(line: 713, column: 7, scope: !2042)
!2049 = !DILocation(line: 714, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !453, line: 714, column: 7)
!2051 = distinct !DILexicalBlock(scope: !1574, file: !453, line: 714, column: 7)
!2052 = !DILocation(line: 714, column: 7, scope: !2051)
!2053 = !DILocation(line: 716, column: 11, scope: !1574)
!2054 = !DILocation(line: 718, column: 5, scope: !1575)
!2055 = !DILocation(line: 395, column: 82, scope: !1575)
!2056 = !DILocation(line: 395, column: 3, scope: !1575)
!2057 = distinct !{!2057, !1710, !2058, !880}
!2058 = !DILocation(line: 718, column: 5, scope: !1572)
!2059 = !DILocation(line: 720, column: 11, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1540, file: !453, line: 720, column: 7)
!2061 = !DILocation(line: 720, column: 16, scope: !2060)
!2062 = !DILocation(line: 728, column: 51, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1540, file: !453, line: 728, column: 7)
!2064 = !DILocation(line: 731, column: 11, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2063, file: !453, line: 730, column: 5)
!2066 = !DILocation(line: 732, column: 16, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2065, file: !453, line: 731, column: 11)
!2068 = !DILocation(line: 732, column: 9, scope: !2067)
!2069 = !DILocation(line: 736, column: 18, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !453, line: 736, column: 16)
!2071 = !DILocation(line: 736, column: 29, scope: !2070)
!2072 = !DILocation(line: 745, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1540, file: !453, line: 745, column: 7)
!2074 = !DILocation(line: 745, column: 20, scope: !2073)
!2075 = !DILocation(line: 746, column: 12, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !453, line: 746, column: 5)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !453, line: 746, column: 5)
!2078 = !DILocation(line: 746, column: 5, scope: !2077)
!2079 = !DILocation(line: 747, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !453, line: 747, column: 7)
!2081 = distinct !DILexicalBlock(scope: !2076, file: !453, line: 747, column: 7)
!2082 = !DILocation(line: 747, column: 7, scope: !2081)
!2083 = !DILocation(line: 746, column: 39, scope: !2076)
!2084 = distinct !{!2084, !2078, !2085, !880}
!2085 = !DILocation(line: 747, column: 7, scope: !2077)
!2086 = !DILocation(line: 749, column: 11, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1540, file: !453, line: 749, column: 7)
!2088 = !DILocation(line: 749, column: 7, scope: !1540)
!2089 = !DILocation(line: 750, column: 5, scope: !2087)
!2090 = !DILocation(line: 750, column: 17, scope: !2087)
!2091 = !DILocation(line: 756, column: 21, scope: !1918)
!2092 = !DILocation(line: 760, column: 42, scope: !1540)
!2093 = !DILocation(line: 758, column: 10, scope: !1540)
!2094 = !DILocation(line: 758, column: 3, scope: !1540)
!2095 = !DILocation(line: 762, column: 1, scope: !1540)
!2096 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !954, file: !954, line: 98, type: !2097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!93}
!2099 = !DISubprogram(name: "strlen", scope: !950, file: !950, line: 407, type: !2100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!95, !96}
!2102 = !DISubprogram(name: "iswprint", scope: !2103, file: !2103, line: 120, type: !1904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2103 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2104 = distinct !DISubprogram(name: "quotearg_alloc", scope: !453, file: !453, line: 788, type: !2105, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!90, !96, !93, !1433}
!2107 = !{!2108, !2109, !2110}
!2108 = !DILocalVariable(name: "arg", arg: 1, scope: !2104, file: !453, line: 788, type: !96)
!2109 = !DILocalVariable(name: "argsize", arg: 2, scope: !2104, file: !453, line: 788, type: !93)
!2110 = !DILocalVariable(name: "o", arg: 3, scope: !2104, file: !453, line: 789, type: !1433)
!2111 = !DILocation(line: 0, scope: !2104)
!2112 = !DILocalVariable(name: "arg", arg: 1, scope: !2113, file: !453, line: 801, type: !96)
!2113 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !453, file: !453, line: 801, type: !2114, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!90, !96, !93, !706, !1433}
!2116 = !{!2112, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124}
!2117 = !DILocalVariable(name: "argsize", arg: 2, scope: !2113, file: !453, line: 801, type: !93)
!2118 = !DILocalVariable(name: "size", arg: 3, scope: !2113, file: !453, line: 801, type: !706)
!2119 = !DILocalVariable(name: "o", arg: 4, scope: !2113, file: !453, line: 802, type: !1433)
!2120 = !DILocalVariable(name: "p", scope: !2113, file: !453, line: 804, type: !1433)
!2121 = !DILocalVariable(name: "saved_errno", scope: !2113, file: !453, line: 805, type: !70)
!2122 = !DILocalVariable(name: "flags", scope: !2113, file: !453, line: 807, type: !70)
!2123 = !DILocalVariable(name: "bufsize", scope: !2113, file: !453, line: 808, type: !93)
!2124 = !DILocalVariable(name: "buf", scope: !2113, file: !453, line: 812, type: !90)
!2125 = !DILocation(line: 0, scope: !2113, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 791, column: 10, scope: !2104)
!2127 = !DILocation(line: 804, column: 37, scope: !2113, inlinedAt: !2126)
!2128 = !DILocation(line: 805, column: 21, scope: !2113, inlinedAt: !2126)
!2129 = !DILocation(line: 807, column: 18, scope: !2113, inlinedAt: !2126)
!2130 = !DILocation(line: 807, column: 24, scope: !2113, inlinedAt: !2126)
!2131 = !DILocation(line: 808, column: 72, scope: !2113, inlinedAt: !2126)
!2132 = !DILocation(line: 809, column: 56, scope: !2113, inlinedAt: !2126)
!2133 = !DILocation(line: 810, column: 49, scope: !2113, inlinedAt: !2126)
!2134 = !DILocation(line: 811, column: 49, scope: !2113, inlinedAt: !2126)
!2135 = !DILocation(line: 808, column: 20, scope: !2113, inlinedAt: !2126)
!2136 = !DILocation(line: 811, column: 62, scope: !2113, inlinedAt: !2126)
!2137 = !DILocation(line: 812, column: 15, scope: !2113, inlinedAt: !2126)
!2138 = !DILocation(line: 813, column: 60, scope: !2113, inlinedAt: !2126)
!2139 = !DILocation(line: 815, column: 32, scope: !2113, inlinedAt: !2126)
!2140 = !DILocation(line: 815, column: 47, scope: !2113, inlinedAt: !2126)
!2141 = !DILocation(line: 813, column: 3, scope: !2113, inlinedAt: !2126)
!2142 = !DILocation(line: 816, column: 9, scope: !2113, inlinedAt: !2126)
!2143 = !DILocation(line: 791, column: 3, scope: !2104)
!2144 = !DILocation(line: 0, scope: !2113)
!2145 = !DILocation(line: 804, column: 37, scope: !2113)
!2146 = !DILocation(line: 805, column: 21, scope: !2113)
!2147 = !DILocation(line: 807, column: 18, scope: !2113)
!2148 = !DILocation(line: 807, column: 27, scope: !2113)
!2149 = !DILocation(line: 807, column: 24, scope: !2113)
!2150 = !DILocation(line: 808, column: 72, scope: !2113)
!2151 = !DILocation(line: 809, column: 56, scope: !2113)
!2152 = !DILocation(line: 810, column: 49, scope: !2113)
!2153 = !DILocation(line: 811, column: 49, scope: !2113)
!2154 = !DILocation(line: 808, column: 20, scope: !2113)
!2155 = !DILocation(line: 811, column: 62, scope: !2113)
!2156 = !DILocation(line: 812, column: 15, scope: !2113)
!2157 = !DILocation(line: 813, column: 60, scope: !2113)
!2158 = !DILocation(line: 815, column: 32, scope: !2113)
!2159 = !DILocation(line: 815, column: 47, scope: !2113)
!2160 = !DILocation(line: 813, column: 3, scope: !2113)
!2161 = !DILocation(line: 816, column: 9, scope: !2113)
!2162 = !DILocation(line: 817, column: 7, scope: !2113)
!2163 = !DILocation(line: 818, column: 11, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2113, file: !453, line: 817, column: 7)
!2165 = !{!1249, !1249, i64 0}
!2166 = !DILocation(line: 818, column: 5, scope: !2164)
!2167 = !DILocation(line: 819, column: 3, scope: !2113)
!2168 = distinct !DISubprogram(name: "quotearg_free", scope: !453, file: !453, line: 837, type: !408, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2169)
!2169 = !{!2170, !2171}
!2170 = !DILocalVariable(name: "sv", scope: !2168, file: !453, line: 839, type: !554)
!2171 = !DILocalVariable(name: "i", scope: !2172, file: !453, line: 840, type: !70)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !453, line: 840, column: 3)
!2173 = !DILocation(line: 839, column: 24, scope: !2168)
!2174 = !DILocation(line: 0, scope: !2168)
!2175 = !DILocation(line: 0, scope: !2172)
!2176 = !DILocation(line: 840, column: 21, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !453, line: 840, column: 3)
!2178 = !DILocation(line: 840, column: 3, scope: !2172)
!2179 = !DILocation(line: 842, column: 13, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2168, file: !453, line: 842, column: 7)
!2181 = !{!2182, !773, i64 8}
!2182 = !{!"slotvec", !1249, i64 0, !773, i64 8}
!2183 = !DILocation(line: 842, column: 17, scope: !2180)
!2184 = !DILocation(line: 842, column: 7, scope: !2168)
!2185 = !DILocation(line: 841, column: 17, scope: !2177)
!2186 = !DILocation(line: 841, column: 5, scope: !2177)
!2187 = !DILocation(line: 840, column: 32, scope: !2177)
!2188 = distinct !{!2188, !2178, !2189, !880}
!2189 = !DILocation(line: 841, column: 20, scope: !2172)
!2190 = !DILocation(line: 844, column: 7, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2180, file: !453, line: 843, column: 5)
!2192 = !DILocation(line: 845, column: 21, scope: !2191)
!2193 = !{!2182, !1249, i64 0}
!2194 = !DILocation(line: 846, column: 20, scope: !2191)
!2195 = !DILocation(line: 847, column: 5, scope: !2191)
!2196 = !DILocation(line: 848, column: 10, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2168, file: !453, line: 848, column: 7)
!2198 = !DILocation(line: 848, column: 7, scope: !2168)
!2199 = !DILocation(line: 850, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2197, file: !453, line: 849, column: 5)
!2201 = !DILocation(line: 851, column: 15, scope: !2200)
!2202 = !DILocation(line: 852, column: 5, scope: !2200)
!2203 = !DILocation(line: 853, column: 10, scope: !2168)
!2204 = !DILocation(line: 854, column: 1, scope: !2168)
!2205 = !DISubprogram(name: "free", scope: !1387, file: !1387, line: 786, type: !2206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !91}
!2208 = distinct !DISubprogram(name: "quotearg_n", scope: !453, file: !453, line: 919, type: !947, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2209)
!2209 = !{!2210, !2211}
!2210 = !DILocalVariable(name: "n", arg: 1, scope: !2208, file: !453, line: 919, type: !70)
!2211 = !DILocalVariable(name: "arg", arg: 2, scope: !2208, file: !453, line: 919, type: !96)
!2212 = !DILocation(line: 0, scope: !2208)
!2213 = !DILocation(line: 921, column: 10, scope: !2208)
!2214 = !DILocation(line: 921, column: 3, scope: !2208)
!2215 = distinct !DISubprogram(name: "quotearg_n_options", scope: !453, file: !453, line: 866, type: !2216, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!90, !70, !96, !93, !1433}
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2229, !2230, !2232, !2233, !2234}
!2219 = !DILocalVariable(name: "n", arg: 1, scope: !2215, file: !453, line: 866, type: !70)
!2220 = !DILocalVariable(name: "arg", arg: 2, scope: !2215, file: !453, line: 866, type: !96)
!2221 = !DILocalVariable(name: "argsize", arg: 3, scope: !2215, file: !453, line: 866, type: !93)
!2222 = !DILocalVariable(name: "options", arg: 4, scope: !2215, file: !453, line: 867, type: !1433)
!2223 = !DILocalVariable(name: "saved_errno", scope: !2215, file: !453, line: 869, type: !70)
!2224 = !DILocalVariable(name: "sv", scope: !2215, file: !453, line: 871, type: !554)
!2225 = !DILocalVariable(name: "nslots_max", scope: !2215, file: !453, line: 873, type: !70)
!2226 = !DILocalVariable(name: "preallocated", scope: !2227, file: !453, line: 879, type: !121)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !453, line: 878, column: 5)
!2228 = distinct !DILexicalBlock(scope: !2215, file: !453, line: 877, column: 7)
!2229 = !DILocalVariable(name: "new_nslots", scope: !2227, file: !453, line: 880, type: !719)
!2230 = !DILocalVariable(name: "size", scope: !2231, file: !453, line: 891, type: !93)
!2231 = distinct !DILexicalBlock(scope: !2215, file: !453, line: 890, column: 3)
!2232 = !DILocalVariable(name: "val", scope: !2231, file: !453, line: 892, type: !90)
!2233 = !DILocalVariable(name: "flags", scope: !2231, file: !453, line: 894, type: !70)
!2234 = !DILocalVariable(name: "qsize", scope: !2231, file: !453, line: 895, type: !93)
!2235 = distinct !DIAssignID()
!2236 = !DILocation(line: 0, scope: !2227)
!2237 = !DILocation(line: 0, scope: !2215)
!2238 = !DILocation(line: 869, column: 21, scope: !2215)
!2239 = !DILocation(line: 871, column: 24, scope: !2215)
!2240 = !DILocation(line: 874, column: 17, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2215, file: !453, line: 874, column: 7)
!2242 = !DILocation(line: 875, column: 5, scope: !2241)
!2243 = !DILocation(line: 877, column: 7, scope: !2228)
!2244 = !DILocation(line: 877, column: 14, scope: !2228)
!2245 = !DILocation(line: 877, column: 7, scope: !2215)
!2246 = !DILocation(line: 879, column: 31, scope: !2227)
!2247 = !DILocation(line: 880, column: 7, scope: !2227)
!2248 = !DILocation(line: 880, column: 26, scope: !2227)
!2249 = !DILocation(line: 880, column: 13, scope: !2227)
!2250 = distinct !DIAssignID()
!2251 = !DILocation(line: 882, column: 31, scope: !2227)
!2252 = !DILocation(line: 883, column: 33, scope: !2227)
!2253 = !DILocation(line: 883, column: 42, scope: !2227)
!2254 = !DILocation(line: 883, column: 31, scope: !2227)
!2255 = !DILocation(line: 882, column: 22, scope: !2227)
!2256 = !DILocation(line: 882, column: 15, scope: !2227)
!2257 = !DILocation(line: 884, column: 11, scope: !2227)
!2258 = !DILocation(line: 885, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2227, file: !453, line: 884, column: 11)
!2260 = !{i64 0, i64 8, !2165, i64 8, i64 8, !772}
!2261 = !DILocation(line: 885, column: 9, scope: !2259)
!2262 = !DILocation(line: 886, column: 20, scope: !2227)
!2263 = !DILocation(line: 886, column: 18, scope: !2227)
!2264 = !DILocation(line: 886, column: 32, scope: !2227)
!2265 = !DILocation(line: 886, column: 43, scope: !2227)
!2266 = !DILocation(line: 886, column: 53, scope: !2227)
!2267 = !DILocation(line: 0, scope: !1650, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 886, column: 7, scope: !2227)
!2269 = !DILocation(line: 59, column: 10, scope: !1650, inlinedAt: !2268)
!2270 = !DILocation(line: 887, column: 16, scope: !2227)
!2271 = !DILocation(line: 887, column: 14, scope: !2227)
!2272 = !DILocation(line: 888, column: 5, scope: !2228)
!2273 = !DILocation(line: 888, column: 5, scope: !2227)
!2274 = !DILocation(line: 891, column: 19, scope: !2231)
!2275 = !DILocation(line: 891, column: 25, scope: !2231)
!2276 = !DILocation(line: 0, scope: !2231)
!2277 = !DILocation(line: 892, column: 23, scope: !2231)
!2278 = !DILocation(line: 894, column: 26, scope: !2231)
!2279 = !DILocation(line: 894, column: 32, scope: !2231)
!2280 = !DILocation(line: 896, column: 55, scope: !2231)
!2281 = !DILocation(line: 897, column: 55, scope: !2231)
!2282 = !DILocation(line: 898, column: 55, scope: !2231)
!2283 = !DILocation(line: 899, column: 55, scope: !2231)
!2284 = !DILocation(line: 895, column: 20, scope: !2231)
!2285 = !DILocation(line: 901, column: 14, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2231, file: !453, line: 901, column: 9)
!2287 = !DILocation(line: 901, column: 9, scope: !2231)
!2288 = !DILocation(line: 903, column: 35, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2286, file: !453, line: 902, column: 7)
!2290 = !DILocation(line: 903, column: 20, scope: !2289)
!2291 = !DILocation(line: 904, column: 17, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !453, line: 904, column: 13)
!2293 = !DILocation(line: 904, column: 13, scope: !2289)
!2294 = !DILocation(line: 905, column: 11, scope: !2292)
!2295 = !DILocation(line: 906, column: 27, scope: !2289)
!2296 = !DILocation(line: 906, column: 19, scope: !2289)
!2297 = !DILocation(line: 907, column: 69, scope: !2289)
!2298 = !DILocation(line: 909, column: 44, scope: !2289)
!2299 = !DILocation(line: 910, column: 44, scope: !2289)
!2300 = !DILocation(line: 907, column: 9, scope: !2289)
!2301 = !DILocation(line: 911, column: 7, scope: !2289)
!2302 = !DILocation(line: 913, column: 11, scope: !2231)
!2303 = !DILocation(line: 914, column: 5, scope: !2231)
!2304 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !453, file: !453, line: 925, type: !2305, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!90, !70, !96, !93}
!2307 = !{!2308, !2309, !2310}
!2308 = !DILocalVariable(name: "n", arg: 1, scope: !2304, file: !453, line: 925, type: !70)
!2309 = !DILocalVariable(name: "arg", arg: 2, scope: !2304, file: !453, line: 925, type: !96)
!2310 = !DILocalVariable(name: "argsize", arg: 3, scope: !2304, file: !453, line: 925, type: !93)
!2311 = !DILocation(line: 0, scope: !2304)
!2312 = !DILocation(line: 927, column: 10, scope: !2304)
!2313 = !DILocation(line: 927, column: 3, scope: !2304)
!2314 = distinct !DISubprogram(name: "quotearg", scope: !453, file: !453, line: 931, type: !956, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2315)
!2315 = !{!2316}
!2316 = !DILocalVariable(name: "arg", arg: 1, scope: !2314, file: !453, line: 931, type: !96)
!2317 = !DILocation(line: 0, scope: !2314)
!2318 = !DILocation(line: 0, scope: !2208, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 933, column: 10, scope: !2314)
!2320 = !DILocation(line: 921, column: 10, scope: !2208, inlinedAt: !2319)
!2321 = !DILocation(line: 933, column: 3, scope: !2314)
!2322 = distinct !DISubprogram(name: "quotearg_mem", scope: !453, file: !453, line: 937, type: !2323, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!90, !96, !93}
!2325 = !{!2326, !2327}
!2326 = !DILocalVariable(name: "arg", arg: 1, scope: !2322, file: !453, line: 937, type: !96)
!2327 = !DILocalVariable(name: "argsize", arg: 2, scope: !2322, file: !453, line: 937, type: !93)
!2328 = !DILocation(line: 0, scope: !2322)
!2329 = !DILocation(line: 0, scope: !2304, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 939, column: 10, scope: !2322)
!2331 = !DILocation(line: 927, column: 10, scope: !2304, inlinedAt: !2330)
!2332 = !DILocation(line: 939, column: 3, scope: !2322)
!2333 = distinct !DISubprogram(name: "quotearg_n_style", scope: !453, file: !453, line: 943, type: !2334, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!90, !70, !479, !96}
!2336 = !{!2337, !2338, !2339, !2340}
!2337 = !DILocalVariable(name: "n", arg: 1, scope: !2333, file: !453, line: 943, type: !70)
!2338 = !DILocalVariable(name: "s", arg: 2, scope: !2333, file: !453, line: 943, type: !479)
!2339 = !DILocalVariable(name: "arg", arg: 3, scope: !2333, file: !453, line: 943, type: !96)
!2340 = !DILocalVariable(name: "o", scope: !2333, file: !453, line: 945, type: !1434)
!2341 = distinct !DIAssignID()
!2342 = !DILocation(line: 0, scope: !2333)
!2343 = !DILocation(line: 945, column: 3, scope: !2333)
!2344 = !{!2345}
!2345 = distinct !{!2345, !2346, !"quoting_options_from_style: argument 0"}
!2346 = distinct !{!2346, !"quoting_options_from_style"}
!2347 = !DILocation(line: 945, column: 36, scope: !2333)
!2348 = !DILocalVariable(name: "style", arg: 1, scope: !2349, file: !453, line: 183, type: !479)
!2349 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !453, file: !453, line: 183, type: !2350, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!506, !479}
!2352 = !{!2348, !2353}
!2353 = !DILocalVariable(name: "o", scope: !2349, file: !453, line: 185, type: !506)
!2354 = !DILocation(line: 0, scope: !2349, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 945, column: 36, scope: !2333)
!2356 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2355)
!2357 = distinct !DIAssignID()
!2358 = !DILocation(line: 186, column: 13, scope: !2359, inlinedAt: !2355)
!2359 = distinct !DILexicalBlock(scope: !2349, file: !453, line: 186, column: 7)
!2360 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2355)
!2361 = !DILocation(line: 187, column: 5, scope: !2359, inlinedAt: !2355)
!2362 = !DILocation(line: 188, column: 11, scope: !2349, inlinedAt: !2355)
!2363 = distinct !DIAssignID()
!2364 = !DILocation(line: 946, column: 10, scope: !2333)
!2365 = !DILocation(line: 947, column: 1, scope: !2333)
!2366 = !DILocation(line: 946, column: 3, scope: !2333)
!2367 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !453, file: !453, line: 950, type: !2368, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!90, !70, !479, !96, !93}
!2370 = !{!2371, !2372, !2373, !2374, !2375}
!2371 = !DILocalVariable(name: "n", arg: 1, scope: !2367, file: !453, line: 950, type: !70)
!2372 = !DILocalVariable(name: "s", arg: 2, scope: !2367, file: !453, line: 950, type: !479)
!2373 = !DILocalVariable(name: "arg", arg: 3, scope: !2367, file: !453, line: 951, type: !96)
!2374 = !DILocalVariable(name: "argsize", arg: 4, scope: !2367, file: !453, line: 951, type: !93)
!2375 = !DILocalVariable(name: "o", scope: !2367, file: !453, line: 953, type: !1434)
!2376 = distinct !DIAssignID()
!2377 = !DILocation(line: 0, scope: !2367)
!2378 = !DILocation(line: 953, column: 3, scope: !2367)
!2379 = !{!2380}
!2380 = distinct !{!2380, !2381, !"quoting_options_from_style: argument 0"}
!2381 = distinct !{!2381, !"quoting_options_from_style"}
!2382 = !DILocation(line: 953, column: 36, scope: !2367)
!2383 = !DILocation(line: 0, scope: !2349, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 953, column: 36, scope: !2367)
!2385 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2384)
!2386 = distinct !DIAssignID()
!2387 = !DILocation(line: 186, column: 13, scope: !2359, inlinedAt: !2384)
!2388 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2384)
!2389 = !DILocation(line: 187, column: 5, scope: !2359, inlinedAt: !2384)
!2390 = !DILocation(line: 188, column: 11, scope: !2349, inlinedAt: !2384)
!2391 = distinct !DIAssignID()
!2392 = !DILocation(line: 954, column: 10, scope: !2367)
!2393 = !DILocation(line: 955, column: 1, scope: !2367)
!2394 = !DILocation(line: 954, column: 3, scope: !2367)
!2395 = distinct !DISubprogram(name: "quotearg_style", scope: !453, file: !453, line: 958, type: !2396, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!90, !479, !96}
!2398 = !{!2399, !2400}
!2399 = !DILocalVariable(name: "s", arg: 1, scope: !2395, file: !453, line: 958, type: !479)
!2400 = !DILocalVariable(name: "arg", arg: 2, scope: !2395, file: !453, line: 958, type: !96)
!2401 = distinct !DIAssignID()
!2402 = !DILocation(line: 0, scope: !2395)
!2403 = !DILocation(line: 0, scope: !2333, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 960, column: 10, scope: !2395)
!2405 = !DILocation(line: 945, column: 3, scope: !2333, inlinedAt: !2404)
!2406 = !{!2407}
!2407 = distinct !{!2407, !2408, !"quoting_options_from_style: argument 0"}
!2408 = distinct !{!2408, !"quoting_options_from_style"}
!2409 = !DILocation(line: 945, column: 36, scope: !2333, inlinedAt: !2404)
!2410 = !DILocation(line: 0, scope: !2349, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 945, column: 36, scope: !2333, inlinedAt: !2404)
!2412 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2411)
!2413 = distinct !DIAssignID()
!2414 = !DILocation(line: 186, column: 13, scope: !2359, inlinedAt: !2411)
!2415 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2411)
!2416 = !DILocation(line: 187, column: 5, scope: !2359, inlinedAt: !2411)
!2417 = !DILocation(line: 188, column: 11, scope: !2349, inlinedAt: !2411)
!2418 = distinct !DIAssignID()
!2419 = !DILocation(line: 946, column: 10, scope: !2333, inlinedAt: !2404)
!2420 = !DILocation(line: 947, column: 1, scope: !2333, inlinedAt: !2404)
!2421 = !DILocation(line: 960, column: 3, scope: !2395)
!2422 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !453, file: !453, line: 964, type: !2423, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!90, !479, !96, !93}
!2425 = !{!2426, !2427, !2428}
!2426 = !DILocalVariable(name: "s", arg: 1, scope: !2422, file: !453, line: 964, type: !479)
!2427 = !DILocalVariable(name: "arg", arg: 2, scope: !2422, file: !453, line: 964, type: !96)
!2428 = !DILocalVariable(name: "argsize", arg: 3, scope: !2422, file: !453, line: 964, type: !93)
!2429 = distinct !DIAssignID()
!2430 = !DILocation(line: 0, scope: !2422)
!2431 = !DILocation(line: 0, scope: !2367, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 966, column: 10, scope: !2422)
!2433 = !DILocation(line: 953, column: 3, scope: !2367, inlinedAt: !2432)
!2434 = !{!2435}
!2435 = distinct !{!2435, !2436, !"quoting_options_from_style: argument 0"}
!2436 = distinct !{!2436, !"quoting_options_from_style"}
!2437 = !DILocation(line: 953, column: 36, scope: !2367, inlinedAt: !2432)
!2438 = !DILocation(line: 0, scope: !2349, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 953, column: 36, scope: !2367, inlinedAt: !2432)
!2440 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2439)
!2441 = distinct !DIAssignID()
!2442 = !DILocation(line: 186, column: 13, scope: !2359, inlinedAt: !2439)
!2443 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2439)
!2444 = !DILocation(line: 187, column: 5, scope: !2359, inlinedAt: !2439)
!2445 = !DILocation(line: 188, column: 11, scope: !2349, inlinedAt: !2439)
!2446 = distinct !DIAssignID()
!2447 = !DILocation(line: 954, column: 10, scope: !2367, inlinedAt: !2432)
!2448 = !DILocation(line: 955, column: 1, scope: !2367, inlinedAt: !2432)
!2449 = !DILocation(line: 966, column: 3, scope: !2422)
!2450 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !453, file: !453, line: 970, type: !2451, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!90, !96, !93, !4}
!2453 = !{!2454, !2455, !2456, !2457}
!2454 = !DILocalVariable(name: "arg", arg: 1, scope: !2450, file: !453, line: 970, type: !96)
!2455 = !DILocalVariable(name: "argsize", arg: 2, scope: !2450, file: !453, line: 970, type: !93)
!2456 = !DILocalVariable(name: "ch", arg: 3, scope: !2450, file: !453, line: 970, type: !4)
!2457 = !DILocalVariable(name: "options", scope: !2450, file: !453, line: 972, type: !506)
!2458 = distinct !DIAssignID()
!2459 = !DILocation(line: 0, scope: !2450)
!2460 = !DILocation(line: 972, column: 3, scope: !2450)
!2461 = !DILocation(line: 973, column: 13, scope: !2450)
!2462 = !{i64 0, i64 4, !833, i64 4, i64 4, !833, i64 8, i64 32, !842, i64 40, i64 8, !772, i64 48, i64 8, !772}
!2463 = distinct !DIAssignID()
!2464 = !DILocation(line: 0, scope: !1453, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 974, column: 3, scope: !2450)
!2466 = !DILocation(line: 147, column: 41, scope: !1453, inlinedAt: !2465)
!2467 = !DILocation(line: 147, column: 62, scope: !1453, inlinedAt: !2465)
!2468 = !DILocation(line: 147, column: 57, scope: !1453, inlinedAt: !2465)
!2469 = !DILocation(line: 148, column: 15, scope: !1453, inlinedAt: !2465)
!2470 = !DILocation(line: 149, column: 21, scope: !1453, inlinedAt: !2465)
!2471 = !DILocation(line: 149, column: 24, scope: !1453, inlinedAt: !2465)
!2472 = !DILocation(line: 150, column: 19, scope: !1453, inlinedAt: !2465)
!2473 = !DILocation(line: 150, column: 24, scope: !1453, inlinedAt: !2465)
!2474 = !DILocation(line: 150, column: 6, scope: !1453, inlinedAt: !2465)
!2475 = !DILocation(line: 975, column: 10, scope: !2450)
!2476 = !DILocation(line: 976, column: 1, scope: !2450)
!2477 = !DILocation(line: 975, column: 3, scope: !2450)
!2478 = distinct !DISubprogram(name: "quotearg_char", scope: !453, file: !453, line: 979, type: !2479, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!90, !96, !4}
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "arg", arg: 1, scope: !2478, file: !453, line: 979, type: !96)
!2483 = !DILocalVariable(name: "ch", arg: 2, scope: !2478, file: !453, line: 979, type: !4)
!2484 = distinct !DIAssignID()
!2485 = !DILocation(line: 0, scope: !2478)
!2486 = !DILocation(line: 0, scope: !2450, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 981, column: 10, scope: !2478)
!2488 = !DILocation(line: 972, column: 3, scope: !2450, inlinedAt: !2487)
!2489 = !DILocation(line: 973, column: 13, scope: !2450, inlinedAt: !2487)
!2490 = distinct !DIAssignID()
!2491 = !DILocation(line: 0, scope: !1453, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 974, column: 3, scope: !2450, inlinedAt: !2487)
!2493 = !DILocation(line: 147, column: 41, scope: !1453, inlinedAt: !2492)
!2494 = !DILocation(line: 147, column: 62, scope: !1453, inlinedAt: !2492)
!2495 = !DILocation(line: 147, column: 57, scope: !1453, inlinedAt: !2492)
!2496 = !DILocation(line: 148, column: 15, scope: !1453, inlinedAt: !2492)
!2497 = !DILocation(line: 149, column: 21, scope: !1453, inlinedAt: !2492)
!2498 = !DILocation(line: 149, column: 24, scope: !1453, inlinedAt: !2492)
!2499 = !DILocation(line: 150, column: 19, scope: !1453, inlinedAt: !2492)
!2500 = !DILocation(line: 150, column: 24, scope: !1453, inlinedAt: !2492)
!2501 = !DILocation(line: 150, column: 6, scope: !1453, inlinedAt: !2492)
!2502 = !DILocation(line: 975, column: 10, scope: !2450, inlinedAt: !2487)
!2503 = !DILocation(line: 976, column: 1, scope: !2450, inlinedAt: !2487)
!2504 = !DILocation(line: 981, column: 3, scope: !2478)
!2505 = distinct !DISubprogram(name: "quotearg_colon", scope: !453, file: !453, line: 985, type: !956, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2506)
!2506 = !{!2507}
!2507 = !DILocalVariable(name: "arg", arg: 1, scope: !2505, file: !453, line: 985, type: !96)
!2508 = distinct !DIAssignID()
!2509 = !DILocation(line: 0, scope: !2505)
!2510 = !DILocation(line: 0, scope: !2478, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 987, column: 10, scope: !2505)
!2512 = !DILocation(line: 0, scope: !2450, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 981, column: 10, scope: !2478, inlinedAt: !2511)
!2514 = !DILocation(line: 972, column: 3, scope: !2450, inlinedAt: !2513)
!2515 = !DILocation(line: 973, column: 13, scope: !2450, inlinedAt: !2513)
!2516 = distinct !DIAssignID()
!2517 = !DILocation(line: 0, scope: !1453, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 974, column: 3, scope: !2450, inlinedAt: !2513)
!2519 = !DILocation(line: 147, column: 57, scope: !1453, inlinedAt: !2518)
!2520 = !DILocation(line: 149, column: 21, scope: !1453, inlinedAt: !2518)
!2521 = !DILocation(line: 150, column: 6, scope: !1453, inlinedAt: !2518)
!2522 = !DILocation(line: 975, column: 10, scope: !2450, inlinedAt: !2513)
!2523 = !DILocation(line: 976, column: 1, scope: !2450, inlinedAt: !2513)
!2524 = !DILocation(line: 987, column: 3, scope: !2505)
!2525 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !453, file: !453, line: 991, type: !2323, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2526)
!2526 = !{!2527, !2528}
!2527 = !DILocalVariable(name: "arg", arg: 1, scope: !2525, file: !453, line: 991, type: !96)
!2528 = !DILocalVariable(name: "argsize", arg: 2, scope: !2525, file: !453, line: 991, type: !93)
!2529 = distinct !DIAssignID()
!2530 = !DILocation(line: 0, scope: !2525)
!2531 = !DILocation(line: 0, scope: !2450, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 993, column: 10, scope: !2525)
!2533 = !DILocation(line: 972, column: 3, scope: !2450, inlinedAt: !2532)
!2534 = !DILocation(line: 973, column: 13, scope: !2450, inlinedAt: !2532)
!2535 = distinct !DIAssignID()
!2536 = !DILocation(line: 0, scope: !1453, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 974, column: 3, scope: !2450, inlinedAt: !2532)
!2538 = !DILocation(line: 147, column: 57, scope: !1453, inlinedAt: !2537)
!2539 = !DILocation(line: 149, column: 21, scope: !1453, inlinedAt: !2537)
!2540 = !DILocation(line: 150, column: 6, scope: !1453, inlinedAt: !2537)
!2541 = !DILocation(line: 975, column: 10, scope: !2450, inlinedAt: !2532)
!2542 = !DILocation(line: 976, column: 1, scope: !2450, inlinedAt: !2532)
!2543 = !DILocation(line: 993, column: 3, scope: !2525)
!2544 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !453, file: !453, line: 997, type: !2334, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2545)
!2545 = !{!2546, !2547, !2548, !2549}
!2546 = !DILocalVariable(name: "n", arg: 1, scope: !2544, file: !453, line: 997, type: !70)
!2547 = !DILocalVariable(name: "s", arg: 2, scope: !2544, file: !453, line: 997, type: !479)
!2548 = !DILocalVariable(name: "arg", arg: 3, scope: !2544, file: !453, line: 997, type: !96)
!2549 = !DILocalVariable(name: "options", scope: !2544, file: !453, line: 999, type: !506)
!2550 = distinct !DIAssignID()
!2551 = !DILocation(line: 0, scope: !2544)
!2552 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 1000, column: 13, scope: !2544)
!2554 = !DILocation(line: 999, column: 3, scope: !2544)
!2555 = !DILocation(line: 0, scope: !2349, inlinedAt: !2553)
!2556 = !DILocation(line: 186, column: 13, scope: !2359, inlinedAt: !2553)
!2557 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2553)
!2558 = !DILocation(line: 187, column: 5, scope: !2359, inlinedAt: !2553)
!2559 = !{!2560}
!2560 = distinct !{!2560, !2561, !"quoting_options_from_style: argument 0"}
!2561 = distinct !{!2561, !"quoting_options_from_style"}
!2562 = !DILocation(line: 1000, column: 13, scope: !2544)
!2563 = distinct !DIAssignID()
!2564 = distinct !DIAssignID()
!2565 = !DILocation(line: 0, scope: !1453, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1001, column: 3, scope: !2544)
!2567 = !DILocation(line: 147, column: 57, scope: !1453, inlinedAt: !2566)
!2568 = !DILocation(line: 149, column: 21, scope: !1453, inlinedAt: !2566)
!2569 = !DILocation(line: 150, column: 6, scope: !1453, inlinedAt: !2566)
!2570 = distinct !DIAssignID()
!2571 = !DILocation(line: 1002, column: 10, scope: !2544)
!2572 = !DILocation(line: 1003, column: 1, scope: !2544)
!2573 = !DILocation(line: 1002, column: 3, scope: !2544)
!2574 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !453, file: !453, line: 1006, type: !2575, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!90, !70, !96, !96, !96}
!2577 = !{!2578, !2579, !2580, !2581}
!2578 = !DILocalVariable(name: "n", arg: 1, scope: !2574, file: !453, line: 1006, type: !70)
!2579 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2574, file: !453, line: 1006, type: !96)
!2580 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2574, file: !453, line: 1007, type: !96)
!2581 = !DILocalVariable(name: "arg", arg: 4, scope: !2574, file: !453, line: 1007, type: !96)
!2582 = distinct !DIAssignID()
!2583 = !DILocation(line: 0, scope: !2574)
!2584 = !DILocalVariable(name: "o", scope: !2585, file: !453, line: 1018, type: !506)
!2585 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !453, file: !453, line: 1014, type: !2586, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!90, !70, !96, !96, !96, !93}
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2584}
!2589 = !DILocalVariable(name: "n", arg: 1, scope: !2585, file: !453, line: 1014, type: !70)
!2590 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2585, file: !453, line: 1014, type: !96)
!2591 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2585, file: !453, line: 1015, type: !96)
!2592 = !DILocalVariable(name: "arg", arg: 4, scope: !2585, file: !453, line: 1016, type: !96)
!2593 = !DILocalVariable(name: "argsize", arg: 5, scope: !2585, file: !453, line: 1016, type: !93)
!2594 = !DILocation(line: 0, scope: !2585, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1009, column: 10, scope: !2574)
!2596 = !DILocation(line: 1018, column: 3, scope: !2585, inlinedAt: !2595)
!2597 = !DILocation(line: 1018, column: 30, scope: !2585, inlinedAt: !2595)
!2598 = distinct !DIAssignID()
!2599 = distinct !DIAssignID()
!2600 = !DILocation(line: 0, scope: !1493, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1019, column: 3, scope: !2585, inlinedAt: !2595)
!2602 = !DILocation(line: 174, column: 12, scope: !1493, inlinedAt: !2601)
!2603 = distinct !DIAssignID()
!2604 = !DILocation(line: 175, column: 8, scope: !1506, inlinedAt: !2601)
!2605 = !DILocation(line: 175, column: 19, scope: !1506, inlinedAt: !2601)
!2606 = !DILocation(line: 176, column: 5, scope: !1506, inlinedAt: !2601)
!2607 = !DILocation(line: 177, column: 6, scope: !1493, inlinedAt: !2601)
!2608 = !DILocation(line: 177, column: 17, scope: !1493, inlinedAt: !2601)
!2609 = distinct !DIAssignID()
!2610 = !DILocation(line: 178, column: 6, scope: !1493, inlinedAt: !2601)
!2611 = !DILocation(line: 178, column: 18, scope: !1493, inlinedAt: !2601)
!2612 = distinct !DIAssignID()
!2613 = !DILocation(line: 1020, column: 10, scope: !2585, inlinedAt: !2595)
!2614 = !DILocation(line: 1021, column: 1, scope: !2585, inlinedAt: !2595)
!2615 = !DILocation(line: 1009, column: 3, scope: !2574)
!2616 = distinct !DIAssignID()
!2617 = !DILocation(line: 0, scope: !2585)
!2618 = !DILocation(line: 1018, column: 3, scope: !2585)
!2619 = !DILocation(line: 1018, column: 30, scope: !2585)
!2620 = distinct !DIAssignID()
!2621 = distinct !DIAssignID()
!2622 = !DILocation(line: 0, scope: !1493, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 1019, column: 3, scope: !2585)
!2624 = !DILocation(line: 174, column: 12, scope: !1493, inlinedAt: !2623)
!2625 = distinct !DIAssignID()
!2626 = !DILocation(line: 175, column: 8, scope: !1506, inlinedAt: !2623)
!2627 = !DILocation(line: 175, column: 19, scope: !1506, inlinedAt: !2623)
!2628 = !DILocation(line: 176, column: 5, scope: !1506, inlinedAt: !2623)
!2629 = !DILocation(line: 177, column: 6, scope: !1493, inlinedAt: !2623)
!2630 = !DILocation(line: 177, column: 17, scope: !1493, inlinedAt: !2623)
!2631 = distinct !DIAssignID()
!2632 = !DILocation(line: 178, column: 6, scope: !1493, inlinedAt: !2623)
!2633 = !DILocation(line: 178, column: 18, scope: !1493, inlinedAt: !2623)
!2634 = distinct !DIAssignID()
!2635 = !DILocation(line: 1020, column: 10, scope: !2585)
!2636 = !DILocation(line: 1021, column: 1, scope: !2585)
!2637 = !DILocation(line: 1020, column: 3, scope: !2585)
!2638 = distinct !DISubprogram(name: "quotearg_custom", scope: !453, file: !453, line: 1024, type: !2639, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!90, !96, !96, !96}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2638, file: !453, line: 1024, type: !96)
!2643 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2638, file: !453, line: 1024, type: !96)
!2644 = !DILocalVariable(name: "arg", arg: 3, scope: !2638, file: !453, line: 1025, type: !96)
!2645 = distinct !DIAssignID()
!2646 = !DILocation(line: 0, scope: !2638)
!2647 = !DILocation(line: 0, scope: !2574, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1027, column: 10, scope: !2638)
!2649 = !DILocation(line: 0, scope: !2585, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1009, column: 10, scope: !2574, inlinedAt: !2648)
!2651 = !DILocation(line: 1018, column: 3, scope: !2585, inlinedAt: !2650)
!2652 = !DILocation(line: 1018, column: 30, scope: !2585, inlinedAt: !2650)
!2653 = distinct !DIAssignID()
!2654 = distinct !DIAssignID()
!2655 = !DILocation(line: 0, scope: !1493, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1019, column: 3, scope: !2585, inlinedAt: !2650)
!2657 = !DILocation(line: 174, column: 12, scope: !1493, inlinedAt: !2656)
!2658 = distinct !DIAssignID()
!2659 = !DILocation(line: 175, column: 8, scope: !1506, inlinedAt: !2656)
!2660 = !DILocation(line: 175, column: 19, scope: !1506, inlinedAt: !2656)
!2661 = !DILocation(line: 176, column: 5, scope: !1506, inlinedAt: !2656)
!2662 = !DILocation(line: 177, column: 6, scope: !1493, inlinedAt: !2656)
!2663 = !DILocation(line: 177, column: 17, scope: !1493, inlinedAt: !2656)
!2664 = distinct !DIAssignID()
!2665 = !DILocation(line: 178, column: 6, scope: !1493, inlinedAt: !2656)
!2666 = !DILocation(line: 178, column: 18, scope: !1493, inlinedAt: !2656)
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 1020, column: 10, scope: !2585, inlinedAt: !2650)
!2669 = !DILocation(line: 1021, column: 1, scope: !2585, inlinedAt: !2650)
!2670 = !DILocation(line: 1027, column: 3, scope: !2638)
!2671 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !453, file: !453, line: 1031, type: !2672, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!90, !96, !96, !96, !93}
!2674 = !{!2675, !2676, !2677, !2678}
!2675 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2671, file: !453, line: 1031, type: !96)
!2676 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2671, file: !453, line: 1031, type: !96)
!2677 = !DILocalVariable(name: "arg", arg: 3, scope: !2671, file: !453, line: 1032, type: !96)
!2678 = !DILocalVariable(name: "argsize", arg: 4, scope: !2671, file: !453, line: 1032, type: !93)
!2679 = distinct !DIAssignID()
!2680 = !DILocation(line: 0, scope: !2671)
!2681 = !DILocation(line: 0, scope: !2585, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1034, column: 10, scope: !2671)
!2683 = !DILocation(line: 1018, column: 3, scope: !2585, inlinedAt: !2682)
!2684 = !DILocation(line: 1018, column: 30, scope: !2585, inlinedAt: !2682)
!2685 = distinct !DIAssignID()
!2686 = distinct !DIAssignID()
!2687 = !DILocation(line: 0, scope: !1493, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1019, column: 3, scope: !2585, inlinedAt: !2682)
!2689 = !DILocation(line: 174, column: 12, scope: !1493, inlinedAt: !2688)
!2690 = distinct !DIAssignID()
!2691 = !DILocation(line: 175, column: 8, scope: !1506, inlinedAt: !2688)
!2692 = !DILocation(line: 175, column: 19, scope: !1506, inlinedAt: !2688)
!2693 = !DILocation(line: 176, column: 5, scope: !1506, inlinedAt: !2688)
!2694 = !DILocation(line: 177, column: 6, scope: !1493, inlinedAt: !2688)
!2695 = !DILocation(line: 177, column: 17, scope: !1493, inlinedAt: !2688)
!2696 = distinct !DIAssignID()
!2697 = !DILocation(line: 178, column: 6, scope: !1493, inlinedAt: !2688)
!2698 = !DILocation(line: 178, column: 18, scope: !1493, inlinedAt: !2688)
!2699 = distinct !DIAssignID()
!2700 = !DILocation(line: 1020, column: 10, scope: !2585, inlinedAt: !2682)
!2701 = !DILocation(line: 1021, column: 1, scope: !2585, inlinedAt: !2682)
!2702 = !DILocation(line: 1034, column: 3, scope: !2671)
!2703 = distinct !DISubprogram(name: "quote_n_mem", scope: !453, file: !453, line: 1049, type: !2704, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!96, !70, !96, !93}
!2706 = !{!2707, !2708, !2709}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !453, line: 1049, type: !70)
!2708 = !DILocalVariable(name: "arg", arg: 2, scope: !2703, file: !453, line: 1049, type: !96)
!2709 = !DILocalVariable(name: "argsize", arg: 3, scope: !2703, file: !453, line: 1049, type: !93)
!2710 = !DILocation(line: 0, scope: !2703)
!2711 = !DILocation(line: 1051, column: 10, scope: !2703)
!2712 = !DILocation(line: 1051, column: 3, scope: !2703)
!2713 = distinct !DISubprogram(name: "quote_mem", scope: !453, file: !453, line: 1055, type: !2714, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!96, !96, !93}
!2716 = !{!2717, !2718}
!2717 = !DILocalVariable(name: "arg", arg: 1, scope: !2713, file: !453, line: 1055, type: !96)
!2718 = !DILocalVariable(name: "argsize", arg: 2, scope: !2713, file: !453, line: 1055, type: !93)
!2719 = !DILocation(line: 0, scope: !2713)
!2720 = !DILocation(line: 0, scope: !2703, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 1057, column: 10, scope: !2713)
!2722 = !DILocation(line: 1051, column: 10, scope: !2703, inlinedAt: !2721)
!2723 = !DILocation(line: 1057, column: 3, scope: !2713)
!2724 = distinct !DISubprogram(name: "quote_n", scope: !453, file: !453, line: 1061, type: !2725, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!96, !70, !96}
!2727 = !{!2728, !2729}
!2728 = !DILocalVariable(name: "n", arg: 1, scope: !2724, file: !453, line: 1061, type: !70)
!2729 = !DILocalVariable(name: "arg", arg: 2, scope: !2724, file: !453, line: 1061, type: !96)
!2730 = !DILocation(line: 0, scope: !2724)
!2731 = !DILocation(line: 0, scope: !2703, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 1063, column: 10, scope: !2724)
!2733 = !DILocation(line: 1051, column: 10, scope: !2703, inlinedAt: !2732)
!2734 = !DILocation(line: 1063, column: 3, scope: !2724)
!2735 = distinct !DISubprogram(name: "quote", scope: !453, file: !453, line: 1067, type: !2736, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!96, !96}
!2738 = !{!2739}
!2739 = !DILocalVariable(name: "arg", arg: 1, scope: !2735, file: !453, line: 1067, type: !96)
!2740 = !DILocation(line: 0, scope: !2735)
!2741 = !DILocation(line: 0, scope: !2724, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 1069, column: 10, scope: !2735)
!2743 = !DILocation(line: 0, scope: !2703, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1063, column: 10, scope: !2724, inlinedAt: !2742)
!2745 = !DILocation(line: 1051, column: 10, scope: !2703, inlinedAt: !2744)
!2746 = !DILocation(line: 1069, column: 3, scope: !2735)
!2747 = distinct !DISubprogram(name: "version_etc_arn", scope: !569, file: !569, line: 61, type: !2748, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2785)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !2750, !96, !96, !96, !2784, !93}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !2752)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2752, file: !150, line: 51, baseType: !70, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2752, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2752, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2752, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2752, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2752, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2752, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2752, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2752, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2752, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2752, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2752, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2752, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2752, file: !150, line: 70, baseType: !2768, size: 64, offset: 832)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2752, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2752, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2752, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2752, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2752, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2752, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2752, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2752, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2752, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2752, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2752, file: !150, line: 93, baseType: !2768, size: 64, offset: 1344)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2752, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2752, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2752, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2752, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791}
!2786 = !DILocalVariable(name: "stream", arg: 1, scope: !2747, file: !569, line: 61, type: !2750)
!2787 = !DILocalVariable(name: "command_name", arg: 2, scope: !2747, file: !569, line: 62, type: !96)
!2788 = !DILocalVariable(name: "package", arg: 3, scope: !2747, file: !569, line: 62, type: !96)
!2789 = !DILocalVariable(name: "version", arg: 4, scope: !2747, file: !569, line: 63, type: !96)
!2790 = !DILocalVariable(name: "authors", arg: 5, scope: !2747, file: !569, line: 64, type: !2784)
!2791 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2747, file: !569, line: 64, type: !93)
!2792 = !DILocation(line: 0, scope: !2747)
!2793 = !DILocation(line: 66, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2747, file: !569, line: 66, column: 7)
!2795 = !DILocation(line: 66, column: 7, scope: !2747)
!2796 = !DILocation(line: 67, column: 5, scope: !2794)
!2797 = !DILocation(line: 69, column: 5, scope: !2794)
!2798 = !DILocation(line: 83, column: 3, scope: !2747)
!2799 = !DILocation(line: 85, column: 3, scope: !2747)
!2800 = !DILocation(line: 88, column: 3, scope: !2747)
!2801 = !DILocation(line: 95, column: 3, scope: !2747)
!2802 = !DILocation(line: 97, column: 3, scope: !2747)
!2803 = !DILocation(line: 105, column: 7, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2747, file: !569, line: 98, column: 5)
!2805 = !DILocation(line: 106, column: 7, scope: !2804)
!2806 = !DILocation(line: 109, column: 7, scope: !2804)
!2807 = !DILocation(line: 110, column: 7, scope: !2804)
!2808 = !DILocation(line: 113, column: 7, scope: !2804)
!2809 = !DILocation(line: 115, column: 7, scope: !2804)
!2810 = !DILocation(line: 120, column: 7, scope: !2804)
!2811 = !DILocation(line: 122, column: 7, scope: !2804)
!2812 = !DILocation(line: 127, column: 7, scope: !2804)
!2813 = !DILocation(line: 129, column: 7, scope: !2804)
!2814 = !DILocation(line: 134, column: 7, scope: !2804)
!2815 = !DILocation(line: 137, column: 7, scope: !2804)
!2816 = !DILocation(line: 142, column: 7, scope: !2804)
!2817 = !DILocation(line: 145, column: 7, scope: !2804)
!2818 = !DILocation(line: 150, column: 7, scope: !2804)
!2819 = !DILocation(line: 154, column: 7, scope: !2804)
!2820 = !DILocation(line: 159, column: 7, scope: !2804)
!2821 = !DILocation(line: 163, column: 7, scope: !2804)
!2822 = !DILocation(line: 170, column: 7, scope: !2804)
!2823 = !DILocation(line: 174, column: 7, scope: !2804)
!2824 = !DILocation(line: 176, column: 1, scope: !2747)
!2825 = distinct !DISubprogram(name: "version_etc_ar", scope: !569, file: !569, line: 183, type: !2826, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2750, !96, !96, !96, !2784}
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834}
!2829 = !DILocalVariable(name: "stream", arg: 1, scope: !2825, file: !569, line: 183, type: !2750)
!2830 = !DILocalVariable(name: "command_name", arg: 2, scope: !2825, file: !569, line: 184, type: !96)
!2831 = !DILocalVariable(name: "package", arg: 3, scope: !2825, file: !569, line: 184, type: !96)
!2832 = !DILocalVariable(name: "version", arg: 4, scope: !2825, file: !569, line: 185, type: !96)
!2833 = !DILocalVariable(name: "authors", arg: 5, scope: !2825, file: !569, line: 185, type: !2784)
!2834 = !DILocalVariable(name: "n_authors", scope: !2825, file: !569, line: 187, type: !93)
!2835 = !DILocation(line: 0, scope: !2825)
!2836 = !DILocation(line: 189, column: 8, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2825, file: !569, line: 189, column: 3)
!2838 = !DILocation(line: 189, scope: !2837)
!2839 = !DILocation(line: 189, column: 23, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2837, file: !569, line: 189, column: 3)
!2841 = !DILocation(line: 189, column: 3, scope: !2837)
!2842 = !DILocation(line: 189, column: 52, scope: !2840)
!2843 = distinct !{!2843, !2841, !2844, !880}
!2844 = !DILocation(line: 190, column: 5, scope: !2837)
!2845 = !DILocation(line: 191, column: 3, scope: !2825)
!2846 = !DILocation(line: 192, column: 1, scope: !2825)
!2847 = distinct !DISubprogram(name: "version_etc_va", scope: !569, file: !569, line: 199, type: !2848, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2860)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !2750, !96, !96, !96, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !368, line: 52, baseType: !2851)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !370, line: 12, baseType: !2852)
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !569, baseType: !2853)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858, !2859}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2853, file: !569, line: 192, baseType: !91, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2853, file: !569, line: 192, baseType: !91, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2853, file: !569, line: 192, baseType: !91, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2853, file: !569, line: 192, baseType: !70, size: 32, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2853, file: !569, line: 192, baseType: !70, size: 32, offset: 224)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866, !2867}
!2861 = !DILocalVariable(name: "stream", arg: 1, scope: !2847, file: !569, line: 199, type: !2750)
!2862 = !DILocalVariable(name: "command_name", arg: 2, scope: !2847, file: !569, line: 200, type: !96)
!2863 = !DILocalVariable(name: "package", arg: 3, scope: !2847, file: !569, line: 200, type: !96)
!2864 = !DILocalVariable(name: "version", arg: 4, scope: !2847, file: !569, line: 201, type: !96)
!2865 = !DILocalVariable(name: "authors", arg: 5, scope: !2847, file: !569, line: 201, type: !2850)
!2866 = !DILocalVariable(name: "n_authors", scope: !2847, file: !569, line: 203, type: !93)
!2867 = !DILocalVariable(name: "authtab", scope: !2847, file: !569, line: 204, type: !2868)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !45)
!2869 = distinct !DIAssignID()
!2870 = !DILocation(line: 0, scope: !2847)
!2871 = !DILocation(line: 204, column: 3, scope: !2847)
!2872 = !DILocation(line: 208, column: 35, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !569, line: 206, column: 3)
!2874 = distinct !DILexicalBlock(scope: !2847, file: !569, line: 206, column: 3)
!2875 = !DILocation(line: 208, column: 33, scope: !2873)
!2876 = !DILocation(line: 208, column: 67, scope: !2873)
!2877 = !DILocation(line: 206, column: 3, scope: !2874)
!2878 = !DILocation(line: 208, column: 14, scope: !2873)
!2879 = !DILocation(line: 0, scope: !2874)
!2880 = !DILocation(line: 211, column: 3, scope: !2847)
!2881 = !DILocation(line: 213, column: 1, scope: !2847)
!2882 = distinct !DISubprogram(name: "version_etc", scope: !569, file: !569, line: 230, type: !2883, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{null, !2750, !96, !96, !96, null}
!2885 = !{!2886, !2887, !2888, !2889, !2890}
!2886 = !DILocalVariable(name: "stream", arg: 1, scope: !2882, file: !569, line: 230, type: !2750)
!2887 = !DILocalVariable(name: "command_name", arg: 2, scope: !2882, file: !569, line: 231, type: !96)
!2888 = !DILocalVariable(name: "package", arg: 3, scope: !2882, file: !569, line: 231, type: !96)
!2889 = !DILocalVariable(name: "version", arg: 4, scope: !2882, file: !569, line: 232, type: !96)
!2890 = !DILocalVariable(name: "authors", scope: !2882, file: !569, line: 234, type: !2850)
!2891 = distinct !DIAssignID()
!2892 = !DILocation(line: 0, scope: !2882)
!2893 = !DILocation(line: 234, column: 3, scope: !2882)
!2894 = !DILocation(line: 235, column: 3, scope: !2882)
!2895 = !DILocation(line: 236, column: 3, scope: !2882)
!2896 = !DILocation(line: 237, column: 3, scope: !2882)
!2897 = !DILocation(line: 238, column: 1, scope: !2882)
!2898 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !569, file: !569, line: 241, type: !408, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692)
!2899 = !DILocation(line: 243, column: 3, scope: !2898)
!2900 = !DILocation(line: 248, column: 3, scope: !2898)
!2901 = !DILocation(line: 254, column: 3, scope: !2898)
!2902 = !DILocation(line: 259, column: 3, scope: !2898)
!2903 = !DILocation(line: 261, column: 1, scope: !2898)
!2904 = distinct !DISubprogram(name: "xnrealloc", scope: !2905, file: !2905, line: 147, type: !2906, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2908)
!2905 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!91, !91, !93, !93}
!2908 = !{!2909, !2910, !2911}
!2909 = !DILocalVariable(name: "p", arg: 1, scope: !2904, file: !2905, line: 147, type: !91)
!2910 = !DILocalVariable(name: "n", arg: 2, scope: !2904, file: !2905, line: 147, type: !93)
!2911 = !DILocalVariable(name: "s", arg: 3, scope: !2904, file: !2905, line: 147, type: !93)
!2912 = !DILocation(line: 0, scope: !2904)
!2913 = !DILocalVariable(name: "p", arg: 1, scope: !2914, file: !700, line: 83, type: !91)
!2914 = distinct !DISubprogram(name: "xreallocarray", scope: !700, file: !700, line: 83, type: !2906, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2915)
!2915 = !{!2913, !2916, !2917}
!2916 = !DILocalVariable(name: "n", arg: 2, scope: !2914, file: !700, line: 83, type: !93)
!2917 = !DILocalVariable(name: "s", arg: 3, scope: !2914, file: !700, line: 83, type: !93)
!2918 = !DILocation(line: 0, scope: !2914, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 149, column: 10, scope: !2904)
!2920 = !DILocation(line: 85, column: 25, scope: !2914, inlinedAt: !2919)
!2921 = !DILocalVariable(name: "p", arg: 1, scope: !2922, file: !700, line: 37, type: !91)
!2922 = distinct !DISubprogram(name: "check_nonnull", scope: !700, file: !700, line: 37, type: !2923, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!91, !91}
!2925 = !{!2921}
!2926 = !DILocation(line: 0, scope: !2922, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 85, column: 10, scope: !2914, inlinedAt: !2919)
!2928 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !2927)
!2929 = distinct !DILexicalBlock(scope: !2922, file: !700, line: 39, column: 7)
!2930 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !2927)
!2931 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !2927)
!2932 = !DILocation(line: 149, column: 3, scope: !2904)
!2933 = !DILocation(line: 0, scope: !2914)
!2934 = !DILocation(line: 85, column: 25, scope: !2914)
!2935 = !DILocation(line: 0, scope: !2922, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 85, column: 10, scope: !2914)
!2937 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !2936)
!2938 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !2936)
!2939 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !2936)
!2940 = !DILocation(line: 85, column: 3, scope: !2914)
!2941 = distinct !DISubprogram(name: "xmalloc", scope: !700, file: !700, line: 47, type: !2942, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!91, !93}
!2944 = !{!2945}
!2945 = !DILocalVariable(name: "s", arg: 1, scope: !2941, file: !700, line: 47, type: !93)
!2946 = !DILocation(line: 0, scope: !2941)
!2947 = !DILocation(line: 49, column: 25, scope: !2941)
!2948 = !DILocation(line: 0, scope: !2922, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 49, column: 10, scope: !2941)
!2950 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !2949)
!2951 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !2949)
!2952 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !2949)
!2953 = !DILocation(line: 49, column: 3, scope: !2941)
!2954 = !DISubprogram(name: "malloc", scope: !954, file: !954, line: 540, type: !2942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2955 = distinct !DISubprogram(name: "ximalloc", scope: !700, file: !700, line: 53, type: !2956, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!91, !719}
!2958 = !{!2959}
!2959 = !DILocalVariable(name: "s", arg: 1, scope: !2955, file: !700, line: 53, type: !719)
!2960 = !DILocation(line: 0, scope: !2955)
!2961 = !DILocalVariable(name: "s", arg: 1, scope: !2962, file: !2963, line: 55, type: !719)
!2962 = distinct !DISubprogram(name: "imalloc", scope: !2963, file: !2963, line: 55, type: !2956, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2964)
!2963 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2964 = !{!2961}
!2965 = !DILocation(line: 0, scope: !2962, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 55, column: 25, scope: !2955)
!2967 = !DILocation(line: 57, column: 26, scope: !2962, inlinedAt: !2966)
!2968 = !DILocation(line: 0, scope: !2922, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 55, column: 10, scope: !2955)
!2970 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !2969)
!2971 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !2969)
!2972 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !2969)
!2973 = !DILocation(line: 55, column: 3, scope: !2955)
!2974 = distinct !DISubprogram(name: "xcharalloc", scope: !700, file: !700, line: 59, type: !2975, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!90, !93}
!2977 = !{!2978}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2974, file: !700, line: 59, type: !93)
!2979 = !DILocation(line: 0, scope: !2974)
!2980 = !DILocation(line: 0, scope: !2941, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 61, column: 10, scope: !2974)
!2982 = !DILocation(line: 49, column: 25, scope: !2941, inlinedAt: !2981)
!2983 = !DILocation(line: 0, scope: !2922, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 49, column: 10, scope: !2941, inlinedAt: !2981)
!2985 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !2984)
!2986 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !2984)
!2987 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !2984)
!2988 = !DILocation(line: 61, column: 3, scope: !2974)
!2989 = distinct !DISubprogram(name: "xrealloc", scope: !700, file: !700, line: 68, type: !2990, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!91, !91, !93}
!2992 = !{!2993, !2994}
!2993 = !DILocalVariable(name: "p", arg: 1, scope: !2989, file: !700, line: 68, type: !91)
!2994 = !DILocalVariable(name: "s", arg: 2, scope: !2989, file: !700, line: 68, type: !93)
!2995 = !DILocation(line: 0, scope: !2989)
!2996 = !DILocalVariable(name: "ptr", arg: 1, scope: !2997, file: !2998, line: 2057, type: !91)
!2997 = distinct !DISubprogram(name: "rpl_realloc", scope: !2998, file: !2998, line: 2057, type: !2990, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2999)
!2998 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2999 = !{!2996, !3000}
!3000 = !DILocalVariable(name: "size", arg: 2, scope: !2997, file: !2998, line: 2057, type: !93)
!3001 = !DILocation(line: 0, scope: !2997, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 70, column: 25, scope: !2989)
!3003 = !DILocation(line: 2059, column: 24, scope: !2997, inlinedAt: !3002)
!3004 = !DILocation(line: 2059, column: 10, scope: !2997, inlinedAt: !3002)
!3005 = !DILocation(line: 0, scope: !2922, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 70, column: 10, scope: !2989)
!3007 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3006)
!3008 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3006)
!3009 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3006)
!3010 = !DILocation(line: 70, column: 3, scope: !2989)
!3011 = !DISubprogram(name: "realloc", scope: !954, file: !954, line: 551, type: !2990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3012 = distinct !DISubprogram(name: "xirealloc", scope: !700, file: !700, line: 74, type: !3013, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!91, !91, !719}
!3015 = !{!3016, !3017}
!3016 = !DILocalVariable(name: "p", arg: 1, scope: !3012, file: !700, line: 74, type: !91)
!3017 = !DILocalVariable(name: "s", arg: 2, scope: !3012, file: !700, line: 74, type: !719)
!3018 = !DILocation(line: 0, scope: !3012)
!3019 = !DILocalVariable(name: "p", arg: 1, scope: !3020, file: !2963, line: 66, type: !91)
!3020 = distinct !DISubprogram(name: "irealloc", scope: !2963, file: !2963, line: 66, type: !3013, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3021)
!3021 = !{!3019, !3022}
!3022 = !DILocalVariable(name: "s", arg: 2, scope: !3020, file: !2963, line: 66, type: !719)
!3023 = !DILocation(line: 0, scope: !3020, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 76, column: 25, scope: !3012)
!3025 = !DILocation(line: 0, scope: !2997, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 68, column: 26, scope: !3020, inlinedAt: !3024)
!3027 = !DILocation(line: 2059, column: 24, scope: !2997, inlinedAt: !3026)
!3028 = !DILocation(line: 2059, column: 10, scope: !2997, inlinedAt: !3026)
!3029 = !DILocation(line: 0, scope: !2922, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 76, column: 10, scope: !3012)
!3031 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3030)
!3032 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3030)
!3033 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3030)
!3034 = !DILocation(line: 76, column: 3, scope: !3012)
!3035 = distinct !DISubprogram(name: "xireallocarray", scope: !700, file: !700, line: 89, type: !3036, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!91, !91, !719, !719}
!3038 = !{!3039, !3040, !3041}
!3039 = !DILocalVariable(name: "p", arg: 1, scope: !3035, file: !700, line: 89, type: !91)
!3040 = !DILocalVariable(name: "n", arg: 2, scope: !3035, file: !700, line: 89, type: !719)
!3041 = !DILocalVariable(name: "s", arg: 3, scope: !3035, file: !700, line: 89, type: !719)
!3042 = !DILocation(line: 0, scope: !3035)
!3043 = !DILocalVariable(name: "p", arg: 1, scope: !3044, file: !2963, line: 98, type: !91)
!3044 = distinct !DISubprogram(name: "ireallocarray", scope: !2963, file: !2963, line: 98, type: !3036, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3045)
!3045 = !{!3043, !3046, !3047}
!3046 = !DILocalVariable(name: "n", arg: 2, scope: !3044, file: !2963, line: 98, type: !719)
!3047 = !DILocalVariable(name: "s", arg: 3, scope: !3044, file: !2963, line: 98, type: !719)
!3048 = !DILocation(line: 0, scope: !3044, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 91, column: 25, scope: !3035)
!3050 = !DILocation(line: 101, column: 13, scope: !3044, inlinedAt: !3049)
!3051 = !DILocation(line: 0, scope: !2922, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 91, column: 10, scope: !3035)
!3053 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3052)
!3054 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3052)
!3055 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3052)
!3056 = !DILocation(line: 91, column: 3, scope: !3035)
!3057 = distinct !DISubprogram(name: "xnmalloc", scope: !700, file: !700, line: 98, type: !3058, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!91, !93, !93}
!3060 = !{!3061, !3062}
!3061 = !DILocalVariable(name: "n", arg: 1, scope: !3057, file: !700, line: 98, type: !93)
!3062 = !DILocalVariable(name: "s", arg: 2, scope: !3057, file: !700, line: 98, type: !93)
!3063 = !DILocation(line: 0, scope: !3057)
!3064 = !DILocation(line: 0, scope: !2914, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 100, column: 10, scope: !3057)
!3066 = !DILocation(line: 85, column: 25, scope: !2914, inlinedAt: !3065)
!3067 = !DILocation(line: 0, scope: !2922, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 85, column: 10, scope: !2914, inlinedAt: !3065)
!3069 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3068)
!3070 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3068)
!3071 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3068)
!3072 = !DILocation(line: 100, column: 3, scope: !3057)
!3073 = distinct !DISubprogram(name: "xinmalloc", scope: !700, file: !700, line: 104, type: !3074, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!91, !719, !719}
!3076 = !{!3077, !3078}
!3077 = !DILocalVariable(name: "n", arg: 1, scope: !3073, file: !700, line: 104, type: !719)
!3078 = !DILocalVariable(name: "s", arg: 2, scope: !3073, file: !700, line: 104, type: !719)
!3079 = !DILocation(line: 0, scope: !3073)
!3080 = !DILocation(line: 0, scope: !3035, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 106, column: 10, scope: !3073)
!3082 = !DILocation(line: 0, scope: !3044, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 91, column: 25, scope: !3035, inlinedAt: !3081)
!3084 = !DILocation(line: 101, column: 13, scope: !3044, inlinedAt: !3083)
!3085 = !DILocation(line: 0, scope: !2922, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 91, column: 10, scope: !3035, inlinedAt: !3081)
!3087 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3086)
!3088 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3086)
!3089 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3086)
!3090 = !DILocation(line: 106, column: 3, scope: !3073)
!3091 = distinct !DISubprogram(name: "x2realloc", scope: !700, file: !700, line: 116, type: !3092, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!91, !91, !706}
!3094 = !{!3095, !3096}
!3095 = !DILocalVariable(name: "p", arg: 1, scope: !3091, file: !700, line: 116, type: !91)
!3096 = !DILocalVariable(name: "ps", arg: 2, scope: !3091, file: !700, line: 116, type: !706)
!3097 = !DILocation(line: 0, scope: !3091)
!3098 = !DILocation(line: 0, scope: !703, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 118, column: 10, scope: !3091)
!3100 = !DILocation(line: 178, column: 14, scope: !703, inlinedAt: !3099)
!3101 = !DILocation(line: 180, column: 9, scope: !3102, inlinedAt: !3099)
!3102 = distinct !DILexicalBlock(scope: !703, file: !700, line: 180, column: 7)
!3103 = !DILocation(line: 180, column: 7, scope: !703, inlinedAt: !3099)
!3104 = !DILocation(line: 182, column: 13, scope: !3105, inlinedAt: !3099)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !700, line: 182, column: 11)
!3106 = distinct !DILexicalBlock(scope: !3102, file: !700, line: 181, column: 5)
!3107 = !DILocation(line: 182, column: 11, scope: !3106, inlinedAt: !3099)
!3108 = !DILocation(line: 197, column: 11, scope: !3109, inlinedAt: !3099)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !700, line: 197, column: 11)
!3110 = distinct !DILexicalBlock(scope: !3102, file: !700, line: 195, column: 5)
!3111 = !DILocation(line: 197, column: 11, scope: !3110, inlinedAt: !3099)
!3112 = !DILocation(line: 198, column: 9, scope: !3109, inlinedAt: !3099)
!3113 = !DILocation(line: 0, scope: !2914, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 201, column: 7, scope: !703, inlinedAt: !3099)
!3115 = !DILocation(line: 85, column: 25, scope: !2914, inlinedAt: !3114)
!3116 = !DILocation(line: 0, scope: !2922, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 85, column: 10, scope: !2914, inlinedAt: !3114)
!3118 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3117)
!3119 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3117)
!3120 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3117)
!3121 = !DILocation(line: 202, column: 7, scope: !703, inlinedAt: !3099)
!3122 = !DILocation(line: 118, column: 3, scope: !3091)
!3123 = !DILocation(line: 0, scope: !703)
!3124 = !DILocation(line: 178, column: 14, scope: !703)
!3125 = !DILocation(line: 180, column: 9, scope: !3102)
!3126 = !DILocation(line: 180, column: 7, scope: !703)
!3127 = !DILocation(line: 182, column: 13, scope: !3105)
!3128 = !DILocation(line: 182, column: 11, scope: !3106)
!3129 = !DILocation(line: 190, column: 30, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3105, file: !700, line: 183, column: 9)
!3131 = !DILocation(line: 191, column: 16, scope: !3130)
!3132 = !DILocation(line: 191, column: 13, scope: !3130)
!3133 = !DILocation(line: 192, column: 9, scope: !3130)
!3134 = !DILocation(line: 197, column: 11, scope: !3109)
!3135 = !DILocation(line: 197, column: 11, scope: !3110)
!3136 = !DILocation(line: 198, column: 9, scope: !3109)
!3137 = !DILocation(line: 0, scope: !2914, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 201, column: 7, scope: !703)
!3139 = !DILocation(line: 85, column: 25, scope: !2914, inlinedAt: !3138)
!3140 = !DILocation(line: 0, scope: !2922, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 85, column: 10, scope: !2914, inlinedAt: !3138)
!3142 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3141)
!3143 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3141)
!3144 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3141)
!3145 = !DILocation(line: 202, column: 7, scope: !703)
!3146 = !DILocation(line: 203, column: 3, scope: !703)
!3147 = !DILocation(line: 0, scope: !715)
!3148 = !DILocation(line: 230, column: 14, scope: !715)
!3149 = !DILocation(line: 238, column: 7, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !715, file: !700, line: 238, column: 7)
!3151 = !DILocation(line: 238, column: 7, scope: !715)
!3152 = !DILocation(line: 240, column: 9, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !715, file: !700, line: 240, column: 7)
!3154 = !DILocation(line: 240, column: 18, scope: !3153)
!3155 = !DILocation(line: 253, column: 8, scope: !715)
!3156 = !DILocation(line: 256, column: 7, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !715, file: !700, line: 256, column: 7)
!3158 = !DILocation(line: 256, column: 7, scope: !715)
!3159 = !DILocation(line: 258, column: 27, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3157, file: !700, line: 257, column: 5)
!3161 = !DILocation(line: 259, column: 32, scope: !3160)
!3162 = !DILocation(line: 260, column: 5, scope: !3160)
!3163 = !DILocation(line: 262, column: 9, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !715, file: !700, line: 262, column: 7)
!3165 = !DILocation(line: 262, column: 7, scope: !715)
!3166 = !DILocation(line: 263, column: 9, scope: !3164)
!3167 = !DILocation(line: 263, column: 5, scope: !3164)
!3168 = !DILocation(line: 264, column: 9, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !715, file: !700, line: 264, column: 7)
!3170 = !DILocation(line: 264, column: 14, scope: !3169)
!3171 = !DILocation(line: 265, column: 7, scope: !3169)
!3172 = !DILocation(line: 265, column: 11, scope: !3169)
!3173 = !DILocation(line: 266, column: 11, scope: !3169)
!3174 = !DILocation(line: 267, column: 14, scope: !3169)
!3175 = !DILocation(line: 264, column: 7, scope: !715)
!3176 = !DILocation(line: 268, column: 5, scope: !3169)
!3177 = !DILocation(line: 0, scope: !2989, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 269, column: 8, scope: !715)
!3179 = !DILocation(line: 0, scope: !2997, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 70, column: 25, scope: !2989, inlinedAt: !3178)
!3181 = !DILocation(line: 2059, column: 24, scope: !2997, inlinedAt: !3180)
!3182 = !DILocation(line: 2059, column: 10, scope: !2997, inlinedAt: !3180)
!3183 = !DILocation(line: 0, scope: !2922, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 70, column: 10, scope: !2989, inlinedAt: !3178)
!3185 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3184)
!3186 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3184)
!3187 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3184)
!3188 = !DILocation(line: 270, column: 7, scope: !715)
!3189 = !DILocation(line: 271, column: 3, scope: !715)
!3190 = distinct !DISubprogram(name: "xzalloc", scope: !700, file: !700, line: 279, type: !2942, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3191)
!3191 = !{!3192}
!3192 = !DILocalVariable(name: "s", arg: 1, scope: !3190, file: !700, line: 279, type: !93)
!3193 = !DILocation(line: 0, scope: !3190)
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3195, file: !700, line: 294, type: !93)
!3195 = distinct !DISubprogram(name: "xcalloc", scope: !700, file: !700, line: 294, type: !3058, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3196)
!3196 = !{!3194, !3197}
!3197 = !DILocalVariable(name: "s", arg: 2, scope: !3195, file: !700, line: 294, type: !93)
!3198 = !DILocation(line: 0, scope: !3195, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 281, column: 10, scope: !3190)
!3200 = !DILocation(line: 296, column: 25, scope: !3195, inlinedAt: !3199)
!3201 = !DILocation(line: 0, scope: !2922, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 296, column: 10, scope: !3195, inlinedAt: !3199)
!3203 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3202)
!3204 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3202)
!3205 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3202)
!3206 = !DILocation(line: 281, column: 3, scope: !3190)
!3207 = !DISubprogram(name: "calloc", scope: !954, file: !954, line: 543, type: !3058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3208 = !DILocation(line: 0, scope: !3195)
!3209 = !DILocation(line: 296, column: 25, scope: !3195)
!3210 = !DILocation(line: 0, scope: !2922, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 296, column: 10, scope: !3195)
!3212 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3211)
!3213 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3211)
!3214 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3211)
!3215 = !DILocation(line: 296, column: 3, scope: !3195)
!3216 = distinct !DISubprogram(name: "xizalloc", scope: !700, file: !700, line: 285, type: !2956, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3217)
!3217 = !{!3218}
!3218 = !DILocalVariable(name: "s", arg: 1, scope: !3216, file: !700, line: 285, type: !719)
!3219 = !DILocation(line: 0, scope: !3216)
!3220 = !DILocalVariable(name: "n", arg: 1, scope: !3221, file: !700, line: 300, type: !719)
!3221 = distinct !DISubprogram(name: "xicalloc", scope: !700, file: !700, line: 300, type: !3074, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3222)
!3222 = !{!3220, !3223}
!3223 = !DILocalVariable(name: "s", arg: 2, scope: !3221, file: !700, line: 300, type: !719)
!3224 = !DILocation(line: 0, scope: !3221, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 287, column: 10, scope: !3216)
!3226 = !DILocalVariable(name: "n", arg: 1, scope: !3227, file: !2963, line: 77, type: !719)
!3227 = distinct !DISubprogram(name: "icalloc", scope: !2963, file: !2963, line: 77, type: !3074, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3228)
!3228 = !{!3226, !3229}
!3229 = !DILocalVariable(name: "s", arg: 2, scope: !3227, file: !2963, line: 77, type: !719)
!3230 = !DILocation(line: 0, scope: !3227, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 302, column: 25, scope: !3221, inlinedAt: !3225)
!3232 = !DILocation(line: 91, column: 10, scope: !3227, inlinedAt: !3231)
!3233 = !DILocation(line: 0, scope: !2922, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 302, column: 10, scope: !3221, inlinedAt: !3225)
!3235 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3234)
!3236 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3234)
!3237 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3234)
!3238 = !DILocation(line: 287, column: 3, scope: !3216)
!3239 = !DILocation(line: 0, scope: !3221)
!3240 = !DILocation(line: 0, scope: !3227, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 302, column: 25, scope: !3221)
!3242 = !DILocation(line: 91, column: 10, scope: !3227, inlinedAt: !3241)
!3243 = !DILocation(line: 0, scope: !2922, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 302, column: 10, scope: !3221)
!3245 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3244)
!3246 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3244)
!3247 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3244)
!3248 = !DILocation(line: 302, column: 3, scope: !3221)
!3249 = distinct !DISubprogram(name: "xmemdup", scope: !700, file: !700, line: 310, type: !3250, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!91, !978, !93}
!3252 = !{!3253, !3254}
!3253 = !DILocalVariable(name: "p", arg: 1, scope: !3249, file: !700, line: 310, type: !978)
!3254 = !DILocalVariable(name: "s", arg: 2, scope: !3249, file: !700, line: 310, type: !93)
!3255 = !DILocation(line: 0, scope: !3249)
!3256 = !DILocation(line: 0, scope: !2941, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 312, column: 18, scope: !3249)
!3258 = !DILocation(line: 49, column: 25, scope: !2941, inlinedAt: !3257)
!3259 = !DILocation(line: 0, scope: !2922, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 49, column: 10, scope: !2941, inlinedAt: !3257)
!3261 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3260)
!3262 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3260)
!3263 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3260)
!3264 = !DILocalVariable(name: "__dest", arg: 1, scope: !3265, file: !1396, line: 26, type: !3268)
!3265 = distinct !DISubprogram(name: "memcpy", scope: !1396, file: !1396, line: 26, type: !3266, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3269)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!91, !3268, !977, !93}
!3268 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3269 = !{!3264, !3270, !3271}
!3270 = !DILocalVariable(name: "__src", arg: 2, scope: !3265, file: !1396, line: 26, type: !977)
!3271 = !DILocalVariable(name: "__len", arg: 3, scope: !3265, file: !1396, line: 26, type: !93)
!3272 = !DILocation(line: 0, scope: !3265, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 312, column: 10, scope: !3249)
!3274 = !DILocation(line: 29, column: 10, scope: !3265, inlinedAt: !3273)
!3275 = !DILocation(line: 312, column: 3, scope: !3249)
!3276 = distinct !DISubprogram(name: "ximemdup", scope: !700, file: !700, line: 316, type: !3277, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!91, !978, !719}
!3279 = !{!3280, !3281}
!3280 = !DILocalVariable(name: "p", arg: 1, scope: !3276, file: !700, line: 316, type: !978)
!3281 = !DILocalVariable(name: "s", arg: 2, scope: !3276, file: !700, line: 316, type: !719)
!3282 = !DILocation(line: 0, scope: !3276)
!3283 = !DILocation(line: 0, scope: !2955, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 318, column: 18, scope: !3276)
!3285 = !DILocation(line: 0, scope: !2962, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 55, column: 25, scope: !2955, inlinedAt: !3284)
!3287 = !DILocation(line: 57, column: 26, scope: !2962, inlinedAt: !3286)
!3288 = !DILocation(line: 0, scope: !2922, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 55, column: 10, scope: !2955, inlinedAt: !3284)
!3290 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3289)
!3291 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3289)
!3292 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3289)
!3293 = !DILocation(line: 0, scope: !3265, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 318, column: 10, scope: !3276)
!3295 = !DILocation(line: 29, column: 10, scope: !3265, inlinedAt: !3294)
!3296 = !DILocation(line: 318, column: 3, scope: !3276)
!3297 = distinct !DISubprogram(name: "ximemdup0", scope: !700, file: !700, line: 325, type: !3298, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!90, !978, !719}
!3300 = !{!3301, !3302, !3303}
!3301 = !DILocalVariable(name: "p", arg: 1, scope: !3297, file: !700, line: 325, type: !978)
!3302 = !DILocalVariable(name: "s", arg: 2, scope: !3297, file: !700, line: 325, type: !719)
!3303 = !DILocalVariable(name: "result", scope: !3297, file: !700, line: 327, type: !90)
!3304 = !DILocation(line: 0, scope: !3297)
!3305 = !DILocation(line: 327, column: 30, scope: !3297)
!3306 = !DILocation(line: 0, scope: !2955, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 327, column: 18, scope: !3297)
!3308 = !DILocation(line: 0, scope: !2962, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 55, column: 25, scope: !2955, inlinedAt: !3307)
!3310 = !DILocation(line: 57, column: 26, scope: !2962, inlinedAt: !3309)
!3311 = !DILocation(line: 0, scope: !2922, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 55, column: 10, scope: !2955, inlinedAt: !3307)
!3313 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3312)
!3314 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3312)
!3315 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3312)
!3316 = !DILocation(line: 328, column: 3, scope: !3297)
!3317 = !DILocation(line: 328, column: 13, scope: !3297)
!3318 = !DILocation(line: 0, scope: !3265, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 329, column: 10, scope: !3297)
!3320 = !DILocation(line: 29, column: 10, scope: !3265, inlinedAt: !3319)
!3321 = !DILocation(line: 329, column: 3, scope: !3297)
!3322 = distinct !DISubprogram(name: "xstrdup", scope: !700, file: !700, line: 335, type: !956, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3323)
!3323 = !{!3324}
!3324 = !DILocalVariable(name: "string", arg: 1, scope: !3322, file: !700, line: 335, type: !96)
!3325 = !DILocation(line: 0, scope: !3322)
!3326 = !DILocation(line: 337, column: 27, scope: !3322)
!3327 = !DILocation(line: 337, column: 43, scope: !3322)
!3328 = !DILocation(line: 0, scope: !3249, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 337, column: 10, scope: !3322)
!3330 = !DILocation(line: 0, scope: !2941, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 312, column: 18, scope: !3249, inlinedAt: !3329)
!3332 = !DILocation(line: 49, column: 25, scope: !2941, inlinedAt: !3331)
!3333 = !DILocation(line: 0, scope: !2922, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 49, column: 10, scope: !2941, inlinedAt: !3331)
!3335 = !DILocation(line: 39, column: 8, scope: !2929, inlinedAt: !3334)
!3336 = !DILocation(line: 39, column: 7, scope: !2922, inlinedAt: !3334)
!3337 = !DILocation(line: 40, column: 5, scope: !2929, inlinedAt: !3334)
!3338 = !DILocation(line: 0, scope: !3265, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 312, column: 10, scope: !3249, inlinedAt: !3329)
!3340 = !DILocation(line: 29, column: 10, scope: !3265, inlinedAt: !3339)
!3341 = !DILocation(line: 337, column: 3, scope: !3322)
!3342 = distinct !DISubprogram(name: "xalloc_die", scope: !662, file: !662, line: 32, type: !408, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3343)
!3343 = !{!3344}
!3344 = !DILocalVariable(name: "__errstatus", scope: !3345, file: !662, line: 34, type: !3346)
!3345 = distinct !DILexicalBlock(scope: !3342, file: !662, line: 34, column: 3)
!3346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3347 = !DILocation(line: 34, column: 3, scope: !3345)
!3348 = !DILocation(line: 0, scope: !3345)
!3349 = !DILocation(line: 40, column: 3, scope: !3342)
!3350 = distinct !DISubprogram(name: "close_stream", scope: !737, file: !737, line: 55, type: !3351, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3387)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!70, !3353}
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3355)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3355, file: !150, line: 51, baseType: !70, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3355, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3355, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3355, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3355, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3355, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3355, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3355, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3355, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3355, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3355, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3355, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3355, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3355, file: !150, line: 70, baseType: !3371, size: 64, offset: 832)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3355, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3355, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3355, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3355, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3355, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3355, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3355, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3355, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3355, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3355, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3355, file: !150, line: 93, baseType: !3371, size: 64, offset: 1344)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3355, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3355, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3355, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3355, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3387 = !{!3388, !3389, !3391, !3392}
!3388 = !DILocalVariable(name: "stream", arg: 1, scope: !3350, file: !737, line: 55, type: !3353)
!3389 = !DILocalVariable(name: "some_pending", scope: !3350, file: !737, line: 57, type: !3390)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!3391 = !DILocalVariable(name: "prev_fail", scope: !3350, file: !737, line: 58, type: !3390)
!3392 = !DILocalVariable(name: "fclose_fail", scope: !3350, file: !737, line: 59, type: !3390)
!3393 = !DILocation(line: 0, scope: !3350)
!3394 = !DILocation(line: 57, column: 30, scope: !3350)
!3395 = !DILocalVariable(name: "__stream", arg: 1, scope: !3396, file: !1239, line: 135, type: !3353)
!3396 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1239, file: !1239, line: 135, type: !3351, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3397)
!3397 = !{!3395}
!3398 = !DILocation(line: 0, scope: !3396, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 58, column: 27, scope: !3350)
!3400 = !DILocation(line: 137, column: 10, scope: !3396, inlinedAt: !3399)
!3401 = !{!1248, !834, i64 0}
!3402 = !DILocation(line: 58, column: 43, scope: !3350)
!3403 = !DILocation(line: 59, column: 29, scope: !3350)
!3404 = !DILocation(line: 59, column: 45, scope: !3350)
!3405 = !DILocation(line: 69, column: 17, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3350, file: !737, line: 69, column: 7)
!3407 = !DILocation(line: 57, column: 50, scope: !3350)
!3408 = !DILocation(line: 69, column: 33, scope: !3406)
!3409 = !DILocation(line: 69, column: 53, scope: !3406)
!3410 = !DILocation(line: 69, column: 59, scope: !3406)
!3411 = !DILocation(line: 69, column: 7, scope: !3350)
!3412 = !DILocation(line: 71, column: 11, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3406, file: !737, line: 70, column: 5)
!3414 = !DILocation(line: 72, column: 9, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3413, file: !737, line: 71, column: 11)
!3416 = !DILocation(line: 72, column: 15, scope: !3415)
!3417 = !DILocation(line: 77, column: 1, scope: !3350)
!3418 = !DISubprogram(name: "__fpending", scope: !3419, file: !3419, line: 75, type: !3420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3419 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!93, !3353}
!3422 = distinct !DISubprogram(name: "rpl_fclose", scope: !739, file: !739, line: 58, type: !3423, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3459)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!70, !3425}
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3427, file: !150, line: 51, baseType: !70, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3427, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3427, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3427, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3427, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3427, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3427, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3427, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3427, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3427, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3427, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3427, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3427, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3427, file: !150, line: 70, baseType: !3443, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3427, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3427, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3427, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3427, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3427, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3427, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3427, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3427, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3427, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3427, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3427, file: !150, line: 93, baseType: !3443, size: 64, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3427, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3427, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3427, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3427, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DILocalVariable(name: "fp", arg: 1, scope: !3422, file: !739, line: 58, type: !3425)
!3461 = !DILocalVariable(name: "saved_errno", scope: !3422, file: !739, line: 60, type: !70)
!3462 = !DILocalVariable(name: "fd", scope: !3422, file: !739, line: 63, type: !70)
!3463 = !DILocalVariable(name: "result", scope: !3422, file: !739, line: 74, type: !70)
!3464 = !DILocation(line: 0, scope: !3422)
!3465 = !DILocation(line: 63, column: 12, scope: !3422)
!3466 = !DILocation(line: 64, column: 10, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3422, file: !739, line: 64, column: 7)
!3468 = !DILocation(line: 64, column: 7, scope: !3422)
!3469 = !DILocation(line: 65, column: 12, scope: !3467)
!3470 = !DILocation(line: 65, column: 5, scope: !3467)
!3471 = !DILocation(line: 70, column: 9, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3422, file: !739, line: 70, column: 7)
!3473 = !DILocation(line: 70, column: 23, scope: !3472)
!3474 = !DILocation(line: 70, column: 33, scope: !3472)
!3475 = !DILocation(line: 70, column: 26, scope: !3472)
!3476 = !DILocation(line: 70, column: 59, scope: !3472)
!3477 = !DILocation(line: 71, column: 7, scope: !3472)
!3478 = !DILocation(line: 71, column: 10, scope: !3472)
!3479 = !DILocation(line: 70, column: 7, scope: !3422)
!3480 = !DILocation(line: 100, column: 12, scope: !3422)
!3481 = !DILocation(line: 105, column: 7, scope: !3422)
!3482 = !DILocation(line: 72, column: 19, scope: !3472)
!3483 = !DILocation(line: 105, column: 19, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3422, file: !739, line: 105, column: 7)
!3485 = !DILocation(line: 107, column: 13, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3484, file: !739, line: 106, column: 5)
!3487 = !DILocation(line: 109, column: 5, scope: !3486)
!3488 = !DILocation(line: 112, column: 1, scope: !3422)
!3489 = !DISubprogram(name: "fileno", scope: !368, file: !368, line: 809, type: !3423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3490 = !DISubprogram(name: "fclose", scope: !368, file: !368, line: 178, type: !3423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3491 = !DISubprogram(name: "__freading", scope: !3419, file: !3419, line: 51, type: !3423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3492 = !DISubprogram(name: "lseek", scope: !1056, file: !1056, line: 339, type: !3493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!172, !70, !172, !70}
!3495 = distinct !DISubprogram(name: "rpl_fflush", scope: !741, file: !741, line: 130, type: !3496, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3532)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!70, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3500, file: !150, line: 51, baseType: !70, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3500, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3500, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3500, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3500, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3500, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3500, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3500, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3500, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3500, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3500, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3500, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3500, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3500, file: !150, line: 70, baseType: !3516, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3500, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3500, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3500, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3500, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3500, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3500, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3500, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3500, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3500, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3500, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3500, file: !150, line: 93, baseType: !3516, size: 64, offset: 1344)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3500, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3500, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3500, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3500, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3532 = !{!3533}
!3533 = !DILocalVariable(name: "stream", arg: 1, scope: !3495, file: !741, line: 130, type: !3498)
!3534 = !DILocation(line: 0, scope: !3495)
!3535 = !DILocation(line: 151, column: 14, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3495, file: !741, line: 151, column: 7)
!3537 = !DILocation(line: 151, column: 22, scope: !3536)
!3538 = !DILocation(line: 151, column: 27, scope: !3536)
!3539 = !DILocation(line: 151, column: 7, scope: !3495)
!3540 = !DILocation(line: 152, column: 12, scope: !3536)
!3541 = !DILocation(line: 152, column: 5, scope: !3536)
!3542 = !DILocalVariable(name: "fp", arg: 1, scope: !3543, file: !741, line: 42, type: !3498)
!3543 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !741, file: !741, line: 42, type: !3544, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !3498}
!3546 = !{!3542}
!3547 = !DILocation(line: 0, scope: !3543, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 157, column: 3, scope: !3495)
!3549 = !DILocation(line: 44, column: 12, scope: !3550, inlinedAt: !3548)
!3550 = distinct !DILexicalBlock(scope: !3543, file: !741, line: 44, column: 7)
!3551 = !DILocation(line: 44, column: 19, scope: !3550, inlinedAt: !3548)
!3552 = !DILocation(line: 44, column: 7, scope: !3543, inlinedAt: !3548)
!3553 = !DILocation(line: 46, column: 5, scope: !3550, inlinedAt: !3548)
!3554 = !DILocation(line: 159, column: 10, scope: !3495)
!3555 = !DILocation(line: 159, column: 3, scope: !3495)
!3556 = !DILocation(line: 236, column: 1, scope: !3495)
!3557 = !DISubprogram(name: "fflush", scope: !368, file: !368, line: 230, type: !3496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3558 = distinct !DISubprogram(name: "rpl_fseeko", scope: !743, file: !743, line: 28, type: !3559, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3596)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!70, !3561, !3595, !70}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3563)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3563, file: !150, line: 51, baseType: !70, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3563, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3563, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3563, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3563, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3563, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3563, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3563, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3563, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3563, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3563, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3563, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3563, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3563, file: !150, line: 70, baseType: !3579, size: 64, offset: 832)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3563, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3563, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3563, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3563, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3563, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3563, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3563, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3563, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3563, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3563, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3563, file: !150, line: 93, baseType: !3579, size: 64, offset: 1344)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3563, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3563, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3563, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3563, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !368, line: 63, baseType: !172)
!3596 = !{!3597, !3598, !3599, !3600}
!3597 = !DILocalVariable(name: "fp", arg: 1, scope: !3558, file: !743, line: 28, type: !3561)
!3598 = !DILocalVariable(name: "offset", arg: 2, scope: !3558, file: !743, line: 28, type: !3595)
!3599 = !DILocalVariable(name: "whence", arg: 3, scope: !3558, file: !743, line: 28, type: !70)
!3600 = !DILocalVariable(name: "pos", scope: !3601, file: !743, line: 123, type: !3595)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !743, line: 119, column: 5)
!3602 = distinct !DILexicalBlock(scope: !3558, file: !743, line: 55, column: 7)
!3603 = !DILocation(line: 0, scope: !3558)
!3604 = !DILocation(line: 55, column: 12, scope: !3602)
!3605 = !{!1248, !773, i64 16}
!3606 = !DILocation(line: 55, column: 33, scope: !3602)
!3607 = !{!1248, !773, i64 8}
!3608 = !DILocation(line: 55, column: 25, scope: !3602)
!3609 = !DILocation(line: 56, column: 7, scope: !3602)
!3610 = !DILocation(line: 56, column: 15, scope: !3602)
!3611 = !DILocation(line: 56, column: 37, scope: !3602)
!3612 = !{!1248, !773, i64 32}
!3613 = !DILocation(line: 56, column: 29, scope: !3602)
!3614 = !DILocation(line: 57, column: 7, scope: !3602)
!3615 = !DILocation(line: 57, column: 15, scope: !3602)
!3616 = !{!1248, !773, i64 72}
!3617 = !DILocation(line: 57, column: 29, scope: !3602)
!3618 = !DILocation(line: 55, column: 7, scope: !3558)
!3619 = !DILocation(line: 123, column: 26, scope: !3601)
!3620 = !DILocation(line: 123, column: 19, scope: !3601)
!3621 = !DILocation(line: 0, scope: !3601)
!3622 = !DILocation(line: 124, column: 15, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3601, file: !743, line: 124, column: 11)
!3624 = !DILocation(line: 124, column: 11, scope: !3601)
!3625 = !DILocation(line: 135, column: 19, scope: !3601)
!3626 = !DILocation(line: 136, column: 12, scope: !3601)
!3627 = !DILocation(line: 136, column: 20, scope: !3601)
!3628 = !{!1248, !1249, i64 144}
!3629 = !DILocation(line: 167, column: 7, scope: !3601)
!3630 = !DILocation(line: 169, column: 10, scope: !3558)
!3631 = !DILocation(line: 169, column: 3, scope: !3558)
!3632 = !DILocation(line: 170, column: 1, scope: !3558)
!3633 = !DISubprogram(name: "fseeko", scope: !368, file: !368, line: 736, type: !3634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!70, !3561, !172, !70}
!3636 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !669, file: !669, line: 100, type: !3637, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3640)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!93, !1414, !96, !93, !3639}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!3640 = !{!3641, !3642, !3643, !3644, !3645}
!3641 = !DILocalVariable(name: "pwc", arg: 1, scope: !3636, file: !669, line: 100, type: !1414)
!3642 = !DILocalVariable(name: "s", arg: 2, scope: !3636, file: !669, line: 100, type: !96)
!3643 = !DILocalVariable(name: "n", arg: 3, scope: !3636, file: !669, line: 100, type: !93)
!3644 = !DILocalVariable(name: "ps", arg: 4, scope: !3636, file: !669, line: 100, type: !3639)
!3645 = !DILocalVariable(name: "ret", scope: !3636, file: !669, line: 130, type: !93)
!3646 = !DILocation(line: 0, scope: !3636)
!3647 = !DILocation(line: 105, column: 9, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3636, file: !669, line: 105, column: 7)
!3649 = !DILocation(line: 105, column: 7, scope: !3636)
!3650 = !DILocation(line: 117, column: 10, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3636, file: !669, line: 117, column: 7)
!3652 = !DILocation(line: 117, column: 7, scope: !3636)
!3653 = !DILocation(line: 130, column: 16, scope: !3636)
!3654 = !DILocation(line: 135, column: 11, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3636, file: !669, line: 135, column: 7)
!3656 = !DILocation(line: 135, column: 25, scope: !3655)
!3657 = !DILocation(line: 135, column: 30, scope: !3655)
!3658 = !DILocation(line: 135, column: 7, scope: !3636)
!3659 = !DILocalVariable(name: "ps", arg: 1, scope: !3660, file: !1387, line: 1135, type: !3639)
!3660 = distinct !DISubprogram(name: "mbszero", scope: !1387, file: !1387, line: 1135, type: !3661, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !3639}
!3663 = !{!3659}
!3664 = !DILocation(line: 0, scope: !3660, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 137, column: 5, scope: !3655)
!3666 = !DILocalVariable(name: "__dest", arg: 1, scope: !3667, file: !1396, line: 57, type: !91)
!3667 = distinct !DISubprogram(name: "memset", scope: !1396, file: !1396, line: 57, type: !1397, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3668)
!3668 = !{!3666, !3669, !3670}
!3669 = !DILocalVariable(name: "__ch", arg: 2, scope: !3667, file: !1396, line: 57, type: !70)
!3670 = !DILocalVariable(name: "__len", arg: 3, scope: !3667, file: !1396, line: 57, type: !93)
!3671 = !DILocation(line: 0, scope: !3667, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 1137, column: 3, scope: !3660, inlinedAt: !3665)
!3673 = !DILocation(line: 59, column: 10, scope: !3667, inlinedAt: !3672)
!3674 = !DILocation(line: 137, column: 5, scope: !3655)
!3675 = !DILocation(line: 138, column: 11, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3636, file: !669, line: 138, column: 7)
!3677 = !DILocation(line: 138, column: 7, scope: !3636)
!3678 = !DILocation(line: 139, column: 5, scope: !3676)
!3679 = !DILocation(line: 143, column: 26, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3636, file: !669, line: 143, column: 7)
!3681 = !DILocation(line: 143, column: 41, scope: !3680)
!3682 = !DILocation(line: 143, column: 7, scope: !3636)
!3683 = !DILocation(line: 145, column: 15, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !669, line: 145, column: 11)
!3685 = distinct !DILexicalBlock(scope: !3680, file: !669, line: 144, column: 5)
!3686 = !DILocation(line: 145, column: 11, scope: !3685)
!3687 = !DILocation(line: 146, column: 32, scope: !3684)
!3688 = !DILocation(line: 146, column: 16, scope: !3684)
!3689 = !DILocation(line: 146, column: 14, scope: !3684)
!3690 = !DILocation(line: 146, column: 9, scope: !3684)
!3691 = !DILocation(line: 286, column: 1, scope: !3636)
!3692 = !DISubprogram(name: "mbsinit", scope: !3693, file: !3693, line: 293, type: !3694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3693 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!70, !3696}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!3698 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !745, file: !745, line: 27, type: !2906, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3699)
!3699 = !{!3700, !3701, !3702, !3703}
!3700 = !DILocalVariable(name: "ptr", arg: 1, scope: !3698, file: !745, line: 27, type: !91)
!3701 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3698, file: !745, line: 27, type: !93)
!3702 = !DILocalVariable(name: "size", arg: 3, scope: !3698, file: !745, line: 27, type: !93)
!3703 = !DILocalVariable(name: "nbytes", scope: !3698, file: !745, line: 29, type: !93)
!3704 = !DILocation(line: 0, scope: !3698)
!3705 = !DILocation(line: 30, column: 7, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3698, file: !745, line: 30, column: 7)
!3707 = !DILocation(line: 30, column: 7, scope: !3698)
!3708 = !DILocation(line: 32, column: 7, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3706, file: !745, line: 31, column: 5)
!3710 = !DILocation(line: 32, column: 13, scope: !3709)
!3711 = !DILocation(line: 33, column: 7, scope: !3709)
!3712 = !DILocalVariable(name: "ptr", arg: 1, scope: !3713, file: !2998, line: 2057, type: !91)
!3713 = distinct !DISubprogram(name: "rpl_realloc", scope: !2998, file: !2998, line: 2057, type: !2990, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3714)
!3714 = !{!3712, !3715}
!3715 = !DILocalVariable(name: "size", arg: 2, scope: !3713, file: !2998, line: 2057, type: !93)
!3716 = !DILocation(line: 0, scope: !3713, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 37, column: 10, scope: !3698)
!3718 = !DILocation(line: 2059, column: 24, scope: !3713, inlinedAt: !3717)
!3719 = !DILocation(line: 2059, column: 10, scope: !3713, inlinedAt: !3717)
!3720 = !DILocation(line: 37, column: 3, scope: !3698)
!3721 = !DILocation(line: 38, column: 1, scope: !3698)
!3722 = distinct !DISubprogram(name: "hard_locale", scope: !687, file: !687, line: 28, type: !3723, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!121, !70}
!3725 = !{!3726, !3727}
!3726 = !DILocalVariable(name: "category", arg: 1, scope: !3722, file: !687, line: 28, type: !70)
!3727 = !DILocalVariable(name: "locale", scope: !3722, file: !687, line: 30, type: !3728)
!3728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3729)
!3729 = !{!3730}
!3730 = !DISubrange(count: 257)
!3731 = distinct !DIAssignID()
!3732 = !DILocation(line: 0, scope: !3722)
!3733 = !DILocation(line: 30, column: 3, scope: !3722)
!3734 = !DILocation(line: 32, column: 7, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3722, file: !687, line: 32, column: 7)
!3736 = !DILocation(line: 32, column: 7, scope: !3722)
!3737 = !DILocalVariable(name: "__s1", arg: 1, scope: !3738, file: !846, line: 1359, type: !96)
!3738 = distinct !DISubprogram(name: "streq", scope: !846, file: !846, line: 1359, type: !847, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3739)
!3739 = !{!3737, !3740}
!3740 = !DILocalVariable(name: "__s2", arg: 2, scope: !3738, file: !846, line: 1359, type: !96)
!3741 = !DILocation(line: 0, scope: !3738, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 35, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3722, file: !687, line: 35, column: 7)
!3744 = !DILocation(line: 1361, column: 11, scope: !3738, inlinedAt: !3742)
!3745 = !DILocation(line: 1361, column: 10, scope: !3738, inlinedAt: !3742)
!3746 = !DILocation(line: 35, column: 29, scope: !3743)
!3747 = !DILocation(line: 0, scope: !3738, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 35, column: 32, scope: !3743)
!3749 = !DILocation(line: 1361, column: 11, scope: !3738, inlinedAt: !3748)
!3750 = !DILocation(line: 1361, column: 10, scope: !3738, inlinedAt: !3748)
!3751 = !DILocation(line: 35, column: 7, scope: !3722)
!3752 = !DILocation(line: 46, column: 3, scope: !3722)
!3753 = !DILocation(line: 47, column: 1, scope: !3722)
!3754 = distinct !DISubprogram(name: "setlocale_null_r", scope: !749, file: !749, line: 154, type: !3755, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!70, !70, !90, !93}
!3757 = !{!3758, !3759, !3760}
!3758 = !DILocalVariable(name: "category", arg: 1, scope: !3754, file: !749, line: 154, type: !70)
!3759 = !DILocalVariable(name: "buf", arg: 2, scope: !3754, file: !749, line: 154, type: !90)
!3760 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3754, file: !749, line: 154, type: !93)
!3761 = !DILocation(line: 0, scope: !3754)
!3762 = !DILocation(line: 159, column: 10, scope: !3754)
!3763 = !DILocation(line: 159, column: 3, scope: !3754)
!3764 = distinct !DISubprogram(name: "setlocale_null", scope: !749, file: !749, line: 186, type: !3765, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!96, !70}
!3767 = !{!3768}
!3768 = !DILocalVariable(name: "category", arg: 1, scope: !3764, file: !749, line: 186, type: !70)
!3769 = !DILocation(line: 0, scope: !3764)
!3770 = !DILocation(line: 189, column: 10, scope: !3764)
!3771 = !DILocation(line: 189, column: 3, scope: !3764)
!3772 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !751, file: !751, line: 35, type: !3765, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3773)
!3773 = !{!3774, !3775}
!3774 = !DILocalVariable(name: "category", arg: 1, scope: !3772, file: !751, line: 35, type: !70)
!3775 = !DILocalVariable(name: "result", scope: !3772, file: !751, line: 37, type: !96)
!3776 = !DILocation(line: 0, scope: !3772)
!3777 = !DILocation(line: 37, column: 24, scope: !3772)
!3778 = !DILocation(line: 62, column: 3, scope: !3772)
!3779 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !751, file: !751, line: 66, type: !3755, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785}
!3781 = !DILocalVariable(name: "category", arg: 1, scope: !3779, file: !751, line: 66, type: !70)
!3782 = !DILocalVariable(name: "buf", arg: 2, scope: !3779, file: !751, line: 66, type: !90)
!3783 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3779, file: !751, line: 66, type: !93)
!3784 = !DILocalVariable(name: "result", scope: !3779, file: !751, line: 111, type: !96)
!3785 = !DILocalVariable(name: "length", scope: !3786, file: !751, line: 125, type: !93)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !751, line: 124, column: 5)
!3787 = distinct !DILexicalBlock(scope: !3779, file: !751, line: 113, column: 7)
!3788 = !DILocation(line: 0, scope: !3779)
!3789 = !DILocation(line: 0, scope: !3772, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 111, column: 24, scope: !3779)
!3791 = !DILocation(line: 37, column: 24, scope: !3772, inlinedAt: !3790)
!3792 = !DILocation(line: 113, column: 14, scope: !3787)
!3793 = !DILocation(line: 113, column: 7, scope: !3779)
!3794 = !DILocation(line: 116, column: 19, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !751, line: 116, column: 11)
!3796 = distinct !DILexicalBlock(scope: !3787, file: !751, line: 114, column: 5)
!3797 = !DILocation(line: 116, column: 11, scope: !3796)
!3798 = !DILocation(line: 120, column: 16, scope: !3795)
!3799 = !DILocation(line: 120, column: 9, scope: !3795)
!3800 = !DILocation(line: 125, column: 23, scope: !3786)
!3801 = !DILocation(line: 0, scope: !3786)
!3802 = !DILocation(line: 126, column: 18, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3786, file: !751, line: 126, column: 11)
!3804 = !DILocation(line: 126, column: 11, scope: !3786)
!3805 = !DILocation(line: 128, column: 39, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !751, line: 127, column: 9)
!3807 = !DILocalVariable(name: "__dest", arg: 1, scope: !3808, file: !1396, line: 26, type: !3268)
!3808 = distinct !DISubprogram(name: "memcpy", scope: !1396, file: !1396, line: 26, type: !3266, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3809)
!3809 = !{!3807, !3810, !3811}
!3810 = !DILocalVariable(name: "__src", arg: 2, scope: !3808, file: !1396, line: 26, type: !977)
!3811 = !DILocalVariable(name: "__len", arg: 3, scope: !3808, file: !1396, line: 26, type: !93)
!3812 = !DILocation(line: 0, scope: !3808, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 128, column: 11, scope: !3806)
!3814 = !DILocation(line: 29, column: 10, scope: !3808, inlinedAt: !3813)
!3815 = !DILocation(line: 129, column: 11, scope: !3806)
!3816 = !DILocation(line: 133, column: 23, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !751, line: 133, column: 15)
!3818 = distinct !DILexicalBlock(scope: !3803, file: !751, line: 132, column: 9)
!3819 = !DILocation(line: 133, column: 15, scope: !3818)
!3820 = !DILocation(line: 138, column: 44, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3817, file: !751, line: 134, column: 13)
!3822 = !DILocation(line: 0, scope: !3808, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 138, column: 15, scope: !3821)
!3824 = !DILocation(line: 29, column: 10, scope: !3808, inlinedAt: !3823)
!3825 = !DILocation(line: 139, column: 15, scope: !3821)
!3826 = !DILocation(line: 139, column: 32, scope: !3821)
!3827 = !DILocation(line: 140, column: 13, scope: !3821)
!3828 = !DILocation(line: 0, scope: !3787)
!3829 = !DILocation(line: 145, column: 1, scope: !3779)
