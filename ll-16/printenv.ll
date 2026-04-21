; ModuleID = 'src/printenv.bc'
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
@.str.1 = private unnamed_addr constant [164 x i8] c"Usage: %s [OPTION] [VARIABLE]...\0APrint the values of the specified environment VARIABLE(s).\0AIf no VARIABLE is specified, print name and value pairs for them all.\0A\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"printenv\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [66 x i8] c"  -0, --null\0A         end each output line with NUL, not newline\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !37
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1, !dbg !52
@longopts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.50, i32 0, ptr null, i32 48 }, %struct.option { ptr @.str.51, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !57
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !97
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !102
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1, !dbg !107
@optind = external local_unnamed_addr global i32, align 4
@environ = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1, !dbg !112
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !117
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !200
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !202
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !204
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !209
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !249
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !251
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !253
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !255
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !260
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !265
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !270
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !272
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !274
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !276
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !287
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !289
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !294
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !299
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !304
@.str.50 = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !309
@.str.51 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !311
@.str.52 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !313
@.str.19 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !325
@Version = dso_local local_unnamed_addr global ptr @.str.19, align 8, !dbg !328
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !332
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !345
@.str.22 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !337
@.str.1.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !339
@.str.2.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !341
@.str.3.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !343
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !347
@stderr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !353
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !390
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !355
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !380
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !382
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !384
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !386
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !388
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !392
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !394
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !399
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !404
@.str.43 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !410
@.str.1.44 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !412
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !414
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !445
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !448
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !450
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !455
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !457
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !459
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !461
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !463
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !465
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !467
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.53, ptr @.str.1.54, ptr @.str.2.55, ptr @.str.3.56, ptr @.str.4.57, ptr @.str.5.58, ptr @.str.6.59, ptr @.str.7.60, ptr @.str.8.61, ptr @.str.9.62, ptr null], align 8, !dbg !469
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !494
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !508
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !546
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !553
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !510
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !555
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !498
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !515
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !517
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !519
@.str.13.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !521
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !523
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !561
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !564
@.str.2.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !566
@.str.3.72 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !568
@.str.4.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !570
@.str.5.74 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !572
@.str.6.75 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !577
@.str.7.76 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !582
@.str.8.77 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !584
@.str.9.78 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !589
@.str.10.79 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !594
@.str.11.80 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !599
@.str.12.81 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !604
@.str.13.82 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !606
@.str.14.83 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !611
@.str.15.84 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !616
@.str.16.85 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !621
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.90 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !626
@.str.18.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !628
@.str.19.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !630
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !632
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !634
@.str.22.93 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !636
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !638
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !643
@exit_failure = dso_local global i32 1, align 4, !dbg !651
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !657
@.str.1.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !660
@.str.2.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !662
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !664
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !667
@.str.122 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !682
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !685

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !757 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !761, metadata !DIExpression()), !dbg !762
  %2 = icmp eq i32 %0, 0, !dbg !763
  br i1 %2, label %8, label %3, !dbg !765

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !766, !tbaa !768
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !766
  %6 = load ptr, ptr @program_name, align 8, !dbg !766, !tbaa !768
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !766
  br label %31, !dbg !766

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !772
  %10 = load ptr, ptr @program_name, align 8, !dbg !772, !tbaa !768
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !772
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #36, !dbg !774
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !774
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !775
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !775
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !776
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !776
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !777
  %16 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %15, ptr noundef nonnull @.str.2) #36, !dbg !777
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !778, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !790, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata ptr poison, metadata !790, metadata !DIExpression()), !dbg !795
  tail call void @emit_bug_reporting_address() #36, !dbg !797
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !798
  call void @llvm.dbg.value(metadata ptr %17, metadata !793, metadata !DIExpression()), !dbg !795
  %18 = icmp eq ptr %17, null, !dbg !799
  br i1 %18, label %26, label %19, !dbg !801

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #37, !dbg !802
  %21 = icmp eq i32 %20, 0, !dbg !802
  br i1 %21, label %26, label %22, !dbg !803

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #36, !dbg !804
  %24 = load ptr, ptr @stdout, align 8, !dbg !804, !tbaa !768
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !804
  br label %26, !dbg !806

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !790, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !794, metadata !DIExpression()), !dbg !795
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #36, !dbg !807
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2) #36, !dbg !807
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #36, !dbg !808
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.49) #36, !dbg !808
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !809
  unreachable, !dbg !809
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !810 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !815 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !821 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !119 {
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !123, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata ptr %0, metadata !124, metadata !DIExpression()), !dbg !824
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !825, !tbaa !826
  %3 = icmp eq i32 %2, -1, !dbg !828
  br i1 %3, label %4, label %16, !dbg !829

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #36, !dbg !830
  call void @llvm.dbg.value(metadata ptr %5, metadata !125, metadata !DIExpression()), !dbg !831
  %6 = icmp eq ptr %5, null, !dbg !832
  br i1 %6, label %14, label %7, !dbg !833

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !834, !tbaa !835
  %9 = icmp eq i8 %8, 0, !dbg !834
  br i1 %9, label %14, label %10, !dbg !836

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !837, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !843, metadata !DIExpression()), !dbg !844
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #37, !dbg !846
  %12 = icmp eq i32 %11, 0, !dbg !847
  %13 = zext i1 %12 to i32, !dbg !836
  br label %14, !dbg !836

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !848, !tbaa !826
  br label %16, !dbg !849

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !850
  %18 = icmp eq i32 %17, 0, !dbg !850
  br i1 %18, label %22, label %19, !dbg !852

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !768
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !853
  br label %122, !dbg !855

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !824
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #37, !dbg !856
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !857
  call void @llvm.dbg.value(metadata ptr %24, metadata !130, metadata !DIExpression()), !dbg !824
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !858
  call void @llvm.dbg.value(metadata ptr %25, metadata !131, metadata !DIExpression()), !dbg !824
  %26 = icmp eq ptr %25, null, !dbg !859
  br i1 %26, label %54, label %27, !dbg !860

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !861
  br i1 %28, label %54, label %29, !dbg !862

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !132, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !863
  %30 = icmp ult ptr %24, %25, !dbg !864
  br i1 %30, label %31, label %52, !dbg !865

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !824
  %33 = load ptr, ptr %32, align 8, !tbaa !768
  br label %34, !dbg !865

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !132, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 %36, metadata !136, metadata !DIExpression()), !dbg !863
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !866
  call void @llvm.dbg.value(metadata ptr %37, metadata !132, metadata !DIExpression()), !dbg !863
  %38 = load i8, ptr %35, align 1, !dbg !866, !tbaa !835
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !866
  %41 = load i16, ptr %40, align 2, !dbg !866, !tbaa !867
  %42 = freeze i16 %41, !dbg !869
  %43 = lshr i16 %42, 13, !dbg !869
  %44 = and i16 %43, 1, !dbg !869
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !870
  call void @llvm.dbg.value(metadata i64 %46, metadata !136, metadata !DIExpression()), !dbg !863
  %47 = icmp ult ptr %37, %25, !dbg !864
  %48 = icmp ult i64 %46, 2, !dbg !871
  %49 = select i1 %47, i1 %48, i1 false, !dbg !871
  br i1 %49, label %34, label %50, !dbg !865, !llvm.loop !872

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !874
  br i1 %51, label %52, label %54, !dbg !876

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !876

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !824
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !128, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata ptr %55, metadata !131, metadata !DIExpression()), !dbg !824
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.18) #37, !dbg !877
  call void @llvm.dbg.value(metadata i64 %57, metadata !137, metadata !DIExpression()), !dbg !824
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !878
  call void @llvm.dbg.value(metadata ptr %58, metadata !138, metadata !DIExpression()), !dbg !824
  br label %59, !dbg !879

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !824
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !128, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata ptr %60, metadata !138, metadata !DIExpression()), !dbg !824
  %62 = load i8, ptr %60, align 1, !dbg !880, !tbaa !835
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !881

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !882
  %65 = load i8, ptr %64, align 1, !dbg !885, !tbaa !835
  %66 = icmp ne i8 %65, 45, !dbg !886
  %67 = select i1 %66, i1 %61, i1 false, !dbg !887
  br label %68, !dbg !887

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !128, metadata !DIExpression()), !dbg !824
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !888
  %71 = load ptr, ptr %70, align 8, !dbg !888, !tbaa !768
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !888
  %74 = load i16, ptr %73, align 2, !dbg !888, !tbaa !867
  %75 = and i16 %74, 8192, !dbg !888
  %76 = icmp eq i16 %75, 0, !dbg !888
  br i1 %76, label %90, label %77, !dbg !890

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !891
  br i1 %78, label %92, label %79, !dbg !894

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !895
  %81 = load i8, ptr %80, align 1, !dbg !895, !tbaa !835
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !895
  %84 = load i16, ptr %83, align 2, !dbg !895, !tbaa !867
  %85 = and i16 %84, 8192, !dbg !895
  %86 = icmp eq i16 %85, 0, !dbg !895
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !896
  br i1 %89, label %90, label %92, !dbg !896

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !897
  call void @llvm.dbg.value(metadata ptr %91, metadata !138, metadata !DIExpression()), !dbg !824
  br label %59, !dbg !879, !llvm.loop !898

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !900
  %94 = load ptr, ptr @stdout, align 8, !dbg !900, !tbaa !768
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !195, metadata !DIExpression()), !dbg !824
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #37, !dbg !921
  %97 = icmp eq i32 %96, 0, !dbg !921
  br i1 %97, label %101, label %98, !dbg !923

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #37, !dbg !924
  %100 = icmp eq i32 %99, 0, !dbg !924
  br i1 %100, label %101, label %104, !dbg !925

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !926
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %102, ptr noundef %55) #36, !dbg !926
  br label %107, !dbg !928

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !929
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef %105, ptr noundef %55) #36, !dbg !929
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !931, !tbaa !768
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %108), !dbg !931
  %110 = load ptr, ptr @stdout, align 8, !dbg !932, !tbaa !768
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %110), !dbg !932
  %112 = ptrtoint ptr %60 to i64, !dbg !933
  %113 = sub i64 %112, %93, !dbg !933
  %114 = load ptr, ptr @stdout, align 8, !dbg !933, !tbaa !768
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !933
  %116 = load ptr, ptr @stdout, align 8, !dbg !934, !tbaa !768
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %116), !dbg !934
  %118 = load ptr, ptr @stdout, align 8, !dbg !935, !tbaa !768
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %118), !dbg !935
  %120 = load ptr, ptr @stdout, align 8, !dbg !936, !tbaa !768
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !936
  br label %122, !dbg !937

122:                                              ; preds = %107, %19
  ret void, !dbg !937
}

; Function Attrs: nounwind
declare !dbg !938 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !942 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !946 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !949 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !951 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !954 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !957 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !960 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !963 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !969 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !970 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !976 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !981, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %1, metadata !982, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 0, metadata !983, metadata !DIExpression()), !dbg !1003
  %3 = load ptr, ptr %1, align 8, !dbg !1004, !tbaa !768
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !1005
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #36, !dbg !1006
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #36, !dbg !1007
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #36, !dbg !1008
  call void @llvm.dbg.value(metadata i32 2, metadata !1009, metadata !DIExpression()), !dbg !1012
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1014, !tbaa !826
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1016
  call void @llvm.dbg.value(metadata i8 poison, metadata !983, metadata !DIExpression()), !dbg !1003
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %8, metadata !984, metadata !DIExpression()), !dbg !1003
  switch i32 %8, label %17 [
    i32 -1, label %18
    i32 48, label %9
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !1018

9:                                                ; preds = %2, %9
  call void @llvm.dbg.value(metadata i8 poison, metadata !983, metadata !DIExpression()), !dbg !1003
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %10, metadata !984, metadata !DIExpression()), !dbg !1003
  switch i32 %10, label %17 [
    i32 -1, label %18
    i32 48, label %9
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !1018, !llvm.loop !1019

11:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 0) #40, !dbg !1022
  unreachable, !dbg !1022

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !768
  %14 = load ptr, ptr @Version, align 8, !dbg !1025, !tbaa !768
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #36, !dbg !1025
  %16 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #36, !dbg !1025
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef null) #36, !dbg !1025
  tail call void @exit(i32 noundef 0) #38, !dbg !1025
  unreachable, !dbg !1025

17:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 2) #40, !dbg !1026
  unreachable, !dbg !1026

18:                                               ; preds = %9, %2
  %19 = phi i32 [ 10, %2 ], [ 0, %9 ]
  %20 = load i32, ptr @optind, align 4, !dbg !1027, !tbaa !826
  %21 = icmp slt i32 %20, %0, !dbg !1028
  br i1 %21, label %22, label %24, !dbg !1029

22:                                               ; preds = %18
  %23 = sext i32 %20 to i64, !dbg !1030
  br label %40, !dbg !1030

24:                                               ; preds = %18
  %25 = load ptr, ptr @environ, align 8, !dbg !1031, !tbaa !768
  call void @llvm.dbg.value(metadata ptr %25, metadata !986, metadata !DIExpression()), !dbg !1032
  %26 = load ptr, ptr %25, align 8, !dbg !1033, !tbaa !768
  %27 = icmp eq ptr %26, null, !dbg !1035
  br i1 %27, label %96, label %28, !dbg !1036

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %24 ]
  %30 = phi ptr [ %32, %28 ], [ %25, %24 ]
  call void @llvm.dbg.value(metadata ptr %30, metadata !986, metadata !DIExpression()), !dbg !1032
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull %29, i32 noundef %19) #36, !dbg !1037
  %32 = getelementptr inbounds ptr, ptr %30, i64 1, !dbg !1038
  call void @llvm.dbg.value(metadata ptr %32, metadata !986, metadata !DIExpression()), !dbg !1032
  %33 = load ptr, ptr %32, align 8, !dbg !1033, !tbaa !768
  %34 = icmp eq ptr %33, null, !dbg !1035
  br i1 %34, label %96, label %28, !dbg !1036, !llvm.loop !1039

35:                                               ; preds = %91
  %36 = load i32, ptr @optind, align 4, !dbg !1041, !tbaa !826
  %37 = sub nsw i32 %0, %36, !dbg !1042
  %38 = icmp ne i32 %92, %37, !dbg !1043
  call void @llvm.dbg.value(metadata i1 %38, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1003
  %39 = zext i1 %38 to i32, !dbg !1044
  br label %96

40:                                               ; preds = %22, %91
  %41 = phi i64 [ %23, %22 ], [ %93, %91 ]
  %42 = phi i32 [ 0, %22 ], [ %92, %91 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !992, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 %42, metadata !990, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i8 0, metadata !994, metadata !DIExpression()), !dbg !1047
  %43 = getelementptr inbounds ptr, ptr %1, i64 %41, !dbg !1048
  %44 = load ptr, ptr %43, align 8, !dbg !1048, !tbaa !768
  %45 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %44, i32 noundef 61) #37, !dbg !1050
  %46 = icmp eq ptr %45, null, !dbg !1050
  br i1 %46, label %47, label %91, !dbg !1051

47:                                               ; preds = %40
  %48 = load ptr, ptr @environ, align 8, !dbg !1052, !tbaa !768
  call void @llvm.dbg.value(metadata ptr %48, metadata !997, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8 poison, metadata !994, metadata !DIExpression()), !dbg !1047
  %49 = load ptr, ptr %48, align 8, !dbg !1054, !tbaa !768
  %50 = icmp eq ptr %49, null, !dbg !1055
  br i1 %50, label %51, label %55, !dbg !1055

51:                                               ; preds = %86, %47
  %52 = phi i1 [ false, %47 ], [ %87, %86 ]
  %53 = zext i1 %52 to i32, !dbg !1056
  %54 = add nsw i32 %42, %53, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %54, metadata !990, metadata !DIExpression()), !dbg !1046
  br label %91, !dbg !1058

55:                                               ; preds = %47, %86
  %56 = phi ptr [ %89, %86 ], [ %49, %47 ]
  %57 = phi ptr [ %88, %86 ], [ %48, %47 ]
  %58 = phi i1 [ %87, %86 ], [ false, %47 ]
  call void @llvm.dbg.value(metadata ptr %57, metadata !997, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr poison, metadata !1002, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %56, metadata !999, metadata !DIExpression()), !dbg !1059
  %59 = load i8, ptr %56, align 1, !dbg !1060, !tbaa !835
  %60 = icmp eq i8 %59, 0, !dbg !1061
  br i1 %60, label %86, label %61, !dbg !1062

61:                                               ; preds = %55
  %62 = load ptr, ptr %43, align 8, !dbg !1063, !tbaa !768
  call void @llvm.dbg.value(metadata ptr %62, metadata !1002, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %56, metadata !999, metadata !DIExpression()), !dbg !1059
  %63 = load i8, ptr %62, align 1, !dbg !1064, !tbaa !835
  %64 = icmp eq i8 %63, 0, !dbg !1065
  br i1 %64, label %86, label %65, !dbg !1066

65:                                               ; preds = %61, %83
  %66 = phi i8 [ %84, %83 ], [ %63, %61 ]
  %67 = phi ptr [ %70, %83 ], [ %56, %61 ]
  %68 = phi ptr [ %71, %83 ], [ %62, %61 ]
  %69 = phi i8 [ %74, %83 ], [ %59, %61 ]
  call void @llvm.dbg.value(metadata ptr %67, metadata !999, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %68, metadata !1002, metadata !DIExpression()), !dbg !1059
  %70 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !1067
  call void @llvm.dbg.value(metadata ptr %70, metadata !999, metadata !DIExpression()), !dbg !1059
  %71 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !1068
  call void @llvm.dbg.value(metadata ptr %71, metadata !1002, metadata !DIExpression()), !dbg !1059
  %72 = icmp eq i8 %69, %66, !dbg !1069
  br i1 %72, label %73, label %86, !dbg !1070

73:                                               ; preds = %65
  %74 = load i8, ptr %70, align 1, !dbg !1071, !tbaa !835
  switch i8 %74, label %83 [
    i8 61, label %75
    i8 0, label %86
  ], !dbg !1074

75:                                               ; preds = %73
  %76 = load i8, ptr %71, align 1, !dbg !1075, !tbaa !835
  %77 = icmp eq i8 %76, 0, !dbg !1076
  br i1 %77, label %78, label %81, !dbg !1077

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !1078
  %80 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull %79, i32 noundef %19) #36, !dbg !1078
  call void @llvm.dbg.value(metadata i8 1, metadata !994, metadata !DIExpression()), !dbg !1047
  br label %86, !dbg !1080

81:                                               ; preds = %75
  call void @llvm.dbg.value(metadata ptr %71, metadata !1002, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %70, metadata !999, metadata !DIExpression()), !dbg !1059
  %82 = icmp eq i8 %74, 0, !dbg !1061
  br i1 %82, label %86, label %83, !dbg !1062

83:                                               ; preds = %81, %73
  call void @llvm.dbg.value(metadata ptr %71, metadata !1002, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %70, metadata !999, metadata !DIExpression()), !dbg !1059
  %84 = load i8, ptr %71, align 1, !dbg !1064, !tbaa !835
  %85 = icmp eq i8 %84, 0, !dbg !1065
  br i1 %85, label %86, label %65, !dbg !1066, !llvm.loop !1081

86:                                               ; preds = %73, %83, %81, %65, %61, %55, %78
  %87 = phi i1 [ true, %78 ], [ %58, %55 ], [ %58, %61 ], [ %58, %65 ], [ %58, %81 ], [ %58, %83 ], [ %58, %73 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !994, metadata !DIExpression()), !dbg !1047
  %88 = getelementptr inbounds ptr, ptr %57, i64 1, !dbg !1083
  call void @llvm.dbg.value(metadata ptr %88, metadata !997, metadata !DIExpression()), !dbg !1053
  %89 = load ptr, ptr %88, align 8, !dbg !1054, !tbaa !768
  %90 = icmp eq ptr %89, null, !dbg !1055
  br i1 %90, label %51, label %55, !dbg !1055, !llvm.loop !1084

91:                                               ; preds = %40, %51
  %92 = phi i32 [ %54, %51 ], [ %42, %40 ], !dbg !1046
  call void @llvm.dbg.value(metadata i32 %92, metadata !990, metadata !DIExpression()), !dbg !1046
  %93 = add nsw i64 %41, 1, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %93, metadata !992, metadata !DIExpression()), !dbg !1045
  %94 = trunc i64 %93 to i32, !dbg !1087
  %95 = icmp eq i32 %94, %0, !dbg !1087
  br i1 %95, label %35, label %40, !dbg !1030, !llvm.loop !1088

96:                                               ; preds = %28, %24, %35
  %97 = phi i32 [ %39, %35 ], [ 0, %24 ], [ 0, %28 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !985, metadata !DIExpression()), !dbg !1003
  ret i32 %97, !dbg !1090
}

; Function Attrs: nounwind
declare !dbg !1091 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1094 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1095 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1098 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1104 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !1107
  store ptr %0, ptr @file_name, align 8, !dbg !1108, !tbaa !768
  ret void, !dbg !1109
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1110 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1114, metadata !DIExpression()), !dbg !1115
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1116, !tbaa !1117
  ret void, !dbg !1119
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1120 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1125, !tbaa !768
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1126
  %3 = icmp eq i32 %2, 0, !dbg !1127
  br i1 %3, label %22, label %4, !dbg !1128

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1129, !tbaa !1117, !range !1130, !noundef !814
  %6 = icmp eq i8 %5, 0, !dbg !1129
  br i1 %6, label %11, label %7, !dbg !1131

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1132
  %9 = load i32, ptr %8, align 4, !dbg !1132, !tbaa !826
  %10 = icmp eq i32 %9, 32, !dbg !1133
  br i1 %10, label %22, label %11, !dbg !1134

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #36, !dbg !1135
  call void @llvm.dbg.value(metadata ptr %12, metadata !1122, metadata !DIExpression()), !dbg !1136
  %13 = load ptr, ptr @file_name, align 8, !dbg !1137, !tbaa !768
  %14 = icmp eq ptr %13, null, !dbg !1137
  %15 = tail call ptr @__errno_location() #39, !dbg !1139
  %16 = load i32, ptr %15, align 4, !dbg !1139, !tbaa !826
  br i1 %14, label %19, label %17, !dbg !1140

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1141
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #36, !dbg !1141
  br label %20, !dbg !1141

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #36, !dbg !1142
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1143, !tbaa !826
  tail call void @_exit(i32 noundef %21) #38, !dbg !1144
  unreachable, !dbg !1144

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1145, !tbaa !768
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1147
  %25 = icmp eq i32 %24, 0, !dbg !1148
  br i1 %25, label %28, label %26, !dbg !1149

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1150, !tbaa !826
  tail call void @_exit(i32 noundef %27) #38, !dbg !1151
  unreachable, !dbg !1151

28:                                               ; preds = %22
  ret void, !dbg !1152
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1153 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1157 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1159 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1163, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %1, metadata !1164, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata ptr %2, metadata !1165, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1166, metadata !DIExpression()), !dbg !1168
  tail call fastcc void @flush_stdout(), !dbg !1169
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1170, !tbaa !768
  %7 = icmp eq ptr %6, null, !dbg !1170
  br i1 %7, label %9, label %8, !dbg !1172

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1173
  br label %13, !dbg !1173

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1174, !tbaa !768
  %11 = tail call ptr @getprogname() #37, !dbg !1174
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %11) #36, !dbg !1174
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1176, !tbaa.struct !1177
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1176
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1176
  ret void, !dbg !1178
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1179 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1181, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 1, metadata !1183, metadata !DIExpression()), !dbg !1188
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1191
  %2 = icmp slt i32 %1, 0, !dbg !1192
  br i1 %2, label %6, label %3, !dbg !1193

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1194, !tbaa !768
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1194
  br label %6, !dbg !1194

6:                                                ; preds = %3, %0
  ret void, !dbg !1195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1196 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1198, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %1, metadata !1199, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata ptr %2, metadata !1200, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1201, metadata !DIExpression()), !dbg !1203
  %7 = load ptr, ptr @stderr, align 8, !dbg !1204, !tbaa !768
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1205, !noalias !1249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1253
  call void @llvm.dbg.value(metadata ptr %7, metadata !1245, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata ptr %2, metadata !1246, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1247, metadata !DIExpression()), !dbg !1255
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1205, !noalias !1249
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1256, !tbaa !826
  %10 = add i32 %9, 1, !dbg !1256
  store i32 %10, ptr @error_message_count, align 4, !dbg !1256, !tbaa !826
  %11 = icmp eq i32 %1, 0, !dbg !1257
  br i1 %11, label %21, label %12, !dbg !1259

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1260, metadata !DIExpression()), !dbg !1268
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1264, metadata !DIExpression()), !dbg !1271
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1272
  call void @llvm.dbg.value(metadata ptr %13, metadata !1263, metadata !DIExpression()), !dbg !1268
  %14 = icmp eq ptr %13, null, !dbg !1273
  br i1 %14, label %15, label %17, !dbg !1275

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #36, !dbg !1276
  call void @llvm.dbg.value(metadata ptr %16, metadata !1263, metadata !DIExpression()), !dbg !1268
  br label %17, !dbg !1277

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1268
  call void @llvm.dbg.value(metadata ptr %18, metadata !1263, metadata !DIExpression()), !dbg !1268
  %19 = load ptr, ptr @stderr, align 8, !dbg !1278, !tbaa !768
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %18) #36, !dbg !1278
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1279
  br label %21, !dbg !1280

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1281, !tbaa !768
  call void @llvm.dbg.value(metadata i32 10, metadata !1282, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %22, metadata !1288, metadata !DIExpression()), !dbg !1289
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1291
  %24 = load ptr, ptr %23, align 8, !dbg !1291, !tbaa !1292
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1291
  %26 = load ptr, ptr %25, align 8, !dbg !1291, !tbaa !1295
  %27 = icmp ult ptr %24, %26, !dbg !1291
  br i1 %27, label %30, label %28, !dbg !1291, !prof !1296

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1291
  br label %32, !dbg !1291

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1291
  store ptr %31, ptr %23, align 8, !dbg !1291, !tbaa !1292
  store i8 10, ptr %24, align 1, !dbg !1291, !tbaa !835
  br label %32, !dbg !1291

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1297, !tbaa !768
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1297
  %35 = icmp eq i32 %0, 0, !dbg !1298
  br i1 %35, label %37, label %36, !dbg !1300

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1301
  unreachable, !dbg !1301

37:                                               ; preds = %32
  ret void, !dbg !1302
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1303 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1306 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1309 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1312 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1315 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1319 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1323, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %1, metadata !1324, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %2, metadata !1325, metadata !DIExpression()), !dbg !1327
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1328
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1326, metadata !DIExpression()), !dbg !1329
  call void @llvm.va_start(ptr nonnull %4), !dbg !1330
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1331, !tbaa.struct !1177
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1331
  call void @llvm.va_end(ptr nonnull %4), !dbg !1332
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1333
  ret void, !dbg !1333
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !357 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !374, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i32 %1, metadata !375, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata ptr %2, metadata !376, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i32 %3, metadata !377, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata ptr %4, metadata !378, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.declare(metadata ptr %5, metadata !379, metadata !DIExpression()), !dbg !1335
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1336, !tbaa !826
  %9 = icmp eq i32 %8, 0, !dbg !1336
  br i1 %9, label %24, label %10, !dbg !1338

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1339, !tbaa !826
  %12 = icmp eq i32 %11, %3, !dbg !1342
  br i1 %12, label %13, label %23, !dbg !1343

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1344, !tbaa !768
  %15 = icmp eq ptr %14, %2, !dbg !1345
  br i1 %15, label %37, label %16, !dbg !1346

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1347
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1348
  br i1 %19, label %20, label %23, !dbg !1348

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1349
  %22 = icmp eq i32 %21, 0, !dbg !1350
  br i1 %22, label %37, label %23, !dbg !1351

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1352, !tbaa !768
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1353, !tbaa !826
  br label %24, !dbg !1354

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1355
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1356, !tbaa !768
  %26 = icmp eq ptr %25, null, !dbg !1356
  br i1 %26, label %28, label %27, !dbg !1358

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1359
  br label %32, !dbg !1359

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1360, !tbaa !768
  %30 = tail call ptr @getprogname() #37, !dbg !1360
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %30) #36, !dbg !1360
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1362, !tbaa !768
  %34 = icmp eq ptr %2, null, !dbg !1362
  %35 = select i1 %34, ptr @.str.3.33, ptr @.str.2.34, !dbg !1362
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1362
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1363, !tbaa.struct !1177
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1363
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1363
  br label %37, !dbg !1364

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1364
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1365 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1369, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata i32 %1, metadata !1370, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata ptr %2, metadata !1371, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata i32 %3, metadata !1372, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata ptr %4, metadata !1373, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1376
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1374, metadata !DIExpression()), !dbg !1377
  call void @llvm.va_start(ptr nonnull %6), !dbg !1378
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1379, !tbaa.struct !1177
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1379
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1379
  call void @llvm.va_end(ptr nonnull %6), !dbg !1380
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1381
  ret void, !dbg !1381
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1382 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1385, !tbaa !768
  ret ptr %1, !dbg !1386
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1387 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1389, metadata !DIExpression()), !dbg !1392
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1393
  call void @llvm.dbg.value(metadata ptr %2, metadata !1390, metadata !DIExpression()), !dbg !1392
  %3 = icmp eq ptr %2, null, !dbg !1394
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1394
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1394
  call void @llvm.dbg.value(metadata ptr %5, metadata !1391, metadata !DIExpression()), !dbg !1392
  %6 = ptrtoint ptr %5 to i64, !dbg !1395
  %7 = ptrtoint ptr %0 to i64, !dbg !1395
  %8 = sub i64 %6, %7, !dbg !1395
  %9 = icmp sgt i64 %8, 6, !dbg !1397
  br i1 %9, label %10, label %19, !dbg !1398

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1399
  call void @llvm.dbg.value(metadata ptr %11, metadata !1400, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !1405, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i64 7, metadata !1406, metadata !DIExpression()), !dbg !1407
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.43, i64 7), !dbg !1409
  %13 = icmp eq i32 %12, 0, !dbg !1410
  br i1 %13, label %14, label %19, !dbg !1411

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1389, metadata !DIExpression()), !dbg !1392
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.44, i64 noundef 3) #37, !dbg !1412
  %16 = icmp eq i32 %15, 0, !dbg !1415
  %17 = select i1 %16, i64 3, i64 0, !dbg !1416
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1416
  br label %19, !dbg !1416

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1392
  call void @llvm.dbg.value(metadata ptr %21, metadata !1391, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata ptr %20, metadata !1389, metadata !DIExpression()), !dbg !1392
  store ptr %20, ptr @program_name, align 8, !dbg !1417, !tbaa !768
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1418, !tbaa !768
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1419, !tbaa !768
  ret void, !dbg !1420
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1421 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !416 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !423, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata ptr %1, metadata !424, metadata !DIExpression()), !dbg !1422
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1423
  call void @llvm.dbg.value(metadata ptr %5, metadata !425, metadata !DIExpression()), !dbg !1422
  %6 = icmp eq ptr %5, %0, !dbg !1424
  br i1 %6, label %7, label %14, !dbg !1426

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %4, metadata !431, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr %4, metadata !1430, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %4, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i32 0, metadata !1445, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 8, metadata !1446, metadata !DIExpression()), !dbg !1447
  store i64 0, ptr %4, align 8, !dbg !1449
  call void @llvm.dbg.value(metadata ptr %3, metadata !426, metadata !DIExpression(DW_OP_deref)), !dbg !1422
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1450
  %9 = icmp eq i64 %8, 2, !dbg !1452
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !426, metadata !DIExpression()), !dbg !1422
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1453
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1454
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1422
  ret ptr %15, !dbg !1454
}

; Function Attrs: nounwind
declare !dbg !1455 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1461 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1466, metadata !DIExpression()), !dbg !1469
  %2 = tail call ptr @__errno_location() #39, !dbg !1470
  %3 = load i32, ptr %2, align 4, !dbg !1470, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %3, metadata !1467, metadata !DIExpression()), !dbg !1469
  %4 = icmp eq ptr %0, null, !dbg !1471
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1471
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1472
  call void @llvm.dbg.value(metadata ptr %6, metadata !1468, metadata !DIExpression()), !dbg !1469
  store i32 %3, ptr %2, align 4, !dbg !1473, !tbaa !826
  ret ptr %6, !dbg !1474
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1475 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1481, metadata !DIExpression()), !dbg !1482
  %2 = icmp eq ptr %0, null, !dbg !1483
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1483
  %4 = load i32, ptr %3, align 8, !dbg !1484, !tbaa !1485
  ret i32 %4, !dbg !1487
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1488 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1492, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %1, metadata !1493, metadata !DIExpression()), !dbg !1494
  %3 = icmp eq ptr %0, null, !dbg !1495
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1495
  store i32 %1, ptr %4, align 8, !dbg !1496, !tbaa !1485
  ret void, !dbg !1497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1498 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1502, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %1, metadata !1503, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i32 %2, metadata !1504, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %1, metadata !1505, metadata !DIExpression()), !dbg !1510
  %4 = icmp eq ptr %0, null, !dbg !1511
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1511
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1512
  %7 = lshr i8 %1, 5, !dbg !1513
  %8 = zext i8 %7 to i64, !dbg !1513
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1514
  call void @llvm.dbg.value(metadata ptr %9, metadata !1506, metadata !DIExpression()), !dbg !1510
  %10 = and i8 %1, 31, !dbg !1515
  %11 = zext i8 %10 to i32, !dbg !1515
  call void @llvm.dbg.value(metadata i32 %11, metadata !1508, metadata !DIExpression()), !dbg !1510
  %12 = load i32, ptr %9, align 4, !dbg !1516, !tbaa !826
  %13 = lshr i32 %12, %11, !dbg !1517
  %14 = and i32 %13, 1, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %14, metadata !1509, metadata !DIExpression()), !dbg !1510
  %15 = xor i32 %13, %2, !dbg !1519
  %16 = and i32 %15, 1, !dbg !1519
  %17 = shl nuw i32 %16, %11, !dbg !1520
  %18 = xor i32 %17, %12, !dbg !1521
  store i32 %18, ptr %9, align 4, !dbg !1521, !tbaa !826
  ret i32 %14, !dbg !1522
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1523 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1527, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 %1, metadata !1528, metadata !DIExpression()), !dbg !1530
  %3 = icmp eq ptr %0, null, !dbg !1531
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1533
  call void @llvm.dbg.value(metadata ptr %4, metadata !1527, metadata !DIExpression()), !dbg !1530
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1534
  %6 = load i32, ptr %5, align 4, !dbg !1534, !tbaa !1535
  call void @llvm.dbg.value(metadata i32 %6, metadata !1529, metadata !DIExpression()), !dbg !1530
  store i32 %1, ptr %5, align 4, !dbg !1536, !tbaa !1535
  ret i32 %6, !dbg !1537
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1538 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1542, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata ptr %1, metadata !1543, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata ptr %2, metadata !1544, metadata !DIExpression()), !dbg !1545
  %4 = icmp eq ptr %0, null, !dbg !1546
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %5, metadata !1542, metadata !DIExpression()), !dbg !1545
  store i32 10, ptr %5, align 8, !dbg !1549, !tbaa !1485
  %6 = icmp ne ptr %1, null, !dbg !1550
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1552
  br i1 %8, label %10, label %9, !dbg !1552

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1553
  unreachable, !dbg !1553

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1554
  store ptr %1, ptr %11, align 8, !dbg !1555, !tbaa !1556
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1557
  store ptr %2, ptr %12, align 8, !dbg !1558, !tbaa !1559
  ret void, !dbg !1560
}

; Function Attrs: noreturn nounwind
declare !dbg !1561 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1562 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1566, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i64 %1, metadata !1567, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata ptr %2, metadata !1568, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i64 %3, metadata !1569, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata ptr %4, metadata !1570, metadata !DIExpression()), !dbg !1574
  %6 = icmp eq ptr %4, null, !dbg !1575
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %7, metadata !1571, metadata !DIExpression()), !dbg !1574
  %8 = tail call ptr @__errno_location() #39, !dbg !1576
  %9 = load i32, ptr %8, align 4, !dbg !1576, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %9, metadata !1572, metadata !DIExpression()), !dbg !1574
  %10 = load i32, ptr %7, align 8, !dbg !1577, !tbaa !1485
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1578
  %12 = load i32, ptr %11, align 4, !dbg !1578, !tbaa !1535
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1579
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1580
  %15 = load ptr, ptr %14, align 8, !dbg !1580, !tbaa !1556
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1581
  %17 = load ptr, ptr %16, align 8, !dbg !1581, !tbaa !1559
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1582
  call void @llvm.dbg.value(metadata i64 %18, metadata !1573, metadata !DIExpression()), !dbg !1574
  store i32 %9, ptr %8, align 4, !dbg !1583, !tbaa !826
  ret i64 %18, !dbg !1584
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1585 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1591, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %1, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %2, metadata !1593, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %4, metadata !1595, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %5, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %6, metadata !1597, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %7, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %8, metadata !1599, metadata !DIExpression()), !dbg !1653
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1654
  %17 = icmp eq i64 %16, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i1 %17, metadata !1600, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr null, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1604, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %5, metadata !1606, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1653
  %18 = and i32 %5, 2, !dbg !1656
  %19 = icmp ne i32 %18, 0, !dbg !1656
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1656

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1657
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1658
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1659
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %34, metadata !1604, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %33, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %32, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %31, metadata !1594, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %30, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %29, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %28, metadata !1595, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1646), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1653
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
  ], !dbg !1661

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 5, metadata !1595, metadata !DIExpression()), !dbg !1653
  br label %102, !dbg !1662

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 5, metadata !1595, metadata !DIExpression()), !dbg !1653
  br i1 %36, label %102, label %42, !dbg !1662

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1663
  br i1 %43, label %102, label %44, !dbg !1667

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1663, !tbaa !835
  br label %102, !dbg !1663

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.63, metadata !529, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 %28, metadata !530, metadata !DIExpression()), !dbg !1668
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.11.63, i32 noundef 5) #36, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %46, metadata !531, metadata !DIExpression()), !dbg !1668
  %47 = icmp eq ptr %46, @.str.11.63, !dbg !1673
  br i1 %47, label %48, label %57, !dbg !1675

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1676
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1677
  call void @llvm.dbg.declare(metadata ptr %13, metadata !533, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata ptr %13, metadata !1679, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata ptr %13, metadata !1687, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 8, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i64 0, ptr %13, align 8, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %12, metadata !532, metadata !DIExpression(DW_OP_deref)), !dbg !1668
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1695
  %50 = icmp eq i64 %49, 3, !dbg !1697
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !532, metadata !DIExpression()), !dbg !1668
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1698
  %54 = icmp eq i32 %28, 9, !dbg !1698
  %55 = select i1 %54, ptr @.str.10.65, ptr @.str.12.66, !dbg !1698
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1699
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1668
  call void @llvm.dbg.value(metadata ptr %58, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr @.str.12.66, metadata !529, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %28, metadata !530, metadata !DIExpression()), !dbg !1700
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.12.66, i32 noundef 5) #36, !dbg !1702
  call void @llvm.dbg.value(metadata ptr %59, metadata !531, metadata !DIExpression()), !dbg !1700
  %60 = icmp eq ptr %59, @.str.12.66, !dbg !1703
  br i1 %60, label %61, label %70, !dbg !1704

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1705
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1706
  call void @llvm.dbg.declare(metadata ptr %11, metadata !533, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %11, metadata !1679, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata ptr %11, metadata !1687, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64 8, metadata !1691, metadata !DIExpression()), !dbg !1710
  store i64 0, ptr %11, align 8, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %10, metadata !532, metadata !DIExpression(DW_OP_deref)), !dbg !1700
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1713
  %63 = icmp eq i64 %62, 3, !dbg !1714
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !532, metadata !DIExpression()), !dbg !1700
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1715
  %67 = icmp eq i32 %28, 9, !dbg !1715
  %68 = select i1 %67, ptr @.str.10.65, ptr @.str.12.66, !dbg !1715
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1716
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %71, metadata !1598, metadata !DIExpression()), !dbg !1653
  br i1 %36, label %88, label %73, !dbg !1717

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1610, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 0, metadata !1601, metadata !DIExpression()), !dbg !1653
  %74 = load i8, ptr %71, align 1, !dbg !1719, !tbaa !835
  %75 = icmp eq i8 %74, 0, !dbg !1721
  br i1 %75, label %88, label %76, !dbg !1721

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1610, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %79, metadata !1601, metadata !DIExpression()), !dbg !1653
  %80 = icmp ult i64 %79, %39, !dbg !1722
  br i1 %80, label %81, label %83, !dbg !1725

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1722
  store i8 %77, ptr %82, align 1, !dbg !1722, !tbaa !835
  br label %83, !dbg !1722

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %84, metadata !1601, metadata !DIExpression()), !dbg !1653
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %85, metadata !1610, metadata !DIExpression()), !dbg !1718
  %86 = load i8, ptr %85, align 1, !dbg !1719, !tbaa !835
  %87 = icmp eq i8 %86, 0, !dbg !1721
  br i1 %87, label %88, label %76, !dbg !1721, !llvm.loop !1727

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1729
  call void @llvm.dbg.value(metadata i64 %89, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %72, metadata !1603, metadata !DIExpression()), !dbg !1653
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %90, metadata !1604, metadata !DIExpression()), !dbg !1653
  br label %102, !dbg !1731

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1653
  br label %93, !dbg !1732

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1653
  br i1 %36, label %102, label %96, !dbg !1733

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1595, metadata !DIExpression()), !dbg !1653
  br label %102, !dbg !1734

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1595, metadata !DIExpression()), !dbg !1653
  br i1 %36, label %102, label %96, !dbg !1734

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1735
  br i1 %98, label %102, label %99, !dbg !1739

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1735, !tbaa !835
  br label %102, !dbg !1735

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1653
  br label %102, !dbg !1740

101:                                              ; preds = %27
  call void @abort() #38, !dbg !1741
  unreachable, !dbg !1741

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1729
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.65, %42 ], [ @.str.10.65, %44 ], [ @.str.10.65, %41 ], [ %33, %27 ], [ @.str.12.66, %96 ], [ @.str.12.66, %99 ], [ @.str.12.66, %95 ], [ @.str.10.65, %40 ], [ @.str.12.66, %93 ], [ @.str.12.66, %92 ], !dbg !1653
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1653
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %108, metadata !1604, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %107, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %106, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %105, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %104, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %103, metadata !1595, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1615, metadata !DIExpression()), !dbg !1742
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
  br label %122, !dbg !1743

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1729
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1657
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1744
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1615, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1653
  %131 = icmp eq i64 %123, -1, !dbg !1745
  br i1 %131, label %132, label %136, !dbg !1746

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1747
  %134 = load i8, ptr %133, align 1, !dbg !1747, !tbaa !835
  %135 = icmp eq i8 %134, 0, !dbg !1748
  br i1 %135, label %579, label %138, !dbg !1749

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1750
  br i1 %137, label %579, label %138, !dbg !1749

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1617, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1751
  br i1 %114, label %139, label %152, !dbg !1752

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1754
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1755
  br i1 %141, label %142, label %144, !dbg !1755

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %143, metadata !1594, metadata !DIExpression()), !dbg !1653
  br label %144, !dbg !1757

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1757
  call void @llvm.dbg.value(metadata i64 %145, metadata !1594, metadata !DIExpression()), !dbg !1653
  %146 = icmp ugt i64 %140, %145, !dbg !1758
  br i1 %146, label %152, label %147, !dbg !1759

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1760
  call void @llvm.dbg.value(metadata ptr %148, metadata !1761, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata ptr %107, metadata !1764, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %108, metadata !1765, metadata !DIExpression()), !dbg !1766
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1768
  %150 = icmp eq i32 %149, 0, !dbg !1769
  %151 = and i1 %150, %110, !dbg !1770
  br i1 %151, label %630, label %152, !dbg !1770

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %153, metadata !1594, metadata !DIExpression()), !dbg !1653
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1771
  %156 = load i8, ptr %155, align 1, !dbg !1771, !tbaa !835
  call void @llvm.dbg.value(metadata i8 %156, metadata !1622, metadata !DIExpression()), !dbg !1751
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
  ], !dbg !1772

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1773

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1774

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1620, metadata !DIExpression()), !dbg !1751
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1778
  br i1 %160, label %177, label %161, !dbg !1778

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1780
  br i1 %162, label %163, label %165, !dbg !1784

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1780
  store i8 39, ptr %164, align 1, !dbg !1780, !tbaa !835
  br label %165, !dbg !1780

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %166, metadata !1601, metadata !DIExpression()), !dbg !1653
  %167 = icmp ult i64 %166, %130, !dbg !1785
  br i1 %167, label %168, label %170, !dbg !1788

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1785
  store i8 36, ptr %169, align 1, !dbg !1785, !tbaa !835
  br label %170, !dbg !1785

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %171, metadata !1601, metadata !DIExpression()), !dbg !1653
  %172 = icmp ult i64 %171, %130, !dbg !1789
  br i1 %172, label %173, label %175, !dbg !1792

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1789
  store i8 39, ptr %174, align 1, !dbg !1789, !tbaa !835
  br label %175, !dbg !1789

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %176, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1653
  br label %177, !dbg !1793

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1653
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %178, metadata !1601, metadata !DIExpression()), !dbg !1653
  %180 = icmp ult i64 %178, %130, !dbg !1794
  br i1 %180, label %181, label %183, !dbg !1797

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1794
  store i8 92, ptr %182, align 1, !dbg !1794, !tbaa !835
  br label %183, !dbg !1794

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %184, metadata !1601, metadata !DIExpression()), !dbg !1653
  br i1 %111, label %185, label %482, !dbg !1798

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1800
  %187 = icmp ult i64 %186, %153, !dbg !1801
  br i1 %187, label %188, label %439, !dbg !1802

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1803
  %190 = load i8, ptr %189, align 1, !dbg !1803, !tbaa !835
  %191 = add i8 %190, -48, !dbg !1804
  %192 = icmp ult i8 %191, 10, !dbg !1804
  br i1 %192, label %193, label %439, !dbg !1804

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1805
  br i1 %194, label %195, label %197, !dbg !1809

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1805
  store i8 48, ptr %196, align 1, !dbg !1805, !tbaa !835
  br label %197, !dbg !1805

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %198, metadata !1601, metadata !DIExpression()), !dbg !1653
  %199 = icmp ult i64 %198, %130, !dbg !1810
  br i1 %199, label %200, label %202, !dbg !1813

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1810
  store i8 48, ptr %201, align 1, !dbg !1810, !tbaa !835
  br label %202, !dbg !1810

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %203, metadata !1601, metadata !DIExpression()), !dbg !1653
  br label %439, !dbg !1814

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1815

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1816

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1817

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1819

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1821
  %210 = icmp ult i64 %209, %153, !dbg !1822
  br i1 %210, label %211, label %439, !dbg !1823

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1824
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1825
  %214 = load i8, ptr %213, align 1, !dbg !1825, !tbaa !835
  %215 = icmp eq i8 %214, 63, !dbg !1826
  br i1 %215, label %216, label %439, !dbg !1827

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1828
  %218 = load i8, ptr %217, align 1, !dbg !1828, !tbaa !835
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
  ], !dbg !1829

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1830

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1622, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %209, metadata !1615, metadata !DIExpression()), !dbg !1742
  %221 = icmp ult i64 %124, %130, !dbg !1832
  br i1 %221, label %222, label %224, !dbg !1835

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1832
  store i8 63, ptr %223, align 1, !dbg !1832, !tbaa !835
  br label %224, !dbg !1832

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %225, metadata !1601, metadata !DIExpression()), !dbg !1653
  %226 = icmp ult i64 %225, %130, !dbg !1836
  br i1 %226, label %227, label %229, !dbg !1839

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1836
  store i8 34, ptr %228, align 1, !dbg !1836, !tbaa !835
  br label %229, !dbg !1836

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %230, metadata !1601, metadata !DIExpression()), !dbg !1653
  %231 = icmp ult i64 %230, %130, !dbg !1840
  br i1 %231, label %232, label %234, !dbg !1843

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1840
  store i8 34, ptr %233, align 1, !dbg !1840, !tbaa !835
  br label %234, !dbg !1840

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %235, metadata !1601, metadata !DIExpression()), !dbg !1653
  %236 = icmp ult i64 %235, %130, !dbg !1844
  br i1 %236, label %237, label %239, !dbg !1847

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1844
  store i8 63, ptr %238, align 1, !dbg !1844, !tbaa !835
  br label %239, !dbg !1844

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %240, metadata !1601, metadata !DIExpression()), !dbg !1653
  br label %439, !dbg !1848

241:                                              ; preds = %152
  br label %251, !dbg !1849

242:                                              ; preds = %152
  br label %251, !dbg !1850

243:                                              ; preds = %152
  br label %249, !dbg !1851

244:                                              ; preds = %152
  br label %249, !dbg !1852

245:                                              ; preds = %152
  br label %251, !dbg !1853

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1854

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1855

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1858

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1860
  call void @llvm.dbg.label(metadata !1647), !dbg !1861
  br i1 %119, label %621, label %251, !dbg !1862

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1860
  call void @llvm.dbg.label(metadata !1649), !dbg !1864
  br i1 %109, label %493, label %450, !dbg !1865

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1866

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1867, !tbaa !835
  %256 = icmp eq i8 %255, 0, !dbg !1869
  br i1 %256, label %257, label %439, !dbg !1870

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1871
  br i1 %258, label %259, label %439, !dbg !1873

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1751
  br label %260, !dbg !1874

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1751
  br i1 %116, label %262, label %439, !dbg !1875

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1877

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1751
  br i1 %116, label %264, label %439, !dbg !1878

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1879

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1882
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1884
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1884
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %270, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %269, metadata !1602, metadata !DIExpression()), !dbg !1653
  %271 = icmp ult i64 %124, %270, !dbg !1885
  br i1 %271, label %272, label %274, !dbg !1888

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1885
  store i8 39, ptr %273, align 1, !dbg !1885, !tbaa !835
  br label %274, !dbg !1885

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %275, metadata !1601, metadata !DIExpression()), !dbg !1653
  %276 = icmp ult i64 %275, %270, !dbg !1889
  br i1 %276, label %277, label %279, !dbg !1892

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1889
  store i8 92, ptr %278, align 1, !dbg !1889, !tbaa !835
  br label %279, !dbg !1889

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %280, metadata !1601, metadata !DIExpression()), !dbg !1653
  %281 = icmp ult i64 %280, %270, !dbg !1893
  br i1 %281, label %282, label %284, !dbg !1896

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1893
  store i8 39, ptr %283, align 1, !dbg !1893, !tbaa !835
  br label %284, !dbg !1893

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %285, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1653
  br label %439, !dbg !1897

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1898

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1623, metadata !DIExpression()), !dbg !1899
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !1900
  %289 = load ptr, ptr %288, align 8, !dbg !1900, !tbaa !768
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1900
  %292 = load i16, ptr %291, align 2, !dbg !1900, !tbaa !867
  %293 = and i16 %292, 16384, !dbg !1900
  %294 = icmp ne i16 %293, 0, !dbg !1902
  call void @llvm.dbg.value(metadata i1 %294, metadata !1626, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1899
  br label %337, !dbg !1903

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1904
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1627, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata ptr %14, metadata !1679, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %14, metadata !1687, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 8, metadata !1691, metadata !DIExpression()), !dbg !1908
  store i64 0, ptr %14, align 8, !dbg !1910
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 1, metadata !1626, metadata !DIExpression()), !dbg !1899
  %296 = icmp eq i64 %153, -1, !dbg !1911
  br i1 %296, label %297, label %299, !dbg !1913

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %298, metadata !1594, metadata !DIExpression()), !dbg !1653
  br label %299, !dbg !1915

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1751
  call void @llvm.dbg.value(metadata i64 %300, metadata !1594, metadata !DIExpression()), !dbg !1653
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1916
  %301 = sub i64 %300, %129, !dbg !1917
  call void @llvm.dbg.value(metadata ptr %15, metadata !1630, metadata !DIExpression(DW_OP_deref)), !dbg !1918
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %302, metadata !1634, metadata !DIExpression()), !dbg !1918
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1920

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1899
  %304 = icmp ugt i64 %300, %129, !dbg !1921
  br i1 %304, label %306, label %332, !dbg !1923

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1626, metadata !DIExpression()), !dbg !1899
  br label %332, !dbg !1924

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1623, metadata !DIExpression()), !dbg !1899
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1926
  %310 = load i8, ptr %309, align 1, !dbg !1926, !tbaa !835
  %311 = icmp eq i8 %310, 0, !dbg !1923
  br i1 %311, label %332, label %312, !dbg !1927

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %313, metadata !1623, metadata !DIExpression()), !dbg !1899
  %314 = add i64 %313, %129, !dbg !1929
  %315 = icmp eq i64 %313, %301, !dbg !1921
  br i1 %315, label %332, label %306, !dbg !1923, !llvm.loop !1930

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1931
  %319 = and i1 %318, %110, !dbg !1931
  call void @llvm.dbg.value(metadata i64 1, metadata !1635, metadata !DIExpression()), !dbg !1932
  br i1 %319, label %320, label %328, !dbg !1931

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1635, metadata !DIExpression()), !dbg !1932
  %322 = add i64 %321, %129, !dbg !1933
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1935
  %324 = load i8, ptr %323, align 1, !dbg !1935, !tbaa !835
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1936

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %326, metadata !1635, metadata !DIExpression()), !dbg !1932
  %327 = icmp eq i64 %326, %302, !dbg !1938
  br i1 %327, label %328, label %320, !dbg !1939, !llvm.loop !1940

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1942, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %329, metadata !1630, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i32 %329, metadata !1944, metadata !DIExpression()), !dbg !1952
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !1954
  %331 = icmp ne i32 %330, 0, !dbg !1955
  call void @llvm.dbg.value(metadata i8 poison, metadata !1626, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %302, metadata !1623, metadata !DIExpression()), !dbg !1899
  br label %332, !dbg !1956

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1626, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %333, metadata !1623, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1957
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1958
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1626, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1957
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1958
  call void @llvm.dbg.label(metadata !1652), !dbg !1959
  %336 = select i1 %109, i32 4, i32 2, !dbg !1960
  br label %626, !dbg !1960

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1751
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1962
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1626, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %339, metadata !1623, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %338, metadata !1594, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i1 %340, metadata !1621, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1751
  %341 = icmp ult i64 %339, 2, !dbg !1963
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1964
  br i1 %343, label %439, label %344, !dbg !1964

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %345, metadata !1643, metadata !DIExpression()), !dbg !1966
  br label %346, !dbg !1967

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1653
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1742
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1968
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1751
  call void @llvm.dbg.value(metadata i8 %352, metadata !1622, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %351, metadata !1620, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %349, metadata !1615, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %347, metadata !1601, metadata !DIExpression()), !dbg !1653
  br i1 %342, label %397, label %353, !dbg !1969

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !1974

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1620, metadata !DIExpression()), !dbg !1751
  %355 = select i1 %111, i1 true, i1 %348, !dbg !1977
  br i1 %355, label %372, label %356, !dbg !1977

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !1979
  br i1 %357, label %358, label %360, !dbg !1983

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1979
  store i8 39, ptr %359, align 1, !dbg !1979, !tbaa !835
  br label %360, !dbg !1979

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %361, metadata !1601, metadata !DIExpression()), !dbg !1653
  %362 = icmp ult i64 %361, %130, !dbg !1984
  br i1 %362, label %363, label %365, !dbg !1987

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !1984
  store i8 36, ptr %364, align 1, !dbg !1984, !tbaa !835
  br label %365, !dbg !1984

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %366, metadata !1601, metadata !DIExpression()), !dbg !1653
  %367 = icmp ult i64 %366, %130, !dbg !1988
  br i1 %367, label %368, label %370, !dbg !1991

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !1988
  store i8 39, ptr %369, align 1, !dbg !1988, !tbaa !835
  br label %370, !dbg !1988

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %371, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1653
  br label %372, !dbg !1992

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1653
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %373, metadata !1601, metadata !DIExpression()), !dbg !1653
  %375 = icmp ult i64 %373, %130, !dbg !1993
  br i1 %375, label %376, label %378, !dbg !1996

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !1993
  store i8 92, ptr %377, align 1, !dbg !1993, !tbaa !835
  br label %378, !dbg !1993

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %379, metadata !1601, metadata !DIExpression()), !dbg !1653
  %380 = icmp ult i64 %379, %130, !dbg !1997
  br i1 %380, label %381, label %385, !dbg !2000

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !1997
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !1997
  store i8 %383, ptr %384, align 1, !dbg !1997, !tbaa !835
  br label %385, !dbg !1997

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %386, metadata !1601, metadata !DIExpression()), !dbg !1653
  %387 = icmp ult i64 %386, %130, !dbg !2001
  br i1 %387, label %388, label %393, !dbg !2004

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2001
  %391 = or i8 %390, 48, !dbg !2001
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2001
  store i8 %391, ptr %392, align 1, !dbg !2001, !tbaa !835
  br label %393, !dbg !2001

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %394, metadata !1601, metadata !DIExpression()), !dbg !1653
  %395 = and i8 %352, 7, !dbg !2005
  %396 = or i8 %395, 48, !dbg !2006
  call void @llvm.dbg.value(metadata i8 %396, metadata !1622, metadata !DIExpression()), !dbg !1751
  br label %404, !dbg !2007

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2008

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2009
  br i1 %399, label %400, label %402, !dbg !2014

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2009
  store i8 92, ptr %401, align 1, !dbg !2009, !tbaa !835
  br label %402, !dbg !2009

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %403, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1617, metadata !DIExpression()), !dbg !1751
  br label %404, !dbg !2015

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1653
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1751
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1751
  call void @llvm.dbg.value(metadata i8 %409, metadata !1622, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %408, metadata !1620, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %405, metadata !1601, metadata !DIExpression()), !dbg !1653
  %410 = add i64 %349, 1, !dbg !2016
  %411 = icmp ugt i64 %345, %410, !dbg !2018
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2019

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2020
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2020
  br i1 %415, label %416, label %427, !dbg !2020

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2023
  br i1 %417, label %418, label %420, !dbg !2027

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2023
  store i8 39, ptr %419, align 1, !dbg !2023, !tbaa !835
  br label %420, !dbg !2023

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %421, metadata !1601, metadata !DIExpression()), !dbg !1653
  %422 = icmp ult i64 %421, %130, !dbg !2028
  br i1 %422, label %423, label %425, !dbg !2031

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2028
  store i8 39, ptr %424, align 1, !dbg !2028, !tbaa !835
  br label %425, !dbg !2028

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %426, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1653
  br label %427, !dbg !2032

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2033
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %428, metadata !1601, metadata !DIExpression()), !dbg !1653
  %430 = icmp ult i64 %428, %130, !dbg !2034
  br i1 %430, label %431, label %433, !dbg !2037

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2034
  store i8 %409, ptr %432, align 1, !dbg !2034, !tbaa !835
  br label %433, !dbg !2034

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %434, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %410, metadata !1615, metadata !DIExpression()), !dbg !1742
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2038
  %436 = load i8, ptr %435, align 1, !dbg !2038, !tbaa !835
  call void @llvm.dbg.value(metadata i8 %436, metadata !1622, metadata !DIExpression()), !dbg !1751
  br label %346, !dbg !2039, !llvm.loop !2040

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1622, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i1 %340, metadata !1621, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %408, metadata !1620, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %349, metadata !1615, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %405, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %338, metadata !1594, metadata !DIExpression()), !dbg !1653
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2043
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1653
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1657
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1742
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1751
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %448, metadata !1622, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1620, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %445, metadata !1615, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %442, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %441, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %440, metadata !1594, metadata !DIExpression()), !dbg !1653
  br i1 %112, label %461, label %450, !dbg !2044

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
  br i1 %121, label %462, label %482, !dbg !2046

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2047

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
  %473 = lshr i8 %464, 5, !dbg !2048
  %474 = zext i8 %473 to i64, !dbg !2048
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2049
  %476 = load i32, ptr %475, align 4, !dbg !2049, !tbaa !826
  %477 = and i8 %464, 31, !dbg !2050
  %478 = zext i8 %477 to i32, !dbg !2050
  %479 = shl nuw i32 1, %478, !dbg !2051
  %480 = and i32 %476, %479, !dbg !2051
  %481 = icmp eq i32 %480, 0, !dbg !2051
  br i1 %481, label %482, label %493, !dbg !2052

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
  br i1 %154, label %493, label %529, !dbg !2053

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2043
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1653
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1657
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2054
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1751
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %501, metadata !1622, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %499, metadata !1615, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %496, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %495, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %494, metadata !1594, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1650), !dbg !2055
  br i1 %110, label %621, label %503, !dbg !2056

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1620, metadata !DIExpression()), !dbg !1751
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2058
  br i1 %504, label %521, label %505, !dbg !2058

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2060
  br i1 %506, label %507, label %509, !dbg !2064

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2060
  store i8 39, ptr %508, align 1, !dbg !2060, !tbaa !835
  br label %509, !dbg !2060

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %510, metadata !1601, metadata !DIExpression()), !dbg !1653
  %511 = icmp ult i64 %510, %502, !dbg !2065
  br i1 %511, label %512, label %514, !dbg !2068

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2065
  store i8 36, ptr %513, align 1, !dbg !2065, !tbaa !835
  br label %514, !dbg !2065

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %515, metadata !1601, metadata !DIExpression()), !dbg !1653
  %516 = icmp ult i64 %515, %502, !dbg !2069
  br i1 %516, label %517, label %519, !dbg !2072

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2069
  store i8 39, ptr %518, align 1, !dbg !2069, !tbaa !835
  br label %519, !dbg !2069

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %520, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1653
  br label %521, !dbg !2073

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1751
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %522, metadata !1601, metadata !DIExpression()), !dbg !1653
  %524 = icmp ult i64 %522, %502, !dbg !2074
  br i1 %524, label %525, label %527, !dbg !2077

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2074
  store i8 92, ptr %526, align 1, !dbg !2074, !tbaa !835
  br label %527, !dbg !2074

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %502, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %501, metadata !1622, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1620, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %499, metadata !1615, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %496, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %528, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %494, metadata !1594, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1651), !dbg !2078
  br label %553, !dbg !2079

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2043
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1653
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1657
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2054
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2082
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %538, metadata !1622, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 poison, metadata !1620, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %535, metadata !1615, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %532, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %531, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %530, metadata !1594, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1651), !dbg !2078
  %540 = xor i1 %534, true, !dbg !2079
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2079
  br i1 %541, label %553, label %542, !dbg !2079

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2083
  br i1 %543, label %544, label %546, !dbg !2087

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2083
  store i8 39, ptr %545, align 1, !dbg !2083, !tbaa !835
  br label %546, !dbg !2083

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %547, metadata !1601, metadata !DIExpression()), !dbg !1653
  %548 = icmp ult i64 %547, %539, !dbg !2088
  br i1 %548, label %549, label %551, !dbg !2091

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2088
  store i8 39, ptr %550, align 1, !dbg !2088, !tbaa !835
  br label %551, !dbg !2088

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %552, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1653
  br label %553, !dbg !2092

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1751
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %561, metadata !1601, metadata !DIExpression()), !dbg !1653
  %563 = icmp ult i64 %561, %554, !dbg !2093
  br i1 %563, label %564, label %566, !dbg !2096

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2093
  store i8 %555, ptr %565, align 1, !dbg !2093, !tbaa !835
  br label %566, !dbg !2093

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %567, metadata !1601, metadata !DIExpression()), !dbg !1653
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2097
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1653
  br label %569, !dbg !2098

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2043
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1653
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1657
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2054
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %576, metadata !1615, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %572, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %571, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %570, metadata !1594, metadata !DIExpression()), !dbg !1653
  %578 = add i64 %576, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %578, metadata !1615, metadata !DIExpression()), !dbg !1742
  br label %122, !dbg !2100, !llvm.loop !2101

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1592, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1653
  %580 = icmp ne i64 %124, 0, !dbg !2103
  %581 = xor i1 %110, true, !dbg !2105
  %582 = or i1 %580, %581, !dbg !2105
  %583 = or i1 %582, %111, !dbg !2105
  br i1 %583, label %584, label %621, !dbg !2105

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2106
  %586 = xor i1 %126, true, !dbg !2106
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2106
  br i1 %587, label %595, label %588, !dbg !2106

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2108

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2110
  br label %636, !dbg !2112

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2113
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2115
  br i1 %594, label %27, label %595, !dbg !2115

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2116
  %598 = or i1 %597, %596, !dbg !2118
  br i1 %598, label %614, label %599, !dbg !2118

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1601, metadata !DIExpression()), !dbg !1653
  %600 = load i8, ptr %107, align 1, !dbg !2119, !tbaa !835
  %601 = icmp eq i8 %600, 0, !dbg !2122
  br i1 %601, label %614, label %602, !dbg !2122

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %605, metadata !1601, metadata !DIExpression()), !dbg !1653
  %606 = icmp ult i64 %605, %130, !dbg !2123
  br i1 %606, label %607, label %609, !dbg !2126

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2123
  store i8 %603, ptr %608, align 1, !dbg !2123, !tbaa !835
  br label %609, !dbg !2123

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %610, metadata !1601, metadata !DIExpression()), !dbg !1653
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2127
  call void @llvm.dbg.value(metadata ptr %611, metadata !1603, metadata !DIExpression()), !dbg !1653
  %612 = load i8, ptr %611, align 1, !dbg !2119, !tbaa !835
  %613 = icmp eq i8 %612, 0, !dbg !2122
  br i1 %613, label %614, label %602, !dbg !2122, !llvm.loop !2128

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1729
  call void @llvm.dbg.value(metadata i64 %615, metadata !1601, metadata !DIExpression()), !dbg !1653
  %616 = icmp ult i64 %615, %130, !dbg !2130
  br i1 %616, label %617, label %636, !dbg !2132

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2133
  store i8 0, ptr %618, align 1, !dbg !2134, !tbaa !835
  br label %636, !dbg !2133

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1652), !dbg !1959
  %620 = icmp eq i32 %103, 2, !dbg !2135
  br i1 %620, label %626, label %630, !dbg !1960

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1652), !dbg !1959
  %624 = icmp eq i32 %103, 2, !dbg !2135
  %625 = select i1 %109, i32 4, i32 2, !dbg !1960
  br i1 %624, label %626, label %630, !dbg !1960

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1960

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1595, metadata !DIExpression()), !dbg !1653
  %634 = and i32 %5, -3, !dbg !2136
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2137
  br label %636, !dbg !2138

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2139
}

; Function Attrs: nounwind
declare !dbg !2140 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2143 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2146 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2148 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2152, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %1, metadata !2153, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata ptr %2, metadata !2154, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata ptr %0, metadata !2156, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %1, metadata !2161, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata ptr null, metadata !2162, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata ptr %2, metadata !2163, metadata !DIExpression()), !dbg !2169
  %4 = icmp eq ptr %2, null, !dbg !2171
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2171
  call void @llvm.dbg.value(metadata ptr %5, metadata !2164, metadata !DIExpression()), !dbg !2169
  %6 = tail call ptr @__errno_location() #39, !dbg !2172
  %7 = load i32, ptr %6, align 4, !dbg !2172, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %7, metadata !2165, metadata !DIExpression()), !dbg !2169
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2173
  %9 = load i32, ptr %8, align 4, !dbg !2173, !tbaa !1535
  %10 = or i32 %9, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %10, metadata !2166, metadata !DIExpression()), !dbg !2169
  %11 = load i32, ptr %5, align 8, !dbg !2175, !tbaa !1485
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2176
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2177
  %14 = load ptr, ptr %13, align 8, !dbg !2177, !tbaa !1556
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2178
  %16 = load ptr, ptr %15, align 8, !dbg !2178, !tbaa !1559
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2179
  %18 = add i64 %17, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %18, metadata !2167, metadata !DIExpression()), !dbg !2169
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %19, metadata !2168, metadata !DIExpression()), !dbg !2169
  %20 = load i32, ptr %5, align 8, !dbg !2182, !tbaa !1485
  %21 = load ptr, ptr %13, align 8, !dbg !2183, !tbaa !1556
  %22 = load ptr, ptr %15, align 8, !dbg !2184, !tbaa !1559
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2185
  store i32 %7, ptr %6, align 4, !dbg !2186, !tbaa !826
  ret ptr %19, !dbg !2187
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2157 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2156, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i64 %1, metadata !2161, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata ptr %2, metadata !2162, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata ptr %3, metadata !2163, metadata !DIExpression()), !dbg !2188
  %5 = icmp eq ptr %3, null, !dbg !2189
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2189
  call void @llvm.dbg.value(metadata ptr %6, metadata !2164, metadata !DIExpression()), !dbg !2188
  %7 = tail call ptr @__errno_location() #39, !dbg !2190
  %8 = load i32, ptr %7, align 4, !dbg !2190, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %8, metadata !2165, metadata !DIExpression()), !dbg !2188
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2191
  %10 = load i32, ptr %9, align 4, !dbg !2191, !tbaa !1535
  %11 = icmp eq ptr %2, null, !dbg !2192
  %12 = zext i1 %11 to i32, !dbg !2192
  %13 = or i32 %10, %12, !dbg !2193
  call void @llvm.dbg.value(metadata i32 %13, metadata !2166, metadata !DIExpression()), !dbg !2188
  %14 = load i32, ptr %6, align 8, !dbg !2194, !tbaa !1485
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2195
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2196
  %17 = load ptr, ptr %16, align 8, !dbg !2196, !tbaa !1556
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2197
  %19 = load ptr, ptr %18, align 8, !dbg !2197, !tbaa !1559
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2198
  %21 = add i64 %20, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %21, metadata !2167, metadata !DIExpression()), !dbg !2188
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2200
  call void @llvm.dbg.value(metadata ptr %22, metadata !2168, metadata !DIExpression()), !dbg !2188
  %23 = load i32, ptr %6, align 8, !dbg !2201, !tbaa !1485
  %24 = load ptr, ptr %16, align 8, !dbg !2202, !tbaa !1556
  %25 = load ptr, ptr %18, align 8, !dbg !2203, !tbaa !1559
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2204
  store i32 %8, ptr %7, align 4, !dbg !2205, !tbaa !826
  br i1 %11, label %28, label %27, !dbg !2206

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2207, !tbaa !2209
  br label %28, !dbg !2210

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2211
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2212 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2217, !tbaa !768
  call void @llvm.dbg.value(metadata ptr %1, metadata !2214, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 1, metadata !2215, metadata !DIExpression()), !dbg !2219
  %2 = load i32, ptr @nslots, align 4, !tbaa !826
  call void @llvm.dbg.value(metadata i32 1, metadata !2215, metadata !DIExpression()), !dbg !2219
  %3 = icmp sgt i32 %2, 1, !dbg !2220
  br i1 %3, label %4, label %6, !dbg !2222

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2220
  br label %10, !dbg !2222

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2223
  %8 = load ptr, ptr %7, align 8, !dbg !2223, !tbaa !2225
  %9 = icmp eq ptr %8, @slot0, !dbg !2227
  br i1 %9, label %17, label %16, !dbg !2228

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2215, metadata !DIExpression()), !dbg !2219
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2229
  %13 = load ptr, ptr %12, align 8, !dbg !2229, !tbaa !2225
  tail call void @free(ptr noundef %13) #36, !dbg !2230
  %14 = add nuw nsw i64 %11, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %14, metadata !2215, metadata !DIExpression()), !dbg !2219
  %15 = icmp eq i64 %14, %5, !dbg !2220
  br i1 %15, label %6, label %10, !dbg !2222, !llvm.loop !2232

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2234
  store i64 256, ptr @slotvec0, align 8, !dbg !2236, !tbaa !2237
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2238, !tbaa !2225
  br label %17, !dbg !2239

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2240
  br i1 %18, label %20, label %19, !dbg !2242

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2243
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2245, !tbaa !768
  br label %20, !dbg !2246

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2247, !tbaa !826
  ret void, !dbg !2248
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2249 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata ptr %1, metadata !2255, metadata !DIExpression()), !dbg !2256
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2257
  ret ptr %3, !dbg !2258
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2259 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2263, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata ptr %1, metadata !2264, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i64 %2, metadata !2265, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata ptr %3, metadata !2266, metadata !DIExpression()), !dbg !2279
  %6 = tail call ptr @__errno_location() #39, !dbg !2280
  %7 = load i32, ptr %6, align 4, !dbg !2280, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %7, metadata !2267, metadata !DIExpression()), !dbg !2279
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2281, !tbaa !768
  call void @llvm.dbg.value(metadata ptr %8, metadata !2268, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2269, metadata !DIExpression()), !dbg !2279
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2282
  br i1 %9, label %10, label %11, !dbg !2282

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2284
  unreachable, !dbg !2284

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2285, !tbaa !826
  %13 = icmp sgt i32 %12, %0, !dbg !2286
  br i1 %13, label %32, label %14, !dbg !2287

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2288
  call void @llvm.dbg.value(metadata i1 %15, metadata !2270, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2289
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2290
  %16 = sext i32 %12 to i64, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %16, metadata !2273, metadata !DIExpression()), !dbg !2289
  store i64 %16, ptr %5, align 8, !dbg !2292, !tbaa !2209
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2293
  %18 = add nuw nsw i32 %0, 1, !dbg !2294
  %19 = sub i32 %18, %12, !dbg !2295
  %20 = sext i32 %19 to i64, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %5, metadata !2273, metadata !DIExpression(DW_OP_deref)), !dbg !2289
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2297
  call void @llvm.dbg.value(metadata ptr %21, metadata !2268, metadata !DIExpression()), !dbg !2279
  store ptr %21, ptr @slotvec, align 8, !dbg !2298, !tbaa !768
  br i1 %15, label %22, label %23, !dbg !2299

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2300, !tbaa.struct !2302
  br label %23, !dbg !2303

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2304, !tbaa !826
  %25 = sext i32 %24 to i64, !dbg !2305
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2305
  %27 = load i64, ptr %5, align 8, !dbg !2306, !tbaa !2209
  call void @llvm.dbg.value(metadata i64 %27, metadata !2273, metadata !DIExpression()), !dbg !2289
  %28 = sub nsw i64 %27, %25, !dbg !2307
  %29 = shl i64 %28, 4, !dbg !2308
  call void @llvm.dbg.value(metadata ptr %26, metadata !1687, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %29, metadata !1691, metadata !DIExpression()), !dbg !2309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2311
  %30 = load i64, ptr %5, align 8, !dbg !2312, !tbaa !2209
  call void @llvm.dbg.value(metadata i64 %30, metadata !2273, metadata !DIExpression()), !dbg !2289
  %31 = trunc i64 %30 to i32, !dbg !2312
  store i32 %31, ptr @nslots, align 4, !dbg !2313, !tbaa !826
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2314
  br label %32, !dbg !2315

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2279
  call void @llvm.dbg.value(metadata ptr %33, metadata !2268, metadata !DIExpression()), !dbg !2279
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2316
  %36 = load i64, ptr %35, align 8, !dbg !2317, !tbaa !2237
  call void @llvm.dbg.value(metadata i64 %36, metadata !2274, metadata !DIExpression()), !dbg !2318
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2319
  %38 = load ptr, ptr %37, align 8, !dbg !2319, !tbaa !2225
  call void @llvm.dbg.value(metadata ptr %38, metadata !2276, metadata !DIExpression()), !dbg !2318
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2320
  %40 = load i32, ptr %39, align 4, !dbg !2320, !tbaa !1535
  %41 = or i32 %40, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i32 %41, metadata !2277, metadata !DIExpression()), !dbg !2318
  %42 = load i32, ptr %3, align 8, !dbg !2322, !tbaa !1485
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2323
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2324
  %45 = load ptr, ptr %44, align 8, !dbg !2324, !tbaa !1556
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2325
  %47 = load ptr, ptr %46, align 8, !dbg !2325, !tbaa !1559
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %48, metadata !2278, metadata !DIExpression()), !dbg !2318
  %49 = icmp ugt i64 %36, %48, !dbg !2327
  br i1 %49, label %60, label %50, !dbg !2329

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %51, metadata !2274, metadata !DIExpression()), !dbg !2318
  store i64 %51, ptr %35, align 8, !dbg !2332, !tbaa !2237
  %52 = icmp eq ptr %38, @slot0, !dbg !2333
  br i1 %52, label %54, label %53, !dbg !2335

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2336
  br label %54, !dbg !2336

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2337
  call void @llvm.dbg.value(metadata ptr %55, metadata !2276, metadata !DIExpression()), !dbg !2318
  store ptr %55, ptr %37, align 8, !dbg !2338, !tbaa !2225
  %56 = load i32, ptr %3, align 8, !dbg !2339, !tbaa !1485
  %57 = load ptr, ptr %44, align 8, !dbg !2340, !tbaa !1556
  %58 = load ptr, ptr %46, align 8, !dbg !2341, !tbaa !1559
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2342
  br label %60, !dbg !2343

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2318
  call void @llvm.dbg.value(metadata ptr %61, metadata !2276, metadata !DIExpression()), !dbg !2318
  store i32 %7, ptr %6, align 4, !dbg !2344, !tbaa !826
  ret ptr %61, !dbg !2345
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2346 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2350, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata ptr %1, metadata !2351, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %2, metadata !2352, metadata !DIExpression()), !dbg !2353
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2354
  ret ptr %4, !dbg !2355
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata ptr %0, metadata !2255, metadata !DIExpression()), !dbg !2360
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2362
  ret ptr %2, !dbg !2363
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2364 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i64 %1, metadata !2369, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 0, metadata !2350, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %0, metadata !2351, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %1, metadata !2352, metadata !DIExpression()), !dbg !2371
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2373
  ret ptr %3, !dbg !2374
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2375 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %1, metadata !2380, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata ptr %2, metadata !2381, metadata !DIExpression()), !dbg !2383
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2384
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2382, metadata !DIExpression()), !dbg !2385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2386), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2395, metadata !DIExpression()), !dbg !2398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2398, !alias.scope !2386
  %5 = icmp eq i32 %1, 10, !dbg !2399
  br i1 %5, label %6, label %7, !dbg !2401

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2402, !noalias !2386
  unreachable, !dbg !2402

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2403, !tbaa !1485, !alias.scope !2386
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2404
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2405
  ret ptr %8, !dbg !2406
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2407 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2411, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata ptr %2, metadata !2413, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 %3, metadata !2414, metadata !DIExpression()), !dbg !2416
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2417
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2415, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2395, metadata !DIExpression()), !dbg !2425
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2425, !alias.scope !2419
  %6 = icmp eq i32 %1, 10, !dbg !2426
  br i1 %6, label %7, label %8, !dbg !2427

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2428, !noalias !2419
  unreachable, !dbg !2428

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2429, !tbaa !1485, !alias.scope !2419
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2430
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2431
  ret ptr %9, !dbg !2432
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2433 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2437, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata ptr %1, metadata !2438, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 0, metadata !2379, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata ptr %1, metadata !2381, metadata !DIExpression()), !dbg !2440
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2442
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2382, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444), !dbg !2447
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2395, metadata !DIExpression()), !dbg !2450
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2450, !alias.scope !2444
  %4 = icmp eq i32 %0, 10, !dbg !2451
  br i1 %4, label %5, label %6, !dbg !2452

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2453, !noalias !2444
  unreachable, !dbg !2453

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2454, !tbaa !1485, !alias.scope !2444
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2455
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2456
  ret ptr %7, !dbg !2457
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2458 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2462, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata ptr %1, metadata !2463, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %2, metadata !2464, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata ptr %1, metadata !2413, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %2, metadata !2414, metadata !DIExpression()), !dbg !2466
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2468
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2415, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2395, metadata !DIExpression()), !dbg !2476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2476, !alias.scope !2470
  %5 = icmp eq i32 %0, 10, !dbg !2477
  br i1 %5, label %6, label %7, !dbg !2478

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2479, !noalias !2470
  unreachable, !dbg !2479

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2480, !tbaa !1485, !alias.scope !2470
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2481
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2482
  ret ptr %8, !dbg !2483
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2484 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2488, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %1, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 %2, metadata !2490, metadata !DIExpression()), !dbg !2492
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2493
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2495, !tbaa.struct !2496
  call void @llvm.dbg.value(metadata ptr %4, metadata !1502, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 %2, metadata !1503, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 1, metadata !1504, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 %2, metadata !1505, metadata !DIExpression()), !dbg !2497
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2499
  %6 = lshr i8 %2, 5, !dbg !2500
  %7 = zext i8 %6 to i64, !dbg !2500
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2501
  call void @llvm.dbg.value(metadata ptr %8, metadata !1506, metadata !DIExpression()), !dbg !2497
  %9 = and i8 %2, 31, !dbg !2502
  %10 = zext i8 %9 to i32, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %10, metadata !1508, metadata !DIExpression()), !dbg !2497
  %11 = load i32, ptr %8, align 4, !dbg !2503, !tbaa !826
  %12 = lshr i32 %11, %10, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %12, metadata !1509, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2497
  %13 = and i32 %12, 1, !dbg !2505
  %14 = xor i32 %13, 1, !dbg !2505
  %15 = shl nuw i32 %14, %10, !dbg !2506
  %16 = xor i32 %15, %11, !dbg !2507
  store i32 %16, ptr %8, align 4, !dbg !2507, !tbaa !826
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2508
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2509
  ret ptr %17, !dbg !2510
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2511 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2515, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 %1, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata ptr %0, metadata !2488, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i64 -1, metadata !2489, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 %1, metadata !2490, metadata !DIExpression()), !dbg !2518
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2520
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2491, metadata !DIExpression()), !dbg !2521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2522, !tbaa.struct !2496
  call void @llvm.dbg.value(metadata ptr %3, metadata !1502, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8 %1, metadata !1503, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 1, metadata !1504, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8 %1, metadata !1505, metadata !DIExpression()), !dbg !2523
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2525
  %5 = lshr i8 %1, 5, !dbg !2526
  %6 = zext i8 %5 to i64, !dbg !2526
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2527
  call void @llvm.dbg.value(metadata ptr %7, metadata !1506, metadata !DIExpression()), !dbg !2523
  %8 = and i8 %1, 31, !dbg !2528
  %9 = zext i8 %8 to i32, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %9, metadata !1508, metadata !DIExpression()), !dbg !2523
  %10 = load i32, ptr %7, align 4, !dbg !2529, !tbaa !826
  %11 = lshr i32 %10, %9, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %11, metadata !1509, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2523
  %12 = and i32 %11, 1, !dbg !2531
  %13 = xor i32 %12, 1, !dbg !2531
  %14 = shl nuw i32 %13, %9, !dbg !2532
  %15 = xor i32 %14, %10, !dbg !2533
  store i32 %15, ptr %7, align 4, !dbg !2533, !tbaa !826
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2534
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2535
  ret ptr %16, !dbg !2536
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2537 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata ptr %0, metadata !2515, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 58, metadata !2516, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata ptr %0, metadata !2488, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 -1, metadata !2489, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 58, metadata !2490, metadata !DIExpression()), !dbg !2543
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2545
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2491, metadata !DIExpression()), !dbg !2546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2547, !tbaa.struct !2496
  call void @llvm.dbg.value(metadata ptr %2, metadata !1502, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8 58, metadata !1503, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 1, metadata !1504, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8 58, metadata !1505, metadata !DIExpression()), !dbg !2548
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2550
  call void @llvm.dbg.value(metadata ptr %3, metadata !1506, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 26, metadata !1508, metadata !DIExpression()), !dbg !2548
  %4 = load i32, ptr %3, align 4, !dbg !2551, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %4, metadata !1509, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2548
  %5 = or i32 %4, 67108864, !dbg !2552
  store i32 %5, ptr %3, align 4, !dbg !2552, !tbaa !826
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2553
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2554
  ret ptr %6, !dbg !2555
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2556 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2558, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %1, metadata !2559, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %0, metadata !2488, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %1, metadata !2489, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 58, metadata !2490, metadata !DIExpression()), !dbg !2561
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2563
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2491, metadata !DIExpression()), !dbg !2564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2565, !tbaa.struct !2496
  call void @llvm.dbg.value(metadata ptr %3, metadata !1502, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 58, metadata !1503, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 1, metadata !1504, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 58, metadata !1505, metadata !DIExpression()), !dbg !2566
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2568
  call void @llvm.dbg.value(metadata ptr %4, metadata !1506, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 26, metadata !1508, metadata !DIExpression()), !dbg !2566
  %5 = load i32, ptr %4, align 4, !dbg !2569, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %5, metadata !1509, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2566
  %6 = or i32 %5, 67108864, !dbg !2570
  store i32 %6, ptr %4, align 4, !dbg !2570, !tbaa !826
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2571
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2572
  ret ptr %7, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2574 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2395, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %0, metadata !2576, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %1, metadata !2577, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %2, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2583
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2579, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2585
  %5 = icmp eq i32 %1, 10, !dbg !2586
  br i1 %5, label %6, label %7, !dbg !2587

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2588, !noalias !2589
  unreachable, !dbg !2588

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2395, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2585
  store i32 %1, ptr %4, align 8, !dbg !2592, !tbaa.struct !2496
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %4, metadata !1502, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 58, metadata !1503, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i32 1, metadata !1504, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 58, metadata !1505, metadata !DIExpression()), !dbg !2593
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2595
  call void @llvm.dbg.value(metadata ptr %9, metadata !1506, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i32 26, metadata !1508, metadata !DIExpression()), !dbg !2593
  %10 = load i32, ptr %9, align 4, !dbg !2596, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %10, metadata !1509, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2593
  %11 = or i32 %10, 67108864, !dbg !2597
  store i32 %11, ptr %9, align 4, !dbg !2597, !tbaa !826
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2598
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2599
  ret ptr %12, !dbg !2600
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2601 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2605, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %1, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %2, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %3, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %0, metadata !2610, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %1, metadata !2615, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %2, metadata !2616, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %3, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 -1, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2619, metadata !DIExpression()), !dbg !2623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2624, !tbaa.struct !2496
  call void @llvm.dbg.value(metadata ptr %5, metadata !1542, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %1, metadata !1543, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %2, metadata !1544, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %5, metadata !1542, metadata !DIExpression()), !dbg !2625
  store i32 10, ptr %5, align 8, !dbg !2627, !tbaa !1485
  %6 = icmp ne ptr %1, null, !dbg !2628
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2629
  br i1 %8, label %10, label %9, !dbg !2629

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2630
  unreachable, !dbg !2630

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2631
  store ptr %1, ptr %11, align 8, !dbg !2632, !tbaa !1556
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2633
  store ptr %2, ptr %12, align 8, !dbg !2634, !tbaa !1559
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2635
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2636
  ret ptr %13, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2611 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2610, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %1, metadata !2615, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %2, metadata !2616, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %3, metadata !2617, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i64 %4, metadata !2618, metadata !DIExpression()), !dbg !2638
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2619, metadata !DIExpression()), !dbg !2640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2641, !tbaa.struct !2496
  call void @llvm.dbg.value(metadata ptr %6, metadata !1542, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %1, metadata !1543, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %2, metadata !1544, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %6, metadata !1542, metadata !DIExpression()), !dbg !2642
  store i32 10, ptr %6, align 8, !dbg !2644, !tbaa !1485
  %7 = icmp ne ptr %1, null, !dbg !2645
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2646
  br i1 %9, label %11, label %10, !dbg !2646

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2647
  unreachable, !dbg !2647

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2648
  store ptr %1, ptr %12, align 8, !dbg !2649, !tbaa !1556
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2650
  store ptr %2, ptr %13, align 8, !dbg !2651, !tbaa !1559
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2652
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2653
  ret ptr %14, !dbg !2654
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2655 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2659, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %1, metadata !2660, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %2, metadata !2661, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 0, metadata !2605, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %0, metadata !2606, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %1, metadata !2607, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %2, metadata !2608, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2610, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %0, metadata !2615, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %1, metadata !2616, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 -1, metadata !2618, metadata !DIExpression()), !dbg !2665
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2667
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2619, metadata !DIExpression()), !dbg !2668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2669, !tbaa.struct !2496
  call void @llvm.dbg.value(metadata ptr %4, metadata !1542, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %4, metadata !1542, metadata !DIExpression()), !dbg !2670
  store i32 10, ptr %4, align 8, !dbg !2672, !tbaa !1485
  %5 = icmp ne ptr %0, null, !dbg !2673
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2674
  br i1 %7, label %9, label %8, !dbg !2674

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2675
  unreachable, !dbg !2675

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2676
  store ptr %0, ptr %10, align 8, !dbg !2677, !tbaa !1556
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2678
  store ptr %1, ptr %11, align 8, !dbg !2679, !tbaa !1559
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2680
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2681
  ret ptr %12, !dbg !2682
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2683 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %1, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %2, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %3, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2610, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %0, metadata !2615, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %1, metadata !2616, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %3, metadata !2618, metadata !DIExpression()), !dbg !2692
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2619, metadata !DIExpression()), !dbg !2695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2696, !tbaa.struct !2496
  call void @llvm.dbg.value(metadata ptr %5, metadata !1542, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %5, metadata !1542, metadata !DIExpression()), !dbg !2697
  store i32 10, ptr %5, align 8, !dbg !2699, !tbaa !1485
  %6 = icmp ne ptr %0, null, !dbg !2700
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2701
  br i1 %8, label %10, label %9, !dbg !2701

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2702
  unreachable, !dbg !2702

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2703
  store ptr %0, ptr %11, align 8, !dbg !2704, !tbaa !1556
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2705
  store ptr %1, ptr %12, align 8, !dbg !2706, !tbaa !1559
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2707
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2708
  ret ptr %13, !dbg !2709
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2710 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2714, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %1, metadata !2715, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %2, metadata !2716, metadata !DIExpression()), !dbg !2717
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2718
  ret ptr %4, !dbg !2719
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2720 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2724, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 %1, metadata !2725, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %0, metadata !2715, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %1, metadata !2716, metadata !DIExpression()), !dbg !2727
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2729
  ret ptr %3, !dbg !2730
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %1, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 %0, metadata !2714, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %1, metadata !2715, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 -1, metadata !2716, metadata !DIExpression()), !dbg !2738
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2740
  ret ptr %3, !dbg !2741
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2742 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 0, metadata !2735, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata ptr %0, metadata !2736, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %0, metadata !2715, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 -1, metadata !2716, metadata !DIExpression()), !dbg !2750
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2752
  ret ptr %2, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2754 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2793, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata ptr %1, metadata !2794, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata ptr %2, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata ptr %3, metadata !2796, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata ptr %4, metadata !2797, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %5, metadata !2798, metadata !DIExpression()), !dbg !2799
  %7 = icmp eq ptr %1, null, !dbg !2800
  br i1 %7, label %10, label %8, !dbg !2802

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2803
  br label %12, !dbg !2803

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.70, ptr noundef %2, ptr noundef %3) #36, !dbg !2804
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.3.72, i32 noundef 5) #36, !dbg !2805
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2805
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %0), !dbg !2806
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.5.74, i32 noundef 5) #36, !dbg !2807
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.75) #36, !dbg !2807
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %0), !dbg !2808
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
  ], !dbg !2809

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.7.76, i32 noundef 5) #36, !dbg !2810
  %21 = load ptr, ptr %4, align 8, !dbg !2810, !tbaa !768
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2810
  br label %147, !dbg !2812

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.8.77, i32 noundef 5) #36, !dbg !2813
  %25 = load ptr, ptr %4, align 8, !dbg !2813, !tbaa !768
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2813
  %27 = load ptr, ptr %26, align 8, !dbg !2813, !tbaa !768
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2813
  br label %147, !dbg !2814

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.9.78, i32 noundef 5) #36, !dbg !2815
  %31 = load ptr, ptr %4, align 8, !dbg !2815, !tbaa !768
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2815
  %33 = load ptr, ptr %32, align 8, !dbg !2815, !tbaa !768
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2815
  %35 = load ptr, ptr %34, align 8, !dbg !2815, !tbaa !768
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2815
  br label %147, !dbg !2816

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.10.79, i32 noundef 5) #36, !dbg !2817
  %39 = load ptr, ptr %4, align 8, !dbg !2817, !tbaa !768
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2817
  %41 = load ptr, ptr %40, align 8, !dbg !2817, !tbaa !768
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2817
  %43 = load ptr, ptr %42, align 8, !dbg !2817, !tbaa !768
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2817
  %45 = load ptr, ptr %44, align 8, !dbg !2817, !tbaa !768
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2817
  br label %147, !dbg !2818

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.11.80, i32 noundef 5) #36, !dbg !2819
  %49 = load ptr, ptr %4, align 8, !dbg !2819, !tbaa !768
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2819
  %51 = load ptr, ptr %50, align 8, !dbg !2819, !tbaa !768
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2819
  %53 = load ptr, ptr %52, align 8, !dbg !2819, !tbaa !768
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2819
  %55 = load ptr, ptr %54, align 8, !dbg !2819, !tbaa !768
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2819
  %57 = load ptr, ptr %56, align 8, !dbg !2819, !tbaa !768
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2819
  br label %147, !dbg !2820

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.12.81, i32 noundef 5) #36, !dbg !2821
  %61 = load ptr, ptr %4, align 8, !dbg !2821, !tbaa !768
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2821
  %63 = load ptr, ptr %62, align 8, !dbg !2821, !tbaa !768
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2821
  %65 = load ptr, ptr %64, align 8, !dbg !2821, !tbaa !768
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2821
  %67 = load ptr, ptr %66, align 8, !dbg !2821, !tbaa !768
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2821
  %69 = load ptr, ptr %68, align 8, !dbg !2821, !tbaa !768
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2821
  %71 = load ptr, ptr %70, align 8, !dbg !2821, !tbaa !768
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2821
  br label %147, !dbg !2822

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.13.82, i32 noundef 5) #36, !dbg !2823
  %75 = load ptr, ptr %4, align 8, !dbg !2823, !tbaa !768
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2823
  %77 = load ptr, ptr %76, align 8, !dbg !2823, !tbaa !768
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2823
  %79 = load ptr, ptr %78, align 8, !dbg !2823, !tbaa !768
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2823
  %81 = load ptr, ptr %80, align 8, !dbg !2823, !tbaa !768
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2823
  %83 = load ptr, ptr %82, align 8, !dbg !2823, !tbaa !768
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2823
  %85 = load ptr, ptr %84, align 8, !dbg !2823, !tbaa !768
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2823
  %87 = load ptr, ptr %86, align 8, !dbg !2823, !tbaa !768
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2823
  br label %147, !dbg !2824

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.14.83, i32 noundef 5) #36, !dbg !2825
  %91 = load ptr, ptr %4, align 8, !dbg !2825, !tbaa !768
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2825
  %93 = load ptr, ptr %92, align 8, !dbg !2825, !tbaa !768
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2825
  %95 = load ptr, ptr %94, align 8, !dbg !2825, !tbaa !768
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2825
  %97 = load ptr, ptr %96, align 8, !dbg !2825, !tbaa !768
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2825
  %99 = load ptr, ptr %98, align 8, !dbg !2825, !tbaa !768
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2825
  %101 = load ptr, ptr %100, align 8, !dbg !2825, !tbaa !768
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2825
  %103 = load ptr, ptr %102, align 8, !dbg !2825, !tbaa !768
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2825
  %105 = load ptr, ptr %104, align 8, !dbg !2825, !tbaa !768
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2825
  br label %147, !dbg !2826

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.15.84, i32 noundef 5) #36, !dbg !2827
  %109 = load ptr, ptr %4, align 8, !dbg !2827, !tbaa !768
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2827
  %111 = load ptr, ptr %110, align 8, !dbg !2827, !tbaa !768
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2827
  %113 = load ptr, ptr %112, align 8, !dbg !2827, !tbaa !768
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2827
  %115 = load ptr, ptr %114, align 8, !dbg !2827, !tbaa !768
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2827
  %117 = load ptr, ptr %116, align 8, !dbg !2827, !tbaa !768
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2827
  %119 = load ptr, ptr %118, align 8, !dbg !2827, !tbaa !768
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2827
  %121 = load ptr, ptr %120, align 8, !dbg !2827, !tbaa !768
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2827
  %123 = load ptr, ptr %122, align 8, !dbg !2827, !tbaa !768
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2827
  %125 = load ptr, ptr %124, align 8, !dbg !2827, !tbaa !768
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2827
  br label %147, !dbg !2828

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.16.85, i32 noundef 5) #36, !dbg !2829
  %129 = load ptr, ptr %4, align 8, !dbg !2829, !tbaa !768
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2829
  %131 = load ptr, ptr %130, align 8, !dbg !2829, !tbaa !768
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2829
  %133 = load ptr, ptr %132, align 8, !dbg !2829, !tbaa !768
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2829
  %135 = load ptr, ptr %134, align 8, !dbg !2829, !tbaa !768
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2829
  %137 = load ptr, ptr %136, align 8, !dbg !2829, !tbaa !768
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2829
  %139 = load ptr, ptr %138, align 8, !dbg !2829, !tbaa !768
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2829
  %141 = load ptr, ptr %140, align 8, !dbg !2829, !tbaa !768
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2829
  %143 = load ptr, ptr %142, align 8, !dbg !2829, !tbaa !768
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2829
  %145 = load ptr, ptr %144, align 8, !dbg !2829, !tbaa !768
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2829
  br label %147, !dbg !2830

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2831
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2832 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2836, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %1, metadata !2837, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %2, metadata !2838, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %3, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %4, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 0, metadata !2841, metadata !DIExpression()), !dbg !2842
  br label %6, !dbg !2843

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2845
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2842
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2846
  %9 = load ptr, ptr %8, align 8, !dbg !2846, !tbaa !768
  %10 = icmp eq ptr %9, null, !dbg !2848
  %11 = add i64 %7, 1, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %11, metadata !2841, metadata !DIExpression()), !dbg !2842
  br i1 %10, label %12, label %6, !dbg !2848, !llvm.loop !2850

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2852
  ret void, !dbg !2853
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2854 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2869, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %1, metadata !2870, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %2, metadata !2871, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %3, metadata !2872, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2873, metadata !DIExpression()), !dbg !2878
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2879
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2875, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 0, metadata !2874, metadata !DIExpression()), !dbg !2877
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2874, metadata !DIExpression()), !dbg !2877
  %10 = icmp sgt i32 %9, -1, !dbg !2881
  br i1 %10, label %18, label %11, !dbg !2881

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2881
  store i32 %12, ptr %7, align 8, !dbg !2881
  %13 = icmp ult i32 %9, -7, !dbg !2881
  br i1 %13, label %14, label %18, !dbg !2881

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2881
  %16 = sext i32 %9 to i64, !dbg !2881
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2881
  br label %22, !dbg !2881

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2881
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2881
  store ptr %21, ptr %4, align 8, !dbg !2881
  br label %22, !dbg !2881

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2881
  %25 = load ptr, ptr %24, align 8, !dbg !2881
  store ptr %25, ptr %6, align 8, !dbg !2884, !tbaa !768
  %26 = icmp eq ptr %25, null, !dbg !2885
  br i1 %26, label %197, label %27, !dbg !2886

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 1, metadata !2874, metadata !DIExpression()), !dbg !2877
  %28 = icmp sgt i32 %23, -1, !dbg !2881
  br i1 %28, label %36, label %29, !dbg !2881

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2881
  store i32 %30, ptr %7, align 8, !dbg !2881
  %31 = icmp ult i32 %23, -7, !dbg !2881
  br i1 %31, label %32, label %36, !dbg !2881

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2881
  %34 = sext i32 %23 to i64, !dbg !2881
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2881
  br label %40, !dbg !2881

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2881
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2881
  store ptr %39, ptr %4, align 8, !dbg !2881
  br label %40, !dbg !2881

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2881
  %43 = load ptr, ptr %42, align 8, !dbg !2881
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2887
  store ptr %43, ptr %44, align 8, !dbg !2884, !tbaa !768
  %45 = icmp eq ptr %43, null, !dbg !2885
  br i1 %45, label %197, label %46, !dbg !2886

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 2, metadata !2874, metadata !DIExpression()), !dbg !2877
  %47 = icmp sgt i32 %41, -1, !dbg !2881
  br i1 %47, label %55, label %48, !dbg !2881

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2881
  store i32 %49, ptr %7, align 8, !dbg !2881
  %50 = icmp ult i32 %41, -7, !dbg !2881
  br i1 %50, label %51, label %55, !dbg !2881

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2881
  %53 = sext i32 %41 to i64, !dbg !2881
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2881
  br label %59, !dbg !2881

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2881
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2881
  store ptr %58, ptr %4, align 8, !dbg !2881
  br label %59, !dbg !2881

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2881
  %62 = load ptr, ptr %61, align 8, !dbg !2881
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2887
  store ptr %62, ptr %63, align 8, !dbg !2884, !tbaa !768
  %64 = icmp eq ptr %62, null, !dbg !2885
  br i1 %64, label %197, label %65, !dbg !2886

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 3, metadata !2874, metadata !DIExpression()), !dbg !2877
  %66 = icmp sgt i32 %60, -1, !dbg !2881
  br i1 %66, label %74, label %67, !dbg !2881

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2881
  store i32 %68, ptr %7, align 8, !dbg !2881
  %69 = icmp ult i32 %60, -7, !dbg !2881
  br i1 %69, label %70, label %74, !dbg !2881

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2881
  %72 = sext i32 %60 to i64, !dbg !2881
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2881
  br label %78, !dbg !2881

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2881
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2881
  store ptr %77, ptr %4, align 8, !dbg !2881
  br label %78, !dbg !2881

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2881
  %81 = load ptr, ptr %80, align 8, !dbg !2881
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2887
  store ptr %81, ptr %82, align 8, !dbg !2884, !tbaa !768
  %83 = icmp eq ptr %81, null, !dbg !2885
  br i1 %83, label %197, label %84, !dbg !2886

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 4, metadata !2874, metadata !DIExpression()), !dbg !2877
  %85 = icmp sgt i32 %79, -1, !dbg !2881
  br i1 %85, label %93, label %86, !dbg !2881

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2881
  store i32 %87, ptr %7, align 8, !dbg !2881
  %88 = icmp ult i32 %79, -7, !dbg !2881
  br i1 %88, label %89, label %93, !dbg !2881

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2881
  %91 = sext i32 %79 to i64, !dbg !2881
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2881
  br label %97, !dbg !2881

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2881
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2881
  store ptr %96, ptr %4, align 8, !dbg !2881
  br label %97, !dbg !2881

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2881
  %100 = load ptr, ptr %99, align 8, !dbg !2881
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2887
  store ptr %100, ptr %101, align 8, !dbg !2884, !tbaa !768
  %102 = icmp eq ptr %100, null, !dbg !2885
  br i1 %102, label %197, label %103, !dbg !2886

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 5, metadata !2874, metadata !DIExpression()), !dbg !2877
  %104 = icmp sgt i32 %98, -1, !dbg !2881
  br i1 %104, label %112, label %105, !dbg !2881

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2881
  store i32 %106, ptr %7, align 8, !dbg !2881
  %107 = icmp ult i32 %98, -7, !dbg !2881
  br i1 %107, label %108, label %112, !dbg !2881

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2881
  %110 = sext i32 %98 to i64, !dbg !2881
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2881
  br label %116, !dbg !2881

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2881
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2881
  store ptr %115, ptr %4, align 8, !dbg !2881
  br label %116, !dbg !2881

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2881
  %119 = load ptr, ptr %118, align 8, !dbg !2881
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2887
  store ptr %119, ptr %120, align 8, !dbg !2884, !tbaa !768
  %121 = icmp eq ptr %119, null, !dbg !2885
  br i1 %121, label %197, label %122, !dbg !2886

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 6, metadata !2874, metadata !DIExpression()), !dbg !2877
  %123 = icmp sgt i32 %117, -1, !dbg !2881
  br i1 %123, label %131, label %124, !dbg !2881

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2881
  store i32 %125, ptr %7, align 8, !dbg !2881
  %126 = icmp ult i32 %117, -7, !dbg !2881
  br i1 %126, label %127, label %131, !dbg !2881

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2881
  %129 = sext i32 %117 to i64, !dbg !2881
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2881
  br label %135, !dbg !2881

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2881
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2881
  store ptr %134, ptr %4, align 8, !dbg !2881
  br label %135, !dbg !2881

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2881
  %138 = load ptr, ptr %137, align 8, !dbg !2881
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2887
  store ptr %138, ptr %139, align 8, !dbg !2884, !tbaa !768
  %140 = icmp eq ptr %138, null, !dbg !2885
  br i1 %140, label %197, label %141, !dbg !2886

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 7, metadata !2874, metadata !DIExpression()), !dbg !2877
  %142 = icmp sgt i32 %136, -1, !dbg !2881
  br i1 %142, label %150, label %143, !dbg !2881

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2881
  store i32 %144, ptr %7, align 8, !dbg !2881
  %145 = icmp ult i32 %136, -7, !dbg !2881
  br i1 %145, label %146, label %150, !dbg !2881

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2881
  %148 = sext i32 %136 to i64, !dbg !2881
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2881
  br label %154, !dbg !2881

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2881
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2881
  store ptr %153, ptr %4, align 8, !dbg !2881
  br label %154, !dbg !2881

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2881
  %157 = load ptr, ptr %156, align 8, !dbg !2881
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2887
  store ptr %157, ptr %158, align 8, !dbg !2884, !tbaa !768
  %159 = icmp eq ptr %157, null, !dbg !2885
  br i1 %159, label %197, label %160, !dbg !2886

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 8, metadata !2874, metadata !DIExpression()), !dbg !2877
  %161 = icmp sgt i32 %155, -1, !dbg !2881
  br i1 %161, label %169, label %162, !dbg !2881

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2881
  store i32 %163, ptr %7, align 8, !dbg !2881
  %164 = icmp ult i32 %155, -7, !dbg !2881
  br i1 %164, label %165, label %169, !dbg !2881

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2881
  %167 = sext i32 %155 to i64, !dbg !2881
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2881
  br label %173, !dbg !2881

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2881
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2881
  store ptr %172, ptr %4, align 8, !dbg !2881
  br label %173, !dbg !2881

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2881
  %176 = load ptr, ptr %175, align 8, !dbg !2881
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2887
  store ptr %176, ptr %177, align 8, !dbg !2884, !tbaa !768
  %178 = icmp eq ptr %176, null, !dbg !2885
  br i1 %178, label %197, label %179, !dbg !2886

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 9, metadata !2874, metadata !DIExpression()), !dbg !2877
  %180 = icmp sgt i32 %174, -1, !dbg !2881
  br i1 %180, label %188, label %181, !dbg !2881

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2881
  store i32 %182, ptr %7, align 8, !dbg !2881
  %183 = icmp ult i32 %174, -7, !dbg !2881
  br i1 %183, label %184, label %188, !dbg !2881

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2881
  %186 = sext i32 %174 to i64, !dbg !2881
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2881
  br label %191, !dbg !2881

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2881
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2881
  store ptr %190, ptr %4, align 8, !dbg !2881
  br label %191, !dbg !2881

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2881
  %193 = load ptr, ptr %192, align 8, !dbg !2881
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2887
  store ptr %193, ptr %194, align 8, !dbg !2884, !tbaa !768
  %195 = icmp eq ptr %193, null, !dbg !2885
  %196 = select i1 %195, i64 9, i64 10, !dbg !2886
  br label %197, !dbg !2886

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2888
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2889
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2890
  ret void, !dbg !2890
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2891 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2895, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %1, metadata !2896, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %2, metadata !2897, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %3, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !2901
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.va_start(ptr nonnull %5), !dbg !2903
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !2904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2904, !tbaa.struct !1177
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2904
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !2904
  call void @llvm.va_end(ptr nonnull %5), !dbg !2905
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !2906
  ret void, !dbg !2906
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2907 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2908, !tbaa !768
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %1), !dbg !2908
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.17.90, i32 noundef 5) #36, !dbg !2909
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.91) #36, !dbg !2909
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.19.92, i32 noundef 5) #36, !dbg !2910
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #36, !dbg !2910
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.22.93, i32 noundef 5) #36, !dbg !2911
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2911
  ret void, !dbg !2912
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2913 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %1, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %2, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %1, metadata !2925, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %2, metadata !2926, metadata !DIExpression()), !dbg !2927
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2929
  call void @llvm.dbg.value(metadata ptr %4, metadata !2930, metadata !DIExpression()), !dbg !2935
  %5 = icmp eq ptr %4, null, !dbg !2937
  br i1 %5, label %6, label %7, !dbg !2939

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2940
  unreachable, !dbg !2940

7:                                                ; preds = %3
  ret ptr %4, !dbg !2941
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 %1, metadata !2925, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 %2, metadata !2926, metadata !DIExpression()), !dbg !2942
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2943
  call void @llvm.dbg.value(metadata ptr %4, metadata !2930, metadata !DIExpression()), !dbg !2944
  %5 = icmp eq ptr %4, null, !dbg !2946
  br i1 %5, label %6, label %7, !dbg !2947

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2948
  unreachable, !dbg !2948

7:                                                ; preds = %3
  ret ptr %4, !dbg !2949
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2950 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2954, metadata !DIExpression()), !dbg !2955
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2956
  call void @llvm.dbg.value(metadata ptr %2, metadata !2930, metadata !DIExpression()), !dbg !2957
  %3 = icmp eq ptr %2, null, !dbg !2959
  br i1 %3, label %4, label %5, !dbg !2960

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2961
  unreachable, !dbg !2961

5:                                                ; preds = %1
  ret ptr %2, !dbg !2962
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2963 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2964 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2968, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !2974
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2976
  call void @llvm.dbg.value(metadata ptr %2, metadata !2930, metadata !DIExpression()), !dbg !2977
  %3 = icmp eq ptr %2, null, !dbg !2979
  br i1 %3, label %4, label %5, !dbg !2980

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2981
  unreachable, !dbg !2981

5:                                                ; preds = %1
  ret ptr %2, !dbg !2982
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2983 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2987, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %0, metadata !2954, metadata !DIExpression()), !dbg !2989
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2, metadata !2930, metadata !DIExpression()), !dbg !2992
  %3 = icmp eq ptr %2, null, !dbg !2994
  br i1 %3, label %4, label %5, !dbg !2995

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2996
  unreachable, !dbg !2996

5:                                                ; preds = %1
  ret ptr %2, !dbg !2997
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2998 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3002, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %1, metadata !3003, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %0, metadata !3005, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %1, metadata !3009, metadata !DIExpression()), !dbg !3010
  %3 = icmp eq i64 %1, 0, !dbg !3012
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3012
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3013
  call void @llvm.dbg.value(metadata ptr %5, metadata !2930, metadata !DIExpression()), !dbg !3014
  %6 = icmp eq ptr %5, null, !dbg !3016
  br i1 %6, label %7, label %8, !dbg !3017

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3018
  unreachable, !dbg !3018

8:                                                ; preds = %2
  ret ptr %5, !dbg !3019
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3020 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3021 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3025, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata ptr %0, metadata !3028, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %1, metadata !3031, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %0, metadata !3005, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %1, metadata !3009, metadata !DIExpression()), !dbg !3034
  %3 = icmp eq i64 %1, 0, !dbg !3036
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3036
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3037
  call void @llvm.dbg.value(metadata ptr %5, metadata !2930, metadata !DIExpression()), !dbg !3038
  %6 = icmp eq ptr %5, null, !dbg !3040
  br i1 %6, label %7, label %8, !dbg !3041

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3042
  unreachable, !dbg !3042

8:                                                ; preds = %2
  ret ptr %5, !dbg !3043
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3044 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %1, metadata !3049, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %2, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata ptr %0, metadata !3052, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 %1, metadata !3055, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 %2, metadata !3056, metadata !DIExpression()), !dbg !3057
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3059
  call void @llvm.dbg.value(metadata ptr %4, metadata !2930, metadata !DIExpression()), !dbg !3060
  %5 = icmp eq ptr %4, null, !dbg !3062
  br i1 %5, label %6, label %7, !dbg !3063

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3064
  unreachable, !dbg !3064

7:                                                ; preds = %3
  ret ptr %4, !dbg !3065
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3066 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3070, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr null, metadata !2922, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %0, metadata !2925, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()), !dbg !3073
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3075
  call void @llvm.dbg.value(metadata ptr %3, metadata !2930, metadata !DIExpression()), !dbg !3076
  %4 = icmp eq ptr %3, null, !dbg !3078
  br i1 %4, label %5, label %6, !dbg !3079

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3080
  unreachable, !dbg !3080

6:                                                ; preds = %2
  ret ptr %3, !dbg !3081
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3082 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %1, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata ptr null, metadata !3048, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %0, metadata !3049, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr null, metadata !3052, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %0, metadata !3055, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3056, metadata !DIExpression()), !dbg !3091
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3093
  call void @llvm.dbg.value(metadata ptr %3, metadata !2930, metadata !DIExpression()), !dbg !3094
  %4 = icmp eq ptr %3, null, !dbg !3096
  br i1 %4, label %5, label %6, !dbg !3097

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3098
  unreachable, !dbg !3098

6:                                                ; preds = %2
  ret ptr %3, !dbg !3099
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3100 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3104, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata ptr %1, metadata !3105, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata ptr %0, metadata !705, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata ptr %1, metadata !706, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i64 1, metadata !707, metadata !DIExpression()), !dbg !3107
  %3 = load i64, ptr %1, align 8, !dbg !3109, !tbaa !2209
  call void @llvm.dbg.value(metadata i64 %3, metadata !708, metadata !DIExpression()), !dbg !3107
  %4 = icmp eq ptr %0, null, !dbg !3110
  br i1 %4, label %5, label %8, !dbg !3112

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3113
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3116
  br label %15, !dbg !3116

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3117
  %10 = add nuw i64 %9, 1, !dbg !3117
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3117
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3117
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %13, metadata !708, metadata !DIExpression()), !dbg !3107
  br i1 %12, label %14, label %15, !dbg !3120

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3121
  unreachable, !dbg !3121

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3107
  call void @llvm.dbg.value(metadata i64 %16, metadata !708, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %16, metadata !2925, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 1, metadata !2926, metadata !DIExpression()), !dbg !3122
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3124
  call void @llvm.dbg.value(metadata ptr %17, metadata !2930, metadata !DIExpression()), !dbg !3125
  %18 = icmp eq ptr %17, null, !dbg !3127
  br i1 %18, label %19, label %20, !dbg !3128

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3129
  unreachable, !dbg !3129

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !705, metadata !DIExpression()), !dbg !3107
  store i64 %16, ptr %1, align 8, !dbg !3130, !tbaa !2209
  ret ptr %17, !dbg !3131
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !700 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !705, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata ptr %1, metadata !706, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %2, metadata !707, metadata !DIExpression()), !dbg !3132
  %4 = load i64, ptr %1, align 8, !dbg !3133, !tbaa !2209
  call void @llvm.dbg.value(metadata i64 %4, metadata !708, metadata !DIExpression()), !dbg !3132
  %5 = icmp eq ptr %0, null, !dbg !3134
  br i1 %5, label %6, label %13, !dbg !3135

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3136
  br i1 %7, label %8, label %20, !dbg !3137

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %9, metadata !708, metadata !DIExpression()), !dbg !3132
  %10 = icmp ugt i64 %2, 128, !dbg !3140
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %12, metadata !708, metadata !DIExpression()), !dbg !3132
  br label %20, !dbg !3142

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3143
  %15 = add nuw i64 %14, 1, !dbg !3143
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3143
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3143
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %18, metadata !708, metadata !DIExpression()), !dbg !3132
  br i1 %17, label %19, label %20, !dbg !3144

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3145
  unreachable, !dbg !3145

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3132
  call void @llvm.dbg.value(metadata i64 %21, metadata !708, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %21, metadata !2925, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %2, metadata !2926, metadata !DIExpression()), !dbg !3146
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3148
  call void @llvm.dbg.value(metadata ptr %22, metadata !2930, metadata !DIExpression()), !dbg !3149
  %23 = icmp eq ptr %22, null, !dbg !3151
  br i1 %23, label %24, label %25, !dbg !3152

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3153
  unreachable, !dbg !3153

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !705, metadata !DIExpression()), !dbg !3132
  store i64 %21, ptr %1, align 8, !dbg !3154, !tbaa !2209
  ret ptr %22, !dbg !3155
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !712 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !720, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata ptr %1, metadata !721, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %2, metadata !722, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %3, metadata !723, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %4, metadata !724, metadata !DIExpression()), !dbg !3156
  %6 = load i64, ptr %1, align 8, !dbg !3157, !tbaa !2209
  call void @llvm.dbg.value(metadata i64 %6, metadata !725, metadata !DIExpression()), !dbg !3156
  %7 = ashr i64 %6, 1, !dbg !3158
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3158
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3158
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %10, metadata !726, metadata !DIExpression()), !dbg !3156
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %11, metadata !726, metadata !DIExpression()), !dbg !3156
  %12 = icmp sgt i64 %3, -1, !dbg !3161
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3163
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %15, metadata !726, metadata !DIExpression()), !dbg !3156
  %16 = icmp slt i64 %4, 0, !dbg !3164
  br i1 %16, label %17, label %30, !dbg !3164

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3164
  br i1 %18, label %19, label %24, !dbg !3164

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3164
  %21 = udiv i64 9223372036854775807, %20, !dbg !3164
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3164
  br i1 %23, label %46, label %43, !dbg !3164

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3164
  br i1 %25, label %43, label %26, !dbg !3164

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3164
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3164
  %29 = icmp ult i64 %28, %15, !dbg !3164
  br i1 %29, label %46, label %43, !dbg !3164

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3164
  br i1 %31, label %43, label %32, !dbg !3164

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3164
  br i1 %33, label %34, label %40, !dbg !3164

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3164
  br i1 %35, label %43, label %36, !dbg !3164

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3164
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3164
  %39 = icmp ult i64 %38, %4, !dbg !3164
  br i1 %39, label %46, label %43, !dbg !3164

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3164
  br i1 %42, label %46, label %43, !dbg !3164

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !727, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3156
  %44 = mul i64 %15, %4, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %44, metadata !727, metadata !DIExpression()), !dbg !3156
  %45 = icmp slt i64 %44, 128, !dbg !3164
  br i1 %45, label %46, label %52, !dbg !3164

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !728, metadata !DIExpression()), !dbg !3156
  %48 = sdiv i64 %47, %4, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %48, metadata !726, metadata !DIExpression()), !dbg !3156
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %51, metadata !727, metadata !DIExpression()), !dbg !3156
  br label %52, !dbg !3169

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3156
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3156
  call void @llvm.dbg.value(metadata i64 %54, metadata !727, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %53, metadata !726, metadata !DIExpression()), !dbg !3156
  %55 = icmp eq ptr %0, null, !dbg !3170
  br i1 %55, label %56, label %57, !dbg !3172

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3173, !tbaa !2209
  br label %57, !dbg !3174

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3175
  %59 = icmp slt i64 %58, %2, !dbg !3177
  br i1 %59, label %60, label %97, !dbg !3178

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3179
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3179
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %63, metadata !726, metadata !DIExpression()), !dbg !3156
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3180
  br i1 %66, label %96, label %67, !dbg !3180

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3181

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3181
  br i1 %69, label %70, label %75, !dbg !3181

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3181
  %72 = udiv i64 9223372036854775807, %71, !dbg !3181
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3181
  br i1 %74, label %96, label %94, !dbg !3181

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3181
  br i1 %76, label %94, label %77, !dbg !3181

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3181
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3181
  %80 = icmp ult i64 %79, %63, !dbg !3181
  br i1 %80, label %96, label %94, !dbg !3181

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3181
  br i1 %82, label %94, label %83, !dbg !3181

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3181
  br i1 %84, label %85, label %91, !dbg !3181

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3181
  br i1 %86, label %94, label %87, !dbg !3181

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3181
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3181
  %90 = icmp ult i64 %89, %4, !dbg !3181
  br i1 %90, label %96, label %94, !dbg !3181

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3181
  br i1 %93, label %96, label %94, !dbg !3181

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !727, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3156
  %95 = mul i64 %63, %4, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %95, metadata !727, metadata !DIExpression()), !dbg !3156
  br label %97, !dbg !3182

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3183
  unreachable, !dbg !3183

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3156
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3156
  call void @llvm.dbg.value(metadata i64 %99, metadata !727, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %98, metadata !726, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata ptr %0, metadata !3002, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %99, metadata !3003, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata ptr %0, metadata !3005, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %99, metadata !3009, metadata !DIExpression()), !dbg !3186
  %100 = icmp eq i64 %99, 0, !dbg !3188
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3188
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3189
  call void @llvm.dbg.value(metadata ptr %102, metadata !2930, metadata !DIExpression()), !dbg !3190
  %103 = icmp eq ptr %102, null, !dbg !3192
  br i1 %103, label %104, label %105, !dbg !3193

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3194
  unreachable, !dbg !3194

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !720, metadata !DIExpression()), !dbg !3156
  store i64 %98, ptr %1, align 8, !dbg !3195, !tbaa !2209
  ret ptr %102, !dbg !3196
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3197 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %0, metadata !3201, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 1, metadata !3204, metadata !DIExpression()), !dbg !3205
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3207
  call void @llvm.dbg.value(metadata ptr %2, metadata !2930, metadata !DIExpression()), !dbg !3208
  %3 = icmp eq ptr %2, null, !dbg !3210
  br i1 %3, label %4, label %5, !dbg !3211

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3212
  unreachable, !dbg !3212

5:                                                ; preds = %1
  ret ptr %2, !dbg !3213
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3214 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3202 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3201, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %1, metadata !3204, metadata !DIExpression()), !dbg !3215
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3216
  call void @llvm.dbg.value(metadata ptr %3, metadata !2930, metadata !DIExpression()), !dbg !3217
  %4 = icmp eq ptr %3, null, !dbg !3219
  br i1 %4, label %5, label %6, !dbg !3220

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3221
  unreachable, !dbg !3221

6:                                                ; preds = %2
  ret ptr %3, !dbg !3222
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3223 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3225, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %0, metadata !3227, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 1, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %0, metadata !3233, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 1, metadata !3236, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %0, metadata !3233, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 1, metadata !3236, metadata !DIExpression()), !dbg !3237
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3239
  call void @llvm.dbg.value(metadata ptr %2, metadata !2930, metadata !DIExpression()), !dbg !3240
  %3 = icmp eq ptr %2, null, !dbg !3242
  br i1 %3, label %4, label %5, !dbg !3243

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3244
  unreachable, !dbg !3244

5:                                                ; preds = %1
  ret ptr %2, !dbg !3245
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3228 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3227, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %1, metadata !3230, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %0, metadata !3233, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %1, metadata !3236, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %0, metadata !3233, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %1, metadata !3236, metadata !DIExpression()), !dbg !3247
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3249
  call void @llvm.dbg.value(metadata ptr %3, metadata !2930, metadata !DIExpression()), !dbg !3250
  %4 = icmp eq ptr %3, null, !dbg !3252
  br i1 %4, label %5, label %6, !dbg !3253

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3254
  unreachable, !dbg !3254

6:                                                ; preds = %2
  ret ptr %3, !dbg !3255
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3256 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3260, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %1, metadata !2954, metadata !DIExpression()), !dbg !3263
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3265
  call void @llvm.dbg.value(metadata ptr %3, metadata !2930, metadata !DIExpression()), !dbg !3266
  %4 = icmp eq ptr %3, null, !dbg !3268
  br i1 %4, label %5, label %6, !dbg !3269

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3270
  unreachable, !dbg !3270

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3271, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %0, metadata !3277, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3281
  ret ptr %3, !dbg !3282
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3283 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3287, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !2968, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()), !dbg !3292
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3294
  call void @llvm.dbg.value(metadata ptr %3, metadata !2930, metadata !DIExpression()), !dbg !3295
  %4 = icmp eq ptr %3, null, !dbg !3297
  br i1 %4, label %5, label %6, !dbg !3298

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3299
  unreachable, !dbg !3299

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3271, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %0, metadata !3277, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()), !dbg !3300
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3302
  ret ptr %3, !dbg !3303
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3304 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3308, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()), !dbg !3311
  %3 = add nsw i64 %1, 1, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %3, metadata !2968, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %3, metadata !2970, metadata !DIExpression()), !dbg !3315
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3317
  call void @llvm.dbg.value(metadata ptr %4, metadata !2930, metadata !DIExpression()), !dbg !3318
  %5 = icmp eq ptr %4, null, !dbg !3320
  br i1 %5, label %6, label %7, !dbg !3321

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3322
  unreachable, !dbg !3322

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3310, metadata !DIExpression()), !dbg !3311
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3323
  store i8 0, ptr %8, align 1, !dbg !3324, !tbaa !835
  call void @llvm.dbg.value(metadata ptr %4, metadata !3271, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata ptr %0, metadata !3277, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()), !dbg !3325
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3327
  ret ptr %4, !dbg !3328
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3329 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3332
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3333
  %3 = add i64 %2, 1, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %0, metadata !3260, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %3, metadata !3261, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %3, metadata !2954, metadata !DIExpression()), !dbg !3337
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3339
  call void @llvm.dbg.value(metadata ptr %4, metadata !2930, metadata !DIExpression()), !dbg !3340
  %5 = icmp eq ptr %4, null, !dbg !3342
  br i1 %5, label %6, label %7, !dbg !3343

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3344
  unreachable, !dbg !3344

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3271, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata ptr %0, metadata !3277, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %3, metadata !3278, metadata !DIExpression()), !dbg !3345
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3347
  ret ptr %4, !dbg !3348
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3349 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3354, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %1, metadata !3351, metadata !DIExpression()), !dbg !3355
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.104, ptr noundef nonnull @.str.2.105, i32 noundef 5) #36, !dbg !3354
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef %2) #36, !dbg !3354
  %3 = icmp eq i32 %1, 0, !dbg !3354
  tail call void @llvm.assume(i1 %3), !dbg !3354
  tail call void @abort() #38, !dbg !3356
  unreachable, !dbg !3356
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3357 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3395, metadata !DIExpression()), !dbg !3400
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3401
  call void @llvm.dbg.value(metadata i1 poison, metadata !3396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3400
  call void @llvm.dbg.value(metadata ptr %0, metadata !3402, metadata !DIExpression()), !dbg !3405
  %3 = load i32, ptr %0, align 8, !dbg !3407, !tbaa !3408
  %4 = and i32 %3, 32, !dbg !3409
  %5 = icmp eq i32 %4, 0, !dbg !3409
  call void @llvm.dbg.value(metadata i1 %5, metadata !3398, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3400
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3410
  %7 = icmp eq i32 %6, 0, !dbg !3411
  call void @llvm.dbg.value(metadata i1 %7, metadata !3399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3400
  br i1 %5, label %8, label %18, !dbg !3412

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3414
  call void @llvm.dbg.value(metadata i1 %9, metadata !3396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3400
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3415
  %11 = xor i1 %7, true, !dbg !3415
  %12 = sext i1 %11 to i32, !dbg !3415
  br i1 %10, label %21, label %13, !dbg !3415

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3416
  %15 = load i32, ptr %14, align 4, !dbg !3416, !tbaa !826
  %16 = icmp ne i32 %15, 9, !dbg !3417
  %17 = sext i1 %16 to i32, !dbg !3418
  br label %21, !dbg !3418

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3419

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3421
  store i32 0, ptr %20, align 4, !dbg !3423, !tbaa !826
  br label %21, !dbg !3421

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3400
  ret i32 %22, !dbg !3424
}

; Function Attrs: nounwind
declare !dbg !3425 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3429 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3467, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 0, metadata !3468, metadata !DIExpression()), !dbg !3471
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3472
  call void @llvm.dbg.value(metadata i32 %2, metadata !3469, metadata !DIExpression()), !dbg !3471
  %3 = icmp slt i32 %2, 0, !dbg !3473
  br i1 %3, label %4, label %6, !dbg !3475

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3476
  br label %24, !dbg !3477

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3478
  %8 = icmp eq i32 %7, 0, !dbg !3478
  br i1 %8, label %13, label %9, !dbg !3480

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3481
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3482
  %12 = icmp eq i64 %11, -1, !dbg !3483
  br i1 %12, label %16, label %13, !dbg !3484

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3485
  %15 = icmp eq i32 %14, 0, !dbg !3485
  br i1 %15, label %16, label %18, !dbg !3486

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3468, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 0, metadata !3470, metadata !DIExpression()), !dbg !3471
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %17, metadata !3470, metadata !DIExpression()), !dbg !3471
  br label %24, !dbg !3488

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3489
  %20 = load i32, ptr %19, align 4, !dbg !3489, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %20, metadata !3468, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 0, metadata !3470, metadata !DIExpression()), !dbg !3471
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %21, metadata !3470, metadata !DIExpression()), !dbg !3471
  %22 = icmp eq i32 %20, 0, !dbg !3490
  br i1 %22, label %24, label %23, !dbg !3488

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3492, !tbaa !826
  call void @llvm.dbg.value(metadata i32 -1, metadata !3470, metadata !DIExpression()), !dbg !3471
  br label %24, !dbg !3494

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3471
  ret i32 %25, !dbg !3495
}

; Function Attrs: nofree nounwind
declare !dbg !3496 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3497 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3498 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3499 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3502 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3540, metadata !DIExpression()), !dbg !3541
  %2 = icmp eq ptr %0, null, !dbg !3542
  br i1 %2, label %6, label %3, !dbg !3544

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3545
  %5 = icmp eq i32 %4, 0, !dbg !3545
  br i1 %5, label %6, label %8, !dbg !3546

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3547
  br label %16, !dbg !3548

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3549, metadata !DIExpression()), !dbg !3554
  %9 = load i32, ptr %0, align 8, !dbg !3556, !tbaa !3408
  %10 = and i32 %9, 256, !dbg !3558
  %11 = icmp eq i32 %10, 0, !dbg !3558
  br i1 %11, label %14, label %12, !dbg !3559

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3560
  br label %14, !dbg !3560

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3561
  br label %16, !dbg !3562

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3541
  ret i32 %17, !dbg !3563
}

; Function Attrs: nofree nounwind
declare !dbg !3564 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3565 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3604, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 %2, metadata !3606, metadata !DIExpression()), !dbg !3610
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3611
  %5 = load ptr, ptr %4, align 8, !dbg !3611, !tbaa !3612
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3613
  %7 = load ptr, ptr %6, align 8, !dbg !3613, !tbaa !3614
  %8 = icmp eq ptr %5, %7, !dbg !3615
  br i1 %8, label %9, label %27, !dbg !3616

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3617
  %11 = load ptr, ptr %10, align 8, !dbg !3617, !tbaa !1292
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3618
  %13 = load ptr, ptr %12, align 8, !dbg !3618, !tbaa !3619
  %14 = icmp eq ptr %11, %13, !dbg !3620
  br i1 %14, label %15, label %27, !dbg !3621

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3622
  %17 = load ptr, ptr %16, align 8, !dbg !3622, !tbaa !3623
  %18 = icmp eq ptr %17, null, !dbg !3624
  br i1 %18, label %19, label %27, !dbg !3625

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3626
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3627
  call void @llvm.dbg.value(metadata i64 %21, metadata !3607, metadata !DIExpression()), !dbg !3628
  %22 = icmp eq i64 %21, -1, !dbg !3629
  br i1 %22, label %29, label %23, !dbg !3631

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3632, !tbaa !3408
  %25 = and i32 %24, -17, !dbg !3632
  store i32 %25, ptr %0, align 8, !dbg !3632, !tbaa !3408
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3633
  store i64 %21, ptr %26, align 8, !dbg !3634, !tbaa !3635
  br label %29, !dbg !3636

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3637
  br label %29, !dbg !3638

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3610
  ret i32 %30, !dbg !3639
}

; Function Attrs: nofree nounwind
declare !dbg !3640 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3643 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3648, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %1, metadata !3649, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %2, metadata !3650, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %3, metadata !3651, metadata !DIExpression()), !dbg !3653
  %5 = icmp eq ptr %1, null, !dbg !3654
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3656
  %7 = select i1 %5, ptr @.str.117, ptr %1, !dbg !3656
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %8, metadata !3650, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %7, metadata !3649, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %6, metadata !3648, metadata !DIExpression()), !dbg !3653
  %9 = icmp eq ptr %3, null, !dbg !3657
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3659
  call void @llvm.dbg.value(metadata ptr %10, metadata !3651, metadata !DIExpression()), !dbg !3653
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3660
  call void @llvm.dbg.value(metadata i64 %11, metadata !3652, metadata !DIExpression()), !dbg !3653
  %12 = icmp ult i64 %11, -3, !dbg !3661
  br i1 %12, label %13, label %17, !dbg !3663

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3664
  %15 = icmp eq i32 %14, 0, !dbg !3664
  br i1 %15, label %16, label %29, !dbg !3665

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3666, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %10, metadata !3673, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 0, metadata !3676, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 8, metadata !3677, metadata !DIExpression()), !dbg !3678
  store i64 0, ptr %10, align 1, !dbg !3680
  br label %29, !dbg !3681

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3682
  br i1 %18, label %19, label %20, !dbg !3684

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3685
  unreachable, !dbg !3685

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3686

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3688
  br i1 %23, label %29, label %24, !dbg !3689

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3690
  br i1 %25, label %29, label %26, !dbg !3693

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3694, !tbaa !835
  %28 = zext i8 %27 to i32, !dbg !3695
  store i32 %28, ptr %6, align 4, !dbg !3696, !tbaa !826
  br label %29, !dbg !3697

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3653
  ret i64 %30, !dbg !3698
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3699 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3705 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3707, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %1, metadata !3708, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %2, metadata !3709, metadata !DIExpression()), !dbg !3711
  %4 = icmp eq i64 %2, 0, !dbg !3712
  br i1 %4, label %8, label %5, !dbg !3712

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3712
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3712
  br i1 %7, label %13, label %8, !dbg !3712

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3711
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3711
  %9 = mul i64 %2, %1, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %9, metadata !3710, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %0, metadata !3714, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %9, metadata !3717, metadata !DIExpression()), !dbg !3718
  %10 = icmp eq i64 %9, 0, !dbg !3720
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3720
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3721
  br label %15, !dbg !3722

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3711
  %14 = tail call ptr @__errno_location() #39, !dbg !3723
  store i32 12, ptr %14, align 4, !dbg !3725, !tbaa !826
  br label %15, !dbg !3726

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3711
  ret ptr %16, !dbg !3727
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3728 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3732, metadata !DIExpression()), !dbg !3737
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3738
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3733, metadata !DIExpression()), !dbg !3739
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3740
  %4 = icmp eq i32 %3, 0, !dbg !3740
  br i1 %4, label %5, label %12, !dbg !3742

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3743, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr @.str.122, metadata !3746, metadata !DIExpression()), !dbg !3747
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.122, i64 2), !dbg !3750
  %7 = icmp eq i32 %6, 0, !dbg !3751
  br i1 %7, label %11, label %8, !dbg !3752

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata ptr @.str.1.123, metadata !3746, metadata !DIExpression()), !dbg !3753
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.123, i64 6), !dbg !3755
  %10 = icmp eq i32 %9, 0, !dbg !3756
  br i1 %10, label %11, label %12, !dbg !3757

11:                                               ; preds = %8, %5
  br label %12, !dbg !3758

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3737
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3759
  ret i1 %13, !dbg !3759
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3760 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3764, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata ptr %1, metadata !3765, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 %2, metadata !3766, metadata !DIExpression()), !dbg !3767
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3768
  ret i32 %4, !dbg !3769
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3774, metadata !DIExpression()), !dbg !3775
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3776
  ret ptr %2, !dbg !3777
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3780, metadata !DIExpression()), !dbg !3782
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3783
  call void @llvm.dbg.value(metadata ptr %2, metadata !3781, metadata !DIExpression()), !dbg !3782
  ret ptr %2, !dbg !3784
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3785 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3787, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata ptr %1, metadata !3788, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i64 %2, metadata !3789, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i32 %0, metadata !3780, metadata !DIExpression()), !dbg !3795
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3797
  call void @llvm.dbg.value(metadata ptr %4, metadata !3781, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %4, metadata !3790, metadata !DIExpression()), !dbg !3794
  %5 = icmp eq ptr %4, null, !dbg !3798
  br i1 %5, label %6, label %9, !dbg !3799

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3800
  br i1 %7, label %19, label %8, !dbg !3803

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3804, !tbaa !835
  br label %19, !dbg !3805

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %10, metadata !3791, metadata !DIExpression()), !dbg !3807
  %11 = icmp ult i64 %10, %2, !dbg !3808
  br i1 %11, label %12, label %14, !dbg !3810

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3811
  call void @llvm.dbg.value(metadata ptr %1, metadata !3813, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata ptr %4, metadata !3816, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i64 %13, metadata !3817, metadata !DIExpression()), !dbg !3818
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3820
  br label %19, !dbg !3821

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3822
  br i1 %15, label %19, label %16, !dbg !3825

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3826
  call void @llvm.dbg.value(metadata ptr %1, metadata !3813, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %4, metadata !3816, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %17, metadata !3817, metadata !DIExpression()), !dbg !3828
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3830
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3831
  store i8 0, ptr %18, align 1, !dbg !3832, !tbaa !835
  br label %19, !dbg !3833

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3834
  ret i32 %20, !dbg !3835
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
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !330, !334, !349, !653, !687, !406, !420, !471, !689, !645, !696, !730, !732, !734, !736, !738, !669, !740, !743, !745, !747}
!llvm.ident = !{!749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749, !749}
!llvm.module.flags = !{!750, !751, !752, !753, !754, !755, !756}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/printenv.c", directory: "/src", checksumkind: CSK_MD5, checksum: "639748d46de6a4e4b99d61a9973b15a5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1312, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 164)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 66)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 185)
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
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 6)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "longopts", scope: !59, file: !2, line: 47, type: !315, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !86, globals: !96, splitDebugInlining: false, nameTableKind: None)
!60 = !{!61, !65, !71}
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 38, baseType: !62, size: 32, elements: !63)
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !{!64}
!64 = !DIEnumerator(name: "PRINTENV_FAILURE", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 337, baseType: !67, size: 32, elements: !68)
!66 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!70 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 46, baseType: !62, size: 32, elements: !73)
!72 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!74 = !DIEnumerator(name: "_ISupper", value: 256)
!75 = !DIEnumerator(name: "_ISlower", value: 512)
!76 = !DIEnumerator(name: "_ISalpha", value: 1024)
!77 = !DIEnumerator(name: "_ISdigit", value: 2048)
!78 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!79 = !DIEnumerator(name: "_ISspace", value: 8192)
!80 = !DIEnumerator(name: "_ISprint", value: 16384)
!81 = !DIEnumerator(name: "_ISgraph", value: 32768)
!82 = !DIEnumerator(name: "_ISblank", value: 1)
!83 = !DIEnumerator(name: "_IScntrl", value: 2)
!84 = !DIEnumerator(name: "_ISpunct", value: 4)
!85 = !DIEnumerator(name: "_ISalnum", value: 8)
!86 = !{!87, !88, !67, !89, !90, !93, !95}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 46, baseType: !92)
!91 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!92 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !97, !102, !107, !112, !117, !200, !202, !204, !209, !211, !216, !218, !220, !225, !227, !229, !231, !236, !241, !243, !245, !247, !249, !251, !253, !255, !260, !265, !270, !272, !274, !276, !278, !280, !285, !287, !289, !294, !299, !304, !309, !311, !313, !57}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 14)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 16)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 17)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 5)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !119, file: !66, line: 575, type: !67, isLocal: true, isDefinition: true)
!119 = distinct !DISubprogram(name: "oputs_", scope: !66, file: !66, line: 573, type: !120, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !122)
!120 = !DISubroutineType(cc: DW_CC_nocall, types: !121)
!121 = !{null, !93, !93}
!122 = !{!123, !124, !125, !128, !130, !131, !132, !136, !137, !138, !139, !141, !194, !195, !196, !198, !199}
!123 = !DILocalVariable(name: "program", arg: 1, scope: !119, file: !66, line: 573, type: !93)
!124 = !DILocalVariable(name: "option", arg: 2, scope: !119, file: !66, line: 573, type: !93)
!125 = !DILocalVariable(name: "term", scope: !126, file: !66, line: 585, type: !93)
!126 = distinct !DILexicalBlock(scope: !127, file: !66, line: 582, column: 5)
!127 = distinct !DILexicalBlock(scope: !119, file: !66, line: 581, column: 7)
!128 = !DILocalVariable(name: "double_space", scope: !119, file: !66, line: 594, type: !129)
!129 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!130 = !DILocalVariable(name: "first_word", scope: !119, file: !66, line: 595, type: !93)
!131 = !DILocalVariable(name: "option_text", scope: !119, file: !66, line: 596, type: !93)
!132 = !DILocalVariable(name: "s", scope: !133, file: !66, line: 608, type: !93)
!133 = distinct !DILexicalBlock(scope: !134, file: !66, line: 605, column: 5)
!134 = distinct !DILexicalBlock(scope: !135, file: !66, line: 604, column: 12)
!135 = distinct !DILexicalBlock(scope: !119, file: !66, line: 597, column: 7)
!136 = !DILocalVariable(name: "spaces", scope: !133, file: !66, line: 609, type: !90)
!137 = !DILocalVariable(name: "anchor_len", scope: !119, file: !66, line: 620, type: !90)
!138 = !DILocalVariable(name: "desc_text", scope: !119, file: !66, line: 625, type: !93)
!139 = !DILocalVariable(name: "__ptr", scope: !140, file: !66, line: 644, type: !93)
!140 = distinct !DILexicalBlock(scope: !119, file: !66, line: 644, column: 3)
!141 = !DILocalVariable(name: "__stream", scope: !140, file: !66, line: 644, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !145)
!144 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !147)
!146 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !163, !165, !166, !167, !171, !172, !174, !175, !178, !180, !183, !186, !187, !188, !189, !190}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !145, file: !146, line: 51, baseType: !67, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !145, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !145, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !145, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !145, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !145, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !145, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !145, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !145, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !145, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !145, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !145, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !145, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !146, line: 36, flags: DIFlagFwdDecl)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !145, file: !146, line: 70, baseType: !164, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !145, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !145, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !145, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !169, line: 152, baseType: !170)
!169 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!170 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !145, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !145, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!173 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !145, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !145, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !146, line: 43, baseType: null)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !145, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !169, line: 153, baseType: !170)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !145, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !146, line: 37, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !145, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !146, line: 38, flags: DIFlagFwdDecl)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !145, file: !146, line: 93, baseType: !164, size: 64, offset: 1344)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !145, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !145, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !145, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !145, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 20)
!194 = !DILocalVariable(name: "__cnt", scope: !140, file: !66, line: 644, type: !90)
!195 = !DILocalVariable(name: "url_program", scope: !119, file: !66, line: 648, type: !93)
!196 = !DILocalVariable(name: "__ptr", scope: !197, file: !66, line: 686, type: !93)
!197 = distinct !DILexicalBlock(scope: !119, file: !66, line: 686, column: 3)
!198 = !DILocalVariable(name: "__stream", scope: !197, file: !66, line: 686, type: !142)
!199 = !DILocalVariable(name: "__cnt", scope: !197, file: !66, line: 686, type: !90)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !66, line: 585, type: !114, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !66, line: 586, type: !114, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !66, line: 595, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 4)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !66, line: 620, type: !54, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !66, line: 648, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 2)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !66, line: 648, type: !114, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !66, line: 649, type: !206, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !66, line: 649, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 3)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !66, line: 650, type: !114, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !66, line: 651, type: !54, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !66, line: 651, type: !54, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !66, line: 652, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 7)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !66, line: 653, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 8)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !66, line: 654, type: !44, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !66, line: 655, type: !44, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !66, line: 656, type: !44, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !66, line: 657, type: !44, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !66, line: 663, type: !233, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !66, line: 664, type: !44, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !66, line: 669, type: !109, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !66, line: 669, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 40)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !66, line: 676, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 15)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !66, line: 676, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 61)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !66, line: 679, type: !222, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !66, line: 683, type: !114, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !66, line: 688, type: !114, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !66, line: 691, type: !238, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !66, line: 839, type: !104, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !66, line: 840, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 22)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !66, line: 841, type: !262, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !66, line: 862, type: !206, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !66, line: 868, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 71)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !66, line: 875, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 27)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !66, line: 877, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 51)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !66, line: 877, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 12)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !114, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !114, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !238, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 1024, elements: !207)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !318, line: 50, size: 256, elements: !319)
!318 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!319 = !{!320, !321, !322, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !318, line: 52, baseType: !93, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !317, file: !318, line: 55, baseType: !67, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !317, file: !318, line: 56, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !317, file: !318, line: 57, baseType: !67, size: 32, offset: 192)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !327, line: 3, type: !262, isLocal: true, isDefinition: true)
!327 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "Version", scope: !330, file: !327, line: 3, type: !93, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C11, file: !327, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !331, splitDebugInlining: false, nameTableKind: None)
!331 = !{!325, !328}
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "file_name", scope: !334, file: !335, line: 45, type: !93, isLocal: true, isDefinition: true)
!334 = distinct !DICompileUnit(language: DW_LANG_C11, file: !335, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !336, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!336 = !{!337, !339, !341, !343, !332, !345}
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !335, line: 121, type: !233, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !335, line: 121, type: !306, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !335, line: 123, type: !233, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !335, line: 126, type: !222, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !334, file: !335, line: 55, type: !129, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !349, file: !350, line: 66, type: !401, isLocal: false, isDefinition: true)
!349 = distinct !DICompileUnit(language: DW_LANG_C11, file: !350, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !351, globals: !352, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!351 = !{!88, !95}
!352 = !{!353, !355, !380, !382, !384, !386, !347, !388, !390, !392, !394, !399}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !350, line: 272, type: !114, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "old_file_name", scope: !357, file: !350, line: 304, type: !93, isLocal: true, isDefinition: true)
!357 = distinct !DISubprogram(name: "verror_at_line", scope: !350, file: !350, line: 298, type: !358, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !373)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !67, !67, !93, !62, !93, !360}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !361, line: 52, baseType: !362)
!361 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !363, line: 14, baseType: !364)
!363 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !365, baseType: !366)
!365 = !DIFile(filename: "lib/error.c", directory: "/src")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !366, file: !365, baseType: !88, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !366, file: !365, baseType: !88, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !366, file: !365, baseType: !88, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !366, file: !365, baseType: !67, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !366, file: !365, baseType: !67, size: 32, offset: 224)
!373 = !{!374, !375, !376, !377, !378, !379}
!374 = !DILocalVariable(name: "status", arg: 1, scope: !357, file: !350, line: 298, type: !67)
!375 = !DILocalVariable(name: "errnum", arg: 2, scope: !357, file: !350, line: 298, type: !67)
!376 = !DILocalVariable(name: "file_name", arg: 3, scope: !357, file: !350, line: 298, type: !93)
!377 = !DILocalVariable(name: "line_number", arg: 4, scope: !357, file: !350, line: 298, type: !62)
!378 = !DILocalVariable(name: "message", arg: 5, scope: !357, file: !350, line: 298, type: !93)
!379 = !DILocalVariable(name: "args", arg: 6, scope: !357, file: !350, line: 298, type: !360)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "old_line_number", scope: !357, file: !350, line: 305, type: !62, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !350, line: 338, type: !206, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !350, line: 346, type: !238, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !350, line: 346, type: !213, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "error_message_count", scope: !349, file: !350, line: 69, type: !62, isLocal: false, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !349, file: !350, line: 295, type: !67, isLocal: false, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !350, line: 208, type: !233, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !350, line: 208, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 21)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !350, line: 214, type: !114, isLocal: true, isDefinition: true)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null}
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "program_name", scope: !406, file: !407, line: 31, type: !93, isLocal: false, isDefinition: true)
!406 = distinct !DICompileUnit(language: DW_LANG_C11, file: !407, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !408, globals: !409, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!408 = !{!87}
!409 = !{!404, !410, !412}
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !407, line: 46, type: !238, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !407, line: 49, type: !206, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "utf07FF", scope: !416, file: !417, line: 46, type: !444, isLocal: true, isDefinition: true)
!416 = distinct !DISubprogram(name: "proper_name_lite", scope: !417, file: !417, line: 38, type: !418, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !422)
!417 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!418 = !DISubroutineType(types: !419)
!419 = !{!93, !93, !93}
!420 = distinct !DICompileUnit(language: DW_LANG_C11, file: !417, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !421, splitDebugInlining: false, nameTableKind: None)
!421 = !{!414}
!422 = !{!423, !424, !425, !426, !431}
!423 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !416, file: !417, line: 38, type: !93)
!424 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !416, file: !417, line: 38, type: !93)
!425 = !DILocalVariable(name: "translation", scope: !416, file: !417, line: 40, type: !93)
!426 = !DILocalVariable(name: "w", scope: !416, file: !417, line: 47, type: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !428, line: 37, baseType: !429)
!428 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !169, line: 57, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !169, line: 42, baseType: !62)
!431 = !DILocalVariable(name: "mbs", scope: !416, file: !417, line: 48, type: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !433, line: 6, baseType: !434)
!433 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !435, line: 21, baseType: !436)
!435 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 13, size: 64, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !436, file: !435, line: 15, baseType: !67, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !436, file: !435, line: 20, baseType: !440, size: 32, offset: 32)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !435, line: 16, size: 32, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !440, file: !435, line: 18, baseType: !62, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !440, file: !435, line: 19, baseType: !206, size: 32)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16, elements: !214)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !447, line: 78, type: !238, isLocal: true, isDefinition: true)
!447 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !447, line: 79, type: !54, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !447, line: 80, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 13)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !447, line: 81, type: !452, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !447, line: 82, type: !191, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !447, line: 83, type: !213, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !447, line: 84, type: !238, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !447, line: 85, type: !233, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !447, line: 86, type: !233, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !447, line: 87, type: !238, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !471, file: !447, line: 76, type: !557, isLocal: false, isDefinition: true)
!471 = distinct !DICompileUnit(language: DW_LANG_C11, file: !447, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !472, retainedTypes: !492, globals: !493, splitDebugInlining: false, nameTableKind: None)
!472 = !{!473, !487, !71}
!473 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !474, line: 42, baseType: !62, size: 32, elements: !475)
!474 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!476 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!477 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!478 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!479 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!480 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!481 = !DIEnumerator(name: "c_quoting_style", value: 5)
!482 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!483 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!484 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!485 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!486 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!487 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !474, line: 254, baseType: !62, size: 32, elements: !488)
!488 = !{!489, !490, !491}
!489 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!490 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!491 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!492 = !{!67, !89, !90}
!493 = !{!445, !448, !450, !455, !457, !459, !461, !463, !465, !467, !469, !494, !498, !508, !510, !515, !517, !519, !521, !523, !546, !553, !555}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !471, file: !447, line: 92, type: !496, isLocal: false, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 320, elements: !45)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !471, file: !447, line: 1040, type: !500, isLocal: false, isDefinition: true)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !447, line: 56, size: 448, elements: !501)
!501 = !{!502, !503, !504, !506, !507}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !500, file: !447, line: 59, baseType: !473, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !447, line: 62, baseType: !67, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !500, file: !447, line: 66, baseType: !505, size: 256, offset: 64)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !239)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !500, file: !447, line: 69, baseType: !93, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !500, file: !447, line: 72, baseType: !93, size: 64, offset: 384)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !471, file: !447, line: 107, type: !500, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "slot0", scope: !471, file: !447, line: 831, type: !512, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 256)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !447, line: 321, type: !213, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !447, line: 357, type: !213, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !447, line: 358, type: !213, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !447, line: 199, type: !233, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "quote", scope: !525, file: !447, line: 228, type: !544, isLocal: true, isDefinition: true)
!525 = distinct !DISubprogram(name: "gettext_quote", scope: !447, file: !447, line: 197, type: !526, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!93, !93, !473}
!528 = !{!529, !530, !531, !532, !533}
!529 = !DILocalVariable(name: "msgid", arg: 1, scope: !525, file: !447, line: 197, type: !93)
!530 = !DILocalVariable(name: "s", arg: 2, scope: !525, file: !447, line: 197, type: !473)
!531 = !DILocalVariable(name: "translation", scope: !525, file: !447, line: 199, type: !93)
!532 = !DILocalVariable(name: "w", scope: !525, file: !447, line: 229, type: !427)
!533 = !DILocalVariable(name: "mbs", scope: !525, file: !447, line: 230, type: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !433, line: 6, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !435, line: 21, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 13, size: 64, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !536, file: !435, line: 15, baseType: !67, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !536, file: !435, line: 20, baseType: !540, size: 32, offset: 32)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !435, line: 16, size: 32, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !540, file: !435, line: 18, baseType: !62, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !540, file: !435, line: 19, baseType: !206, size: 32)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !545)
!545 = !{!215, !208}
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "slotvec", scope: !471, file: !447, line: 834, type: !548, isLocal: true, isDefinition: true)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !447, line: 823, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !549, file: !447, line: 825, baseType: !90, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !549, file: !447, line: 826, baseType: !87, size: 64, offset: 64)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "nslots", scope: !471, file: !447, line: 832, type: !67, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "slotvec0", scope: !471, file: !447, line: 833, type: !549, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 704, elements: !559)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!559 = !{!560}
!560 = !DISubrange(count: 11)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !563, line: 67, type: !306, isLocal: true, isDefinition: true)
!563 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !563, line: 69, type: !233, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !563, line: 83, type: !233, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !563, line: 83, type: !206, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !563, line: 85, type: !213, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !563, line: 88, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 171)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !563, line: 88, type: !579, isLocal: true, isDefinition: true)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 34)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !563, line: 105, type: !104, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !563, line: 109, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 23)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !563, line: 113, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 28)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !563, line: 120, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 32)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !563, line: 127, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 36)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !563, line: 134, type: !257, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !563, line: 142, type: !608, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 44)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !563, line: 150, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 48)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !563, line: 159, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 52)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !563, line: 170, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 60)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !563, line: 248, type: !191, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !563, line: 248, type: !282, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !563, line: 254, type: !191, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !563, line: 254, type: !99, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !563, line: 254, type: !257, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !563, line: 259, type: !3, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !563, line: 259, type: !640, isLocal: true, isDefinition: true)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 29)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !645, file: !646, line: 26, type: !648, isLocal: false, isDefinition: true)
!645 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !647, splitDebugInlining: false, nameTableKind: None)
!646 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!647 = !{!643}
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 376, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 47)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "exit_failure", scope: !653, file: !654, line: 24, type: !656, isLocal: false, isDefinition: true)
!653 = distinct !DICompileUnit(language: DW_LANG_C11, file: !654, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !655, splitDebugInlining: false, nameTableKind: None)
!654 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!655 = !{!651}
!656 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !659, line: 34, type: !222, isLocal: true, isDefinition: true)
!659 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !659, line: 34, type: !233, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !659, line: 34, type: !109, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !666, line: 108, type: !39, isLocal: true, isDefinition: true)
!666 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(name: "internal_state", scope: !669, file: !666, line: 97, type: !672, isLocal: true, isDefinition: true)
!669 = distinct !DICompileUnit(language: DW_LANG_C11, file: !666, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !670, globals: !671, splitDebugInlining: false, nameTableKind: None)
!670 = !{!88, !90, !95}
!671 = !{!664, !667}
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !433, line: 6, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !435, line: 21, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 13, size: 64, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !674, file: !435, line: 15, baseType: !67, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !674, file: !435, line: 20, baseType: !678, size: 32, offset: 32)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !435, line: 16, size: 32, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !678, file: !435, line: 18, baseType: !62, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !678, file: !435, line: 19, baseType: !206, size: 32)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !684, line: 35, type: !213, isLocal: true, isDefinition: true)
!684 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !684, line: 35, type: !54, isLocal: true, isDefinition: true)
!687 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !563, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !690, retainedTypes: !694, globals: !695, splitDebugInlining: false, nameTableKind: None)
!690 = !{!691}
!691 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !563, line: 40, baseType: !62, size: 32, elements: !692)
!692 = !{!693}
!693 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!694 = !{!88}
!695 = !{!561, !564, !566, !568, !570, !572, !577, !582, !584, !589, !594, !599, !604, !606, !611, !616, !621, !626, !628, !630, !632, !634, !636, !638}
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !698, retainedTypes: !729, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!698 = !{!699, !711}
!699 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !700, file: !697, line: 188, baseType: !62, size: 32, elements: !709)
!700 = distinct !DISubprogram(name: "x2nrealloc", scope: !697, file: !697, line: 176, type: !701, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{!88, !88, !703, !90}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!704 = !{!705, !706, !707, !708}
!705 = !DILocalVariable(name: "p", arg: 1, scope: !700, file: !697, line: 176, type: !88)
!706 = !DILocalVariable(name: "pn", arg: 2, scope: !700, file: !697, line: 176, type: !703)
!707 = !DILocalVariable(name: "s", arg: 3, scope: !700, file: !697, line: 176, type: !90)
!708 = !DILocalVariable(name: "n", scope: !700, file: !697, line: 178, type: !90)
!709 = !{!710}
!710 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!711 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !712, file: !697, line: 228, baseType: !62, size: 32, elements: !709)
!712 = distinct !DISubprogram(name: "xpalloc", scope: !697, file: !697, line: 223, type: !713, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !719)
!713 = !DISubroutineType(types: !714)
!714 = !{!88, !88, !715, !716, !718, !716}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !717, line: 130, baseType: !718)
!717 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !91, line: 35, baseType: !170)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728}
!720 = !DILocalVariable(name: "pa", arg: 1, scope: !712, file: !697, line: 223, type: !88)
!721 = !DILocalVariable(name: "pn", arg: 2, scope: !712, file: !697, line: 223, type: !715)
!722 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !712, file: !697, line: 223, type: !716)
!723 = !DILocalVariable(name: "n_max", arg: 4, scope: !712, file: !697, line: 223, type: !718)
!724 = !DILocalVariable(name: "s", arg: 5, scope: !712, file: !697, line: 223, type: !716)
!725 = !DILocalVariable(name: "n0", scope: !712, file: !697, line: 230, type: !716)
!726 = !DILocalVariable(name: "n", scope: !712, file: !697, line: 237, type: !716)
!727 = !DILocalVariable(name: "nbytes", scope: !712, file: !697, line: 248, type: !716)
!728 = !DILocalVariable(name: "adjusted_nbytes", scope: !712, file: !697, line: 252, type: !716)
!729 = !{!87, !88, !129, !170, !92}
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !659, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !731, splitDebugInlining: false, nameTableKind: None)
!731 = !{!657, !660, !662}
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!735 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !694, splitDebugInlining: false, nameTableKind: None)
!737 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !694, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !742, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!742 = !{!129, !92, !88}
!743 = distinct !DICompileUnit(language: DW_LANG_C11, file: !684, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !744, splitDebugInlining: false, nameTableKind: None)
!744 = !{!682, !685}
!745 = distinct !DICompileUnit(language: DW_LANG_C11, file: !746, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!746 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!747 = distinct !DICompileUnit(language: DW_LANG_C11, file: !748, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !694, splitDebugInlining: false, nameTableKind: None)
!748 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!749 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!750 = !{i32 7, !"Dwarf Version", i32 5}
!751 = !{i32 2, !"Debug Info Version", i32 3}
!752 = !{i32 1, !"wchar_size", i32 4}
!753 = !{i32 8, !"PIC Level", i32 2}
!754 = !{i32 7, !"PIE Level", i32 2}
!755 = !{i32 7, !"uwtable", i32 2}
!756 = !{i32 7, !"frame-pointer", i32 1}
!757 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 56, type: !758, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !67}
!760 = !{!761}
!761 = !DILocalVariable(name: "status", arg: 1, scope: !757, file: !2, line: 56, type: !67)
!762 = !DILocation(line: 0, scope: !757)
!763 = !DILocation(line: 58, column: 14, scope: !764)
!764 = distinct !DILexicalBlock(scope: !757, file: !2, line: 58, column: 7)
!765 = !DILocation(line: 58, column: 7, scope: !757)
!766 = !DILocation(line: 59, column: 5, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !2, line: 59, column: 5)
!768 = !{!769, !769, i64 0}
!769 = !{!"any pointer", !770, i64 0}
!770 = !{!"omnipotent char", !771, i64 0}
!771 = !{!"Simple C/C++ TBAA"}
!772 = !DILocation(line: 62, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !764, file: !2, line: 61, column: 5)
!774 = !DILocation(line: 69, column: 7, scope: !773)
!775 = !DILocation(line: 73, column: 7, scope: !773)
!776 = !DILocation(line: 74, column: 7, scope: !773)
!777 = !DILocation(line: 75, column: 7, scope: !773)
!778 = !DILocalVariable(name: "program", arg: 1, scope: !779, file: !66, line: 836, type: !93)
!779 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !66, file: !66, line: 836, type: !780, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !93}
!782 = !{!778, !783, !790, !791, !793, !794}
!783 = !DILocalVariable(name: "infomap", scope: !779, file: !66, line: 838, type: !784)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 896, elements: !234)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !779, file: !66, line: 838, size: 128, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !786, file: !66, line: 838, baseType: !93, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !786, file: !66, line: 838, baseType: !93, size: 64, offset: 64)
!790 = !DILocalVariable(name: "node", scope: !779, file: !66, line: 848, type: !93)
!791 = !DILocalVariable(name: "map_prog", scope: !779, file: !66, line: 849, type: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!793 = !DILocalVariable(name: "lc_messages", scope: !779, file: !66, line: 861, type: !93)
!794 = !DILocalVariable(name: "url_program", scope: !779, file: !66, line: 874, type: !93)
!795 = !DILocation(line: 0, scope: !779, inlinedAt: !796)
!796 = distinct !DILocation(line: 76, column: 7, scope: !773)
!797 = !DILocation(line: 857, column: 3, scope: !779, inlinedAt: !796)
!798 = !DILocation(line: 861, column: 29, scope: !779, inlinedAt: !796)
!799 = !DILocation(line: 862, column: 7, scope: !800, inlinedAt: !796)
!800 = distinct !DILexicalBlock(scope: !779, file: !66, line: 862, column: 7)
!801 = !DILocation(line: 862, column: 19, scope: !800, inlinedAt: !796)
!802 = !DILocation(line: 862, column: 22, scope: !800, inlinedAt: !796)
!803 = !DILocation(line: 862, column: 7, scope: !779, inlinedAt: !796)
!804 = !DILocation(line: 868, column: 7, scope: !805, inlinedAt: !796)
!805 = distinct !DILexicalBlock(scope: !800, file: !66, line: 863, column: 5)
!806 = !DILocation(line: 870, column: 5, scope: !805, inlinedAt: !796)
!807 = !DILocation(line: 875, column: 3, scope: !779, inlinedAt: !796)
!808 = !DILocation(line: 877, column: 3, scope: !779, inlinedAt: !796)
!809 = !DILocation(line: 78, column: 3, scope: !757)
!810 = !DISubprogram(name: "dcgettext", scope: !811, file: !811, line: 51, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!811 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!812 = !DISubroutineType(types: !813)
!813 = !{!87, !93, !93, !67}
!814 = !{}
!815 = !DISubprogram(name: "__fprintf_chk", scope: !816, file: !816, line: 93, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!816 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!817 = !DISubroutineType(types: !818)
!818 = !{!67, !819, !67, !820, null}
!819 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!820 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!821 = !DISubprogram(name: "__printf_chk", scope: !816, file: !816, line: 95, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!822 = !DISubroutineType(types: !823)
!823 = !{!67, !67, !820, null}
!824 = !DILocation(line: 0, scope: !119)
!825 = !DILocation(line: 581, column: 7, scope: !127)
!826 = !{!827, !827, i64 0}
!827 = !{!"int", !770, i64 0}
!828 = !DILocation(line: 581, column: 19, scope: !127)
!829 = !DILocation(line: 581, column: 7, scope: !119)
!830 = !DILocation(line: 585, column: 26, scope: !126)
!831 = !DILocation(line: 0, scope: !126)
!832 = !DILocation(line: 586, column: 23, scope: !126)
!833 = !DILocation(line: 586, column: 28, scope: !126)
!834 = !DILocation(line: 586, column: 32, scope: !126)
!835 = !{!770, !770, i64 0}
!836 = !DILocation(line: 586, column: 38, scope: !126)
!837 = !DILocalVariable(name: "__s1", arg: 1, scope: !838, file: !839, line: 1359, type: !93)
!838 = distinct !DISubprogram(name: "streq", scope: !839, file: !839, line: 1359, type: !840, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !842)
!839 = !DIFile(filename: "./lib/string.h", directory: "/src")
!840 = !DISubroutineType(types: !841)
!841 = !{!129, !93, !93}
!842 = !{!837, !843}
!843 = !DILocalVariable(name: "__s2", arg: 2, scope: !838, file: !839, line: 1359, type: !93)
!844 = !DILocation(line: 0, scope: !838, inlinedAt: !845)
!845 = distinct !DILocation(line: 586, column: 41, scope: !126)
!846 = !DILocation(line: 1361, column: 11, scope: !838, inlinedAt: !845)
!847 = !DILocation(line: 1361, column: 10, scope: !838, inlinedAt: !845)
!848 = !DILocation(line: 586, column: 19, scope: !126)
!849 = !DILocation(line: 587, column: 5, scope: !126)
!850 = !DILocation(line: 588, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !119, file: !66, line: 588, column: 7)
!852 = !DILocation(line: 588, column: 7, scope: !119)
!853 = !DILocation(line: 590, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !66, line: 589, column: 5)
!855 = !DILocation(line: 591, column: 7, scope: !854)
!856 = !DILocation(line: 595, column: 37, scope: !119)
!857 = !DILocation(line: 595, column: 35, scope: !119)
!858 = !DILocation(line: 596, column: 29, scope: !119)
!859 = !DILocation(line: 597, column: 8, scope: !135)
!860 = !DILocation(line: 597, column: 7, scope: !119)
!861 = !DILocation(line: 604, column: 24, scope: !134)
!862 = !DILocation(line: 604, column: 12, scope: !135)
!863 = !DILocation(line: 0, scope: !133)
!864 = !DILocation(line: 610, column: 16, scope: !133)
!865 = !DILocation(line: 610, column: 7, scope: !133)
!866 = !DILocation(line: 611, column: 21, scope: !133)
!867 = !{!868, !868, i64 0}
!868 = !{!"short", !770, i64 0}
!869 = !DILocation(line: 611, column: 19, scope: !133)
!870 = !DILocation(line: 611, column: 16, scope: !133)
!871 = !DILocation(line: 610, column: 30, scope: !133)
!872 = distinct !{!872, !865, !866, !873}
!873 = !{!"llvm.loop.mustprogress"}
!874 = !DILocation(line: 612, column: 18, scope: !875)
!875 = distinct !DILexicalBlock(scope: !133, file: !66, line: 612, column: 11)
!876 = !DILocation(line: 612, column: 11, scope: !133)
!877 = !DILocation(line: 620, column: 23, scope: !119)
!878 = !DILocation(line: 625, column: 39, scope: !119)
!879 = !DILocation(line: 626, column: 3, scope: !119)
!880 = !DILocation(line: 626, column: 10, scope: !119)
!881 = !DILocation(line: 626, column: 21, scope: !119)
!882 = !DILocation(line: 628, column: 44, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !66, line: 628, column: 11)
!884 = distinct !DILexicalBlock(scope: !119, file: !66, line: 627, column: 5)
!885 = !DILocation(line: 628, column: 32, scope: !883)
!886 = !DILocation(line: 628, column: 49, scope: !883)
!887 = !DILocation(line: 628, column: 11, scope: !884)
!888 = !DILocation(line: 630, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !884, file: !66, line: 630, column: 11)
!890 = !DILocation(line: 630, column: 11, scope: !884)
!891 = !DILocation(line: 632, column: 26, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !66, line: 632, column: 15)
!893 = distinct !DILexicalBlock(scope: !889, file: !66, line: 631, column: 9)
!894 = !DILocation(line: 632, column: 34, scope: !892)
!895 = !DILocation(line: 632, column: 37, scope: !892)
!896 = !DILocation(line: 632, column: 15, scope: !893)
!897 = !DILocation(line: 640, column: 16, scope: !884)
!898 = distinct !{!898, !879, !899, !873}
!899 = !DILocation(line: 641, column: 5, scope: !119)
!900 = !DILocation(line: 644, column: 3, scope: !119)
!901 = !DILocation(line: 0, scope: !838, inlinedAt: !902)
!902 = distinct !DILocation(line: 648, column: 31, scope: !119)
!903 = !DILocation(line: 0, scope: !838, inlinedAt: !904)
!904 = distinct !DILocation(line: 649, column: 31, scope: !119)
!905 = !DILocation(line: 0, scope: !838, inlinedAt: !906)
!906 = distinct !DILocation(line: 650, column: 31, scope: !119)
!907 = !DILocation(line: 0, scope: !838, inlinedAt: !908)
!908 = distinct !DILocation(line: 651, column: 31, scope: !119)
!909 = !DILocation(line: 0, scope: !838, inlinedAt: !910)
!910 = distinct !DILocation(line: 652, column: 31, scope: !119)
!911 = !DILocation(line: 0, scope: !838, inlinedAt: !912)
!912 = distinct !DILocation(line: 653, column: 31, scope: !119)
!913 = !DILocation(line: 0, scope: !838, inlinedAt: !914)
!914 = distinct !DILocation(line: 654, column: 31, scope: !119)
!915 = !DILocation(line: 0, scope: !838, inlinedAt: !916)
!916 = distinct !DILocation(line: 655, column: 31, scope: !119)
!917 = !DILocation(line: 0, scope: !838, inlinedAt: !918)
!918 = distinct !DILocation(line: 656, column: 31, scope: !119)
!919 = !DILocation(line: 0, scope: !838, inlinedAt: !920)
!920 = distinct !DILocation(line: 657, column: 31, scope: !119)
!921 = !DILocation(line: 663, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !119, file: !66, line: 663, column: 7)
!923 = !DILocation(line: 664, column: 7, scope: !922)
!924 = !DILocation(line: 664, column: 10, scope: !922)
!925 = !DILocation(line: 663, column: 7, scope: !119)
!926 = !DILocation(line: 669, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !66, line: 665, column: 5)
!928 = !DILocation(line: 671, column: 5, scope: !927)
!929 = !DILocation(line: 676, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !922, file: !66, line: 673, column: 5)
!931 = !DILocation(line: 679, column: 3, scope: !119)
!932 = !DILocation(line: 683, column: 3, scope: !119)
!933 = !DILocation(line: 686, column: 3, scope: !119)
!934 = !DILocation(line: 688, column: 3, scope: !119)
!935 = !DILocation(line: 691, column: 3, scope: !119)
!936 = !DILocation(line: 695, column: 3, scope: !119)
!937 = !DILocation(line: 696, column: 1, scope: !119)
!938 = !DISubprogram(name: "setlocale", scope: !939, file: !939, line: 122, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!939 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!940 = !DISubroutineType(types: !941)
!941 = !{!87, !67, !93}
!942 = !DISubprogram(name: "strncmp", scope: !943, file: !943, line: 159, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!943 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!944 = !DISubroutineType(types: !945)
!945 = !{!67, !93, !93, !90}
!946 = !DISubprogram(name: "fputs_unlocked", scope: !361, file: !361, line: 691, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!947 = !DISubroutineType(types: !948)
!948 = !{!67, !820, !819}
!949 = !DISubprogram(name: "exit", scope: !950, file: !950, line: 624, type: !758, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !814)
!950 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!951 = !DISubprogram(name: "getenv", scope: !950, file: !950, line: 641, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!952 = !DISubroutineType(types: !953)
!953 = !{!87, !93}
!954 = !DISubprogram(name: "strcmp", scope: !943, file: !943, line: 156, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!955 = !DISubroutineType(types: !956)
!956 = !{!67, !93, !93}
!957 = !DISubprogram(name: "strspn", scope: !943, file: !943, line: 297, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!958 = !DISubroutineType(types: !959)
!959 = !{!92, !93, !93}
!960 = !DISubprogram(name: "strchr", scope: !943, file: !943, line: 246, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!961 = !DISubroutineType(types: !962)
!962 = !{!87, !93, !67}
!963 = !DISubprogram(name: "__ctype_b_loc", scope: !72, file: !72, line: 79, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!964 = !DISubroutineType(types: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!969 = !DISubprogram(name: "strcspn", scope: !943, file: !943, line: 293, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!970 = !DISubprogram(name: "fwrite_unlocked", scope: !361, file: !361, line: 704, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!971 = !DISubroutineType(types: !972)
!972 = !{!90, !973, !90, !90, !819}
!973 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!976 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !977, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !980)
!977 = !DISubroutineType(types: !978)
!978 = !{!67, !67, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!980 = !{!981, !982, !983, !984, !985, !986, !990, !992, !994, !997, !999, !1002}
!981 = !DILocalVariable(name: "argc", arg: 1, scope: !976, file: !2, line: 82, type: !67)
!982 = !DILocalVariable(name: "argv", arg: 2, scope: !976, file: !2, line: 82, type: !979)
!983 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !976, file: !2, line: 84, type: !129)
!984 = !DILocalVariable(name: "optc", scope: !976, file: !2, line: 95, type: !67)
!985 = !DILocalVariable(name: "ok", scope: !976, file: !2, line: 110, type: !129)
!986 = !DILocalVariable(name: "env", scope: !987, file: !2, line: 113, type: !979)
!987 = distinct !DILexicalBlock(scope: !988, file: !2, line: 113, column: 7)
!988 = distinct !DILexicalBlock(scope: !989, file: !2, line: 112, column: 5)
!989 = distinct !DILexicalBlock(scope: !976, file: !2, line: 111, column: 7)
!990 = !DILocalVariable(name: "matches", scope: !991, file: !2, line: 119, type: !67)
!991 = distinct !DILexicalBlock(scope: !989, file: !2, line: 118, column: 5)
!992 = !DILocalVariable(name: "i", scope: !993, file: !2, line: 121, type: !67)
!993 = distinct !DILexicalBlock(scope: !991, file: !2, line: 121, column: 7)
!994 = !DILocalVariable(name: "matched", scope: !995, file: !2, line: 123, type: !129)
!995 = distinct !DILexicalBlock(scope: !996, file: !2, line: 122, column: 9)
!996 = distinct !DILexicalBlock(scope: !993, file: !2, line: 121, column: 7)
!997 = !DILocalVariable(name: "env", scope: !998, file: !2, line: 129, type: !979)
!998 = distinct !DILexicalBlock(scope: !995, file: !2, line: 129, column: 11)
!999 = !DILocalVariable(name: "ep", scope: !1000, file: !2, line: 131, type: !93)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 130, column: 13)
!1001 = distinct !DILexicalBlock(scope: !998, file: !2, line: 129, column: 11)
!1002 = !DILocalVariable(name: "ap", scope: !1000, file: !2, line: 132, type: !93)
!1003 = !DILocation(line: 0, scope: !976)
!1004 = !DILocation(line: 87, column: 21, scope: !976)
!1005 = !DILocation(line: 87, column: 3, scope: !976)
!1006 = !DILocation(line: 88, column: 3, scope: !976)
!1007 = !DILocation(line: 89, column: 3, scope: !976)
!1008 = !DILocation(line: 90, column: 3, scope: !976)
!1009 = !DILocalVariable(name: "status", arg: 1, scope: !1010, file: !66, line: 102, type: !67)
!1010 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !66, file: !66, line: 102, type: !758, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1011)
!1011 = !{!1009}
!1012 = !DILocation(line: 0, scope: !1010, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 92, column: 3, scope: !976)
!1014 = !DILocation(line: 105, column: 18, scope: !1015, inlinedAt: !1013)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !66, line: 104, column: 7)
!1016 = !DILocation(line: 93, column: 3, scope: !976)
!1017 = !DILocation(line: 96, column: 18, scope: !976)
!1018 = !DILocation(line: 96, column: 3, scope: !976)
!1019 = distinct !{!1019, !1018, !1020, !873, !1021}
!1020 = !DILocation(line: 108, column: 5, scope: !976)
!1021 = !{!"llvm.loop.peeled.count", i32 1}
!1022 = !DILocation(line: 103, column: 9, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 99, column: 9)
!1024 = distinct !DILexicalBlock(scope: !976, file: !2, line: 97, column: 5)
!1025 = !DILocation(line: 104, column: 9, scope: !1023)
!1026 = !DILocation(line: 106, column: 11, scope: !1023)
!1027 = !DILocation(line: 111, column: 7, scope: !989)
!1028 = !DILocation(line: 111, column: 14, scope: !989)
!1029 = !DILocation(line: 111, column: 7, scope: !976)
!1030 = !DILocation(line: 121, column: 7, scope: !993)
!1031 = !DILocation(line: 113, column: 25, scope: !987)
!1032 = !DILocation(line: 0, scope: !987)
!1033 = !DILocation(line: 113, column: 34, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !987, file: !2, line: 113, column: 7)
!1035 = !DILocation(line: 113, column: 39, scope: !1034)
!1036 = !DILocation(line: 113, column: 7, scope: !987)
!1037 = !DILocation(line: 114, column: 9, scope: !1034)
!1038 = !DILocation(line: 113, column: 48, scope: !1034)
!1039 = distinct !{!1039, !1036, !1040, !873}
!1040 = !DILocation(line: 114, column: 9, scope: !987)
!1041 = !DILocation(line: 148, column: 31, scope: !991)
!1042 = !DILocation(line: 148, column: 29, scope: !991)
!1043 = !DILocation(line: 148, column: 21, scope: !991)
!1044 = !DILocation(line: 151, column: 10, scope: !976)
!1045 = !DILocation(line: 0, scope: !993)
!1046 = !DILocation(line: 0, scope: !991)
!1047 = !DILocation(line: 0, scope: !995)
!1048 = !DILocation(line: 126, column: 23, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !995, file: !2, line: 126, column: 15)
!1050 = !DILocation(line: 126, column: 15, scope: !1049)
!1051 = !DILocation(line: 126, column: 15, scope: !995)
!1052 = !DILocation(line: 129, column: 29, scope: !998)
!1053 = !DILocation(line: 0, scope: !998)
!1054 = !DILocation(line: 129, column: 38, scope: !1001)
!1055 = !DILocation(line: 129, column: 11, scope: !998)
!1056 = !DILocation(line: 145, column: 22, scope: !995)
!1057 = !DILocation(line: 145, column: 19, scope: !995)
!1058 = !DILocation(line: 146, column: 9, scope: !996)
!1059 = !DILocation(line: 0, scope: !1000)
!1060 = !DILocation(line: 133, column: 22, scope: !1000)
!1061 = !DILocation(line: 133, column: 26, scope: !1000)
!1062 = !DILocation(line: 133, column: 34, scope: !1000)
!1063 = !DILocation(line: 132, column: 32, scope: !1000)
!1064 = !DILocation(line: 133, column: 37, scope: !1000)
!1065 = !DILocation(line: 133, column: 41, scope: !1000)
!1066 = !DILocation(line: 133, column: 49, scope: !1000)
!1067 = !DILocation(line: 133, column: 55, scope: !1000)
!1068 = !DILocation(line: 133, column: 64, scope: !1000)
!1069 = !DILocation(line: 133, column: 58, scope: !1000)
!1070 = !DILocation(line: 133, column: 15, scope: !1000)
!1071 = !DILocation(line: 135, column: 23, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 135, column: 23)
!1073 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 134, column: 17)
!1074 = !DILocation(line: 135, column: 34, scope: !1072)
!1075 = !DILocation(line: 135, column: 37, scope: !1072)
!1076 = !DILocation(line: 135, column: 41, scope: !1072)
!1077 = !DILocation(line: 135, column: 23, scope: !1073)
!1078 = !DILocation(line: 137, column: 23, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 136, column: 21)
!1080 = !DILocation(line: 140, column: 23, scope: !1079)
!1081 = distinct !{!1081, !1070, !1082, !873}
!1082 = !DILocation(line: 142, column: 17, scope: !1000)
!1083 = !DILocation(line: 129, column: 44, scope: !1001)
!1084 = distinct !{!1084, !1055, !1085, !873}
!1085 = !DILocation(line: 143, column: 13, scope: !998)
!1086 = !DILocation(line: 121, column: 38, scope: !996)
!1087 = !DILocation(line: 121, column: 30, scope: !996)
!1088 = distinct !{!1088, !1030, !1089, !873}
!1089 = !DILocation(line: 146, column: 9, scope: !993)
!1090 = !DILocation(line: 152, column: 1, scope: !976)
!1091 = !DISubprogram(name: "bindtextdomain", scope: !811, file: !811, line: 86, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!87, !93, !93}
!1094 = !DISubprogram(name: "textdomain", scope: !811, file: !811, line: 82, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1095 = !DISubprogram(name: "atexit", scope: !950, file: !950, line: 602, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!67, !401}
!1098 = !DISubprogram(name: "getopt_long", scope: !318, file: !318, line: 66, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!67, !67, !1101, !93, !1103, !323}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!1104 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !335, file: !335, line: 50, type: !780, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !1105)
!1105 = !{!1106}
!1106 = !DILocalVariable(name: "file", arg: 1, scope: !1104, file: !335, line: 50, type: !93)
!1107 = !DILocation(line: 0, scope: !1104)
!1108 = !DILocation(line: 52, column: 13, scope: !1104)
!1109 = !DILocation(line: 53, column: 1, scope: !1104)
!1110 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !335, file: !335, line: 87, type: !1111, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !129}
!1113 = !{!1114}
!1114 = !DILocalVariable(name: "ignore", arg: 1, scope: !1110, file: !335, line: 87, type: !129)
!1115 = !DILocation(line: 0, scope: !1110)
!1116 = !DILocation(line: 89, column: 16, scope: !1110)
!1117 = !{!1118, !1118, i64 0}
!1118 = !{!"_Bool", !770, i64 0}
!1119 = !DILocation(line: 90, column: 1, scope: !1110)
!1120 = distinct !DISubprogram(name: "close_stdout", scope: !335, file: !335, line: 116, type: !402, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !1121)
!1121 = !{!1122}
!1122 = !DILocalVariable(name: "write_error", scope: !1123, file: !335, line: 121, type: !93)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !335, line: 120, column: 5)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !335, line: 118, column: 7)
!1125 = !DILocation(line: 118, column: 21, scope: !1124)
!1126 = !DILocation(line: 118, column: 7, scope: !1124)
!1127 = !DILocation(line: 118, column: 29, scope: !1124)
!1128 = !DILocation(line: 119, column: 7, scope: !1124)
!1129 = !DILocation(line: 119, column: 12, scope: !1124)
!1130 = !{i8 0, i8 2}
!1131 = !DILocation(line: 119, column: 25, scope: !1124)
!1132 = !DILocation(line: 119, column: 28, scope: !1124)
!1133 = !DILocation(line: 119, column: 34, scope: !1124)
!1134 = !DILocation(line: 118, column: 7, scope: !1120)
!1135 = !DILocation(line: 121, column: 33, scope: !1123)
!1136 = !DILocation(line: 0, scope: !1123)
!1137 = !DILocation(line: 122, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1123, file: !335, line: 122, column: 11)
!1139 = !DILocation(line: 0, scope: !1138)
!1140 = !DILocation(line: 122, column: 11, scope: !1123)
!1141 = !DILocation(line: 123, column: 9, scope: !1138)
!1142 = !DILocation(line: 126, column: 9, scope: !1138)
!1143 = !DILocation(line: 128, column: 14, scope: !1123)
!1144 = !DILocation(line: 128, column: 7, scope: !1123)
!1145 = !DILocation(line: 133, column: 42, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1120, file: !335, line: 133, column: 7)
!1147 = !DILocation(line: 133, column: 28, scope: !1146)
!1148 = !DILocation(line: 133, column: 50, scope: !1146)
!1149 = !DILocation(line: 133, column: 7, scope: !1120)
!1150 = !DILocation(line: 134, column: 12, scope: !1146)
!1151 = !DILocation(line: 134, column: 5, scope: !1146)
!1152 = !DILocation(line: 135, column: 1, scope: !1120)
!1153 = !DISubprogram(name: "__errno_location", scope: !1154, file: !1154, line: 37, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1154 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!323}
!1157 = !DISubprogram(name: "_exit", scope: !1158, file: !1158, line: 624, type: !758, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1158 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1159 = distinct !DISubprogram(name: "verror", scope: !350, file: !350, line: 251, type: !1160, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !67, !67, !93, !360}
!1162 = !{!1163, !1164, !1165, !1166}
!1163 = !DILocalVariable(name: "status", arg: 1, scope: !1159, file: !350, line: 251, type: !67)
!1164 = !DILocalVariable(name: "errnum", arg: 2, scope: !1159, file: !350, line: 251, type: !67)
!1165 = !DILocalVariable(name: "message", arg: 3, scope: !1159, file: !350, line: 251, type: !93)
!1166 = !DILocalVariable(name: "args", arg: 4, scope: !1159, file: !350, line: 251, type: !360)
!1167 = !DILocation(line: 0, scope: !1159)
!1168 = !DILocation(line: 251, column: 1, scope: !1159)
!1169 = !DILocation(line: 261, column: 3, scope: !1159)
!1170 = !DILocation(line: 265, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1159, file: !350, line: 265, column: 7)
!1172 = !DILocation(line: 265, column: 7, scope: !1159)
!1173 = !DILocation(line: 266, column: 5, scope: !1171)
!1174 = !DILocation(line: 272, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !350, line: 268, column: 5)
!1176 = !DILocation(line: 276, column: 3, scope: !1159)
!1177 = !{i64 0, i64 8, !768, i64 8, i64 8, !768, i64 16, i64 8, !768, i64 24, i64 4, !826, i64 28, i64 4, !826}
!1178 = !DILocation(line: 282, column: 1, scope: !1159)
!1179 = distinct !DISubprogram(name: "flush_stdout", scope: !350, file: !350, line: 163, type: !402, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1180)
!1180 = !{!1181}
!1181 = !DILocalVariable(name: "stdout_fd", scope: !1179, file: !350, line: 166, type: !67)
!1182 = !DILocation(line: 0, scope: !1179)
!1183 = !DILocalVariable(name: "fd", arg: 1, scope: !1184, file: !350, line: 145, type: !67)
!1184 = distinct !DISubprogram(name: "is_open", scope: !350, file: !350, line: 145, type: !1185, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!67, !67}
!1187 = !{!1183}
!1188 = !DILocation(line: 0, scope: !1184, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 182, column: 25, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1179, file: !350, line: 182, column: 7)
!1191 = !DILocation(line: 157, column: 15, scope: !1184, inlinedAt: !1189)
!1192 = !DILocation(line: 157, column: 12, scope: !1184, inlinedAt: !1189)
!1193 = !DILocation(line: 182, column: 7, scope: !1179)
!1194 = !DILocation(line: 184, column: 5, scope: !1190)
!1195 = !DILocation(line: 185, column: 1, scope: !1179)
!1196 = distinct !DISubprogram(name: "error_tail", scope: !350, file: !350, line: 219, type: !1160, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1197)
!1197 = !{!1198, !1199, !1200, !1201}
!1198 = !DILocalVariable(name: "status", arg: 1, scope: !1196, file: !350, line: 219, type: !67)
!1199 = !DILocalVariable(name: "errnum", arg: 2, scope: !1196, file: !350, line: 219, type: !67)
!1200 = !DILocalVariable(name: "message", arg: 3, scope: !1196, file: !350, line: 219, type: !93)
!1201 = !DILocalVariable(name: "args", arg: 4, scope: !1196, file: !350, line: 219, type: !360)
!1202 = !DILocation(line: 0, scope: !1196)
!1203 = !DILocation(line: 219, column: 1, scope: !1196)
!1204 = !DILocation(line: 229, column: 13, scope: !1196)
!1205 = !DILocation(line: 135, column: 10, scope: !1206, inlinedAt: !1248)
!1206 = distinct !DISubprogram(name: "vfprintf", scope: !816, file: !816, line: 132, type: !1207, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1244)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!67, !1209, !820, !362}
!1209 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1210)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1212, file: !146, line: 51, baseType: !67, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1212, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1212, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1212, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1212, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1212, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1212, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1212, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1212, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1212, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1212, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1212, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1212, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1212, file: !146, line: 70, baseType: !1228, size: 64, offset: 832)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1212, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1212, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1212, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1212, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1212, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1212, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1212, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1212, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1212, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1212, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1212, file: !146, line: 93, baseType: !1228, size: 64, offset: 1344)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1212, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1212, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1212, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1212, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!1244 = !{!1245, !1246, !1247}
!1245 = !DILocalVariable(name: "__stream", arg: 1, scope: !1206, file: !816, line: 132, type: !1209)
!1246 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1206, file: !816, line: 133, type: !820)
!1247 = !DILocalVariable(name: "__ap", arg: 3, scope: !1206, file: !816, line: 133, type: !362)
!1248 = distinct !DILocation(line: 229, column: 3, scope: !1196)
!1249 = !{!1250, !1252}
!1250 = distinct !{!1250, !1251, !"vfprintf.inline: argument 0"}
!1251 = distinct !{!1251, !"vfprintf.inline"}
!1252 = distinct !{!1252, !1251, !"vfprintf.inline: argument 1"}
!1253 = !DILocation(line: 229, column: 3, scope: !1196)
!1254 = !DILocation(line: 0, scope: !1206, inlinedAt: !1248)
!1255 = !DILocation(line: 133, column: 49, scope: !1206, inlinedAt: !1248)
!1256 = !DILocation(line: 232, column: 3, scope: !1196)
!1257 = !DILocation(line: 233, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1196, file: !350, line: 233, column: 7)
!1259 = !DILocation(line: 233, column: 7, scope: !1196)
!1260 = !DILocalVariable(name: "errnum", arg: 1, scope: !1261, file: !350, line: 188, type: !67)
!1261 = distinct !DISubprogram(name: "print_errno_message", scope: !350, file: !350, line: 188, type: !758, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1262)
!1262 = !{!1260, !1263, !1264}
!1263 = !DILocalVariable(name: "s", scope: !1261, file: !350, line: 190, type: !93)
!1264 = !DILocalVariable(name: "errbuf", scope: !1261, file: !350, line: 193, type: !1265)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 1024)
!1268 = !DILocation(line: 0, scope: !1261, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 234, column: 5, scope: !1258)
!1270 = !DILocation(line: 193, column: 3, scope: !1261, inlinedAt: !1269)
!1271 = !DILocation(line: 193, column: 8, scope: !1261, inlinedAt: !1269)
!1272 = !DILocation(line: 195, column: 7, scope: !1261, inlinedAt: !1269)
!1273 = !DILocation(line: 207, column: 9, scope: !1274, inlinedAt: !1269)
!1274 = distinct !DILexicalBlock(scope: !1261, file: !350, line: 207, column: 7)
!1275 = !DILocation(line: 207, column: 7, scope: !1261, inlinedAt: !1269)
!1276 = !DILocation(line: 208, column: 9, scope: !1274, inlinedAt: !1269)
!1277 = !DILocation(line: 208, column: 5, scope: !1274, inlinedAt: !1269)
!1278 = !DILocation(line: 214, column: 3, scope: !1261, inlinedAt: !1269)
!1279 = !DILocation(line: 216, column: 1, scope: !1261, inlinedAt: !1269)
!1280 = !DILocation(line: 234, column: 5, scope: !1258)
!1281 = !DILocation(line: 238, column: 3, scope: !1196)
!1282 = !DILocalVariable(name: "__c", arg: 1, scope: !1283, file: !1284, line: 101, type: !67)
!1283 = distinct !DISubprogram(name: "putc_unlocked", scope: !1284, file: !1284, line: 101, type: !1285, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1287)
!1284 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!67, !67, !1210}
!1287 = !{!1282, !1288}
!1288 = !DILocalVariable(name: "__stream", arg: 2, scope: !1283, file: !1284, line: 101, type: !1210)
!1289 = !DILocation(line: 0, scope: !1283, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 238, column: 3, scope: !1196)
!1291 = !DILocation(line: 103, column: 10, scope: !1283, inlinedAt: !1290)
!1292 = !{!1293, !769, i64 40}
!1293 = !{!"_IO_FILE", !827, i64 0, !769, i64 8, !769, i64 16, !769, i64 24, !769, i64 32, !769, i64 40, !769, i64 48, !769, i64 56, !769, i64 64, !769, i64 72, !769, i64 80, !769, i64 88, !769, i64 96, !769, i64 104, !827, i64 112, !827, i64 116, !1294, i64 120, !868, i64 128, !770, i64 130, !770, i64 131, !769, i64 136, !1294, i64 144, !769, i64 152, !769, i64 160, !769, i64 168, !769, i64 176, !1294, i64 184, !827, i64 192, !770, i64 196}
!1294 = !{!"long", !770, i64 0}
!1295 = !{!1293, !769, i64 48}
!1296 = !{!"branch_weights", i32 2000, i32 1}
!1297 = !DILocation(line: 240, column: 3, scope: !1196)
!1298 = !DILocation(line: 241, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1196, file: !350, line: 241, column: 7)
!1300 = !DILocation(line: 241, column: 7, scope: !1196)
!1301 = !DILocation(line: 242, column: 5, scope: !1299)
!1302 = !DILocation(line: 243, column: 1, scope: !1196)
!1303 = !DISubprogram(name: "__vfprintf_chk", scope: !816, file: !816, line: 96, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!67, !1209, !67, !820, !362}
!1306 = !DISubprogram(name: "strerror_r", scope: !943, file: !943, line: 444, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!87, !67, !87, !90}
!1309 = !DISubprogram(name: "__overflow", scope: !361, file: !361, line: 886, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!67, !1210, !67}
!1312 = !DISubprogram(name: "fflush_unlocked", scope: !361, file: !361, line: 239, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!67, !1210}
!1315 = !DISubprogram(name: "fcntl", scope: !1316, file: !1316, line: 149, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1316 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!67, !67, !67, null}
!1319 = distinct !DISubprogram(name: "error", scope: !350, file: !350, line: 285, type: !1320, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !67, !67, !93, null}
!1322 = !{!1323, !1324, !1325, !1326}
!1323 = !DILocalVariable(name: "status", arg: 1, scope: !1319, file: !350, line: 285, type: !67)
!1324 = !DILocalVariable(name: "errnum", arg: 2, scope: !1319, file: !350, line: 285, type: !67)
!1325 = !DILocalVariable(name: "message", arg: 3, scope: !1319, file: !350, line: 285, type: !93)
!1326 = !DILocalVariable(name: "ap", scope: !1319, file: !350, line: 287, type: !360)
!1327 = !DILocation(line: 0, scope: !1319)
!1328 = !DILocation(line: 287, column: 3, scope: !1319)
!1329 = !DILocation(line: 287, column: 11, scope: !1319)
!1330 = !DILocation(line: 288, column: 3, scope: !1319)
!1331 = !DILocation(line: 289, column: 3, scope: !1319)
!1332 = !DILocation(line: 290, column: 3, scope: !1319)
!1333 = !DILocation(line: 291, column: 1, scope: !1319)
!1334 = !DILocation(line: 0, scope: !357)
!1335 = !DILocation(line: 298, column: 1, scope: !357)
!1336 = !DILocation(line: 302, column: 7, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !357, file: !350, line: 302, column: 7)
!1338 = !DILocation(line: 302, column: 7, scope: !357)
!1339 = !DILocation(line: 307, column: 11, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !350, line: 307, column: 11)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !350, line: 303, column: 5)
!1342 = !DILocation(line: 307, column: 27, scope: !1340)
!1343 = !DILocation(line: 308, column: 11, scope: !1340)
!1344 = !DILocation(line: 308, column: 28, scope: !1340)
!1345 = !DILocation(line: 308, column: 25, scope: !1340)
!1346 = !DILocation(line: 309, column: 15, scope: !1340)
!1347 = !DILocation(line: 309, column: 33, scope: !1340)
!1348 = !DILocation(line: 310, column: 19, scope: !1340)
!1349 = !DILocation(line: 311, column: 22, scope: !1340)
!1350 = !DILocation(line: 311, column: 56, scope: !1340)
!1351 = !DILocation(line: 307, column: 11, scope: !1341)
!1352 = !DILocation(line: 316, column: 21, scope: !1341)
!1353 = !DILocation(line: 317, column: 23, scope: !1341)
!1354 = !DILocation(line: 318, column: 5, scope: !1341)
!1355 = !DILocation(line: 327, column: 3, scope: !357)
!1356 = !DILocation(line: 331, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !357, file: !350, line: 331, column: 7)
!1358 = !DILocation(line: 331, column: 7, scope: !357)
!1359 = !DILocation(line: 332, column: 5, scope: !1357)
!1360 = !DILocation(line: 338, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !350, line: 334, column: 5)
!1362 = !DILocation(line: 346, column: 3, scope: !357)
!1363 = !DILocation(line: 350, column: 3, scope: !357)
!1364 = !DILocation(line: 356, column: 1, scope: !357)
!1365 = distinct !DISubprogram(name: "error_at_line", scope: !350, file: !350, line: 359, type: !1366, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !67, !67, !93, !62, !93, null}
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374}
!1369 = !DILocalVariable(name: "status", arg: 1, scope: !1365, file: !350, line: 359, type: !67)
!1370 = !DILocalVariable(name: "errnum", arg: 2, scope: !1365, file: !350, line: 359, type: !67)
!1371 = !DILocalVariable(name: "file_name", arg: 3, scope: !1365, file: !350, line: 359, type: !93)
!1372 = !DILocalVariable(name: "line_number", arg: 4, scope: !1365, file: !350, line: 360, type: !62)
!1373 = !DILocalVariable(name: "message", arg: 5, scope: !1365, file: !350, line: 360, type: !93)
!1374 = !DILocalVariable(name: "ap", scope: !1365, file: !350, line: 362, type: !360)
!1375 = !DILocation(line: 0, scope: !1365)
!1376 = !DILocation(line: 362, column: 3, scope: !1365)
!1377 = !DILocation(line: 362, column: 11, scope: !1365)
!1378 = !DILocation(line: 363, column: 3, scope: !1365)
!1379 = !DILocation(line: 364, column: 3, scope: !1365)
!1380 = !DILocation(line: 366, column: 3, scope: !1365)
!1381 = !DILocation(line: 367, column: 1, scope: !1365)
!1382 = distinct !DISubprogram(name: "getprogname", scope: !688, file: !688, line: 54, type: !1383, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !814)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!93}
!1385 = !DILocation(line: 58, column: 10, scope: !1382)
!1386 = !DILocation(line: 58, column: 3, scope: !1382)
!1387 = distinct !DISubprogram(name: "set_program_name", scope: !407, file: !407, line: 37, type: !780, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1388)
!1388 = !{!1389, !1390, !1391}
!1389 = !DILocalVariable(name: "argv0", arg: 1, scope: !1387, file: !407, line: 37, type: !93)
!1390 = !DILocalVariable(name: "slash", scope: !1387, file: !407, line: 44, type: !93)
!1391 = !DILocalVariable(name: "base", scope: !1387, file: !407, line: 45, type: !93)
!1392 = !DILocation(line: 0, scope: !1387)
!1393 = !DILocation(line: 44, column: 23, scope: !1387)
!1394 = !DILocation(line: 45, column: 22, scope: !1387)
!1395 = !DILocation(line: 46, column: 17, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1387, file: !407, line: 46, column: 7)
!1397 = !DILocation(line: 46, column: 9, scope: !1396)
!1398 = !DILocation(line: 46, column: 25, scope: !1396)
!1399 = !DILocation(line: 46, column: 40, scope: !1396)
!1400 = !DILocalVariable(name: "__s1", arg: 1, scope: !1401, file: !839, line: 974, type: !974)
!1401 = distinct !DISubprogram(name: "memeq", scope: !839, file: !839, line: 974, type: !1402, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!129, !974, !974, !90}
!1404 = !{!1400, !1405, !1406}
!1405 = !DILocalVariable(name: "__s2", arg: 2, scope: !1401, file: !839, line: 974, type: !974)
!1406 = !DILocalVariable(name: "__n", arg: 3, scope: !1401, file: !839, line: 974, type: !90)
!1407 = !DILocation(line: 0, scope: !1401, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 46, column: 28, scope: !1396)
!1409 = !DILocation(line: 976, column: 11, scope: !1401, inlinedAt: !1408)
!1410 = !DILocation(line: 976, column: 10, scope: !1401, inlinedAt: !1408)
!1411 = !DILocation(line: 46, column: 7, scope: !1387)
!1412 = !DILocation(line: 49, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !407, line: 49, column: 11)
!1414 = distinct !DILexicalBlock(scope: !1396, file: !407, line: 47, column: 5)
!1415 = !DILocation(line: 49, column: 36, scope: !1413)
!1416 = !DILocation(line: 49, column: 11, scope: !1414)
!1417 = !DILocation(line: 65, column: 16, scope: !1387)
!1418 = !DILocation(line: 71, column: 27, scope: !1387)
!1419 = !DILocation(line: 74, column: 33, scope: !1387)
!1420 = !DILocation(line: 76, column: 1, scope: !1387)
!1421 = !DISubprogram(name: "strrchr", scope: !943, file: !943, line: 273, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1422 = !DILocation(line: 0, scope: !416)
!1423 = !DILocation(line: 40, column: 29, scope: !416)
!1424 = !DILocation(line: 41, column: 19, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !416, file: !417, line: 41, column: 7)
!1426 = !DILocation(line: 41, column: 7, scope: !416)
!1427 = !DILocation(line: 47, column: 3, scope: !416)
!1428 = !DILocation(line: 48, column: 3, scope: !416)
!1429 = !DILocation(line: 48, column: 13, scope: !416)
!1430 = !DILocalVariable(name: "ps", arg: 1, scope: !1431, file: !1432, line: 1135, type: !1435)
!1431 = distinct !DISubprogram(name: "mbszero", scope: !1432, file: !1432, line: 1135, type: !1433, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1436)
!1432 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1436 = !{!1430}
!1437 = !DILocation(line: 0, scope: !1431, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 48, column: 18, scope: !416)
!1439 = !DILocalVariable(name: "__dest", arg: 1, scope: !1440, file: !1441, line: 57, type: !88)
!1440 = distinct !DISubprogram(name: "memset", scope: !1441, file: !1441, line: 57, type: !1442, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1444)
!1441 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!88, !88, !67, !90}
!1444 = !{!1439, !1445, !1446}
!1445 = !DILocalVariable(name: "__ch", arg: 2, scope: !1440, file: !1441, line: 57, type: !67)
!1446 = !DILocalVariable(name: "__len", arg: 3, scope: !1440, file: !1441, line: 57, type: !90)
!1447 = !DILocation(line: 0, scope: !1440, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 1137, column: 3, scope: !1431, inlinedAt: !1438)
!1449 = !DILocation(line: 59, column: 10, scope: !1440, inlinedAt: !1448)
!1450 = !DILocation(line: 49, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !416, file: !417, line: 49, column: 7)
!1452 = !DILocation(line: 49, column: 39, scope: !1451)
!1453 = !DILocation(line: 49, column: 44, scope: !1451)
!1454 = !DILocation(line: 54, column: 1, scope: !416)
!1455 = !DISubprogram(name: "mbrtoc32", scope: !428, file: !428, line: 57, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!90, !1458, !820, !90, !1460}
!1458 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1435)
!1461 = distinct !DISubprogram(name: "clone_quoting_options", scope: !447, file: !447, line: 113, type: !1462, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1465)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1464, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1465 = !{!1466, !1467, !1468}
!1466 = !DILocalVariable(name: "o", arg: 1, scope: !1461, file: !447, line: 113, type: !1464)
!1467 = !DILocalVariable(name: "saved_errno", scope: !1461, file: !447, line: 115, type: !67)
!1468 = !DILocalVariable(name: "p", scope: !1461, file: !447, line: 116, type: !1464)
!1469 = !DILocation(line: 0, scope: !1461)
!1470 = !DILocation(line: 115, column: 21, scope: !1461)
!1471 = !DILocation(line: 116, column: 40, scope: !1461)
!1472 = !DILocation(line: 116, column: 31, scope: !1461)
!1473 = !DILocation(line: 118, column: 9, scope: !1461)
!1474 = !DILocation(line: 119, column: 3, scope: !1461)
!1475 = distinct !DISubprogram(name: "get_quoting_style", scope: !447, file: !447, line: 124, type: !1476, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1480)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!473, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!1480 = !{!1481}
!1481 = !DILocalVariable(name: "o", arg: 1, scope: !1475, file: !447, line: 124, type: !1478)
!1482 = !DILocation(line: 0, scope: !1475)
!1483 = !DILocation(line: 126, column: 11, scope: !1475)
!1484 = !DILocation(line: 126, column: 46, scope: !1475)
!1485 = !{!1486, !770, i64 0}
!1486 = !{!"quoting_options", !770, i64 0, !827, i64 4, !770, i64 8, !769, i64 40, !769, i64 48}
!1487 = !DILocation(line: 126, column: 3, scope: !1475)
!1488 = distinct !DISubprogram(name: "set_quoting_style", scope: !447, file: !447, line: 132, type: !1489, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !1464, !473}
!1491 = !{!1492, !1493}
!1492 = !DILocalVariable(name: "o", arg: 1, scope: !1488, file: !447, line: 132, type: !1464)
!1493 = !DILocalVariable(name: "s", arg: 2, scope: !1488, file: !447, line: 132, type: !473)
!1494 = !DILocation(line: 0, scope: !1488)
!1495 = !DILocation(line: 134, column: 4, scope: !1488)
!1496 = !DILocation(line: 134, column: 45, scope: !1488)
!1497 = !DILocation(line: 135, column: 1, scope: !1488)
!1498 = distinct !DISubprogram(name: "set_char_quoting", scope: !447, file: !447, line: 143, type: !1499, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1501)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!67, !1464, !4, !67}
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1508, !1509}
!1502 = !DILocalVariable(name: "o", arg: 1, scope: !1498, file: !447, line: 143, type: !1464)
!1503 = !DILocalVariable(name: "c", arg: 2, scope: !1498, file: !447, line: 143, type: !4)
!1504 = !DILocalVariable(name: "i", arg: 3, scope: !1498, file: !447, line: 143, type: !67)
!1505 = !DILocalVariable(name: "uc", scope: !1498, file: !447, line: 145, type: !95)
!1506 = !DILocalVariable(name: "p", scope: !1498, file: !447, line: 146, type: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1508 = !DILocalVariable(name: "shift", scope: !1498, file: !447, line: 148, type: !67)
!1509 = !DILocalVariable(name: "r", scope: !1498, file: !447, line: 149, type: !62)
!1510 = !DILocation(line: 0, scope: !1498)
!1511 = !DILocation(line: 147, column: 6, scope: !1498)
!1512 = !DILocation(line: 147, column: 41, scope: !1498)
!1513 = !DILocation(line: 147, column: 62, scope: !1498)
!1514 = !DILocation(line: 147, column: 57, scope: !1498)
!1515 = !DILocation(line: 148, column: 15, scope: !1498)
!1516 = !DILocation(line: 149, column: 21, scope: !1498)
!1517 = !DILocation(line: 149, column: 24, scope: !1498)
!1518 = !DILocation(line: 149, column: 34, scope: !1498)
!1519 = !DILocation(line: 150, column: 19, scope: !1498)
!1520 = !DILocation(line: 150, column: 24, scope: !1498)
!1521 = !DILocation(line: 150, column: 6, scope: !1498)
!1522 = !DILocation(line: 151, column: 3, scope: !1498)
!1523 = distinct !DISubprogram(name: "set_quoting_flags", scope: !447, file: !447, line: 159, type: !1524, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!67, !1464, !67}
!1526 = !{!1527, !1528, !1529}
!1527 = !DILocalVariable(name: "o", arg: 1, scope: !1523, file: !447, line: 159, type: !1464)
!1528 = !DILocalVariable(name: "i", arg: 2, scope: !1523, file: !447, line: 159, type: !67)
!1529 = !DILocalVariable(name: "r", scope: !1523, file: !447, line: 163, type: !67)
!1530 = !DILocation(line: 0, scope: !1523)
!1531 = !DILocation(line: 161, column: 8, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1523, file: !447, line: 161, column: 7)
!1533 = !DILocation(line: 161, column: 7, scope: !1523)
!1534 = !DILocation(line: 163, column: 14, scope: !1523)
!1535 = !{!1486, !827, i64 4}
!1536 = !DILocation(line: 164, column: 12, scope: !1523)
!1537 = !DILocation(line: 165, column: 3, scope: !1523)
!1538 = distinct !DISubprogram(name: "set_custom_quoting", scope: !447, file: !447, line: 169, type: !1539, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1464, !93, !93}
!1541 = !{!1542, !1543, !1544}
!1542 = !DILocalVariable(name: "o", arg: 1, scope: !1538, file: !447, line: 169, type: !1464)
!1543 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1538, file: !447, line: 170, type: !93)
!1544 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1538, file: !447, line: 170, type: !93)
!1545 = !DILocation(line: 0, scope: !1538)
!1546 = !DILocation(line: 172, column: 8, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1538, file: !447, line: 172, column: 7)
!1548 = !DILocation(line: 172, column: 7, scope: !1538)
!1549 = !DILocation(line: 174, column: 12, scope: !1538)
!1550 = !DILocation(line: 175, column: 8, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1538, file: !447, line: 175, column: 7)
!1552 = !DILocation(line: 175, column: 19, scope: !1551)
!1553 = !DILocation(line: 176, column: 5, scope: !1551)
!1554 = !DILocation(line: 177, column: 6, scope: !1538)
!1555 = !DILocation(line: 177, column: 17, scope: !1538)
!1556 = !{!1486, !769, i64 40}
!1557 = !DILocation(line: 178, column: 6, scope: !1538)
!1558 = !DILocation(line: 178, column: 18, scope: !1538)
!1559 = !{!1486, !769, i64 48}
!1560 = !DILocation(line: 179, column: 1, scope: !1538)
!1561 = !DISubprogram(name: "abort", scope: !950, file: !950, line: 598, type: !402, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !814)
!1562 = distinct !DISubprogram(name: "quotearg_buffer", scope: !447, file: !447, line: 774, type: !1563, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!90, !87, !90, !93, !90, !1478}
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573}
!1566 = !DILocalVariable(name: "buffer", arg: 1, scope: !1562, file: !447, line: 774, type: !87)
!1567 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1562, file: !447, line: 774, type: !90)
!1568 = !DILocalVariable(name: "arg", arg: 3, scope: !1562, file: !447, line: 775, type: !93)
!1569 = !DILocalVariable(name: "argsize", arg: 4, scope: !1562, file: !447, line: 775, type: !90)
!1570 = !DILocalVariable(name: "o", arg: 5, scope: !1562, file: !447, line: 776, type: !1478)
!1571 = !DILocalVariable(name: "p", scope: !1562, file: !447, line: 778, type: !1478)
!1572 = !DILocalVariable(name: "saved_errno", scope: !1562, file: !447, line: 779, type: !67)
!1573 = !DILocalVariable(name: "r", scope: !1562, file: !447, line: 780, type: !90)
!1574 = !DILocation(line: 0, scope: !1562)
!1575 = !DILocation(line: 778, column: 37, scope: !1562)
!1576 = !DILocation(line: 779, column: 21, scope: !1562)
!1577 = !DILocation(line: 781, column: 43, scope: !1562)
!1578 = !DILocation(line: 781, column: 53, scope: !1562)
!1579 = !DILocation(line: 781, column: 63, scope: !1562)
!1580 = !DILocation(line: 782, column: 43, scope: !1562)
!1581 = !DILocation(line: 782, column: 58, scope: !1562)
!1582 = !DILocation(line: 780, column: 14, scope: !1562)
!1583 = !DILocation(line: 783, column: 9, scope: !1562)
!1584 = !DILocation(line: 784, column: 3, scope: !1562)
!1585 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !447, file: !447, line: 251, type: !1586, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1590)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!90, !87, !90, !93, !90, !473, !67, !1588, !93, !93}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1615, !1617, !1620, !1621, !1622, !1623, !1626, !1627, !1630, !1634, !1635, !1643, !1646, !1647, !1649, !1650, !1651, !1652}
!1591 = !DILocalVariable(name: "buffer", arg: 1, scope: !1585, file: !447, line: 251, type: !87)
!1592 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1585, file: !447, line: 251, type: !90)
!1593 = !DILocalVariable(name: "arg", arg: 3, scope: !1585, file: !447, line: 252, type: !93)
!1594 = !DILocalVariable(name: "argsize", arg: 4, scope: !1585, file: !447, line: 252, type: !90)
!1595 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1585, file: !447, line: 253, type: !473)
!1596 = !DILocalVariable(name: "flags", arg: 6, scope: !1585, file: !447, line: 253, type: !67)
!1597 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1585, file: !447, line: 254, type: !1588)
!1598 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1585, file: !447, line: 255, type: !93)
!1599 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1585, file: !447, line: 256, type: !93)
!1600 = !DILocalVariable(name: "unibyte_locale", scope: !1585, file: !447, line: 258, type: !129)
!1601 = !DILocalVariable(name: "len", scope: !1585, file: !447, line: 260, type: !90)
!1602 = !DILocalVariable(name: "orig_buffersize", scope: !1585, file: !447, line: 261, type: !90)
!1603 = !DILocalVariable(name: "quote_string", scope: !1585, file: !447, line: 262, type: !93)
!1604 = !DILocalVariable(name: "quote_string_len", scope: !1585, file: !447, line: 263, type: !90)
!1605 = !DILocalVariable(name: "backslash_escapes", scope: !1585, file: !447, line: 264, type: !129)
!1606 = !DILocalVariable(name: "elide_outer_quotes", scope: !1585, file: !447, line: 265, type: !129)
!1607 = !DILocalVariable(name: "encountered_single_quote", scope: !1585, file: !447, line: 266, type: !129)
!1608 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1585, file: !447, line: 267, type: !129)
!1609 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1585, file: !447, line: 309, type: !129)
!1610 = !DILocalVariable(name: "lq", scope: !1611, file: !447, line: 361, type: !93)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !447, line: 361, column: 11)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !447, line: 360, column: 13)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !447, line: 333, column: 7)
!1614 = distinct !DILexicalBlock(scope: !1585, file: !447, line: 312, column: 5)
!1615 = !DILocalVariable(name: "i", scope: !1616, file: !447, line: 395, type: !90)
!1616 = distinct !DILexicalBlock(scope: !1585, file: !447, line: 395, column: 3)
!1617 = !DILocalVariable(name: "is_right_quote", scope: !1618, file: !447, line: 397, type: !129)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !447, line: 396, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !447, line: 395, column: 3)
!1620 = !DILocalVariable(name: "escaping", scope: !1618, file: !447, line: 398, type: !129)
!1621 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1618, file: !447, line: 399, type: !129)
!1622 = !DILocalVariable(name: "c", scope: !1618, file: !447, line: 417, type: !95)
!1623 = !DILocalVariable(name: "m", scope: !1624, file: !447, line: 598, type: !90)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !447, line: 596, column: 11)
!1625 = distinct !DILexicalBlock(scope: !1618, file: !447, line: 419, column: 9)
!1626 = !DILocalVariable(name: "printable", scope: !1624, file: !447, line: 600, type: !129)
!1627 = !DILocalVariable(name: "mbs", scope: !1628, file: !447, line: 609, type: !534)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !447, line: 608, column: 15)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !447, line: 602, column: 17)
!1630 = !DILocalVariable(name: "w", scope: !1631, file: !447, line: 618, type: !427)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !447, line: 617, column: 19)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !447, line: 616, column: 17)
!1633 = distinct !DILexicalBlock(scope: !1628, file: !447, line: 616, column: 17)
!1634 = !DILocalVariable(name: "bytes", scope: !1631, file: !447, line: 619, type: !90)
!1635 = !DILocalVariable(name: "j", scope: !1636, file: !447, line: 648, type: !90)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !447, line: 648, column: 29)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !447, line: 647, column: 27)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !447, line: 645, column: 29)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !447, line: 636, column: 23)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !447, line: 628, column: 30)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !447, line: 623, column: 30)
!1642 = distinct !DILexicalBlock(scope: !1631, file: !447, line: 621, column: 25)
!1643 = !DILocalVariable(name: "ilim", scope: !1644, file: !447, line: 674, type: !90)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !447, line: 671, column: 15)
!1645 = distinct !DILexicalBlock(scope: !1624, file: !447, line: 670, column: 17)
!1646 = !DILabel(scope: !1585, name: "process_input", file: !447, line: 308)
!1647 = !DILabel(scope: !1648, name: "c_and_shell_escape", file: !447, line: 502)
!1648 = distinct !DILexicalBlock(scope: !1625, file: !447, line: 478, column: 9)
!1649 = !DILabel(scope: !1648, name: "c_escape", file: !447, line: 507)
!1650 = !DILabel(scope: !1618, name: "store_escape", file: !447, line: 709)
!1651 = !DILabel(scope: !1618, name: "store_c", file: !447, line: 712)
!1652 = !DILabel(scope: !1585, name: "force_outer_quoting_style", file: !447, line: 753)
!1653 = !DILocation(line: 0, scope: !1585)
!1654 = !DILocation(line: 258, column: 25, scope: !1585)
!1655 = !DILocation(line: 258, column: 36, scope: !1585)
!1656 = !DILocation(line: 267, column: 3, scope: !1585)
!1657 = !DILocation(line: 261, column: 10, scope: !1585)
!1658 = !DILocation(line: 262, column: 15, scope: !1585)
!1659 = !DILocation(line: 263, column: 10, scope: !1585)
!1660 = !DILocation(line: 308, column: 2, scope: !1585)
!1661 = !DILocation(line: 311, column: 3, scope: !1585)
!1662 = !DILocation(line: 318, column: 11, scope: !1614)
!1663 = !DILocation(line: 319, column: 9, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !447, line: 319, column: 9)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !447, line: 319, column: 9)
!1666 = distinct !DILexicalBlock(scope: !1614, file: !447, line: 318, column: 11)
!1667 = !DILocation(line: 319, column: 9, scope: !1665)
!1668 = !DILocation(line: 0, scope: !525, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 357, column: 26, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !447, line: 335, column: 11)
!1671 = distinct !DILexicalBlock(scope: !1613, file: !447, line: 334, column: 13)
!1672 = !DILocation(line: 199, column: 29, scope: !525, inlinedAt: !1669)
!1673 = !DILocation(line: 201, column: 19, scope: !1674, inlinedAt: !1669)
!1674 = distinct !DILexicalBlock(scope: !525, file: !447, line: 201, column: 7)
!1675 = !DILocation(line: 201, column: 7, scope: !525, inlinedAt: !1669)
!1676 = !DILocation(line: 229, column: 3, scope: !525, inlinedAt: !1669)
!1677 = !DILocation(line: 230, column: 3, scope: !525, inlinedAt: !1669)
!1678 = !DILocation(line: 230, column: 13, scope: !525, inlinedAt: !1669)
!1679 = !DILocalVariable(name: "ps", arg: 1, scope: !1680, file: !1432, line: 1135, type: !1683)
!1680 = distinct !DISubprogram(name: "mbszero", scope: !1432, file: !1432, line: 1135, type: !1681, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1684)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!1684 = !{!1679}
!1685 = !DILocation(line: 0, scope: !1680, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 230, column: 18, scope: !525, inlinedAt: !1669)
!1687 = !DILocalVariable(name: "__dest", arg: 1, scope: !1688, file: !1441, line: 57, type: !88)
!1688 = distinct !DISubprogram(name: "memset", scope: !1441, file: !1441, line: 57, type: !1442, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1689)
!1689 = !{!1687, !1690, !1691}
!1690 = !DILocalVariable(name: "__ch", arg: 2, scope: !1688, file: !1441, line: 57, type: !67)
!1691 = !DILocalVariable(name: "__len", arg: 3, scope: !1688, file: !1441, line: 57, type: !90)
!1692 = !DILocation(line: 0, scope: !1688, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 1137, column: 3, scope: !1680, inlinedAt: !1686)
!1694 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !1693)
!1695 = !DILocation(line: 231, column: 7, scope: !1696, inlinedAt: !1669)
!1696 = distinct !DILexicalBlock(scope: !525, file: !447, line: 231, column: 7)
!1697 = !DILocation(line: 231, column: 40, scope: !1696, inlinedAt: !1669)
!1698 = !DILocation(line: 231, column: 45, scope: !1696, inlinedAt: !1669)
!1699 = !DILocation(line: 235, column: 1, scope: !525, inlinedAt: !1669)
!1700 = !DILocation(line: 0, scope: !525, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 358, column: 27, scope: !1670)
!1702 = !DILocation(line: 199, column: 29, scope: !525, inlinedAt: !1701)
!1703 = !DILocation(line: 201, column: 19, scope: !1674, inlinedAt: !1701)
!1704 = !DILocation(line: 201, column: 7, scope: !525, inlinedAt: !1701)
!1705 = !DILocation(line: 229, column: 3, scope: !525, inlinedAt: !1701)
!1706 = !DILocation(line: 230, column: 3, scope: !525, inlinedAt: !1701)
!1707 = !DILocation(line: 230, column: 13, scope: !525, inlinedAt: !1701)
!1708 = !DILocation(line: 0, scope: !1680, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 230, column: 18, scope: !525, inlinedAt: !1701)
!1710 = !DILocation(line: 0, scope: !1688, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 1137, column: 3, scope: !1680, inlinedAt: !1709)
!1712 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !1711)
!1713 = !DILocation(line: 231, column: 7, scope: !1696, inlinedAt: !1701)
!1714 = !DILocation(line: 231, column: 40, scope: !1696, inlinedAt: !1701)
!1715 = !DILocation(line: 231, column: 45, scope: !1696, inlinedAt: !1701)
!1716 = !DILocation(line: 235, column: 1, scope: !525, inlinedAt: !1701)
!1717 = !DILocation(line: 360, column: 13, scope: !1613)
!1718 = !DILocation(line: 0, scope: !1611)
!1719 = !DILocation(line: 361, column: 45, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1611, file: !447, line: 361, column: 11)
!1721 = !DILocation(line: 361, column: 11, scope: !1611)
!1722 = !DILocation(line: 362, column: 13, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !447, line: 362, column: 13)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !447, line: 362, column: 13)
!1725 = !DILocation(line: 362, column: 13, scope: !1724)
!1726 = !DILocation(line: 361, column: 52, scope: !1720)
!1727 = distinct !{!1727, !1721, !1728, !873}
!1728 = !DILocation(line: 362, column: 13, scope: !1611)
!1729 = !DILocation(line: 260, column: 10, scope: !1585)
!1730 = !DILocation(line: 365, column: 28, scope: !1613)
!1731 = !DILocation(line: 367, column: 7, scope: !1614)
!1732 = !DILocation(line: 370, column: 7, scope: !1614)
!1733 = !DILocation(line: 376, column: 11, scope: !1614)
!1734 = !DILocation(line: 381, column: 11, scope: !1614)
!1735 = !DILocation(line: 382, column: 9, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !447, line: 382, column: 9)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !447, line: 382, column: 9)
!1738 = distinct !DILexicalBlock(scope: !1614, file: !447, line: 381, column: 11)
!1739 = !DILocation(line: 382, column: 9, scope: !1737)
!1740 = !DILocation(line: 389, column: 7, scope: !1614)
!1741 = !DILocation(line: 392, column: 7, scope: !1614)
!1742 = !DILocation(line: 0, scope: !1616)
!1743 = !DILocation(line: 395, column: 8, scope: !1616)
!1744 = !DILocation(line: 395, scope: !1616)
!1745 = !DILocation(line: 395, column: 34, scope: !1619)
!1746 = !DILocation(line: 395, column: 26, scope: !1619)
!1747 = !DILocation(line: 395, column: 48, scope: !1619)
!1748 = !DILocation(line: 395, column: 55, scope: !1619)
!1749 = !DILocation(line: 395, column: 3, scope: !1616)
!1750 = !DILocation(line: 395, column: 67, scope: !1619)
!1751 = !DILocation(line: 0, scope: !1618)
!1752 = !DILocation(line: 402, column: 11, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1618, file: !447, line: 401, column: 11)
!1754 = !DILocation(line: 404, column: 17, scope: !1753)
!1755 = !DILocation(line: 405, column: 39, scope: !1753)
!1756 = !DILocation(line: 409, column: 32, scope: !1753)
!1757 = !DILocation(line: 405, column: 19, scope: !1753)
!1758 = !DILocation(line: 405, column: 15, scope: !1753)
!1759 = !DILocation(line: 410, column: 11, scope: !1753)
!1760 = !DILocation(line: 410, column: 25, scope: !1753)
!1761 = !DILocalVariable(name: "__s1", arg: 1, scope: !1762, file: !839, line: 974, type: !974)
!1762 = distinct !DISubprogram(name: "memeq", scope: !839, file: !839, line: 974, type: !1402, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1763)
!1763 = !{!1761, !1764, !1765}
!1764 = !DILocalVariable(name: "__s2", arg: 2, scope: !1762, file: !839, line: 974, type: !974)
!1765 = !DILocalVariable(name: "__n", arg: 3, scope: !1762, file: !839, line: 974, type: !90)
!1766 = !DILocation(line: 0, scope: !1762, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 410, column: 14, scope: !1753)
!1768 = !DILocation(line: 976, column: 11, scope: !1762, inlinedAt: !1767)
!1769 = !DILocation(line: 976, column: 10, scope: !1762, inlinedAt: !1767)
!1770 = !DILocation(line: 401, column: 11, scope: !1618)
!1771 = !DILocation(line: 417, column: 25, scope: !1618)
!1772 = !DILocation(line: 418, column: 7, scope: !1618)
!1773 = !DILocation(line: 421, column: 15, scope: !1625)
!1774 = !DILocation(line: 423, column: 15, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !447, line: 423, column: 15)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !447, line: 422, column: 13)
!1777 = distinct !DILexicalBlock(scope: !1625, file: !447, line: 421, column: 15)
!1778 = !DILocation(line: 423, column: 15, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !447, line: 423, column: 15)
!1780 = !DILocation(line: 423, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !447, line: 423, column: 15)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !447, line: 423, column: 15)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !447, line: 423, column: 15)
!1784 = !DILocation(line: 423, column: 15, scope: !1782)
!1785 = !DILocation(line: 423, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !447, line: 423, column: 15)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !447, line: 423, column: 15)
!1788 = !DILocation(line: 423, column: 15, scope: !1787)
!1789 = !DILocation(line: 423, column: 15, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !447, line: 423, column: 15)
!1791 = distinct !DILexicalBlock(scope: !1783, file: !447, line: 423, column: 15)
!1792 = !DILocation(line: 423, column: 15, scope: !1791)
!1793 = !DILocation(line: 423, column: 15, scope: !1783)
!1794 = !DILocation(line: 423, column: 15, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !447, line: 423, column: 15)
!1796 = distinct !DILexicalBlock(scope: !1775, file: !447, line: 423, column: 15)
!1797 = !DILocation(line: 423, column: 15, scope: !1796)
!1798 = !DILocation(line: 431, column: 19, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1776, file: !447, line: 430, column: 19)
!1800 = !DILocation(line: 431, column: 24, scope: !1799)
!1801 = !DILocation(line: 431, column: 28, scope: !1799)
!1802 = !DILocation(line: 431, column: 38, scope: !1799)
!1803 = !DILocation(line: 431, column: 48, scope: !1799)
!1804 = !DILocation(line: 431, column: 59, scope: !1799)
!1805 = !DILocation(line: 433, column: 19, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !447, line: 433, column: 19)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !447, line: 433, column: 19)
!1808 = distinct !DILexicalBlock(scope: !1799, file: !447, line: 432, column: 17)
!1809 = !DILocation(line: 433, column: 19, scope: !1807)
!1810 = !DILocation(line: 434, column: 19, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !447, line: 434, column: 19)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !447, line: 434, column: 19)
!1813 = !DILocation(line: 434, column: 19, scope: !1812)
!1814 = !DILocation(line: 435, column: 17, scope: !1808)
!1815 = !DILocation(line: 442, column: 20, scope: !1777)
!1816 = !DILocation(line: 447, column: 11, scope: !1625)
!1817 = !DILocation(line: 450, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1625, file: !447, line: 448, column: 13)
!1819 = !DILocation(line: 456, column: 19, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1818, file: !447, line: 455, column: 19)
!1821 = !DILocation(line: 456, column: 24, scope: !1820)
!1822 = !DILocation(line: 456, column: 28, scope: !1820)
!1823 = !DILocation(line: 456, column: 38, scope: !1820)
!1824 = !DILocation(line: 456, column: 47, scope: !1820)
!1825 = !DILocation(line: 456, column: 41, scope: !1820)
!1826 = !DILocation(line: 456, column: 52, scope: !1820)
!1827 = !DILocation(line: 455, column: 19, scope: !1818)
!1828 = !DILocation(line: 457, column: 25, scope: !1820)
!1829 = !DILocation(line: 457, column: 17, scope: !1820)
!1830 = !DILocation(line: 464, column: 25, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1820, file: !447, line: 458, column: 19)
!1832 = !DILocation(line: 468, column: 21, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !447, line: 468, column: 21)
!1834 = distinct !DILexicalBlock(scope: !1831, file: !447, line: 468, column: 21)
!1835 = !DILocation(line: 468, column: 21, scope: !1834)
!1836 = !DILocation(line: 469, column: 21, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !447, line: 469, column: 21)
!1838 = distinct !DILexicalBlock(scope: !1831, file: !447, line: 469, column: 21)
!1839 = !DILocation(line: 469, column: 21, scope: !1838)
!1840 = !DILocation(line: 470, column: 21, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !447, line: 470, column: 21)
!1842 = distinct !DILexicalBlock(scope: !1831, file: !447, line: 470, column: 21)
!1843 = !DILocation(line: 470, column: 21, scope: !1842)
!1844 = !DILocation(line: 471, column: 21, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !447, line: 471, column: 21)
!1846 = distinct !DILexicalBlock(scope: !1831, file: !447, line: 471, column: 21)
!1847 = !DILocation(line: 471, column: 21, scope: !1846)
!1848 = !DILocation(line: 472, column: 21, scope: !1831)
!1849 = !DILocation(line: 482, column: 33, scope: !1648)
!1850 = !DILocation(line: 483, column: 33, scope: !1648)
!1851 = !DILocation(line: 485, column: 33, scope: !1648)
!1852 = !DILocation(line: 486, column: 33, scope: !1648)
!1853 = !DILocation(line: 487, column: 33, scope: !1648)
!1854 = !DILocation(line: 490, column: 17, scope: !1648)
!1855 = !DILocation(line: 492, column: 21, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !447, line: 491, column: 15)
!1857 = distinct !DILexicalBlock(scope: !1648, file: !447, line: 490, column: 17)
!1858 = !DILocation(line: 499, column: 35, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1648, file: !447, line: 499, column: 17)
!1860 = !DILocation(line: 0, scope: !1648)
!1861 = !DILocation(line: 502, column: 11, scope: !1648)
!1862 = !DILocation(line: 504, column: 17, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1648, file: !447, line: 503, column: 17)
!1864 = !DILocation(line: 507, column: 11, scope: !1648)
!1865 = !DILocation(line: 508, column: 17, scope: !1648)
!1866 = !DILocation(line: 517, column: 15, scope: !1625)
!1867 = !DILocation(line: 517, column: 40, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1625, file: !447, line: 517, column: 15)
!1869 = !DILocation(line: 517, column: 47, scope: !1868)
!1870 = !DILocation(line: 517, column: 18, scope: !1868)
!1871 = !DILocation(line: 521, column: 17, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1625, file: !447, line: 521, column: 15)
!1873 = !DILocation(line: 521, column: 15, scope: !1625)
!1874 = !DILocation(line: 525, column: 11, scope: !1625)
!1875 = !DILocation(line: 537, column: 15, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1625, file: !447, line: 536, column: 15)
!1877 = !DILocation(line: 536, column: 15, scope: !1625)
!1878 = !DILocation(line: 544, column: 15, scope: !1625)
!1879 = !DILocation(line: 546, column: 19, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !447, line: 545, column: 13)
!1881 = distinct !DILexicalBlock(scope: !1625, file: !447, line: 544, column: 15)
!1882 = !DILocation(line: 549, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !447, line: 549, column: 19)
!1884 = !DILocation(line: 549, column: 30, scope: !1883)
!1885 = !DILocation(line: 558, column: 15, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !447, line: 558, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1880, file: !447, line: 558, column: 15)
!1888 = !DILocation(line: 558, column: 15, scope: !1887)
!1889 = !DILocation(line: 559, column: 15, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !447, line: 559, column: 15)
!1891 = distinct !DILexicalBlock(scope: !1880, file: !447, line: 559, column: 15)
!1892 = !DILocation(line: 559, column: 15, scope: !1891)
!1893 = !DILocation(line: 560, column: 15, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !447, line: 560, column: 15)
!1895 = distinct !DILexicalBlock(scope: !1880, file: !447, line: 560, column: 15)
!1896 = !DILocation(line: 560, column: 15, scope: !1895)
!1897 = !DILocation(line: 562, column: 13, scope: !1880)
!1898 = !DILocation(line: 602, column: 17, scope: !1624)
!1899 = !DILocation(line: 0, scope: !1624)
!1900 = !DILocation(line: 605, column: 29, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1629, file: !447, line: 603, column: 15)
!1902 = !DILocation(line: 605, column: 41, scope: !1901)
!1903 = !DILocation(line: 606, column: 15, scope: !1901)
!1904 = !DILocation(line: 609, column: 17, scope: !1628)
!1905 = !DILocation(line: 609, column: 27, scope: !1628)
!1906 = !DILocation(line: 0, scope: !1680, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 609, column: 32, scope: !1628)
!1908 = !DILocation(line: 0, scope: !1688, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 1137, column: 3, scope: !1680, inlinedAt: !1907)
!1910 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !1909)
!1911 = !DILocation(line: 613, column: 29, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1628, file: !447, line: 613, column: 21)
!1913 = !DILocation(line: 613, column: 21, scope: !1628)
!1914 = !DILocation(line: 614, column: 29, scope: !1912)
!1915 = !DILocation(line: 614, column: 19, scope: !1912)
!1916 = !DILocation(line: 618, column: 21, scope: !1631)
!1917 = !DILocation(line: 620, column: 54, scope: !1631)
!1918 = !DILocation(line: 0, scope: !1631)
!1919 = !DILocation(line: 619, column: 36, scope: !1631)
!1920 = !DILocation(line: 621, column: 25, scope: !1631)
!1921 = !DILocation(line: 631, column: 38, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1640, file: !447, line: 629, column: 23)
!1923 = !DILocation(line: 631, column: 48, scope: !1922)
!1924 = !DILocation(line: 626, column: 25, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1641, file: !447, line: 624, column: 23)
!1926 = !DILocation(line: 631, column: 51, scope: !1922)
!1927 = !DILocation(line: 631, column: 25, scope: !1922)
!1928 = !DILocation(line: 632, column: 28, scope: !1922)
!1929 = !DILocation(line: 631, column: 34, scope: !1922)
!1930 = distinct !{!1930, !1927, !1928, !873}
!1931 = !DILocation(line: 646, column: 29, scope: !1638)
!1932 = !DILocation(line: 0, scope: !1636)
!1933 = !DILocation(line: 649, column: 49, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1636, file: !447, line: 648, column: 29)
!1935 = !DILocation(line: 649, column: 39, scope: !1934)
!1936 = !DILocation(line: 649, column: 31, scope: !1934)
!1937 = !DILocation(line: 648, column: 60, scope: !1934)
!1938 = !DILocation(line: 648, column: 50, scope: !1934)
!1939 = !DILocation(line: 648, column: 29, scope: !1636)
!1940 = distinct !{!1940, !1939, !1941, !873}
!1941 = !DILocation(line: 654, column: 33, scope: !1636)
!1942 = !DILocation(line: 657, column: 43, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1639, file: !447, line: 657, column: 29)
!1944 = !DILocalVariable(name: "wc", arg: 1, scope: !1945, file: !1946, line: 865, type: !1949)
!1945 = distinct !DISubprogram(name: "c32isprint", scope: !1946, file: !1946, line: 865, type: !1947, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !1951)
!1946 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!67, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1950, line: 20, baseType: !62)
!1950 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1951 = !{!1944}
!1952 = !DILocation(line: 0, scope: !1945, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 657, column: 31, scope: !1943)
!1954 = !DILocation(line: 871, column: 10, scope: !1945, inlinedAt: !1953)
!1955 = !DILocation(line: 657, column: 31, scope: !1943)
!1956 = !DILocation(line: 664, column: 23, scope: !1631)
!1957 = !DILocation(line: 665, column: 19, scope: !1632)
!1958 = !DILocation(line: 666, column: 15, scope: !1629)
!1959 = !DILocation(line: 753, column: 2, scope: !1585)
!1960 = !DILocation(line: 756, column: 51, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1585, file: !447, line: 756, column: 7)
!1962 = !DILocation(line: 0, scope: !1629)
!1963 = !DILocation(line: 670, column: 19, scope: !1645)
!1964 = !DILocation(line: 670, column: 23, scope: !1645)
!1965 = !DILocation(line: 674, column: 33, scope: !1644)
!1966 = !DILocation(line: 0, scope: !1644)
!1967 = !DILocation(line: 676, column: 17, scope: !1644)
!1968 = !DILocation(line: 398, column: 12, scope: !1618)
!1969 = !DILocation(line: 678, column: 43, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !447, line: 678, column: 25)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !447, line: 677, column: 19)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !447, line: 676, column: 17)
!1973 = distinct !DILexicalBlock(scope: !1644, file: !447, line: 676, column: 17)
!1974 = !DILocation(line: 680, column: 25, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !447, line: 680, column: 25)
!1976 = distinct !DILexicalBlock(scope: !1970, file: !447, line: 679, column: 23)
!1977 = !DILocation(line: 680, column: 25, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !447, line: 680, column: 25)
!1979 = !DILocation(line: 680, column: 25, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !447, line: 680, column: 25)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !447, line: 680, column: 25)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !447, line: 680, column: 25)
!1983 = !DILocation(line: 680, column: 25, scope: !1981)
!1984 = !DILocation(line: 680, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !447, line: 680, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !447, line: 680, column: 25)
!1987 = !DILocation(line: 680, column: 25, scope: !1986)
!1988 = !DILocation(line: 680, column: 25, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !447, line: 680, column: 25)
!1990 = distinct !DILexicalBlock(scope: !1982, file: !447, line: 680, column: 25)
!1991 = !DILocation(line: 680, column: 25, scope: !1990)
!1992 = !DILocation(line: 680, column: 25, scope: !1982)
!1993 = !DILocation(line: 680, column: 25, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !447, line: 680, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1975, file: !447, line: 680, column: 25)
!1996 = !DILocation(line: 680, column: 25, scope: !1995)
!1997 = !DILocation(line: 681, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !447, line: 681, column: 25)
!1999 = distinct !DILexicalBlock(scope: !1976, file: !447, line: 681, column: 25)
!2000 = !DILocation(line: 681, column: 25, scope: !1999)
!2001 = !DILocation(line: 682, column: 25, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !447, line: 682, column: 25)
!2003 = distinct !DILexicalBlock(scope: !1976, file: !447, line: 682, column: 25)
!2004 = !DILocation(line: 682, column: 25, scope: !2003)
!2005 = !DILocation(line: 683, column: 38, scope: !1976)
!2006 = !DILocation(line: 683, column: 33, scope: !1976)
!2007 = !DILocation(line: 684, column: 23, scope: !1976)
!2008 = !DILocation(line: 685, column: 30, scope: !1970)
!2009 = !DILocation(line: 687, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !447, line: 687, column: 25)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !447, line: 687, column: 25)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !447, line: 686, column: 23)
!2013 = distinct !DILexicalBlock(scope: !1970, file: !447, line: 685, column: 30)
!2014 = !DILocation(line: 687, column: 25, scope: !2011)
!2015 = !DILocation(line: 689, column: 23, scope: !2012)
!2016 = !DILocation(line: 690, column: 35, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1971, file: !447, line: 690, column: 25)
!2018 = !DILocation(line: 690, column: 30, scope: !2017)
!2019 = !DILocation(line: 690, column: 25, scope: !1971)
!2020 = !DILocation(line: 692, column: 21, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !447, line: 692, column: 21)
!2022 = distinct !DILexicalBlock(scope: !1971, file: !447, line: 692, column: 21)
!2023 = !DILocation(line: 692, column: 21, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !447, line: 692, column: 21)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !447, line: 692, column: 21)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !447, line: 692, column: 21)
!2027 = !DILocation(line: 692, column: 21, scope: !2025)
!2028 = !DILocation(line: 692, column: 21, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !447, line: 692, column: 21)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !447, line: 692, column: 21)
!2031 = !DILocation(line: 692, column: 21, scope: !2030)
!2032 = !DILocation(line: 692, column: 21, scope: !2026)
!2033 = !DILocation(line: 0, scope: !1971)
!2034 = !DILocation(line: 693, column: 21, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !447, line: 693, column: 21)
!2036 = distinct !DILexicalBlock(scope: !1971, file: !447, line: 693, column: 21)
!2037 = !DILocation(line: 693, column: 21, scope: !2036)
!2038 = !DILocation(line: 694, column: 25, scope: !1971)
!2039 = !DILocation(line: 676, column: 17, scope: !1972)
!2040 = distinct !{!2040, !2041, !2042}
!2041 = !DILocation(line: 676, column: 17, scope: !1973)
!2042 = !DILocation(line: 695, column: 19, scope: !1973)
!2043 = !DILocation(line: 409, column: 30, scope: !1753)
!2044 = !DILocation(line: 702, column: 34, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1618, file: !447, line: 702, column: 11)
!2046 = !DILocation(line: 704, column: 14, scope: !2045)
!2047 = !DILocation(line: 705, column: 14, scope: !2045)
!2048 = !DILocation(line: 705, column: 35, scope: !2045)
!2049 = !DILocation(line: 705, column: 17, scope: !2045)
!2050 = !DILocation(line: 705, column: 47, scope: !2045)
!2051 = !DILocation(line: 705, column: 65, scope: !2045)
!2052 = !DILocation(line: 706, column: 11, scope: !2045)
!2053 = !DILocation(line: 702, column: 11, scope: !1618)
!2054 = !DILocation(line: 395, column: 15, scope: !1616)
!2055 = !DILocation(line: 709, column: 5, scope: !1618)
!2056 = !DILocation(line: 710, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1618, file: !447, line: 710, column: 7)
!2058 = !DILocation(line: 710, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2057, file: !447, line: 710, column: 7)
!2060 = !DILocation(line: 710, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !447, line: 710, column: 7)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !447, line: 710, column: 7)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !447, line: 710, column: 7)
!2064 = !DILocation(line: 710, column: 7, scope: !2062)
!2065 = !DILocation(line: 710, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !447, line: 710, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !447, line: 710, column: 7)
!2068 = !DILocation(line: 710, column: 7, scope: !2067)
!2069 = !DILocation(line: 710, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !447, line: 710, column: 7)
!2071 = distinct !DILexicalBlock(scope: !2063, file: !447, line: 710, column: 7)
!2072 = !DILocation(line: 710, column: 7, scope: !2071)
!2073 = !DILocation(line: 710, column: 7, scope: !2063)
!2074 = !DILocation(line: 710, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !447, line: 710, column: 7)
!2076 = distinct !DILexicalBlock(scope: !2057, file: !447, line: 710, column: 7)
!2077 = !DILocation(line: 710, column: 7, scope: !2076)
!2078 = !DILocation(line: 712, column: 5, scope: !1618)
!2079 = !DILocation(line: 713, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !447, line: 713, column: 7)
!2081 = distinct !DILexicalBlock(scope: !1618, file: !447, line: 713, column: 7)
!2082 = !DILocation(line: 417, column: 21, scope: !1618)
!2083 = !DILocation(line: 713, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !447, line: 713, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !447, line: 713, column: 7)
!2086 = distinct !DILexicalBlock(scope: !2080, file: !447, line: 713, column: 7)
!2087 = !DILocation(line: 713, column: 7, scope: !2085)
!2088 = !DILocation(line: 713, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !447, line: 713, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !447, line: 713, column: 7)
!2091 = !DILocation(line: 713, column: 7, scope: !2090)
!2092 = !DILocation(line: 713, column: 7, scope: !2086)
!2093 = !DILocation(line: 714, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !447, line: 714, column: 7)
!2095 = distinct !DILexicalBlock(scope: !1618, file: !447, line: 714, column: 7)
!2096 = !DILocation(line: 714, column: 7, scope: !2095)
!2097 = !DILocation(line: 716, column: 11, scope: !1618)
!2098 = !DILocation(line: 718, column: 5, scope: !1619)
!2099 = !DILocation(line: 395, column: 82, scope: !1619)
!2100 = !DILocation(line: 395, column: 3, scope: !1619)
!2101 = distinct !{!2101, !1749, !2102, !873}
!2102 = !DILocation(line: 718, column: 5, scope: !1616)
!2103 = !DILocation(line: 720, column: 11, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1585, file: !447, line: 720, column: 7)
!2105 = !DILocation(line: 720, column: 16, scope: !2104)
!2106 = !DILocation(line: 728, column: 51, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1585, file: !447, line: 728, column: 7)
!2108 = !DILocation(line: 731, column: 11, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2107, file: !447, line: 730, column: 5)
!2110 = !DILocation(line: 732, column: 16, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2109, file: !447, line: 731, column: 11)
!2112 = !DILocation(line: 732, column: 9, scope: !2111)
!2113 = !DILocation(line: 736, column: 18, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !447, line: 736, column: 16)
!2115 = !DILocation(line: 736, column: 29, scope: !2114)
!2116 = !DILocation(line: 745, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1585, file: !447, line: 745, column: 7)
!2118 = !DILocation(line: 745, column: 20, scope: !2117)
!2119 = !DILocation(line: 746, column: 12, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !447, line: 746, column: 5)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !447, line: 746, column: 5)
!2122 = !DILocation(line: 746, column: 5, scope: !2121)
!2123 = !DILocation(line: 747, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !447, line: 747, column: 7)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !447, line: 747, column: 7)
!2126 = !DILocation(line: 747, column: 7, scope: !2125)
!2127 = !DILocation(line: 746, column: 39, scope: !2120)
!2128 = distinct !{!2128, !2122, !2129, !873}
!2129 = !DILocation(line: 747, column: 7, scope: !2121)
!2130 = !DILocation(line: 749, column: 11, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1585, file: !447, line: 749, column: 7)
!2132 = !DILocation(line: 749, column: 7, scope: !1585)
!2133 = !DILocation(line: 750, column: 5, scope: !2131)
!2134 = !DILocation(line: 750, column: 17, scope: !2131)
!2135 = !DILocation(line: 756, column: 21, scope: !1961)
!2136 = !DILocation(line: 760, column: 42, scope: !1585)
!2137 = !DILocation(line: 758, column: 10, scope: !1585)
!2138 = !DILocation(line: 758, column: 3, scope: !1585)
!2139 = !DILocation(line: 762, column: 1, scope: !1585)
!2140 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !950, file: !950, line: 98, type: !2141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!90}
!2143 = !DISubprogram(name: "strlen", scope: !943, file: !943, line: 407, type: !2144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!92, !93}
!2146 = !DISubprogram(name: "iswprint", scope: !2147, file: !2147, line: 120, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!2147 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2148 = distinct !DISubprogram(name: "quotearg_alloc", scope: !447, file: !447, line: 788, type: !2149, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!87, !93, !90, !1478}
!2151 = !{!2152, !2153, !2154}
!2152 = !DILocalVariable(name: "arg", arg: 1, scope: !2148, file: !447, line: 788, type: !93)
!2153 = !DILocalVariable(name: "argsize", arg: 2, scope: !2148, file: !447, line: 788, type: !90)
!2154 = !DILocalVariable(name: "o", arg: 3, scope: !2148, file: !447, line: 789, type: !1478)
!2155 = !DILocation(line: 0, scope: !2148)
!2156 = !DILocalVariable(name: "arg", arg: 1, scope: !2157, file: !447, line: 801, type: !93)
!2157 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !447, file: !447, line: 801, type: !2158, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!87, !93, !90, !703, !1478}
!2160 = !{!2156, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168}
!2161 = !DILocalVariable(name: "argsize", arg: 2, scope: !2157, file: !447, line: 801, type: !90)
!2162 = !DILocalVariable(name: "size", arg: 3, scope: !2157, file: !447, line: 801, type: !703)
!2163 = !DILocalVariable(name: "o", arg: 4, scope: !2157, file: !447, line: 802, type: !1478)
!2164 = !DILocalVariable(name: "p", scope: !2157, file: !447, line: 804, type: !1478)
!2165 = !DILocalVariable(name: "saved_errno", scope: !2157, file: !447, line: 805, type: !67)
!2166 = !DILocalVariable(name: "flags", scope: !2157, file: !447, line: 807, type: !67)
!2167 = !DILocalVariable(name: "bufsize", scope: !2157, file: !447, line: 808, type: !90)
!2168 = !DILocalVariable(name: "buf", scope: !2157, file: !447, line: 812, type: !87)
!2169 = !DILocation(line: 0, scope: !2157, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 791, column: 10, scope: !2148)
!2171 = !DILocation(line: 804, column: 37, scope: !2157, inlinedAt: !2170)
!2172 = !DILocation(line: 805, column: 21, scope: !2157, inlinedAt: !2170)
!2173 = !DILocation(line: 807, column: 18, scope: !2157, inlinedAt: !2170)
!2174 = !DILocation(line: 807, column: 24, scope: !2157, inlinedAt: !2170)
!2175 = !DILocation(line: 808, column: 72, scope: !2157, inlinedAt: !2170)
!2176 = !DILocation(line: 809, column: 56, scope: !2157, inlinedAt: !2170)
!2177 = !DILocation(line: 810, column: 49, scope: !2157, inlinedAt: !2170)
!2178 = !DILocation(line: 811, column: 49, scope: !2157, inlinedAt: !2170)
!2179 = !DILocation(line: 808, column: 20, scope: !2157, inlinedAt: !2170)
!2180 = !DILocation(line: 811, column: 62, scope: !2157, inlinedAt: !2170)
!2181 = !DILocation(line: 812, column: 15, scope: !2157, inlinedAt: !2170)
!2182 = !DILocation(line: 813, column: 60, scope: !2157, inlinedAt: !2170)
!2183 = !DILocation(line: 815, column: 32, scope: !2157, inlinedAt: !2170)
!2184 = !DILocation(line: 815, column: 47, scope: !2157, inlinedAt: !2170)
!2185 = !DILocation(line: 813, column: 3, scope: !2157, inlinedAt: !2170)
!2186 = !DILocation(line: 816, column: 9, scope: !2157, inlinedAt: !2170)
!2187 = !DILocation(line: 791, column: 3, scope: !2148)
!2188 = !DILocation(line: 0, scope: !2157)
!2189 = !DILocation(line: 804, column: 37, scope: !2157)
!2190 = !DILocation(line: 805, column: 21, scope: !2157)
!2191 = !DILocation(line: 807, column: 18, scope: !2157)
!2192 = !DILocation(line: 807, column: 27, scope: !2157)
!2193 = !DILocation(line: 807, column: 24, scope: !2157)
!2194 = !DILocation(line: 808, column: 72, scope: !2157)
!2195 = !DILocation(line: 809, column: 56, scope: !2157)
!2196 = !DILocation(line: 810, column: 49, scope: !2157)
!2197 = !DILocation(line: 811, column: 49, scope: !2157)
!2198 = !DILocation(line: 808, column: 20, scope: !2157)
!2199 = !DILocation(line: 811, column: 62, scope: !2157)
!2200 = !DILocation(line: 812, column: 15, scope: !2157)
!2201 = !DILocation(line: 813, column: 60, scope: !2157)
!2202 = !DILocation(line: 815, column: 32, scope: !2157)
!2203 = !DILocation(line: 815, column: 47, scope: !2157)
!2204 = !DILocation(line: 813, column: 3, scope: !2157)
!2205 = !DILocation(line: 816, column: 9, scope: !2157)
!2206 = !DILocation(line: 817, column: 7, scope: !2157)
!2207 = !DILocation(line: 818, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2157, file: !447, line: 817, column: 7)
!2209 = !{!1294, !1294, i64 0}
!2210 = !DILocation(line: 818, column: 5, scope: !2208)
!2211 = !DILocation(line: 819, column: 3, scope: !2157)
!2212 = distinct !DISubprogram(name: "quotearg_free", scope: !447, file: !447, line: 837, type: !402, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2213)
!2213 = !{!2214, !2215}
!2214 = !DILocalVariable(name: "sv", scope: !2212, file: !447, line: 839, type: !548)
!2215 = !DILocalVariable(name: "i", scope: !2216, file: !447, line: 840, type: !67)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !447, line: 840, column: 3)
!2217 = !DILocation(line: 839, column: 24, scope: !2212)
!2218 = !DILocation(line: 0, scope: !2212)
!2219 = !DILocation(line: 0, scope: !2216)
!2220 = !DILocation(line: 840, column: 21, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !447, line: 840, column: 3)
!2222 = !DILocation(line: 840, column: 3, scope: !2216)
!2223 = !DILocation(line: 842, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2212, file: !447, line: 842, column: 7)
!2225 = !{!2226, !769, i64 8}
!2226 = !{!"slotvec", !1294, i64 0, !769, i64 8}
!2227 = !DILocation(line: 842, column: 17, scope: !2224)
!2228 = !DILocation(line: 842, column: 7, scope: !2212)
!2229 = !DILocation(line: 841, column: 17, scope: !2221)
!2230 = !DILocation(line: 841, column: 5, scope: !2221)
!2231 = !DILocation(line: 840, column: 32, scope: !2221)
!2232 = distinct !{!2232, !2222, !2233, !873}
!2233 = !DILocation(line: 841, column: 20, scope: !2216)
!2234 = !DILocation(line: 844, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2224, file: !447, line: 843, column: 5)
!2236 = !DILocation(line: 845, column: 21, scope: !2235)
!2237 = !{!2226, !1294, i64 0}
!2238 = !DILocation(line: 846, column: 20, scope: !2235)
!2239 = !DILocation(line: 847, column: 5, scope: !2235)
!2240 = !DILocation(line: 848, column: 10, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2212, file: !447, line: 848, column: 7)
!2242 = !DILocation(line: 848, column: 7, scope: !2212)
!2243 = !DILocation(line: 850, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !447, line: 849, column: 5)
!2245 = !DILocation(line: 851, column: 15, scope: !2244)
!2246 = !DILocation(line: 852, column: 5, scope: !2244)
!2247 = !DILocation(line: 853, column: 10, scope: !2212)
!2248 = !DILocation(line: 854, column: 1, scope: !2212)
!2249 = !DISubprogram(name: "free", scope: !1432, file: !1432, line: 786, type: !2250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !88}
!2252 = distinct !DISubprogram(name: "quotearg_n", scope: !447, file: !447, line: 919, type: !940, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2253)
!2253 = !{!2254, !2255}
!2254 = !DILocalVariable(name: "n", arg: 1, scope: !2252, file: !447, line: 919, type: !67)
!2255 = !DILocalVariable(name: "arg", arg: 2, scope: !2252, file: !447, line: 919, type: !93)
!2256 = !DILocation(line: 0, scope: !2252)
!2257 = !DILocation(line: 921, column: 10, scope: !2252)
!2258 = !DILocation(line: 921, column: 3, scope: !2252)
!2259 = distinct !DISubprogram(name: "quotearg_n_options", scope: !447, file: !447, line: 866, type: !2260, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!87, !67, !93, !90, !1478}
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2273, !2274, !2276, !2277, !2278}
!2263 = !DILocalVariable(name: "n", arg: 1, scope: !2259, file: !447, line: 866, type: !67)
!2264 = !DILocalVariable(name: "arg", arg: 2, scope: !2259, file: !447, line: 866, type: !93)
!2265 = !DILocalVariable(name: "argsize", arg: 3, scope: !2259, file: !447, line: 866, type: !90)
!2266 = !DILocalVariable(name: "options", arg: 4, scope: !2259, file: !447, line: 867, type: !1478)
!2267 = !DILocalVariable(name: "saved_errno", scope: !2259, file: !447, line: 869, type: !67)
!2268 = !DILocalVariable(name: "sv", scope: !2259, file: !447, line: 871, type: !548)
!2269 = !DILocalVariable(name: "nslots_max", scope: !2259, file: !447, line: 873, type: !67)
!2270 = !DILocalVariable(name: "preallocated", scope: !2271, file: !447, line: 879, type: !129)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !447, line: 878, column: 5)
!2272 = distinct !DILexicalBlock(scope: !2259, file: !447, line: 877, column: 7)
!2273 = !DILocalVariable(name: "new_nslots", scope: !2271, file: !447, line: 880, type: !716)
!2274 = !DILocalVariable(name: "size", scope: !2275, file: !447, line: 891, type: !90)
!2275 = distinct !DILexicalBlock(scope: !2259, file: !447, line: 890, column: 3)
!2276 = !DILocalVariable(name: "val", scope: !2275, file: !447, line: 892, type: !87)
!2277 = !DILocalVariable(name: "flags", scope: !2275, file: !447, line: 894, type: !67)
!2278 = !DILocalVariable(name: "qsize", scope: !2275, file: !447, line: 895, type: !90)
!2279 = !DILocation(line: 0, scope: !2259)
!2280 = !DILocation(line: 869, column: 21, scope: !2259)
!2281 = !DILocation(line: 871, column: 24, scope: !2259)
!2282 = !DILocation(line: 874, column: 17, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2259, file: !447, line: 874, column: 7)
!2284 = !DILocation(line: 875, column: 5, scope: !2283)
!2285 = !DILocation(line: 877, column: 7, scope: !2272)
!2286 = !DILocation(line: 877, column: 14, scope: !2272)
!2287 = !DILocation(line: 877, column: 7, scope: !2259)
!2288 = !DILocation(line: 879, column: 31, scope: !2271)
!2289 = !DILocation(line: 0, scope: !2271)
!2290 = !DILocation(line: 880, column: 7, scope: !2271)
!2291 = !DILocation(line: 880, column: 26, scope: !2271)
!2292 = !DILocation(line: 880, column: 13, scope: !2271)
!2293 = !DILocation(line: 882, column: 31, scope: !2271)
!2294 = !DILocation(line: 883, column: 33, scope: !2271)
!2295 = !DILocation(line: 883, column: 42, scope: !2271)
!2296 = !DILocation(line: 883, column: 31, scope: !2271)
!2297 = !DILocation(line: 882, column: 22, scope: !2271)
!2298 = !DILocation(line: 882, column: 15, scope: !2271)
!2299 = !DILocation(line: 884, column: 11, scope: !2271)
!2300 = !DILocation(line: 885, column: 15, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2271, file: !447, line: 884, column: 11)
!2302 = !{i64 0, i64 8, !2209, i64 8, i64 8, !768}
!2303 = !DILocation(line: 885, column: 9, scope: !2301)
!2304 = !DILocation(line: 886, column: 20, scope: !2271)
!2305 = !DILocation(line: 886, column: 18, scope: !2271)
!2306 = !DILocation(line: 886, column: 32, scope: !2271)
!2307 = !DILocation(line: 886, column: 43, scope: !2271)
!2308 = !DILocation(line: 886, column: 53, scope: !2271)
!2309 = !DILocation(line: 0, scope: !1688, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 886, column: 7, scope: !2271)
!2311 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !2310)
!2312 = !DILocation(line: 887, column: 16, scope: !2271)
!2313 = !DILocation(line: 887, column: 14, scope: !2271)
!2314 = !DILocation(line: 888, column: 5, scope: !2272)
!2315 = !DILocation(line: 888, column: 5, scope: !2271)
!2316 = !DILocation(line: 891, column: 19, scope: !2275)
!2317 = !DILocation(line: 891, column: 25, scope: !2275)
!2318 = !DILocation(line: 0, scope: !2275)
!2319 = !DILocation(line: 892, column: 23, scope: !2275)
!2320 = !DILocation(line: 894, column: 26, scope: !2275)
!2321 = !DILocation(line: 894, column: 32, scope: !2275)
!2322 = !DILocation(line: 896, column: 55, scope: !2275)
!2323 = !DILocation(line: 897, column: 55, scope: !2275)
!2324 = !DILocation(line: 898, column: 55, scope: !2275)
!2325 = !DILocation(line: 899, column: 55, scope: !2275)
!2326 = !DILocation(line: 895, column: 20, scope: !2275)
!2327 = !DILocation(line: 901, column: 14, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2275, file: !447, line: 901, column: 9)
!2329 = !DILocation(line: 901, column: 9, scope: !2275)
!2330 = !DILocation(line: 903, column: 35, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !447, line: 902, column: 7)
!2332 = !DILocation(line: 903, column: 20, scope: !2331)
!2333 = !DILocation(line: 904, column: 17, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2331, file: !447, line: 904, column: 13)
!2335 = !DILocation(line: 904, column: 13, scope: !2331)
!2336 = !DILocation(line: 905, column: 11, scope: !2334)
!2337 = !DILocation(line: 906, column: 27, scope: !2331)
!2338 = !DILocation(line: 906, column: 19, scope: !2331)
!2339 = !DILocation(line: 907, column: 69, scope: !2331)
!2340 = !DILocation(line: 909, column: 44, scope: !2331)
!2341 = !DILocation(line: 910, column: 44, scope: !2331)
!2342 = !DILocation(line: 907, column: 9, scope: !2331)
!2343 = !DILocation(line: 911, column: 7, scope: !2331)
!2344 = !DILocation(line: 913, column: 11, scope: !2275)
!2345 = !DILocation(line: 914, column: 5, scope: !2275)
!2346 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !447, file: !447, line: 925, type: !2347, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!87, !67, !93, !90}
!2349 = !{!2350, !2351, !2352}
!2350 = !DILocalVariable(name: "n", arg: 1, scope: !2346, file: !447, line: 925, type: !67)
!2351 = !DILocalVariable(name: "arg", arg: 2, scope: !2346, file: !447, line: 925, type: !93)
!2352 = !DILocalVariable(name: "argsize", arg: 3, scope: !2346, file: !447, line: 925, type: !90)
!2353 = !DILocation(line: 0, scope: !2346)
!2354 = !DILocation(line: 927, column: 10, scope: !2346)
!2355 = !DILocation(line: 927, column: 3, scope: !2346)
!2356 = distinct !DISubprogram(name: "quotearg", scope: !447, file: !447, line: 931, type: !952, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2357)
!2357 = !{!2358}
!2358 = !DILocalVariable(name: "arg", arg: 1, scope: !2356, file: !447, line: 931, type: !93)
!2359 = !DILocation(line: 0, scope: !2356)
!2360 = !DILocation(line: 0, scope: !2252, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 933, column: 10, scope: !2356)
!2362 = !DILocation(line: 921, column: 10, scope: !2252, inlinedAt: !2361)
!2363 = !DILocation(line: 933, column: 3, scope: !2356)
!2364 = distinct !DISubprogram(name: "quotearg_mem", scope: !447, file: !447, line: 937, type: !2365, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!87, !93, !90}
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "arg", arg: 1, scope: !2364, file: !447, line: 937, type: !93)
!2369 = !DILocalVariable(name: "argsize", arg: 2, scope: !2364, file: !447, line: 937, type: !90)
!2370 = !DILocation(line: 0, scope: !2364)
!2371 = !DILocation(line: 0, scope: !2346, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 939, column: 10, scope: !2364)
!2373 = !DILocation(line: 927, column: 10, scope: !2346, inlinedAt: !2372)
!2374 = !DILocation(line: 939, column: 3, scope: !2364)
!2375 = distinct !DISubprogram(name: "quotearg_n_style", scope: !447, file: !447, line: 943, type: !2376, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!87, !67, !473, !93}
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DILocalVariable(name: "n", arg: 1, scope: !2375, file: !447, line: 943, type: !67)
!2380 = !DILocalVariable(name: "s", arg: 2, scope: !2375, file: !447, line: 943, type: !473)
!2381 = !DILocalVariable(name: "arg", arg: 3, scope: !2375, file: !447, line: 943, type: !93)
!2382 = !DILocalVariable(name: "o", scope: !2375, file: !447, line: 945, type: !1479)
!2383 = !DILocation(line: 0, scope: !2375)
!2384 = !DILocation(line: 945, column: 3, scope: !2375)
!2385 = !DILocation(line: 945, column: 32, scope: !2375)
!2386 = !{!2387}
!2387 = distinct !{!2387, !2388, !"quoting_options_from_style: argument 0"}
!2388 = distinct !{!2388, !"quoting_options_from_style"}
!2389 = !DILocation(line: 945, column: 36, scope: !2375)
!2390 = !DILocalVariable(name: "style", arg: 1, scope: !2391, file: !447, line: 183, type: !473)
!2391 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !447, file: !447, line: 183, type: !2392, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!500, !473}
!2394 = !{!2390, !2395}
!2395 = !DILocalVariable(name: "o", scope: !2391, file: !447, line: 185, type: !500)
!2396 = !DILocation(line: 0, scope: !2391, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 945, column: 36, scope: !2375)
!2398 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2397)
!2399 = !DILocation(line: 186, column: 13, scope: !2400, inlinedAt: !2397)
!2400 = distinct !DILexicalBlock(scope: !2391, file: !447, line: 186, column: 7)
!2401 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2397)
!2402 = !DILocation(line: 187, column: 5, scope: !2400, inlinedAt: !2397)
!2403 = !DILocation(line: 188, column: 11, scope: !2391, inlinedAt: !2397)
!2404 = !DILocation(line: 946, column: 10, scope: !2375)
!2405 = !DILocation(line: 947, column: 1, scope: !2375)
!2406 = !DILocation(line: 946, column: 3, scope: !2375)
!2407 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !447, file: !447, line: 950, type: !2408, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!87, !67, !473, !93, !90}
!2410 = !{!2411, !2412, !2413, !2414, !2415}
!2411 = !DILocalVariable(name: "n", arg: 1, scope: !2407, file: !447, line: 950, type: !67)
!2412 = !DILocalVariable(name: "s", arg: 2, scope: !2407, file: !447, line: 950, type: !473)
!2413 = !DILocalVariable(name: "arg", arg: 3, scope: !2407, file: !447, line: 951, type: !93)
!2414 = !DILocalVariable(name: "argsize", arg: 4, scope: !2407, file: !447, line: 951, type: !90)
!2415 = !DILocalVariable(name: "o", scope: !2407, file: !447, line: 953, type: !1479)
!2416 = !DILocation(line: 0, scope: !2407)
!2417 = !DILocation(line: 953, column: 3, scope: !2407)
!2418 = !DILocation(line: 953, column: 32, scope: !2407)
!2419 = !{!2420}
!2420 = distinct !{!2420, !2421, !"quoting_options_from_style: argument 0"}
!2421 = distinct !{!2421, !"quoting_options_from_style"}
!2422 = !DILocation(line: 953, column: 36, scope: !2407)
!2423 = !DILocation(line: 0, scope: !2391, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 953, column: 36, scope: !2407)
!2425 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2424)
!2426 = !DILocation(line: 186, column: 13, scope: !2400, inlinedAt: !2424)
!2427 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2424)
!2428 = !DILocation(line: 187, column: 5, scope: !2400, inlinedAt: !2424)
!2429 = !DILocation(line: 188, column: 11, scope: !2391, inlinedAt: !2424)
!2430 = !DILocation(line: 954, column: 10, scope: !2407)
!2431 = !DILocation(line: 955, column: 1, scope: !2407)
!2432 = !DILocation(line: 954, column: 3, scope: !2407)
!2433 = distinct !DISubprogram(name: "quotearg_style", scope: !447, file: !447, line: 958, type: !2434, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!87, !473, !93}
!2436 = !{!2437, !2438}
!2437 = !DILocalVariable(name: "s", arg: 1, scope: !2433, file: !447, line: 958, type: !473)
!2438 = !DILocalVariable(name: "arg", arg: 2, scope: !2433, file: !447, line: 958, type: !93)
!2439 = !DILocation(line: 0, scope: !2433)
!2440 = !DILocation(line: 0, scope: !2375, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 960, column: 10, scope: !2433)
!2442 = !DILocation(line: 945, column: 3, scope: !2375, inlinedAt: !2441)
!2443 = !DILocation(line: 945, column: 32, scope: !2375, inlinedAt: !2441)
!2444 = !{!2445}
!2445 = distinct !{!2445, !2446, !"quoting_options_from_style: argument 0"}
!2446 = distinct !{!2446, !"quoting_options_from_style"}
!2447 = !DILocation(line: 945, column: 36, scope: !2375, inlinedAt: !2441)
!2448 = !DILocation(line: 0, scope: !2391, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 945, column: 36, scope: !2375, inlinedAt: !2441)
!2450 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2449)
!2451 = !DILocation(line: 186, column: 13, scope: !2400, inlinedAt: !2449)
!2452 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2449)
!2453 = !DILocation(line: 187, column: 5, scope: !2400, inlinedAt: !2449)
!2454 = !DILocation(line: 188, column: 11, scope: !2391, inlinedAt: !2449)
!2455 = !DILocation(line: 946, column: 10, scope: !2375, inlinedAt: !2441)
!2456 = !DILocation(line: 947, column: 1, scope: !2375, inlinedAt: !2441)
!2457 = !DILocation(line: 960, column: 3, scope: !2433)
!2458 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !447, file: !447, line: 964, type: !2459, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!87, !473, !93, !90}
!2461 = !{!2462, !2463, !2464}
!2462 = !DILocalVariable(name: "s", arg: 1, scope: !2458, file: !447, line: 964, type: !473)
!2463 = !DILocalVariable(name: "arg", arg: 2, scope: !2458, file: !447, line: 964, type: !93)
!2464 = !DILocalVariable(name: "argsize", arg: 3, scope: !2458, file: !447, line: 964, type: !90)
!2465 = !DILocation(line: 0, scope: !2458)
!2466 = !DILocation(line: 0, scope: !2407, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 966, column: 10, scope: !2458)
!2468 = !DILocation(line: 953, column: 3, scope: !2407, inlinedAt: !2467)
!2469 = !DILocation(line: 953, column: 32, scope: !2407, inlinedAt: !2467)
!2470 = !{!2471}
!2471 = distinct !{!2471, !2472, !"quoting_options_from_style: argument 0"}
!2472 = distinct !{!2472, !"quoting_options_from_style"}
!2473 = !DILocation(line: 953, column: 36, scope: !2407, inlinedAt: !2467)
!2474 = !DILocation(line: 0, scope: !2391, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 953, column: 36, scope: !2407, inlinedAt: !2467)
!2476 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2475)
!2477 = !DILocation(line: 186, column: 13, scope: !2400, inlinedAt: !2475)
!2478 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2475)
!2479 = !DILocation(line: 187, column: 5, scope: !2400, inlinedAt: !2475)
!2480 = !DILocation(line: 188, column: 11, scope: !2391, inlinedAt: !2475)
!2481 = !DILocation(line: 954, column: 10, scope: !2407, inlinedAt: !2467)
!2482 = !DILocation(line: 955, column: 1, scope: !2407, inlinedAt: !2467)
!2483 = !DILocation(line: 966, column: 3, scope: !2458)
!2484 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !447, file: !447, line: 970, type: !2485, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!87, !93, !90, !4}
!2487 = !{!2488, !2489, !2490, !2491}
!2488 = !DILocalVariable(name: "arg", arg: 1, scope: !2484, file: !447, line: 970, type: !93)
!2489 = !DILocalVariable(name: "argsize", arg: 2, scope: !2484, file: !447, line: 970, type: !90)
!2490 = !DILocalVariable(name: "ch", arg: 3, scope: !2484, file: !447, line: 970, type: !4)
!2491 = !DILocalVariable(name: "options", scope: !2484, file: !447, line: 972, type: !500)
!2492 = !DILocation(line: 0, scope: !2484)
!2493 = !DILocation(line: 972, column: 3, scope: !2484)
!2494 = !DILocation(line: 972, column: 26, scope: !2484)
!2495 = !DILocation(line: 973, column: 13, scope: !2484)
!2496 = !{i64 0, i64 4, !835, i64 4, i64 4, !826, i64 8, i64 32, !835, i64 40, i64 8, !768, i64 48, i64 8, !768}
!2497 = !DILocation(line: 0, scope: !1498, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 974, column: 3, scope: !2484)
!2499 = !DILocation(line: 147, column: 41, scope: !1498, inlinedAt: !2498)
!2500 = !DILocation(line: 147, column: 62, scope: !1498, inlinedAt: !2498)
!2501 = !DILocation(line: 147, column: 57, scope: !1498, inlinedAt: !2498)
!2502 = !DILocation(line: 148, column: 15, scope: !1498, inlinedAt: !2498)
!2503 = !DILocation(line: 149, column: 21, scope: !1498, inlinedAt: !2498)
!2504 = !DILocation(line: 149, column: 24, scope: !1498, inlinedAt: !2498)
!2505 = !DILocation(line: 150, column: 19, scope: !1498, inlinedAt: !2498)
!2506 = !DILocation(line: 150, column: 24, scope: !1498, inlinedAt: !2498)
!2507 = !DILocation(line: 150, column: 6, scope: !1498, inlinedAt: !2498)
!2508 = !DILocation(line: 975, column: 10, scope: !2484)
!2509 = !DILocation(line: 976, column: 1, scope: !2484)
!2510 = !DILocation(line: 975, column: 3, scope: !2484)
!2511 = distinct !DISubprogram(name: "quotearg_char", scope: !447, file: !447, line: 979, type: !2512, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!87, !93, !4}
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "arg", arg: 1, scope: !2511, file: !447, line: 979, type: !93)
!2516 = !DILocalVariable(name: "ch", arg: 2, scope: !2511, file: !447, line: 979, type: !4)
!2517 = !DILocation(line: 0, scope: !2511)
!2518 = !DILocation(line: 0, scope: !2484, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 981, column: 10, scope: !2511)
!2520 = !DILocation(line: 972, column: 3, scope: !2484, inlinedAt: !2519)
!2521 = !DILocation(line: 972, column: 26, scope: !2484, inlinedAt: !2519)
!2522 = !DILocation(line: 973, column: 13, scope: !2484, inlinedAt: !2519)
!2523 = !DILocation(line: 0, scope: !1498, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 974, column: 3, scope: !2484, inlinedAt: !2519)
!2525 = !DILocation(line: 147, column: 41, scope: !1498, inlinedAt: !2524)
!2526 = !DILocation(line: 147, column: 62, scope: !1498, inlinedAt: !2524)
!2527 = !DILocation(line: 147, column: 57, scope: !1498, inlinedAt: !2524)
!2528 = !DILocation(line: 148, column: 15, scope: !1498, inlinedAt: !2524)
!2529 = !DILocation(line: 149, column: 21, scope: !1498, inlinedAt: !2524)
!2530 = !DILocation(line: 149, column: 24, scope: !1498, inlinedAt: !2524)
!2531 = !DILocation(line: 150, column: 19, scope: !1498, inlinedAt: !2524)
!2532 = !DILocation(line: 150, column: 24, scope: !1498, inlinedAt: !2524)
!2533 = !DILocation(line: 150, column: 6, scope: !1498, inlinedAt: !2524)
!2534 = !DILocation(line: 975, column: 10, scope: !2484, inlinedAt: !2519)
!2535 = !DILocation(line: 976, column: 1, scope: !2484, inlinedAt: !2519)
!2536 = !DILocation(line: 981, column: 3, scope: !2511)
!2537 = distinct !DISubprogram(name: "quotearg_colon", scope: !447, file: !447, line: 985, type: !952, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2538)
!2538 = !{!2539}
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2537, file: !447, line: 985, type: !93)
!2540 = !DILocation(line: 0, scope: !2537)
!2541 = !DILocation(line: 0, scope: !2511, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 987, column: 10, scope: !2537)
!2543 = !DILocation(line: 0, scope: !2484, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 981, column: 10, scope: !2511, inlinedAt: !2542)
!2545 = !DILocation(line: 972, column: 3, scope: !2484, inlinedAt: !2544)
!2546 = !DILocation(line: 972, column: 26, scope: !2484, inlinedAt: !2544)
!2547 = !DILocation(line: 973, column: 13, scope: !2484, inlinedAt: !2544)
!2548 = !DILocation(line: 0, scope: !1498, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 974, column: 3, scope: !2484, inlinedAt: !2544)
!2550 = !DILocation(line: 147, column: 57, scope: !1498, inlinedAt: !2549)
!2551 = !DILocation(line: 149, column: 21, scope: !1498, inlinedAt: !2549)
!2552 = !DILocation(line: 150, column: 6, scope: !1498, inlinedAt: !2549)
!2553 = !DILocation(line: 975, column: 10, scope: !2484, inlinedAt: !2544)
!2554 = !DILocation(line: 976, column: 1, scope: !2484, inlinedAt: !2544)
!2555 = !DILocation(line: 987, column: 3, scope: !2537)
!2556 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !447, file: !447, line: 991, type: !2365, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2557)
!2557 = !{!2558, !2559}
!2558 = !DILocalVariable(name: "arg", arg: 1, scope: !2556, file: !447, line: 991, type: !93)
!2559 = !DILocalVariable(name: "argsize", arg: 2, scope: !2556, file: !447, line: 991, type: !90)
!2560 = !DILocation(line: 0, scope: !2556)
!2561 = !DILocation(line: 0, scope: !2484, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 993, column: 10, scope: !2556)
!2563 = !DILocation(line: 972, column: 3, scope: !2484, inlinedAt: !2562)
!2564 = !DILocation(line: 972, column: 26, scope: !2484, inlinedAt: !2562)
!2565 = !DILocation(line: 973, column: 13, scope: !2484, inlinedAt: !2562)
!2566 = !DILocation(line: 0, scope: !1498, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 974, column: 3, scope: !2484, inlinedAt: !2562)
!2568 = !DILocation(line: 147, column: 57, scope: !1498, inlinedAt: !2567)
!2569 = !DILocation(line: 149, column: 21, scope: !1498, inlinedAt: !2567)
!2570 = !DILocation(line: 150, column: 6, scope: !1498, inlinedAt: !2567)
!2571 = !DILocation(line: 975, column: 10, scope: !2484, inlinedAt: !2562)
!2572 = !DILocation(line: 976, column: 1, scope: !2484, inlinedAt: !2562)
!2573 = !DILocation(line: 993, column: 3, scope: !2556)
!2574 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !447, file: !447, line: 997, type: !2376, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2575)
!2575 = !{!2576, !2577, !2578, !2579}
!2576 = !DILocalVariable(name: "n", arg: 1, scope: !2574, file: !447, line: 997, type: !67)
!2577 = !DILocalVariable(name: "s", arg: 2, scope: !2574, file: !447, line: 997, type: !473)
!2578 = !DILocalVariable(name: "arg", arg: 3, scope: !2574, file: !447, line: 997, type: !93)
!2579 = !DILocalVariable(name: "options", scope: !2574, file: !447, line: 999, type: !500)
!2580 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 1000, column: 13, scope: !2574)
!2582 = !DILocation(line: 0, scope: !2574)
!2583 = !DILocation(line: 999, column: 3, scope: !2574)
!2584 = !DILocation(line: 999, column: 26, scope: !2574)
!2585 = !DILocation(line: 0, scope: !2391, inlinedAt: !2581)
!2586 = !DILocation(line: 186, column: 13, scope: !2400, inlinedAt: !2581)
!2587 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2581)
!2588 = !DILocation(line: 187, column: 5, scope: !2400, inlinedAt: !2581)
!2589 = !{!2590}
!2590 = distinct !{!2590, !2591, !"quoting_options_from_style: argument 0"}
!2591 = distinct !{!2591, !"quoting_options_from_style"}
!2592 = !DILocation(line: 1000, column: 13, scope: !2574)
!2593 = !DILocation(line: 0, scope: !1498, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1001, column: 3, scope: !2574)
!2595 = !DILocation(line: 147, column: 57, scope: !1498, inlinedAt: !2594)
!2596 = !DILocation(line: 149, column: 21, scope: !1498, inlinedAt: !2594)
!2597 = !DILocation(line: 150, column: 6, scope: !1498, inlinedAt: !2594)
!2598 = !DILocation(line: 1002, column: 10, scope: !2574)
!2599 = !DILocation(line: 1003, column: 1, scope: !2574)
!2600 = !DILocation(line: 1002, column: 3, scope: !2574)
!2601 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !447, file: !447, line: 1006, type: !2602, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!87, !67, !93, !93, !93}
!2604 = !{!2605, !2606, !2607, !2608}
!2605 = !DILocalVariable(name: "n", arg: 1, scope: !2601, file: !447, line: 1006, type: !67)
!2606 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2601, file: !447, line: 1006, type: !93)
!2607 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2601, file: !447, line: 1007, type: !93)
!2608 = !DILocalVariable(name: "arg", arg: 4, scope: !2601, file: !447, line: 1007, type: !93)
!2609 = !DILocation(line: 0, scope: !2601)
!2610 = !DILocalVariable(name: "n", arg: 1, scope: !2611, file: !447, line: 1014, type: !67)
!2611 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !447, file: !447, line: 1014, type: !2612, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!87, !67, !93, !93, !93, !90}
!2614 = !{!2610, !2615, !2616, !2617, !2618, !2619}
!2615 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2611, file: !447, line: 1014, type: !93)
!2616 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2611, file: !447, line: 1015, type: !93)
!2617 = !DILocalVariable(name: "arg", arg: 4, scope: !2611, file: !447, line: 1016, type: !93)
!2618 = !DILocalVariable(name: "argsize", arg: 5, scope: !2611, file: !447, line: 1016, type: !90)
!2619 = !DILocalVariable(name: "o", scope: !2611, file: !447, line: 1018, type: !500)
!2620 = !DILocation(line: 0, scope: !2611, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1009, column: 10, scope: !2601)
!2622 = !DILocation(line: 1018, column: 3, scope: !2611, inlinedAt: !2621)
!2623 = !DILocation(line: 1018, column: 26, scope: !2611, inlinedAt: !2621)
!2624 = !DILocation(line: 1018, column: 30, scope: !2611, inlinedAt: !2621)
!2625 = !DILocation(line: 0, scope: !1538, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 1019, column: 3, scope: !2611, inlinedAt: !2621)
!2627 = !DILocation(line: 174, column: 12, scope: !1538, inlinedAt: !2626)
!2628 = !DILocation(line: 175, column: 8, scope: !1551, inlinedAt: !2626)
!2629 = !DILocation(line: 175, column: 19, scope: !1551, inlinedAt: !2626)
!2630 = !DILocation(line: 176, column: 5, scope: !1551, inlinedAt: !2626)
!2631 = !DILocation(line: 177, column: 6, scope: !1538, inlinedAt: !2626)
!2632 = !DILocation(line: 177, column: 17, scope: !1538, inlinedAt: !2626)
!2633 = !DILocation(line: 178, column: 6, scope: !1538, inlinedAt: !2626)
!2634 = !DILocation(line: 178, column: 18, scope: !1538, inlinedAt: !2626)
!2635 = !DILocation(line: 1020, column: 10, scope: !2611, inlinedAt: !2621)
!2636 = !DILocation(line: 1021, column: 1, scope: !2611, inlinedAt: !2621)
!2637 = !DILocation(line: 1009, column: 3, scope: !2601)
!2638 = !DILocation(line: 0, scope: !2611)
!2639 = !DILocation(line: 1018, column: 3, scope: !2611)
!2640 = !DILocation(line: 1018, column: 26, scope: !2611)
!2641 = !DILocation(line: 1018, column: 30, scope: !2611)
!2642 = !DILocation(line: 0, scope: !1538, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1019, column: 3, scope: !2611)
!2644 = !DILocation(line: 174, column: 12, scope: !1538, inlinedAt: !2643)
!2645 = !DILocation(line: 175, column: 8, scope: !1551, inlinedAt: !2643)
!2646 = !DILocation(line: 175, column: 19, scope: !1551, inlinedAt: !2643)
!2647 = !DILocation(line: 176, column: 5, scope: !1551, inlinedAt: !2643)
!2648 = !DILocation(line: 177, column: 6, scope: !1538, inlinedAt: !2643)
!2649 = !DILocation(line: 177, column: 17, scope: !1538, inlinedAt: !2643)
!2650 = !DILocation(line: 178, column: 6, scope: !1538, inlinedAt: !2643)
!2651 = !DILocation(line: 178, column: 18, scope: !1538, inlinedAt: !2643)
!2652 = !DILocation(line: 1020, column: 10, scope: !2611)
!2653 = !DILocation(line: 1021, column: 1, scope: !2611)
!2654 = !DILocation(line: 1020, column: 3, scope: !2611)
!2655 = distinct !DISubprogram(name: "quotearg_custom", scope: !447, file: !447, line: 1024, type: !2656, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!87, !93, !93, !93}
!2658 = !{!2659, !2660, !2661}
!2659 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2655, file: !447, line: 1024, type: !93)
!2660 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2655, file: !447, line: 1024, type: !93)
!2661 = !DILocalVariable(name: "arg", arg: 3, scope: !2655, file: !447, line: 1025, type: !93)
!2662 = !DILocation(line: 0, scope: !2655)
!2663 = !DILocation(line: 0, scope: !2601, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 1027, column: 10, scope: !2655)
!2665 = !DILocation(line: 0, scope: !2611, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 1009, column: 10, scope: !2601, inlinedAt: !2664)
!2667 = !DILocation(line: 1018, column: 3, scope: !2611, inlinedAt: !2666)
!2668 = !DILocation(line: 1018, column: 26, scope: !2611, inlinedAt: !2666)
!2669 = !DILocation(line: 1018, column: 30, scope: !2611, inlinedAt: !2666)
!2670 = !DILocation(line: 0, scope: !1538, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 1019, column: 3, scope: !2611, inlinedAt: !2666)
!2672 = !DILocation(line: 174, column: 12, scope: !1538, inlinedAt: !2671)
!2673 = !DILocation(line: 175, column: 8, scope: !1551, inlinedAt: !2671)
!2674 = !DILocation(line: 175, column: 19, scope: !1551, inlinedAt: !2671)
!2675 = !DILocation(line: 176, column: 5, scope: !1551, inlinedAt: !2671)
!2676 = !DILocation(line: 177, column: 6, scope: !1538, inlinedAt: !2671)
!2677 = !DILocation(line: 177, column: 17, scope: !1538, inlinedAt: !2671)
!2678 = !DILocation(line: 178, column: 6, scope: !1538, inlinedAt: !2671)
!2679 = !DILocation(line: 178, column: 18, scope: !1538, inlinedAt: !2671)
!2680 = !DILocation(line: 1020, column: 10, scope: !2611, inlinedAt: !2666)
!2681 = !DILocation(line: 1021, column: 1, scope: !2611, inlinedAt: !2666)
!2682 = !DILocation(line: 1027, column: 3, scope: !2655)
!2683 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !447, file: !447, line: 1031, type: !2684, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!87, !93, !93, !93, !90}
!2686 = !{!2687, !2688, !2689, !2690}
!2687 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2683, file: !447, line: 1031, type: !93)
!2688 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2683, file: !447, line: 1031, type: !93)
!2689 = !DILocalVariable(name: "arg", arg: 3, scope: !2683, file: !447, line: 1032, type: !93)
!2690 = !DILocalVariable(name: "argsize", arg: 4, scope: !2683, file: !447, line: 1032, type: !90)
!2691 = !DILocation(line: 0, scope: !2683)
!2692 = !DILocation(line: 0, scope: !2611, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 1034, column: 10, scope: !2683)
!2694 = !DILocation(line: 1018, column: 3, scope: !2611, inlinedAt: !2693)
!2695 = !DILocation(line: 1018, column: 26, scope: !2611, inlinedAt: !2693)
!2696 = !DILocation(line: 1018, column: 30, scope: !2611, inlinedAt: !2693)
!2697 = !DILocation(line: 0, scope: !1538, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1019, column: 3, scope: !2611, inlinedAt: !2693)
!2699 = !DILocation(line: 174, column: 12, scope: !1538, inlinedAt: !2698)
!2700 = !DILocation(line: 175, column: 8, scope: !1551, inlinedAt: !2698)
!2701 = !DILocation(line: 175, column: 19, scope: !1551, inlinedAt: !2698)
!2702 = !DILocation(line: 176, column: 5, scope: !1551, inlinedAt: !2698)
!2703 = !DILocation(line: 177, column: 6, scope: !1538, inlinedAt: !2698)
!2704 = !DILocation(line: 177, column: 17, scope: !1538, inlinedAt: !2698)
!2705 = !DILocation(line: 178, column: 6, scope: !1538, inlinedAt: !2698)
!2706 = !DILocation(line: 178, column: 18, scope: !1538, inlinedAt: !2698)
!2707 = !DILocation(line: 1020, column: 10, scope: !2611, inlinedAt: !2693)
!2708 = !DILocation(line: 1021, column: 1, scope: !2611, inlinedAt: !2693)
!2709 = !DILocation(line: 1034, column: 3, scope: !2683)
!2710 = distinct !DISubprogram(name: "quote_n_mem", scope: !447, file: !447, line: 1049, type: !2711, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!93, !67, !93, !90}
!2713 = !{!2714, !2715, !2716}
!2714 = !DILocalVariable(name: "n", arg: 1, scope: !2710, file: !447, line: 1049, type: !67)
!2715 = !DILocalVariable(name: "arg", arg: 2, scope: !2710, file: !447, line: 1049, type: !93)
!2716 = !DILocalVariable(name: "argsize", arg: 3, scope: !2710, file: !447, line: 1049, type: !90)
!2717 = !DILocation(line: 0, scope: !2710)
!2718 = !DILocation(line: 1051, column: 10, scope: !2710)
!2719 = !DILocation(line: 1051, column: 3, scope: !2710)
!2720 = distinct !DISubprogram(name: "quote_mem", scope: !447, file: !447, line: 1055, type: !2721, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!93, !93, !90}
!2723 = !{!2724, !2725}
!2724 = !DILocalVariable(name: "arg", arg: 1, scope: !2720, file: !447, line: 1055, type: !93)
!2725 = !DILocalVariable(name: "argsize", arg: 2, scope: !2720, file: !447, line: 1055, type: !90)
!2726 = !DILocation(line: 0, scope: !2720)
!2727 = !DILocation(line: 0, scope: !2710, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 1057, column: 10, scope: !2720)
!2729 = !DILocation(line: 1051, column: 10, scope: !2710, inlinedAt: !2728)
!2730 = !DILocation(line: 1057, column: 3, scope: !2720)
!2731 = distinct !DISubprogram(name: "quote_n", scope: !447, file: !447, line: 1061, type: !2732, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!93, !67, !93}
!2734 = !{!2735, !2736}
!2735 = !DILocalVariable(name: "n", arg: 1, scope: !2731, file: !447, line: 1061, type: !67)
!2736 = !DILocalVariable(name: "arg", arg: 2, scope: !2731, file: !447, line: 1061, type: !93)
!2737 = !DILocation(line: 0, scope: !2731)
!2738 = !DILocation(line: 0, scope: !2710, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1063, column: 10, scope: !2731)
!2740 = !DILocation(line: 1051, column: 10, scope: !2710, inlinedAt: !2739)
!2741 = !DILocation(line: 1063, column: 3, scope: !2731)
!2742 = distinct !DISubprogram(name: "quote", scope: !447, file: !447, line: 1067, type: !2743, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!93, !93}
!2745 = !{!2746}
!2746 = !DILocalVariable(name: "arg", arg: 1, scope: !2742, file: !447, line: 1067, type: !93)
!2747 = !DILocation(line: 0, scope: !2742)
!2748 = !DILocation(line: 0, scope: !2731, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 1069, column: 10, scope: !2742)
!2750 = !DILocation(line: 0, scope: !2710, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1063, column: 10, scope: !2731, inlinedAt: !2749)
!2752 = !DILocation(line: 1051, column: 10, scope: !2710, inlinedAt: !2751)
!2753 = !DILocation(line: 1069, column: 3, scope: !2742)
!2754 = distinct !DISubprogram(name: "version_etc_arn", scope: !563, file: !563, line: 61, type: !2755, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2792)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{null, !2757, !93, !93, !93, !2791, !90}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !2759)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !2760)
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2759, file: !146, line: 51, baseType: !67, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2759, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2759, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2759, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2759, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2759, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2759, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2759, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2759, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2759, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2759, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2759, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2759, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2759, file: !146, line: 70, baseType: !2775, size: 64, offset: 832)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2759, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2759, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2759, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2759, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2759, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2759, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2759, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2759, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2759, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2759, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2759, file: !146, line: 93, baseType: !2775, size: 64, offset: 1344)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2759, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2759, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2759, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2759, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798}
!2793 = !DILocalVariable(name: "stream", arg: 1, scope: !2754, file: !563, line: 61, type: !2757)
!2794 = !DILocalVariable(name: "command_name", arg: 2, scope: !2754, file: !563, line: 62, type: !93)
!2795 = !DILocalVariable(name: "package", arg: 3, scope: !2754, file: !563, line: 62, type: !93)
!2796 = !DILocalVariable(name: "version", arg: 4, scope: !2754, file: !563, line: 63, type: !93)
!2797 = !DILocalVariable(name: "authors", arg: 5, scope: !2754, file: !563, line: 64, type: !2791)
!2798 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2754, file: !563, line: 64, type: !90)
!2799 = !DILocation(line: 0, scope: !2754)
!2800 = !DILocation(line: 66, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2754, file: !563, line: 66, column: 7)
!2802 = !DILocation(line: 66, column: 7, scope: !2754)
!2803 = !DILocation(line: 67, column: 5, scope: !2801)
!2804 = !DILocation(line: 69, column: 5, scope: !2801)
!2805 = !DILocation(line: 83, column: 3, scope: !2754)
!2806 = !DILocation(line: 85, column: 3, scope: !2754)
!2807 = !DILocation(line: 88, column: 3, scope: !2754)
!2808 = !DILocation(line: 95, column: 3, scope: !2754)
!2809 = !DILocation(line: 97, column: 3, scope: !2754)
!2810 = !DILocation(line: 105, column: 7, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2754, file: !563, line: 98, column: 5)
!2812 = !DILocation(line: 106, column: 7, scope: !2811)
!2813 = !DILocation(line: 109, column: 7, scope: !2811)
!2814 = !DILocation(line: 110, column: 7, scope: !2811)
!2815 = !DILocation(line: 113, column: 7, scope: !2811)
!2816 = !DILocation(line: 115, column: 7, scope: !2811)
!2817 = !DILocation(line: 120, column: 7, scope: !2811)
!2818 = !DILocation(line: 122, column: 7, scope: !2811)
!2819 = !DILocation(line: 127, column: 7, scope: !2811)
!2820 = !DILocation(line: 129, column: 7, scope: !2811)
!2821 = !DILocation(line: 134, column: 7, scope: !2811)
!2822 = !DILocation(line: 137, column: 7, scope: !2811)
!2823 = !DILocation(line: 142, column: 7, scope: !2811)
!2824 = !DILocation(line: 145, column: 7, scope: !2811)
!2825 = !DILocation(line: 150, column: 7, scope: !2811)
!2826 = !DILocation(line: 154, column: 7, scope: !2811)
!2827 = !DILocation(line: 159, column: 7, scope: !2811)
!2828 = !DILocation(line: 163, column: 7, scope: !2811)
!2829 = !DILocation(line: 170, column: 7, scope: !2811)
!2830 = !DILocation(line: 174, column: 7, scope: !2811)
!2831 = !DILocation(line: 176, column: 1, scope: !2754)
!2832 = distinct !DISubprogram(name: "version_etc_ar", scope: !563, file: !563, line: 183, type: !2833, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !2757, !93, !93, !93, !2791}
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841}
!2836 = !DILocalVariable(name: "stream", arg: 1, scope: !2832, file: !563, line: 183, type: !2757)
!2837 = !DILocalVariable(name: "command_name", arg: 2, scope: !2832, file: !563, line: 184, type: !93)
!2838 = !DILocalVariable(name: "package", arg: 3, scope: !2832, file: !563, line: 184, type: !93)
!2839 = !DILocalVariable(name: "version", arg: 4, scope: !2832, file: !563, line: 185, type: !93)
!2840 = !DILocalVariable(name: "authors", arg: 5, scope: !2832, file: !563, line: 185, type: !2791)
!2841 = !DILocalVariable(name: "n_authors", scope: !2832, file: !563, line: 187, type: !90)
!2842 = !DILocation(line: 0, scope: !2832)
!2843 = !DILocation(line: 189, column: 8, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2832, file: !563, line: 189, column: 3)
!2845 = !DILocation(line: 189, scope: !2844)
!2846 = !DILocation(line: 189, column: 23, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !563, line: 189, column: 3)
!2848 = !DILocation(line: 189, column: 3, scope: !2844)
!2849 = !DILocation(line: 189, column: 52, scope: !2847)
!2850 = distinct !{!2850, !2848, !2851, !873}
!2851 = !DILocation(line: 190, column: 5, scope: !2844)
!2852 = !DILocation(line: 191, column: 3, scope: !2832)
!2853 = !DILocation(line: 192, column: 1, scope: !2832)
!2854 = distinct !DISubprogram(name: "version_etc_va", scope: !563, file: !563, line: 199, type: !2855, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2868)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !2757, !93, !93, !93, !2857}
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !361, line: 52, baseType: !2858)
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !363, line: 14, baseType: !2859)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2860, baseType: !2861)
!2860 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2862)
!2862 = !{!2863, !2864, !2865, !2866, !2867}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2861, file: !2860, line: 192, baseType: !88, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2861, file: !2860, line: 192, baseType: !88, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2861, file: !2860, line: 192, baseType: !88, size: 64, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2861, file: !2860, line: 192, baseType: !67, size: 32, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2861, file: !2860, line: 192, baseType: !67, size: 32, offset: 224)
!2868 = !{!2869, !2870, !2871, !2872, !2873, !2874, !2875}
!2869 = !DILocalVariable(name: "stream", arg: 1, scope: !2854, file: !563, line: 199, type: !2757)
!2870 = !DILocalVariable(name: "command_name", arg: 2, scope: !2854, file: !563, line: 200, type: !93)
!2871 = !DILocalVariable(name: "package", arg: 3, scope: !2854, file: !563, line: 200, type: !93)
!2872 = !DILocalVariable(name: "version", arg: 4, scope: !2854, file: !563, line: 201, type: !93)
!2873 = !DILocalVariable(name: "authors", arg: 5, scope: !2854, file: !563, line: 201, type: !2857)
!2874 = !DILocalVariable(name: "n_authors", scope: !2854, file: !563, line: 203, type: !90)
!2875 = !DILocalVariable(name: "authtab", scope: !2854, file: !563, line: 204, type: !2876)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !45)
!2877 = !DILocation(line: 0, scope: !2854)
!2878 = !DILocation(line: 201, column: 46, scope: !2854)
!2879 = !DILocation(line: 204, column: 3, scope: !2854)
!2880 = !DILocation(line: 204, column: 15, scope: !2854)
!2881 = !DILocation(line: 208, column: 35, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !563, line: 206, column: 3)
!2883 = distinct !DILexicalBlock(scope: !2854, file: !563, line: 206, column: 3)
!2884 = !DILocation(line: 208, column: 33, scope: !2882)
!2885 = !DILocation(line: 208, column: 67, scope: !2882)
!2886 = !DILocation(line: 206, column: 3, scope: !2883)
!2887 = !DILocation(line: 208, column: 14, scope: !2882)
!2888 = !DILocation(line: 0, scope: !2883)
!2889 = !DILocation(line: 211, column: 3, scope: !2854)
!2890 = !DILocation(line: 213, column: 1, scope: !2854)
!2891 = distinct !DISubprogram(name: "version_etc", scope: !563, file: !563, line: 230, type: !2892, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !2757, !93, !93, !93, null}
!2894 = !{!2895, !2896, !2897, !2898, !2899}
!2895 = !DILocalVariable(name: "stream", arg: 1, scope: !2891, file: !563, line: 230, type: !2757)
!2896 = !DILocalVariable(name: "command_name", arg: 2, scope: !2891, file: !563, line: 231, type: !93)
!2897 = !DILocalVariable(name: "package", arg: 3, scope: !2891, file: !563, line: 231, type: !93)
!2898 = !DILocalVariable(name: "version", arg: 4, scope: !2891, file: !563, line: 232, type: !93)
!2899 = !DILocalVariable(name: "authors", scope: !2891, file: !563, line: 234, type: !2857)
!2900 = !DILocation(line: 0, scope: !2891)
!2901 = !DILocation(line: 234, column: 3, scope: !2891)
!2902 = !DILocation(line: 234, column: 11, scope: !2891)
!2903 = !DILocation(line: 235, column: 3, scope: !2891)
!2904 = !DILocation(line: 236, column: 3, scope: !2891)
!2905 = !DILocation(line: 237, column: 3, scope: !2891)
!2906 = !DILocation(line: 238, column: 1, scope: !2891)
!2907 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !563, file: !563, line: 241, type: !402, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !814)
!2908 = !DILocation(line: 243, column: 3, scope: !2907)
!2909 = !DILocation(line: 248, column: 3, scope: !2907)
!2910 = !DILocation(line: 254, column: 3, scope: !2907)
!2911 = !DILocation(line: 259, column: 3, scope: !2907)
!2912 = !DILocation(line: 261, column: 1, scope: !2907)
!2913 = distinct !DISubprogram(name: "xnrealloc", scope: !2914, file: !2914, line: 147, type: !2915, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2917)
!2914 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!88, !88, !90, !90}
!2917 = !{!2918, !2919, !2920}
!2918 = !DILocalVariable(name: "p", arg: 1, scope: !2913, file: !2914, line: 147, type: !88)
!2919 = !DILocalVariable(name: "n", arg: 2, scope: !2913, file: !2914, line: 147, type: !90)
!2920 = !DILocalVariable(name: "s", arg: 3, scope: !2913, file: !2914, line: 147, type: !90)
!2921 = !DILocation(line: 0, scope: !2913)
!2922 = !DILocalVariable(name: "p", arg: 1, scope: !2923, file: !697, line: 83, type: !88)
!2923 = distinct !DISubprogram(name: "xreallocarray", scope: !697, file: !697, line: 83, type: !2915, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2924)
!2924 = !{!2922, !2925, !2926}
!2925 = !DILocalVariable(name: "n", arg: 2, scope: !2923, file: !697, line: 83, type: !90)
!2926 = !DILocalVariable(name: "s", arg: 3, scope: !2923, file: !697, line: 83, type: !90)
!2927 = !DILocation(line: 0, scope: !2923, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 149, column: 10, scope: !2913)
!2929 = !DILocation(line: 85, column: 25, scope: !2923, inlinedAt: !2928)
!2930 = !DILocalVariable(name: "p", arg: 1, scope: !2931, file: !697, line: 37, type: !88)
!2931 = distinct !DISubprogram(name: "check_nonnull", scope: !697, file: !697, line: 37, type: !2932, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!88, !88}
!2934 = !{!2930}
!2935 = !DILocation(line: 0, scope: !2931, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 85, column: 10, scope: !2923, inlinedAt: !2928)
!2937 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !2936)
!2938 = distinct !DILexicalBlock(scope: !2931, file: !697, line: 39, column: 7)
!2939 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !2936)
!2940 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !2936)
!2941 = !DILocation(line: 149, column: 3, scope: !2913)
!2942 = !DILocation(line: 0, scope: !2923)
!2943 = !DILocation(line: 85, column: 25, scope: !2923)
!2944 = !DILocation(line: 0, scope: !2931, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 85, column: 10, scope: !2923)
!2946 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !2945)
!2947 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !2945)
!2948 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !2945)
!2949 = !DILocation(line: 85, column: 3, scope: !2923)
!2950 = distinct !DISubprogram(name: "xmalloc", scope: !697, file: !697, line: 47, type: !2951, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!88, !90}
!2953 = !{!2954}
!2954 = !DILocalVariable(name: "s", arg: 1, scope: !2950, file: !697, line: 47, type: !90)
!2955 = !DILocation(line: 0, scope: !2950)
!2956 = !DILocation(line: 49, column: 25, scope: !2950)
!2957 = !DILocation(line: 0, scope: !2931, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 49, column: 10, scope: !2950)
!2959 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !2958)
!2960 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !2958)
!2961 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !2958)
!2962 = !DILocation(line: 49, column: 3, scope: !2950)
!2963 = !DISubprogram(name: "malloc", scope: !950, file: !950, line: 540, type: !2951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!2964 = distinct !DISubprogram(name: "ximalloc", scope: !697, file: !697, line: 53, type: !2965, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!88, !716}
!2967 = !{!2968}
!2968 = !DILocalVariable(name: "s", arg: 1, scope: !2964, file: !697, line: 53, type: !716)
!2969 = !DILocation(line: 0, scope: !2964)
!2970 = !DILocalVariable(name: "s", arg: 1, scope: !2971, file: !2972, line: 55, type: !716)
!2971 = distinct !DISubprogram(name: "imalloc", scope: !2972, file: !2972, line: 55, type: !2965, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2973)
!2972 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2973 = !{!2970}
!2974 = !DILocation(line: 0, scope: !2971, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 55, column: 25, scope: !2964)
!2976 = !DILocation(line: 57, column: 26, scope: !2971, inlinedAt: !2975)
!2977 = !DILocation(line: 0, scope: !2931, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 55, column: 10, scope: !2964)
!2979 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !2978)
!2980 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !2978)
!2981 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !2978)
!2982 = !DILocation(line: 55, column: 3, scope: !2964)
!2983 = distinct !DISubprogram(name: "xcharalloc", scope: !697, file: !697, line: 59, type: !2984, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!87, !90}
!2986 = !{!2987}
!2987 = !DILocalVariable(name: "n", arg: 1, scope: !2983, file: !697, line: 59, type: !90)
!2988 = !DILocation(line: 0, scope: !2983)
!2989 = !DILocation(line: 0, scope: !2950, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 61, column: 10, scope: !2983)
!2991 = !DILocation(line: 49, column: 25, scope: !2950, inlinedAt: !2990)
!2992 = !DILocation(line: 0, scope: !2931, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 49, column: 10, scope: !2950, inlinedAt: !2990)
!2994 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !2993)
!2995 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !2993)
!2996 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !2993)
!2997 = !DILocation(line: 61, column: 3, scope: !2983)
!2998 = distinct !DISubprogram(name: "xrealloc", scope: !697, file: !697, line: 68, type: !2999, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!88, !88, !90}
!3001 = !{!3002, !3003}
!3002 = !DILocalVariable(name: "p", arg: 1, scope: !2998, file: !697, line: 68, type: !88)
!3003 = !DILocalVariable(name: "s", arg: 2, scope: !2998, file: !697, line: 68, type: !90)
!3004 = !DILocation(line: 0, scope: !2998)
!3005 = !DILocalVariable(name: "ptr", arg: 1, scope: !3006, file: !3007, line: 2057, type: !88)
!3006 = distinct !DISubprogram(name: "rpl_realloc", scope: !3007, file: !3007, line: 2057, type: !2999, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3008)
!3007 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3008 = !{!3005, !3009}
!3009 = !DILocalVariable(name: "size", arg: 2, scope: !3006, file: !3007, line: 2057, type: !90)
!3010 = !DILocation(line: 0, scope: !3006, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 70, column: 25, scope: !2998)
!3012 = !DILocation(line: 2059, column: 24, scope: !3006, inlinedAt: !3011)
!3013 = !DILocation(line: 2059, column: 10, scope: !3006, inlinedAt: !3011)
!3014 = !DILocation(line: 0, scope: !2931, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 70, column: 10, scope: !2998)
!3016 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3015)
!3017 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3015)
!3018 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3015)
!3019 = !DILocation(line: 70, column: 3, scope: !2998)
!3020 = !DISubprogram(name: "realloc", scope: !950, file: !950, line: 551, type: !2999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3021 = distinct !DISubprogram(name: "xirealloc", scope: !697, file: !697, line: 74, type: !3022, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!88, !88, !716}
!3024 = !{!3025, !3026}
!3025 = !DILocalVariable(name: "p", arg: 1, scope: !3021, file: !697, line: 74, type: !88)
!3026 = !DILocalVariable(name: "s", arg: 2, scope: !3021, file: !697, line: 74, type: !716)
!3027 = !DILocation(line: 0, scope: !3021)
!3028 = !DILocalVariable(name: "p", arg: 1, scope: !3029, file: !2972, line: 66, type: !88)
!3029 = distinct !DISubprogram(name: "irealloc", scope: !2972, file: !2972, line: 66, type: !3022, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3030)
!3030 = !{!3028, !3031}
!3031 = !DILocalVariable(name: "s", arg: 2, scope: !3029, file: !2972, line: 66, type: !716)
!3032 = !DILocation(line: 0, scope: !3029, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 76, column: 25, scope: !3021)
!3034 = !DILocation(line: 0, scope: !3006, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 68, column: 26, scope: !3029, inlinedAt: !3033)
!3036 = !DILocation(line: 2059, column: 24, scope: !3006, inlinedAt: !3035)
!3037 = !DILocation(line: 2059, column: 10, scope: !3006, inlinedAt: !3035)
!3038 = !DILocation(line: 0, scope: !2931, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 76, column: 10, scope: !3021)
!3040 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3039)
!3041 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3039)
!3042 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3039)
!3043 = !DILocation(line: 76, column: 3, scope: !3021)
!3044 = distinct !DISubprogram(name: "xireallocarray", scope: !697, file: !697, line: 89, type: !3045, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!88, !88, !716, !716}
!3047 = !{!3048, !3049, !3050}
!3048 = !DILocalVariable(name: "p", arg: 1, scope: !3044, file: !697, line: 89, type: !88)
!3049 = !DILocalVariable(name: "n", arg: 2, scope: !3044, file: !697, line: 89, type: !716)
!3050 = !DILocalVariable(name: "s", arg: 3, scope: !3044, file: !697, line: 89, type: !716)
!3051 = !DILocation(line: 0, scope: !3044)
!3052 = !DILocalVariable(name: "p", arg: 1, scope: !3053, file: !2972, line: 98, type: !88)
!3053 = distinct !DISubprogram(name: "ireallocarray", scope: !2972, file: !2972, line: 98, type: !3045, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3054)
!3054 = !{!3052, !3055, !3056}
!3055 = !DILocalVariable(name: "n", arg: 2, scope: !3053, file: !2972, line: 98, type: !716)
!3056 = !DILocalVariable(name: "s", arg: 3, scope: !3053, file: !2972, line: 98, type: !716)
!3057 = !DILocation(line: 0, scope: !3053, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 91, column: 25, scope: !3044)
!3059 = !DILocation(line: 101, column: 13, scope: !3053, inlinedAt: !3058)
!3060 = !DILocation(line: 0, scope: !2931, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 91, column: 10, scope: !3044)
!3062 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3061)
!3063 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3061)
!3064 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3061)
!3065 = !DILocation(line: 91, column: 3, scope: !3044)
!3066 = distinct !DISubprogram(name: "xnmalloc", scope: !697, file: !697, line: 98, type: !3067, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!88, !90, !90}
!3069 = !{!3070, !3071}
!3070 = !DILocalVariable(name: "n", arg: 1, scope: !3066, file: !697, line: 98, type: !90)
!3071 = !DILocalVariable(name: "s", arg: 2, scope: !3066, file: !697, line: 98, type: !90)
!3072 = !DILocation(line: 0, scope: !3066)
!3073 = !DILocation(line: 0, scope: !2923, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 100, column: 10, scope: !3066)
!3075 = !DILocation(line: 85, column: 25, scope: !2923, inlinedAt: !3074)
!3076 = !DILocation(line: 0, scope: !2931, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 85, column: 10, scope: !2923, inlinedAt: !3074)
!3078 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3077)
!3079 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3077)
!3080 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3077)
!3081 = !DILocation(line: 100, column: 3, scope: !3066)
!3082 = distinct !DISubprogram(name: "xinmalloc", scope: !697, file: !697, line: 104, type: !3083, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!88, !716, !716}
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "n", arg: 1, scope: !3082, file: !697, line: 104, type: !716)
!3087 = !DILocalVariable(name: "s", arg: 2, scope: !3082, file: !697, line: 104, type: !716)
!3088 = !DILocation(line: 0, scope: !3082)
!3089 = !DILocation(line: 0, scope: !3044, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 106, column: 10, scope: !3082)
!3091 = !DILocation(line: 0, scope: !3053, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 91, column: 25, scope: !3044, inlinedAt: !3090)
!3093 = !DILocation(line: 101, column: 13, scope: !3053, inlinedAt: !3092)
!3094 = !DILocation(line: 0, scope: !2931, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 91, column: 10, scope: !3044, inlinedAt: !3090)
!3096 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3095)
!3097 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3095)
!3098 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3095)
!3099 = !DILocation(line: 106, column: 3, scope: !3082)
!3100 = distinct !DISubprogram(name: "x2realloc", scope: !697, file: !697, line: 116, type: !3101, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!88, !88, !703}
!3103 = !{!3104, !3105}
!3104 = !DILocalVariable(name: "p", arg: 1, scope: !3100, file: !697, line: 116, type: !88)
!3105 = !DILocalVariable(name: "ps", arg: 2, scope: !3100, file: !697, line: 116, type: !703)
!3106 = !DILocation(line: 0, scope: !3100)
!3107 = !DILocation(line: 0, scope: !700, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 118, column: 10, scope: !3100)
!3109 = !DILocation(line: 178, column: 14, scope: !700, inlinedAt: !3108)
!3110 = !DILocation(line: 180, column: 9, scope: !3111, inlinedAt: !3108)
!3111 = distinct !DILexicalBlock(scope: !700, file: !697, line: 180, column: 7)
!3112 = !DILocation(line: 180, column: 7, scope: !700, inlinedAt: !3108)
!3113 = !DILocation(line: 182, column: 13, scope: !3114, inlinedAt: !3108)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !697, line: 182, column: 11)
!3115 = distinct !DILexicalBlock(scope: !3111, file: !697, line: 181, column: 5)
!3116 = !DILocation(line: 182, column: 11, scope: !3115, inlinedAt: !3108)
!3117 = !DILocation(line: 197, column: 11, scope: !3118, inlinedAt: !3108)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !697, line: 197, column: 11)
!3119 = distinct !DILexicalBlock(scope: !3111, file: !697, line: 195, column: 5)
!3120 = !DILocation(line: 197, column: 11, scope: !3119, inlinedAt: !3108)
!3121 = !DILocation(line: 198, column: 9, scope: !3118, inlinedAt: !3108)
!3122 = !DILocation(line: 0, scope: !2923, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 201, column: 7, scope: !700, inlinedAt: !3108)
!3124 = !DILocation(line: 85, column: 25, scope: !2923, inlinedAt: !3123)
!3125 = !DILocation(line: 0, scope: !2931, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 85, column: 10, scope: !2923, inlinedAt: !3123)
!3127 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3126)
!3128 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3126)
!3129 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3126)
!3130 = !DILocation(line: 202, column: 7, scope: !700, inlinedAt: !3108)
!3131 = !DILocation(line: 118, column: 3, scope: !3100)
!3132 = !DILocation(line: 0, scope: !700)
!3133 = !DILocation(line: 178, column: 14, scope: !700)
!3134 = !DILocation(line: 180, column: 9, scope: !3111)
!3135 = !DILocation(line: 180, column: 7, scope: !700)
!3136 = !DILocation(line: 182, column: 13, scope: !3114)
!3137 = !DILocation(line: 182, column: 11, scope: !3115)
!3138 = !DILocation(line: 190, column: 30, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3114, file: !697, line: 183, column: 9)
!3140 = !DILocation(line: 191, column: 16, scope: !3139)
!3141 = !DILocation(line: 191, column: 13, scope: !3139)
!3142 = !DILocation(line: 192, column: 9, scope: !3139)
!3143 = !DILocation(line: 197, column: 11, scope: !3118)
!3144 = !DILocation(line: 197, column: 11, scope: !3119)
!3145 = !DILocation(line: 198, column: 9, scope: !3118)
!3146 = !DILocation(line: 0, scope: !2923, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 201, column: 7, scope: !700)
!3148 = !DILocation(line: 85, column: 25, scope: !2923, inlinedAt: !3147)
!3149 = !DILocation(line: 0, scope: !2931, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 85, column: 10, scope: !2923, inlinedAt: !3147)
!3151 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3150)
!3152 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3150)
!3153 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3150)
!3154 = !DILocation(line: 202, column: 7, scope: !700)
!3155 = !DILocation(line: 203, column: 3, scope: !700)
!3156 = !DILocation(line: 0, scope: !712)
!3157 = !DILocation(line: 230, column: 14, scope: !712)
!3158 = !DILocation(line: 238, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !712, file: !697, line: 238, column: 7)
!3160 = !DILocation(line: 238, column: 7, scope: !712)
!3161 = !DILocation(line: 240, column: 9, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !712, file: !697, line: 240, column: 7)
!3163 = !DILocation(line: 240, column: 18, scope: !3162)
!3164 = !DILocation(line: 253, column: 8, scope: !712)
!3165 = !DILocation(line: 258, column: 27, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !697, line: 257, column: 5)
!3167 = distinct !DILexicalBlock(scope: !712, file: !697, line: 256, column: 7)
!3168 = !DILocation(line: 259, column: 32, scope: !3166)
!3169 = !DILocation(line: 260, column: 5, scope: !3166)
!3170 = !DILocation(line: 262, column: 9, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !712, file: !697, line: 262, column: 7)
!3172 = !DILocation(line: 262, column: 7, scope: !712)
!3173 = !DILocation(line: 263, column: 9, scope: !3171)
!3174 = !DILocation(line: 263, column: 5, scope: !3171)
!3175 = !DILocation(line: 264, column: 9, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !712, file: !697, line: 264, column: 7)
!3177 = !DILocation(line: 264, column: 14, scope: !3176)
!3178 = !DILocation(line: 265, column: 7, scope: !3176)
!3179 = !DILocation(line: 265, column: 11, scope: !3176)
!3180 = !DILocation(line: 266, column: 11, scope: !3176)
!3181 = !DILocation(line: 267, column: 14, scope: !3176)
!3182 = !DILocation(line: 264, column: 7, scope: !712)
!3183 = !DILocation(line: 268, column: 5, scope: !3176)
!3184 = !DILocation(line: 0, scope: !2998, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 269, column: 8, scope: !712)
!3186 = !DILocation(line: 0, scope: !3006, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 70, column: 25, scope: !2998, inlinedAt: !3185)
!3188 = !DILocation(line: 2059, column: 24, scope: !3006, inlinedAt: !3187)
!3189 = !DILocation(line: 2059, column: 10, scope: !3006, inlinedAt: !3187)
!3190 = !DILocation(line: 0, scope: !2931, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 70, column: 10, scope: !2998, inlinedAt: !3185)
!3192 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3191)
!3193 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3191)
!3194 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3191)
!3195 = !DILocation(line: 270, column: 7, scope: !712)
!3196 = !DILocation(line: 271, column: 3, scope: !712)
!3197 = distinct !DISubprogram(name: "xzalloc", scope: !697, file: !697, line: 279, type: !2951, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3198)
!3198 = !{!3199}
!3199 = !DILocalVariable(name: "s", arg: 1, scope: !3197, file: !697, line: 279, type: !90)
!3200 = !DILocation(line: 0, scope: !3197)
!3201 = !DILocalVariable(name: "n", arg: 1, scope: !3202, file: !697, line: 294, type: !90)
!3202 = distinct !DISubprogram(name: "xcalloc", scope: !697, file: !697, line: 294, type: !3067, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3203)
!3203 = !{!3201, !3204}
!3204 = !DILocalVariable(name: "s", arg: 2, scope: !3202, file: !697, line: 294, type: !90)
!3205 = !DILocation(line: 0, scope: !3202, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 281, column: 10, scope: !3197)
!3207 = !DILocation(line: 296, column: 25, scope: !3202, inlinedAt: !3206)
!3208 = !DILocation(line: 0, scope: !2931, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 296, column: 10, scope: !3202, inlinedAt: !3206)
!3210 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3209)
!3211 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3209)
!3212 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3209)
!3213 = !DILocation(line: 281, column: 3, scope: !3197)
!3214 = !DISubprogram(name: "calloc", scope: !950, file: !950, line: 543, type: !3067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3215 = !DILocation(line: 0, scope: !3202)
!3216 = !DILocation(line: 296, column: 25, scope: !3202)
!3217 = !DILocation(line: 0, scope: !2931, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 296, column: 10, scope: !3202)
!3219 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3218)
!3220 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3218)
!3221 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3218)
!3222 = !DILocation(line: 296, column: 3, scope: !3202)
!3223 = distinct !DISubprogram(name: "xizalloc", scope: !697, file: !697, line: 285, type: !2965, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3224)
!3224 = !{!3225}
!3225 = !DILocalVariable(name: "s", arg: 1, scope: !3223, file: !697, line: 285, type: !716)
!3226 = !DILocation(line: 0, scope: !3223)
!3227 = !DILocalVariable(name: "n", arg: 1, scope: !3228, file: !697, line: 300, type: !716)
!3228 = distinct !DISubprogram(name: "xicalloc", scope: !697, file: !697, line: 300, type: !3083, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3229)
!3229 = !{!3227, !3230}
!3230 = !DILocalVariable(name: "s", arg: 2, scope: !3228, file: !697, line: 300, type: !716)
!3231 = !DILocation(line: 0, scope: !3228, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 287, column: 10, scope: !3223)
!3233 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !2972, line: 77, type: !716)
!3234 = distinct !DISubprogram(name: "icalloc", scope: !2972, file: !2972, line: 77, type: !3083, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3235)
!3235 = !{!3233, !3236}
!3236 = !DILocalVariable(name: "s", arg: 2, scope: !3234, file: !2972, line: 77, type: !716)
!3237 = !DILocation(line: 0, scope: !3234, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 302, column: 25, scope: !3228, inlinedAt: !3232)
!3239 = !DILocation(line: 91, column: 10, scope: !3234, inlinedAt: !3238)
!3240 = !DILocation(line: 0, scope: !2931, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 302, column: 10, scope: !3228, inlinedAt: !3232)
!3242 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3241)
!3243 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3241)
!3244 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3241)
!3245 = !DILocation(line: 287, column: 3, scope: !3223)
!3246 = !DILocation(line: 0, scope: !3228)
!3247 = !DILocation(line: 0, scope: !3234, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 302, column: 25, scope: !3228)
!3249 = !DILocation(line: 91, column: 10, scope: !3234, inlinedAt: !3248)
!3250 = !DILocation(line: 0, scope: !2931, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 302, column: 10, scope: !3228)
!3252 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3251)
!3253 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3251)
!3254 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3251)
!3255 = !DILocation(line: 302, column: 3, scope: !3228)
!3256 = distinct !DISubprogram(name: "xmemdup", scope: !697, file: !697, line: 310, type: !3257, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!88, !974, !90}
!3259 = !{!3260, !3261}
!3260 = !DILocalVariable(name: "p", arg: 1, scope: !3256, file: !697, line: 310, type: !974)
!3261 = !DILocalVariable(name: "s", arg: 2, scope: !3256, file: !697, line: 310, type: !90)
!3262 = !DILocation(line: 0, scope: !3256)
!3263 = !DILocation(line: 0, scope: !2950, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 312, column: 18, scope: !3256)
!3265 = !DILocation(line: 49, column: 25, scope: !2950, inlinedAt: !3264)
!3266 = !DILocation(line: 0, scope: !2931, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 49, column: 10, scope: !2950, inlinedAt: !3264)
!3268 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3267)
!3269 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3267)
!3270 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3267)
!3271 = !DILocalVariable(name: "__dest", arg: 1, scope: !3272, file: !1441, line: 26, type: !3275)
!3272 = distinct !DISubprogram(name: "memcpy", scope: !1441, file: !1441, line: 26, type: !3273, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3276)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!88, !3275, !973, !90}
!3275 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3276 = !{!3271, !3277, !3278}
!3277 = !DILocalVariable(name: "__src", arg: 2, scope: !3272, file: !1441, line: 26, type: !973)
!3278 = !DILocalVariable(name: "__len", arg: 3, scope: !3272, file: !1441, line: 26, type: !90)
!3279 = !DILocation(line: 0, scope: !3272, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 312, column: 10, scope: !3256)
!3281 = !DILocation(line: 29, column: 10, scope: !3272, inlinedAt: !3280)
!3282 = !DILocation(line: 312, column: 3, scope: !3256)
!3283 = distinct !DISubprogram(name: "ximemdup", scope: !697, file: !697, line: 316, type: !3284, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!88, !974, !716}
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "p", arg: 1, scope: !3283, file: !697, line: 316, type: !974)
!3288 = !DILocalVariable(name: "s", arg: 2, scope: !3283, file: !697, line: 316, type: !716)
!3289 = !DILocation(line: 0, scope: !3283)
!3290 = !DILocation(line: 0, scope: !2964, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 318, column: 18, scope: !3283)
!3292 = !DILocation(line: 0, scope: !2971, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 55, column: 25, scope: !2964, inlinedAt: !3291)
!3294 = !DILocation(line: 57, column: 26, scope: !2971, inlinedAt: !3293)
!3295 = !DILocation(line: 0, scope: !2931, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 55, column: 10, scope: !2964, inlinedAt: !3291)
!3297 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3296)
!3298 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3296)
!3299 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3296)
!3300 = !DILocation(line: 0, scope: !3272, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 318, column: 10, scope: !3283)
!3302 = !DILocation(line: 29, column: 10, scope: !3272, inlinedAt: !3301)
!3303 = !DILocation(line: 318, column: 3, scope: !3283)
!3304 = distinct !DISubprogram(name: "ximemdup0", scope: !697, file: !697, line: 325, type: !3305, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!87, !974, !716}
!3307 = !{!3308, !3309, !3310}
!3308 = !DILocalVariable(name: "p", arg: 1, scope: !3304, file: !697, line: 325, type: !974)
!3309 = !DILocalVariable(name: "s", arg: 2, scope: !3304, file: !697, line: 325, type: !716)
!3310 = !DILocalVariable(name: "result", scope: !3304, file: !697, line: 327, type: !87)
!3311 = !DILocation(line: 0, scope: !3304)
!3312 = !DILocation(line: 327, column: 30, scope: !3304)
!3313 = !DILocation(line: 0, scope: !2964, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 327, column: 18, scope: !3304)
!3315 = !DILocation(line: 0, scope: !2971, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 55, column: 25, scope: !2964, inlinedAt: !3314)
!3317 = !DILocation(line: 57, column: 26, scope: !2971, inlinedAt: !3316)
!3318 = !DILocation(line: 0, scope: !2931, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 55, column: 10, scope: !2964, inlinedAt: !3314)
!3320 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3319)
!3321 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3319)
!3322 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3319)
!3323 = !DILocation(line: 328, column: 3, scope: !3304)
!3324 = !DILocation(line: 328, column: 13, scope: !3304)
!3325 = !DILocation(line: 0, scope: !3272, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 329, column: 10, scope: !3304)
!3327 = !DILocation(line: 29, column: 10, scope: !3272, inlinedAt: !3326)
!3328 = !DILocation(line: 329, column: 3, scope: !3304)
!3329 = distinct !DISubprogram(name: "xstrdup", scope: !697, file: !697, line: 335, type: !952, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3330)
!3330 = !{!3331}
!3331 = !DILocalVariable(name: "string", arg: 1, scope: !3329, file: !697, line: 335, type: !93)
!3332 = !DILocation(line: 0, scope: !3329)
!3333 = !DILocation(line: 337, column: 27, scope: !3329)
!3334 = !DILocation(line: 337, column: 43, scope: !3329)
!3335 = !DILocation(line: 0, scope: !3256, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 337, column: 10, scope: !3329)
!3337 = !DILocation(line: 0, scope: !2950, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 312, column: 18, scope: !3256, inlinedAt: !3336)
!3339 = !DILocation(line: 49, column: 25, scope: !2950, inlinedAt: !3338)
!3340 = !DILocation(line: 0, scope: !2931, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 49, column: 10, scope: !2950, inlinedAt: !3338)
!3342 = !DILocation(line: 39, column: 8, scope: !2938, inlinedAt: !3341)
!3343 = !DILocation(line: 39, column: 7, scope: !2931, inlinedAt: !3341)
!3344 = !DILocation(line: 40, column: 5, scope: !2938, inlinedAt: !3341)
!3345 = !DILocation(line: 0, scope: !3272, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 312, column: 10, scope: !3256, inlinedAt: !3336)
!3347 = !DILocation(line: 29, column: 10, scope: !3272, inlinedAt: !3346)
!3348 = !DILocation(line: 337, column: 3, scope: !3329)
!3349 = distinct !DISubprogram(name: "xalloc_die", scope: !659, file: !659, line: 32, type: !402, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3350)
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "__errstatus", scope: !3352, file: !659, line: 34, type: !3353)
!3352 = distinct !DILexicalBlock(scope: !3349, file: !659, line: 34, column: 3)
!3353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!3354 = !DILocation(line: 34, column: 3, scope: !3352)
!3355 = !DILocation(line: 0, scope: !3352)
!3356 = !DILocation(line: 40, column: 3, scope: !3349)
!3357 = distinct !DISubprogram(name: "close_stream", scope: !733, file: !733, line: 55, type: !3358, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3394)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!67, !3360}
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3362, file: !146, line: 51, baseType: !67, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3362, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3362, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3362, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3362, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3362, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3362, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3362, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3362, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3362, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3362, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3362, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3362, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3362, file: !146, line: 70, baseType: !3378, size: 64, offset: 832)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3362, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3362, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3362, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3362, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3362, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3362, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3362, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3362, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3362, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3362, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3362, file: !146, line: 93, baseType: !3378, size: 64, offset: 1344)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3362, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3362, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3362, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3362, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3394 = !{!3395, !3396, !3398, !3399}
!3395 = !DILocalVariable(name: "stream", arg: 1, scope: !3357, file: !733, line: 55, type: !3360)
!3396 = !DILocalVariable(name: "some_pending", scope: !3357, file: !733, line: 57, type: !3397)
!3397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!3398 = !DILocalVariable(name: "prev_fail", scope: !3357, file: !733, line: 58, type: !3397)
!3399 = !DILocalVariable(name: "fclose_fail", scope: !3357, file: !733, line: 59, type: !3397)
!3400 = !DILocation(line: 0, scope: !3357)
!3401 = !DILocation(line: 57, column: 30, scope: !3357)
!3402 = !DILocalVariable(name: "__stream", arg: 1, scope: !3403, file: !1284, line: 135, type: !3360)
!3403 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1284, file: !1284, line: 135, type: !3358, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3404)
!3404 = !{!3402}
!3405 = !DILocation(line: 0, scope: !3403, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 58, column: 27, scope: !3357)
!3407 = !DILocation(line: 137, column: 10, scope: !3403, inlinedAt: !3406)
!3408 = !{!1293, !827, i64 0}
!3409 = !DILocation(line: 58, column: 43, scope: !3357)
!3410 = !DILocation(line: 59, column: 29, scope: !3357)
!3411 = !DILocation(line: 59, column: 45, scope: !3357)
!3412 = !DILocation(line: 69, column: 17, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3357, file: !733, line: 69, column: 7)
!3414 = !DILocation(line: 57, column: 50, scope: !3357)
!3415 = !DILocation(line: 69, column: 33, scope: !3413)
!3416 = !DILocation(line: 69, column: 53, scope: !3413)
!3417 = !DILocation(line: 69, column: 59, scope: !3413)
!3418 = !DILocation(line: 69, column: 7, scope: !3357)
!3419 = !DILocation(line: 71, column: 11, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3413, file: !733, line: 70, column: 5)
!3421 = !DILocation(line: 72, column: 9, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3420, file: !733, line: 71, column: 11)
!3423 = !DILocation(line: 72, column: 15, scope: !3422)
!3424 = !DILocation(line: 77, column: 1, scope: !3357)
!3425 = !DISubprogram(name: "__fpending", scope: !3426, file: !3426, line: 75, type: !3427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3426 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!90, !3360}
!3429 = distinct !DISubprogram(name: "rpl_fclose", scope: !735, file: !735, line: 58, type: !3430, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3466)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!67, !3432}
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3434, file: !146, line: 51, baseType: !67, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3434, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3434, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3434, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3434, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3434, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3434, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3434, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3434, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3434, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3434, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3434, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3434, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3434, file: !146, line: 70, baseType: !3450, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3434, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3434, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3434, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3434, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3434, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3434, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3434, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3434, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3434, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3434, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3434, file: !146, line: 93, baseType: !3450, size: 64, offset: 1344)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3434, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3434, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3434, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3434, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3466 = !{!3467, !3468, !3469, !3470}
!3467 = !DILocalVariable(name: "fp", arg: 1, scope: !3429, file: !735, line: 58, type: !3432)
!3468 = !DILocalVariable(name: "saved_errno", scope: !3429, file: !735, line: 60, type: !67)
!3469 = !DILocalVariable(name: "fd", scope: !3429, file: !735, line: 63, type: !67)
!3470 = !DILocalVariable(name: "result", scope: !3429, file: !735, line: 74, type: !67)
!3471 = !DILocation(line: 0, scope: !3429)
!3472 = !DILocation(line: 63, column: 12, scope: !3429)
!3473 = !DILocation(line: 64, column: 10, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3429, file: !735, line: 64, column: 7)
!3475 = !DILocation(line: 64, column: 7, scope: !3429)
!3476 = !DILocation(line: 65, column: 12, scope: !3474)
!3477 = !DILocation(line: 65, column: 5, scope: !3474)
!3478 = !DILocation(line: 70, column: 9, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3429, file: !735, line: 70, column: 7)
!3480 = !DILocation(line: 70, column: 23, scope: !3479)
!3481 = !DILocation(line: 70, column: 33, scope: !3479)
!3482 = !DILocation(line: 70, column: 26, scope: !3479)
!3483 = !DILocation(line: 70, column: 59, scope: !3479)
!3484 = !DILocation(line: 71, column: 7, scope: !3479)
!3485 = !DILocation(line: 71, column: 10, scope: !3479)
!3486 = !DILocation(line: 70, column: 7, scope: !3429)
!3487 = !DILocation(line: 100, column: 12, scope: !3429)
!3488 = !DILocation(line: 105, column: 7, scope: !3429)
!3489 = !DILocation(line: 72, column: 19, scope: !3479)
!3490 = !DILocation(line: 105, column: 19, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3429, file: !735, line: 105, column: 7)
!3492 = !DILocation(line: 107, column: 13, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3491, file: !735, line: 106, column: 5)
!3494 = !DILocation(line: 109, column: 5, scope: !3493)
!3495 = !DILocation(line: 112, column: 1, scope: !3429)
!3496 = !DISubprogram(name: "fileno", scope: !361, file: !361, line: 809, type: !3430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3497 = !DISubprogram(name: "fclose", scope: !361, file: !361, line: 178, type: !3430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3498 = !DISubprogram(name: "__freading", scope: !3426, file: !3426, line: 51, type: !3430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3499 = !DISubprogram(name: "lseek", scope: !1158, file: !1158, line: 339, type: !3500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!168, !67, !168, !67}
!3502 = distinct !DISubprogram(name: "rpl_fflush", scope: !737, file: !737, line: 130, type: !3503, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3539)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!67, !3505}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3507, file: !146, line: 51, baseType: !67, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3507, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3507, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3507, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3507, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3507, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3507, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3507, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3507, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3507, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3507, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3507, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3507, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3507, file: !146, line: 70, baseType: !3523, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3507, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3507, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3507, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3507, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3507, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3507, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3507, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3507, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3507, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3507, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3507, file: !146, line: 93, baseType: !3523, size: 64, offset: 1344)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3507, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3507, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3507, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3507, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3539 = !{!3540}
!3540 = !DILocalVariable(name: "stream", arg: 1, scope: !3502, file: !737, line: 130, type: !3505)
!3541 = !DILocation(line: 0, scope: !3502)
!3542 = !DILocation(line: 151, column: 14, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3502, file: !737, line: 151, column: 7)
!3544 = !DILocation(line: 151, column: 22, scope: !3543)
!3545 = !DILocation(line: 151, column: 27, scope: !3543)
!3546 = !DILocation(line: 151, column: 7, scope: !3502)
!3547 = !DILocation(line: 152, column: 12, scope: !3543)
!3548 = !DILocation(line: 152, column: 5, scope: !3543)
!3549 = !DILocalVariable(name: "fp", arg: 1, scope: !3550, file: !737, line: 42, type: !3505)
!3550 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !737, file: !737, line: 42, type: !3551, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{null, !3505}
!3553 = !{!3549}
!3554 = !DILocation(line: 0, scope: !3550, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 157, column: 3, scope: !3502)
!3556 = !DILocation(line: 44, column: 12, scope: !3557, inlinedAt: !3555)
!3557 = distinct !DILexicalBlock(scope: !3550, file: !737, line: 44, column: 7)
!3558 = !DILocation(line: 44, column: 19, scope: !3557, inlinedAt: !3555)
!3559 = !DILocation(line: 44, column: 7, scope: !3550, inlinedAt: !3555)
!3560 = !DILocation(line: 46, column: 5, scope: !3557, inlinedAt: !3555)
!3561 = !DILocation(line: 159, column: 10, scope: !3502)
!3562 = !DILocation(line: 159, column: 3, scope: !3502)
!3563 = !DILocation(line: 236, column: 1, scope: !3502)
!3564 = !DISubprogram(name: "fflush", scope: !361, file: !361, line: 230, type: !3503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3565 = distinct !DISubprogram(name: "rpl_fseeko", scope: !739, file: !739, line: 28, type: !3566, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3603)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!67, !3568, !3602, !67}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3570)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3570, file: !146, line: 51, baseType: !67, size: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3570, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3570, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3570, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3570, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3570, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3570, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3570, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3570, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3570, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3570, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3570, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3570, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3570, file: !146, line: 70, baseType: !3586, size: 64, offset: 832)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3570, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3570, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3570, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3570, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3570, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3570, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3570, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3570, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3570, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3570, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3570, file: !146, line: 93, baseType: !3586, size: 64, offset: 1344)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3570, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3570, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3570, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3570, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !361, line: 63, baseType: !168)
!3603 = !{!3604, !3605, !3606, !3607}
!3604 = !DILocalVariable(name: "fp", arg: 1, scope: !3565, file: !739, line: 28, type: !3568)
!3605 = !DILocalVariable(name: "offset", arg: 2, scope: !3565, file: !739, line: 28, type: !3602)
!3606 = !DILocalVariable(name: "whence", arg: 3, scope: !3565, file: !739, line: 28, type: !67)
!3607 = !DILocalVariable(name: "pos", scope: !3608, file: !739, line: 123, type: !3602)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !739, line: 119, column: 5)
!3609 = distinct !DILexicalBlock(scope: !3565, file: !739, line: 55, column: 7)
!3610 = !DILocation(line: 0, scope: !3565)
!3611 = !DILocation(line: 55, column: 12, scope: !3609)
!3612 = !{!1293, !769, i64 16}
!3613 = !DILocation(line: 55, column: 33, scope: !3609)
!3614 = !{!1293, !769, i64 8}
!3615 = !DILocation(line: 55, column: 25, scope: !3609)
!3616 = !DILocation(line: 56, column: 7, scope: !3609)
!3617 = !DILocation(line: 56, column: 15, scope: !3609)
!3618 = !DILocation(line: 56, column: 37, scope: !3609)
!3619 = !{!1293, !769, i64 32}
!3620 = !DILocation(line: 56, column: 29, scope: !3609)
!3621 = !DILocation(line: 57, column: 7, scope: !3609)
!3622 = !DILocation(line: 57, column: 15, scope: !3609)
!3623 = !{!1293, !769, i64 72}
!3624 = !DILocation(line: 57, column: 29, scope: !3609)
!3625 = !DILocation(line: 55, column: 7, scope: !3565)
!3626 = !DILocation(line: 123, column: 26, scope: !3608)
!3627 = !DILocation(line: 123, column: 19, scope: !3608)
!3628 = !DILocation(line: 0, scope: !3608)
!3629 = !DILocation(line: 124, column: 15, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3608, file: !739, line: 124, column: 11)
!3631 = !DILocation(line: 124, column: 11, scope: !3608)
!3632 = !DILocation(line: 135, column: 19, scope: !3608)
!3633 = !DILocation(line: 136, column: 12, scope: !3608)
!3634 = !DILocation(line: 136, column: 20, scope: !3608)
!3635 = !{!1293, !1294, i64 144}
!3636 = !DILocation(line: 167, column: 7, scope: !3608)
!3637 = !DILocation(line: 169, column: 10, scope: !3565)
!3638 = !DILocation(line: 169, column: 3, scope: !3565)
!3639 = !DILocation(line: 170, column: 1, scope: !3565)
!3640 = !DISubprogram(name: "fseeko", scope: !361, file: !361, line: 736, type: !3641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!67, !3568, !168, !67}
!3643 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !666, file: !666, line: 100, type: !3644, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !669, retainedNodes: !3647)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!90, !1459, !93, !90, !3646}
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!3647 = !{!3648, !3649, !3650, !3651, !3652}
!3648 = !DILocalVariable(name: "pwc", arg: 1, scope: !3643, file: !666, line: 100, type: !1459)
!3649 = !DILocalVariable(name: "s", arg: 2, scope: !3643, file: !666, line: 100, type: !93)
!3650 = !DILocalVariable(name: "n", arg: 3, scope: !3643, file: !666, line: 100, type: !90)
!3651 = !DILocalVariable(name: "ps", arg: 4, scope: !3643, file: !666, line: 100, type: !3646)
!3652 = !DILocalVariable(name: "ret", scope: !3643, file: !666, line: 130, type: !90)
!3653 = !DILocation(line: 0, scope: !3643)
!3654 = !DILocation(line: 105, column: 9, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3643, file: !666, line: 105, column: 7)
!3656 = !DILocation(line: 105, column: 7, scope: !3643)
!3657 = !DILocation(line: 117, column: 10, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3643, file: !666, line: 117, column: 7)
!3659 = !DILocation(line: 117, column: 7, scope: !3643)
!3660 = !DILocation(line: 130, column: 16, scope: !3643)
!3661 = !DILocation(line: 135, column: 11, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3643, file: !666, line: 135, column: 7)
!3663 = !DILocation(line: 135, column: 25, scope: !3662)
!3664 = !DILocation(line: 135, column: 30, scope: !3662)
!3665 = !DILocation(line: 135, column: 7, scope: !3643)
!3666 = !DILocalVariable(name: "ps", arg: 1, scope: !3667, file: !1432, line: 1135, type: !3646)
!3667 = distinct !DISubprogram(name: "mbszero", scope: !1432, file: !1432, line: 1135, type: !3668, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !669, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !3646}
!3670 = !{!3666}
!3671 = !DILocation(line: 0, scope: !3667, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 137, column: 5, scope: !3662)
!3673 = !DILocalVariable(name: "__dest", arg: 1, scope: !3674, file: !1441, line: 57, type: !88)
!3674 = distinct !DISubprogram(name: "memset", scope: !1441, file: !1441, line: 57, type: !1442, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !669, retainedNodes: !3675)
!3675 = !{!3673, !3676, !3677}
!3676 = !DILocalVariable(name: "__ch", arg: 2, scope: !3674, file: !1441, line: 57, type: !67)
!3677 = !DILocalVariable(name: "__len", arg: 3, scope: !3674, file: !1441, line: 57, type: !90)
!3678 = !DILocation(line: 0, scope: !3674, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 1137, column: 3, scope: !3667, inlinedAt: !3672)
!3680 = !DILocation(line: 59, column: 10, scope: !3674, inlinedAt: !3679)
!3681 = !DILocation(line: 137, column: 5, scope: !3662)
!3682 = !DILocation(line: 138, column: 11, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3643, file: !666, line: 138, column: 7)
!3684 = !DILocation(line: 138, column: 7, scope: !3643)
!3685 = !DILocation(line: 139, column: 5, scope: !3683)
!3686 = !DILocation(line: 143, column: 26, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3643, file: !666, line: 143, column: 7)
!3688 = !DILocation(line: 143, column: 41, scope: !3687)
!3689 = !DILocation(line: 143, column: 7, scope: !3643)
!3690 = !DILocation(line: 145, column: 15, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !666, line: 145, column: 11)
!3692 = distinct !DILexicalBlock(scope: !3687, file: !666, line: 144, column: 5)
!3693 = !DILocation(line: 145, column: 11, scope: !3692)
!3694 = !DILocation(line: 146, column: 32, scope: !3691)
!3695 = !DILocation(line: 146, column: 16, scope: !3691)
!3696 = !DILocation(line: 146, column: 14, scope: !3691)
!3697 = !DILocation(line: 146, column: 9, scope: !3691)
!3698 = !DILocation(line: 286, column: 1, scope: !3643)
!3699 = !DISubprogram(name: "mbsinit", scope: !3700, file: !3700, line: 293, type: !3701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !814)
!3700 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!67, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!3705 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !741, file: !741, line: 27, type: !2915, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3706)
!3706 = !{!3707, !3708, !3709, !3710}
!3707 = !DILocalVariable(name: "ptr", arg: 1, scope: !3705, file: !741, line: 27, type: !88)
!3708 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3705, file: !741, line: 27, type: !90)
!3709 = !DILocalVariable(name: "size", arg: 3, scope: !3705, file: !741, line: 27, type: !90)
!3710 = !DILocalVariable(name: "nbytes", scope: !3705, file: !741, line: 29, type: !90)
!3711 = !DILocation(line: 0, scope: !3705)
!3712 = !DILocation(line: 30, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3705, file: !741, line: 30, column: 7)
!3714 = !DILocalVariable(name: "ptr", arg: 1, scope: !3715, file: !3007, line: 2057, type: !88)
!3715 = distinct !DISubprogram(name: "rpl_realloc", scope: !3007, file: !3007, line: 2057, type: !2999, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3716)
!3716 = !{!3714, !3717}
!3717 = !DILocalVariable(name: "size", arg: 2, scope: !3715, file: !3007, line: 2057, type: !90)
!3718 = !DILocation(line: 0, scope: !3715, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 37, column: 10, scope: !3705)
!3720 = !DILocation(line: 2059, column: 24, scope: !3715, inlinedAt: !3719)
!3721 = !DILocation(line: 2059, column: 10, scope: !3715, inlinedAt: !3719)
!3722 = !DILocation(line: 37, column: 3, scope: !3705)
!3723 = !DILocation(line: 32, column: 7, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3713, file: !741, line: 31, column: 5)
!3725 = !DILocation(line: 32, column: 13, scope: !3724)
!3726 = !DILocation(line: 33, column: 7, scope: !3724)
!3727 = !DILocation(line: 38, column: 1, scope: !3705)
!3728 = distinct !DISubprogram(name: "hard_locale", scope: !684, file: !684, line: 28, type: !3729, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!129, !67}
!3731 = !{!3732, !3733}
!3732 = !DILocalVariable(name: "category", arg: 1, scope: !3728, file: !684, line: 28, type: !67)
!3733 = !DILocalVariable(name: "locale", scope: !3728, file: !684, line: 30, type: !3734)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3735)
!3735 = !{!3736}
!3736 = !DISubrange(count: 257)
!3737 = !DILocation(line: 0, scope: !3728)
!3738 = !DILocation(line: 30, column: 3, scope: !3728)
!3739 = !DILocation(line: 30, column: 8, scope: !3728)
!3740 = !DILocation(line: 32, column: 7, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3728, file: !684, line: 32, column: 7)
!3742 = !DILocation(line: 32, column: 7, scope: !3728)
!3743 = !DILocalVariable(name: "__s1", arg: 1, scope: !3744, file: !839, line: 1359, type: !93)
!3744 = distinct !DISubprogram(name: "streq", scope: !839, file: !839, line: 1359, type: !840, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3745)
!3745 = !{!3743, !3746}
!3746 = !DILocalVariable(name: "__s2", arg: 2, scope: !3744, file: !839, line: 1359, type: !93)
!3747 = !DILocation(line: 0, scope: !3744, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 35, column: 9, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3728, file: !684, line: 35, column: 7)
!3750 = !DILocation(line: 1361, column: 11, scope: !3744, inlinedAt: !3748)
!3751 = !DILocation(line: 1361, column: 10, scope: !3744, inlinedAt: !3748)
!3752 = !DILocation(line: 35, column: 29, scope: !3749)
!3753 = !DILocation(line: 0, scope: !3744, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 35, column: 32, scope: !3749)
!3755 = !DILocation(line: 1361, column: 11, scope: !3744, inlinedAt: !3754)
!3756 = !DILocation(line: 1361, column: 10, scope: !3744, inlinedAt: !3754)
!3757 = !DILocation(line: 35, column: 7, scope: !3728)
!3758 = !DILocation(line: 46, column: 3, scope: !3728)
!3759 = !DILocation(line: 47, column: 1, scope: !3728)
!3760 = distinct !DISubprogram(name: "setlocale_null_r", scope: !746, file: !746, line: 154, type: !3761, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!67, !67, !87, !90}
!3763 = !{!3764, !3765, !3766}
!3764 = !DILocalVariable(name: "category", arg: 1, scope: !3760, file: !746, line: 154, type: !67)
!3765 = !DILocalVariable(name: "buf", arg: 2, scope: !3760, file: !746, line: 154, type: !87)
!3766 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3760, file: !746, line: 154, type: !90)
!3767 = !DILocation(line: 0, scope: !3760)
!3768 = !DILocation(line: 159, column: 10, scope: !3760)
!3769 = !DILocation(line: 159, column: 3, scope: !3760)
!3770 = distinct !DISubprogram(name: "setlocale_null", scope: !746, file: !746, line: 186, type: !3771, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!93, !67}
!3773 = !{!3774}
!3774 = !DILocalVariable(name: "category", arg: 1, scope: !3770, file: !746, line: 186, type: !67)
!3775 = !DILocation(line: 0, scope: !3770)
!3776 = !DILocation(line: 189, column: 10, scope: !3770)
!3777 = !DILocation(line: 189, column: 3, scope: !3770)
!3778 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !748, file: !748, line: 35, type: !3771, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3779)
!3779 = !{!3780, !3781}
!3780 = !DILocalVariable(name: "category", arg: 1, scope: !3778, file: !748, line: 35, type: !67)
!3781 = !DILocalVariable(name: "result", scope: !3778, file: !748, line: 37, type: !93)
!3782 = !DILocation(line: 0, scope: !3778)
!3783 = !DILocation(line: 37, column: 24, scope: !3778)
!3784 = !DILocation(line: 62, column: 3, scope: !3778)
!3785 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !748, file: !748, line: 66, type: !3761, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3786)
!3786 = !{!3787, !3788, !3789, !3790, !3791}
!3787 = !DILocalVariable(name: "category", arg: 1, scope: !3785, file: !748, line: 66, type: !67)
!3788 = !DILocalVariable(name: "buf", arg: 2, scope: !3785, file: !748, line: 66, type: !87)
!3789 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3785, file: !748, line: 66, type: !90)
!3790 = !DILocalVariable(name: "result", scope: !3785, file: !748, line: 111, type: !93)
!3791 = !DILocalVariable(name: "length", scope: !3792, file: !748, line: 125, type: !90)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !748, line: 124, column: 5)
!3793 = distinct !DILexicalBlock(scope: !3785, file: !748, line: 113, column: 7)
!3794 = !DILocation(line: 0, scope: !3785)
!3795 = !DILocation(line: 0, scope: !3778, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 111, column: 24, scope: !3785)
!3797 = !DILocation(line: 37, column: 24, scope: !3778, inlinedAt: !3796)
!3798 = !DILocation(line: 113, column: 14, scope: !3793)
!3799 = !DILocation(line: 113, column: 7, scope: !3785)
!3800 = !DILocation(line: 116, column: 19, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !748, line: 116, column: 11)
!3802 = distinct !DILexicalBlock(scope: !3793, file: !748, line: 114, column: 5)
!3803 = !DILocation(line: 116, column: 11, scope: !3802)
!3804 = !DILocation(line: 120, column: 16, scope: !3801)
!3805 = !DILocation(line: 120, column: 9, scope: !3801)
!3806 = !DILocation(line: 125, column: 23, scope: !3792)
!3807 = !DILocation(line: 0, scope: !3792)
!3808 = !DILocation(line: 126, column: 18, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3792, file: !748, line: 126, column: 11)
!3810 = !DILocation(line: 126, column: 11, scope: !3792)
!3811 = !DILocation(line: 128, column: 39, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3809, file: !748, line: 127, column: 9)
!3813 = !DILocalVariable(name: "__dest", arg: 1, scope: !3814, file: !1441, line: 26, type: !3275)
!3814 = distinct !DISubprogram(name: "memcpy", scope: !1441, file: !1441, line: 26, type: !3273, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3815)
!3815 = !{!3813, !3816, !3817}
!3816 = !DILocalVariable(name: "__src", arg: 2, scope: !3814, file: !1441, line: 26, type: !973)
!3817 = !DILocalVariable(name: "__len", arg: 3, scope: !3814, file: !1441, line: 26, type: !90)
!3818 = !DILocation(line: 0, scope: !3814, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 128, column: 11, scope: !3812)
!3820 = !DILocation(line: 29, column: 10, scope: !3814, inlinedAt: !3819)
!3821 = !DILocation(line: 129, column: 11, scope: !3812)
!3822 = !DILocation(line: 133, column: 23, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !748, line: 133, column: 15)
!3824 = distinct !DILexicalBlock(scope: !3809, file: !748, line: 132, column: 9)
!3825 = !DILocation(line: 133, column: 15, scope: !3824)
!3826 = !DILocation(line: 138, column: 44, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3823, file: !748, line: 134, column: 13)
!3828 = !DILocation(line: 0, scope: !3814, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 138, column: 15, scope: !3827)
!3830 = !DILocation(line: 29, column: 10, scope: !3814, inlinedAt: !3829)
!3831 = !DILocation(line: 139, column: 15, scope: !3827)
!3832 = !DILocation(line: 139, column: 32, scope: !3827)
!3833 = !DILocation(line: 140, column: 13, scope: !3827)
!3834 = !DILocation(line: 0, scope: !3793)
!3835 = !DILocation(line: 145, column: 1, scope: !3785)
